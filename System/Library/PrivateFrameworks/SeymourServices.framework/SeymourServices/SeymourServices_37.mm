void sub_227265854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC598, &qword_22767DFB8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC598, &qword_22767DFB8, type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283740, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC588, &qword_22767DFA8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC588, &qword_22767DFA8, type metadata accessor for ManagedHealthKitStandaloneWorkoutJob);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283628, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC590, &qword_22767DFB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC590, &qword_22767DFB0, type metadata accessor for ManagedHealthKitWorkout);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272836B4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5A0, &unk_22767DFC0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5A0, &unk_22767DFC0, type metadata accessor for ManagedHealthKitMindfulSession);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272837CC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227265FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC438, &qword_22767DAD0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC438, &qword_22767DAD0, type metadata accessor for ManagedAssetRequestReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284038, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272661C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC430, &unk_22767FFB0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC430, &unk_22767FFB0, type metadata accessor for ManagedAssetRequestKeyMetadata);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272840C4, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272663AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC520, qword_22767DE58);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC520, qword_22767DE58, type metadata accessor for ManagedOnboardingSurveyResult);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283024, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5C8, &qword_22767E090);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5C8, &qword_22767E090, type metadata accessor for ManagedRecommendation);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283AC0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5D0, &qword_22767E098);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5D0, &qword_22767E098, type metadata accessor for ManagedCatalogSyncAnchor);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283B4C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC580, &qword_22767DFA0, type metadata accessor for ManagedEstimatedCalories);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22728359C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC578, &qword_22767DF98);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC578, &qword_22767DF98, type metadata accessor for ManagedHealthKitActivityType);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283510, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC580, &qword_22767DFA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC580, &qword_22767DFA0, type metadata accessor for ManagedEstimatedCalories);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284484, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227266F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC410, &unk_22767DAA0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC410, &unk_22767DAA0, type metadata accessor for ManagedWorkoutPlan);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283858, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272670E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4F0, &qword_22767DE18);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4F0, &qword_22767DE18, type metadata accessor for ManagedWorkoutPlanSummaryViewed);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282D18, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272672CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC530, &qword_22767DED8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC530, &qword_22767DED8, type metadata accessor for ManagedWorkoutPlanTemplate);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272830B0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272674B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC540, &qword_22767DEE8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC540, &qword_22767DEE8, type metadata accessor for ManagedBurnBarDisplayPreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272831C8, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC538, &qword_22767DEE0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC538, &qword_22767DEE0, type metadata accessor for ManagedMetricsDisplayPreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22728313C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC510, &qword_22767DE48);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC510, &qword_22767DE48, type metadata accessor for ManagedProgressDisplayPreference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282F0C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC620, &unk_22767E148);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC620, &unk_22767E148, type metadata accessor for ManagedAssetResumableLoad);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284574, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC550, &qword_22767DEF8);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC550, &qword_22767DEF8, type metadata accessor for ManagedBookmark);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272832E0, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227267E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC548, &qword_22767DEF0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC548, &qword_22767DEF0, type metadata accessor for ManagedPlaylist);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283254, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC518, &qword_22767DE50);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC518, &qword_22767DE50, type metadata accessor for ManagedPrivacyAcknowledgement);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227282F98, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272681EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC490, &qword_22767DB28);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC490, &qword_22767DB28, type metadata accessor for ManagedCatalogWorkoutReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283FAC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272683D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC610, &unk_22767E0F0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC610, &unk_22767E0F0, type metadata accessor for ManagedCatalogTipReference);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227283F20, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_2272685B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4A0, &qword_22767DB38);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC4A0, &qword_22767DB38, type metadata accessor for ManagedAchievementNotificationRecord);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_22727DA5C, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC628, &qword_22767E158);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC628, &qword_22767E158, type metadata accessor for ManagedAssetLoadFailure);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_2272841DC, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_22726897C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC5F8, &qword_22767E0D0);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC5F8, &qword_22767E0D0, type metadata accessor for ManagedAssetBundle);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284268, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC630, &qword_22767E178, type metadata accessor for ManagedAssetBundleLoadFailure);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284604, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_227268D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC630, &qword_22767E178);
  v7 = *(v3 + *(v6 + 28));
  v8 = [v7 fetchBatchSize];
  v9 = [v7 fetchOffset];
  sub_226E9C670(&qword_27D7BC630, &qword_22767E178, type metadata accessor for ManagedAssetBundleLoadFailure);
  if (!v4)
  {
    v20[0] = v6;
    v11 = v22;
    if (v8)
    {
      if (v10 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_14;
      }

      v12 = v10 / v8;
      v13 = v10 / v8 * v8;
      if ((v10 / v8 * v8) >> 64 == v13 >> 63)
      {
        v14 = v13 != v10;
        v15 = v12 + v14;
        if (!__OFADD__(v12, v14))
        {
          v16 = v10;
          v17 = MEMORY[0x22AA99A00]();
          if ((v15 & 0x8000000000000000) == 0)
          {
            v20[1] = v20;
            v21 = v17;
            MEMORY[0x28223BE20](v17);
            v19[2] = v3;
            v19[3] = v15;
            v19[4] = v16;
            v19[5] = v8;
            v19[6] = v9;
            v19[7] = a2;
            v19[8] = v11;

            sub_226E9C8CC(v18, sub_227284380, v19, 0, v15);
            [*(v3 + *(v20[0] + 32)) reset];
            objc_autoreleasePoolPop(v21);
            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void *sub_227268F28(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_227268FCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2276694E0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A78, &qword_2276716F8);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_2272692F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DirtySyncZone(0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA818, &qword_227678F98);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v31 + 72);
    sub_2272838E4(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for DirtySyncZone);
    sub_22766D370();
    sub_2276694E0();
    sub_226E9CF88(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
    sub_22766BF60();
    sub_227662750();
    sub_226E9CF88(&qword_2813A5820, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22766BF60();
    result = sub_22766D3F0();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v30;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v30;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_2272839A8(v10, *(v11 + 48) + v23 * v33, type metadata accessor for DirtySyncZone);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
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

uint64_t sub_227269674(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227664140();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA780, &qword_22767DF00);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&unk_28139B9C0, MEMORY[0x277D506C0], MEMORY[0x277D506C8]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726999C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8BD0, &unk_22767DF20);
  result = sub_22766CDE0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22766D370();

    sub_22766C100();
    result = sub_22766D3F0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227269BC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227667780();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA638, &qword_227678E98);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&unk_2813A55D0, MEMORY[0x277D52F78], MEMORY[0x277D52F80]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_227269EE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227666A40();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAA50, &qword_227679148);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&unk_28139B600, MEMORY[0x277D52790], MEMORY[0x277D52798]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726A210(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227664530();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AC0, &qword_22767E170);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_2813A57C0, MEMORY[0x277D50978], MEMORY[0x277D50980]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726A560(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227666B60();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA5D0, &qword_227678E60);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_28139B5D8, MEMORY[0x277D52828], MEMORY[0x277D52830]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726A888(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8AA0, &unk_227671720);
  v9 = sub_22766CDE0();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  v31 = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v32 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(result + 48) + 24 * (v14 | (v11 << 6));
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    sub_22766D370();
    sub_226EB396C(v19, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = *(v5 + 48) + 24 * v24;
    *v29 = v19;
    *(v29 + 8) = v18;
    *(v29 + 16) = v20;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = v31;
    v10 = v32;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v32 = (v16 - 1) & v16;
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

uint64_t sub_22726AB40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v7 = a4;
  if (!a3)
  {
    v12 = MEMORY[0x277D84FA0];
LABEL_6:

    return v12;
  }

  v8 = a3;
  if (*(a4 + 16) == a3)
  {
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22766CDE0();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_17:
    v19 = *(*(v7 + 48) + (v16 | (v14 << 6)));
    sub_22766D370();
    v20 = a7(v19);
    MEMORY[0x22AA996B0](v20);
    result = sub_22766D3F0();
    v21 = -1 << *(v12 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v12 + 48) + v24) = v19;
    ++*(v12 + 16);
    if (__OFSUB__(v8--, 1))
    {
      goto LABEL_32;
    }

    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_6;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726AD50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227663480();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B38, &unk_2276717A0);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726B078(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227663180();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A28, &unk_2276716B0);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726B3A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227665F20();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA640, &unk_22767DFD0);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726B6C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227666650();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA708, &qword_22767E0A0);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_2813A56A8, MEMORY[0x277D52498], MEMORY[0x277D524A0]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726B9F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2276639B0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A30, &qword_22767E140);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726BD18(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227669360();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA768, &qword_22767E100);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_2813A5500, MEMORY[0x277D53BA0], MEMORY[0x277D53BA8]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726C0CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_2276650A0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8B08, &qword_227671780);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_2813A5738, MEMORY[0x277D51330], MEMORY[0x277D51338]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726C408(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22766CDE0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22766CB20();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22726C5F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227663AB0();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB28, &qword_2276791D0);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_27D7B89F0, MEMORY[0x277D502D0], MEMORY[0x277D502D8]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

uint64_t sub_22726C91C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_227664010();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A48, &qword_2276716D0);
  result = sub_22766CDE0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_226E9CF88(&qword_28139BA00, MEMORY[0x277D50618], MEMORY[0x277D50620]);
    result = sub_22766BF50();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void *sub_22726CC44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2274CD91C(*(a1 + 16), 0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70) - 8);
  sub_2274CE900(&v9, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v1, a1);
  v6 = v5;
  v7 = v9;

  sub_226EBB21C(v7);
  if (v6 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_22726CDC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_22726CF90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_22726D07C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22766D370();
  sub_22766D3A0();
  if (a2)
  {
    sub_22766C100();
  }

  result = sub_22766D3F0();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 16 * v9);
      v16 = v15[1];
      if (v16)
      {
        if (a2)
        {
          v17 = *v15 == a1 && v16 == a2;
          if (v17 || (result = sub_22766D190(), (result & 1) != 0))
          {
LABEL_18:
            *v15 = a1;
            v15[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_18;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
    }

    while ((v11 & (1 << v9)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v7 + 8 * v10) = v11 | v12;
    v18 = (*(v5 + 48) + 16 * v9);
    *v18 = a1;
    v18[1] = a2;
    v19 = *(v5 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v5 + 16) = v21;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22726D218(uint64_t a1, char a2, void *a3)
{
  v59 = sub_227667780();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC80, &qword_2276796C0);
  v56 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v50 - v10);
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_226E93170(v52, v11, &qword_27D7BAC80, &qword_2276796C0);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_226E92000(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_226FF0A30();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_226FE2FC0(v23, a2 & 1);
  v25 = sub_226E92000(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_226E93170(v52 + *(v56 + 72) * v34, v11, &qword_27D7BAC80, &qword_2276796C0);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_226E92000(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_226FE2FC0(v43, 1);
            v39 = sub_226E92000(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22766D220();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

void sub_22726D784(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_22726DB2C(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v43 = sub_227667780();
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v35 = v3;
    v49 = MEMORY[0x277D84F90];
    v9 = v5;
    sub_226F1EFF0(0, v7, 0);
    v48 = v49;
    v10 = a1 + 56;
    result = sub_22766CC90();
    v11 = v9;
    v12 = result;
    v13 = 0;
    v40 = v9 + 8;
    v41 = v9 + 16;
    v36 = a1 + 64;
    v37 = v7;
    v38 = v9;
    v39 = a1 + 56;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_22;
      }

      v46 = *(a1 + 36);
      v17 = v42;
      v16 = v43;
      v18 = v11;
      (*(v11 + 16))(v42, *(a1 + 48) + *(v11 + 72) * v12, v43);
      v19 = v44(v17);
      v47 = v20;
      result = (*(v18 + 8))(v17, v16);
      v21 = v48;
      v49 = v48;
      v23 = *(v48 + 16);
      v22 = *(v48 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_226F1EFF0((v22 > 1), v23 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v23 + 1;
      v24 = v21 + 16 * v23;
      v25 = v47;
      *(v24 + 32) = v19;
      *(v24 + 40) = v25;
      v14 = 1 << *(a1 + 32);
      if (v12 >= v14)
      {
        goto LABEL_23;
      }

      v10 = v39;
      v26 = *(v39 + 8 * v15);
      if ((v26 & (1 << v12)) == 0)
      {
        goto LABEL_24;
      }

      v48 = v21;
      if (v46 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v27 = v26 & (-2 << (v12 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v11 = v38;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v36 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            v33 = v38;
            result = sub_226EB526C(v12, v46, 0);
            v11 = v33;
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        v34 = v38;
        result = sub_226EB526C(v12, v46, 0);
        v11 = v34;
      }

LABEL_4:
      ++v13;
      v12 = v14;
      if (v13 == v37)
      {
        return v48;
      }
    }

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

void sub_22726DE68(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726E210(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726E5B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726E960(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726ED08(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726F0B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726F458(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726F800(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726FBA8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22726FF5C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227270304(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a2;
  v44 = a1;
  v6 = sub_227665F20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v41 - v11;
  v12 = sub_227667780();
  v15.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v54 = a3;
  v19 = *(a3 + 56);
  v45 = a3 + 56;
  v46 = 0;
  v20 = 1 << *(a3 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v57 = a4 + 7;
  v56 = v7 + 16;
  v43 = v7;
  v58 = (v7 + 8);
  v59 = a4;
  v52 = v14;
  v53 = v13;
  v48 = (v14 + 8);
  v49 = v14 + 16;
  v50 = v23;
  v51 = v17;
  while (v22)
  {
    v24 = __clz(__rbit64(v22));
    v55 = (v22 - 1) & v22;
LABEL_13:
    v27 = v24 | (v18 << 6);
    v28 = *(v54 + 48);
    v29 = *(v52 + 72);
    v47 = v27;
    (*(v52 + 16))(v17, v28 + v29 * v27, v12, v15);
    sub_227667770();
    if (v59[2] && (v30 = v59, sub_226E9CF88(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]), v31 = sub_22766BF50(), v32 = -1 << *(v30 + 32), v33 = v31 & ~v32, ((*(v57 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
    {
      v34 = ~v32;
      v35 = *(v43 + 72);
      v36 = *(v43 + 16);
      while (1)
      {
        v36(v9, v59[6] + v35 * v33, v6);
        sub_226E9CF88(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
        v37 = sub_22766BFB0();
        v38 = *v58;
        (*v58)(v9, v6);
        if (v37)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v57 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v38(v60, v6);
      v17 = v51;
      v12 = v53;
      (*v48)(v51, v53);
      *(v44 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v39 = __OFADD__(v46++, 1);
      v23 = v50;
      v22 = v55;
      if (v39)
      {
        __break(1u);
LABEL_22:
        v40 = v54;

        sub_227269BC0(v44, v42, v46, v40);
        return;
      }
    }

    else
    {
LABEL_5:
      (*v58)(v60, v6);
      v17 = v51;
      v12 = v53;
      (*v48)(v51, v53);
      v23 = v50;
      v22 = v55;
    }
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_22;
    }

    v26 = *(v45 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v55 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2272707A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = *MEMORY[0x277D85DE8];
  v60 = sub_227665F20();
  v6 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v57 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = v40 - v9;
  v10 = sub_227667780();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *(a1 + 32);
  v14 = v12 & 0x3F;
  v41 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v41;

  if (v14 > 0xD)
  {
LABEL_27:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v39 = swift_slowAlloc();

      v37 = sub_227268F28(v39, v41, a1, a2, sub_227270304);

      MEMORY[0x22AA9A450](v39, -1, -1);

      return v37;
    }
  }

  v40[2] = v3;
  v40[1] = v40;
  MEMORY[0x28223BE20](v16);
  v43 = v40 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v43, v15);
  v17 = 0;
  v3 = 0;
  v53 = a1;
  v19 = *(a1 + 56);
  a1 += 56;
  v18 = v19;
  v44 = a1;
  v20 = 1 << *(a1 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v18;
  v23 = (v20 + 63) >> 6;
  v58 = a2 + 56;
  v56 = v6 + 16;
  v42 = v6;
  v59 = (v6 + 8);
  v51 = v10;
  v52 = v11;
  v47 = v11 + 16;
  v48 = (v11 + 8);
  v49 = v23;
  v50 = v13;
  while (2)
  {
    v45 = v17;
    while (1)
    {
      v24 = v53;
      if (!v22)
      {
        v26 = v3;
        while (1)
        {
          v3 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v3 >= v23)
          {
            goto LABEL_24;
          }

          v27 = *(v44 + 8 * v3);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v54 = (v27 - 1) & v27;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_27;
      }

      v25 = __clz(__rbit64(v22));
      v54 = (v22 - 1) & v22;
LABEL_15:
      v28 = v25 | (v3 << 6);
      v29 = *(v53 + 48);
      v30 = *(v52 + 72);
      v46 = v28;
      (*(v52 + 16))(v13, v29 + v30 * v28, v10);
      v15 = v13;
      sub_227667770();
      if (*(a2 + 16))
      {
        sub_226E9CF88(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
        v15 = v61;
        v31 = sub_22766BF50();
        v32 = -1 << *(a2 + 32);
        v6 = v31 & ~v32;
        if ((*(v58 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          break;
        }
      }

LABEL_7:
      (*v59)(v61, v60);
      v13 = v50;
      v10 = v51;
      (*v48)(v50, v51);
      v23 = v49;
      v22 = v54;
    }

    v55 = ~v32;
    v11 = *(v42 + 72);
    v33 = *(v42 + 16);
    while (1)
    {
      v34 = a2;
      v35 = v57;
      v15 = v60;
      v33(v57, *(a2 + 48) + v11 * v6, v60);
      sub_226E9CF88(&qword_27D7B8700, MEMORY[0x277D51FE0], MEMORY[0x277D51FF8]);
      a1 = sub_22766BFB0();
      v36 = *v59;
      (*v59)(v35, v15);
      if (a1)
      {
        break;
      }

      v6 = (v6 + 1) & v55;
      a2 = v34;
      if (((*(v58 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v36(v61, v60);
    v13 = v50;
    v10 = v51;
    (*v48)(v50, v51);
    *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
    v17 = v45 + 1;
    a2 = v34;
    v23 = v49;
    v22 = v54;
    if (!__OFADD__(v45, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v37 = sub_227269BC0(v43, v41, v45, v24);

  return v37;
}

uint64_t sub_227270D9C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - v8;
  v10 = sub_22722EE0C(a2);
  if (!v3)
  {
    v75 = v10;
    v72 = a2;
    v73 = sub_22722F4C0(a2);
    v74 = 0;
    v11 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v12 = *v11;
    v13 = v11[1];
    LODWORD(v82) = *(v11 + 16);
    v14 = v11[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC178, qword_22767DC20);
    v15 = swift_allocObject();
    v16 = v12;
    v17 = v13;

    sub_22766A070();
    *(v15 + 16) = v16;
    *(v15 + 24) = v17;
    *(v15 + 32) = v82;
    *(v15 + 40) = v14;
    swift_getKeyPath();
    v18 = sub_2276627D0();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v9, a1, v18);
    (*(v19 + 56))(v9, 0, 1, v18);
    v81 = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v80);
    sub_226E93170(v9, boxed_opaque_existential_0, &unk_27D7BB9D0, &qword_227671550);
    v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v82 = v21;
    v22 = sub_22766C820();
    sub_226E93170(v80, v78, &unk_27D7BC990, &qword_227670A30);
    v23 = v79;
    v76 = v15;
    if (v79)
    {
      v24 = __swift_project_boxed_opaque_existential_0(v78, v79);
      v25 = *(v23 - 8);
      v26 = MEMORY[0x28223BE20](v24);
      v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28, v26);
      v29 = sub_22766D170();
      (*(v25 + 8))(v28, v23);
      v15 = v76;
      __swift_destroy_boxed_opaque_existential_0(v78);
    }

    else
    {
      v29 = 0;
    }

    v77 = objc_opt_self();
    v30 = [v77 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C8, qword_22767DC60);
    v32 = [objc_allocWithZone(v31) initWithLeftExpression:v22 rightExpression:v30 modifier:0 type:4 options:0];

    sub_226E97D1C(v9, &unk_27D7BB9D0, &qword_227671550);
    sub_226E97D1C(v80, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v33 = v32;
    v34 = sub_22766A080();
    v36 = v35;
    MEMORY[0x22AA985C0]();
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v34(v80, 0);
    swift_endAccess();

    swift_getKeyPath();
    v37 = sub_227073F2C(v75);

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v80[0] = v37;

    v38 = sub_22766C820();
    sub_226E93170(v80, v78, &unk_27D7BC990, &qword_227670A30);
    v39 = v79;
    if (v79)
    {
      v40 = __swift_project_boxed_opaque_existential_0(v78, v79);
      v41 = *(v39 - 8);
      v42 = MEMORY[0x28223BE20](v40);
      v44 = &v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44, v42);
      v45 = sub_22766D170();
      (*(v41 + 8))(v44, v39);
      v15 = v76;
      __swift_destroy_boxed_opaque_existential_0(v78);
    }

    else
    {
      v45 = 0;
    }

    v46 = [v77 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(v31) initWithLeftExpression:v38 rightExpression:v46 modifier:0 type:10 options:0];

    sub_226E97D1C(v80, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v47 = sub_22766A080();
    v49 = v48;
    MEMORY[0x22AA985C0]();
    if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v47(v80, 0);
    swift_endAccess();

    swift_getKeyPath();
    v50 = sub_227074044(v73);

    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4D0, &unk_22767DD30);
    v80[0] = v50;

    v51 = sub_22766C820();
    sub_226E93170(v80, v78, &unk_27D7BC990, &qword_227670A30);
    v52 = v79;
    if (v79)
    {
      v53 = __swift_project_boxed_opaque_existential_0(v78, v79);
      v54 = *(v52 - 8);
      v55 = MEMORY[0x28223BE20](v53);
      v57 = &v72 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v54 + 16))(v57, v55);
      v58 = sub_22766D170();
      (*(v54 + 8))(v57, v52);
      v15 = v76;
      __swift_destroy_boxed_opaque_existential_0(v78);
    }

    else
    {
      v58 = 0;
    }

    v59 = [v77 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(v31) initWithLeftExpression:v51 rightExpression:v59 modifier:0 type:10 options:0];

    sub_226E97D1C(v80, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v60 = sub_22766A080();
    v62 = v61;
    MEMORY[0x22AA985C0]();
    if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v60(v80, 0);
    swift_endAccess();

    v63 = v74;
    v64 = sub_227232BB8(100);
    v7 = v63;
    if (v63)
    {
      swift_setDeallocating();

      v65 = qword_2813B2078;
      v66 = sub_22766A100();
      (*(*(v66 - 8) + 8))(v15 + v65, v66);
      swift_deallocClassInstance();
    }

    else
    {
      v68 = v64;
      swift_setDeallocating();

      v69 = qword_2813B2078;
      v70 = sub_22766A100();
      (*(*(v70 - 8) + 8))(v15 + v69, v70);
      swift_deallocClassInstance();
      v71 = v72;

      v7 = sub_2272707A8(v68, v71);
    }
  }

  return v7;
}

void sub_227271878(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227271C20(uint64_t a1, char a2, void *a3)
{
  v79 = a3;
  v64 = sub_227662750();
  v5 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = v55 - v8;
  v9 = sub_227664530();
  v75 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v61 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v60 = v55 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = v55 - v14;
  v77 = sub_227665F20();
  v65 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C0, qword_22767DB58);
  MEMORY[0x28223BE20](v17);
  v71 = v55 - v20;
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(v18 + 48);
    v23 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v74 = (v65 + 32);
    v73 = (v75 + 4);
    v69 = v75 + 2;
    v70 = v22;
    v68 = *(v19 + 72);
    v58 = (v5 + 8);
    v57 = v75 + 1;
    v56 = (v65 + 8);
    v55[1] = v75 + 5;
    v59 = v9;
    v72 = v15;
    while (1)
    {
      v76 = v21;
      v38 = v71;
      sub_226E93170(v23, v71, &qword_27D7BC4C0, qword_22767DB58);
      v39 = *v74;
      v40 = v78;
      (*v74)(v78, v38, v77);
      v41 = *v73;
      (*v73)(v15, v38 + v70, v9);
      v42 = *v79;
      v44 = sub_226F3A6FC(v40);
      v45 = v42[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        break;
      }

      v48 = v43;
      if (v42[3] >= v47)
      {
        if ((a2 & 1) == 0)
        {
          sub_226FF09F4();
        }
      }

      else
      {
        sub_226FE2F98(v47, a2 & 1);
        v49 = sub_226F3A6FC(v78);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_20;
        }

        v44 = v49;
      }

      v51 = *v79;
      if (v48)
      {
        v24 = v51[7];
        v25 = v75[9] * v44;
        v66 = v75[2];
        v67 = v25;
        v26 = v61;
        v66(v61, v24 + v25, v9);
        v27 = v62;
        sub_227664520();
        v28 = v63;
        sub_227664520();
        sub_226E9CF88(&qword_28139BDC0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v29 = v64;
        v30 = sub_22766BF80();
        v31 = *v58;
        v32 = v28;
        v9 = v59;
        (*v58)(v32, v29);
        v31(v27, v29);
        if (v30)
        {
          v33 = v26;
        }

        else
        {
          v33 = v72;
        }

        v34 = v60;
        v66(v60, v33, v9);
        v35 = v75;
        v36 = v75[1];
        v37 = v26;
        v15 = v72;
        v36(v37, v9);
        v36(v15, v9);
        (*v56)(v78, v77);
        (v35[5])(v51[7] + v67, v34, v9);
      }

      else
      {
        v51[(v44 >> 6) + 8] |= 1 << v44;
        v39(v51[6] + *(v65 + 72) * v44, v78, v77);
        v41((v51[7] + v75[9] * v44), v15, v9);
        v52 = v51[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_19;
        }

        v51[2] = v54;
      }

      v23 += v68;
      a2 = 1;
      v21 = v76 - 1;
      if (v76 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_22766D220();
    __break(1u);
  }
}

uint64_t sub_22727227C(uint64_t a1, char *a2, void *a3, double a4)
{
  v121 = a2;
  v120 = a1;
  v6 = sub_227667780();
  v7 = *(v6 - 8);
  v118 = v6;
  v119 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v102 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4C0, qword_22767DB58);
  v117 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v102 - v17;
  v19 = sub_227664530();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v122;
  result = sub_227270D9C(v120, v121, a3);
  if (v23)
  {
    return result;
  }

  v115 = 0;
  v116 = v19;
  v121 = v22;
  v122 = result;
  v120 = v20;
  v112 = v18;
  v108 = v15;
  v109 = v13;
  v110 = v12;
  v111 = v9;
  v25 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v26 = *v25;
  v27 = v25[1];
  v28 = *(v25 + 16);
  v29 = v25[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v30 = swift_allocObject();
  v31 = v26;
  v32 = v27;

  sub_22766A070();
  *(v30 + 16) = v31;
  *(v30 + 24) = v32;
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;
  swift_getKeyPath();
  v126 = MEMORY[0x277D839F8];
  *v125 = a4;
  v33 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v113 = v33;
  v34 = sub_22766C820();
  sub_226E93170(v125, v123, &unk_27D7BC990, &qword_227670A30);
  v35 = v124;
  if (v124)
  {
    v36 = __swift_project_boxed_opaque_existential_0(v123, v124);
    v37 = *(v35 - 8);
    v38 = MEMORY[0x28223BE20](v36);
    v40 = &v102 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40, v38);
    v41 = sub_22766D170();
    (*(v37 + 8))(v40, v35);
    __swift_destroy_boxed_opaque_existential_0(v123);
  }

  else
  {
    v41 = 0;
  }

  v42 = objc_opt_self();
  v43 = [v42 expressionForConstantValue_];
  swift_unknownObjectRelease();
  i = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950, &unk_227670BB0);
  v44 = [objc_allocWithZone(i) initWithLeftExpression:v34 rightExpression:v43 modifier:0 type:2 options:0];

  sub_226E97D1C(v125, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v45 = v44;
  v46 = sub_22766A080();
  v48 = v47;
  MEMORY[0x22AA985C0]();
  if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    sub_22766C3A0();
    v46(v125, 0);
    swift_endAccess();

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();

    v50 = v115;
    v51 = sub_22726DB2C(v122, sub_226F92188, KeyPath);
    v115 = v50;

    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
    v125[0] = v51;

    v52 = sub_22766C820();
    sub_226E93170(v125, v123, &unk_27D7BC990, &qword_227670A30);
    v53 = v124;
    if (v124)
    {
      v54 = __swift_project_boxed_opaque_existential_0(v123, v124);
      v113 = &v102;
      v55 = v42;
      v56 = *(v53 - 8);
      v57 = MEMORY[0x28223BE20](v54);
      v59 = &v102 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v56 + 16))(v59, v57);
      v60 = sub_22766D170();
      (*(v56 + 8))(v59, v53);
      v42 = v55;
      __swift_destroy_boxed_opaque_existential_0(v123);
    }

    else
    {
      v60 = 0;
    }

    v61 = [v42 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(i) initWithLeftExpression:v52 rightExpression:v61 modifier:0 type:10 options:0];

    sub_226E97D1C(v125, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v62 = sub_22766A080();
    v64 = v63;
    MEMORY[0x22AA985C0]();
    if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v62(v125, 0);
    swift_endAccess();

    v65 = v115;
    v66 = sub_227232EB8(100);
    if (v65)
    {

      swift_setDeallocating();

      v67 = qword_2813B2078;
      v68 = sub_22766A100();
      (*(*(v68 - 8) + 8))(v30 + v67, v68);
      return swift_deallocClassInstance();
    }

    v69 = v66;
    swift_setDeallocating();

    v70 = qword_2813B2078;
    v71 = sub_22766A100();
    (*(*(v71 - 8) + 8))(v30 + v70, v71);
    swift_deallocClassInstance();
    v42 = sub_22722F80C(v122);

    if (v42[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97B8, &qword_227674C10);
      v72 = sub_22766D010();
    }

    else
    {
      v72 = MEMORY[0x277D84F98];
    }

    v46 = v116;
    v73 = v121;
    v125[0] = v72;

    sub_22726D218(v74, 1, v125);
    v113 = 0;

    v76 = v69 + 56;
    v75 = *(v69 + 7);
    v77 = 1 << v69[32];
    v78 = -1;
    v122 = v125[0];
    if (v77 < 64)
    {
      v78 = ~(-1 << v77);
    }

    v30 = v78 & v75;
    v45 = ((v77 + 63) >> 6);
    v79 = v120;
    v115 = v120 + 16;
    v107 = v119 + 16;
    v106 = v119 + 32;
    v105 = v119 + 8;
    v104 = (v120 + 32);
    v80 = (v120 + 8);

    v81 = 0;
    for (i = MEMORY[0x277D84F90]; v30; v69 = v42)
    {
LABEL_27:
      while (1)
      {
        v83 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v42 = v69;
        (*(v79 + 16))(v73, *(v69 + 6) + *(v79 + 72) * (v83 | (v81 << 6)), v46);
        v84 = sub_2276644D0();
        if (*(v122 + 16))
        {
          break;
        }

LABEL_22:
        v73 = v121;
        (*v80)(v121, v46);
        v79 = v120;
        v69 = v42;
        if (!v30)
        {
          goto LABEL_23;
        }
      }

      v86 = sub_226E92000(v84, v85);
      v88 = v87;
      v46 = v116;

      if ((v88 & 1) == 0)
      {
        goto LABEL_22;
      }

      v89 = v119;
      (*(v119 + 16))(v111, *(v122 + 56) + *(v119 + 72) * v86, v118);
      v90 = v110;
      (*(v89 + 32))(v110, v111, v118);
      v103 = *(v109 + 48);
      v91 = v108;
      sub_227667770();
      (*(v89 + 8))(v90, v118);
      (*v104)(v91 + v103, v121, v116);
      sub_226E95D18(v91, v112, &qword_27D7BC4C0, qword_22767DB58);
      v92 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_2273A4F50(0, *(v92 + 2) + 1, 1, v92);
      }

      v46 = v116;
      v93 = v117;
      v95 = *(v92 + 2);
      v94 = *(v92 + 3);
      i = v92;
      v96 = v112;
      if (v95 >= v94 >> 1)
      {
        v98 = sub_2273A4F50((v94 > 1), v95 + 1, 1, i);
        v93 = v117;
        i = v98;
        v96 = v112;
      }

      v97 = i;
      *(i + 2) = v95 + 1;
      sub_226E95D18(v96, v97 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v95, &qword_27D7BC4C0, qword_22767DB58);
      v79 = v120;
      v73 = v121;
    }

LABEL_23:
    v82 = v81 + 1;
    if (!__OFADD__(v81, 1))
    {
      break;
    }

    __break(1u);
LABEL_41:
    sub_22766C360();
  }

  if (v82 < v45)
  {
    v30 = *&v76[8 * v82];
    ++v81;
    if (v30)
    {
      v81 = v82;
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v99 = i;
  if (*(i + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97B0, &unk_22767DC10);
    v100 = sub_22766D010();
  }

  else
  {
    v100 = MEMORY[0x277D84F98];
  }

  v125[0] = v100;
  v101 = v113;
  sub_227271C20(v99, 1, v125);

  if (!v101)
  {
    return v125[0];
  }

  __break(1u);
  return result;
}

void sub_227273014(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2272733BC(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227273764(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

char *sub_227273B0C(uint64_t a1, void *a2)
{
  v4 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC228, qword_22767CFB0);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  sub_227230964(a1);
  v13 = v12;
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC4E0, &qword_22767DD90);
  v36[0] = v13;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v36, v34, &unk_27D7BC990, &qword_227670A30);
  v15 = v35;
  if (v35)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v34, v35);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC230 qword_22767D000))];

  sub_226E97D1C(v36, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v23 = sub_22766A080();
  v25 = v24;
  MEMORY[0x22AA985C0]();
  if (*((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v23(v36, 0);
  swift_endAccess();

  v26 = sub_226E9AABC(100);
  if (v2)
  {
    swift_setDeallocating();

    v27 = qword_2813B2078;
    v28 = sub_22766A100();
    (*(*(v28 - 8) + 8))(v9 + v27, v28);
    swift_deallocClassInstance();
  }

  else
  {
    swift_setDeallocating();

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v9 + v29, v30);
    swift_deallocClassInstance();
    if (!*(v26 + 2))
    {

      v31 = sub_227664EC0();
      sub_226E9CF88(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51188], v31);
      swift_willThrow();
    }
  }

  return v26;
}

void sub_227274068(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227274410(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2272747B8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227274B60(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227274F08(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2272752B0(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227275658(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227275A00(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227275DA8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_227276150(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_2272764F8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_22766BFD0();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    v5 = [v4 relationshipsByName];

    sub_226E99364(0, &qword_281398A78, 0x277CBE500);
    v6 = sub_22766BEB0();
  }

  else
  {
    v6 = sub_2271480A0(MEMORY[0x277D84F90]);
  }

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v29 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_14:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v11 << 6);
    v15 = (*(v6 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(v6 + 56) + 8 * v14);

    v19 = v18;
    v20 = [v19 userInfo];
    if (!v20)
    {

      v31 = 0u;
      v32 = 0u;
      goto LABEL_8;
    }

    v21 = v20;
    v22 = sub_22766BEB0();

    sub_22766CDA0();
    if (!*(v22 + 16) || (v23 = sub_226E9BF6C(v30), (v24 & 1) == 0))
    {

      sub_226E9B62C(v30);
      v31 = 0u;
      v32 = 0u;
      goto LABEL_26;
    }

    sub_226E97CC0(*(v22 + 56) + 32 * v23, &v31);
    sub_226E9B62C(v30);

    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v25 = sub_226EB5278(v30[0], v30[1]);

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_226EB3F78(0, *(v29 + 2) + 1, 1, v29);
        }

        v27 = *(v29 + 2);
        v26 = *(v29 + 3);
        if (v27 >= v26 >> 1)
        {
          v29 = sub_226EB3F78((v26 > 1), v27 + 1, 1, v29);
        }

        *(v29 + 2) = v27 + 1;
        v28 = &v29[16 * v27];
        *(v28 + 4) = v16;
        *(v28 + 5) = v17;
      }

      else
      {

LABEL_28:
      }
    }

    else
    {
LABEL_26:

LABEL_8:
      sub_226E97D1C(&v31, &unk_27D7BC990, &qword_227670A30);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 64 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
}