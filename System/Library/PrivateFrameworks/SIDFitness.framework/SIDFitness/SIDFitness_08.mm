uint64_t sub_262A1EF64(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[48 * v9] <= a4)
    {
      memmove(a4, __dst, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 < 48)
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

      if (*(v6 + 1) < *(v4 + 1))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 48;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 2);
    *(v7 + 1) = *(v13 + 1);
    *(v7 + 2) = v16;
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[48 * v11] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v12 = &v4[48 * v11];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 48;
    do
    {
      v17 = v5 + 48;
      if (*(v12 - 5) < *(v6 - 5))
      {
        v21 = v6 - 48;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v23;
          *v5 = v22;
        }

        if (v12 <= v4 || (v6 -= 48, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 48;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 1);
        *(v5 + 1) = *(v12 - 2);
        *(v5 + 2) = v20;
        *v5 = v19;
      }

      v5 -= 48;
      v12 -= 48;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v25 = (v24 >> 3) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[48 * v25])
  {
    memmove(v6, v4, 48 * v25);
  }

  return 1;
}

uint64_t sub_262A1F1A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_262A1F22C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_262A1F428(uint64_t a1)
{
  v5 = v1;
  v62 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v62);
  v79 = (&v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_2629AC1C8(&unk_287533A20);
  v8 = &unk_287533CE0;
  v9 = sub_2629AC5B8(&unk_287533CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
  swift_arrayDestroy();
  v11 = *(a1 + 16);
  v68 = OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_logger;
  v59 = a1;
  if (v11)
  {
    v12 = 0;
    v65 = "Failed to find item: ";
    v66 = 0x8000000262A344C0;
    v13 = a1 + 56;
    v14 = MEMORY[0x277D84F90];
    *&v10 = 136446210;
    v61 = v10;
    v58 = v1;
    v57 = v9;
    v67 = v11;
    v56 = v13;
    do
    {
      v60 = v14;
      v15 = (v13 + 32 * v12);
      while (1)
      {
        if (v12 >= v11)
        {
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v3 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_47;
        }

        v8 = *(v15 - 3);
        v16 = *(v15 - 2);
        v2 = *(v15 - 1);
        v17 = *v15;
        swift_bridgeObjectRetain_n();

        v4 = v17;
        v18 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0(v2, v17);
        v72 = v12 + 1;
        if (v18 != 14)
        {
          if (*(v63 + 16))
          {
            v20 = sub_2629CB1E4(v18, v19);
            if (v21)
            {
              break;
            }
          }
        }

        v73 = 0;
        v74 = 0xE000000000000000;
        sub_262A2A6F8();

        v77 = 0xD000000000000015;
        v78 = v66;
        v73 = v8;
        v74 = v16;
        v75 = v2;
        v76 = v17;
        v71 = v17;
        v22 = SIDWorkoutPlanScheduledItem.description.getter();
        v4 = v16;
        MEMORY[0x26672ECF0](v22);

        MEMORY[0x26672ECF0](0xD00000000000001ALL, v65 | 0x8000000000000000);
        v2 = v78;
        v70 = v77;
        v8 = v69;
        v5 = v79;
        sub_2629B17C0(&v69[v68], v79);

        v23 = sub_262A2A2D8();
        v3 = sub_262A2A5E8();

        if (os_log_type_enabled(v23, v3))
        {
          v24 = swift_slowAlloc();
          v64 = v4;
          v4 = v24;
          v5 = swift_slowAlloc();
          v77 = v5;
          *v4 = v61;
          v73 = 91;
          v74 = 0xE100000000000000;
          sub_262A2A018();
          sub_2629B1880();
          v25 = sub_262A2A868();
          MEMORY[0x26672ECF0](v25);

          MEMORY[0x26672ECF0](8285, 0xE200000000000000);
          MEMORY[0x26672ECF0](v70, v2);
          v26 = v73;
          v27 = v74;
          sub_262A184BC(v79, type metadata accessor for PersistentLogger);
          v8 = sub_262A1D0CC(v26, v27, &v77);

          *(v4 + 4) = v8;
          _os_log_impl(&dword_2629A3000, v23, v3, "%{public}s", v4, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v5);
          MEMORY[0x26672F820](v5, -1, -1);
          MEMORY[0x26672F820](v4, -1, -1);
        }

        else
        {

          sub_262A184BC(v5, type metadata accessor for PersistentLogger);
        }

        ++v12;
        v15 += 4;
        v11 = v67;
        if (v72 == v67)
        {
          v5 = v58;
          v14 = v60;
          goto LABEL_21;
        }
      }

      v64 = v16;
      v71 = *(*(v63 + 56) + 8 * v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_2629A9364(0, v60[2] + 1, 1, v60);
      }

      v5 = v58;
      v3 = v60[2];
      v28 = v60[3];
      if (v3 >= v28 >> 1)
      {
        v60 = sub_2629A9364((v28 > 1), v3 + 1, 1, v60);
      }

      v29 = v60;
      v60[2] = v3 + 1;
      v30 = &v29[6 * v3];
      v14 = v29;
      v31 = v71;
      v30[4] = v12;
      v30[5] = v31;
      v32 = v64;
      v30[6] = v8;
      v30[7] = v32;
      v30[8] = v2;
      v30[9] = v4;
      v12 = v72;
      v13 = v56;
    }

    while (v72 != v11);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_21:

  v73 = v14;

  sub_262A1E824(&v73);
  v11 = v5;
  if (v5)
  {
LABEL_55:
    MEMORY[0x26672F6A0](v11);

    __break(1u);
    goto LABEL_56;
  }

  v33 = v73;
  v2 = *(v73 + 16);
  if (v2)
  {
    v70 = 0;
    v11 = 0;
    v71 = &v69[OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_planGenerationContext];
    v79 = (v73 + 32);
    while (v11 < *(v33 + 16))
    {
      v34 = &v79[6 * v11];
      v72 = *v34;
      v35 = v34[2];
      v8 = v34[3];
      v4 = v34[4];
      v3 = v34[5];
      swift_bridgeObjectRetain_n();

      v5 = sub_262A2A788();

      if (v5 <= 0xD)
      {
        v36 = *(v71 + *(type metadata accessor for PlanGenerationContext(0) + 92));
        if (*(v36 + 16))
        {
          v38 = sub_2629CB1E4(v5, v37);
          if (v39)
          {
            v40 = *(*(v36 + 56) + 8 * v38);
            v41 = *(v40 + 16);
            if (v41)
            {
              v42 = 0;
              v5 = (v40 + 32);
              while (*(v40 + 8 * v42 + 32) != v35)
              {
                if (v41 == ++v42)
                {
                  goto LABEL_24;
                }
              }

              v43 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                goto LABEL_49;
              }

              if (v43 < v41)
              {

                if ((v43 & 0x8000000000000000) != 0)
                {
                  goto LABEL_50;
                }

                v2 = v59;
                if (v43 >= *(v40 + 16))
                {
                  goto LABEL_51;
                }

                v5 = v5[v43];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  goto LABEL_52;
                }

                v44 = v72;
                if ((v72 & 0x8000000000000000) != 0)
                {
                  goto LABEL_53;
                }

                goto LABEL_40;
              }
            }
          }
        }
      }

LABEL_24:
      ++v11;

      if (v11 == v2)
      {

        v11 = v70;
        goto LABEL_44;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    v2 = sub_262A1F240(v2);
    v44 = v72;
    if ((v72 & 0x8000000000000000) != 0)
    {
LABEL_53:
      __break(1u);
    }

    else
    {
LABEL_40:
      if (v44 < *(v2 + 2))
      {
        v45 = &v2[32 * v44];
        *(v45 + 4) = v5;
        *(v45 + 5) = v8;
        *(v45 + 6) = v4;
        *(v45 + 7) = v3;

        return;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_44:
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000003FLL, 0x8000000262A34500);
  v46 = MEMORY[0x26672EDD0](v59, &type metadata for SIDWorkoutPlanScheduledItem);
  MEMORY[0x26672ECF0](v46);

  MEMORY[0x26672ECF0](0xD000000000000033, 0x8000000262A34540);
  v47 = v69;
  sub_2629EA8C8(v73, v74);

  v48 = *&v47[OBJC_IVAR____TtC10SIDFitness40OnboardedUserStretchPlanDurationStrategy_operationTracker];
  sub_2629B3A24();
  v49 = swift_allocError();
  *v50 = 3;
  LOBYTE(v73) = 8;
  v3 = *(v48 + 16);
  v51 = MEMORY[0x28223BE20](v49);
  *(&v55 - 4) = v48;
  *(&v55 - 3) = 0;
  *(&v55 - 2) = v51;
  *(&v55 - 1) = &v73;
  MEMORY[0x28223BE20](v51);
  *(&v55 - 2) = sub_2629B3A78;
  *(&v55 - 1) = v52;

  os_unfair_lock_lock((v3 + 16));
  sub_2629B3A9C(v53);
  if (!v11)
  {
    os_unfair_lock_unlock((v3 + 16));

    MEMORY[0x26672F6A0](v49);
    swift_allocError();
    *v54 = 3;
    swift_willThrow();
    return;
  }

LABEL_56:
  os_unfair_lock_unlock((v3 + 16));
  __break(1u);
}

uint64_t sub_262A1FD14(uint64_t *a1)
{
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000002ELL, 0x8000000262A32DA0);
  v2 = *a1;
  v3 = type metadata accessor for SIDWorkoutPlanType(0);
  v4 = MEMORY[0x26672EDD0](v2, v3);
  MEMORY[0x26672ECF0](v4);

  MEMORY[0x26672ECF0](0x63697274656D202CLL, 0xEB00000000203A73);
  type metadata accessor for SIDPersonalizedPlanResponse(0);
  type metadata accessor for SIDMetrics(0);
  sub_262A2A738();
  MEMORY[0x26672ECF0](10506, 0xE200000000000000);
  MEMORY[0x26672ECF0](0, 0xE000000000000000);
}

uint64_t sub_262A1FE30(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2629C24D0();
  result = MEMORY[0x26672EE50](v2, &type metadata for SIDWorkoutModality, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_262A22FB4(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262A1FF28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ResultPostProcessor(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeuristicsProcessor(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlanGenerationContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = sub_262A17A1C(0, 0);
  sub_262A17B14(0, 0, v17);
  sub_262A27404(v17, v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);
  *(v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_operationTracker) = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, v14);
  sub_262A27404(v14, v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);

  sub_262A17B14(0, 0, v11);
  *&v11[v9[7]] = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, &v11[v9[8]]);
  *&v11[v9[9]] = a1;
  sub_262A27404(v11, v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_heuristicsProcessor, type metadata accessor for HeuristicsProcessor);
  sub_262A17B14(0, 0, v7);
  *&v7[v5[7]] = sub_262A17CDC(0, 0);
  sub_262A17DD4(0, 0, &v7[v5[8]]);
  *&v7[v5[9]] = a1;
  sub_262A27404(v7, v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  return v2;
}

uint64_t sub_262A201F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v5[27] = swift_task_alloc();
  v5[28] = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for ConsistentWorkoutPlanResult(0);
  v5[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v5[32] = swift_task_alloc();
  v6 = type metadata accessor for SIDUserOnboardingData(0);
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_262A2038C, 0, 0);
}

uint64_t sub_262A2038C()
{
  v52 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 192);
  *(v0 + 288) = OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_logger;
  sub_2629EA8C8(0xD000000000000044, 0x8000000262A345C0);
  v5 = type metadata accessor for FitnessPlanUser(0);
  *(v0 + 296) = v5;
  sub_262A228A0(v4 + *(v5 + 28), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2629ADF2C(*(v0 + 256), &qword_27FF3C948, &unk_262A30B40);
LABEL_7:
    v19 = *(*(v0 + 208) + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_operationTracker);
    sub_2629B3A24();
    v20 = swift_allocError();
    *v21 = 5;
    *(v0 + 480) = 2;
    v22 = *(v19 + 16);
    v23 = swift_task_alloc();
    v23[2] = v19;
    v23[3] = 0;
    v23[4] = v20;
    v23[5] = v0 + 480;
    v24 = swift_task_alloc();
    *(v24 + 16) = sub_2629B3A78;
    *(v24 + 24) = v23;

    os_unfair_lock_lock(v22 + 4);
    sub_2629B3A9C(v25);
    os_unfair_lock_unlock(v22 + 4);

    MEMORY[0x26672F6A0](v20);
    sub_2629EA8B0(0xD000000000000029, 0x8000000262A33020);
    sub_2629EA8C8(0xD000000000000038, 0x8000000262A34440);
    type metadata accessor for HeuristicsProcessor(0);
    type metadata accessor for ColdStartUserWorkoutPlanStrategy(0);
    swift_allocObject();

    *(v0 + 424) = sub_262A16B30(v26);
    v27 = swift_task_alloc();
    *(v0 + 432) = v27;
    *v27 = v0;
    v28 = sub_262A21AE4;
LABEL_9:
    v27[1] = v28;
    v30 = *(v0 + 192);
    v31 = *(v0 + 176);
    v32 = *(v0 + 184);

    return sub_262A16D3C(v31, v32, v30);
  }

  v6 = *(v0 + 280);
  v7 = *(v0 + 264);
  sub_262A27404(*(v0 + 256), v6, type metadata accessor for SIDUserOnboardingData);
  v8 = *(v6 + *(v7 + 20));
  if (!*(v8 + 16))
  {
    sub_262A27330(*(v0 + 280), type metadata accessor for SIDUserOnboardingData);
    goto LABEL_7;
  }

  v9 = *(v0 + 208);
  sub_262A2A6F8();

  strcpy(v47.i8, "User selected ");
  v47.i8[15] = -18;
  *(v0 + 128) = *(v8 + 16);
  swift_bridgeObjectRetain_n();
  v10 = sub_262A2A868();
  MEMORY[0x26672ECF0](v10);

  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34610);
  *(v0 + 136) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CEA8, &qword_262A31058);
  sub_262A26B74();
  sub_2629FF0B0();
  v11 = sub_262A2A4E8();
  v13 = v12;

  MEMORY[0x26672ECF0](v11, v13);

  sub_2629EA8C8(v47.i64[0], v47.i64[1]);

  v14 = sub_262A26F08(v8, v9);

  if (!*(v14 + 16))
  {

    sub_2629EAAEC(0xD00000000000006BLL, 0x8000000262A347B0);
    sub_2629EA8C8(0xD000000000000038, 0x8000000262A34440);
    type metadata accessor for HeuristicsProcessor(0);
    type metadata accessor for ColdStartUserWorkoutPlanStrategy(0);
    swift_allocObject();

    *(v0 + 400) = sub_262A16B30(v29);
    v27 = swift_task_alloc();
    *(v0 + 408) = v27;
    *v27 = v0;
    v28 = sub_262A21848;
    goto LABEL_9;
  }

  sub_262A2A6F8();

  v15 = sub_262A2A5A8();
  MEMORY[0x26672ECF0](v15);

  sub_2629EA8C8(0xD00000000000002BLL, 0x8000000262A34630);

  *(v0 + 304) = OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_heuristicsProcessor;
  v16 = sub_2629F5AF4(v14);

  sub_262A2A6F8();

  strcpy(v47.i8, "Selected ");
  v47.i16[5] = 0;
  v47.i32[3] = -385875968;
  *(v0 + 144) = *(v16 + 16);
  v17 = sub_262A2A868();
  MEMORY[0x26672ECF0](v17);

  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A34660);
  *(v0 + 152) = v16;
  v18 = sub_262A2A4E8();
  MEMORY[0x26672ECF0](v18);

  sub_2629EA8C8(v47.i64[0], v47.i64[1]);

  sub_2629EB568(v16, &v47);
  v45 = *(v0 + 184);

  v34 = v47;
  *(v0 + 312) = v47;
  v35 = v48;
  v36 = v49;
  *(v0 + 328) = v48;
  *(v0 + 336) = v36;
  v38 = v50;
  v37 = v51;
  *(v0 + 344) = v50;
  *(v0 + 352) = v37;
  v47.i64[0] = 0;
  v47.i64[1] = 0xE000000000000000;
  sub_262A2A6F8();
  v46 = v47;
  MEMORY[0x26672ECF0](0xD000000000000034, 0x8000000262A346D0);
  v47 = v34;
  v48 = v35;
  v49 = v36;
  v50 = v38;
  v51 = v37;
  v39 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v39);

  sub_2629EA8C8(v46.i64[0], v46.i64[1]);

  *(v0 + 16) = v34;
  *(v0 + 32) = v35;
  *(v0 + 40) = v36;
  *(v0 + 48) = v38;
  *(v0 + 56) = v37;
  v40 = v45 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v41 = (v40 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 48));
  v42 = *v41;
  v43 = v41[1];
  v44 = swift_task_alloc();
  *(v0 + 360) = v44;
  *v44 = v0;
  v44[1] = sub_262A20DDC;

  return sub_2629EC0E8(v0 + 16, v42, v43);
}

uint64_t sub_262A20DDC(char a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_262A21FEC;
  }

  else
  {
    *(v4 + 482) = a1;
    v5 = sub_262A20F04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_262A20F04()
{
  v1 = *(v0 + 482);
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000002ALL, 0x8000000262A34710);
  v2 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v2);

  MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A34740);
  v3 = qword_262A31098[v1];
  v5 = *(v0 + 344);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  *(v0 + 168) = v3;
  v7 = sub_262A2A868();
  MEMORY[0x26672ECF0](v7);

  sub_2629EA8C8(0, 0xE000000000000000);

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000032, 0x8000000262A34770);
  v8 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v8);

  sub_2629EA8C8(0, 0xE000000000000000);

  *(v0 + 376) = OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_resultPostProcessor;
  *(v0 + 64) = v3;
  *(v0 + 72) = v3;
  *(v0 + 80) = v6;
  *(v0 + 88) = v3;
  *(v0 + 96) = v5;
  *(v0 + 104) = v4;
  v9 = swift_task_alloc();
  *(v0 + 384) = v9;
  *v9 = v0;
  v9[1] = sub_262A21168;
  v10 = *(v0 + 248);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);

  return sub_262A06214(v10, v0 + 64, v11, v12);
}

uint64_t sub_262A21168()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_262A22290;
  }

  else
  {

    v2 = sub_262A21290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262A21290()
{
  v35 = v0[37];
  v43 = v0[35];
  v1 = v0[31];
  v44 = v1;
  v2 = v0[29];
  v39 = v0[30];
  v41 = v0[28];
  v3 = v0[26];
  v47 = v0[27];
  v42 = v0[23];
  v45 = v0[22];
  v46 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF38, &unk_262A2B3E0);
  v4 = type metadata accessor for SIDWorkoutPlanType(0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_262A2EA00;
  v8 = v7 + v6;
  sub_262A181C8(v1, v7 + v6);
  v37 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v9 = *(*(v37 - 8) + 56);
  v9(v8, 0, 1, v37);
  v9(v8 + v5, 1, 1, v37);
  sub_262A2A6F8();

  v10 = MEMORY[0x26672EDD0](v7, v4);
  MEMORY[0x26672ECF0](v10);

  sub_2629EA8C8(0xD000000000000011, 0x8000000262A33FF0);

  v11 = *(v46 + *(v35 + 36));
  v12 = v45 + *(type metadata accessor for SIDPersonalizedPlanResponse(0) + 20);
  sub_262A2A008();
  v13 = *(v46 + *(v35 + 32));
  v14 = type metadata accessor for SIDMetrics(0);
  *&v12[*(v14 + 20)] = v11;
  *&v12[*(v14 + 24)] = v13;
  *v45 = v7;

  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001FLL, 0x8000000262A34010);
  sub_262A1FD14(v45);
  sub_2629EA8C8(0, 0xE000000000000000);

  sub_2629EA8C8(0xD00000000000001DLL, 0x8000000262A34030);
  v15 = v44 + *(v39 + 20);
  v40 = *v15;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);

  v36 = sub_262A26C70(v18);

  v19 = *(v37 + 32);
  v20 = sub_262A2A018();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v47, v44 + v19, v20);
  v22 = *(v21 + 56);
  v22(v47, 0, 1, v20);
  v34 = *(v15 + 32);
  v23 = SIDWorkoutPlanSchedule.metricScaffold.getter();
  sub_2629E6220(v23);
  v33 = v24;

  v25 = *(v15 + 40);
  LOBYTE(v15) = *(v15 + 48);
  v31 = v25;
  v32 = *(v44 + 40);
  v26 = *(v44 + 56);
  v27 = v41[12];
  v22(v2 + v27, 1, 1, v20);
  v28 = v41[14];
  v38 = v2 + v41[13];
  v22(v2 + v28, 1, 1, v20);
  *v2 = v40;
  *(v2 + 8) = v16;
  *(v2 + 16) = v17;
  *(v2 + 24) = v36;

  sub_2629BEB44(v47, v2 + v27);
  *(v2 + 32) = v34;
  *(v2 + v41[15]) = v33;
  *(v2 + 40) = v31;
  *(v2 + 48) = v15;
  *(v2 + v41[16]) = v32;
  *(v2 + 49) = 0;
  *(v2 + 56) = v26;
  sub_2629ADF2C(v2 + v28, &unk_27FF3CD10, &qword_262A2D5B0);
  v22(v2 + v28, 1, 1, v20);
  sub_2629ADF2C(v47, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v2 + v41[17]) = MEMORY[0x277D84F90];
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_262A09FD0(*(v3 + 16), v42, v46, v45, v2);
  sub_262A27330(v2, type metadata accessor for SIDMetricCreatePlanScaffold);
  sub_262A27330(v44, type metadata accessor for ConsistentWorkoutPlanResult);
  sub_262A27330(v43, type metadata accessor for SIDUserOnboardingData);

  v29 = v0[1];

  return v29();
}

uint64_t sub_262A21848()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_262A21A1C;
  }

  else
  {
    v2 = sub_262A2195C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262A2195C()
{
  v1 = *(v0 + 280);

  sub_262A27330(v1, type metadata accessor for SIDUserOnboardingData);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_262A21A1C()
{
  v1 = *(v0 + 280);

  sub_262A27330(v1, type metadata accessor for SIDUserOnboardingData);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_262A21AE4()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_262A21C98;
  }

  else
  {
    v2 = sub_262A21BF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262A21BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_262A21C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_262A21D40()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_262A21F1C;
  }

  else
  {
    v2 = sub_262A21E54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262A21E54()
{
  v1 = v0[56];
  v2 = v0[35];

  MEMORY[0x26672F6A0](v1);
  sub_262A27330(v2, type metadata accessor for SIDUserOnboardingData);

  v3 = v0[1];

  return v3();
}

uint64_t sub_262A21F1C()
{
  v1 = v0[56];
  v2 = v0[35];

  MEMORY[0x26672F6A0](v1);
  sub_262A27330(v2, type metadata accessor for SIDUserOnboardingData);

  v3 = v0[1];

  return v3();
}

uint64_t sub_262A21FEC()
{

  v1 = *(v0 + 368);
  *(v0 + 448) = v1;
  v2 = *(v0 + 208);
  sub_262A2A6F8();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000002DLL, 0x8000000262A34680);
  *(v0 + 160) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A346B0);
  sub_2629EA8B0(*(v0 + 112), *(v0 + 120));

  v3 = *(v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_operationTracker);
  *(v0 + 481) = 6;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 481;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629B3BF4;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2629B3C0C(v7);
  os_unfair_lock_unlock(v4 + 4);

  sub_2629EA8C8(0xD000000000000038, 0x8000000262A34440);
  type metadata accessor for HeuristicsProcessor(0);
  type metadata accessor for ColdStartUserWorkoutPlanStrategy(0);
  swift_allocObject();

  *(v0 + 456) = sub_262A16B30(v8);
  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *v9 = v0;
  v9[1] = sub_262A21D40;
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);

  return sub_262A16D3C(v11, v12, v10);
}

uint64_t sub_262A22290()
{

  v1 = *(v0 + 392);
  *(v0 + 448) = v1;
  v2 = *(v0 + 208);
  sub_262A2A6F8();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD00000000000002DLL, 0x8000000262A34680);
  *(v0 + 160) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  MEMORY[0x26672ECF0](0xD00000000000001CLL, 0x8000000262A346B0);
  sub_2629EA8B0(*(v0 + 112), *(v0 + 120));

  v3 = *(v2 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_operationTracker);
  *(v0 + 481) = 6;
  v4 = *(v3 + 16);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v0 + 481;
  v6 = swift_task_alloc();
  *(v6 + 16) = sub_2629B3BF4;
  *(v6 + 24) = v5;

  os_unfair_lock_lock(v4 + 4);
  sub_2629B3C0C(v7);
  os_unfair_lock_unlock(v4 + 4);

  sub_2629EA8C8(0xD000000000000038, 0x8000000262A34440);
  type metadata accessor for HeuristicsProcessor(0);
  type metadata accessor for ColdStartUserWorkoutPlanStrategy(0);
  swift_allocObject();

  *(v0 + 456) = sub_262A16B30(v8);
  v9 = swift_task_alloc();
  *(v0 + 464) = v9;
  *v9 = v0;
  v9[1] = sub_262A21D40;
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);

  return sub_262A16D3C(v11, v12, v10);
}

uint64_t sub_262A22534()
{
  swift_unknownObjectRelease();
  sub_262A27330(v0 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_logger, type metadata accessor for PersistentLogger);

  sub_262A27330(v0 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_planGenerationContext, type metadata accessor for PlanGenerationContext);
  sub_262A27330(v0 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_resultPostProcessor, type metadata accessor for ResultPostProcessor);
  sub_262A27330(v0 + OBJC_IVAR____TtC10SIDFitness32OnboardedUserWorkoutPlanStrategy_heuristicsProcessor, type metadata accessor for HeuristicsProcessor);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardedUserWorkoutPlanStrategy(uint64_t a1)
{
  result = qword_27FF3CE90;
  if (!qword_27FF3CE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A22684(uint64_t a1)
{
  result = type metadata accessor for PersistentLogger(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PlanGenerationContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ResultPostProcessor(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for HeuristicsProcessor(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_262A227DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2629A88B4;

  return sub_262A201F4(a1, a2, a3, a4);
}

uint64_t sub_262A228A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A22910(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_262A2A998();
  sub_262A2A448();
  v8 = sub_262A2A9D8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_262A2A878() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_262A24254(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_262A22A60(uint64_t a1, __int128 *a2)
{
  v4 = *v2;
  v5 = a2[1];
  v53 = *a2;
  v54 = v5;
  v55 = a2[2];
  sub_262A2A998();
  SIDModalityPreference.hash(into:)(v52);
  v6 = sub_262A2A9D8();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v51 = v4 + 56;
  v46 = a2;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_47:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v53 = *v45;
    sub_262A2720C(v46, v52);
    sub_262A243D4(v46, v8, isUniquelyReferenced_nonNull_native);
    *v45 = v53;
    v42 = v46[1];
    *a1 = *v46;
    *(a1 + 16) = v42;
    *(a1 + 32) = v46[2];
    return 1;
  }

  v50 = ~v7;
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v48 = *(a2 + 4);
  v12 = *(v4 + 48);
  v44 = *(a2 + 5);
  v49 = *(a2 + 3);
  v43 = v4;
  while (1)
  {
    v13 = (v12 + 48 * v8);
    result = *v13;
    v16 = v13[2];
    v15 = v13[3];
    v18 = v13[4];
    v17 = v13[5];
    if (*v13 != v9 || v13[1] != v10)
    {
      result = sub_262A2A878();
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v20 = *(v16 + 16);
    if (v20 != *(v11 + 16))
    {
      goto LABEL_3;
    }

    if (v20 && v16 != v11)
    {
      break;
    }

LABEL_18:
    v24 = *(v15 + 16);
    if (v24 == *(v49 + 16))
    {
      if (!v24 || v15 == v49)
      {
LABEL_29:
        v28 = *(v18 + 16);
        if (v28 == *(v48 + 16))
        {
          if (!v28 || v18 == v48)
          {
LABEL_40:
            v32 = *(v17 + 16);
            if (v32 == *(v44 + 16))
            {
              if (!v32 || v17 == v44)
              {
LABEL_46:
                sub_262A27268(v46);
                v35 = (*(v43 + 48) + 48 * v8);
                v36 = v35[1];
                v37 = v35[2];
                v38 = v35[3];
                v39 = v35[4];
                v40 = v35[5];
                *a1 = *v35;
                *(a1 + 8) = v36;
                *(a1 + 16) = v37;
                *(a1 + 24) = v38;
                *(a1 + 32) = v39;
                *(a1 + 40) = v40;

                return 0;
              }

              v33 = (v17 + 32);
              v34 = (v44 + 32);
              while (*v33 == *v34)
              {
                ++v33;
                ++v34;
                if (!--v32)
                {
                  goto LABEL_46;
                }
              }
            }
          }

          else
          {
            v29 = (v18 + 40);
            v30 = (v48 + 40);
            while (1)
            {
              v31 = *(v29 - 1) == *(v30 - 1) && *v29 == *v30;
              if (!v31 && (sub_262A2A878() & 1) == 0)
              {
                break;
              }

              v29 += 2;
              v30 += 2;
              if (!--v28)
              {
                goto LABEL_40;
              }
            }
          }
        }
      }

      else
      {
        v25 = (v15 + 40);
        v26 = (v49 + 40);
        while (1)
        {
          v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
          if (!v27 && (sub_262A2A878() & 1) == 0)
          {
            break;
          }

          v25 += 2;
          v26 += 2;
          if (!--v24)
          {
            goto LABEL_29;
          }
        }
      }
    }

LABEL_3:
    v8 = (v8 + 1) & v50;
    if (((*(v51 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v22 = (v16 + 32);
  v23 = (v11 + 32);
  while (v20)
  {
    if (*v22 != *v23)
    {
      goto LABEL_3;
    }

    ++v22;
    ++v23;
    if (!--v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_262A22DDC(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_262A2A998();
  MEMORY[0x26672F240](a2);
  v6 = sub_262A2A9D8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_262A24734(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_262A22ED4(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_262A2A988();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_262A24894(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_262A22FB4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_262A2A998();
  SIDWorkoutModality.rawValue.getter(a2);
  sub_262A2A448();

  v5 = sub_262A2A9D8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_43:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v15;
    sub_262A249B4(a2, v7, isUniquelyReferenced_nonNull_native);
    *v15 = v17;
    result = 1;
    goto LABEL_46;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xEA00000000003638;
    v10 = 0x3932343038373431;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xEA00000000003937;
        goto LABEL_17;
      case 2:
        v9 = 0xEA00000000003438;
        goto LABEL_17;
      case 3:
        v9 = 0xEA00000000003238;
        goto LABEL_17;
      case 4:
        v9 = 0xEA00000000003633;
        v10 = 0x3532363037343631;
        break;
      case 5:
        v9 = 0xEA00000000003839;
        goto LABEL_13;
      case 6:
        v9 = 0xEA00000000003738;
        goto LABEL_17;
      case 7:
        v9 = 0xEA00000000003739;
        goto LABEL_13;
      case 8:
        v10 = 0x3932343038373431;
        v9 = 0xEA00000000003038;
        break;
      case 9:
        v9 = 0xEA00000000003639;
LABEL_13:
        v10 = 0x3332373831363531;
        break;
      case 0xA:
        v9 = 0xEA00000000003338;
        goto LABEL_17;
      case 0xB:
        v9 = 0xEA00000000003138;
        goto LABEL_17;
      case 0xC:
        v9 = 0xEA00000000003635;
        v10 = 0x3032383934393431;
        break;
      case 0xD:
        v9 = 0xEA00000000003538;
LABEL_17:
        v10 = 0x3932343038373431;
        break;
      default:
        break;
    }

    v11 = 0xEA00000000003638;
    switch(a2)
    {
      case 1:
        v11 = 0xEA00000000003937;
        goto LABEL_35;
      case 2:
        v11 = 0xEA00000000003438;
        goto LABEL_35;
      case 3:
        v11 = 0xEA00000000003238;
        goto LABEL_35;
      case 4:
        v11 = 0xEA00000000003633;
        if (v10 != 0x3532363037343631)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      case 5:
        v11 = 0xEA00000000003839;
        goto LABEL_30;
      case 6:
        v11 = 0xEA00000000003738;
        goto LABEL_35;
      case 7:
        v11 = 0xEA00000000003739;
        goto LABEL_30;
      case 8:
        v11 = 0xEA00000000003038;
        if (v10 != 0x3932343038373431)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      case 9:
        v11 = 0xEA00000000003639;
LABEL_30:
        if (v10 != 0x3332373831363531)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      case 10:
        v11 = 0xEA00000000003338;
        goto LABEL_35;
      case 11:
        v11 = 0xEA00000000003138;
        goto LABEL_35;
      case 12:
        v11 = 0xEA00000000003635;
        if (v10 != 0x3032383934393431)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      case 13:
        v11 = 0xEA00000000003538;
        goto LABEL_35;
      default:
LABEL_35:
        if (v10 != 0x3932343038373431)
        {
          goto LABEL_37;
        }

LABEL_36:
        if (v9 != v11)
        {
LABEL_37:
          v12 = sub_262A2A878();

          if (v12)
          {
            goto LABEL_45;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_43;
          }

          continue;
        }

LABEL_45:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_46:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_262A23364(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CEE0, &unk_262A31070);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_262A2A998();
      sub_262A2A448();
      result = sub_262A2A9D8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_262A235C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CEC8, &unk_262A31060);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v23 = result + 56;
    v24 = v3;
    if (v10)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v26 = (v10 - 1) & v10;
LABEL_12:
        v15 = (*(v3 + 48) + 48 * (v12 | (v6 << 6)));
        v16 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        v20 = v15[4];
        v25 = v15[5];
        v28 = *v15;
        v17 = v28;
        v29 = v16;
        v30 = v18;
        v31 = v19;
        v32 = v20;
        v33 = v25;
        sub_262A2A998();
        SIDModalityPreference.hash(into:)(v27);
        sub_262A2A9D8();
        result = sub_262A2A668();
        *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v21 = (*(v5 + 48) + 48 * result);
        *v21 = v17;
        v21[1] = v16;
        v21[2] = v18;
        v21[3] = v19;
        v3 = v24;
        v21[4] = v20;
        v21[5] = v25;
        ++*(v5 + 16);
        v10 = v26;
      }

      while (v26);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= v11)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v26 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v22 = 1 << *(v3 + 32);
    if (v22 >= 64)
    {
      bzero(v7, ((v22 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v22;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_262A237F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC78, &qword_262A30C40);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_262A2A998();
      MEMORY[0x26672F240](v17);
      result = sub_262A2A9D8();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_262A23A48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FF3CF00, &unk_262A31088);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_262A2A988();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_262A23C6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CEF8, &qword_262A31080);
  v4 = sub_262A2A6C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_262A2A998();
      sub_262A2A448();

      v13 = sub_262A2A9D8();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v23 && (v22 & 1) != 0)
          {
            goto LABEL_31;
          }

          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v16);
        }

        while (v25 == -1);
        v17 = __clz(__rbit64(~v25)) + (v16 << 6);
      }

      *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x262A23F9CLL);
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_262A23FD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC70, &qword_262A30C38);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_262A2A998();
      MEMORY[0x26672F240](v21);
      sub_262A2A448();
      result = sub_262A2A9D8();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_262A24254(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_262A23364(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_262A24FAC();
      goto LABEL_16;
    }

    sub_262A25688(v8 + 1);
  }

  v10 = *v4;
  sub_262A2A998();
  sub_262A2A448();
  v11 = sub_262A2A9D8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_262A2A878() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_262A2A928();
  __break(1u);
}

void sub_262A243D4(__int128 *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_54;
  }

  if (a3)
  {
    sub_262A235C4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_262A25108();
      goto LABEL_54;
    }

    sub_262A258C0(v6 + 1);
  }

  v8 = *v3;
  v9 = result[1];
  v51 = *result;
  v52 = v9;
  v53 = result[2];
  sub_262A2A998();
  SIDModalityPreference.hash(into:)(v50);
  v10 = sub_262A2A9D8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  v49 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v48 = ~v11;
    v12 = *result;
    v13 = *(result + 1);
    v14 = *(result + 2);
    v43 = *(result + 5);
    v15 = *(v8 + 48);
    v47 = *(result + 3);
    v44 = *(result + 4);
    do
    {
      v16 = (v15 + 48 * a2);
      v18 = v16[2];
      v17 = v16[3];
      v19 = v16[4];
      v20 = v16[5];
      v21 = *v16 == v12 && v16[1] == v13;
      if (v21 || (sub_262A2A878() & 1) != 0)
      {
        v22 = *(v18 + 16);
        if (v22 == *(v14 + 16))
        {
          if (v22)
          {
            v23 = v18 == v14;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v24 = (v18 + 32);
            v25 = (v14 + 32);
            while (v22)
            {
              if (*v24 != *v25)
              {
                goto LABEL_10;
              }

              ++v24;
              ++v25;
              if (!--v22)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
            __break(1u);
            __break(1u);
            __break(1u);
LABEL_57:
            __break(1u);
            return;
          }

LABEL_25:
          v26 = *(v17 + 16);
          if (v26 == *(v47 + 16))
          {
            if (!v26 || v17 == v47)
            {
LABEL_36:
              v30 = *(v19 + 16);
              if (v30 == *(v44 + 16))
              {
                if (!v30 || v19 == v44)
                {
LABEL_47:
                  v34 = *(v20 + 16);
                  if (v34 == *(v43 + 16))
                  {
                    if (!v34 || v20 == v43)
                    {
LABEL_53:
                      sub_262A2A928();
                      __break(1u);
                      break;
                    }

                    v35 = (v20 + 32);
                    v36 = (v43 + 32);
                    while (*v35 == *v36)
                    {
                      ++v35;
                      ++v36;
                      if (!--v34)
                      {
                        goto LABEL_53;
                      }
                    }
                  }
                }

                else
                {
                  v31 = (v19 + 40);
                  v32 = (v44 + 40);
                  while (1)
                  {
                    v33 = *(v31 - 1) == *(v32 - 1) && *v31 == *v32;
                    if (!v33 && (sub_262A2A878() & 1) == 0)
                    {
                      break;
                    }

                    v31 += 2;
                    v32 += 2;
                    if (!--v30)
                    {
                      goto LABEL_47;
                    }
                  }
                }
              }
            }

            else
            {
              v27 = (v17 + 40);
              v28 = (v47 + 40);
              while (1)
              {
                v29 = *(v27 - 1) == *(v28 - 1) && *v27 == *v28;
                if (!v29 && (sub_262A2A878() & 1) == 0)
                {
                  break;
                }

                v27 += 2;
                v28 += 2;
                if (!--v26)
                {
                  goto LABEL_36;
                }
              }
            }
          }
        }
      }

LABEL_10:
      a2 = (a2 + 1) & v48;
    }

    while (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_54:
  v37 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = (*(v37 + 48) + 48 * a2);
  v39 = result[1];
  *v38 = *result;
  v38[1] = v39;
  v38[2] = result[2];
  v40 = *(v37 + 16);
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    goto LABEL_57;
  }

  *(v37 + 16) = v42;
}

uint64_t sub_262A24734(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_262A237F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_262A253F0(&qword_27FF3CC78, &qword_262A30C40);
      a2 = v7;
      goto LABEL_12;
    }

    sub_262A25ADC(v5 + 1);
  }

  v8 = *v3;
  sub_262A2A998();
  MEMORY[0x26672F240](v4);
  result = sub_262A2A9D8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_262A2A928();
  __break(1u);
  return result;
}

uint64_t sub_262A24894(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_262A23A48(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_262A252B0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_262A25CFC(v5 + 1);
  }

  v8 = *v3;
  result = sub_262A2A988();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_262A2A928();
  __break(1u);
  return result;
}

uint64_t sub_262A249B4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_262A23C6C(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_262A253F0(&qword_27FF3CEF8, &qword_262A31080);
        goto LABEL_50;
      }

      sub_262A25EEC(v6 + 1);
    }

    v8 = *v3;
    sub_262A2A998();
    SIDWorkoutModality.rawValue.getter(v5);
    sub_262A2A448();

    result = sub_262A2A9D8();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (2)
      {
        v11 = 0xEA00000000003638;
        v12 = 0x3932343038373431;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xEA00000000003937;
            goto LABEL_24;
          case 2:
            v11 = 0xEA00000000003438;
            goto LABEL_24;
          case 3:
            v11 = 0xEA00000000003238;
            goto LABEL_24;
          case 4:
            v11 = 0xEA00000000003633;
            v12 = 0x3532363037343631;
            break;
          case 5:
            v11 = 0xEA00000000003839;
            goto LABEL_20;
          case 6:
            v11 = 0xEA00000000003738;
            goto LABEL_24;
          case 7:
            v11 = 0xEA00000000003739;
            goto LABEL_20;
          case 8:
            v12 = 0x3932343038373431;
            v11 = 0xEA00000000003038;
            break;
          case 9:
            v11 = 0xEA00000000003639;
LABEL_20:
            v12 = 0x3332373831363531;
            break;
          case 0xA:
            v11 = 0xEA00000000003338;
            goto LABEL_24;
          case 0xB:
            v11 = 0xEA00000000003138;
            goto LABEL_24;
          case 0xC:
            v11 = 0xEA00000000003635;
            v12 = 0x3032383934393431;
            break;
          case 0xD:
            v11 = 0xEA00000000003538;
LABEL_24:
            v12 = 0x3932343038373431;
            break;
          default:
            break;
        }

        v13 = 0xEA00000000003638;
        switch(v5)
        {
          case 1:
            v13 = 0xEA00000000003937;
            goto LABEL_42;
          case 2:
            v13 = 0xEA00000000003438;
            goto LABEL_42;
          case 3:
            v13 = 0xEA00000000003238;
            goto LABEL_42;
          case 4:
            v13 = 0xEA00000000003633;
            if (v12 != 0x3532363037343631)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 5:
            v13 = 0xEA00000000003839;
            goto LABEL_37;
          case 6:
            v13 = 0xEA00000000003738;
            goto LABEL_42;
          case 7:
            v13 = 0xEA00000000003739;
            goto LABEL_37;
          case 8:
            v13 = 0xEA00000000003038;
            if (v12 != 0x3932343038373431)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 9:
            v13 = 0xEA00000000003639;
LABEL_37:
            if (v12 != 0x3332373831363531)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 10:
            v13 = 0xEA00000000003338;
            goto LABEL_42;
          case 11:
            v13 = 0xEA00000000003138;
            goto LABEL_42;
          case 12:
            v13 = 0xEA00000000003635;
            if (v12 != 0x3032383934393431)
            {
              goto LABEL_44;
            }

            goto LABEL_43;
          case 13:
            v13 = 0xEA00000000003538;
            goto LABEL_42;
          default:
LABEL_42:
            if (v12 != 0x3932343038373431)
            {
              goto LABEL_44;
            }

LABEL_43:
            if (v11 == v13)
            {
              goto LABEL_53;
            }

LABEL_44:
            v14 = sub_262A2A878();

            if (v14)
            {
              goto LABEL_54;
            }

            a2 = (a2 + 1) & v10;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_50:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_53:

LABEL_54:
    sub_262A2A928();
    __break(1u);
    JUMPOUT(0x262A24D48);
  }

  *(v15 + 16) = v18;
  return result;
}

void sub_262A24DB8(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a5)
  {
    sub_262A23FD4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_262A25520();
      goto LABEL_26;
    }

    sub_262A26224(v11 + 1);
  }

  v13 = *v5;
  sub_262A2A998();
  MEMORY[0x26672F240](a3);
  sub_262A2A448();
  v14 = sub_262A2A9D8();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = (v18 + 24 * a4);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v19 + 16);
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (a3 != 2)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 3)
        {
          goto LABEL_11;
        }
      }

      else if (v22)
      {
        if (a3 != 1)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v23 = v20 == result && v21 == a2;
      if (v23 || (sub_262A2A878() & 1) != 0)
      {
        sub_262A2A928();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_26:
  v24 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = result;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

void sub_262A24FAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CEE0, &unk_262A31070);
  v2 = *v0;
  v3 = sub_262A2A6B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_262A25108()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CEC8, &unk_262A31060);
  v24 = v0;
  v1 = *v0;
  v2 = sub_262A2A6B8();
  v3 = v2;
  if (*(v1 + 16))
  {
    v4 = (v2 + 56);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || v4 >= v1 + 56 + 8 * v5)
    {
      memmove(v4, (v1 + 56), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 56);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = 48 * (v13 | (v7 << 6));
        v17 = (*(v1 + 48) + v16);
        v18 = v17[1];
        v19 = v17[2];
        v20 = v17[3];
        v21 = v17[4];
        v22 = v17[5];
        v23 = (*(v3 + 48) + v16);
        *v23 = *v17;
        v23[1] = v18;
        v23[2] = v19;
        v23[3] = v20;
        v23[4] = v21;
        v23[5] = v22;
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v24 = v3;
  }
}

void *sub_262A252B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FF3CF00, &unk_262A31088);
  v2 = *v0;
  v3 = sub_262A2A6B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_262A253F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_262A2A6B8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_262A25520()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC70, &qword_262A30C38);
  v2 = *v0;
  v3 = sub_262A2A6B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        sub_2629D40D0(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_262A25688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CEE0, &unk_262A31070);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_262A2A998();

      sub_262A2A448();
      result = sub_262A2A9D8();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_262A258C0(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CEC8, &unk_262A31060);
  result = sub_262A2A6C8();
  v21 = result;
  v22 = v2;
  if (*(v2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v22 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v22 + 56);
    v8 = (v5 + 63) >> 6;
    v20 = result + 56;
    if (v7)
    {
      do
      {
        v9 = __clz(__rbit64(v7));
        v24 = (v7 - 1) & v7;
LABEL_12:
        v12 = (*(v22 + 48) + 48 * (v9 | (v4 << 6)));
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[3];
        v16 = v12[4];
        v17 = v12[5];
        v26 = *v12;
        v23 = v26;
        v27 = v13;
        v28 = v14;
        v29 = v15;
        v30 = v16;
        v31 = v17;
        sub_262A2A998();

        SIDModalityPreference.hash(into:)(v25);
        sub_262A2A9D8();
        result = sub_262A2A668();
        *(v20 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v18 = (*(v21 + 48) + 48 * result);
        v7 = v24;
        *v18 = v23;
        v18[1] = v13;
        v18[2] = v14;
        v18[3] = v15;
        v18[4] = v16;
        v18[5] = v17;
        ++*(v21 + 16);
      }

      while (v24);
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        goto LABEL_14;
      }

      v11 = *(v22 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v24 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v19 = v21;
  }

  return result;
}

uint64_t sub_262A25ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC78, &qword_262A30C40);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_262A2A998();
      MEMORY[0x26672F240](v16);
      result = sub_262A2A9D8();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_262A25CFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FF3CF00, &unk_262A31088);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_262A2A988();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_262A25EEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CEF8, &qword_262A31080);
  v4 = sub_262A2A6C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v21 = *(*(v3 + 48) + (v18 | (v6 << 6)));
      sub_262A2A998();
      sub_262A2A448();

      v13 = sub_262A2A9D8();
      v14 = -1 << *(v5 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) != 0)
      {
        v17 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = 0;
        v23 = (63 - v14) >> 6;
        do
        {
          if (++v16 == v23 && (v22 & 1) != 0)
          {
            goto LABEL_29;
          }

          v24 = v16 == v23;
          if (v16 == v23)
          {
            v16 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v16);
        }

        while (v25 == -1);
        v17 = __clz(__rbit64(~v25)) + (v16 << 6);
      }

      *(v11 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + v17) = v21;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x262A261ECLL);
      }

      if (v6 >= v10)
      {
        break;
      }

      v20 = *(v3 + 56 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v2 = v1;
  }

  else
  {
  }

  *v2 = v5;
  return result;
}

uint64_t sub_262A26224(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC70, &qword_262A30C38);
  result = sub_262A2A6C8();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_262A2A998();
      MEMORY[0x26672F240](v21);

      sub_262A2A448();
      result = sub_262A2A9D8();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_262A2647C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v7 = sub_262A26D3C(v6, a2, a3);

    return v7;
  }

  return result;
}

uint64_t sub_262A26514(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CEE0, &unk_262A31070);
  result = sub_262A2A6D8();
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
    sub_262A2A998();

    sub_262A2A448();
    result = sub_262A2A9D8();
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

uint64_t sub_262A26738(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC70, &qword_262A30C38);
  result = sub_262A2A6D8();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 24 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    sub_262A2A998();
    MEMORY[0x26672F240](v19);

    sub_262A2A448();
    result = sub_262A2A9D8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v9 + 48) + 24 * v23;
    *v28 = v18;
    *(v28 + 8) = v17;
    *(v28 + 16) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
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
      v31 = (v15 - 1) & v15;
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

uint64_t sub_262A26988(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FF3CF00, &unk_262A31088);
  result = sub_262A2A6D8();
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_262A2A988();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

unint64_t sub_262A26B74()
{
  result = qword_27FF3CEB0;
  if (!qword_27FF3CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3CEA8, &qword_262A31058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CEB0);
  }

  return result;
}

uint64_t sub_262A26BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26672EE50](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_262A22910(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_262A26C70(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2629C1AF8();
  result = MEMORY[0x26672EE50](v2, &type metadata for SIDModalityPreference, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_262A2720C(v9, v7);
      sub_262A22A60(v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_262A26D3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v21 = result;
  v22 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    if (*v14 != 0x3032383934393431 || v16 != 0xEA00000000003635)
    {
      result = sub_262A2A878();
      if ((result & 1) == 0 && (v15 != 0x3332373831363531 || v16 != 0xEA00000000003639))
      {
        result = sub_262A2A878();
        if ((result & 1) == 0)
        {
          *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_24:

            return sub_262A26514(v21, a2, v22, a3);
          }
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_24;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_262A26F08(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v36 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v31 = v8;
    v32 = a2;
    v33 = v3;
    v30[1] = v30;
    MEMORY[0x28223BE20](v10);
    v34 = v30 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v9);
    v11 = 0x3032383934393431;
    v35 = 0;
    v9 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    a2 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (a2)
    {
      v14 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = (*(a1 + 48) + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      if (*v18 != v11 || v19 != 0xEA00000000003635)
      {
        v22 = v11;
        v23 = sub_262A2A878();
        v11 = v22;
        if ((v23 & 1) == 0 && (v20 != 0x3332373831363531 || v19 != 0xEA00000000003639))
        {
          v25 = sub_262A2A878();
          v11 = v22;
          if ((v25 & 1) == 0)
          {
            *&v34[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
            if (__OFADD__(v35++, 1))
            {
              __break(1u);
LABEL_25:
              v27 = sub_262A26514(v34, v31, v35, a1);

              return v27;
            }
          }
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_25;
      }

      v16 = *(v3 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        a2 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_28:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();

  v27 = sub_262A2647C(v29, v8, a1, a2);

  MEMORY[0x26672F820](v29, -1, -1);

  return v27;
}

uint64_t sub_262A272BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2629C1BAC();
  result = MEMORY[0x26672EE50](v2, &type metadata for SIDWeekday, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_262A22DDC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_262A27330(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A27390(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26672EE50](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_262A22ED4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_262A27404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A2746C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for FitnessPlanUser(0) + 36)) - 1 > 2)
  {
    v3 = type metadata accessor for EstablishedUserStretchPlanDurationStrategy(0);
    v4 = &off_2875376D0;
    v5 = &OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_planGenerationContext;
    v6 = &OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_operationTracker;
    v7 = &OBJC_IVAR____TtC10SIDFitness42EstablishedUserStretchPlanDurationStrategy_logger;
  }

  else
  {
    v3 = type metadata accessor for DefaultStretchPlanDurationStrategy(0);
    v4 = &off_2875376C0;
    v5 = &OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_planGenerationContext;
    v6 = &OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_operationTracker;
    v7 = &OBJC_IVAR____TtC10SIDFitness34DefaultStretchPlanDurationStrategy_logger;
  }

  v8 = swift_allocObject();
  sub_262A17B14(0, 0, v8 + *v7);
  *(v8 + *v6) = sub_262A17CDC(0, 0);
  result = sub_262A17DD4(0, 0, v8 + *v5);
  a2[3] = v3;
  a2[4] = v4;
  *a2 = v8;
  return result;
}

uint64_t sub_262A275A0@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for PersistentLogger(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262A17B14(0, 0, v7);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000038, 0x8000000262A34880);
  v8 = type metadata accessor for FitnessPlanUser(0);
  v9 = *(a1 + *(v8 + 36));
  v18[1] = *(a1 + *(v8 + 36));
  v10 = sub_262A2A868();
  MEMORY[0x26672ECF0](v10);

  sub_2629EA8C8(v19, v20);

  if ((v9 - 2) >= 2)
  {
    if (v9)
    {
      started = type metadata accessor for OnboardedUserWorkoutPlanStrategy(0);
      swift_allocObject();

      v13 = sub_262A1FF28(v16);
      v14 = &off_287537700;
    }

    else
    {
      started = type metadata accessor for EstablishedUserWorkoutPlanStrategy(0);
      swift_allocObject();

      v13 = sub_262A1AC3C(v15);
      v14 = &off_2875376E0;
    }
  }

  else
  {
    started = type metadata accessor for ColdStartUserWorkoutPlanStrategy(0);
    swift_allocObject();

    v13 = sub_262A16B30(v12);
    v14 = &off_2875376B0;
  }

  a3[3] = started;
  a3[4] = v14;
  *a3 = v13;
  return sub_2629B1824(v7);
}

uint64_t dispatch thunk of SIDFitnessClientProtocol.generatePersonalizedWorkoutPlan(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2629A88B4;

  return v11(a1, a2, a3, a4);
}

uint64_t String.init(localizing:tableName:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v43 = a8;
  v44 = a6;
  v45 = a7;
  v37 = a5;
  v38 = a4;
  v41 = a2;
  v42 = a3;
  v46 = a1;
  v8 = sub_262A29F48();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_262A2A048();
  v12 = *(v11 - 8);
  v33 = v11;
  v34 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_262A2A3D8();
  v35 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_262A29F58();
  v19 = *(v36 - 8);
  v20 = MEMORY[0x28223BE20](v36);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v32 - v23;
  (*(v16 + 16))(v18, v46, v15);
  v25 = *(v12 + 16);
  v26 = v37;
  v25(v14, v37, v11);
  v27 = v38;
  v28 = [v38 bundleURL];
  sub_262A29F78();

  (*(v39 + 104))(v10, *MEMORY[0x277CC9118], v40);
  sub_262A29F68();
  v29 = v36;
  (*(v19 + 16))(v22, v24, v36);
  v30 = sub_262A2A408();

  (*(v34 + 8))(v26, v33);
  (*(v16 + 8))(v46, v35);
  (*(v19 + 8))(v24, v29);
  return v30;
}

uint64_t sub_262A27C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  a2[3] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_0, v2, v3);
}

uint64_t sub_262A27D08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = sub_262A28AB0;
  }

  else
  {
    sub_262A2894C(a4, v15);
    v11 = swift_allocObject();
    sub_2629A4B84(v15, v11 + 16);
    v10 = sub_262A28A70;
  }

  v12 = v10;
  v13 = sub_2629ADEAC(a2, a3);
  v12(v13);

  return sub_2629ADE10(a1, a5);
}

void sub_262A27E00(void *a1)
{
  sub_262A2A6F8();
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  (*(v3 + 8))(v2, v3);
  sub_262A2AA58();

  MEMORY[0x26672ECF0](0xD000000000000013, 0x8000000262A34920);
  sub_262A2A748();
  __break(1u);
}

void sub_262A27EDC(uint64_t a1)
{
  sub_262A2A6F8();
  sub_262A2A738();
  MEMORY[0x26672ECF0](0xD000000000000013, 0x8000000262A34920);
  sub_262A2A748();
  __break(1u);
}

uint64_t sub_262A27F90()
{

  return swift_deallocClassInstance();
}

uint64_t sub_262A27FF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_262A28064(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_262A281A4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_262A283C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(_OWORD *__return_ptr, void *, _OWORD *))
{
  v7 = v5;
  v10 = -1 << *(a1 + 32);
  v11 = ~v10;
  v12 = *(a1 + 64);
  v13 = -v10;
  v39 = a1;
  v40 = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v41 = v11;
  v42 = 0;
  v43 = v14 & v12;
  v44 = a2;
  v45 = a3;

  sub_2629AB924(&v36);
  if (!v38)
  {
LABEL_5:
    sub_2629ADE08(v39);
  }

  while (1)
  {
    v16 = v36;
    v46 = v36;
    sub_2629AD99C(&v37, v35);
    v17 = *v7;
    v18 = sub_2629CB210(v16);
    v20 = v17[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_262A2A938();
      __break(1u);
      goto LABEL_23;
    }

    v24 = v19;
    if (v17[3] >= v23)
    {
      break;
    }

    sub_2629CF564(v23, a4 & 1);
    v18 = sub_2629CB210(v16);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_22;
    }

LABEL_12:
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_16:
    v30 = *v7;
    *(*v7 + 8 * (v18 >> 6) + 64) |= 1 << v18;
    *(v30[6] + 8 * v18) = v16;
    sub_2629AD99C(v35, (v30[7] + 32 * v18));
    v31 = v30[2];
    v22 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v30[2] = v32;
LABEL_6:
    sub_2629AB924(&v36);
    a4 = 1;
    if (!v38)
    {
      goto LABEL_5;
    }
  }

  if (a4)
  {
    goto LABEL_12;
  }

  v29 = v18;
  sub_2629CDD84();
  v18 = v29;
  if ((v24 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v26 = *v7;
  v27 = v18;
  sub_2629ADE10(*(*v7 + 56) + 32 * v18, v33);
  a5(v34, v33, v35);
  if (!v6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v28 = (v26[7] + 32 * v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    sub_2629AD99C(v34, v28);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  v33[0] = v6;
  MEMORY[0x26672F6B0](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    sub_2629ADE08(v39);

    return MEMORY[0x26672F6A0](v33[0]);
  }

LABEL_23:
  *&v34[0] = 0;
  *(&v34[0] + 1) = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001BLL, 0x8000000262A32480);
  sub_262A2A738();
  MEMORY[0x26672ECF0](39, 0xE100000000000000);
  result = sub_262A2A748();
  __break(1u);
  return result;
}

uint64_t sub_262A28750(uint64_t a1)
{
  v2 = sub_2629ABA88(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {
      sub_262A2894C(v4, v16);
      v6 = v17;
      v5 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v7 = (*(v5 + 8))(v6, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB0, &qword_262A2B2E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_262A2B290;
      *(inited + 32) = v7;
      v9 = v17;
      v10 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v10 + 16))(v9, v10);
      v11 = sub_2629ABA88(inited);
      swift_setDeallocating();
      v12 = sub_262A289B0(inited + 32);
      MEMORY[0x28223BE20](v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_262A283C4(v11, sub_2629AB8F4, 0, isUniquelyReferenced_nonNull_native, sub_262A28A18);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  result = v15;
  *(v15 + 16) = v2;
  return result;
}

uint64_t sub_262A2894C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_262A289B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEB8, &qword_262A2B2F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_262A28A38()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_262A28A78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262A28AE8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_262A28BAC()
{

  return swift_deallocClassInstance();
}

void sub_262A28C0C(uint64_t a1)
{
  sub_262A29FD8();
  if (v1 <= 0x3F)
  {
    sub_262A291E8(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_262A28CBC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_262A29FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 + 8;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(v9 + 64) + ((v14 + ((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v8 == v13)
  {
    v24 = *(v7 + 48);

    return v24(a1, v8, v6);
  }

  else
  {
    v25 = ((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v12 > 0x7FFFFFFE)
    {
      v27 = *(v9 + 48);

      return v27((v25 + v14) & ~v11);
    }

    else
    {
      v26 = *v25;
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if ((v26 + 1) >= 2)
      {
        return v26;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_262A28F1C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_262A29FD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v9 + 64);
  v13 = *(v11 + 80);
  if (v10 <= *(v11 + 84))
  {
    v14 = *(v11 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((*(v11 + 64) + ((v13 + 8 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 >= a3)
  {
    v19 = 0;
    v20 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v11 + 64) + ((v13 + 8 + ((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v15 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v10 == v15)
      {
        v23 = *(v9 + 56);

        v23(a1, a2, v10, v8);
      }

      else
      {
        v24 = ((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if (v14 > 0x7FFFFFFE)
        {
          v25 = *(v11 + 56);

          v25((v24 + v13 + 8) & ~v13, a2);
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *v24 = 0;
          *v24 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v24 = a2;
        }
      }

      return;
    }
  }

  if (((*(v11 + 64) + ((v13 + 8 + ((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((*(v11 + 64) + ((v13 + 8 + ((((v12 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v15 + a2;
    bzero(a1, v16);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

void sub_262A291E8(uint64_t a1)
{
  if (!qword_27FF3D090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3BEC0, &unk_262A2BA60);
    v1 = sub_262A2A618();
    if (!v2)
    {
      atomic_store(v1, &qword_27FF3D090);
    }
  }
}

uint64_t sub_262A29270(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  v4 = *(a1 + 40);
  *(v2 + 32) = v3;
  *(v2 + 40) = *(a1 + 24);
  *(v2 + 56) = v4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_262A29384;

  return v7(v2 + 16);
}

uint64_t sub_262A29384()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_262A294C4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 80) == 0;

    return v3(v4);
  }
}

uint64_t sub_262A294C4()
{
  *(v0 + 64) = *(v0 + 80);
  MEMORY[0x26672F6B0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  if (swift_dynamicCast())
  {
    MEMORY[0x26672F6A0](*(v0 + 80));
    v1 = *(v0 + 88);
    if (v1 <= 1)
    {
      MEMORY[0x26672F6A0](*(v0 + 64));
      v2 = *(v0 + 8);
      v3 = *(v0 + 80) == 0;
      goto LABEL_7;
    }

    sub_262A1580C();
    swift_allocError();
    *v4 = v1;
    swift_willThrow();
    MEMORY[0x26672F6A0](*(v0 + 64));
  }

  else
  {
    MEMORY[0x26672F6A0](*(v0 + 64));
    swift_willThrow();
  }

  v2 = *(v0 + 8);
  v3 = 0;
LABEL_7:

  return v2(v3);
}

uint64_t sub_262A295F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  *(v4 + 88) = a1;
  v6 = sub_262A2A328();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = *a2;
  *(v4 + 160) = *(a2 + 16);
  *(v4 + 168) = *(a2 + 24);
  *(v4 + 184) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_262A296E4, 0, 0);
}

uint64_t sub_262A296E4(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  v7 = *(v1 + 144);
  v8 = *(v1 + 160);
  sub_262A2A318();
  *(v1 + 16) = v7;
  *(v1 + 32) = v8;
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;
  v4 = swift_task_alloc();
  *(v1 + 192) = v4;
  *v4 = v1;
  v4[1] = sub_262A297A8;
  v5 = *(v1 + 96);

  return sub_262A29270(v1 + 16, v5);
}

uint64_t sub_262A297A8(char a1)
{
  v3 = *v2;
  *(v3 + 80) = v1;
  *(v3 + 72) = a1;
  *(v3 + 64) = v2;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_262A29A98;
  }

  else
  {
    v4 = sub_262A298C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_262A298C8(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  sub_262A2A318();
  v6 = sub_262A2A308();
  v7 = sub_262A2A308();
  v8 = *(v5 + 8);
  v8(v3, v4);
  result = (v8)(v2, v4);
  v10 = v6 - v7;
  if (v6 < v7)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v1 + 200);
    v12 = *(v1 + 88);
    v13 = v10 / 1000000.0;
    *(v1 + 209) = 7;
    v14 = *(v12 + 16);
    v15 = swift_task_alloc();
    *(v15 + 16) = v12;
    *(v15 + 24) = v13;
    *(v15 + 32) = 0;
    *(v15 + 40) = v1 + 209;
    v16 = swift_task_alloc();
    *(v16 + 16) = sub_2629B3BF4;
    *(v16 + 24) = v15;

    os_unfair_lock_lock(v14 + 4);
    sub_2629B3C0C(v17);
    if (v11)
    {
      os_unfair_lock_unlock(v14 + 4);
    }

    else
    {
      v18 = *(v1 + 72);
      os_unfair_lock_unlock(v14 + 4);

      v19 = *(v1 + 8);

      return v19(v18);
    }
  }

  return result;
}

uint64_t sub_262A29A98()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  (*(*(v0 + 120) + 8))(*(v0 + 136), *(v0 + 112));
  *(v0 + 208) = 7;
  v3 = *(v2 + 16);
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = 0;
  v4[4] = v1;
  v4[5] = v0 + 208;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_2629B3A78;
  *(v5 + 24) = v4;
  MEMORY[0x26672F6B0](v1);

  os_unfair_lock_lock(v3 + 4);
  sub_2629B3A9C(v6);
  v7 = *(v0 + 200);
  os_unfair_lock_unlock(v3 + 4);
  MEMORY[0x26672F6A0](v7);

  swift_willThrow();

  v8 = *(v0 + 8);

  return v8(0);
}

Swift::UInt64_optional __swiftcall DateComponents.convertToMillisecondsSince1970()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_262A29FD8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_262A2A128();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_262A2A0E8();
  sub_262A2A0B8();
  v11 = (*(v4 + 48))(v2, 1, v3);
  if (v11 != 1)
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_262A29FA8();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v15 = v14 * 1000.0;
    if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v15 > -1.0)
    {
      if (v15 < 1.84467441e19)
      {
        v12 = v15;
        goto LABEL_7;
      }

LABEL_10:
      __break(1u);
      v12 = sub_262A29EB8();
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }

  (*(v8 + 8))(v10, v7);
  sub_2629DCD24(v2);
  v12 = 0;
LABEL_7:
  v16 = v11 == 1;
LABEL_11:
  result.value = v12;
  result.is_nil = v16;
  return result;
}