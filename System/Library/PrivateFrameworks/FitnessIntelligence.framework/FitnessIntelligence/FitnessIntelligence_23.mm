void sub_1B4BA6AB8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v9 + v8 + ((v8 + 8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v9;
  v11 = a3 >= v7;
  v12 = a3 - v7;
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

  if (v7 < a2)
  {
    v14 = ~v7 + a2;
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
LABEL_39:
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
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
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

      goto LABEL_28;
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

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v19 = *(v6 + 56);
  v20 = &a1[v8 + 8] & ~v8;

  v19(v20);
}

uint64_t MoveStreakProperty.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 112);
  v20 = *(v1 + 96);
  v21 = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 48);
  v16 = *(v1 + 32);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v18 = *(v1 + 64);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 16);
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 112);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 128);
  *(a1 + 128) = *(v1 + 128);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_1B4BA6D90(v15, v14);
}

__n128 MoveStreakProperty.init(value:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t _s19FitnessIntelligence18MoveStreakPropertyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v43 = *(a1 + 96);
  v44 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v39 = *(a1 + 32);
  v40 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v41 = *(a1 + 64);
  v42 = v7;
  v8 = *(a1 + 16);
  v38[0] = *a1;
  v38[1] = v8;
  v9 = *(a2 + 80);
  v10 = *(a2 + 112);
  v51 = *(a2 + 96);
  v52 = v10;
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v14;
  v15 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v15;
  v16 = *(a1 + 112);
  v35 = v43;
  v36 = v16;
  v31 = v39;
  v32 = v6;
  v33 = v41;
  v34 = v2;
  v29 = v38[0];
  v30 = v4;
  v17 = *(a2 + 112);
  v26 = v51;
  v27 = v17;
  v22 = v47;
  v23 = v13;
  v24 = v49;
  v25 = v9;
  v45 = *(a1 + 128);
  v53 = *(a2 + 128);
  v37 = *(a1 + 128);
  v28 = *(a2 + 128);
  v20 = v46[0];
  v21 = v11;
  v18 = _s19FitnessIntelligence19StreakPropertyValueV2eeoiySbAC_ACtFZ_0(&v29, &v20);
  v54[6] = v26;
  v54[7] = v27;
  v55 = v28;
  v54[2] = v22;
  v54[3] = v23;
  v54[4] = v24;
  v54[5] = v25;
  v54[0] = v20;
  v54[1] = v21;
  sub_1B4BA6D90(v38, v56);
  sub_1B4BA6D90(v46, v56);
  sub_1B4BA87C4(v54);
  v56[6] = v35;
  v56[7] = v36;
  v57 = v37;
  v56[2] = v31;
  v56[3] = v32;
  v56[4] = v33;
  v56[5] = v34;
  v56[0] = v29;
  v56[1] = v30;
  sub_1B4BA87C4(v56);
  return v18 & 1;
}

uint64_t _s19FitnessIntelligence18MoveStreakPropertyV9hashValueSivg_0()
{
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA705C(uint64_t a1)
{
  sub_1B4D18E8C();
  StreakPropertyValue.hash(into:)();
  return sub_1B4D18EDC();
}

BOOL static DistanceStatisticsProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t DistanceStatisticsProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t DistanceStatisticsProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  sub_1B49B0578(&qword_1EDC3CB40, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static MoveGoalDeltaProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A6F80, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t MoveGoalDeltaProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t MoveGoalDeltaProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  sub_1B49B0578(&qword_1EB8A72F0, &qword_1EB8A6868, &unk_1B4D1AB80, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static ExerciseGoalDeltaProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t ExerciseGoalDeltaProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t ExerciseGoalDeltaProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  sub_1B49B0578(&qword_1EB8A72E8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

BOOL static StandGoalDeltaProperty.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A6F70, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968090]);
  result = 0;
  if (sub_1B4D1816C())
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
    if (*(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28)) && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0 && (sub_1B4D1816C() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t StandGoalDeltaProperty.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1B8C7D2C0](*(v1 + *(v2 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D1808C();
}

uint64_t StandGoalDeltaProperty.hashValue.getter()
{
  sub_1B4D18E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  sub_1B49B0578(&qword_1EB8A72D0, &qword_1EB8A6870, &unk_1B4D1C2C0, MEMORY[0x1E6968080]);
  sub_1B4D1808C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  MEMORY[0x1B8C7D2C0](*(v0 + *(v1 + 28)));
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

FitnessIntelligence::MoveGoalMilestoneProperty __swiftcall MoveGoalMilestoneProperty.init(value:)(FitnessIntelligence::MoveGoalMilestoneProperty value)
{
  *v1 = *value.value.currentCount;
  *(v1 + 8) = *(value.value.currentCount + 8);
  return value;
}

uint64_t sub_1B4BA81C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6[9] = *v3;
  v7 = *(v3 + 8);
  sub_1B4D18E8C();
  a3(v6);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA8238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  v8 = *(v4 + 8);
  sub_1B4D18E8C();
  a4(v7);
  return sub_1B4D18EDC();
}

double _s19FitnessIntelligence25MoveGoalMilestonePropertyV5valueAA05RingseF5ValueVvg_0@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  result = a1[2];
  v6 = a2[2];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return (sub_1B4A23AD4(result, v6) & 1) != 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return (sub_1B4A23AD4(result, v6) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[2];
  MEMORY[0x1B8C7D290](*v2);
  MEMORY[0x1B8C7D290](*(v4 + 16));
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      MEMORY[0x1B8C7D2C0](v8);
      --v6;
    }

    while (v6);
  }

  return sub_1B4A27684(a1, v5);
}

uint64_t _s19FitnessIntelligence25MoveGoalMilestonePropertyV9hashValueSivg_0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B4D18E8C();
  MEMORY[0x1B8C7D290](v1);
  MEMORY[0x1B8C7D290](*(v2 + 16));
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      MEMORY[0x1B8C7D2C0](v6);
      --v4;
    }

    while (v4);
  }

  sub_1B4A27684(v8, v3);
  return sub_1B4D18EDC();
}

BOOL sub_1B4BA84F0(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    v2 = a2[2];
    v3 = a1[2];
    if (sub_1B4A0A164(a1[1], a2[1]) & 1) != 0 && (sub_1B4A23AD4(v3, v2))
    {
      return 1;
    }
  }

  return result;
}

double HighestDailyDistanceProperty.value.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t sub_1B4BA8620(uint64_t (*a1)(void *, uint64_t))
{
  v3 = *v1;
  sub_1B4D18E8C();
  a1(v5, v3);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA8694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_1B4D18E8C();
  a3(v7, v5);
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BA8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B4D18E8C();
  a4(v8, v6);
  return sub_1B4D18EDC();
}

unint64_t sub_1B4BA8818()
{
  result = qword_1EB8AB9E8;
  if (!qword_1EB8AB9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AB9E8);
  }

  return result;
}

unint64_t sub_1B4BA886C(uint64_t a1)
{
  result = sub_1B4BA8894();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8894()
{
  result = qword_1EDC395D0;
  if (!qword_1EDC395D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395D0);
  }

  return result;
}

unint64_t sub_1B4BA88E8()
{
  result = qword_1EDC38F60[0];
  if (!qword_1EDC38F60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38F60);
  }

  return result;
}

uint64_t sub_1B4BA893C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4BA8984(uint64_t a1)
{
  result = sub_1B4BA89AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA89AC()
{
  result = qword_1EDC395E8[0];
  if (!qword_1EDC395E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC395E8);
  }

  return result;
}

unint64_t sub_1B4BA8A04()
{
  result = qword_1EDC395E0;
  if (!qword_1EDC395E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395E0);
  }

  return result;
}

unint64_t sub_1B4BA8A58(uint64_t a1)
{
  result = sub_1B4BA8A80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8A80()
{
  result = qword_1EDC392C8;
  if (!qword_1EDC392C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC392C8);
  }

  return result;
}

unint64_t sub_1B4BA8AD4(uint64_t a1)
{
  result = sub_1B4BA8AFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8AFC()
{
  result = qword_1EDC392E0[0];
  if (!qword_1EDC392E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC392E0);
  }

  return result;
}

unint64_t sub_1B4BA8B54()
{
  result = qword_1EDC392D8;
  if (!qword_1EDC392D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC392D8);
  }

  return result;
}

unint64_t sub_1B4BA8BA8(uint64_t a1)
{
  result = sub_1B4BA8BD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8BD0()
{
  result = qword_1EDC39578;
  if (!qword_1EDC39578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39578);
  }

  return result;
}

unint64_t sub_1B4BA8C24(uint64_t a1)
{
  result = sub_1B4BA8C4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8C4C()
{
  result = qword_1EDC39590;
  if (!qword_1EDC39590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39590);
  }

  return result;
}

unint64_t sub_1B4BA8CA4()
{
  result = qword_1EDC39588;
  if (!qword_1EDC39588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39588);
  }

  return result;
}

unint64_t sub_1B4BA8CF8(uint64_t a1)
{
  result = sub_1B4BA8D20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8D20()
{
  result = qword_1EDC38CA0;
  if (!qword_1EDC38CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CA0);
  }

  return result;
}

unint64_t sub_1B4BA8D74(uint64_t a1)
{
  result = sub_1B4BA8D9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA8D9C()
{
  result = qword_1EDC38CB8;
  if (!qword_1EDC38CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CB8);
  }

  return result;
}

unint64_t sub_1B4BA8DF4()
{
  result = qword_1EDC38CB0;
  if (!qword_1EDC38CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CB0);
  }

  return result;
}

uint64_t sub_1B4BA8E8C(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38BB0, type metadata accessor for MoveRingStatisticsProperty, &protocol conformance descriptor for MoveRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA8F48(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38BC8, type metadata accessor for MoveRingStatisticsProperty, &protocol conformance descriptor for MoveRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA8FE8(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38168, type metadata accessor for MoveMinutesRingStatisticsProperty, &protocol conformance descriptor for MoveMinutesRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9060(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38180, type metadata accessor for MoveMinutesRingStatisticsProperty, &protocol conformance descriptor for MoveMinutesRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9100(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38538, type metadata accessor for ExerciseRingStatisticsProperty, &protocol conformance descriptor for ExerciseRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9178(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38550, type metadata accessor for ExerciseRingStatisticsProperty, &protocol conformance descriptor for ExerciseRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9218(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38990, type metadata accessor for StandRingStatisticsProperty, &protocol conformance descriptor for StandRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9290(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC389A8, type metadata accessor for StandRingStatisticsProperty, &protocol conformance descriptor for StandRingStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9330(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38FF8, type metadata accessor for StepsStatisticsProperty, &protocol conformance descriptor for StepsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA93A8(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC39010, type metadata accessor for StepsStatisticsProperty, &protocol conformance descriptor for StepsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9448(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38E50, type metadata accessor for FlightsStatisticsProperty, &protocol conformance descriptor for FlightsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA94C0(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38E68, type metadata accessor for FlightsStatisticsProperty, &protocol conformance descriptor for FlightsStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA95A4(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38C80, type metadata accessor for DistanceStatisticsProperty, &protocol conformance descriptor for DistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9660(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38C98, type metadata accessor for DistanceStatisticsProperty, &protocol conformance descriptor for DistanceStatisticsProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9700()
{
  result = qword_1EB8ABA30;
  if (!qword_1EB8ABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABA30);
  }

  return result;
}

unint64_t sub_1B4BA9754(uint64_t a1)
{
  result = sub_1B4BA977C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA977C()
{
  result = qword_1EDC385E8;
  if (!qword_1EDC385E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC385E8);
  }

  return result;
}

unint64_t sub_1B4BA97D0()
{
  result = qword_1EDC38628;
  if (!qword_1EDC38628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38628);
  }

  return result;
}

unint64_t sub_1B4BA9824(uint64_t a1)
{
  result = sub_1B4BA984C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA984C()
{
  result = qword_1EDC38600;
  if (!qword_1EDC38600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38600);
  }

  return result;
}

unint64_t sub_1B4BA98A4()
{
  result = qword_1EDC385F8;
  if (!qword_1EDC385F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC385F8);
  }

  return result;
}

unint64_t sub_1B4BA98F8(uint64_t a1)
{
  result = sub_1B4BA9920();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9920()
{
  result = qword_1EDC38188;
  if (!qword_1EDC38188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38188);
  }

  return result;
}

unint64_t sub_1B4BA9974(uint64_t a1)
{
  result = sub_1B4BA999C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA999C()
{
  result = qword_1EDC381A0;
  if (!qword_1EDC381A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC381A0);
  }

  return result;
}

unint64_t sub_1B4BA99F4()
{
  result = qword_1EDC38198;
  if (!qword_1EDC38198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38198);
  }

  return result;
}

unint64_t sub_1B4BA9A48(uint64_t a1)
{
  result = sub_1B4BA9A70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9A70()
{
  result = qword_1EDC383A0;
  if (!qword_1EDC383A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383A0);
  }

  return result;
}

unint64_t sub_1B4BA9AC4(uint64_t a1)
{
  result = sub_1B4BA9AEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9AEC()
{
  result = qword_1EDC383B8;
  if (!qword_1EDC383B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383B8);
  }

  return result;
}

unint64_t sub_1B4BA9B44()
{
  result = qword_1EDC383B0;
  if (!qword_1EDC383B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383B0);
  }

  return result;
}

unint64_t sub_1B4BA9B98(uint64_t a1)
{
  result = sub_1B4BA9BC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9BC0()
{
  result = qword_1EDC37A80;
  if (!qword_1EDC37A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A80);
  }

  return result;
}

unint64_t sub_1B4BA9C14(uint64_t a1)
{
  result = sub_1B4BA9C3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BA9C3C()
{
  result = qword_1EDC37A90;
  if (!qword_1EDC37A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A90);
  }

  return result;
}

unint64_t sub_1B4BA9C94()
{
  result = qword_1EDC37A88;
  if (!qword_1EDC37A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A88);
  }

  return result;
}

uint64_t sub_1B4BA9D2C(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC39490, type metadata accessor for MoveGoalDeltaProperty, &protocol conformance descriptor for MoveGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9DE8(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC394A8, type metadata accessor for MoveGoalDeltaProperty, &protocol conformance descriptor for MoveGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9E88(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38800, type metadata accessor for MoveMinutesGoalDeltaProperty, &protocol conformance descriptor for MoveMinutesGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9F00(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38818, type metadata accessor for MoveMinutesGoalDeltaProperty, &protocol conformance descriptor for MoveMinutesGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BA9FA0(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38F20, type metadata accessor for ExerciseGoalDeltaProperty, &protocol conformance descriptor for ExerciseGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BAA018(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC38F38, type metadata accessor for ExerciseGoalDeltaProperty, &protocol conformance descriptor for ExerciseGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BAA0FC(uint64_t a1)
{
  result = sub_1B4BA893C(&qword_1EDC391F8, type metadata accessor for StandGoalDeltaProperty, &protocol conformance descriptor for StandGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B4BAA1B8(uint64_t a1)
{
  result = sub_1B4BA893C(qword_1EDC39210, type metadata accessor for StandGoalDeltaProperty, &protocol conformance descriptor for StandGoalDeltaProperty);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA258()
{
  result = qword_1EB8ABA68;
  if (!qword_1EB8ABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABA68);
  }

  return result;
}

unint64_t sub_1B4BAA2AC(uint64_t a1)
{
  result = sub_1B4BAA2D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA2D4()
{
  result = qword_1EDC38D80;
  if (!qword_1EDC38D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D80);
  }

  return result;
}

unint64_t sub_1B4BAA328(uint64_t a1)
{
  result = sub_1B4BAA350();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA350()
{
  result = qword_1EDC38D98;
  if (!qword_1EDC38D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D98);
  }

  return result;
}

unint64_t sub_1B4BAA3A8()
{
  result = qword_1EDC38D90;
  if (!qword_1EDC38D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D90);
  }

  return result;
}

unint64_t sub_1B4BAA3FC(uint64_t a1)
{
  result = sub_1B4BAA424();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA424()
{
  result = qword_1EDC38630;
  if (!qword_1EDC38630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38630);
  }

  return result;
}

unint64_t sub_1B4BAA478(uint64_t a1)
{
  result = sub_1B4BAA4A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA4A0()
{
  result = qword_1EDC38648;
  if (!qword_1EDC38648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38648);
  }

  return result;
}

unint64_t sub_1B4BAA4F8()
{
  result = qword_1EDC38640;
  if (!qword_1EDC38640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38640);
  }

  return result;
}

unint64_t sub_1B4BAA54C(uint64_t a1)
{
  result = sub_1B4BAA574();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA574()
{
  result = qword_1EDC38B00;
  if (!qword_1EDC38B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38B00);
  }

  return result;
}

unint64_t sub_1B4BAA5C8(uint64_t a1)
{
  result = sub_1B4BAA5F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA5F0()
{
  result = qword_1EDC38B18[0];
  if (!qword_1EDC38B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38B18);
  }

  return result;
}

unint64_t sub_1B4BAA648()
{
  result = qword_1EDC38B10;
  if (!qword_1EDC38B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38B10);
  }

  return result;
}

unint64_t sub_1B4BAA69C(uint64_t a1)
{
  result = sub_1B4BAA6C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA6C4()
{
  result = qword_1EDC37EB0;
  if (!qword_1EDC37EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37EB0);
  }

  return result;
}

unint64_t sub_1B4BAA718(uint64_t a1)
{
  result = sub_1B4BAA740();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA740()
{
  result = qword_1EDC37EC0[0];
  if (!qword_1EDC37EC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC37EC0);
  }

  return result;
}

unint64_t sub_1B4BAA798()
{
  result = qword_1EDC37EB8;
  if (!qword_1EDC37EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37EB8);
  }

  return result;
}

unint64_t sub_1B4BAA830(uint64_t a1)
{
  result = sub_1B4BAA858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA858()
{
  result = qword_1EDC38608;
  if (!qword_1EDC38608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38608);
  }

  return result;
}

unint64_t sub_1B4BAA8F0(uint64_t a1)
{
  result = sub_1B4BAA918();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAA918()
{
  result = qword_1EDC38620;
  if (!qword_1EDC38620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38620);
  }

  return result;
}

unint64_t sub_1B4BAA970()
{
  result = qword_1EDC38618;
  if (!qword_1EDC38618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38618);
  }

  return result;
}

unint64_t sub_1B4BAAA08(uint64_t a1)
{
  result = sub_1B4BAAA30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAA30()
{
  result = qword_1EDC38820;
  if (!qword_1EDC38820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38820);
  }

  return result;
}

unint64_t sub_1B4BAAAC8(uint64_t a1)
{
  result = sub_1B4BAAAF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAAF0()
{
  result = qword_1EDC38838[0];
  if (!qword_1EDC38838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC38838);
  }

  return result;
}

unint64_t sub_1B4BAAB48()
{
  result = qword_1EDC38830;
  if (!qword_1EDC38830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38830);
  }

  return result;
}

unint64_t sub_1B4BAABA0()
{
  result = qword_1EB8ABA90;
  if (!qword_1EB8ABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABA90);
  }

  return result;
}

unint64_t sub_1B4BAABF4(uint64_t a1)
{
  result = sub_1B4BAAC1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAC1C()
{
  result = qword_1EDC390D8;
  if (!qword_1EDC390D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390D8);
  }

  return result;
}

unint64_t sub_1B4BAAC74(uint64_t a1)
{
  result = sub_1B4BAAC9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BAAC9C()
{
  result = qword_1EDC390E0;
  if (!qword_1EDC390E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390E0);
  }

  return result;
}

unint64_t sub_1B4BAACF4()
{
  result = qword_1EDC3CC58[0];
  if (!qword_1EDC3CC58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3CC58);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B4BAADAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4BAADF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B4BAAF04(uint64_t a1)
{
  if (!qword_1EDC39040)
  {
    v2 = type metadata accessor for UnitCount();
    v5 = type metadata accessor for StatisticsPropertyValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC39040);
    }
  }
}

void sub_1B4BAB0A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_1B4A30340(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B4BAB148(uint64_t a1)
{
  sub_1B4BAAF04(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B4BAB458(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A74E8, &qword_1B4D1E2D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v58 = (&v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v56 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - v12;
  v14 = sub_1B4D1777C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4955D64(a3, &v60);
  sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
  if (swift_dynamicCast())
  {
    *v10 = v64;
    v18 = type metadata accessor for WorkoutMetadata(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);

    v19 = v10;
    v20 = a1;
    v21 = a2;
    return sub_1B49CAE28(v19, v20, v21);
  }

  v57 = a1;
  sub_1B4955D64(a3, &v60);
  v23 = swift_dynamicCast();
  v24 = *(v15 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v13, 1, 1, v14);
    sub_1B4975024(v13, &qword_1EB8A6790, &qword_1B4D1BBC0);
    sub_1B4955D64(a3, &v60);
    if (swift_dynamicCast())
    {
      v26 = v65;
      *v10 = v64;
      v10[1] = v26;
      v27 = type metadata accessor for WorkoutMetadata(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v27 - 8) + 56))(v10, 0, 1, v27);

      v19 = v10;
      v20 = v57;
      v21 = a2;
      return sub_1B49CAE28(v19, v20, v21);
    }

    sub_1B4955D64(a3, &v60);
    sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
    v28 = a2;
    if (swift_dynamicCast())
    {
      *v10 = v64;
      v29 = type metadata accessor for WorkoutMetadata(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);

      v19 = v10;
      v20 = v57;
      v21 = a2;
      return sub_1B49CAE28(v19, v20, v21);
    }

    sub_1B4955D64(a3, &v60);
    v30 = MEMORY[0x1E6969080];
    if ((swift_dynamicCast() & 1) == 0)
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD00000000000002BLL, 0x80000001B4D62880);
      MEMORY[0x1B8C7C620](v57, a2);
      MEMORY[0x1B8C7C620](0x2065756C617620, 0xE700000000000000);
      __swift_project_boxed_opaque_existential_1(a3, a3[3]);
      sub_1B4D18DBC();
      result = sub_1B4D18A9C();
      __break(1u);
      return result;
    }

    v31 = v64;
    v32 = v65;
    v62 = v30;
    v63 = MEMORY[0x1E6969078];
    v60 = v64;
    v61 = v65;
    v33 = __swift_project_boxed_opaque_existential_1(&v60, v30);
    v34 = *v33;
    v35 = v33[1];
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      if (v36 != 2)
      {
        memset(v59, 0, 14);

        sub_1B498FC0C(v31, v32);
        v37 = v59;
        v38 = v59;
        goto LABEL_34;
      }

      v39 = *(v34 + 16);
      v40 = *(v34 + 24);

      sub_1B498FC0C(v31, v32);
      v41 = sub_1B4D1750C();
      if (v41)
      {
        v42 = sub_1B4D1752C();
        v34 = v39 - v42;
        if (__OFSUB__(v39, v42))
        {
          goto LABEL_36;
        }

        v41 += v34;
      }

      v43 = __OFSUB__(v40, v39);
      v44 = v40 - v39;
      if (!v43)
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v36)
    {
      v59[0] = *v33;
      LOWORD(v59[1]) = v35;
      BYTE2(v59[1]) = BYTE2(v35);
      BYTE3(v59[1]) = BYTE3(v35);
      BYTE4(v59[1]) = BYTE4(v35);
      BYTE5(v59[1]) = BYTE5(v35);

      sub_1B498FC0C(v31, v32);
      v37 = v59;
      v38 = v59 + BYTE6(v35);
LABEL_34:
      sub_1B4BAD4F8(v37, v38, &v64);
      v51 = v57;
      v52 = v64;
      v53 = v65;
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
      v54 = v58;
      *v58 = v52;
      *(v54 + 8) = v53;
      v55 = type metadata accessor for WorkoutMetadata(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
      sub_1B49CAE28(v54, v51, v28);
      return sub_1B49DDD2C(v31, v32);
    }

    v45 = v34;
    v46 = v34 >> 32;
    v44 = v46 - v45;
    if (v46 >= v45)
    {

      sub_1B498FC0C(v31, v32);
      v41 = sub_1B4D1750C();
      if (!v41)
      {
LABEL_26:
        v48 = sub_1B4D1751C();
        if (v48 >= v44)
        {
          v49 = v44;
        }

        else
        {
          v49 = v48;
        }

        v50 = (v49 + v41);
        if (v41)
        {
          v38 = v50;
        }

        else
        {
          v38 = 0;
        }

        v37 = v41;
        goto LABEL_34;
      }

      v47 = sub_1B4D1752C();
      if (!__OFSUB__(v45, v47))
      {
        v41 += v45 - v47;
        goto LABEL_26;
      }

LABEL_37:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24(v13, 0, 1, v14);
  (*(v15 + 32))(v17, v13, v14);
  (*(v15 + 16))(v10, v17, v14);
  v25 = type metadata accessor for WorkoutMetadata(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);

  sub_1B49CAE28(v10, v57, a2);
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1B4BABCC4()
{
  v1 = *v0;
  v2 = 0x797469746E617571;
  v3 = 0x676E69727473;
  v4 = 0x7265626D756ELL;
  if (v1 != 3)
  {
    v4 = 1635017060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702125924;
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

uint64_t sub_1B4BABD48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4BAF184(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4BABD70(uint64_t a1)
{
  v2 = sub_1B4BADB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABDAC(uint64_t a1)
{
  v2 = sub_1B4BADB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABDE8(uint64_t a1)
{
  v2 = sub_1B4BADBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABE24(uint64_t a1)
{
  v2 = sub_1B4BADBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABE60(uint64_t a1)
{
  v2 = sub_1B4BADCD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABE9C(uint64_t a1)
{
  v2 = sub_1B4BADCD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABED8(uint64_t a1)
{
  v2 = sub_1B4BADC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABF14(uint64_t a1)
{
  v2 = sub_1B4BADC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABF50(uint64_t a1)
{
  v2 = sub_1B4BADD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABF8C(uint64_t a1)
{
  v2 = sub_1B4BADD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABFC8(uint64_t a1)
{
  v2 = sub_1B4BADC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BAC004(uint64_t a1)
{
  v2 = sub_1B4BADC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WorkoutMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABA98, &qword_1B4D37AF0);
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAA0, &qword_1B4D37AF8);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAA8, &qword_1B4D37B00);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAB0, &qword_1B4D37B08);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v46 - v9;
  v10 = sub_1B4D1777C();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAB8, &qword_1B4D37B10);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for WorkoutMetadata(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAC0, &qword_1B4D37B18);
  v63 = *(v19 - 8);
  v64 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BADB1C();
  v62 = v21;
  sub_1B4D18EFC();
  sub_1B4BADB70(v61, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v13;
    v28 = v58;
    v29 = v59;
    v30 = v60;
    if (!EnumCaseMultiPayload)
    {
      v23 = *v18;
      LOBYTE(v65) = 0;
      sub_1B4BADD24();
      v24 = v64;
      v25 = v62;
      sub_1B4D18C5C();
      v65 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
      sub_1B49B0578(&qword_1EB8ABB10, &qword_1EB8ABB08, &qword_1B4D37B28, &protocol conformance descriptor for CodableBridging<A>);
      sub_1B4D18D0C();
      v27 = v46;
      goto LABEL_7;
    }

    v41 = v12;
    v42 = v56;
    v43 = v57;
    (*(v56 + 32))(v41, v18, v57);
    LOBYTE(v65) = 1;
    sub_1B4BADCD0();
    v44 = v64;
    v45 = v62;
    sub_1B4D18C5C();
    sub_1B49B1198(&qword_1EDC37820, MEMORY[0x1E6969538]);
    sub_1B4D18D0C();
    (*(v29 + 8))(v28, v30);
    (*(v42 + 8))(v41, v43);
    (*(v63 + 8))(v45, v44);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    LOBYTE(v65) = 2;
    sub_1B4BADC7C();
    v31 = v47;
    v32 = v64;
    v33 = v62;
    sub_1B4D18C5C();
    v34 = v49;
    sub_1B4D18CBC();

    (*(v48 + 8))(v31, v34);
    (*(v63 + 8))(v33, v32);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v23 = *v18;
      LOBYTE(v65) = 3;
      sub_1B4BADC28();
      v15 = v50;
      v24 = v64;
      v25 = v62;
      sub_1B4D18C5C();
      v65 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAE0, &qword_1B4D37B20);
      sub_1B49B0578(&qword_1EB8ABAE8, &qword_1EB8ABAE0, &qword_1B4D37B20, &protocol conformance descriptor for CodableBridging<A>);
      v26 = v52;
      sub_1B4D18D0C();
      v27 = v51;
LABEL_7:
      (*(v27 + 8))(v15, v26);
      (*(v63 + 8))(v25, v24);

      return;
    }

    v36 = *v18;
    v35 = v18[1];
    LOBYTE(v65) = 4;
    sub_1B4BADBD4();
    v37 = v53;
    v38 = v64;
    v39 = v62;
    sub_1B4D18C5C();
    v65 = v36;
    v66 = v35;
    sub_1B49DDCD8();
    v40 = v55;
    sub_1B4D18D0C();
    (*(v54 + 8))(v37, v40);
    (*(v63 + 8))(v39, v38);
    sub_1B49DDD2C(v36, v35);
  }
}

uint64_t WorkoutMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB18, &qword_1B4D37B30);
  v86 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v88 = &v71 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB20, &qword_1B4D37B38);
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v71 - v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB28, &qword_1B4D37B40);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v95 = &v71 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB30, &qword_1B4D37B48);
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v94 = &v71 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB38, &qword_1B4D37B50);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v92 = &v71 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB40, &unk_1B4D37B58);
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v11 = &v71 - v10;
  v90 = type metadata accessor for WorkoutMetadata(0);
  MEMORY[0x1EEE9AC00](v90);
  v76 = (&v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v71 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v71 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v71 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v71 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  v28 = a1[3];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1B4BADB1C();
  v29 = v102;
  sub_1B4D18EEC();
  if (v29)
  {
    goto LABEL_9;
  }

  v72 = v18;
  v75 = v21;
  v73 = v24;
  v74 = v15;
  v31 = v92;
  v30 = v93;
  v33 = v94;
  v32 = v95;
  v102 = v27;
  v34 = sub_1B4D18C2C();
  v35 = (2 * *(v34 + 16)) | 1;
  v98 = v34;
  v99 = v34 + 32;
  v100 = 0;
  v101 = v35;
  v36 = sub_1B49C8ABC();
  v37 = v30;
  if (v36 == 5 || v100 != v101 >> 1)
  {
    v42 = sub_1B4D189BC();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820);
    *v44 = v90;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v91 + 8))(v11, v37);
    swift_unknownObjectRelease();
LABEL_9:
    v45 = v96;
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  if (v36 <= 1u)
  {
    v47 = v89;
    if (v36)
    {
      LOBYTE(v97) = 1;
      sub_1B4BADCD0();
      v58 = v33;
      sub_1B4D18B4C();
      v48 = v47;
      sub_1B4D1777C();
      sub_1B49B1198(&qword_1EB8A6FB8, MEMORY[0x1E6969558]);
      v59 = v75;
      v60 = v79;
      sub_1B4D18C0C();
      (*(v80 + 8))(v58, v60);
      (*(v91 + 8))(v11, v37);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v51 = v59;
    }

    else
    {
      LOBYTE(v97) = 0;
      sub_1B4BADD24();
      sub_1B4D18B4C();
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
      sub_1B49B0578(&qword_1EB8ABB50, &qword_1EB8ABB08, &qword_1B4D37B28, &protocol conformance descriptor for CodableBridging<A>);
      v49 = v78;
      sub_1B4D18C0C();
      (*(v77 + 8))(v31, v49);
      (*(v91 + 8))(v11, v37);
      swift_unknownObjectRelease();
      v50 = v73;
      *v73 = v97;
      swift_storeEnumTagMultiPayload();
      v51 = v50;
    }

    v68 = v102;
    sub_1B4BADD78(v51, v102);
    v69 = v96;
    v70 = v48;
  }

  else
  {
    if (v36 == 2)
    {
      LOBYTE(v97) = 2;
      sub_1B4BADC7C();
      v52 = v30;
      sub_1B4D18B4C();
      v53 = v82;
      v54 = sub_1B4D18BBC();
      v55 = v91;
      v61 = v54;
      v63 = v62;
      (*(v81 + 8))(v32, v53);
      (*(v55 + 8))(v11, v52);
      swift_unknownObjectRelease();
      v64 = v72;
      *v72 = v61;
      v64[1] = v63;
      swift_storeEnumTagMultiPayload();
      v66 = v64;
    }

    else if (v36 == 3)
    {
      LOBYTE(v97) = 3;
      sub_1B4BADC28();
      v38 = v87;
      v39 = v30;
      sub_1B4D18B4C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAE0, &qword_1B4D37B20);
      sub_1B49B0578(&qword_1EB8ABB48, &qword_1EB8ABAE0, &qword_1B4D37B20, &protocol conformance descriptor for CodableBridging<A>);
      v40 = v84;
      sub_1B4D18C0C();
      v41 = v91;
      (*(v85 + 8))(v38, v40);
      (*(v41 + 8))(v11, v39);
      swift_unknownObjectRelease();
      v65 = v74;
      *v74 = v97;
      swift_storeEnumTagMultiPayload();
      v66 = v65;
    }

    else
    {
      LOBYTE(v97) = 4;
      sub_1B4BADBD4();
      v56 = v88;
      sub_1B4D18B4C();
      sub_1B49DDFEC();
      v57 = v83;
      sub_1B4D18C0C();
      (*(v86 + 8))(v56, v57);
      (*(v91 + 8))(v11, v30);
      swift_unknownObjectRelease();
      v67 = v76;
      *v76 = v97;
      swift_storeEnumTagMultiPayload();
      v66 = v67;
    }

    v68 = v102;
    sub_1B4BADD78(v66, v102);
    v69 = v96;
    v70 = v89;
  }

  sub_1B4BADD78(v68, v70);
  v45 = v69;
  return __swift_destroy_boxed_opaque_existential_1Tm(v45);
}

_BYTE *sub_1B4BAD4F8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B4BAEE8C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B4BAEF44(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B4BAEFC0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t _s19FitnessIntelligence15WorkoutMetadataO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = sub_1B4D1777C();
  v56 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutMetadata(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v55 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v55 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v55 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABBE8, &qword_1B4D382C8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v55 - v21;
  v24 = (&v55 + *(v23 + 56) - v21);
  sub_1B4BADB70(v57, &v55 - v21);
  sub_1B4BADB70(v58, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v41 = v56;
    if (!EnumCaseMultiPayload)
    {
      sub_1B4BADB70(v22, v19);
      v26 = *v19;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_5;
      }

LABEL_12:

      goto LABEL_30;
    }

    sub_1B4BADB70(v22, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v41 + 8))(v16, v2);
      goto LABEL_30;
    }

    v51 = v41;
    (*(v41 + 32))(v4, v24, v2);
    v50 = sub_1B4D1774C();
    v52 = *(v51 + 8);
    v52(v4, v2);
    v52(v16, v2);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B4BADB70(v22, v13);
      v43 = *v13;
      v42 = v13[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v43 == *v24 && v42 == v24[1])
        {
        }

        else
        {
          v45 = sub_1B4D18DCC();

          if ((v45 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_34;
      }

LABEL_30:
      sub_1B4975024(v22, &qword_1EB8ABBE8, &qword_1B4D382C8);
LABEL_31:
      v50 = 0;
      return v50 & 1;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1B4BADB70(v22, v10);
      v26 = *v10;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_5:
        v27 = *v24;
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28 && (v29 = v28, objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) != 0))
        {
          v31 = v30;
          v32 = v26;
          v33 = v27;
          [v29 coordinate];
          v35 = v34;
          [v31 coordinate];
          if (v35 != v36)
          {

LABEL_36:
            sub_1B4BAF32C(v22);
            goto LABEL_31;
          }

          [v29 coordinate];
          v38 = v37;
          [v31 coordinate];
          v40 = v39;

          if (v38 != v40)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
          v53 = sub_1B4D187AC();

          if ((v53 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

LABEL_34:
        sub_1B4BAF32C(v22);
        v50 = 1;
        return v50 & 1;
      }

      goto LABEL_12;
    }

    sub_1B4BADB70(v22, v7);
    v46 = *v7;
    v47 = v7[1];
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_1B49DDD2C(v46, v47);
      goto LABEL_30;
    }

    v48 = *v24;
    v49 = v24[1];
    v50 = sub_1B4BDD628(v46, v47, v48, v49);
    sub_1B49DDD2C(v48, v49);
    sub_1B49DDD2C(v46, v47);
  }

  sub_1B4BAF32C(v22);
  return v50 & 1;
}

uint64_t type metadata accessor for WorkoutMetadata(uint64_t a1)
{
  result = qword_1EDC37348;
  if (!qword_1EDC37348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4BADB1C()
{
  result = qword_1EB8ABAC8;
  if (!qword_1EB8ABAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAC8);
  }

  return result;
}

uint64_t sub_1B4BADB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BADBD4()
{
  result = qword_1EB8ABAD0;
  if (!qword_1EB8ABAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAD0);
  }

  return result;
}

unint64_t sub_1B4BADC28()
{
  result = qword_1EB8ABAD8;
  if (!qword_1EB8ABAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAD8);
  }

  return result;
}

unint64_t sub_1B4BADC7C()
{
  result = qword_1EB8ABAF0;
  if (!qword_1EB8ABAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAF0);
  }

  return result;
}

unint64_t sub_1B4BADCD0()
{
  result = qword_1EB8ABAF8;
  if (!qword_1EB8ABAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAF8);
  }

  return result;
}

unint64_t sub_1B4BADD24()
{
  result = qword_1EB8ABB00;
  if (!qword_1EB8ABB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB00);
  }

  return result;
}

uint64_t sub_1B4BADD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4BADDDC(uint64_t a1)
{
  sub_1B4BADEA4(319, &qword_1EDC37448, &qword_1EDC36E00, 0x1E696C348);
  if (v1 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      sub_1B4BADEA4(319, &qword_1EDC37430, &qword_1EDC36DB0, 0x1E696AD98);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B4BADEA4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    v6 = sub_1B498AFB8(255, a3, a4);
    v9 = type metadata accessor for CodableBridging(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B4BADF60()
{
  result = qword_1EB8ABB58;
  if (!qword_1EB8ABB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB58);
  }

  return result;
}

unint64_t sub_1B4BADFB8()
{
  result = qword_1EB8ABB60;
  if (!qword_1EB8ABB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB60);
  }

  return result;
}

unint64_t sub_1B4BAE010()
{
  result = qword_1EB8ABB68;
  if (!qword_1EB8ABB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB68);
  }

  return result;
}

unint64_t sub_1B4BAE068()
{
  result = qword_1EB8ABB70;
  if (!qword_1EB8ABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB70);
  }

  return result;
}

unint64_t sub_1B4BAE0C0()
{
  result = qword_1EB8ABB78;
  if (!qword_1EB8ABB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB78);
  }

  return result;
}

unint64_t sub_1B4BAE118()
{
  result = qword_1EB8ABB80;
  if (!qword_1EB8ABB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB80);
  }

  return result;
}

unint64_t sub_1B4BAE170()
{
  result = qword_1EB8ABB88;
  if (!qword_1EB8ABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB88);
  }

  return result;
}

unint64_t sub_1B4BAE1C8()
{
  result = qword_1EB8ABB90;
  if (!qword_1EB8ABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB90);
  }

  return result;
}

unint64_t sub_1B4BAE220()
{
  result = qword_1EB8ABB98;
  if (!qword_1EB8ABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB98);
  }

  return result;
}

unint64_t sub_1B4BAE278()
{
  result = qword_1EB8ABBA0;
  if (!qword_1EB8ABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBA0);
  }

  return result;
}

unint64_t sub_1B4BAE2D0()
{
  result = qword_1EB8ABBA8;
  if (!qword_1EB8ABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBA8);
  }

  return result;
}

unint64_t sub_1B4BAE328()
{
  result = qword_1EB8ABBB0;
  if (!qword_1EB8ABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBB0);
  }

  return result;
}

unint64_t sub_1B4BAE380()
{
  result = qword_1EB8ABBB8;
  if (!qword_1EB8ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBB8);
  }

  return result;
}

unint64_t sub_1B4BAE3D8()
{
  result = qword_1EB8ABBC0;
  if (!qword_1EB8ABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBC0);
  }

  return result;
}

unint64_t sub_1B4BAE430()
{
  result = qword_1EB8ABBC8;
  if (!qword_1EB8ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBC8);
  }

  return result;
}

unint64_t sub_1B4BAE488()
{
  result = qword_1EB8ABBD0;
  if (!qword_1EB8ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBD0);
  }

  return result;
}

unint64_t sub_1B4BAE4E0()
{
  result = qword_1EB8ABBD8;
  if (!qword_1EB8ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBD8);
  }

  return result;
}

unint64_t sub_1B4BAE538()
{
  result = qword_1EB8ABBE0;
  if (!qword_1EB8ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBE0);
  }

  return result;
}

void *sub_1B4BAE58C(uint64_t a1)
{
  v92 = sub_1B4D1777C();
  v2 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutMetadata(0);
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v97 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
  MEMORY[0x1EEE9AC00](v94);
  v7 = (&v87 - v6);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v89 = (v2 + 16);
  v90 = (v2 + 32);
  v88 = (v2 + 8);

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC8];
  v93 = v7;
  while (v11)
  {
LABEL_11:
    v17 = __clz(__rbit64(v11)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v94 + 48);
    sub_1B4BADB70(*(a1 + 56) + *(v95 + 72) * v17, v7 + v21);
    *v7 = v19;
    v7[1] = v20;
    sub_1B4BADB70(v7 + v21, v97);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v41 = *v97;
        v42 = v97[1];
        v101 = MEMORY[0x1E69E6158];
        *&v100 = v41;
        *(&v100 + 1) = v42;
        sub_1B498B060(&v100, v99);
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = v14;
        v25 = sub_1B49E9EC4(v19, v20);
        v45 = v14[2];
        v46 = (v44 & 1) == 0;
        v29 = __OFADD__(v45, v46);
        v47 = v45 + v46;
        if (v29)
        {
          goto LABEL_68;
        }

        v48 = v44;
        if (v14[3] >= v47)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v82 = v25;
            sub_1B498A620();
            v25 = v82;
          }
        }

        else
        {
          sub_1B4987B48(v47, isUniquelyReferenced_nonNull_native);
          v25 = sub_1B49E9EC4(v19, v20);
          if ((v48 & 1) != (v49 & 1))
          {
            goto LABEL_77;
          }
        }

        v7 = v93;
        v14 = v98;
        if (v48)
        {
          goto LABEL_4;
        }

        v98[(v25 >> 6) + 8] |= 1 << v25;
        v69 = (v14[6] + 16 * v25);
        *v69 = v19;
        v69[1] = v20;
        sub_1B498B060(v99, (v14[7] + 32 * v25));
        v70 = v14[2];
        v29 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (v29)
        {
          goto LABEL_76;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v23 = *v97;
        v101 = sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
        *&v100 = v23;
        sub_1B498B060(&v100, v99);
        swift_bridgeObjectRetain_n();
        v24 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v14;
        v25 = sub_1B49E9EC4(v19, v20);
        v27 = v14[2];
        v28 = (v26 & 1) == 0;
        v29 = __OFADD__(v27, v28);
        v30 = v27 + v28;
        if (v29)
        {
          goto LABEL_67;
        }

        v31 = v26;
        if (v14[3] >= v30)
        {
          if ((v24 & 1) == 0)
          {
            v83 = v25;
            sub_1B498A620();
            v25 = v83;
          }
        }

        else
        {
          sub_1B4987B48(v30, v24);
          v25 = sub_1B49E9EC4(v19, v20);
          if ((v31 & 1) != (v32 & 1))
          {
            goto LABEL_77;
          }
        }

        v7 = v93;
        v14 = v98;
        if (v31)
        {
LABEL_4:
          v15 = (v14[7] + 32 * v25);
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
          sub_1B498B060(v99, v15);

          goto LABEL_5;
        }

        v98[(v25 >> 6) + 8] |= 1 << v25;
        v72 = (v14[6] + 16 * v25);
        *v72 = v19;
        v72[1] = v20;
        sub_1B498B060(v99, (v14[7] + 32 * v25));
        v73 = v14[2];
        v29 = __OFADD__(v73, 1);
        v71 = v73 + 1;
        if (v29)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v101 = MEMORY[0x1E6969080];
        v100 = *v97;
        sub_1B498B060(&v100, v99);
        swift_bridgeObjectRetain_n();
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v98 = v14;
        v25 = sub_1B49E9EC4(v19, v20);
        v52 = v14[2];
        v53 = (v51 & 1) == 0;
        v29 = __OFADD__(v52, v53);
        v54 = v52 + v53;
        if (v29)
        {
          goto LABEL_71;
        }

        v55 = v51;
        if (v14[3] >= v54)
        {
          if ((v50 & 1) == 0)
          {
            v84 = v25;
            sub_1B498A620();
            v25 = v84;
          }
        }

        else
        {
          sub_1B4987B48(v54, v50);
          v25 = sub_1B49E9EC4(v19, v20);
          if ((v55 & 1) != (v56 & 1))
          {
            goto LABEL_77;
          }
        }

        v7 = v93;
        v14 = v98;
        if (v55)
        {
          goto LABEL_4;
        }

        v98[(v25 >> 6) + 8] |= 1 << v25;
        v74 = (v14[6] + 16 * v25);
        *v74 = v19;
        v74[1] = v20;
        sub_1B498B060(v99, (v14[7] + 32 * v25));
        v75 = v14[2];
        v29 = __OFADD__(v75, 1);
        v71 = v75 + 1;
        if (v29)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_57;
    }

    if (!EnumCaseMultiPayload)
    {
      v33 = *v97;
      v101 = sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
      *&v100 = v33;
      sub_1B498B060(&v100, v99);
      swift_bridgeObjectRetain_n();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v14;
      v25 = sub_1B49E9EC4(v19, v20);
      v36 = v14[2];
      v37 = (v35 & 1) == 0;
      v29 = __OFADD__(v36, v37);
      v38 = v36 + v37;
      if (v29)
      {
        goto LABEL_69;
      }

      v39 = v35;
      if (v14[3] >= v38)
      {
        if ((v34 & 1) == 0)
        {
          v85 = v25;
          sub_1B498A620();
          v25 = v85;
        }
      }

      else
      {
        sub_1B4987B48(v38, v34);
        v25 = sub_1B49E9EC4(v19, v20);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_77;
        }
      }

      v7 = v93;
      v14 = v98;
      if (v39)
      {
        goto LABEL_4;
      }

      v98[(v25 >> 6) + 8] |= 1 << v25;
      v76 = (v14[6] + 16 * v25);
      *v76 = v19;
      v76[1] = v20;
      sub_1B498B060(v99, (v14[7] + 32 * v25));
      v77 = v14[2];
      v29 = __OFADD__(v77, 1);
      v71 = v77 + 1;
      if (v29)
      {
        goto LABEL_74;
      }

LABEL_57:
      v14[2] = v71;
      goto LABEL_5;
    }

    v87 = a1;
    v57 = v91;
    v58 = v92;
    (*v90)(v91, v97, v92);
    v101 = v58;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v100);
    (*v89)(boxed_opaque_existential_1, v57, v58);
    sub_1B498B060(&v100, v99);
    swift_bridgeObjectRetain_n();
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v14;
    v62 = sub_1B49E9EC4(v19, v20);
    v63 = v14[2];
    v64 = (v61 & 1) == 0;
    v65 = v63 + v64;
    if (__OFADD__(v63, v64))
    {
      goto LABEL_70;
    }

    v66 = v61;
    if (v14[3] >= v65)
    {
      if ((v60 & 1) == 0)
      {
        sub_1B498A620();
      }
    }

    else
    {
      sub_1B4987B48(v65, v60);
      v67 = sub_1B49E9EC4(v19, v20);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_77;
      }

      v62 = v67;
    }

    v7 = v93;
    v14 = v98;
    if (v66)
    {
      v78 = (v98[7] + 32 * v62);
      __swift_destroy_boxed_opaque_existential_1Tm(v78);
      sub_1B498B060(v99, v78);
    }

    else
    {
      v98[(v62 >> 6) + 8] |= 1 << v62;
      v79 = (v14[6] + 16 * v62);
      *v79 = v19;
      v79[1] = v20;
      sub_1B498B060(v99, (v14[7] + 32 * v62));
      v80 = v14[2];
      v29 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v29)
      {
        goto LABEL_73;
      }

      v14[2] = v81;
    }

    (*v88)(v91, v92);
    a1 = v87;
LABEL_5:
    v11 &= v11 - 1;
    sub_1B4975024(v7, &qword_1EB8A81B0, &qword_1B4D382C0);
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v14;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4BAEE8C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1B4BAEF44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B4D1753C();
  swift_allocObject();
  result = sub_1B4D174FC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B4D1769C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B4BAEFC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B4D1753C();
  swift_allocObject();
  result = sub_1B4D174FC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

void sub_1B4BAF044(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v16[4] = MEMORY[0x1E69E7CC8];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1B4955D64(*(a1 + 56) + 32 * v11, v16);
    v15[0] = v13;
    v15[1] = v14;

    sub_1B4BAB458(v13, v14, v16);
    sub_1B4975024(v15, &qword_1EB8ABBF0, &qword_1B4D382D0);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B4BAF184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1B4BAF32C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RingsBestMeasurementEntry.init(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalizedDate(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v32 = a3;
  *a3 = v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4BAF764(a1 + *(v19 + 28), v10);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    *v14 = 0;
    *(v14 + 1) = 0;
    *(v14 + 4) = 0;
    sub_1B4D17BBC();
    v21 = &v14[*(v11 + 40)];
    *v21 = 0;
    *(v21 + 1) = 0;
    if (v20(v10, 1, v11) != 1)
    {
      sub_1B4BAF7D4(v10);
    }
  }

  else
  {
    sub_1B4BAF89C(v10, v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  v22 = *(v14 + 1);
  *&v23 = *v14;
  *(&v23 + 1) = HIDWORD(*v14);
  v24 = v23;
  *&v23 = v22;
  *(&v23 + 1) = SHIDWORD(v22);
  *v17 = v24;
  *(v17 + 1) = v23;
  *(v17 + 4) = *(v14 + 4);
  if (*&v14[*(v11 + 40) + 8])
  {

    sub_1B4D1797C();

    sub_1B4BAF83C(v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  else
  {
    sub_1B4BAF83C(v14, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    v25 = sub_1B4D179BC();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  }

  sub_1B4995980(v7, &v17[*(v15 + 36)]);
  v28 = type metadata accessor for RingsBestMeasurementEntry(0, v33, v26, v27);
  sub_1B4BAF89C(v17, v32 + *(v28 + 28), type metadata accessor for LocalizedDate);
  v29 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  return sub_1B4BAF83C(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
}

uint64_t sub_1B4BAF764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BAF7D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BAF83C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BAF89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RingsBestMeasurementEntry.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4BAFD38(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BAF9BC(double *a1, double *a2, uint64_t a3)
{
  v6 = sub_1B4D1746C();
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = a2;
  *a1 = *a2;
  v24 = a2 + *(type metadata accessor for RingsBestMeasurementEntry(0, a3, v13, v14) + 28);
  sub_1B4BAFD38(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocalizedDate);
  v15 = v22;
  sub_1B4D17DAC();
  v22 = v15;
  v16 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4BAF7D4(a1 + v16);
  sub_1B4BAF89C(v12, a1 + v16, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v10 + 56))(a1 + v16, 0, 1, v9);
  v17 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v19 = v18;
  result = (*(v23 + 8))(v8, v6);
  *(a1 + 1) = v19;
  return result;
}

uint64_t sub_1B4BAFD38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t CountPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BAFDBC(a1);
  *a2 = v3;
  return result;
}

uint64_t sub_1B4BAFDBC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CountPropertyValue.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  sub_1B4BAFF1C(qword_1EDC3C3C0, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BAFF1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BAFF60()
{
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  sub_1B4BAFF1C(qword_1EDC3C3C0, &protocol conformance descriptor for Apple_Fitness_Intelligence_CountPropertyValue);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BAFFF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BAFDBC(a1);
  *a2 = v3;
  return result;
}

uint64_t AverageWorkoutDurationFact.TemplateString.init(rawValue:)@<X0>(char *a3@<X8>)
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

unint64_t AverageWorkoutDurationFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    return 0xD00000000000005ALL;
  }

  else
  {
    return 0xD0000000000000ACLL;
  }
}

uint64_t sub_1B4BB00DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000005ALL;
  }

  else
  {
    v3 = 0xD0000000000000ACLL;
  }

  if (v2)
  {
    v4 = ", not including today.";
  }

  else
  {
    v4 = "age_duration> for the month.";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000005ALL;
  }

  else
  {
    v6 = 0xD0000000000000ACLL;
  }

  if (*a2)
  {
    v7 = "age_duration> for the month.";
  }

  else
  {
    v7 = ", not including today.";
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

uint64_t sub_1B4BB0188()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB0208(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BB0274(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB02F0@<X0>(char *a2@<X8>)
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

void sub_1B4BB0350(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000005ALL;
  }

  else
  {
    v2 = 0xD0000000000000ACLL;
  }

  if (*v1)
  {
    v3 = "age_duration> for the month.";
  }

  else
  {
    v3 = ", not including today.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id AverageWorkoutDurationFact.placeholders()()
{
  v1 = type metadata accessor for AverageWorkoutDurationFact(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  [*v0 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v6 = result;
    v7 = sub_1B4D1818C();
    v9 = v8;

    strcpy((v4 + 32), "activity_type");
    *(v4 + 46) = -4864;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v4 + 48) = sub_1B4993DFC;
    *(v4 + 56) = v10;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    sub_1B4B0111C(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = swift_allocObject();
    sub_1B4BB0B8C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    *(v4 + 80) = 0xD00000000000001ALL;
    *(v4 + 88) = 0x80000001B4D628B0;
    *(v4 + 96) = sub_1B4BB0BF0;
    *(v4 + 104) = v12;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    sub_1B4B0111C(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = swift_allocObject();
    sub_1B4BB0B8C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
    *(v4 + 128) = 0xD00000000000001ALL;
    *(v4 + 136) = 0x80000001B4D628D0;
    *(v4 + 144) = sub_1B4BB0D28;
    *(v4 + 152) = v13;
    *(v4 + 160) = 0;
    *(v4 + 168) = 0;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BB05DC(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for AverageWorkoutDurationFact(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  sub_1B4D18F8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v5 = sub_1B4BCA7BC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v6 = sub_1B4D15F5C(a2 + v3, v5);

  return v6;
}

uint64_t sub_1B4BB0738(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for AverageWorkoutDurationFact(0) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  sub_1B4D18F8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v5 = sub_1B4BCA7BC(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v6 = sub_1B4D15F5C(a2 + v3, v5);

  return v6;
}

int *AverageWorkoutDurationFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  result = type metadata accessor for AverageWorkoutDurationFact(0);
  v9 = 1;
  if (*(v1 + result[8]) == 1)
  {
    sub_1B4BB0DC4();
    sub_1B4D173EC();
    sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968088]);
    v8 = sub_1B4D1810C();
    result = (*(v4 + 8))(v6, v3);
    if (v8)
    {
      v9 = 0;
    }
  }

  *a1 = v9;
  return result;
}

void sub_1B4BB0A14(uint64_t a1@<X1>, BOOL *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v10 = 1;
  if (*(v2 + *(a1 + 32)) == 1)
  {
    sub_1B4BB0DC4();
    sub_1B4D173EC();
    sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968088]);
    v9 = sub_1B4D1810C();
    (*(v6 + 8))(v8, v5);
    if (v9)
    {
      v10 = 0;
    }
  }

  *a2 = v10;
}

uint64_t sub_1B4BB0B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutDurationFact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = (type metadata accessor for AverageWorkoutDurationFact(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4BB0D40(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AverageWorkoutDurationFact(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1B4BB0DC4()
{
  result = qword_1EDC378C0;
  if (!qword_1EDC378C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC378C0);
  }

  return result;
}

unint64_t sub_1B4BB0E14()
{
  result = qword_1EB8ABBF8;
  if (!qword_1EB8ABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBF8);
  }

  return result;
}

unint64_t sub_1B4BB0EB0()
{
  result = qword_1EB8ABC10;
  if (!qword_1EB8ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC10);
  }

  return result;
}

unint64_t sub_1B4BB0F08()
{
  result = qword_1EB8ABC18;
  if (!qword_1EB8ABC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC18);
  }

  return result;
}

unint64_t sub_1B4BB0F5C(uint64_t a1)
{
  result = sub_1B4BB0F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BB0F84()
{
  result = qword_1EB8ABC20;
  if (!qword_1EB8ABC20)
  {
    type metadata accessor for AverageWorkoutDurationFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC20);
  }

  return result;
}

uint64_t FitnessContextQueryDescriptor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v112 = &v93 - v4;
  v111 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v115 = (&v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1B4D174EC();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v107 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4D1777C();
  v9 = *(v8 - 8);
  v116 = v8;
  v117 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v93 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v93 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v103 = &v93 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v102 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v93 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v100 = &v93 - v32;
  v97 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v93 - v35;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v94 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v41 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v93 - v43;
  v45 = a1;
  v46 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  swift_beginAccess();
  if (*(v46 + 24) != 1)
  {
    sub_1B4BB3804();
    swift_allocError();
    swift_willThrow();
    return sub_1B4BB3A38(v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  v93 = v45;
  v47 = *(v46 + 16);
  if (v47 > 4)
  {
    if (v47 <= 6)
    {
      if (v47 == 5)
      {
        swift_beginAccess();
        v57 = v102;
        sub_1B4D176CC();
        swift_beginAccess();
        v58 = v103;
        sub_1B4D176CC();
        v60 = v116;
        v59 = v117;
        v61 = *(v117 + 16);
        v61(v104, v57, v116);
        v61(v106, v58, v60);
        v62 = v107;
        sub_1B4D174CC();
        v63 = *(v59 + 8);
        v63(v58, v60);
        v63(v57, v60);
        sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
        (*(v108 + 32))(v119, v62, v110);
      }

      else
      {
        swift_beginAccess();
        v85 = v99;
        sub_1B4D176CC();
        sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
        (*(v117 + 32))(v119, v85, v116);
      }
    }

    else if (v47 == 7)
    {
      swift_beginAccess();
      v64 = v101;
      sub_1B4D176CC();
      sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v117 + 32))(v119, v64, v116);
    }

    else if (v47 == 8)
    {
      swift_beginAccess();
      v49 = v105;
      sub_1B4D176CC();
      sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v117 + 32))(v119, v49, v116);
    }

    else
    {
      v66 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
      swift_beginAccess();
      v67 = v112;
      sub_1B4974FBC(v46 + v66, v112, &qword_1EB8ABC28, &qword_1B4D38428);
      v68 = *(v109 + 48);
      v69 = v111;
      if (v68(v67, 1, v111) == 1)
      {
        v70 = v115;
        *v115 = 0u;
        v70[1] = 0u;
        sub_1B4D17BBC();
        v71 = v68(v67, 1, v69);
        v72 = v93;
        if (v71 != 1)
        {
          sub_1B4975024(v67, &qword_1EB8ABC28, &qword_1B4D38428);
        }
      }

      else
      {
        v70 = v115;
        sub_1B4BB3988(v67, v115, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
        v72 = v93;
      }

      v86 = v114;
      sub_1B4D176CC();
      v87 = v113;
      v88 = *(v70 + 2);
      *(v86 + *(v113 + 20)) = *(v70 + 1);
      *(v86 + *(v87 + 24)) = v88;
      sub_1B499221C();
      v89 = [swift_getObjCClassFromMetadata() baseUnit];
      sub_1B4D1741C();
      sub_1B4BB3A38(v70, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      sub_1B4BB3A38(v72, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      sub_1B4BB3988(v86, v119, type metadata accessor for LocationCoordinate);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v47 > 1)
  {
    if (v47 == 2)
    {
      swift_beginAccess();
      sub_1B4D176CC();
      sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v117 + 32))(v119, v30, v116);
    }

    else if (v47 == 3)
    {
      swift_beginAccess();
      sub_1B4D176CC();
      sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v117 + 32))(v119, v27, v116);
    }

    else
    {
      swift_beginAccess();
      v65 = v95;
      sub_1B4D176CC();
      sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v117 + 32))(v119, v65, v116);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v47)
  {
    v73 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
    swift_beginAccess();
    v74 = v100;
    sub_1B4974FBC(v46 + v73, v100, &qword_1EB8A6680, &unk_1B4D2FD90);
    v75 = *(v96 + 48);
    v76 = v97;
    if (v75(v74, 1, v97) == 1)
    {
      v77 = MEMORY[0x1E69E7CC0];
      v78 = v98;
      *v98 = MEMORY[0x1E69E7CC0];
      *(v78 + 1) = v77;
      sub_1B4D17BBC();
      v79 = *(v76 + 28);
      v80 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v80 - 8) + 56))(&v78[v79], 1, 1, v80);
      v81 = *(v76 + 32);
      v82 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
      (*(*(v82 - 8) + 56))(&v78[v81], 1, 1, v82);
      v83 = v75(v74, 1, v76);
      v84 = v93;
      if (v83 != 1)
      {
        sub_1B4975024(v74, &qword_1EB8A6680, &unk_1B4D2FD90);
      }
    }

    else
    {
      v78 = v98;
      sub_1B4BB3988(v74, v98, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v84 = v93;
    }

    v92 = v120;
    RingsPropertiesQuery.init(_:)(v78, v41);
    result = sub_1B4BB3A38(v84, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    if (!v92)
    {
      swift_storeEnumTagMultiPayload();
      v91 = v41;
      return sub_1B4BB3988(v91, v119, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  else
  {
    v50 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
    swift_beginAccess();
    sub_1B4974FBC(v46 + v50, v36, &qword_1EB8A6668, &qword_1B4D1A658);
    v51 = *(v94 + 48);
    if (v51(v36, 1, v37) == 1)
    {
      v52 = MEMORY[0x1E69E7CC0];
      *v39 = MEMORY[0x1E69E7CC0];
      *(v39 + 1) = v52;
      sub_1B4D17BBC();
      v53 = *(v37 + 28);
      v54 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v54 - 8) + 56))(&v39[v53], 1, 1, v54);
      v55 = *(v37 + 32);
      v56 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
      (*(*(v56 - 8) + 56))(&v39[v55], 1, 1, v56);
      if (v51(v36, 1, v37) != 1)
      {
        sub_1B4975024(v36, &qword_1EB8A6668, &qword_1B4D1A658);
      }
    }

    else
    {
      sub_1B4BB3988(v36, v39, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    }

    v90 = v120;
    WorkoutPropertiesQuery.init(_:)(v39, v44);
    result = sub_1B4BB3A38(v93, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    if (!v90)
    {
      swift_storeEnumTagMultiPayload();
      v91 = v44;
      return sub_1B4BB3988(v91, v119, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  return result;
}

uint64_t FitnessContextQueryDescriptor.protobuf()(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  sub_1B4BB39F0(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BB2190(uint64_t a1, uint64_t a2)
{
  v159 = a2;
  v160 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v151 = &v137 - v3;
  v143 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v149 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v150 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B4D174EC();
  v153 = *(v7 - 8);
  v154 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v155 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B4D1777C();
  v156 = *(v9 - 8);
  v157 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v147 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v137 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v145 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v137 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v137 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v144 = &v137 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v137 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v137 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v140 = &v137 - v29;
  v141 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v139 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v152 = &v137 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v138 = &v137 - v35;
  v36 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v137 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v44 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49EEFF0(v159, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v54 = v160;
      v55 = v156;
      v56 = v157;
      if (EnumCaseMultiPayload == 5)
      {
        (*(v153 + 32))(v155, v44, v154);
        v75 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77 = *(v54 + v75);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          swift_allocObject();
          v77 = sub_1B4C24944(v77);
          *(v54 + v75) = v77;
        }

        swift_beginAccess();
        *(v77 + 16) = 5;
        *(v77 + 24) = 1;
        sub_1B4D174DC();
        sub_1B4D176DC();
        v79 = v78;
        v80 = *(v55 + 8);
        v80(v19, v56);
        v81 = swift_isUniquelyReferenced_nonNull_native();
        v82 = *(v54 + v75);
        if ((v81 & 1) == 0)
        {
          type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          swift_allocObject();
          v82 = sub_1B4C24944(v82);
          *(v54 + v75) = v82;
        }

        v83 = v82 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
        swift_beginAccess();
        *v83 = v79;
        *(v83 + 8) = 0;
        v84 = v148;
        v85 = v155;
        sub_1B4D174BC();
        sub_1B4D176DC();
        v53 = v86;
        v80(v84, v56);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          (*(v153 + 8))(v85, v154);
          v87 = *(v54 + v75);
        }

        else
        {
          type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          swift_allocObject();

          v135 = sub_1B4C24944(v134);
          v136 = v85;
          v87 = v135;
          (*(v153 + 8))(v136, v154);

          *(v54 + v75) = v87;
        }

        v131 = v87 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
        goto LABEL_66;
      }

      v57 = v145;
      (*(v156 + 32))(v145, v44, v157);
      v58 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(v54 + v58);
      if ((v126 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
        swift_allocObject();
        v60 = sub_1B4C24944(v60);
        *(v54 + v58) = v60;
      }

      swift_beginAccess();
      v61 = 6;
    }

    else
    {
      v54 = v160;
      v55 = v156;
      v56 = v157;
      if (EnumCaseMultiPayload == 7)
      {
        v57 = v146;
        (*(v156 + 32))(v146, v44, v157);
        v58 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v54 + v58);
        if ((v94 & 1) == 0)
        {
          type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          swift_allocObject();
          v60 = sub_1B4C24944(v60);
          *(v54 + v58) = v60;
        }

        swift_beginAccess();
        v61 = 7;
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          v102 = v150;
          sub_1B4BB3988(v44, v150, type metadata accessor for LocationCoordinate);
          v103 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
          v104 = swift_isUniquelyReferenced_nonNull_native();
          v105 = *(v54 + v103);
          if ((v104 & 1) == 0)
          {
            type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
            swift_allocObject();
            v105 = sub_1B4C24944(v105);
            *(v54 + v103) = v105;
          }

          v106 = v143;
          v107 = v142;
          v108 = swift_beginAccess();
          *(v105 + 16) = 9;
          *(v105 + 24) = 1;
          MEMORY[0x1EEE9AC00](v108);
          *(&v137 - 2) = v102;
          sub_1B4BB39F0(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
          sub_1B4D17DAC();
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v110 = *(v54 + v103);
          if ((v109 & 1) == 0)
          {
            type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
            swift_allocObject();
            v110 = sub_1B4C24944(v110);
            *(v54 + v103) = v110;
          }

          v111 = v151;
          sub_1B4BB3988(v107, v151, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
          (*(v149 + 56))(v111, 0, 1, v106);
          v112 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
          swift_beginAccess();
          sub_1B49A205C(v111, v110 + v112, &qword_1EB8ABC28, &qword_1B4D38428);
          swift_endAccess();
          v113 = type metadata accessor for LocationCoordinate;
          goto LABEL_54;
        }

        v57 = v147;
        (*(v156 + 32))(v147, v44, v157);
        v58 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v60 = *(v54 + v58);
        if ((v59 & 1) == 0)
        {
          type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          swift_allocObject();
          v60 = sub_1B4C24944(v60);
          *(v54 + v58) = v60;
        }

        swift_beginAccess();
        v61 = 8;
      }
    }

    *(v60 + 16) = v61;
    *(v60 + 24) = 1;
    sub_1B4D176DC();
    v53 = v127;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v55 + 8))(v57, v56);
      v93 = *(v54 + v58);
    }

    else
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();

      v93 = sub_1B4C24944(v128);
      (*(v55 + 8))(v57, v56);

      *(v54 + v58) = v93;
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B4BB3988(v44, v41, type metadata accessor for WorkoutPropertiesQuery);
      v62 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
      v63 = v160;
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v63 + v62);
      v66 = v158;
      if ((v64 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
        swift_allocObject();
        v65 = sub_1B4C24944(v65);
        *(v63 + v62) = v65;
      }

      v67 = swift_beginAccess();
      *(v65 + 16) = 0;
      *(v65 + 24) = 1;
      MEMORY[0x1EEE9AC00](v67);
      *(&v137 - 2) = v41;
      sub_1B4BB39F0(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4D17DAC();
      if (!v66)
      {
        v68 = v160;
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v70 = *(v68 + v62);
        if ((v69 & 1) == 0)
        {
          type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          swift_allocObject();
          v70 = sub_1B4C24944(v70);
          *(v68 + v62) = v70;
        }

        v71 = v138;
        sub_1B4BB3988(v38, v138, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
        (*(v137 + 56))(v71, 0, 1, v36);
        v72 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
        swift_beginAccess();
        sub_1B49A205C(v71, v70 + v72, &qword_1EB8A6668, &qword_1B4D1A658);
        swift_endAccess();
      }

      v73 = type metadata accessor for WorkoutPropertiesQuery;
      v74 = v41;
      return sub_1B4BB3A38(v74, v73);
    }

    v102 = v33;
    sub_1B4BB3988(v44, v33, type metadata accessor for RingsPropertiesQuery);
    v114 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
    v115 = v160;
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(v115 + v114);
    v118 = v158;
    if ((v116 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v117 = sub_1B4C24944(v117);
      *(v115 + v114) = v117;
    }

    v119 = v141;
    v120 = swift_beginAccess();
    *(v117 + 16) = 1;
    *(v117 + 24) = 1;
    MEMORY[0x1EEE9AC00](v120);
    *(&v137 - 2) = v102;
    sub_1B4BB39F0(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4D17DAC();
    if (!v118)
    {
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v122 = *(v115 + v114);
      if ((v121 & 1) == 0)
      {
        type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
        swift_allocObject();
        v122 = sub_1B4C24944(v122);
        *(v115 + v114) = v122;
      }

      v123 = v140;
      sub_1B4BB3988(v152, v140, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      (*(v139 + 56))(v123, 0, 1, v119);
      v124 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
      swift_beginAccess();
      sub_1B49A205C(v123, v122 + v124, &qword_1EB8A6680, &unk_1B4D2FD90);
      swift_endAccess();
    }

    v113 = type metadata accessor for RingsPropertiesQuery;
LABEL_54:
    v73 = v113;
    v74 = v102;
    return sub_1B4BB3A38(v74, v73);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v88 = v156;
    v89 = v157;
    (*(v156 + 32))(v27, v44, v157);
    v49 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
    v46 = v160;
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v46 + v49);
    if ((v90 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v91 = sub_1B4C24944(v91);
      *(v46 + v49) = v91;
    }

    swift_beginAccess();
    *(v91 + 16) = 2;
    *(v91 + 24) = 1;
    sub_1B4D176DC();
    v53 = v92;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v88 + 8))(v27, v89);
      goto LABEL_34;
    }

    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();

    v93 = sub_1B4C24944(v129);
    (*(v88 + 8))(v27, v89);
LABEL_64:

    *(v46 + v49) = v93;
    goto LABEL_65;
  }

  v46 = v160;
  v47 = v156;
  if (EnumCaseMultiPayload == 3)
  {
    v48 = v157;
    (*(v156 + 32))(v24, v44, v157);
    v49 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v51 = *(v46 + v49);
    if ((v50 & 1) == 0)
    {
      type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      swift_allocObject();
      v51 = sub_1B4C24944(v51);
      *(v46 + v49) = v51;
    }

    swift_beginAccess();
    *(v51 + 16) = 3;
    *(v51 + 24) = 1;
    sub_1B4D176DC();
    v53 = v52;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v47 + 8))(v24, v48);
LABEL_34:
      v93 = *(v46 + v49);
LABEL_65:
      v131 = v93 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
LABEL_66:
      result = swift_beginAccess();
      *v131 = v53;
      *(v131 + 8) = 0;
      return result;
    }

    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();

    v93 = sub_1B4C24944(v130);
    (*(v47 + 8))(v24, v48);
    goto LABEL_64;
  }

  v95 = v144;
  (*(v156 + 32))(v144, v44, v157);
  v96 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *(v46 + v96);
  if ((v97 & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();
    v98 = sub_1B4C24944(v98);
    *(v46 + v96) = v98;
  }

  swift_beginAccess();
  *(v98 + 16) = 4;
  *(v98 + 24) = 1;
  sub_1B4D176DC();
  v100 = v99;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    (*(v47 + 8))(v95, v157);
    v101 = *(v46 + v96);
  }

  else
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    swift_allocObject();

    v101 = sub_1B4C24944(v132);
    (*(v47 + 8))(v95, v157);

    *(v46 + v96) = v101;
  }

  v133 = v101 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  result = swift_beginAccess();
  *v133 = v100;
  *(v133 + 8) = 0;
  return result;
}

uint64_t sub_1B4BB35C4(uint64_t a1, double a2)
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4BB39F0(&qword_1EB8ABC48, type metadata accessor for FitnessContextQueryDescriptor, &protocol conformance descriptor for FitnessContextQueryDescriptor);
  (*(v8 + 32))(a1, v8);
  if (!v3)
  {
    sub_1B4BB39F0(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    v2 = sub_1B4D17D6C();
    sub_1B4BB3A38(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  return v2;
}

uint64_t sub_1B4BB3744(double a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  sub_1B4BB39F0(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4BB3804()
{
  result = qword_1EB8ABC30;
  if (!qword_1EB8ABC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC30);
  }

  return result;
}

unint64_t sub_1B4BB3918()
{
  result = qword_1EB8ABC40;
  if (!qword_1EB8ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC40);
  }

  return result;
}

uint64_t sub_1B4BB3988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BB39F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4BB3A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static WorkoutMediaCurrentPlayingItemFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C016C;

  return sub_1B4BB50B4(a1, a3);
}

uint64_t WorkoutMediaCurrentPlayingItemFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4BB3BF0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

void sub_1B4BB3C44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if (a2)
  {
    v13 = sub_1B4D1817C();
    v15[4] = a9;
    v15[5] = a10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1B4BB3D4C;
    v15[3] = &block_descriptor_0;
    v14 = _Block_copy(v15);

    LXLexiconEnumerateEntriesForString();
    _Block_release(v14);

    swift_beginAccess();
    *a7 = (*(a11 + 16) & a12) != 0;
  }
}

void sub_1B4BB3D4C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t sub_1B4BB3DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49C0344;

  return sub_1B4BB50B4(a1, a3);
}

unint64_t sub_1B4BB3E8C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B4BB3FDC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B4D1895C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B4D189CC() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B4BB3FDC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B4BB4074(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B4BB40E8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B4BB4074(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B4BB420C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4BB40E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B4D189CC();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1B4BB420C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B4D1826C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8C7C650](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B4BB4288(uint64_t a1)
{
  if ((*(a1 + 80) & 1) != 0 || (v1 = *(a1 + 72), v1 <= 0.0))
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v7 = sub_1B4D17F6C();
    __swift_project_value_buffer(v7, qword_1EDC3CED0);
    v3 = sub_1B4D17F5C();
    v8 = sub_1B4D1873C();
    if (!os_log_type_enabled(v3, v8))
    {
      v6 = 1;
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B4953000, v3, v8, "[Media] Duration not supplied, not evaluating", v5, 2u);
    v6 = 1;
  }

  else
  {
    if (v1 >= 60.0)
    {
      return 1;
    }

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4D17F6C();
    __swift_project_value_buffer(v2, qword_1EDC3CED0);
    v3 = sub_1B4D17F5C();
    v4 = sub_1B4D1873C();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1B4953000, v3, v4, "[Media] Insufficient duration: %f", v5, 0xCu);
    v6 = 0;
  }

  MEMORY[0x1B8C7DDA0](v5, -1, -1);
LABEL_14:

  return v6;
}

uint64_t sub_1B4BB4460(uint64_t a1)
{
  if ((*(a1 + 80) & 1) != 0 || (*(a1 + 64) & 1) != 0 || (v6 = *(a1 + 72), v6 <= 0.0))
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v1 = sub_1B4D17F6C();
    __swift_project_value_buffer(v1, qword_1EDC3CED0);
    v2 = sub_1B4D17F5C();
    v3 = sub_1B4D1873C();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B4953000, v2, v3, "[Media] Duration and/or elapsed time not supplied, not evaluating time remaining", v4, 2u);
    v5 = 1;
LABEL_6:
    MEMORY[0x1B8C7DDA0](v4, -1, -1);
LABEL_12:

    return v5;
  }

  v7 = v6 - *(a1 + 56);
  if (v7 <= 15.0)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4D17F6C();
    __swift_project_value_buffer(v9, qword_1EDC3CED0);
    v2 = sub_1B4D17F5C();
    v10 = sub_1B4D1873C();
    if (!os_log_type_enabled(v2, v10))
    {
      v5 = 0;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v7;
    _os_log_impl(&dword_1B4953000, v2, v10, "[Media] Insufficient time remaining: %f", v4, 0xCu);
    v5 = 0;
    goto LABEL_6;
  }

  return 1;
}

BOOL sub_1B4BB4644(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
  sub_1B4955758();
  sub_1B4BB6374();
  sub_1B4D1887C();

  swift_beginAccess();
  v6 = *(v4 + 16);

  return v6 > a3;
}

uint64_t sub_1B4BB4798(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC90, &qword_1B4D38658);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1B4D1AA70;
  v5 = *MEMORY[0x1E69ABFD8];
  if (!*MEMORY[0x1E69ABFD8])
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  *(result + 32) = v5;
  *(result + 64) = MEMORY[0x1E69E6370];
  *(result + 40) = 1;
  v7 = *MEMORY[0x1E69ABFE8];
  if (!*MEMORY[0x1E69ABFE8])
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(result + 72) = v7;
  *(result + 104) = sub_1B4D1781C();
  __swift_allocate_boxed_opaque_existential_1((v6 + 80));
  v8 = v5;
  v9 = v7;
  sub_1B4D1780C();
  sub_1B4C95DAC(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC98, &qword_1B4D38660);
  swift_arrayDestroy();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  type metadata accessor for CFString(0);
  sub_1B4BB6294();
  v11 = sub_1B4D17FAC();

  v12 = LXLexiconCreate();

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = sub_1B4BB62EC;
    *(v13 + 32) = v10;
    *(v13 + 40) = v10;
    *(v13 + 48) = a3;
    swift_retain_n();
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
    sub_1B4955758();
    sub_1B4BB6374();
    sub_1B4D1887C();

    swift_beginAccess();
    v15 = *(v10 + 16);

    return v15 & a3;
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4D17F6C();
    __swift_project_value_buffer(v16, qword_1EDC3CED0);
    v17 = sub_1B4D17F5C();
    v18 = sub_1B4D1871C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B4953000, v17, v18, "Failed to create LXLexicon.", v19, 2u);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }
  }

  return a3;
}

unint64_t sub_1B4BB4AFC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v24[1] = a1;
  v24[2] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24[3] = 0;
  v24[4] = v2;

  v3 = sub_1B4D1823C();
  if (!v4)
  {
LABEL_34:

    return 1;
  }

  v5 = v3;
  v6 = v4;
  while (1)
  {
    if (v5 == 2573 && v6 == 0xE200000000000000 || (sub_1B4D18DCC() & 1) != 0)
    {
      goto LABEL_27;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
LABEL_36:
      v15 = sub_1B4D17F6C();
      __swift_project_value_buffer(v15, qword_1EDC3CED0);

      v16 = sub_1B4D17F5C();
      v17 = sub_1B4D1873C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v20 = sub_1B49558AC(v5, v6, v24);

        *(v18 + 4) = v20;
        v21 = "[Media] Not ASCII: %s";
LABEL_38:
        _os_log_impl(&dword_1B4953000, v16, v17, v21, v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1B8C7DDA0](v19, -1, -1);
        MEMORY[0x1B8C7DDA0](v18, -1, -1);

LABEL_44:

        return 0;
      }

LABEL_43:

      goto LABEL_44;
    }

    if ((v6 & 0x1000000000000000) != 0)
    {
      v13 = sub_1B4D181FC();
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = v5;
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v9 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = sub_1B4D189CC();
        }

        v10 = *v9;
      }

      v11 = v10;
      v12 = (__clz(~v10) - 24) << 16;
      if (v11 < 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 65541;
      }
    }

    if (v13 >> 14 != 4 * v8)
    {
LABEL_35:
      if (qword_1EDC3CEC8 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_47;
    }

    result = sub_1B4BB3E8C(v5, v6);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      goto LABEL_35;
    }

    result = sub_1B4BB3E8C(v5, v6);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_49;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

LABEL_27:
    if ((sub_1B4D180BC() & 1) == 0 && (sub_1B4D180CC() & 1) == 0 && (sub_1B4D1809C() & 1) == 0 && (sub_1B4D180AC() & 1) == 0)
    {
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v22 = sub_1B4D17F6C();
      __swift_project_value_buffer(v22, qword_1EDC3CED0);

      v16 = sub_1B4D17F5C();
      v17 = sub_1B4D1873C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v23 = sub_1B49558AC(v5, v6, v24);

        *(v18 + 4) = v23;
        v21 = "[Media] Invalid character: %s";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    v5 = sub_1B4D1823C();
    v6 = v7;
    if (!v7)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1B4BB4EE8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (sub_1B4D181BC() == 0x7369747265766461 && v3 == 0xED0000746E656D65)
  {
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4D17F6C();
  __swift_project_value_buffer(v7, qword_1EDC3CED0);

  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    v12 = sub_1B49558AC(v2, v1, &v13);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1B4953000, v8, v9, "[Media] Artist name indicates this is an advertisement: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B8C7DDA0](v11, -1, -1);
    MEMORY[0x1B8C7DDA0](v10, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1B4BB50B4(uint64_t a1, uint64_t a2)
{
  v2[40] = a2;
  v3 = sub_1B4D1748C();
  v2[41] = v3;
  v2[42] = *(v3 - 8);
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BB51AC, 0, 0);
}

uint64_t sub_1B4BB51AC()
{
  v88 = v0;
  v1 = *(v0 + 352);
  sub_1B4974FBC(*(v0 + 320), v1, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2 = type metadata accessor for WorkoutState(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 352), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_4:
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B4D17F6C();
    __swift_project_value_buffer(v19, qword_1EDC3CED0);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1873C();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No media details supplied";
LABEL_8:
    _os_log_impl(&dword_1B4953000, v20, v21, v23, v22, 2u);
    MEMORY[0x1B8C7DDA0](v22, -1, -1);
LABEL_9:

LABEL_10:
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v3 = *(v0 + 352);
  v4 = v3 + *(v2 + 124);
  v5 = *(v4 + 16);
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  *(v0 + 96) = *(v4 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  sub_1B4974FBC(v0 + 16, v0 + 104, &qword_1EB8ABC80, &qword_1B4D38648);
  sub_1B49AA7C0(v3);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 65);
  v69 = *(v0 + 66);
  v70 = *(v0 + 70);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  *v71 = *(v0 + 81);
  *&v71[3] = *(v0 + 84);
  if (v10 == 1)
  {
    goto LABEL_4;
  }

  if ((*(v0 + 65) & 1) == 0)
  {
    sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v38 = sub_1B4D17F6C();
    __swift_project_value_buffer(v38, qword_1EDC3CED0);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1873C();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Media not currently playing";
    goto LABEL_8;
  }

  if (!v10)
  {
    sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B4D17F6C();
    __swift_project_value_buffer(v39, qword_1EDC3CED0);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1873C();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No media title supplied";
    goto LABEL_8;
  }

  v27 = *(v0 + 88);
  v28 = *(v0 + 96);
  v72 = *(v0 + 16);
  v73 = v10;
  v74 = v11;
  v75 = v12;
  v76 = v13;
  v77 = v14;
  v78 = v15;
  v79 = v16;
  v80 = *(v0 + 66);
  v81 = *(v0 + 70);
  v82 = v17;
  v83 = v18;
  *v84 = *(v0 + 81);
  *&v84[3] = *(v0 + 84);
  v85 = v27;
  v86 = v28;
  v66 = v18;
  v67 = v15;
  v68 = v9;

  if ((sub_1B4BB4288(&v72) & 1) == 0)
  {
    goto LABEL_51;
  }

  v72 = v68;
  v73 = v10;
  v74 = v11;
  v75 = v12;
  v76 = v13;
  v77 = v14;
  v78 = v67;
  v79 = v16;
  v80 = v69;
  v81 = v70;
  v82 = v17;
  v83 = v66;
  *v84 = *v71;
  *&v84[3] = *&v71[3];
  v85 = v27;
  v86 = v28;
  if ((sub_1B4BB4460(&v72) & 1) == 0)
  {
    goto LABEL_51;
  }

  v60 = v16;
  v61 = v28;
  v64 = v13;
  v65 = v14;
  v62 = v27;
  v63 = v17;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v29 = sub_1B4D17F6C();
  __swift_project_value_buffer(v29, qword_1EDC3CED0);

  v30 = sub_1B4D17F5C();
  v31 = sub_1B4D1873C();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v72 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1B49558AC(v68, v10, &v72);
    _os_log_impl(&dword_1B4953000, v30, v31, "[Media] Checking if string is acceptable: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1B8C7DDA0](v33, -1, -1);
    MEMORY[0x1B8C7DDA0](v32, -1, -1);
  }

  if (sub_1B4BB4644(v68, v10, 5))
  {
    goto LABEL_51;
  }

  *(v0 + 192) = v68;
  *(v0 + 200) = v10;
  *(v0 + 208) = 2763306;
  *(v0 + 216) = 0xE300000000000000;
  sub_1B4955758();
  if ((sub_1B4D1889C() & 1) != 0 || sub_1B4BB4798(v68, v10, 58720256) || (sub_1B4BB4AFC(v68, v10) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (v12)
  {

    v34 = sub_1B4D17F5C();
    v35 = sub_1B4D1873C();

    if (os_log_type_enabled(v34, v35))
    {
      v59 = v35;
      v36 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72 = v58;
      *v36 = 136315138;
      v37 = v11;
      *(v36 + 4) = sub_1B49558AC(v11, v12, &v72);
      _os_log_impl(&dword_1B4953000, v34, v59, "[Media] Checking if string is acceptable: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1B8C7DDA0](v58, -1, -1);
      MEMORY[0x1B8C7DDA0](v36, -1, -1);
    }

    else
    {

      v37 = v11;
    }

    if (sub_1B4BB4644(v37, v12, 5))
    {
      goto LABEL_51;
    }

    *(v0 + 288) = v11;
    *(v0 + 296) = v12;
    *(v0 + 304) = 2763306;
    *(v0 + 312) = 0xE300000000000000;
    if ((sub_1B4D1889C() & 1) != 0 || sub_1B4BB4798(v11, v12, 58720256) || (sub_1B4BB4AFC(v11, v12) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (v14)
  {

    v40 = sub_1B4D17F5C();
    v41 = sub_1B4D1873C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v72 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1B49558AC(v64, v65, &v72);
      _os_log_impl(&dword_1B4953000, v40, v41, "[Media] Checking if string is acceptable: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1B8C7DDA0](v43, -1, -1);
      MEMORY[0x1B8C7DDA0](v42, -1, -1);
    }

    if (sub_1B4BB4644(v64, v65, 5))
    {
      goto LABEL_51;
    }

    *(v0 + 256) = v64;
    *(v0 + 264) = v65;
    *(v0 + 272) = 2763306;
    *(v0 + 280) = 0xE300000000000000;
    if ((sub_1B4D1889C() & 1) != 0 || sub_1B4BB4798(v64, v65, 58720256) || (sub_1B4BB4AFC(v64, v65) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v72 = v68;
  v73 = v10;
  v74 = v11;
  v75 = v12;
  v76 = v64;
  v77 = v65;
  v78 = v67;
  v79 = v60;
  v80 = v69;
  v81 = v70;
  v82 = v63;
  v83 = v66;
  *v84 = *v71;
  *&v84[3] = *&v71[3];
  v85 = v62;
  v86 = v61;
  if (sub_1B4BB4EE8(&v72))
  {
LABEL_51:

    sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
    goto LABEL_10;
  }

  if (!v12)
  {
    goto LABEL_57;
  }

  v45 = *(v0 + 336);
  v44 = *(v0 + 344);
  v46 = *(v0 + 328);
  *(v0 + 240) = v11;
  *(v0 + 248) = v12;

  sub_1B4D1747C();
  v47 = sub_1B4D1886C();
  v49 = v48;
  (*(v45 + 8))(v44, v46);

  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v50)
  {

LABEL_57:
    v47 = 0;
    v49 = 0;
  }

  if (v65)
  {
    v52 = *(v0 + 336);
    v51 = *(v0 + 344);
    v53 = *(v0 + 328);
    *(v0 + 224) = v64;
    *(v0 + 232) = v65;

    sub_1B4D1747C();
    v54 = sub_1B4D1886C();
    v56 = v55;
    (*(v52 + 8))(v51, v53);

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      goto LABEL_64;
    }
  }

  v54 = 0;
  v56 = 0;
LABEL_64:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC88, &qword_1B4D38650);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1A800;
  sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
  v87 = v66 & 1;
  LOBYTE(v72) = v61 & 1;
  *(v24 + 32) = v68;
  *(v24 + 40) = v10;
  *(v24 + 48) = v47;
  *(v24 + 56) = v49;
  *(v24 + 64) = v54;
  *(v24 + 72) = v56;
  *(v24 + 80) = v67 & 1;
  *(v24 + 81) = 1;
  *(v24 + 88) = v63;
  *(v24 + 96) = v66 & 1;
  *(v24 + 104) = v62;
  *(v24 + 112) = v61 & 1;
LABEL_11:

  v25 = *(v0 + 8);

  return v25(v24);
}

unint64_t _s19FitnessIntelligence34WorkoutMediaCurrentPlayingItemFactV10makePrompt15promptFormatterSSAA0jL0C_tF_0()
{
  v1 = sub_1B4D1748C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = *(v0 + 40);
  v18 = *(v0 + 32);
  v19 = *(v0 + 48);
  v22 = 0;
  v23 = 0xE000000000000000;

  sub_1B4D1896C();

  v22 = 0xD00000000000001CLL;
  v23 = 0x80000001B4D628F0;
  v20 = v5;
  v21 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC78, &qword_1B4D38640);
  v10 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v10);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  if (v7)
  {
    v20 = v8;
    v21 = v7;
    sub_1B4D1747C();
    sub_1B4955758();
    v11 = sub_1B4D1886C();
    v13 = v12;
    (*(v2 + 8))(v4, v1);

    if ((v11 || v13 != 0xE000000000000000) && (sub_1B4D18DCC() & 1) == 0)
    {
      v20 = 544825888;
      v21 = 0xE400000000000000;
      MEMORY[0x1B8C7C620](v11, v13);

      MEMORY[0x1B8C7C620](v20, v21);
    }
  }

  if (v9)
  {
    v20 = v18;
    v21 = v9;

    sub_1B4D1747C();
    sub_1B4955758();
    v14 = sub_1B4D1886C();
    v16 = v15;
    (*(v2 + 8))(v4, v1);

    if ((v14 || v16 != 0xE000000000000000) && (sub_1B4D18DCC() & 1) == 0)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1B4D1896C();

      v20 = 0xD000000000000013;
      v21 = 0x80000001B4D62930;
      MEMORY[0x1B8C7C620](v14, v16);

      MEMORY[0x1B8C7C620](46, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v20, v21);
    }
  }

  if (v19)
  {
    MEMORY[0x1B8C7C620](0xD00000000000001CLL, 0x80000001B4D62910);
  }

  return v22;
}

unint64_t sub_1B4BB604C()
{
  result = qword_1EB8ABC50;
  if (!qword_1EB8ABC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC50);
  }

  return result;
}

unint64_t sub_1B4BB60CC()
{
  result = qword_1EB8ABC58;
  if (!qword_1EB8ABC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC58);
  }

  return result;
}

unint64_t sub_1B4BB6120()
{
  result = qword_1EB8ABC60;
  if (!qword_1EB8ABC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC60);
  }

  return result;
}

uint64_t sub_1B4BB61A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BB61DC()
{
  result = qword_1EB8ABC68;
  if (!qword_1EB8ABC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC68);
  }

  return result;
}

unint64_t sub_1B4BB6230()
{
  result = qword_1EB8ABC70;
  if (!qword_1EB8ABC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC70);
  }

  return result;
}

unint64_t sub_1B4BB6294()
{
  result = qword_1EB8A6640;
  if (!qword_1EB8A6640)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6640);
  }

  return result;
}

uint64_t sub_1B4BB62EC()
{
  MetaFlags = LXEntryGetMetaFlags();
  result = swift_beginAccess();
  *(v0 + 16) |= MetaFlags;
  return result;
}

unint64_t sub_1B4BB6374()
{
  result = qword_1EB8ABCA8;
  if (!qword_1EB8ABCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCA8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4BB63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  result = swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
    if (v14 > v9)
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t StatisticsPropertyValue.init(_:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_1B4D1746C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - v18;
  v28 = *(a1 + 1);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v22 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v23 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v24 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v25 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  sub_1B4BB6680(a1);
  return StatisticsPropertyValue.init(count:total:min:max:sumY2:sumXY:)(v28, v19, v16, v13, v10, v7, a2, v29);
}

uint64_t sub_1B4BB6680(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StatisticsPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  sub_1B4BB68CC(qword_1EDC3B7A0, &protocol conformance descriptor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  return sub_1B4D17DAC();
}

void sub_1B4BB6780(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D1746C();
  sub_1B4D1742C();
  *a1 = v6;
  a1[1] = *(a2 + *(type metadata accessor for StatisticsPropertyValue(0, a3, v7, v8) + 28));
  sub_1B4D1742C();
  a1[3] = v9;
  sub_1B4D1742C();
  a1[4] = v10;
  sub_1B4D1742C();
  a1[2] = v11;
  sub_1B4D1742C();
  a1[5] = v12;
}

uint64_t sub_1B4BB68CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4BB6980()
{
  result = qword_1EB8ABCB0;
  if (!qword_1EB8ABCB0)
  {
    type metadata accessor for WorkoutVoiceLongestDistanceFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCB0);
  }

  return result;
}

unint64_t sub_1B4BB69DC()
{
  result = qword_1EB8ABCB8;
  if (!qword_1EB8ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCB8);
  }

  return result;
}

uint64_t sub_1B4BB6A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BB6AD4, 0, 0);
}

uint64_t sub_1B4BB6AD4()
{
  v1 = v0[5];
  sub_1B4B58794(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BD6434(v6, v4, v5);
}

unint64_t sub_1B4BB6BE4(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor(0);
  v150 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v134 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v123 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v123 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v123 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v144 = &v123 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v133 = &v123 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v123 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v123 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v123 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v130 = &v123 - v27;
  MEMORY[0x1EEE9AC00](v28);
  Descriptor = &v123 - v29;
  v147 = type metadata accessor for WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v147);
  v31 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1B4D1777C();
  v32 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for WorkoutState(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B58794(a1, v36, type metadata accessor for WorkoutState);
  v37 = sub_1B4CAC70C(v36);
  v38 = *(v37 + 2);
  v39 = 32;
  while (v38)
  {
    v40 = *&v37[v39];
    v39 += 8;
    --v38;
    if (v40 == 1)
    {
      v123 = v11;
      v129 = v25;
      v126 = v6;
      v127 = v14;

      v41 = *(v34 + 36);
      v128 = v32;
      v42 = v2;
      v44 = v32 + 16;
      v43 = *(v32 + 16);
      v46 = v148;
      v45 = v149;
      v43(v148, &v36[v41], v149);
      v43(v31, v46, v45);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1B4D1A800;
      v48 = *&v36[*(v34 + 24)];
      sub_1B49BFEC0(v36, type metadata accessor for WorkoutState);
      v49 = [v48 effectiveTypeIdentifier];

      *(v47 + 32) = v49;
      v50 = v147;
      v51 = &v31[*(v147 + 20)];
      v52 = MEMORY[0x1E69E7CC0];
      *v51 = MEMORY[0x1E69E7CC0];
      *(v51 + 1) = v52;
      *(v51 + 2) = v52;
      *(v51 + 3) = v47;
      *(v51 + 4) = v52;
      *(v51 + 5) = v52;
      *&v31[*(v50 + 24)] = v52;
      *&v31[*(v50 + 28)] = &unk_1F2CB9858;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC0, &qword_1B4D38750);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC8, &unk_1B4D38758);
      v53 = v31;
      v54 = (*(*(v146 - 8) + 80) + 32) & ~*(*(v146 - 8) + 80);
      v138 = *(*(v146 - 8) + 72);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1B4D1B2D0;
      v125 = v55;
      v145 = v55 + v54;
      *(v55 + v54) = 0;
      v56 = Descriptor;
      v140 = v43;
      v141 = v44;
      v43(Descriptor, v46, v45);
      v57 = v42;
      swift_storeEnumTagMultiPayload();
      v58 = v150;
      v136 = *(v150 + 56);
      v137 = v150 + 56;
      v136(v56, 0, 1, v42);
      v59 = v130;
      sub_1B49BFDE8(v56, v130);
      v60 = *(v58 + 48);
      v61 = v60(v59, 1, v42);
      v150 = v58 + 48;
      v139 = v60;
      v135 = v53;
      v124 = v42;
      if (v61 == 1)
      {
        v62 = v123;
        sub_1B4B58794(v53, v123, type metadata accessor for DateRangeDescriptor);
        if (v60(v59, 1, v57) != 1)
        {
          sub_1B4975024(v59, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v62 = v123;
        sub_1B4993450(v59, v123);
      }

      v69 = v145;
      v70 = v145 + *(v146 + 48);
      v71 = *v51;
      v72 = *(v51 + 1);
      v74 = *(v51 + 2);
      v73 = *(v51 + 3);
      v76 = *(v51 + 4);
      v75 = *(v51 + 5);
      sub_1B4B58794(v62, v70, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v62, type metadata accessor for DateRangeDescriptor);
      v77 = v147;
      v78 = (v70 + *(v147 + 20));
      *v78 = v71;
      v78[1] = v72;
      v78[2] = v74;
      v78[3] = v73;
      v78[4] = v76;
      v78[5] = v75;
      *(v70 + *(v77 + 24)) = MEMORY[0x1E69E7CC0];
      *(v70 + *(v77 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor(0);
      swift_storeEnumTagMultiPayload();
      v79 = v69 + v138;
      *(v69 + v138) = 1;
      v80 = v129;
      v140(v129, v148, v149);
      v81 = v124;
      swift_storeEnumTagMultiPayload();
      v136(v80, 0, 1, v81);
      v82 = v131;
      sub_1B49BFDE8(v80, v131);
      v83 = v139;
      if (v139(v82, 1, v81) == 1)
      {
        v84 = v132;
        sub_1B4B58794(v135, v132, type metadata accessor for DateRangeDescriptor);
        if (v83(v82, 1, v81) != 1)
        {
          sub_1B4975024(v82, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v84 = v132;
        sub_1B4993450(v82, v132);
      }

      v85 = v79 + *(v146 + 48);
      v86 = *v51;
      v87 = *(v51 + 1);
      v88 = *(v51 + 2);
      v89 = *(v51 + 3);
      v90 = *(v51 + 4);
      v91 = *(v51 + 5);
      sub_1B4B58794(v84, v85, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v84, type metadata accessor for DateRangeDescriptor);
      v92 = v147;
      v93 = (v85 + *(v147 + 20));
      *v93 = v86;
      v93[1] = v87;
      v93[2] = v88;
      v93[3] = v89;
      v93[4] = v90;
      v93[5] = v91;
      *(v85 + *(v92 + 24)) = MEMORY[0x1E69E7CC0];
      *(v85 + *(v92 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(v129, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v94 = (v145 + 2 * v138);
      *v94 = 2;
      v95 = v143;
      v140(v143, v148, v149);
      swift_storeEnumTagMultiPayload();
      v136(v95, 0, 1, v81);
      v96 = v133;
      sub_1B49BFDE8(v95, v133);
      v97 = v139;
      if (v139(v96, 1, v81) == 1)
      {
        v98 = v126;
        sub_1B4B58794(v135, v126, type metadata accessor for DateRangeDescriptor);
        if (v97(v96, 1, v81) != 1)
        {
          sub_1B4975024(v96, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v98 = v126;
        sub_1B4993450(v96, v126);
      }

      v99 = &v94[*(v146 + 48)];
      v100 = *v51;
      v101 = *(v51 + 1);
      v102 = *(v51 + 2);
      v103 = *(v51 + 3);
      v104 = *(v51 + 4);
      v105 = *(v51 + 5);
      sub_1B4B58794(v98, v99, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v98, type metadata accessor for DateRangeDescriptor);
      v106 = v147;
      v107 = (v99 + *(v147 + 20));
      *v107 = v100;
      v107[1] = v101;
      v107[2] = v102;
      v107[3] = v103;
      v107[4] = v104;
      v107[5] = v105;
      *(v99 + *(v106 + 24)) = MEMORY[0x1E69E7CC0];
      *(v99 + *(v106 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(v143, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v108 = v144;
      v109 = (v145 + 3 * v138);
      *v109 = 3;
      v140(v108, v148, v149);
      swift_storeEnumTagMultiPayload();
      v136(v108, 0, 1, v81);
      v110 = v127;
      sub_1B49BFDE8(v108, v127);
      v111 = v139;
      if (v139(v110, 1, v81) == 1)
      {
        v112 = v134;
        sub_1B4B58794(v135, v134, type metadata accessor for DateRangeDescriptor);
        if (v111(v110, 1, v81) != 1)
        {
          sub_1B4975024(v110, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v112 = v134;
        sub_1B4993450(v110, v134);
      }

      v113 = &v109[*(v146 + 48)];
      v114 = *v51;
      v115 = *(v51 + 1);
      v116 = *(v51 + 2);
      v117 = *(v51 + 3);
      v118 = *(v51 + 4);
      v119 = *(v51 + 5);
      sub_1B4B58794(v112, v113, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v112, type metadata accessor for DateRangeDescriptor);
      v120 = v147;
      v121 = (v113 + *(v147 + 20));
      *v121 = v114;
      v121[1] = v115;
      v121[2] = v116;
      v121[3] = v117;
      v121[4] = v118;
      v121[5] = v119;
      *(v113 + *(v120 + 24)) = MEMORY[0x1E69E7CC0];
      *(v113 + *(v120 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(v144, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v122 = sub_1B4C97B64(v125);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v135, type metadata accessor for WorkoutPropertiesQuery);
      (*(v128 + 8))(v148, v149);
      return v122;
    }
  }

  sub_1B49BFEC0(v36, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v63 = sub_1B4D17F6C();
  __swift_project_value_buffer(v63, qword_1EDC36F00);
  v64 = sub_1B4D17F5C();
  v65 = sub_1B4D1873C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v151 = v67;
    *v66 = 136315138;
    *(v66 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D62970, &v151);
    _os_log_impl(&dword_1B4953000, v64, v65, "%s does not support this workout state", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    MEMORY[0x1B8C7DDA0](v67, -1, -1);
    MEMORY[0x1B8C7DDA0](v66, -1, -1);
  }

  return sub_1B4C97B64(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B4BB7B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ActivitySummaryContext(uint64_t a1)
{
  result = qword_1EB8ABCD0;
  if (!qword_1EB8ABCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B4BB7C34(uint64_t a1)
{
  sub_1B4BB7CA0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B4BB7CA0(uint64_t a1)
{
  if (!qword_1EDC36FE8)
  {
    type metadata accessor for HKActivitySummaryRepresentable(255);
    v1 = sub_1B4D1880C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC36FE8);
    }
  }
}

uint64_t ClosedAllRingsFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4BB7D78()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB7DEC(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB7E40@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

unint64_t static ClosedAllRingsFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BB80EC(v3, v1, v2);
}

uint64_t static ClosedAllRingsFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BB82E0(a1, a3, a4);
}

unint64_t sub_1B4BB7FD0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BB80EC(v3, v1, v2);
}

uint64_t sub_1B4BB8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BB82E0(a1, a3, a4);
}

unint64_t sub_1B4BB80EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD18, &qword_1B4D394C0);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD20, &unk_1B4D388B0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1A800;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for FitnessContextQueryDescriptor(0);
  swift_storeEnumTagMultiPayload();
  v12 = sub_1B4C96AD0(v11);
  swift_setDeallocating();
  sub_1B4975024(v11 + v10, &qword_1EB8ABD20, &unk_1B4D388B0);
  swift_deallocClassInstance();
  (*(v5 + 8))(v8, a2);
  return v12;
}

uint64_t sub_1B4BB82E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for HKActivitySummaryRepresentable(0);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for ActivitySummaryContext(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BB84D8, 0, 0);
}

uint64_t sub_1B4BB84D8()
{
  v79 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for ClosedAllRingsFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD10, &qword_1B4D388A8);
  v77 = sub_1B4D181CC();
  v78 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v77, v78, v1, v1, v5, v6);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[15];
    v9 = &qword_1EB8AA5C8;
    v10 = &qword_1B4D39050;
LABEL_8:
    sub_1B4975024(v8, v9, v10);
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4D17F6C();
    __swift_project_value_buffer(v24, qword_1EDC36F00);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1873C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v77 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v77);
      _os_log_impl(&dword_1B4953000, v25, v26, "%s no ringRepresentable. Returning.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B8C7DDA0](v28, -1, -1);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

    goto LABEL_13;
  }

  v11 = v0[7];
  v12 = v0[4];
  sub_1B4BB9318(v0[15], v0[18], type metadata accessor for ActivitySummaryContext);
  sub_1B4974FBC(v12, v11, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v13 = type metadata accessor for WorkoutState(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v11, 1, v13) == 1)
  {
    v15 = v0[11];
    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[7];
    sub_1B4BB9380(v0[18], type metadata accessor for ActivitySummaryContext);
    sub_1B4975024(v18, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v16 + 56))(v17, 1, 1, v15);
LABEL_7:
    v8 = v0[10];
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    goto LABEL_8;
  }

  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[10];
  v22 = v0[7];
  sub_1B4974FBC(v22 + *(v13 + 128), v21, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4BB9380(v22, type metadata accessor for WorkoutState);
  v23 = *(v20 + 48);
  if (v23(v21, 1, v19) == 1)
  {
    sub_1B4BB9380(v0[18], type metadata accessor for ActivitySummaryContext);
    goto LABEL_7;
  }

  v33 = v0[5];
  v32 = v0[6];
  sub_1B4BB9318(v0[10], v0[14], type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4974FBC(v33, v32, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v14(v32, 1, v13) == 1)
  {
    v34 = v0[11];
    v35 = v0[12];
    v36 = v0[8];
    sub_1B4975024(v0[6], &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v35 + 56))(v36, 1, 1, v34);
  }

  else
  {
    v37 = v0[11];
    v38 = v0[8];
    v39 = v0[6];
    sub_1B4974FBC(v39 + *(v13 + 128), v38, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4BB9380(v39, type metadata accessor for WorkoutState);
    if (v23(v38, 1, v37) != 1)
    {
      v42 = v0[11];
      v43 = v0[12];
      v44 = v0[9];
      sub_1B4BB9318(v0[8], v44, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v43 + 56))(v44, 0, 1, v42);
      goto LABEL_23;
    }
  }

  v40 = v0[11];
  v41 = v0[8];
  sub_1B4974FBC(v0[18], v0[9], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  if (v23(v41, 1, v40) != 1)
  {
    sub_1B4975024(v0[8], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_23:
  v45 = v0[9];
  if (v23(v45, 1, v0[11]) == 1)
  {
    v46 = v0[18];
    sub_1B4BB9380(v0[14], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4BB9380(v46, type metadata accessor for ActivitySummaryContext);
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    v8 = v45;
    goto LABEL_8;
  }

  v47 = v0[14];
  sub_1B4BB9318(v45, v0[13], type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v47 + 25))
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v48 = sub_1B4D17F6C();
    __swift_project_value_buffer(v48, qword_1EDC36F00);
    v49 = sub_1B4D17F5C();
    v50 = sub_1B4D1873C();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_38;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v77);
    v53 = "%s Rings are paused. Returning.";
LABEL_37:
    _os_log_impl(&dword_1B4953000, v49, v50, v53, v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1B8C7DDA0](v52, -1, -1);
    MEMORY[0x1B8C7DDA0](v51, -1, -1);
LABEL_38:

    v63 = v0[18];
    v64 = v0[14];
    sub_1B4BB9380(v0[13], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4BB9380(v64, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4BB9380(v63, type metadata accessor for ActivitySummaryContext);
LABEL_13:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v54 = sub_1B4A612D4();
  if (v55 & 1) != 0 || (v56 = *&v54, v57 = sub_1B4A61B14(), (v58) || (v59 = *&v57, v60 = COERCE_DOUBLE(sub_1B4A61EE8()), (v61))
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v62 = sub_1B4D17F6C();
    __swift_project_value_buffer(v62, qword_1EDC36F00);
    v49 = sub_1B4D17F5C();
    v50 = sub_1B4D1873C();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_38;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v77);
    v53 = "%s hasClosedRing returned nil for previousRingRepresentable. Returning";
    goto LABEL_37;
  }

  if (v56 >= 1.0 && v59 >= 1.0 && v60 >= 1.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v65 = sub_1B4D17F6C();
    __swift_project_value_buffer(v65, qword_1EDC36F00);
    v49 = sub_1B4D17F5C();
    v50 = sub_1B4D1873C();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_38;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v77);
    v53 = "%s Rings have closed in prior snapshot this workout. Returning.";
    goto LABEL_37;
  }

  v66 = sub_1B4A612D4();
  if (v67 & 1) != 0 || (v68 = *&v66, v69 = sub_1B4A61B14(), (v70) || (v71 = *&v69, v72 = COERCE_DOUBLE(sub_1B4A61EE8()), (v73) || v68 < 1.0 || v71 < 1.0 || v72 < 1.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v74 = sub_1B4D17F6C();
    __swift_project_value_buffer(v74, qword_1EDC36F00);
    v49 = sub_1B4D17F5C();
    v50 = sub_1B4D1873C();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_38;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v77 = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v77);
    v53 = "%s Rings have closed in prior snapshot. Returning.";
    goto LABEL_37;
  }

  v75 = v0[18];
  v76 = v0[14];
  sub_1B4BB9380(v0[13], type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4BB9380(v76, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4BB9380(v75, type metadata accessor for ActivitySummaryContext);
  v29 = &unk_1F2CB8A80;
LABEL_14:

  v30 = v0[1];

  return v30(v29);
}

unint64_t sub_1B4BB9078()
{
  result = qword_1EB8ABCE0;
  if (!qword_1EB8ABCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCE0);
  }

  return result;
}

unint64_t sub_1B4BB90F8()
{
  result = qword_1EB8ABCE8;
  if (!qword_1EB8ABCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCE8);
  }

  return result;
}

unint64_t sub_1B4BB914C()
{
  result = qword_1EB8ABCF0;
  if (!qword_1EB8ABCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCF0);
  }

  return result;
}

unint64_t sub_1B4BB91A4()
{
  result = qword_1EB8ABCF8;
  if (!qword_1EB8ABCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCF8);
  }

  return result;
}

uint64_t sub_1B4BB9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BB9260()
{
  result = qword_1EB8ABD00;
  if (!qword_1EB8ABD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD00);
  }

  return result;
}

unint64_t sub_1B4BB92B4()
{
  result = qword_1EB8ABD08;
  if (!qword_1EB8ABD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD08);
  }

  return result;
}

uint64_t sub_1B4BB9318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BB9380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t InferenceRecord.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InferenceRecord(0) + 20);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InferenceRecord(uint64_t a1)
{
  result = qword_1EDC39840;
  if (!qword_1EDC39840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceRecord.request.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InferenceRecord(0) + 24));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23[0] = v5;
  *(v23 + 9) = *(v3 + 121);
  v6 = v3[1];
  v7 = v3[3];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v9 = v3[3];
  v10 = v3[5];
  v20 = v3[4];
  v11 = v20;
  v21 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = v3[7];
  a1[6] = v22;
  a1[7] = v14;
  *(a1 + 121) = *(v3 + 121);
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v4;
  *a1 = v13;
  a1[1] = v6;
  return sub_1B4BB9544(v17, &v16);
}

uint64_t InferenceRecord.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceRecord(0) + 28);

  return sub_1B49F01B4(v3, a1);
}

uint64_t InferenceRecord.osBuildVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferenceRecord(0) + 32));

  return v1;
}

uint64_t InferenceRecord.feedbackId.getter()
{
  v1 = *(v0 + *(type metadata accessor for InferenceRecord(0) + 36));

  return v1;
}

uint64_t InferenceRecord.init(uuid:createdAt:request:result:osBuildVersion:feedbackId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_1B4D177CC();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for InferenceRecord(0);
  v20 = v19[5];
  v21 = sub_1B4D1777C();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[7];
  v22[6] = a3[6];
  v22[7] = v23;
  *(v22 + 121) = *(a3 + 121);
  v24 = a3[3];
  v22[2] = a3[2];
  v22[3] = v24;
  v25 = a3[5];
  v22[4] = a3[4];
  v22[5] = v25;
  v26 = a3[1];
  *v22 = *a3;
  v22[1] = v26;
  result = sub_1B4BB97A4(a4, a9 + v19[7]);
  v28 = (a9 + v19[8]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a9 + v19[9]);
  *v29 = a7;
  v29[1] = a8;
  return result;
}

uint64_t sub_1B4BB97A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19FitnessIntelligence22BestWorkoutRecordEntryV17workoutIdentifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double InferenceRecord.copy(with:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1B4D177CC();
  (*(*(v8 - 8) + 16))(a3, v4, v8);
  v9 = type metadata accessor for InferenceRecord(0);
  v10 = v9[5];
  v11 = sub_1B4D1777C();
  (*(*(v11 - 8) + 16))(a3 + v10, v4 + v10, v11);
  v12 = (v4 + v9[6]);
  v13 = v12[7];
  v35 = v12[6];
  v36[0] = v13;
  *(v36 + 9) = *(v12 + 121);
  v14 = v12[3];
  v31 = v12[2];
  v32 = v14;
  v15 = v12[5];
  v33 = v12[4];
  v34 = v15;
  v16 = v12[1];
  v29 = *v12;
  v30 = v16;
  sub_1B49F01B4(v4 + v9[7], a3 + v9[7]);
  v17 = (v4 + v9[8]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (a3 + v9[6]);
  v21 = v32;
  v20[2] = v31;
  v20[3] = v21;
  v22 = v30;
  *v20 = v29;
  v20[1] = v22;
  *(v20 + 121) = *(v36 + 9);
  v23 = v36[0];
  v20[6] = v35;
  v20[7] = v23;
  v24 = v34;
  v20[4] = v33;
  v20[5] = v24;
  v25 = (a3 + v9[8]);
  *v25 = v18;
  v25[1] = v19;
  v26 = (a3 + v9[9]);
  *v26 = a1;
  v26[1] = a2;
  sub_1B4BB9544(&v29, &v28);

  return result;
}

unint64_t sub_1B4BB9A00()
{
  result = qword_1EB8A72D8;
  if (!qword_1EB8A72D8)
  {
    sub_1B4D177CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A72D8);
  }

  return result;
}

void sub_1B4BB9A80(uint64_t a1)
{
  sub_1B4D177CC();
  if (v1 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceResult(319);
      if (v3 <= 0x3F)
      {
        sub_1B4ABA5F0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id WorkoutVoiceMilestoneWorkoutDistanceFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0) + 28));

  return v1;
}

uint64_t type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(uint64_t a1)
{
  result = qword_1EB8ABD50;
  if (!qword_1EB8ABD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.init(value:timescale:activityType:workoutCount:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  *a5 = 1;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  result = (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
  a5[v10[6]] = v9;
  *&a5[v10[7]] = a3;
  *&a5[v10[8]] = a4;
  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_1B4BB9D70()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C616373656D6974;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4374756F6B726F77;
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

uint64_t sub_1B4BB9E10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4BBAC70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4BB9E38(uint64_t a1)
{
  v2 = sub_1B4BBA874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BB9E74(uint64_t a1)
{
  v2 = sub_1B4BBA874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD28, &unk_1B4D38948);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BBA874();
  sub_1B4D18EFC();
  v20 = *v3;
  v19 = 0;
  sub_1B4BBA8C8();
  sub_1B4D18D0C();
  if (!v2)
  {
    v12 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
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
    sub_1B4D18D1C();
  }

  return (*(v6 + 8))(v8, v5);
}

void WorkoutVoiceMilestoneWorkoutDistanceFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD40, &qword_1B4D38958);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B4BBA874();
  v23 = v8;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v13 = v11;
    v15 = v21;
    v14 = v22;
    v32 = 0;
    sub_1B4BBA91C();
    sub_1B4D18C0C();
    *v13 = v33;
    v31 = 1;
    sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968098]);
    sub_1B4D18C0C();
    (*(v14 + 32))(&v13[v9[5]], v6, v4);
    v29 = 2;
    sub_1B4B59BCC();
    v16 = v23;
    sub_1B4D18C0C();
    v13[v9[6]] = v30;
    v19 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v28 = 3;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    v17 = v19;
    *&v19[v9[7]] = v26;
    v27 = 4;
    v18 = sub_1B4D18C1C();
    (*(v15 + 8))(v16, v24);
    *(v17 + v9[8]) = v18;
    sub_1B4993B98(v17, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_1B4BBA970(v17);
  }
}

BOOL _s19FitnessIntelligence021WorkoutVoiceMilestoneC12DistanceFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v4[6]], a2[v4[6]]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *&a1[v5];
  v7 = *&a2[v5];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v12 = v6;
    v13 = v7;
    [v9 coordinate];
    v15 = v14;
    [v11 coordinate];
    if (v15 == v16)
    {
      [v9 coordinate];
      v18 = v17;
      [v11 coordinate];
      v20 = v19;

      if (v18 != v20)
      {
        return 0;
      }

      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  return 0;
}

unint64_t sub_1B4BBA874()
{
  result = qword_1EB8ABD30;
  if (!qword_1EB8ABD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD30);
  }

  return result;
}

unint64_t sub_1B4BBA8C8()
{
  result = qword_1EB8ABD38;
  if (!qword_1EB8ABD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD38);
  }

  return result;
}

unint64_t sub_1B4BBA91C()
{
  result = qword_1EB8ABD48;
  if (!qword_1EB8ABD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD48);
  }

  return result;
}

uint64_t sub_1B4BBA970(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4BBA9F4(uint64_t a1)
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

void sub_1B4BBAAF0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B498AFB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B4BBAB6C()
{
  result = qword_1EB8ABD60;
  if (!qword_1EB8ABD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD60);
  }

  return result;
}

unint64_t sub_1B4BBABC4()
{
  result = qword_1EB8ABD68;
  if (!qword_1EB8ABD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD68);
  }

  return result;
}

unint64_t sub_1B4BBAC1C()
{
  result = qword_1EB8ABD70;
  if (!qword_1EB8ABD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD70);
  }

  return result;
}

uint64_t sub_1B4BBAC70(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x4374756F6B726F77 && a2 == 0xEC000000746E756FLL)
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

uint64_t FitnessPlusPropertyRecord.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v38 - v4;
  v43 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v50 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v40 = a1[1];
  v41 = v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v15 + 28), v9, &qword_1EB8A7DC8, &qword_1B4D202B8);
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
    *(v20 + 1) = 0;
    v21 = v10[9];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
    (*(*(v22 - 8) + 56))(&v13[v21], 1, 1, v22);
    if (v16(v9, 1, v10) != 1)
    {
      sub_1B4975024(v9, &qword_1EB8A7DC8, &qword_1B4D202B8);
    }
  }

  else
  {
    sub_1B4BBB3E8(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  v23 = v45;
  FitnessPlusPropertyDimensions.init(_:)(v13, &v46);
  v24 = v50;
  if (v23)
  {
    return sub_1B4BBB388(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  }

  v26 = v46;
  v27 = BYTE1(v46);
  v45 = *(&v46 + 1);
  v38 = v48;
  v39 = v47;
  v28 = v49;
  sub_1B4974FBC(a1 + *(v15 + 32), v5, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v29 = *(v24 + 48);
  v30 = v43;
  if (v29(v5, 1, v43) == 1)
  {
    v31 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    v32 = *(*(v31 - 8) + 56);
    v50 = v28;
    v33 = v30;
    v34 = v44;
    v32(v44, 1, 1, v31);
    sub_1B4D17BBC();
    v35 = v29(v5, 1, v33);
    v28 = v50;
    if (v35 != 1)
    {
      sub_1B4975024(v5, &qword_1EB8A7DB8, &unk_1B4D27B10);
    }
  }

  else
  {
    v34 = v44;
    sub_1B4BBB3E8(v5, v44, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  static FitnessPlusPropertySerialization.from(_:)(v34, &v46);
  sub_1B4BBB388(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  sub_1B4BBB388(v34, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v36 = v42;
  result = sub_1B496F398(&v46, v42 + 48);
  v37 = v40;
  *v36 = v41;
  *(v36 + 8) = v37;
  *(v36 + 16) = v26;
  *(v36 + 17) = v27;
  *(v36 + 24) = v45;
  LOBYTE(v37) = v38;
  *(v36 + 32) = v39;
  *(v36 + 33) = v37;
  *(v36 + 40) = v28;
  return result;
}

uint64_t sub_1B4BBB388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BBB3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FitnessPlusPropertyRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4BBB97C(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BBB4F8(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a2;
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 33);
  v16 = *(a2 + 40);
  v25 = *(a2 + 16);
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  sub_1B4BBB97C(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v24 = v6;
    v30 = v5;
    v18 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
    v19 = *(v18 + 28);
    sub_1B4975024(&a1[v19], &qword_1EB8A7DC8, &qword_1B4D202B8);
    sub_1B4BBB3E8(v12, &a1[v19], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    (*(v10 + 56))(&a1[v19], 0, 1, v9);
    v20 = *(a2 + 72);
    v21 = *(a2 + 80);
    __swift_project_boxed_opaque_existential_1((a2 + 48), v20);
    FitnessPlusProperty.protobuf()(v20, v21);
    v22 = *(v18 + 32);
    sub_1B4975024(&a1[v22], &qword_1EB8A7DB8, &unk_1B4D27B10);
    sub_1B4BBB3E8(v8, &a1[v22], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
    return (*(v24 + 56))(&a1[v22], 0, 1, v30);
  }

  return result;
}

uint64_t sub_1B4BBB884()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4BBB97C(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BBB97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B4BBB9DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4D1781C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  *(v2 + 16) = v8;
  v9 = v8;
  sub_1B4D177DC();
  v10 = sub_1B4D177EC();
  (*(v5 + 8))(v7, v4);
  [v9 setLocale_];

  [*(v2 + 16) setUnitStyle_];
  [*(v2 + 16) setUnitOptions_];
  result = [*(v2 + 16) numberFormatter];
  if (result)
  {
    v12 = result;
    [result setRoundingMode_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BBBB70()
{

  return swift_deallocClassInstance();
}

uint64_t static FitnessPlusBestWorkoutPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 32))(&v30, v14, v15);
  if (v30 > 8u || ((1 << v30) & 0x131) == 0)
  {
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 72))(v18, v19);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      (*(v8 + 16))(v10, v13, v7);
      v20 = a1[3];
      v21 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v20);
      v22 = (*(v21 + 40))(v20, v21);
      v24 = v23;
      sub_1B4BBBFA0();
      v25 = [swift_getObjCClassFromMetadata() baseUnit];
      sub_1B4D1745C();

      v26 = *(v8 + 8);
      v26(v10, v7);
      v26(v13, v7);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
      v28 = (a2 + *(v27 + 28));
      *v28 = v22;
      v28[1] = v24;
      return (*(*(v27 - 8) + 56))(a2, 0, 1, v27);
    }

    sub_1B4BBBF38(v6);
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
}

uint64_t sub_1B4BBBF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BBBFA0()
{
  result = qword_1EDC378C8;
  if (!qword_1EDC378C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC378C8);
  }

  return result;
}

unint64_t sub_1B4BBBFEC(uint64_t a1)
{
  result = sub_1B4A28310();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BBC018()
{
  result = qword_1EB8ABD78;
  if (!qword_1EB8ABD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6D88, &unk_1B4D208C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD78);
  }

  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.init(value:timescale:activityType:workoutCount:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  *a5 = 1;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  result = (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
  a5[v10[6]] = v9;
  *&a5[v10[7]] = a3;
  *&a5[v10[8]] = a4;
  return result;
}

uint64_t type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(uint64_t a1)
{
  result = qword_1EB8ABD98;
  if (!qword_1EB8ABD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WorkoutVoiceMilestoneWorkoutDurationFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0) + 28));

  return v1;
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_1B4BBC2D4(uint64_t a1)
{
  v2 = sub_1B4BBCD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BBC310(uint64_t a1)
{
  v2 = sub_1B4BBCD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD80, &unk_1B4D38C28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BBCD10();
  sub_1B4D18EFC();
  v20 = *v3;
  v19 = 0;
  sub_1B4BBA8C8();
  sub_1B4D18D0C();
  if (!v2)
  {
    v12 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968078]);
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
    sub_1B4D18D1C();
  }

  return (*(v6 + 8))(v8, v5);
}

void WorkoutVoiceMilestoneWorkoutDurationFact.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD90, &qword_1B4D38C38);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v19 - v7;
  v9 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B4BBCD10();
  v23 = v8;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v13 = v11;
    v15 = v21;
    v14 = v22;
    v32 = 0;
    sub_1B4BBA91C();
    sub_1B4D18C0C();
    *v13 = v33;
    v31 = 1;
    sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968098]);
    sub_1B4D18C0C();
    (*(v14 + 32))(&v13[v9[5]], v6, v4);
    v29 = 2;
    sub_1B4B59BCC();
    v16 = v23;
    sub_1B4D18C0C();
    v13[v9[6]] = v30;
    v19 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v28 = 3;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80, &protocol conformance descriptor for CodableBridging<A>);
    sub_1B4D18C0C();
    v17 = v19;
    *&v19[v9[7]] = v26;
    v27 = 4;
    v18 = sub_1B4D18C1C();
    (*(v15 + 8))(v16, v24);
    *(v17 + v9[8]) = v18;
    sub_1B4BBCD64(v17, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    sub_1B4BBCDC8(v17);
  }
}

BOOL _s19FitnessIntelligence021WorkoutVoiceMilestoneC12DurationFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10, MEMORY[0x1E6968090]);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v4[6]], a2[v4[6]]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *&a1[v5];
  v7 = *&a2[v5];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8 && (v9 = v8, objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0))
  {
    v11 = v10;
    v12 = v6;
    v13 = v7;
    [v9 coordinate];
    v15 = v14;
    [v11 coordinate];
    if (v15 == v16)
    {
      [v9 coordinate];
      v18 = v17;
      [v11 coordinate];
      v20 = v19;

      if (v18 != v20)
      {
        return 0;
      }

      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  return 0;
}

unint64_t sub_1B4BBCD10()
{
  result = qword_1EB8ABD88;
  if (!qword_1EB8ABD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD88);
  }

  return result;
}

uint64_t sub_1B4BBCD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BBCDC8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4BBCE4C(uint64_t a1)
{
  sub_1B4BBAAF0(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
  if (v1 <= 0x3F)
  {
    sub_1B4BBAAF0(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4BBCF5C()
{
  result = qword_1EB8ABDA8;
  if (!qword_1EB8ABDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDA8);
  }

  return result;
}

unint64_t sub_1B4BBCFB4()
{
  result = qword_1EB8ABDB0;
  if (!qword_1EB8ABDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDB0);
  }

  return result;
}

unint64_t sub_1B4BBD00C()
{
  result = qword_1EB8ABDB8;
  if (!qword_1EB8ABDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDB8);
  }

  return result;
}

uint64_t static FitnessPlusWorkoutCountByTrainerPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X8>)
{
  if (*a2 == 4)
  {
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if ((v5 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v14, v7, v8);
  v13 = v14;

  sub_1B4BBD2A0(&v13);

  v9 = v13;
  if (*(v13 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABDC0, &unk_1B4D38E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = v9;
    v11 = inited + 32;
    *(inited + 40) = 1;
    v12 = sub_1B4C98560(inited);
    swift_setDeallocating();
    result = sub_1B4BBDCD8(v11);
    *a3 = v12;
    a3[1] = 0;
  }

  else
  {

    result = sub_1B4C98560(MEMORY[0x1E69E7CC0]);
    *a3 = result;
    a3[1] = 1;
  }

  return result;
}

uint64_t sub_1B4BBD2A0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE52C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4BBD30C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4BBD30C(uint64_t *a1)
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
      sub_1B4BBD4D4(v7, v8, a1, v4);
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
    return sub_1B4BBD404(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4BBD404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B4D18DCC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BBD4D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B4CDDE84(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B4BBDAB0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B4D18DCC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B4D18DCC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B4A1D58C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B4BBDAB0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B4CDDE84(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B4CDDDF8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B4D18DCC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_1B4BBDAB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B4D18DCC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B4BBDCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABDC8, &qword_1B4D47240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BBDD40(uint64_t a1)
{
  result = sub_1B4A28A04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BBDD6C()
{
  result = qword_1EB8ABDD0;
  if (!qword_1EB8ABDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABDD8, &qword_1B4D38E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDD0);
  }

  return result;
}

unint64_t sub_1B4BBDDF4(uint64_t a1)
{
  result = sub_1B4A28C04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BBDE44()
{
  result = qword_1EB8ABDE0;
  if (!qword_1EB8ABDE0)
  {
    type metadata accessor for PerfectWeekRingStatusFact(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDE0);
  }

  return result;
}

unint64_t sub_1B4BBDEA0()
{
  result = qword_1EB8ABDE8;
  if (!qword_1EB8ABDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDE8);
  }

  return result;
}

uint64_t sub_1B4BBDEF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v4 = "on";
  }

  else
  {
    v4 = "s <ring_percentage>.";
  }

  if (*a2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (*a2)
  {
    v6 = "s <ring_percentage>.";
  }

  else
  {
    v6 = "on";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B4D18DCC();
  }

  return v8 & 1;
}

uint64_t sub_1B4BBDF9C()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BBE018(uint64_t a1)
{
  sub_1B4D1820C();
}

uint64_t sub_1B4BBE080(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BBE0F8@<X0>(char *a2@<X8>)
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

void sub_1B4BBE158(unint64_t *a1@<X8>)
{
  v2 = "s <ring_percentage>.";
  v3 = 0xD000000000000016;
  if (!*v1)
  {
    v3 = 0xD000000000000017;
    v2 = "on";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1B4BBE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1B49AA274;

  return sub_1B4BBE388(a1, a3);
}

unint64_t sub_1B4BBE258(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BBE288();
  result = sub_1B4BBE2DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BBE288()
{
  result = qword_1EB8ABDF0;
  if (!qword_1EB8ABDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDF0);
  }

  return result;
}