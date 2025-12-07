uint64_t sub_227432F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227662D90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662B10();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227433124(a1, v12);
  v13 = 1;
  if ((*(v7 + 48))(v12, 1, v6) != 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_2273CCF40(a2, a3);
    (*(v7 + 8))(v9, v6);
    v13 = 0;
  }

  v14 = sub_227666D60();
  return (*(*(v14 - 8) + 56))(a3, v13, 1, v14);
}

uint64_t sub_227433124(uint64_t a1, uint64_t a2)
{
  v4 = sub_227662B10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227433194(uint64_t a1)
{
  result = sub_2274331BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274331BC()
{
  result = qword_27D7BDB30;
  if (!qword_27D7BDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB30);
  }

  return result;
}

unint64_t sub_22743321C(uint64_t a1)
{
  result = sub_227433244();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227433244()
{
  result = qword_27D7BDB38;
  if (!qword_27D7BDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB38);
  }

  return result;
}

uint64_t sub_227433298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2274332E4();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

unint64_t sub_2274332E4()
{
  result = qword_27D7BDB40;
  if (!qword_27D7BDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB40);
  }

  return result;
}

void sub_227433344(void *a1)
{
  v2 = [a1 sessionIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    v4 = [a1 workoutIdentifier];
    if (v4)
    {
      v5 = v4;
      sub_22766C000();

      sub_2276674A0();
      return;
    }
  }

  v6 = sub_227664DD0();
  sub_227433808(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D51028], v6);
  swift_willThrow();
}

void *static HealthKitSessionReference.representativeSamples()()
{
  v14 = sub_2276674C0();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  v20 = sub_22766C090();
  v21[0] = v3;
  v21[1] = v21;
  v21[2] = &v20;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v19 = v18;
  v16 = sub_2272BFE28();
  v17 = v16;
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_226F206C8(0, v5, 0);
    v7 = 0;
    v8 = v15;
    v12 = v0 + 32;
    v13 = v4;
    v9 = v4 + 56;
    while (v7 < *(v4 + 16))
    {

      sub_2276674A0();
      v15 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F206C8((v10 > 1), v11 + 1, 1);
        v8 = v15;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v14);
      v9 += 32;
      v4 = v13;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_227433714(void *a1)
{
  sub_227667490();
  v2 = sub_22766BFD0();

  [a1 setSessionIdentifier_];

  sub_2276674B0();
  v3 = sub_22766BFD0();

  [a1 setWorkoutIdentifier_];
}

uint64_t sub_2274337B0(uint64_t a1)
{
  result = sub_227433808(&qword_27D7B8ED0, MEMORY[0x277D52DB0], &protocol conformance descriptor for HealthKitSessionReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227433808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227433850(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v23 = MEMORY[0x277D84F90];
  sub_226F1F090(0, v1, 0);
  v2 = v23;
  v22 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = 0;
  v21 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v22 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_227669310();
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v20 = result;
      sub_226F1F090((v11 > 1), v12 + 1, 1);
      result = v20;
    }

    *(v23 + 16) = v12 + 1;
    *(v23 + 8 * v12 + 32) = result;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v13 = *(v22 + 8 * v9);
    if ((v13 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v14 = v13 & (-2 << (v5 & 0x3F));
    if (v14)
    {
      v7 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v21;
    }

    else
    {
      v15 = v9 << 6;
      v16 = v9 + 1;
      v8 = v21;
      v17 = (a1 + 64 + 8 * v9);
      while (v16 < (v7 + 63) >> 6)
      {
        v19 = *v17++;
        v18 = v19;
        v15 += 64;
        ++v16;
        if (v19)
        {
          result = sub_226EB526C(v5, v10, 0);
          v7 = __clz(__rbit64(v18)) + v15;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

uint64_t sub_227433A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v30 = MEMORY[0x277D84F90];
  sub_226F1FD68(0, v1, 0);
  v2 = v30;
  v4 = v3 + 56;
  result = sub_22766CC90();
  v6 = result;
  v7 = 0;
  v24 = v3 + 64;
  v25 = v1;
  v26 = v3 + 56;
  v27 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v28 = v7;
    v29 = *(v3 + 36);
    v10 = *(v3 + 48) + 24 * v6;
    v11 = *v10;
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    result = sub_226EB396C(*v10, v12, v13);
    v15 = *(v30 + 16);
    v14 = *(v30 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_226F1FD68((v14 > 1), v15 + 1, 1);
    }

    *(v30 + 16) = v15 + 1;
    v16 = v30 + 32 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v12;
    *(v16 + 48) = v13;
    *(v16 + 56) = 0;
    v3 = v27;
    v8 = 1 << *(v27 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = v26;
    v17 = *(v26 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(v27 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_226EB526C(v6, v29, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v6, v29, 0);
    }

LABEL_4:
    v7 = v28 + 1;
    v6 = v8;
    if (v28 + 1 == v25)
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

uint64_t sub_227433CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_226F1EF90();
  v2 = v25;
  v24 = a1 + 56;
  result = sub_22766CC90();
  v5 = result;
  v6 = 0;
  v23 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v24 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_2276692E0();
    v12 = *(v25 + 16);
    if (v12 >= *(v25 + 24) >> 1)
    {
      v21 = v11;
      v22 = result;
      sub_226F1EF90();
      v11 = v21;
      result = v22;
    }

    *(v25 + 16) = v12 + 1;
    v13 = v25 + 16 * v12;
    *(v13 + 32) = result;
    *(v13 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v24 + 8 * v9);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v23;
    }

    else
    {
      v16 = v9 << 6;
      v17 = v9 + 1;
      v8 = v23;
      v18 = (a1 + 64 + 8 * v9);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_226EB526C(v5, v10, 0);
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
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

unint64_t sub_227433ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  swift_beginAccess();
  for (i = (a1 + 32); ; ++i)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *i;
    result = sub_227669310();
    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (result >= *(*a2 + 16))
    {
      goto LABEL_10;
    }

    --v5;
    if (*(*a2 + 8 * result + 32) >= v7)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_227433F98(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = sub_227669310();
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_14;
    }

    if (v10 >= *(*a2 + 16))
    {
      goto LABEL_15;
    }

    v6 &= v6 - 1;
    if (!*(*(*a2 + 8 * v10 + 32) + 16))
    {
LABEL_12:

      return;
    }
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
      goto LABEL_12;
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
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t SetCoverStatus.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_22743412C()
{
  result = qword_27D7BDB48;
  if (!qword_27D7BDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BDB48);
  }

  return result;
}

void sub_227434190(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void *@<X8>), char *a8)
{
  v127 = a8;
  v135 = a4;
  v136 = a7;
  i = a3;
  v139 = a2;
  v125 = a1;
  v128 = sub_227664EC0();
  v132 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v130 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v124 = &v118 - v12;
  v13 = sub_227667370();
  v145 = *(v13 - 8);
  v146 = v13;
  MEMORY[0x28223BE20](v13);
  v151 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276627D0();
  v142 = *(v15 - 8);
  v143 = v15;
  MEMORY[0x28223BE20](v15);
  v141 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v144);
  v150 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v118 - v19;
  MEMORY[0x28223BE20](v20);
  v140 = &v118 - v21;
  MEMORY[0x28223BE20](v22);
  v131 = &v118 - v23;
  v138 = sub_22766B390();
  v24 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v123 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v118 - v27;
  v29 = sub_2276681F0();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = a6;
  v33 = a6[2];
  v147 = v8;
  sub_227667240();
  v149 = a5;
  if (a5 == 90 || v33 == 1)
  {
    v34 = sub_227668160();
  }

  else
  {
    v34 = sub_227668060();
  }

  v35 = v34;
  (*(v30 + 8))(v32, v29);
  sub_22766A630();
  v36 = sub_22766B380();
  v37 = sub_22766C8B0();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 134218240;
    *(v38 + 4) = v35;
    *(v38 + 12) = 2048;
    *(v38 + 14) = v149;
    _os_log_impl(&dword_226E8E000, v36, v37, "Computed maxWorkoutsPerDay=%ld based on duration: %ld", v38, 0x16u);
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  v39 = *(v24 + 8);
  v122 = v24 + 8;
  v121 = v39;
  v39(v28, v138);
  v40 = v141;
  v41 = *(v142 + 16);
  v134 = v35;
  v42 = v143;
  v41(v141, v139, v143);
  v43 = v146;
  v133 = *(v145 + 16);
  v44 = v147;
  v45 = v151;
  v133(v151, v147 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration, v146);
  v139 = sub_227149B3C(MEMORY[0x277D84F90]);
  v46 = *(v44 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_scoringMode);
  v47 = v140;
  v41(v140, v40, v42);
  v48 = v144;
  *&v47[*(v144 + 20)] = v135;
  swift_bridgeObjectRetain_n();
  v49 = sub_226F491E4();
  *&v47[v48[6]] = v49;
  v50 = i;
  *&v47[v48[7]] = v149;
  v51 = v136;
  *&v47[v48[8]] = v137;
  *&v47[v48[9]] = v51;
  v52 = v48[12];
  LODWORD(v135) = v46;
  v47[v52] = v46;
  *&v47[v48[10]] = v134;
  *&v47[v48[13]] = v50;
  v133(&v47[v48[14]], v45, v43);
  *&v47[v48[15]] = MEMORY[0x277D84F90];
  *&v47[v48[16]] = v139;
  v53 = v49 + 56;
  v54 = 1 << *(v49 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(v49 + 56);
  v57 = (v54 + 63) >> 6;
  v149 = v49;

  v136 = 0;
  v58 = 0;
  v137 = MEMORY[0x277D84F98];
  v59 = v150;
  for (i = v49 + 56; v56; v53 = i)
  {
LABEL_14:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v62 = *(v149 + 48) + 24 * (v61 | (v58 << 6));
    v64 = *v62;
    v63 = *(v62 + 8);
    v65 = *(v62 + 16);
    sub_226EB396C(*v62, v63, v65);
    v66 = sub_2276672C0();
    if (!*(v66 + 16))
    {
      sub_226EB2DFC(v64, v63, v65);
LABEL_22:

      goto LABEL_23;
    }

    v67 = sub_226F491D8();
    v69 = v68;
    sub_226EB2DFC(v64, v63, v65);
    if ((v69 & 1) == 0)
    {
      goto LABEL_22;
    }

    v70 = *(v120 + 72);
    v71 = *(v66 + 56) + v70 * v67;
    v72 = v124;
    sub_226E93170(v71, v124, &qword_27D7B88C0, &unk_22767A720);

    sub_226EA9E3C(v136, 0);
    v73 = v137;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v152 = v73;
    v76 = sub_226F3ADC4(v72);
    v77 = v73[2];
    v78 = (v75 & 1) == 0;
    v79 = v77 + v78;
    if (__OFADD__(v77, v78))
    {
      goto LABEL_49;
    }

    v80 = v75;
    if (v73[3] >= v79)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v83 = v152;
        if ((v75 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_226FF2414();
        v83 = v152;
        if ((v80 & 1) == 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      sub_226FE6DD4(v79, isUniquelyReferenced_nonNull_native);
      v81 = sub_226F3ADC4(v124);
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_52;
      }

      v76 = v81;
      v83 = v152;
      if ((v80 & 1) == 0)
      {
LABEL_27:
        v84 = v83;
        sub_227444F98(&v152);
        v85 = v152;
        v84[(v76 >> 6) + 8] |= 1 << v76;
        sub_226E93170(v124, v84[6] + v76 * v70, &qword_27D7B88C0, &unk_22767A720);
        *(v84[7] + 8 * v76) = v85;
        v86 = v84[2];
        v87 = __OFADD__(v86, 1);
        v88 = v86 + 1;
        if (v87)
        {
          goto LABEL_51;
        }

        v83 = v84;
        v84[2] = v88;
      }
    }

    v137 = v83;
    v89 = v83[7];
    v90 = *(v89 + 8 * v76);
    v87 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v87)
    {
      goto LABEL_50;
    }

    *(v89 + 8 * v76) = v91;
    sub_226E97D1C(v124, &qword_27D7B88C0, &unk_22767A720);
    v136 = sub_227444F98;
LABEL_23:
    v59 = v150;
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v57)
    {

      v92 = v144;
      v93 = v140;
      *&v140[*(v144 + 44)] = v137;
      sub_22746B5DC();
      v95 = v94;

      (*(v145 + 8))(v151, v146);
      (*(v142 + 8))(v141, v143);
      *(v93 + *(v92 + 68)) = v95;
      v96 = v131;
      sub_227442570(v93, v131);
      sub_226EA9E3C(v136, 0);
      v97 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
      v98 = *(v96 + *(v92 + 24));
      v99 = sub_226F4D188(&unk_283A927A8);
      sub_226E97D1C(&unk_283A927C8, &qword_27D7B8560, &unk_227671560);
      v100 = sub_2270356EC(v98, v99);

      v101 = sub_227668780();
      if (v101 == sub_227668780() && (v100 & 1) != 0)
      {
        v102 = v126;
        v103 = v129;
        sub_227454B28(v126, v96);
        v104 = v103;
        v105 = v132;
        v106 = v130;
        if (!v103)
        {
          sub_227442570(v102, v125);
LABEL_45:
          WorkoutPlanGenerationScaffold.prettyPrint()();

          sub_227442514(v96);
          return;
        }
      }

      else
      {
        v107 = v127;
        v108 = v129;
        sub_227437F54(v59, v96, v127, v97);
        v104 = v108;
        v105 = v132;
        v106 = v130;
        if (!v108)
        {
          sub_227454D9C(v59, v107, v125);
          sub_227442514(v59);
          goto LABEL_45;
        }
      }

      v152 = v104;
      v109 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
      v110 = v128;
      if (swift_dynamicCast())
      {
        if ((*(v105 + 88))(v106, v110) == *MEMORY[0x277D511D0])
        {

          v111 = v123;
          sub_22766A630();
          v112 = sub_22766B380();
          v113 = sub_22766C890();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_226E8E000, v112, v113, "Failed to generate scaffold", v114, 2u);
            v115 = v114;
            v111 = v123;
            MEMORY[0x22AA9A450](v115, -1, -1);
          }

          v121(v111, v138);
          sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
          v116 = v128;
          swift_allocError();
          (*(v105 + 104))(v117, *MEMORY[0x277D51188], v116);
          swift_willThrow();
          goto LABEL_43;
        }

        sub_227442514(v96);
        (*(v105 + 8))(v106, v110);
      }

      else
      {
LABEL_43:

        sub_227442514(v96);
      }

      return;
    }

    v56 = *(v53 + 8 * v60);
    ++v58;
    if (v56)
    {
      v58 = v60;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  sub_22766D220();
  __break(1u);
}

void sub_227434F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v94 = a1;
  v95 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB80, &qword_2276858E0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v82 - v11;
  v90 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v13 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v91 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B390();
  v93 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v82 - v19;
  v20 = *(a2 + 16);
  if (!v20)
  {
    sub_22766A630();
    v72 = sub_22766B380();
    v73 = sub_22766C890();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_226E8E000, v72, v73, "Unable to select scaffold due to zero candidates", v74, 2u);
      MEMORY[0x22AA9A450](v74, -1, -1);
    }

    (*(v93 + 8))(v17, v15);
    v75 = sub_227664EC0();
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v75 - 8) + 104))(v76, *MEMORY[0x277D51188], v75);
    swift_willThrow();
    return;
  }

  v87 = v15;
  v89 = v4;
  v100 = MEMORY[0x277D84F90];
  v98 = v20;
  sub_226F1FCE8(0, v20, 0);
  v21 = 0;
  v22 = (a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
  v23 = v100;
  v24 = *(v5 + OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils);
  v96 = *(v13 + 72);
  v97 = v24;
  v88 = v22;
  v25 = v22;
  do
  {
    v26 = *(v7 + 48);
    sub_2274424B0(v25, &v12[v26]);
    *v9 = v21;
    v27 = *(v7 + 48);
    sub_227442570(&v12[v26], v9 + v27);
    sub_227137238(v9 + v27, v21);
    v29 = v28;
    sub_226E97D1C(v9, &qword_27D7BDB80, &qword_2276858E0);
    v100 = v23;
    v31 = *(v23 + 16);
    v30 = *(v23 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_226F1FCE8((v30 > 1), v31 + 1, 1);
      v23 = v100;
    }

    ++v21;
    *(v23 + 16) = v31 + 1;
    *(v23 + 32 + 8 * v31) = v29;
    v25 += v96;
  }

  while (v98 != v21);
  sub_2271317D4(v23, v95);
  if (v32 >= v98)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v33 = v32;
  v34 = v94;
  sub_2274424B0(v88 + v32 * v96, v94);
  if (v33 >= *(v23 + 16))
  {
LABEL_39:
    __break(1u);
    return;
  }

  v35 = *(v23 + 32 + 8 * v33);

  v36 = v92;
  sub_22766A630();
  v37 = v91;
  sub_2274424B0(v34, v91);
  v38 = sub_22766B380();
  LODWORD(v39) = sub_22766C8B0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v106 = v88;
    *v40 = 134218498;
    *(v40 + 4) = v33;
    *(v40 + 12) = 2048;
    *(v40 + 14) = v35;
    *(v40 + 22) = 2080;
    v41 = *(v37 + *(v90 + 15));
    v42 = *(v41 + 16);
    v43 = MEMORY[0x277D84F90];
    if (v42)
    {
      v44 = 0;
      v98 = v41 + 32;
      v85 = v42 - 1;
      v90 = MEMORY[0x277D84F90];
      v86 = v39;
      v97 = v42;
      do
      {
        v39 = v44;
        while (1)
        {
          if (v39 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v45 = *(v98 + 8 * v39);

          if (MEMORY[0x22AA95620](v39) != 7)
          {
            if (*(v45 + 16))
            {
              break;
            }
          }

          if (v97 == ++v39)
          {
            LOBYTE(v39) = v86;
            goto LABEL_36;
          }
        }

        v82 = v41;
        v83 = v40;
        v84 = v38;
        sub_2276692E0();
        v46 = sub_22766C080();
        v48 = v47;

        v104 = v46;
        v105 = v48;
        MEMORY[0x22AA98450](91, 0xE100000000000000);
        v49 = *(v45 + 16);
        if (v49)
        {
          v103 = v43;
          sub_226F1EF90();
          v50 = v103;
          v51 = (v45 + 64);
          do
          {
            v52 = *(v51 - 3);
            v94 = *(v51 - 4);
            v95 = v52;
            v96 = v50;
            v54 = *(v51 - 1);
            v55 = *v51;
            v100 = *(v51 - 2);
            v53 = v100;
            v101 = v54;
            v102 = v55;

            sub_226EB396C(v53, v54, v55);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
            sub_22713A9EC();
            v100 = sub_227663B60();
            v101 = v56;
            MEMORY[0x22AA98450](40, 0xE100000000000000);
            v99 = v94;
            v57 = sub_22766D140();
            MEMORY[0x22AA98450](v57);

            MEMORY[0x22AA98450](41, 0xE100000000000000);

            sub_226EB2DFC(v53, v54, v55);
            v50 = v96;
            v58 = v100;
            v59 = v101;
            v103 = v96;
            v60 = *(v96 + 16);
            if (v60 >= *(v96 + 24) >> 1)
            {
              sub_226F1EF90();
              v50 = v103;
            }

            *(v50 + 16) = v60 + 1;
            v61 = v50 + 16 * v60;
            *(v61 + 32) = v58;
            *(v61 + 40) = v59;
            v51 += 40;
            --v49;
          }

          while (v49);
          v37 = v91;
          v36 = v92;
        }

        else
        {
          v50 = v43;
        }

        v100 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_22713AA40();
        v62 = sub_22766BF70();
        v64 = v63;

        MEMORY[0x22AA98450](v62, v64);

        MEMORY[0x22AA98450](93, 0xE100000000000000);

        v65 = v104;
        v66 = v105;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_226EB3F78(0, *(v90 + 2) + 1, 1, v90);
        }

        v68 = *(v90 + 2);
        v67 = *(v90 + 3);
        v43 = MEMORY[0x277D84F90];
        if (v68 >= v67 >> 1)
        {
          v90 = sub_226EB3F78((v67 > 1), v68 + 1, 1, v90);
        }

        v44 = v39 + 1;
        v69 = v90;
        *(v90 + 2) = v68 + 1;
        v70 = &v69[16 * v68];
        *(v70 + 4) = v65;
        *(v70 + 5) = v66;
        v71 = v85 == v39;
        v38 = v84;
        v40 = v83;
        LOBYTE(v39) = v86;
        v41 = v82;
      }

      while (!v71);
    }

    else
    {
      v90 = MEMORY[0x277D84F90];
    }

LABEL_36:
    v100 = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
    sub_22713AA40();
    v77 = sub_22766BF70();
    v79 = v78;

    sub_227442514(v37);
    v80 = sub_226E97AE8(v77, v79, &v106);

    *(v40 + 24) = v80;
    _os_log_impl(&dword_226E8E000, v38, v39, "[Algorithm.Scoring]: === Selected %ld score=%f schedule=%s", v40, 0x20u);
    v81 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x22AA9A450](v81, -1, -1);
    MEMORY[0x22AA9A450](v40, -1, -1);

    (*(v93 + 8))(v36, v87);
  }

  else
  {

    (*(v93 + 8))(v36, v87);
    sub_227442514(v37);
  }
}

void sub_2274358B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v273 = a4;
  v279 = a3;
  v271 = a1;
  v5 = sub_227668240();
  v281 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v268 = &v253 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  i = &v253 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB78, &unk_2276858D0);
  MEMORY[0x28223BE20](v9 - 8);
  v254 = &v253 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v253 = &v253 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v253 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v253 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v253 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v253 - v23;
  v277 = sub_22766B390();
  v276 = *(v277 - 1);
  MEMORY[0x28223BE20](v277);
  v26 = &v253 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();

  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  v282 = a2;

  v29 = os_log_type_enabled(v27, v28);
  v267 = v5;
  v259 = v15;
  v258 = v18;
  v262 = v21;
  v261 = v24;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v283 = v31;
    *v30 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_22704B2CC();
    v32 = sub_22766BEC0();
    v34 = sub_226E97AE8(v32, v33, &v283);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_226E8E000, v27, v28, "[Algorithm] Strategy - greedy preference constrainted: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v35 = v30;
    v5 = v267;
    MEMORY[0x22AA9A450](v35, -1, -1);
  }

  (v276)[1](v26, v277);
  v36 = sub_227667230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
  v37 = sub_22766C380();
  v37[2] = 7;
  v38 = MEMORY[0x277D84F90];
  v37[4] = MEMORY[0x277D84F90];
  v37[5] = v38;
  v37[6] = v38;
  v37[7] = v38;
  v37[8] = v38;
  v37[9] = v38;
  v37[10] = v38;
  v269 = v37;
  v292 = v37;
  v39 = sub_22766C380();
  v39[2] = 7;
  v40 = v279;
  v39[4] = v279;
  v39[5] = v40;
  v39[6] = v40;
  v39[7] = v40;
  v39[8] = v40;
  v39[9] = v40;
  v39[10] = v40;
  v277 = v39;
  v291 = v39;
  v289 = MEMORY[0x277D84FA0];
  v290 = MEMORY[0x277D84FA0];
  v275 = sub_227149A48(v38);
  v288 = v275;

  *&v283 = sub_22726CC44(v282);
  v41 = v280;
  sub_227444EA4(&v283, v36);
  v276 = v41;
  if (v41)
  {
    goto LABEL_233;
  }

  swift_bridgeObjectRelease_n();
  v260 = v283;
  v265 = *(v283 + 16);
  swift_beginAccess();
  v255 = 0;
  v42 = 0;
  v263 = (v281 + 4);
  v43 = v273;
  v44 = v273 + 56;
  v264 = (v281 + 1);
LABEL_6:
  v272 = v277 + 4;
  while (1)
  {
    if (v42 == v265)
    {
      v45 = v265;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
      v47 = v262;
      (*(*(v46 - 8) + 56))(v262, 1, 1, v46);
      v266 = v45;
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        goto LABEL_211;
      }

      v48 = v260;
      if (v42 >= *(v260 + 16))
      {
        goto LABEL_212;
      }

      v49 = v42;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
      v51 = *(v50 - 8);
      v52 = v48 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v49;
      v47 = v262;
      sub_226E93170(v52, v262, &qword_27D7BAE90, &unk_22767DF70);
      v266 = v49 + 1;
      (*(v51 + 56))(v47, 0, 1, v50);
    }

    v53 = v261;
    sub_226E95D18(v47, v261, &qword_27D7BDB78, &unk_2276858D0);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
    v55 = *(v54 - 8);
    v56 = *(v55 + 48);
    if (v56(v53, 1, v54) == 1)
    {
      break;
    }

    v57 = *(v53 + 1);
    v280 = *v53;
    v281 = v57;
    LODWORD(v282) = v53[16];
    (*v263)(i, &v53[*(v54 + 48)], v5);
    v58 = sub_227668200();
    v59 = v58;
    v60 = *(v58 + 16);
    if (v60)
    {
      v61 = 0;
      v279 = v58 + 32;
      v270 = v58;
      v278 = v60;
      while (1)
      {
        if (v61 >= *(v59 + 16))
        {
          __break(1u);
          goto LABEL_199;
        }

        if (*(v43 + 16))
        {
          v70 = *(v279 + v61);
          sub_22766D370();
          v71 = sub_227669310();
          MEMORY[0x22AA996B0](v71);
          v72 = sub_22766D3F0();
          v73 = -1 << *(v43 + 32);
          v74 = v72 & ~v73;
          if ((*(v44 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
          {
            break;
          }
        }

LABEL_20:
        if (++v61 == v60)
        {

          v5 = v267;
          goto LABEL_8;
        }
      }

      v75 = ~v73;
      while (1)
      {
        v76 = sub_227669310();
        if (v76 == sub_227669310())
        {
          break;
        }

        v74 = (v74 + 1) & v75;
        if (((*(v44 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v77 = sub_227669310();
      if ((v77 & 0x8000000000000000) == 0)
      {
        if (v77 >= v277[2])
        {
          goto LABEL_201;
        }

        if (v272[v77] < 1)
        {
          goto LABEL_19;
        }

        v78 = v275;
        if (v275[2] && (v79 = sub_226F3AC2C(v70), (v80 & 1) != 0))
        {
          v81 = *(v78[7] + 8 * v79);
        }

        else
        {
          v81 = MEMORY[0x277D84FA0];
        }

        if (*(v81 + 16))
        {
          v285 = v280;
          v286 = v281;
          v287 = v282;
          sub_22766D370();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_226F480FC();
          sub_227663B10();
          v82 = sub_22766D3F0();
          v83 = -1 << *(v81 + 32);
          v84 = v82 & ~v83;
          if ((*(v81 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
          {
            v85 = ~v83;
            sub_226F48150();
            sub_226EC1E18();
            while (1)
            {
              v86 = *(v81 + 48) + 24 * v84;
              v87 = *(v86 + 16);
              v283 = *v86;
              v284 = v87;
              v285 = v280;
              v286 = v281;
              v287 = v282;
              if (sub_227663B20())
              {
                break;
              }

              v84 = (v84 + 1) & v85;
              if (((*(v81 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v43 = v273;
LABEL_18:

            v59 = v270;
LABEL_19:
            v60 = v278;
            goto LABEL_20;
          }
        }

LABEL_17:

        v62 = sub_227668230();
        v63 = v271;

        v64 = v280;
        v65 = v281;
        v66 = v282;
        sub_226EB396C(v280, v281, v282);
        v67 = v276;
        sub_2274425D4(v62, v63, v64, v65, v66, &v291, v70);
        v69 = v68;
        v276 = v67;
        sub_226EB2DFC(v64, v65, v66);

        v43 = v273;
        if (!*(v69 + 16))
        {
          goto LABEL_18;
        }

        if (*(v69 + 16))
        {
          v88 = *(v69 + 32);

          v89 = sub_227669310();
          sub_226EB396C(v280, v281, v282);
          v90 = v269;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_2272EC574(v90);
          }

          v5 = v267;
          if ((v89 & 0x8000000000000000) == 0)
          {
            if (v89 >= v90[2])
            {
              goto LABEL_219;
            }

            v91 = v90 + 4;
            v92 = v90[v89 + 4];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v90[v89 + 4] = v92;
            v269 = v90;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v92 = sub_2273A55F4(0, *(v92 + 2) + 1, 1, v92);
              v91[v89] = v92;
            }

            v95 = *(v92 + 2);
            v94 = *(v92 + 3);
            if (v95 >= v94 >> 1)
            {
              v92 = sub_2273A55F4((v94 > 1), v95 + 1, 1, v92);
              v91[v89] = v92;
            }

            *(v92 + 2) = v95 + 1;
            v96 = &v92[40 * v95];
            *(v96 + 4) = v88;
            v97 = v280;
            *(v96 + 5) = MEMORY[0x277D84FA0];
            *(v96 + 6) = v97;
            *(v96 + 7) = v281;
            v96[64] = v282;
            v292 = v269;
            v98 = sub_227669310();
            v99 = v277;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v277 = sub_2272EC328(v99);
            }

            v43 = v273;
            if ((v98 & 0x8000000000000000) == 0)
            {
              v100 = v277;
              if (v98 >= v277[2])
              {
                goto LABEL_221;
              }

              v101 = v277[v98 + 4];
              v102 = __OFSUB__(v101, v88);
              v103 = v101 - v88;
              if (!v102)
              {
                v277[v98 + 4] = v103;
                v291 = v100;
                v104 = v280;
                v105 = v281;
                v106 = v282;
                sub_226EB396C(v280, v281, v282);
                sub_227105A48(&v283, v104, v105, v106);
                sub_226EB2DFC(v283, *(&v283 + 1), v284);
                sub_2270B8928(&v283, v70);
                swift_beginAccess();
                sub_226EA9E3C(v255, 0);
                v107 = swift_isUniquelyReferenced_nonNull_native();
                v108 = v288;
                v285 = v288;
                v109 = sub_226F3AC2C(v70);
                v111 = v108[2];
                v112 = (v110 & 1) == 0;
                v102 = __OFADD__(v111, v112);
                v113 = v111 + v112;
                if (v102)
                {
                  goto LABEL_223;
                }

                v114 = v110;
                v275 = v108;
                if (v108[3] >= v113)
                {
                  if ((v107 & 1) == 0)
                  {
                    v116 = v109;
                    sub_226FF2948();
                    v109 = v116;
                    v275 = v285;
                  }
                }

                else
                {
                  sub_226FE77D8(v113, v107);
                  v275 = v285;
                  v109 = sub_226F3AC2C(v70);
                  if ((v114 & 1) != (v115 & 1))
                  {
                    goto LABEL_232;
                  }
                }

                v288 = v275;
                if ((v114 & 1) == 0)
                {
                  sub_227366538(v109, v70, MEMORY[0x277D84FA0], v275);
                }

                sub_227105A48(&v285, v280, v281, v282);
                swift_endAccess();
                sub_226EB2DFC(v285, v286, v287);
                (*v264)(i, v5);
                v255 = sub_227444F9C;
                v42 = v266;
                goto LABEL_6;
              }

LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
              goto LABEL_226;
            }

LABEL_220:
            __break(1u);
LABEL_221:
            __break(1u);
            goto LABEL_222;
          }

LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
          goto LABEL_220;
        }

LABEL_217:
        __break(1u);
        goto LABEL_218;
      }

LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
      goto LABEL_202;
    }

LABEL_8:
    sub_226EB2DFC(v280, v281, v282);
    (*v264)(i, v5);
    v42 = v266;
  }

  v262 = v56;
  v266 = (v55 + 48);
  v272 = 0;
  v117 = 0;
  v256 = v55;
  v261 = (v55 + 56);
  v257 = v54;
  while (1)
  {
    if (v117 == v265)
    {
      v118 = 1;
      v270 = v265;
      v119 = v259;
    }

    else
    {
      if ((v117 & 0x8000000000000000) != 0)
      {
        goto LABEL_213;
      }

      if (v117 >= *(v260 + 16))
      {
        goto LABEL_214;
      }

      v119 = v259;
      v120 = v117;
      sub_226E93170(v260 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v117, v259, &qword_27D7BAE90, &unk_22767DF70);
      v118 = 0;
      v270 = v120 + 1;
    }

    v121 = *v261;
    (*v261)(v119, v118, 1, v54);
    v122 = v119;
    v123 = v258;
    sub_226E95D18(v122, v258, &qword_27D7BDB78, &unk_2276858D0);
    if (v262(v123, 1, v54) == 1)
    {
      v184 = v289;
      if (*(v289 + 16) <= *(v43 + 16) >> 3)
      {
        *&v283 = v43;

        sub_227006178(v184);
        v185 = v283;
      }

      else
      {

        v185 = sub_227008B14(v184, v43);
      }

      v186 = v254;
      v187 = v253;
      v188 = v260;
      v189 = v256;
      v258 = 0;
      v190 = 0;
      v191 = v185 + 56;
      v192 = 1 << *(v185 + 32);
      if (v192 < 64)
      {
        v193 = ~(-1 << v192);
      }

      else
      {
        v193 = -1;
      }

      v194 = v193 & *(v185 + 56);
      v195 = (v192 + 63) >> 6;
      v259 = v185;
      v278 = v185 + 56;
      for (i = v195; ; v195 = i)
      {
        v270 = (v277 + 4);
        while (1)
        {
          do
          {
            if (!v194)
            {
              do
              {
                v196 = v190 + 1;
                if (__OFADD__(v190, 1))
                {
                  goto LABEL_210;
                }

                if (v196 >= v195)
                {

                  sub_227433F98(v43, &v292);
                  v250 = v249;

                  if ((v250 & 1) == 0)
                  {
                    v251 = sub_227664EC0();
                    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
                    swift_allocError();
                    (*(*(v251 - 8) + 104))(v252, *MEMORY[0x277D511D8], v251);
                    swift_willThrow();
                  }

                  sub_226EA9E3C(v255, 0);
                  sub_226EA9E3C(v272, 0);
                  sub_226EA9E3C(v258, 0);
                  return;
                }

                v194 = *(v191 + 8 * v196);
                ++v190;
              }

              while (!v194);
              v190 = v196;
            }

            LODWORD(v279) = *(*(v185 + 48) + (__clz(__rbit64(v194)) | (v190 << 6)));
            v197 = sub_227669310();
            if ((v197 & 0x8000000000000000) != 0)
            {
              goto LABEL_215;
            }

            if (v197 >= v277[2])
            {
              goto LABEL_216;
            }

            v194 &= v194 - 1;
            v191 = v278;
            v195 = i;
          }

          while (*(v270 + 8 * v197) < 1);
          v198 = 0;
LABEL_147:
          if (v198 == v265)
          {
            v199 = 1;
            v268 = v265;
          }

          else
          {
            if ((v198 & 0x8000000000000000) != 0)
            {
              goto LABEL_224;
            }

            if (v198 >= *(v188 + 16))
            {
              goto LABEL_225;
            }

            v200 = v188 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v198;
            v201 = v198;
            sub_226E93170(v200, v186, &qword_27D7BAE90, &unk_22767DF70);
            v199 = 0;
            v268 = v201 + 1;
          }

          v202 = v257;
          v121(v186, v199, 1, v257);
          sub_226E95D18(v186, v187, &qword_27D7BDB78, &unk_2276858D0);
          if (v262(v187, 1, v202) != 1)
          {
            break;
          }

          v189 = v256;
          v191 = v278;
          v195 = i;
        }

        v203 = *(v187 + 8);
        v280 = *v187;
        v281 = v203;
        LODWORD(v282) = *(v187 + 16);
        v204 = v275;
        if (v275[2])
        {
          v205 = sub_226F3AC2C(v279);
          v206 = v257;
          if (v207)
          {
            v208 = *(v204[7] + 8 * v205);
          }

          else
          {
            v208 = MEMORY[0x277D84FA0];
          }
        }

        else
        {
          v208 = MEMORY[0x277D84FA0];
          v206 = v257;
        }

        v263 = *(v206 + 48);
        if (*(v208 + 16))
        {
          v285 = v280;
          v286 = v281;
          v287 = v282;
          sub_22766D370();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
          sub_226F480FC();
          sub_227663B10();
          v209 = sub_22766D3F0();
          v210 = -1 << *(v208 + 32);
          v211 = v209 & ~v210;
          if ((*(v208 + 56 + ((v211 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v211))
          {
            v212 = ~v210;
            sub_226F48150();
            sub_226EC1E18();
            while (1)
            {
              v213 = *(v208 + 48) + 24 * v211;
              v214 = *(v213 + 16);
              v283 = *v213;
              v284 = v214;
              v285 = v280;
              v286 = v281;
              v287 = v282;
              if (sub_227663B20())
              {
                break;
              }

              v211 = (v211 + 1) & v212;
              if (((*(v208 + 56 + ((v211 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v211) & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            sub_226EB2DFC(v280, v281, v282);

            v187 = v253;
            (*v264)(&v263[v253], v267);
LABEL_146:
            v43 = v273;
            v186 = v254;
            v188 = v260;
            v189 = v256;
            v185 = v259;
            v198 = v268;
            goto LABEL_147;
          }
        }

LABEL_163:

        v215 = v271;
        if (*(v271 + 16))
        {
          v216 = sub_226F491D8();
          v217 = v267;
          if (v218)
          {
            v219 = *(*(v215 + 56) + 8 * v216);
          }

          else
          {
            v219 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v219 = MEMORY[0x277D84F90];
          v217 = v267;
        }

        v220 = v276;
        v221 = sub_227433ED0(v219, &v291, v279);
        v223 = v222;
        v276 = v220;

        if (v223)
        {
          v187 = v253;
          (*v264)(&v263[v253], v217);
          sub_226EB2DFC(v280, v281, v282);
          goto LABEL_146;
        }

        v224 = sub_227669310();
        sub_226EB396C(v280, v281, v282);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v224 & 0x8000000000000000) == 0)
          {
            goto LABEL_173;
          }

LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
          goto LABEL_229;
        }

        v269 = sub_2272EC574(v269);
        if ((v224 & 0x8000000000000000) != 0)
        {
          goto LABEL_226;
        }

LABEL_173:
        if (v224 >= v269[2])
        {
          goto LABEL_227;
        }

        v225 = v269 + 4;
        v226 = v269[v224 + 4];
        v227 = swift_isUniquelyReferenced_nonNull_native();
        v225[v224] = v226;
        if ((v227 & 1) == 0)
        {
          v226 = sub_2273A55F4(0, *(v226 + 2) + 1, 1, v226);
          v225[v224] = v226;
        }

        v229 = *(v226 + 2);
        v228 = *(v226 + 3);
        v230 = (v229 + 1);
        if (v229 >= v228 >> 1)
        {
          v275 = (v229 + 1);
          v248 = sub_2273A55F4((v228 > 1), v229 + 1, 1, v226);
          v230 = v275;
          v226 = v248;
          v225[v224] = v248;
        }

        *(v226 + 2) = v230;
        v231 = &v226[40 * v229];
        *(v231 + 4) = v221;
        v232 = v280;
        *(v231 + 5) = MEMORY[0x277D84FA0];
        *(v231 + 6) = v232;
        *(v231 + 7) = v281;
        v231[64] = v282;
        v292 = v269;
        v233 = sub_227669310();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v233 & 0x8000000000000000) != 0)
          {
            goto LABEL_228;
          }
        }

        else
        {
          v277 = sub_2272EC328(v277);
          if ((v233 & 0x8000000000000000) != 0)
          {
            goto LABEL_228;
          }
        }

        v234 = v277;
        if (v233 >= v277[2])
        {
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        v235 = v277[v233 + 4];
        v102 = __OFSUB__(v235, v221);
        v236 = v235 - v221;
        if (v102)
        {
          goto LABEL_230;
        }

        v277[v233 + 4] = v236;
        v291 = v234;
        v237 = v279;
        sub_2270B8928(&v283, v279);
        swift_beginAccess();
        sub_226EA9E3C(v258, 0);
        v238 = swift_isUniquelyReferenced_nonNull_native();
        v239 = v288;
        v285 = v288;
        v241 = sub_226F3AC2C(v237);
        v242 = v239[2];
        v243 = (v240 & 1) == 0;
        v244 = v242 + v243;
        if (__OFADD__(v242, v243))
        {
          goto LABEL_231;
        }

        v245 = v240;
        v275 = v239;
        if (v239[3] >= v244)
        {
          if ((v238 & 1) == 0)
          {
            sub_226FF2948();
            v275 = v285;
          }
        }

        else
        {
          sub_226FE77D8(v244, v238);
          v275 = v285;
          v246 = sub_226F3AC2C(v279);
          if ((v245 & 1) != (v247 & 1))
          {
            goto LABEL_232;
          }

          v241 = v246;
        }

        v43 = v273;
        v288 = v275;
        if ((v245 & 1) == 0)
        {
          sub_227366538(v241, v279, MEMORY[0x277D84FA0], v275);
        }

        sub_227105A48(&v285, v280, v281, v282);
        swift_endAccess();
        sub_226EB2DFC(v285, v286, v287);
        v187 = v253;
        (*v264)(&v263[v253], v217);
        v258 = sub_227444F9C;
        v186 = v254;
        v188 = v260;
        v189 = v256;
        v185 = v259;
        v191 = v278;
      }
    }

    v124 = *(v123 + 1);
    v282 = *v123;
    v280 = v124;
    LODWORD(v281) = v123[16];
    (*v263)(v268, &v123[*(v54 + 48)], v5);
    v125 = sub_227668200();
    v126 = v125;
    v279 = *(v125 + 16);
    if (v279)
    {
      break;
    }

LABEL_67:
    sub_226EB2DFC(v282, v280, v281);
    (*v264)(v268, v5);
    v117 = v270;
  }

  v127 = 0;
  v278 = v125 + 32;
  i = v125;
  while (1)
  {
    if (v127 >= *(v126 + 2))
    {
LABEL_199:
      __break(1u);
      goto LABEL_200;
    }

    if (*(v43 + 16))
    {
      v131 = *(v278 + v127);
      sub_22766D370();
      v132 = sub_227669310();
      MEMORY[0x22AA996B0](v132);
      v133 = sub_22766D3F0();
      v134 = -1 << *(v43 + 32);
      v135 = v133 & ~v134;
      if ((*(v44 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135))
      {
        break;
      }
    }

LABEL_78:
    if (++v127 == v279)
    {

      v54 = v257;
      goto LABEL_67;
    }
  }

  v136 = ~v134;
  while (1)
  {
    v137 = sub_227669310();
    if (v137 == sub_227669310())
    {
      break;
    }

    v135 = (v135 + 1) & v136;
    if (((*(v44 + ((v135 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v135) & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  v138 = sub_227669310();
  if ((v138 & 0x8000000000000000) != 0)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  if (v138 >= v277[2])
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  if (v277[v138 + 4] < 1)
  {
    goto LABEL_77;
  }

  v139 = v275;
  if (v275[2])
  {
    v140 = sub_226F3AC2C(v131);
    v141 = v282;
    v142 = v280;
    if (v143)
    {
      v144 = *(v139[7] + 8 * v140);

      if (!*(v144 + 16))
      {
        goto LABEL_100;
      }
    }

    else
    {
      v144 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_100;
      }
    }

LABEL_96:
    v285 = v141;
    v286 = v142;
    v287 = v281;
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v145 = sub_22766D3F0();
    v146 = -1 << *(v144 + 32);
    v147 = v145 & ~v146;
    if (((*(v144 + 56 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
    {
      goto LABEL_100;
    }

    v148 = ~v146;
    sub_226F48150();
    sub_226EC1E18();
    while (1)
    {
      v149 = *(v144 + 48) + 24 * v147;
      v150 = *(v149 + 16);
      v283 = *v149;
      v284 = v150;
      v285 = v282;
      v286 = v280;
      v287 = v281;
      if (sub_227663B20())
      {
        break;
      }

      v147 = (v147 + 1) & v148;
      if (((*(v144 + 56 + ((v147 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v147) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    v43 = v273;
LABEL_122:
    v5 = v267;
LABEL_77:
    v126 = i;
    goto LABEL_78;
  }

  v144 = MEMORY[0x277D84FA0];
  v141 = v282;
  v142 = v280;
  if (*(MEMORY[0x277D84FA0] + 16))
  {
    goto LABEL_96;
  }

LABEL_100:

  v151 = sub_227668230();
  v152 = v271;

  v153 = v282;
  v154 = v280;
  v155 = v281;
  sub_226EB396C(v282, v280, v281);
  v156 = v276;
  sub_2274425D4(v151, v152, v153, v154, v155, &v291, v131);
  v158 = v157;
  v276 = v156;
  sub_226EB2DFC(v153, v154, v155);

  v43 = v273;
  if (!*(v158 + 16))
  {

    goto LABEL_122;
  }

  v159 = *(v158 + 32);

  v160 = sub_227669310();
  sub_226EB396C(v153, v154, v155);
  v161 = v269;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v160 & 0x8000000000000000) == 0)
    {
      goto LABEL_103;
    }

LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  v161 = sub_2272EC574(v161);
  if ((v160 & 0x8000000000000000) != 0)
  {
    goto LABEL_204;
  }

LABEL_103:
  if (v160 >= v161[2])
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v275 = v159;
  v162 = v161 + 4;
  v163 = v161[v160 + 4];
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v161[v160 + 4] = v163;
  v269 = v161;
  if ((v164 & 1) == 0)
  {
    v163 = sub_2273A55F4(0, *(v163 + 2) + 1, 1, v163);
    v162[v160] = v163;
  }

  v166 = *(v163 + 2);
  v165 = *(v163 + 3);
  if (v166 >= v165 >> 1)
  {
    v163 = sub_2273A55F4((v165 > 1), v166 + 1, 1, v163);
    v162[v160] = v163;
  }

  *(v163 + 2) = v166 + 1;
  v167 = &v163[40 * v166];
  v168 = v275;
  *(v167 + 4) = v275;
  v169 = v282;
  *(v167 + 5) = MEMORY[0x277D84FA0];
  *(v167 + 6) = v169;
  *(v167 + 7) = v154;
  v167[64] = v281;
  v292 = v269;
  v170 = sub_227669310();
  v171 = v277;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v170 & 0x8000000000000000) == 0)
    {
      goto LABEL_110;
    }

LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v171 = sub_2272EC328(v171);
  if ((v170 & 0x8000000000000000) != 0)
  {
    goto LABEL_206;
  }

LABEL_110:
  if (v170 >= *(v171 + 2))
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  v172 = *&v171[8 * v170 + 32];
  v102 = __OFSUB__(v172, v168);
  v173 = v172 - v168;
  if (v102)
  {
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  *&v171[8 * v170 + 32] = v173;
  v277 = v171;
  v291 = v171;
  sub_2270B8928(&v283, v131);
  swift_beginAccess();
  sub_226EA9E3C(v272, 0);
  v174 = swift_isUniquelyReferenced_nonNull_native();
  v175 = v288;
  v285 = v288;
  v177 = sub_226F3AC2C(v131);
  v178 = v175[2];
  v179 = (v176 & 1) == 0;
  v180 = v178 + v179;
  if (__OFADD__(v178, v179))
  {
    goto LABEL_209;
  }

  v181 = v176;
  v275 = v175;
  if (v175[3] >= v180)
  {
    if ((v174 & 1) == 0)
    {
      sub_226FF2948();
      v275 = v285;
    }

    goto LABEL_119;
  }

  sub_226FE77D8(v180, v174);
  v275 = v285;
  v182 = sub_226F3AC2C(v131);
  if ((v181 & 1) == (v183 & 1))
  {
    v177 = v182;
LABEL_119:
    v5 = v267;
    v288 = v275;
    if ((v181 & 1) == 0)
    {
      sub_227366538(v177, v131, MEMORY[0x277D84FA0], v275);
    }

    v128 = v282;
    v129 = v280;
    v130 = v281;
    sub_226EB396C(v282, v280, v281);
    sub_227105A48(&v285, v128, v129, v130);
    swift_endAccess();
    sub_226EB2DFC(v285, v286, v287);
    v272 = sub_227444F9C;
    v43 = v273;
    goto LABEL_77;
  }

LABEL_232:
  sub_22766D220();
  __break(1u);
LABEL_233:

  __break(1u);
}

BOOL sub_227437AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  MEMORY[0x28223BE20](v4);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v49 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  v11 = sub_227668240();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v51 = a1;
  sub_226E93170(a1, v10, &qword_27D7BAE90, &unk_22767DF70);
  sub_226EB2DFC(*v10, *(v10 + 1), v10[16]);
  v18 = *(v12 + 32);
  v18(v17, &v10[*(v4 + 48)], v11);
  sub_226E93170(v56, v10, &qword_27D7BAE90, &unk_22767DF70);
  sub_226EB2DFC(*v10, *(v10 + 1), v10[16]);
  v54 = v4;
  v18(v14, &v10[*(v4 + 48)], v11);
  v19 = *(sub_227668200() + 16);

  v20 = *(sub_227668200() + 16);

  if (v19 != v20)
  {
    v31 = *(sub_227668200() + 16);

    v32 = sub_227668200();
LABEL_8:
    v33 = v32;
    v34 = *(v12 + 8);
    v34(v14, v11);
    v34(v17, v11);
    v35 = *(v33 + 16);

    return v31 < v35;
  }

  v21 = *(sub_227668230() + 16);

  v22 = *(sub_227668230() + 16);

  if (v21 != v22)
  {
    v31 = *(sub_227668230() + 16);

    v32 = sub_227668230();
    goto LABEL_8;
  }

  v23 = v52;
  sub_226E93170(v51, v52, &qword_27D7BAE90, &unk_22767DF70);
  v24 = *v23;
  v25 = *(v23 + 16);
  v26 = v53;
  if (*(v53 + 16))
  {
    v51 = *(v23 + 8);
    v50 = sub_226F491D8();
    v28 = v27;
    sub_226EB2DFC(v24, v51, v25);
    v29 = v54;
    if (v28)
    {
      v30 = *(*(v26 + 56) + 8 * v50);
    }

    else
    {
      v30 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    sub_226EB2DFC(*v23, *(v23 + 8), *(v23 + 16));
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v29 = v54;
  }

  v37 = v23 + *(v29 + 48);
  v53 = *(v12 + 8);
  (v53)(v37, v11);
  v38 = v55;
  sub_226E93170(v56, v55, &qword_27D7BAE90, &unk_22767DF70);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = *(v38 + 16);
  if (*(v26 + 16))
  {
    v56 = v30;
    v42 = v39;
    v43 = v40;
    v44 = v41;
    v52 = sub_226F491D8();
    v46 = v45;
    sub_226EB2DFC(v42, v43, v44);
    if (v46)
    {
      v47 = *(*(v26 + 56) + 8 * v52);
    }

    else
    {
      v47 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v30 = v56;
    v29 = v54;
  }

  else
  {
    sub_226EB2DFC(v39, v40, v41);
    v47 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v48 = v53;
  (v53)(v14, v11);
  v48(v17, v11);
  v48((v55 + *(v29 + 48)), v11);
  return v30 < v47;
}

void sub_227437F54(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v6 = v4;
  v313 = a4;
  v309 = a3;
  v306 = a1;
  v293 = sub_2276681F0();
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v291 = &v277 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v285 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v286 = &v277 - v10;
  v11 = sub_227667370();
  v311 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v310 = &v277 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_2276627D0();
  v300 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v302 = &v277 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v14 - 8);
  v288 = &v277 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v299 = &v277 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v18 - 8);
  v287 = &v277 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v296 = &v277 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB68, &qword_2276858C0);
  MEMORY[0x28223BE20](v22 - 8);
  v305 = &v277 - v23;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB70, &qword_2276858C8);
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v290 = &v277 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v289 = &v277 - v26;
  v27 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v27);
  v295 = &v277 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v277 - v30;
  v316 = sub_22766B390();
  v319 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v297 = &v277 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v298 = &v277 - v34;
  MEMORY[0x28223BE20](v35);
  v294 = &v277 - v36;
  MEMORY[0x28223BE20](v37);
  v307 = &v277 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v277 - v40;
  v315 = *(a2 + v27[8]);
  v42 = sub_227433CAC(v315);
  v317 = v5;
  sub_22766A630();
  v318 = a2;
  sub_2274424B0(a2, v31);

  v43 = sub_22766B380();
  v44 = sub_22766C8B0();

  v45 = os_log_type_enabled(v43, v44);
  v308 = v11;
  v284 = v9;
  v312 = v42;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v314 = v6;
    v47 = v46;
    v283 = swift_slowAlloc();
    v321 = v283;
    *v47 = 136315650;
    v48 = sub_227668770();
    v50 = sub_226E97AE8(v48, v49, &v321);

    *(v47 + 4) = v50;
    *(v47 + 12) = 2048;
    v51 = *&v31[v27[7]];
    sub_227442514(v31);
    *(v47 + 14) = v51;
    *(v47 + 22) = 2080;
    v52 = MEMORY[0x22AA98660](v42, MEMORY[0x277D837D0]);
    v54 = sub_226E97AE8(v52, v53, &v321);

    *(v47 + 24) = v54;
    _os_log_impl(&dword_226E8E000, v43, v44, "[===]: Building %s schedule: %ld min on %s", v47, 0x20u);
    v55 = v283;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v55, -1, -1);
    v56 = v47;
    v6 = v314;
    MEMORY[0x22AA9A450](v56, -1, -1);
  }

  else
  {
    sub_227442514(v31);
  }

  v57 = *(v319 + 8);
  v57(v41, v316);
  v58 = v317;
  v59 = *(v318 + v27[7]);
  v60 = *(v318 + v27[13]);
  v61 = *(v318 + v27[10]);
  v62 = sub_2273267EC(v59, v60, v61, *(v315 + 16), v313);
  if (v58)
  {

    return;
  }

  v314 = v6;
  v279 = v59;
  v278 = v61;
  v280 = v60;
  v281 = v57;
  v283 = 0;
  v282 = v27;
  v63 = *(v62 + 16);

  v64 = v63 + 64;
  v65 = 1 << *(v63 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v63 + 64);
  v68 = (v65 + 63) >> 6;
  v317 = v63;

  v69 = 0;
  v70 = MEMORY[0x277D84F90];
LABEL_11:
  if (v67)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v71 >= v68)
    {
      break;
    }

    v67 = *(v64 + 8 * v71);
    ++v69;
    if (v67)
    {
      v69 = v71;
LABEL_16:
      v72 = *(*(v317 + 56) + ((v69 << 9) | (8 * __clz(__rbit64(v67)))));
      v73 = *(v72 + 16);
      v74 = v70[2];
      v75 = v74 + v73;
      if (__OFADD__(v74, v73))
      {
        goto LABEL_150;
      }

      v76 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v75 > v70[3] >> 1)
      {
        if (v74 <= v75)
        {
          v78 = v74 + v73;
        }

        else
        {
          v78 = v74;
        }

        v76 = sub_2273A58B0(isUniquelyReferenced_nonNull_native, v78, 1, v70);
      }

      v67 &= v67 - 1;
      if (*(v72 + 16))
      {
        if ((v76[3] >> 1) - v76[2] < v73)
        {
          goto LABEL_153;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        swift_arrayInitWithCopy();

        v70 = v76;
        if (v73)
        {
          v79 = v76[2];
          v80 = __OFADD__(v79, v73);
          v81 = v79 + v73;
          if (v80)
          {
            goto LABEL_160;
          }

          v76[2] = v81;
        }
      }

      else
      {

        v70 = v76;
        if (v73)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_11;
    }
  }

  v82 = v70[2];
  if (!v82)
  {

    v91 = v307;
    sub_22766A630();
    v92 = sub_22766B380();
    v93 = sub_22766C890();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_226E8E000, v92, v93, "No splits to use for schedule generation!", v94, 2u);
      MEMORY[0x22AA9A450](v94, -1, -1);
    }

    v281(v91, v316);
    v95 = sub_227664EC0();
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v95 - 8) + 104))(v96, *MEMORY[0x277D51188], v95);
    swift_willThrow();
    return;
  }

  v307 = v70;
  v84 = v314;
  v83 = v315;
  sub_22743CBB4(v82, *(v315 + 16));
  if ((v85 & 1) == 0)
  {
    v90 = v282;
    v87 = v318;
LABEL_36:
    v97 = sub_227668780();
    if (v97 == sub_227668780())
    {
      v98 = *(v87 + v90[5]);
      v99 = v283;
      sub_2274358B8(v280, v98, v279, v83);
      v283 = v99;
      if (v99)
      {

        return;
      }

      v125 = v100;
      v304 = v98;
      v126 = *(v100 + 16);
      v305 = *(v87 + v90[16]);

      v314 = v125;
      if (v126)
      {
        v127 = 0;
        v128 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v127 >= *(v314 + 16))
          {
            goto LABEL_154;
          }

          v129 = *(v125 + 32 + 8 * v127);
          v130 = *(v129 + 16);
          v131 = *(v128 + 2);
          v132 = v131 + v130;
          if (__OFADD__(v131, v130))
          {
            goto LABEL_155;
          }

          v133 = swift_isUniquelyReferenced_nonNull_native();
          if (v133 && v132 <= *(v128 + 3) >> 1)
          {
            if (!*(v129 + 16))
            {
              goto LABEL_48;
            }
          }

          else
          {
            if (v131 <= v132)
            {
              v134 = v131 + v130;
            }

            else
            {
              v134 = v131;
            }

            v128 = sub_2273A55F4(v133, v134, 1, v128);
            if (!*(v129 + 16))
            {
LABEL_48:

              if (v130)
              {
                goto LABEL_156;
              }

              goto LABEL_49;
            }
          }

          if ((*(v128 + 3) >> 1) - *(v128 + 2) < v130)
          {
            goto LABEL_161;
          }

          swift_arrayInitWithCopy();

          if (v130)
          {
            v135 = *(v128 + 2);
            v80 = __OFADD__(v135, v130);
            v136 = v135 + v130;
            if (v80)
            {
              goto LABEL_164;
            }

            *(v128 + 2) = v136;
          }

LABEL_49:
          if (v126 == ++v127)
          {
            goto LABEL_72;
          }
        }
      }

      v128 = MEMORY[0x277D84F90];
LABEL_72:
      v313 = *(v128 + 2);
      v150 = 0;
      if (v313)
      {
        v151 = 0;
        v152 = v128 + 64;
        v153 = v305;
        v309 = v128;
        while (1)
        {
          if (v151 >= *(v128 + 2))
          {
            goto LABEL_157;
          }

          v154 = *(v152 - 2);
          v155 = *(v152 - 1);
          v156 = *v152;
          v317 = *(v152 - 3);

          sub_226EB396C(v154, v155, v156);
          sub_226EB396C(v154, v155, v156);
          sub_226EA9E3C(v150, 0);
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v321 = v153;
          v159 = sub_226F491D8();
          v160 = *(v153 + 2);
          v161 = (v158 & 1) == 0;
          if (__OFADD__(v160, v161))
          {
            goto LABEL_158;
          }

          v162 = v158;
          if (*(v153 + 3) >= v160 + v161)
          {
            if (v157)
            {
              if ((v158 & 1) == 0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              sub_226FF6744();
              v153 = v321;
              if ((v162 & 1) == 0)
              {
                goto LABEL_79;
              }
            }
          }

          else
          {
            sub_226FF6748();
            v163 = v321;
            v164 = sub_226F491D8();
            if ((v162 & 1) != (v165 & 1))
            {
              goto LABEL_168;
            }

            v159 = v164;
            v153 = v163;
            if ((v162 & 1) == 0)
            {
LABEL_79:
              *&v153[8 * (v159 >> 6) + 64] |= 1 << v159;
              v166 = *(v153 + 6) + 24 * v159;
              *v166 = v154;
              *(v166 + 8) = v155;
              *(v166 + 16) = v156;
              *(*(v153 + 7) + 8 * v159) = 0;
              v167 = *(v153 + 2);
              v80 = __OFADD__(v167, 1);
              v168 = v167 + 1;
              if (v80)
              {
                goto LABEL_163;
              }

              *(v153 + 2) = v168;
              goto LABEL_84;
            }
          }

          sub_226EB2DFC(v154, v155, v156);
LABEL_84:
          v169 = *(v153 + 7);
          v170 = *(v169 + 8 * v159);
          v80 = __OFADD__(v170, 1);
          v171 = v170 + 1;
          if (v80)
          {
            goto LABEL_159;
          }

          v151 = (v151 + 1);
          *(v169 + 8 * v159) = v171;

          sub_226EB2DFC(v154, v155, v156);
          v152 += 40;
          v150 = sub_227444F98;
          v128 = v309;
          if (v313 == v151)
          {
            goto LABEL_90;
          }
        }
      }

      v153 = v305;
LABEL_90:
      v303 = v150;
      v305 = v153;

      v172 = v294;
      sub_22766A630();
      v173 = v314;

      v174 = sub_22766B380();
      v175 = sub_22766C8B0();

      if (os_log_type_enabled(v174, v175))
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v327 = v177;
        *v176 = 136315138;
        v178 = *(v173 + 16);

        v179 = v308;
        if (v178)
        {
          v180 = 0;
          v317 = v173 + 32;
          v298 = (v178 - 1);
          v307 = MEMORY[0x277D84F90];
          do
          {
            v181 = v180;
            while (1)
            {
              if (v181 >= *(v173 + 16))
              {
                goto LABEL_162;
              }

              v182 = *(v317 + 8 * v181);

              if (MEMORY[0x22AA95620](v181) != 7)
              {
                if (*(v182 + 16))
                {
                  break;
                }
              }

              if (v178 == ++v181)
              {
                goto LABEL_113;
              }
            }

            v293 = v178;
            sub_2276692E0();
            v183 = sub_22766C080();
            v185 = v184;

            v325 = v183;
            v326 = v185;
            MEMORY[0x22AA98450](91, 0xE100000000000000);
            v186 = *(v182 + 16);
            v297 = v177;
            if (v186)
            {
              v290 = v176;
              LODWORD(v291) = v175;
              v292 = v174;
              v324 = MEMORY[0x277D84F90];
              sub_226F1EF90();
              v187 = v324;
              v188 = (v182 + 64);
              do
              {
                v312 = v186;
                v313 = v187;
                v309 = *(v188 - 4);
                v190 = *(v188 - 1);
                v191 = *v188;
                v321 = *(v188 - 2);
                v189 = v321;
                v322 = v190;
                v323 = v191;

                sub_226EB396C(v189, v190, v191);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
                sub_22713A9EC();
                v321 = sub_227663B60();
                v322 = v192;
                MEMORY[0x22AA98450](40, 0xE100000000000000);
                v320 = v309;
                v193 = sub_22766D140();
                MEMORY[0x22AA98450](v193);

                MEMORY[0x22AA98450](41, 0xE100000000000000);

                sub_226EB2DFC(v189, v190, v191);
                v187 = v313;
                v194 = v321;
                v195 = v322;
                v324 = v313;
                v196 = v313[2];
                if (v196 >= v313[3] >> 1)
                {
                  sub_226F1EF90();
                  v187 = v324;
                }

                v187[2] = v196 + 1;
                v197 = &v187[2 * v196];
                v197[4] = v194;
                v197[5] = v195;
                v188 += 40;
                v186 = v312 - 1;
              }

              while (v312 != 1);
              v174 = v292;
              v175 = v291;
              v176 = v290;
            }

            else
            {
              v187 = MEMORY[0x277D84F90];
            }

            v313 = v187;
            v321 = v187;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
            sub_22713AA40();
            v198 = sub_22766BF70();
            v200 = v199;

            MEMORY[0x22AA98450](v198, v200);

            MEMORY[0x22AA98450](93, 0xE100000000000000);

            v202 = v325;
            v201 = v326;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v307 = sub_226EB3F78(0, *(v307 + 2) + 1, 1, v307);
            }

            v204 = *(v307 + 2);
            v203 = *(v307 + 3);
            if (v204 >= v203 >> 1)
            {
              v307 = sub_226EB3F78((v203 > 1), v204 + 1, 1, v307);
            }

            v180 = v181 + 1;
            v205 = v307;
            *(v307 + 2) = v204 + 1;
            v206 = &v205[16 * v204];
            *(v206 + 4) = v202;
            *(v206 + 5) = v201;
            v179 = v308;
            v173 = v314;
            v177 = v297;
            v178 = v293;
          }

          while (v298 != v181);
        }

        else
        {
          v307 = MEMORY[0x277D84F90];
        }

LABEL_113:

        v321 = v307;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
        sub_22713AA40();
        v207 = sub_22766BF70();
        v209 = v208;

        v210 = sub_226E97AE8(v207, v209, &v327);

        *(v176 + 4) = v210;
        _os_log_impl(&dword_226E8E000, v174, v175, "[===]:  Selected preference schedule: %s", v176, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v177);
        MEMORY[0x22AA9A450](v177, -1, -1);
        MEMORY[0x22AA9A450](v176, -1, -1);

        v281(v294, v316);
      }

      else
      {

        v281(v172, v316);
        v179 = v308;
      }

      v211 = v311;
      v212 = v301;
      v213 = v300;
      v214 = v296;
      (*(v300 + 56))(v296, 1, 1, v301);
      (*(v211 + 56))(v299, 1, 1, v179);
      v215 = v287;
      sub_226E93170(v214, v287, &unk_27D7BB9D0, &qword_227671550);
      v216 = v213;
      v217 = *(v213 + 48);
      v218 = v179;
      if (v217(v215, 1, v212) == 1)
      {
        (*(v216 + 16))(v302, v318, v212);
        v219 = v217(v215, 1, v212);
        v220 = v304;
        if (v219 != 1)
        {
          sub_226E97D1C(v215, &unk_27D7BB9D0, &qword_227671550);
        }
      }

      else
      {
        (*(v216 + 32))(v302, v215, v212);
        v220 = v304;
      }

      v221 = v282;
      v222 = v318;
      v319 = *(v318 + v282[9]);
      v223 = v288;
      sub_226E93170(v299, v288, &qword_27D7BB3E8, &unk_227686370);
      v224 = v311;
      v225 = *(v311 + 48);
      if (v225(v223, 1, v218) == 1)
      {
        (*(v224 + 16))(v310, v222 + v221[14], v218);
        v226 = v225(v223, 1, v218);

        v227 = v315;

        v228 = v280;

        v229 = v218;
        if (v226 != 1)
        {
          sub_226E97D1C(v223, &qword_27D7BB3E8, &unk_227686370);
        }
      }

      else
      {
        (*(v224 + 32))(v310, v223, v218);

        v227 = v315;

        v228 = v280;

        v229 = v218;
      }

      v230 = v282;
      v231 = *(v318 + v282[12]);
      v232 = v295;
      (*(v300 + 16))(v295, v302, v301);
      *&v232[v230[5]] = v220;
      v233 = v314;

      v234 = v305;

      v235 = sub_226F491E4();
      *&v232[v230[6]] = v235;
      *&v232[v230[7]] = v279;
      *&v232[v230[8]] = v227;
      *&v232[v230[9]] = v319;
      v232[v230[12]] = v231;
      *&v232[v230[10]] = v278;
      *&v232[v230[13]] = v228;
      v236 = v311;
      (*(v311 + 16))(&v232[v230[14]], v310, v229);
      *&v232[v230[15]] = v233;
      *&v232[v230[16]] = v234;
      v237 = v235 + 56;
      v238 = 1 << *(v235 + 32);
      v239 = -1;
      if (v238 < 64)
      {
        v239 = ~(-1 << v238);
      }

      v240 = v239 & *(v235 + 56);
      v241 = (v238 + 63) >> 6;

      v319 = v235;

      v316 = 0;
      v242 = 0;
      v317 = MEMORY[0x277D84F98];
      v318 = v237;
      v243 = v310;
      if (!v240)
      {
LABEL_125:
        while (1)
        {
          v244 = v242 + 1;
          if (__OFADD__(v242, 1))
          {
            break;
          }

          if (v244 >= v241)
          {

            v274 = v295;
            *&v295[v230[11]] = v317;
            sub_22746B5DC();
            v276 = v275;

            (*(v236 + 8))(v243, v229);
            (*(v300 + 8))(v302, v301);
            sub_226E97D1C(v299, &qword_27D7BB3E8, &unk_227686370);
            sub_226E97D1C(v296, &unk_27D7BB9D0, &qword_227671550);
            *(v274 + v230[17]) = v276;
            sub_227442570(v274, v306);
            sub_226EA9E3C(v316, 0);
            sub_226EA9E3C(v303, 0);
            return;
          }

          v240 = *(v237 + 8 * v244);
          ++v242;
          if (v240)
          {
            v242 = v244;
            goto LABEL_129;
          }
        }

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
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_22766D220();
        __break(1u);
LABEL_169:
        sub_22766D220();
        __break(1u);
        return;
      }

      while (1)
      {
LABEL_129:
        v245 = __clz(__rbit64(v240));
        v240 &= v240 - 1;
        v246 = *(v319 + 48) + 24 * (v245 | (v242 << 6));
        v247 = *v246;
        v248 = *(v246 + 8);
        v249 = *(v246 + 16);
        sub_226EB396C(*v246, v248, v249);
        v250 = sub_2276672C0();
        if (!*(v250 + 16))
        {
          sub_226EB2DFC(v247, v248, v249);
LABEL_138:

          v229 = v308;
          v236 = v311;
          goto LABEL_139;
        }

        v251 = sub_226F491D8();
        v253 = v252;
        sub_226EB2DFC(v247, v248, v249);
        if ((v253 & 1) == 0)
        {
          goto LABEL_138;
        }

        v254 = *(v285 + 72);
        v255 = v286;
        sub_226E93170(*(v250 + 56) + v254 * v251, v286, &qword_27D7B88C0, &unk_22767A720);

        sub_226EA9E3C(v316, 0);
        v256 = v317;
        v257 = swift_isUniquelyReferenced_nonNull_native();
        v321 = v256;
        v259 = sub_226F3ADC4(v255);
        v260 = *(v256 + 16);
        v261 = (v258 & 1) == 0;
        v262 = v260 + v261;
        if (__OFADD__(v260, v261))
        {
          goto LABEL_165;
        }

        v263 = v258;
        if (*(v256 + 24) < v262)
        {
          break;
        }

        v236 = v311;
        if ((v257 & 1) == 0)
        {
          sub_226FF2414();
          goto LABEL_135;
        }

        v266 = v321;
        if ((v258 & 1) == 0)
        {
LABEL_143:
          v267 = v266;
          sub_227444F98(&v321);
          v268 = v321;
          v267[(v259 >> 6) + 8] |= 1 << v259;
          sub_226E93170(v286, v267[6] + v259 * v254, &qword_27D7B88C0, &unk_22767A720);
          *(v267[7] + 8 * v259) = v268;
          v269 = v267[2];
          v80 = __OFADD__(v269, 1);
          v270 = v269 + 1;
          if (v80)
          {
            goto LABEL_167;
          }

          v266 = v267;
          v267[2] = v270;
          v236 = v311;
        }

LABEL_145:
        v271 = *(v266 + 56);
        v272 = *(v271 + 8 * v259);
        v80 = __OFADD__(v272, 1);
        v273 = v272 + 1;
        if (v80)
        {
          goto LABEL_166;
        }

        v317 = v266;
        *(v271 + 8 * v259) = v273;
        sub_226E97D1C(v286, &qword_27D7B88C0, &unk_22767A720);
        v316 = sub_227444F98;
        v229 = v308;
LABEL_139:
        v230 = v282;
        v237 = v318;
        v243 = v310;
        if (!v240)
        {
          goto LABEL_125;
        }
      }

      sub_226FE6DD4(v262, v257);
      v264 = sub_226F3ADC4(v286);
      if ((v263 & 1) != (v265 & 1))
      {
        goto LABEL_169;
      }

      v259 = v264;
LABEL_135:
      v236 = v311;
      v266 = v321;
      if ((v263 & 1) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_145;
    }

    v101 = v298;
    sub_22766A630();
    v102 = sub_22766B380();
    v103 = sub_22766C8B0();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_226E8E000, v102, v103, "[Algorithm] Strategy - enumerated-kernels.", v104, 2u);
      MEMORY[0x22AA9A450](v104, -1, -1);
    }

    v105 = v319 + 8;
    v106 = v316;
    v281(v101, v316);
    if (v82 > 0x31)
    {

      v114 = v87;
      v115 = v309;
      v116 = v313;
      v111 = v283;
    }

    else
    {
      v107 = v291;
      sub_227667240();
      v108 = sub_227667F10();
      (v292[1].isa)(v107, v293);
      v109 = sub_22743F908(v87, v307, v108);

      v111 = v283;
      v112 = v313;
      if (*(v109 + 16))
      {
        v113 = v297;
LABEL_67:
        MEMORY[0x28223BE20](v110);
        *(&v277 - 2) = v318;
        *(&v277 - 1) = v84;
        sub_2275F1E9C(sub_227443EA8, (&v277 - 4), v109);
        v138 = v137;
        sub_22766A630();

        v139 = sub_22766B380();
        v140 = sub_22766C8B0();

        if (os_log_type_enabled(v139, v140))
        {
          v141 = swift_slowAlloc();
          v318 = v105;
          v142 = v141;
          v143 = swift_slowAlloc();
          v319 = v111;
          v144 = v143;
          v321 = v143;
          *v142 = 136315138;
          v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE70, &qword_2276798E0);
          v146 = MEMORY[0x22AA98660](v109, v145);
          v148 = v147;

          v149 = sub_226E97AE8(v146, v148, &v321);

          *(v142 + 4) = v149;
          _os_log_impl(&dword_226E8E000, v139, v140, "Determining best general schedule scaffold from kernels: %s", v142, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v144);
          MEMORY[0x22AA9A450](v144, -1, -1);
          MEMORY[0x22AA9A450](v142, -1, -1);

          v281(v113, v316);
        }

        else
        {

          v281(v113, v106);
        }

        sub_227434F24(v306, v138, v309);

        return;
      }

      v114 = v87;
      v115 = v309;
      v116 = v112;
    }

    sub_22743E304(v114, v115, v116);
    v113 = v297;
    if (v111)
    {
      return;
    }

    v109 = v110;
    goto LABEL_67;
  }

  v86 = v305;
  v87 = v318;
  v88 = v283;
  sub_22743CF30(v305, v318, v307, v309);
  v90 = v282;
  if (v88)
  {

    v303[7](v86, 1, 1, v304);
    sub_226E97D1C(v86, &qword_27D7BDB68, &qword_2276858C0);
    v283 = 0;
    goto LABEL_36;
  }

  v117 = v89;

  v118 = v86;
  v119 = v304;
  v120 = *(v304 + 48);

  *(v118 + v120) = v117;
  v303[7](v118, 0, 1, v119);
  v121 = v118;
  v122 = v289;
  sub_226E95D18(v121, v289, &qword_27D7BDB70, &qword_2276858C8);
  v123 = v122;
  v124 = v290;
  sub_226E95D18(v123, v290, &qword_27D7BDB70, &qword_2276858C8);
  sub_227442570(v124, v306);
}

void sub_22743A05C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = sub_22766B390();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v12);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_2274424B0(a2, a4);
  v15 = sub_2276692F0();
  v44 = *(v15 + 16);
  if (v44)
  {
    v17 = 0;
    v18 = 0;
    v43 = *(v12 + 32);
    v38 = (v10 + 8);
    v39 = v14;
    v37 = v14 + 32;
    *&v16 = 134217984;
    v35 = v16;
    v19 = v36;
    v20 = v41;
    v42 = v15;
    while (v18 < *(v15 + 16))
    {
      if (sub_22718CB74(*(v15 + v18 + 32), *(a4 + v43)))
      {
        sub_22766A630();
        v21 = sub_22766B380();
        v22 = sub_22766C8B0();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = a3;
          v24 = v5;
          v25 = swift_slowAlloc();
          *v25 = v35;
          *(v25 + 4) = sub_227669310();
          _os_log_impl(&dword_226E8E000, v21, v22, "Determining daily schedule at day=%ld", v25, 0xCu);
          v26 = v25;
          v5 = v24;
          a3 = v23;
          v19 = v36;
          MEMORY[0x22AA9A450](v26, -1, -1);
        }

        (*v38)(v19, v40);
        v27 = *(v39 + 16);
        if (!v27)
        {
          goto LABEL_19;
        }

        v28 = v17 % v27;
        if (v28 < 0)
        {
          goto LABEL_20;
        }

        if (__OFADD__(v17++, 1))
        {
          goto LABEL_21;
        }

        v30 = *(v37 + 8 * v28);

        if (sub_227440298(v31))
        {
          sub_2274404C0(v30);
          v33 = v32;
        }

        else
        {
          v45 = v30;

          sub_227443E04(&v45, a3);
          if (v5)
          {
            goto LABEL_22;
          }

          v33 = v45;
        }

        v34 = v41;
        WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v33, v41);
        v20 = v34;
      }

      else
      {
        WorkoutPlanGenerationScaffold.withUnscheduledDay()(v20);
      }

      ++v18;
      sub_227442514(a4);
      sub_227442570(v20, a4);
      v15 = v42;
      if (v44 == v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

void sub_22743A3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v50 = a3;
  v46 = sub_22766B390();
  MEMORY[0x28223BE20](v46);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v41[1] = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils;
  v13 = (v10 + 63) >> 6;
  v45 = (v6 + 8);

  v14 = 0;
  v51 = xmmword_227670CD0;
  v41[0] = MEMORY[0x277D84F90];
  v43 = v8;
  v44 = a4;
  v47 = v13;
  v48 = a1 + 64;
  for (i = a1; v12; v9 = v48)
  {
LABEL_8:
    v16 = *(*(a1 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    v17 = *(v16 + 16);
    if (v17)
    {

      v18 = INFINITY;
      v19 = 32;
      v20 = MEMORY[0x277D84F90];
      v22 = v49;
      v21 = v50;
      do
      {
        v24 = *(v16 + v19);

        v25 = sub_227133B54(v22, v21, v24);
        if (v25 < v18)
        {
          v23 = v25;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
          v20 = swift_allocObject();
          *(v20 + 16) = v51;
          *(v20 + 32) = v24;
          v18 = v23;
        }

        else if (v25 == v18)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2273A58B0(0, *(v20 + 16) + 1, 1, v20);
          }

          v27 = *(v20 + 16);
          v26 = *(v20 + 24);
          if (v27 >= v26 >> 1)
          {
            v20 = sub_2273A58B0((v26 > 1), v27 + 1, 1, v20);
          }

          *(v20 + 16) = v27 + 1;
          *(v20 + 8 * v27 + 32) = v24;
          v22 = v49;
          v21 = v50;
        }

        else
        {
        }

        v19 += 8;
        --v17;
      }

      while (v17);

      v8 = v43;
      a1 = i;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v12 &= v12 - 1;
    v28 = *(v20 + 16);
    if (v28)
    {
      sub_227664440();
      sub_226EAC0B4(&qword_27D7BB388, MEMORY[0x277D508E8], MEMORY[0x277D508F0]);
      v32 = sub_22766BF40();
      v33 = (v32 * v28) >> 64;
      if (v28 > v32 * v28)
      {
        v34 = -v28 % v28;
        if (v34 > v32 * v28)
        {
          do
          {
            v35 = sub_22766BF40();
          }

          while (v34 > v35 * v28);
          v33 = (v35 * v28) >> 64;
        }
      }

      if (v33 >= *(v20 + 16))
      {
        goto LABEL_40;
      }

      v36 = *(v20 + 8 * v33 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41[0] = sub_2273A58B0(0, v41[0][2] + 1, 1, v41[0]);
      }

      v39 = v41[0][2];
      v38 = v41[0][3];
      if (v39 >= v38 >> 1)
      {
        v41[0] = sub_2273A58B0((v38 > 1), v39 + 1, 1, v41[0]);
      }

      v40 = v41[0];
      v41[0][2] = v39 + 1;
      v40[v39 + 4] = v36;
    }

    else
    {

      sub_22766A630();
      v29 = sub_22766B380();
      v30 = sub_22766C890();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_226E8E000, v29, v30, "Could not identify candidate with smallest duration related penalty", v31, 2u);
        MEMORY[0x22AA9A450](v31, -1, -1);
      }

      (*v45)(v8, v46);
    }

    v13 = v47;
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

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_22743A8A4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v69 = a1;
  v5 = v4;
  v70 = a4;
  v8 = sub_2276681F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v67 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - v18;
  v72 = a2;
  if (!*(a2 + 16))
  {
    sub_22766A630();
    v28 = sub_22766B380();
    v29 = sub_22766C890();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_226E8E000, v28, v29, "Could not greedily query schedule, exiting with incomplete scaffold error.", v30, 2u);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    (*(v13 + 8))(v19, v12);
    goto LABEL_34;
  }

  v65 = v17;
  v66 = *a3;
  sub_227667240();
  v20 = sub_227667FC0();
  (*(v9 + 8))(v11, v8);
  if ((v20 & 1) == 0)
  {
    v63 = v13;
    v64 = v12;
    v31 = v72 + 64;
    v32 = 1 << *(v72 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v72 + 64);
    v35 = (v32 + 63) >> 6;

    v36 = 0;
    v25 = MEMORY[0x277D84F90];
    v71 = v5;
    while (v34)
    {
LABEL_18:
      v38 = *(*(v72 + 56) + ((v36 << 9) | (8 * __clz(__rbit64(v34)))));
      v39 = *(v38 + 16);
      v40 = *(v25 + 2);
      v41 = v40 + v39;
      if (__OFADD__(v40, v39))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v41 > *(v25 + 3) >> 1)
      {
        if (v40 <= v41)
        {
          v43 = v40 + v39;
        }

        else
        {
          v43 = v40;
        }

        v25 = sub_2273A58B0(isUniquelyReferenced_nonNull_native, v43, 1, v25);
      }

      v34 &= v34 - 1;
      if (*(v38 + 16))
      {
        if ((*(v25 + 3) >> 1) - *(v25 + 2) < v39)
        {
          goto LABEL_41;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
        swift_arrayInitWithCopy();

        if (v39)
        {
          v44 = *(v25 + 2);
          v45 = __OFADD__(v44, v39);
          v46 = v44 + v39;
          if (v45)
          {
            goto LABEL_42;
          }

          *(v25 + 2) = v46;
        }
      }

      else
      {

        if (v39)
        {
          goto LABEL_40;
        }
      }
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v37 >= v35)
      {
        break;
      }

      v34 = *(v31 + 8 * v37);
      ++v36;
      if (v34)
      {
        v36 = v37;
        goto LABEL_18;
      }
    }

    v13 = v63;
    v12 = v64;
    v23 = v69;
    v22 = v70;
    if (*(v25 + 2))
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v21 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v23 = v69;
  v22 = v70;
  sub_22743A3E0(v72, *(v69 + *(v21 + 28)), *(v69 + *(v21 + 60)), v70);
  v25 = v24;
  if (!*(v24 + 2))
  {
LABEL_31:

    v47 = v67;
    sub_22766A630();
    v48 = sub_22766B380();
    v49 = sub_22766C890();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_226E8E000, v48, v49, "No candidates found while greedily querying schedule. Exiting with incomplete scaffold error.", v50, 2u);
      MEMORY[0x22AA9A450](v50, -1, -1);
    }

    (*(v13 + 8))(v47, v12);
LABEL_34:
    v51 = sub_227664EC0();
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    swift_allocError();
    (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D511D0], v51);
    swift_willThrow();
    return;
  }

LABEL_4:
  v74 = v66;
  v26 = v68;
  sub_227131B70(v25, v23, v22, &v74);
  if (v26)
  {
  }

  else
  {
    v53 = v27;

    v54 = v65;
    sub_22766A630();

    v55 = sub_22766B380();
    v56 = sub_22766C8B0();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v64 = v12;
      v59 = v58;
      v73 = v58;
      *v57 = 136315138;
      v60 = MEMORY[0x22AA98660](v53, &type metadata for WorkoutPlanGenerationScheduledItem);
      v63 = v13;
      v62 = sub_226E97AE8(v60, v61, &v73);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_226E8E000, v55, v56, "Daily schedule selected: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA9A450](v59, -1, -1);
      MEMORY[0x22AA9A450](v57, -1, -1);

      (*(v63 + 8))(v54, v64);
    }

    else
    {

      (*(v13 + 8))(v54, v12);
    }
  }
}

void sub_22743AF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t), double a7)
{
  v261 = a6;
  v254 = a5;
  v205 = a4;
  v215 = a3;
  v206 = a1;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0B0, &unk_227686430);
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v204 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v203 = &v199 - v12;
  MEMORY[0x28223BE20](v13);
  v207 = &v199 - v14;
  v223 = sub_227664EC0();
  v213 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v220 = &v199 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v252 = &v199 - v17;
  v18 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v265 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v238 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v249 = &v199 - v21;
  MEMORY[0x28223BE20](v22);
  v227 = &v199 - v23;
  MEMORY[0x28223BE20](v24);
  v263 = &v199 - v25;
  MEMORY[0x28223BE20](v26);
  v239 = &v199 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDB60, &unk_2276858B0);
  MEMORY[0x28223BE20](v28 - 8);
  v216 = &v199 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v231 = &v199 - v31;
  MEMORY[0x28223BE20](v32);
  v224 = &v199 - v33;
  v264 = sub_22766B390();
  v257 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v219 = &v199 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v256 = &v199 - v36;
  MEMORY[0x28223BE20](v37);
  v226 = &v199 - v38;
  MEMORY[0x28223BE20](v39);
  v251 = &v199 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v199 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v199 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v199 - v48;
  v50 = sub_2276681F0();
  v243 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v52 = &v199 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = v7;
  v53 = *(a2 + v18[7]);
  v54 = v262;
  v55 = sub_2273267EC(v53, *(a2 + v18[13]), *(a2 + v18[10]), *(*(a2 + v18[8]) + 16), v261);
  v260 = v54;
  if (v54)
  {
    return;
  }

  v218 = v49;
  v250 = v46;
  v258 = v43;
  v237 = v18;
  v232 = a2;
  v200 = v55;
  v56 = *(v55 + 16);
  v57 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration;

  v234 = v57;
  sub_227667240();
  v58 = sub_227667FC0();
  v59 = *(v243 + 8);
  v243 += 8;
  v233 = v59;
  v59(v52, v50);
  v236 = v50;
  v235 = v52;
  if ((v58 & 1) == 0)
  {
    v69 = v56 + 64;
    v70 = 1 << *(v56 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v56 + 64);
    v73 = (v70 + 63) >> 6;
    v255 = v56;
    swift_bridgeObjectRetain_n();
    v74 = 0;
    v63 = MEMORY[0x277D84F90];
    v66 = v265;
LABEL_9:
    if (v72)
    {
      goto LABEL_15;
    }

    v67 = v237;
    v68 = v239;
    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_105;
      }

      if (v75 >= v73)
      {
        break;
      }

      v72 = *(v69 + 8 * v75);
      ++v74;
      if (v72)
      {
        v74 = v75;
LABEL_15:
        v76 = *(*(v255 + 56) + ((v74 << 9) | (8 * __clz(__rbit64(v72)))));
        v77 = *(v76 + 16);
        v78 = v63[2];
        v79 = v78 + v77;
        if (!__OFADD__(v78, v77))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v79 > v63[3] >> 1)
          {
            if (v78 <= v79)
            {
              v81 = v78 + v77;
            }

            else
            {
              v81 = v78;
            }

            v63 = sub_2273A58B0(isUniquelyReferenced_nonNull_native, v81, 1, v63);
          }

          v72 &= v72 - 1;
          if (*(v76 + 16))
          {
            if ((v63[3] >> 1) - v63[2] >= v77)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
              swift_arrayInitWithCopy();

              v66 = v265;
              if (!v77)
              {
                goto LABEL_9;
              }

              v82 = v63[2];
              v83 = __OFADD__(v82, v77);
              v84 = v82 + v77;
              if (!v83)
              {
                v63[2] = v84;
                goto LABEL_9;
              }

LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
              goto LABEL_114;
            }

LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          v66 = v265;
          if (!v77)
          {
            goto LABEL_9;
          }

LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }
    }

    v209 = v63[2];
    if (v209)
    {
      v60 = v232;
      goto LABEL_29;
    }

    v178 = v223;
    v176 = v215;
    v177 = v264;
LABEL_89:

    v179 = v256;
    sub_22766A630();
    v180 = sub_22766B380();
    v181 = sub_22766C8B0();
    v182 = os_log_type_enabled(v180, v181);
    v183 = v257;
    if (v182)
    {
      v184 = swift_slowAlloc();
      *v184 = 134217984;
      *(v184 + 4) = v176;
      _os_log_impl(&dword_226E8E000, v180, v181, "No candidates for rollout on day %ld. Exiting with incomplete scaffold error.", v184, 0xCu);
      v185 = v184;
      v177 = v264;
      MEMORY[0x22AA9A450](v185, -1, -1);
    }

    (*(v183 + 8))(v179, v177);
    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v186 = swift_allocError();
    (*(v213 + 104))(v187, *MEMORY[0x277D511D0], v178);
    goto LABEL_92;
  }

  v60 = v232;
  sub_22743A3E0(v56, v53, *(v232 + v237[15]), v254);
  v63 = v62;
  v64 = v62[2];
  v65 = v56;
  v209 = v64;
  v66 = v265;
  if (!v64)
  {
LABEL_87:

    v176 = v215;
    v177 = v264;
    v178 = v223;
    goto LABEL_89;
  }

  v255 = v65;
  v67 = v237;
  v68 = v239;
LABEL_29:
  v85 = v264;
  v86 = 0;
  v225 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils;
  v214 = v63;
  v210 = v63 + 4;
  v242 = (v66 + 7);
  v221 = (v213 + 88);
  v222 = *MEMORY[0x277D511D0];
  v202 = (v213 + 8);
  v229 = (v66 + 6);
  v208 = MEMORY[0x277D84F90];
  v87 = -INFINITY;
  *&v61 = 134218754;
  v201 = v61;
  *(&v88 + 1) = 2;
  v199 = xmmword_227670CD0;
  *&v88 = 134217984;
  v253 = v88;
  *&v88 = 136315394;
  v245 = v88;
  v265 = (v257 + 8);
  do
  {
    v93 = v214;
    if (v86 >= v214[2])
    {
      goto LABEL_106;
    }

    v94 = v210[v86];
    v228 = v86;
    v217 = v86 + 1;

    sub_22766A630();

    v95 = sub_22766B380();
    v96 = sub_22766C8B0();

    LODWORD(v262) = v96;
    v97 = os_log_type_enabled(v95, v96);
    v240 = v94;
    if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v266 = v99;
      *v98 = v201;
      *(v98 + 4) = v215;
      *(v98 + 12) = 2048;
      *(v98 + 14) = v217;
      *(v98 + 22) = 2048;
      *(v98 + 24) = v93[2];

      *(v98 + 32) = 2080;
      v100 = MEMORY[0x22AA98660](v94, &type metadata for WorkoutPlanGenerationScheduledItem);
      v102 = sub_226E97AE8(v100, v101, &v266);

      *(v98 + 34) = v102;
      v60 = v232;
      _os_log_impl(&dword_226E8E000, v95, v262, "Day %ld - candidate %ld / %ld: %s", v98, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x22AA9A450](v99, -1, -1);
      v103 = v98;
      v68 = v239;
      v67 = v237;
      MEMORY[0x22AA9A450](v103, -1, -1);
    }

    else
    {
    }

    v261 = *v265;
    v261(v218, v85);
    v241 = *v242;
    v241(v224, 1, 1, v67);
    v104 = v235;
    sub_227667240();
    v105 = sub_227667FF0();
    v233(v104, v236);
    if (v105 < 0)
    {
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    if (v105)
    {
      v244 = 0;
      v106 = -INFINITY;
      v230 = v105;
      while (1)
      {
        sub_2274424B0(v60, v68);
        v109 = v263;
        WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v240, v263);
        sub_227442514(v68);
        sub_227442570(v109, v68);
        v110 = *(*(v68 + v67[15]) + 16);
        v111 = v249;
        sub_2274424B0(v68, v249);
        v112 = v260;
        v113 = sub_227433850(*(v111 + v67[8]));
        v114 = v112;
        v115 = sub_226F43CB8(v113);

        v116 = v235;
        sub_227667240();
        v117 = sub_227668090();
        v233(v116, v236);
        if (v117 < v110)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        if (v110 == v117)
        {
LABEL_44:

          v118 = v231;
          sub_227442570(v111, v231);
          v67 = v237;
          v241(v118, 0, 1, v237);
          v60 = v232;
          v68 = v239;
LABEL_45:
          v91 = (*v229)(v118, 1, v67) == 1;
          v260 = v114;
          if (v91)
          {
            sub_226E97D1C(v118, &qword_27D7BDB60, &unk_2276858B0);
            v119 = v226;
            sub_22766A630();
            v120 = sub_22766B380();
            v121 = sub_22766C8B0();
            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              *v122 = 0;
              _os_log_impl(&dword_226E8E000, v120, v121, "Unable to greedily build scaffold for remaining days.", v122, 2u);
              v123 = v122;
              v85 = v264;
              MEMORY[0x22AA9A450](v123, -1, -1);
            }

            v261(v119, v85);
            v107 = v68;
          }

          else
          {
            v150 = v227;
            sub_227442570(v118, v227);
            sub_227137238(v150, v228);
            v152 = v151;
            sub_227442514(v68);
            if (v106 < v152)
            {
              v153 = v224;
              sub_226E97D1C(v224, &qword_27D7BDB60, &unk_2276858B0);
              sub_227442570(v150, v153);
              v241(v153, 0, 1, v67);
              v106 = v152;
              goto LABEL_41;
            }

            v107 = v150;
          }

          sub_227442514(v107);
          goto LABEL_41;
        }

        v248 = v244 == 0;
        LODWORD(v256) = v244 != 0;
        v124 = 7889261;
        if (v244)
        {
          v124 = 0x676E696C706D6173;
        }

        v247 = v124;
        v125 = 0xE300000000000000;
        if (v244)
        {
          v125 = 0xE800000000000000;
        }

        v246 = v125;
        v126 = v258;
        v127 = v261;
        v257 = v115;
        v262 = v117;
        while (1)
        {
          if (v110 >= v117)
          {
            __break(1u);
            goto LABEL_87;
          }

          if (!sub_22718C954(v110, v115))
          {
            sub_22766A630();
            v145 = sub_22766B380();
            v146 = sub_22766C8B0();
            if (os_log_type_enabled(v145, v146))
            {
              v147 = swift_slowAlloc();
              *v147 = v253;
              *(v147 + 4) = v110;
              _os_log_impl(&dword_226E8E000, v145, v146, "Adding an unscheduledDay day for day=%ld", v147, 0xCu);
              v148 = v147;
              v85 = v264;
              MEMORY[0x22AA9A450](v148, -1, -1);
            }

            v127(v126, v85);
            v128 = v263;
            WorkoutPlanGenerationScaffold.withUnscheduledDay()(v263);
            goto LABEL_55;
          }

          v129 = v250;
          sub_22766A630();
          v130 = sub_22766B380();
          v131 = sub_22766C8B0();
          if (os_log_type_enabled(v130, v131))
          {
            v132 = swift_slowAlloc();
            *v132 = v253;
            *(v132 + 4) = v110;
            _os_log_impl(&dword_226E8E000, v130, v131, "Determining next daily schedule for day=%ld", v132, 0xCu);
            v133 = v132;
            v85 = v264;
            MEMORY[0x22AA9A450](v133, -1, -1);
          }

          v134 = v261;
          v261(v129, v85);
          v135 = v251;
          sub_22766A630();
          v136 = sub_22766B380();
          v137 = sub_22766C8B0();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            v260 = v114;
            v139 = v138;
            v140 = swift_slowAlloc();
            v266 = v140;
            *v139 = v245;
            v141 = sub_226E97AE8(v247, v246, &v266);

            *(v139 + 4) = v141;
            *(v139 + 12) = 1024;
            *(v139 + 14) = v248;
            _os_log_impl(&dword_226E8E000, v136, v137, "Sampling mode set to %s since isFirstAttempt=%{BOOL}d", v139, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v140);
            v142 = v254;
            MEMORY[0x22AA9A450](v140, -1, -1);
            MEMORY[0x22AA9A450](v139, -1, -1);

            v143 = v135;
            v114 = v260;
            v127 = v261;
            v111 = v249;
            v261(v143, v264);
            v144 = v252;
            v128 = v263;
          }

          else
          {

            v134(v135, v85);
            v144 = v252;
            v128 = v263;
            v127 = v134;
            v142 = v254;
          }

          LOBYTE(v266) = v256;
          sub_22743A8A4(v111, v255, &v266, v142);
          v126 = v258;
          if (v114)
          {
            break;
          }

          WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v149, v128);

          v85 = v264;
          v115 = v257;
LABEL_55:
          ++v110;
          sub_227442514(v111);
          sub_227442570(v128, v111);
          v117 = v262;
          if (v262 == v110)
          {
            goto LABEL_44;
          }
        }

        v266 = v114;
        v154 = v114;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
        v155 = v223;
        v156 = swift_dynamicCast();
        v60 = v232;
        v67 = v237;
        v68 = v239;
        v118 = v231;
        if (v156)
        {
          v157 = (*v221)(v144, v155);
          if (v157 == v222)
          {
            sub_227442514(v249);

            v241(v118, 1, 1, v67);
            v114 = 0;
            v85 = v264;
            goto LABEL_45;
          }

          (*v202)(v144, v155);
        }

        swift_willThrow();
        sub_227442514(v249);
        v266 = v114;
        v158 = v114;
        v159 = v220;
        if ((swift_dynamicCast() & 1) == 0)
        {
          v260 = v114;
          sub_226E97D1C(v224, &qword_27D7BDB60, &unk_2276858B0);

          sub_227442514(v68);
LABEL_95:

          return;
        }

        v160 = (*v221)(v159, v155);
        if (v160 != v222)
        {
          v260 = v114;
          sub_226E97D1C(v224, &qword_27D7BDB60, &unk_2276858B0);

          sub_227442514(v68);
          (*v202)(v159, v155);
          goto LABEL_95;
        }

        v161 = v219;
        sub_22766A630();
        v162 = sub_22766B380();
        v163 = sub_22766C8B0();
        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          *v164 = v253;
          *(v164 + 4) = v244;
          _os_log_impl(&dword_226E8E000, v162, v163, "Rollout %ld unsuccessful, continuing...", v164, 0xCu);
          MEMORY[0x22AA9A450](v164, -1, -1);
        }

        v85 = v264;
        v261(v161, v264);
        sub_227442514(v68);

        v260 = 0;
LABEL_41:
        v108 = v238;
        if (++v244 == v230)
        {
          goto LABEL_80;
        }
      }
    }

    v106 = -INFINITY;
    v108 = v238;
LABEL_80:
    v165 = v224;
    v166 = v216;
    sub_226E93170(v224, v216, &qword_27D7BDB60, &unk_2276858B0);
    if ((*v229)(v166, 1, v67) == 1)
    {
      sub_226E97D1C(v165, &qword_27D7BDB60, &unk_2276858B0);

      v89 = v166;
      v90 = v217;
    }

    else
    {
      sub_227442570(v166, v108);
      if (v106 == v87)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0A8, &qword_2276839F8);
        v167 = (*(v211 + 80) + 32) & ~*(v211 + 80);
        v168 = swift_allocObject();
        *(v168 + 16) = v199;
        v169 = *(v212 + 48);
        *(v168 + v167) = v240;
        sub_2274424B0(v238, v168 + v167 + v169);
        v266 = v208;

        v170 = v168;
        v85 = v264;
        sub_227460ADC(v170);
        v171 = v266;

        v208 = v171;
        v108 = v238;
      }

      else if (v87 < v106)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0A8, &qword_2276839F8);
        v172 = (*(v211 + 80) + 32) & ~*(v211 + 80);
        v173 = swift_allocObject();
        *(v173 + 16) = v199;
        v174 = (v173 + v172);
        v85 = v264;
        v175 = *(v212 + 48);
        *v174 = v240;
        sub_2274424B0(v238, v174 + v175);
        v87 = v106;
        v208 = v173;
        v108 = v238;
      }

      v90 = v217;

      sub_227442514(v108);
      v89 = v224;
    }

    sub_226E97D1C(v89, &qword_27D7BDB60, &unk_2276858B0);
    v86 = v90;
    v91 = v90 == v209;
    v92 = v223;
  }

  while (!v91);

  v188 = v208;
  v189 = v208[2];
  if (!v189)
  {

    sub_226EAC0B4(&qword_28139B898, MEMORY[0x277D51210], MEMORY[0x277D51220]);
    v186 = swift_allocError();
    (*(v213 + 104))(v198, v222, v92);
LABEL_92:
    v260 = v186;
    swift_willThrow();

    return;
  }

  v190 = sub_2274423E8(v189);
  if ((v190 & 0x8000000000000000) != 0)
  {
    goto LABEL_112;
  }

  v191 = v206;
  v192 = v205;
  v193 = v212;
  v194 = v204;
  v195 = v203;
  v196 = v207;
  if (v190 >= v188[2])
  {
    goto LABEL_113;
  }

  sub_226E93170(v188 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v190, v207, &qword_27D7BD0B0, &unk_227686430);

  if (v87 > a7)
  {

    sub_226E93170(v196, v195, &qword_27D7BD0B0, &unk_227686430);
    v197 = *(v193 + 48);
    sub_226E95D18(v196, v194, &qword_27D7BD0B0, &unk_227686430);

    sub_227442570(v194 + *(v193 + 48), v191);
    sub_227442514(v195 + v197);
    return;
  }

  if (*(*(v60 + v237[15]) + 16) < *(*(v192 + v237[15]) + 16))
  {

    sub_226E97D1C(v207, &qword_27D7BD0B0, &unk_227686430);
    sub_2274424B0(v192, v191);
    return;
  }

LABEL_114:
  __break(1u);
}

void sub_22743CBB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (a2)
  {
    v12 = 1;
    v13 = a2;
    while (1)
    {
      v14 = v12 * a1;
      if ((v12 * a1) >> 64 != (v12 * a1) >> 63)
      {
        break;
      }

      v12 *= a1;
      if (!--v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v14 = 1;
LABEL_8:
  v33 = v9;
  sub_22766A630();

  v32 = v11;
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  v31 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v7;
    v18 = v17;
    v28 = swift_slowAlloc();
    v34 = v28;
    *v18 = 136315906;
    v19 = sub_227668770();
    v29 = v8;
    v21 = a2;
    v22 = v5;
    v23 = sub_226E97AE8(v19, v20, &v34);

    *(v18 + 4) = v23;
    v5 = v22;
    a2 = v21;
    *(v18 + 12) = 2048;
    *(v18 + 14) = a1;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v21;
    *(v18 + 32) = 2048;
    *(v18 + 34) = v14;
    _os_log_impl(&dword_226E8E000, v15, v31, "[Algorithm] SearchSpace %s splits:%ld depth:%ld = %ld combinations", v18, 0x2Au);
    v24 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v24, -1, -1);
    v25 = v18;
    v7 = v30;
    MEMORY[0x22AA9A450](v25, -1, -1);

    (*(v33 + 8))(v32, v29);
  }

  else
  {

    (*(v33 + 8))(v32, v8);
  }

  v26 = sub_227668780();
  if (v26 == sub_227668780())
  {
    sub_227665ED0();
    sub_227667240();
    sub_227668110();
    (*(v5 + 8))(v7, v4);
  }

  else if (sub_227665EC0() >= a2)
  {
    sub_227665ED0();
  }
}

void sub_22743CF30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v147 = a2;
  v131 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v129 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v130 = v126 - v9;
  v10 = sub_227667370();
  v142 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v144 = v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276627D0();
  v140 = *(v12 - 8);
  v141 = v12;
  MEMORY[0x28223BE20](v12);
  v139 = v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3E8, &unk_227686370);
  MEMORY[0x28223BE20](v14 - 8);
  v133 = v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v138 = v126 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v18 - 8);
  v132 = (v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v135 = v126 - v21;
  v145 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v145);
  v134 = v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v146 = v126 - v24;
  v136 = sub_22766B390();
  v25 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v27 = v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();

  v28 = sub_22766B380();
  v29 = sub_22766C8B0();
  v148 = a3;

  v30 = os_log_type_enabled(v28, v29);
  v128 = v8;
  v143 = v10;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v127 = a4;
    v32 = v31;
    v33 = swift_slowAlloc();
    v151[0] = v33;
    *v32 = 136315138;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
    v35 = MEMORY[0x22AA98660](v148, v34);
    v37 = sub_226E97AE8(v35, v36, v151);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v28, v29, "[Algorithm] Strategy - local-search: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AA9A450](v33, -1, -1);
    v38 = v32;
    a4 = v127;
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  (*(v25 + 8))(v27, v136);
  v39 = v145;
  v40 = v147;
  v41 = v137;
  v42 = sub_227433850(*(v147 + v145[8]));
  v43 = sub_226F43CB8(v42);

  v44 = swift_allocObject();
  v45 = MEMORY[0x277D84F90];
  *(v44 + 16) = MEMORY[0x277D84F90];
  v152 = v45;
  sub_22743DDA8(0, &v152, v5, v40, v44, v43, v148);

  swift_beginAccess();
  v46 = v146;
  sub_227434F24(v146, *(v44 + 16), a4);
  if (v41)
  {

    return;
  }

  v148 = 0;
  v126[1] = v44;
  v47 = *(v46 + v39[15]);
  v48 = *(v47 + 16);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    v150 = MEMORY[0x277D84F90];
    sub_226F1FD08(0, v48, 0);
    v50 = 0;
    v49 = v150;
    v147 = v47 + 32;
    v51 = v5;
    v52 = v47;
    while (v50 < *(v47 + 16))
    {
      v53 = *(v147 + 8 * v50);

      if (sub_227440298(v54))
      {
        sub_2274404C0(v53);
        v56 = v55;
      }

      else
      {
        v149 = v53;

        v41 = v148;
        sub_227443E04(&v149, v5);
        if (v41)
        {
          goto LABEL_55;
        }

        v148 = 0;

        v56 = v149;
      }

      v150 = v49;
      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_226F1FD08((v57 > 1), v58 + 1, 1);
        v49 = v150;
      }

      ++v50;
      *(v49 + 16) = v58 + 1;
      *(v49 + 8 * v58 + 32) = v56;
      v5 = v51;
      v47 = v52;
      if (v48 == v50)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_51;
  }

LABEL_15:
  v60 = v140;
  v59 = v141;
  v61 = v135;
  (*(v140 + 56))(v135, 1, 1, v141);
  (*(v142 + 56))(v138, 1, 1, v143);
  v62 = v132;
  sub_226E93170(v61, v132, &unk_27D7BB9D0, &qword_227671550);
  v63 = *(v60 + 48);
  if (v63(v62, 1, v59) == 1)
  {
    (*(v60 + 16))(v139, v146, v59);
    if (v63(v62, 1, v59) != 1)
    {
      sub_226E97D1C(v62, &unk_27D7BB9D0, &qword_227671550);
    }
  }

  else
  {
    (*(v60 + 32))(v139, v62, v59);
  }

  v65 = v145;
  v64 = v146;
  v66 = *(v146 + v145[5]);
  v67 = v145[8];
  v132 = *(v146 + v145[7]);
  v137 = *(v146 + v67);
  v68 = v145[10];
  v127 = *(v146 + v145[9]);
  v136 = *(v146 + v68);
  v147 = *(v146 + v145[13]);
  v69 = v133;
  sub_226E93170(v138, v133, &qword_27D7BB3E8, &unk_227686370);
  v71 = v142;
  v70 = v143;
  v72 = *(v142 + 48);
  if (v72(v69, 1, v143) == 1)
  {
    v73 = v64 + v65[14];
    v74 = v144;
    (*(v71 + 16))(v144, v73, v70);
    v75 = v72(v69, 1, v70);

    if (v75 != 1)
    {
      sub_226E97D1C(v69, &qword_27D7BB3E8, &unk_227686370);
    }
  }

  else
  {
    v74 = v144;
    (*(v71 + 32))(v144, v69, v70);
  }

  v76 = v145;
  v77 = *(v146 + v145[16]);
  v78 = *(v146 + v145[12]);
  v79 = v134;
  (*(v140 + 16))(v134, v139, v141);
  *&v79[v76[5]] = v66;

  v80 = sub_226F491E4();
  *&v79[v76[6]] = v80;
  *&v79[v76[7]] = v132;
  *&v79[v76[8]] = v137;
  *&v79[v76[9]] = v127;
  v79[v76[12]] = v78;
  *&v79[v76[10]] = v136;
  *&v79[v76[13]] = v147;
  (*(v71 + 16))(&v79[v76[14]], v74, v70);
  *&v79[v76[15]] = v49;
  *&v79[v76[16]] = v77;
  v41 = (v80 + 56);
  v81 = 1 << *(v80 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v80 + 56);
  v84 = (v81 + 63) >> 6;
  v127 = v77;

  v147 = v80;

  v132 = 0;
  v85 = 0;
  v133 = MEMORY[0x277D84F98];
  v86 = v74;
  v136 = v84;
  v137 = v41;
  if (v83)
  {
    while (1)
    {
LABEL_30:
      v88 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v89 = *(v147 + 48) + 24 * (v88 | (v85 << 6));
      v90 = *v89;
      v91 = *(v89 + 8);
      v92 = *(v89 + 16);
      sub_226EB396C(*v89, v91, v92);
      v93 = sub_2276672C0();
      if (!*(v93 + 16))
      {
        sub_226EB2DFC(v90, v91, v92);
LABEL_39:

        v86 = v144;
        goto LABEL_40;
      }

      v94 = sub_226F491D8();
      v96 = v95;
      sub_226EB2DFC(v90, v91, v92);
      if ((v96 & 1) == 0)
      {
        goto LABEL_39;
      }

      v97 = *(v129 + 72);
      v98 = *(v93 + 56) + v97 * v94;
      v99 = v130;
      sub_226E93170(v98, v130, &qword_27D7B88C0, &unk_22767A720);

      sub_226EA9E3C(v132, 0);
      v100 = v133;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v150 = v100;
      v103 = sub_226F3ADC4(v99);
      v104 = *(v100 + 16);
      v105 = (v102 & 1) == 0;
      v106 = v104 + v105;
      if (__OFADD__(v104, v105))
      {
        goto LABEL_52;
      }

      v107 = v102;
      v108 = *(v100 + 24);
      v86 = v144;
      if (v108 < v106)
      {
        break;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = v144;
        sub_226FF2414();
        goto LABEL_36;
      }

      v112 = v150;
      if ((v102 & 1) == 0)
      {
LABEL_44:
        v113 = v86;
        v114 = v112;
        sub_227444F98(&v150);
        v115 = v150;
        v114[(v103 >> 6) + 8] |= 1 << v103;
        sub_226E93170(v130, v114[6] + v103 * v97, &qword_27D7B88C0, &unk_22767A720);
        *(v114[7] + 8 * v103) = v115;
        v116 = v114[2];
        v117 = __OFADD__(v116, 1);
        v118 = v116 + 1;
        if (v117)
        {
          goto LABEL_54;
        }

        v112 = v114;
        v114[2] = v118;
        v86 = v113;
      }

LABEL_46:
      v133 = v112;
      v119 = *(v112 + 56);
      v120 = *(v119 + 8 * v103);
      v117 = __OFADD__(v120, 1);
      v121 = v120 + 1;
      if (v117)
      {
        goto LABEL_53;
      }

      *(v119 + 8 * v103) = v121;
      sub_226E97D1C(v130, &qword_27D7B88C0, &unk_22767A720);
      v132 = sub_227444F98;
LABEL_40:
      v84 = v136;
      v41 = v137;
      if (!v83)
      {
        goto LABEL_26;
      }
    }

    v109 = v144;
    sub_226FE6DD4(v106, isUniquelyReferenced_nonNull_native);
    v110 = sub_226F3ADC4(v130);
    if ((v107 & 1) != (v111 & 1))
    {
      goto LABEL_56;
    }

    v103 = v110;
LABEL_36:
    v86 = v109;
    v112 = v150;
    if ((v107 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

LABEL_26:
  while (1)
  {
    v87 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v87 >= v84)
    {

      v122 = v145;
      v123 = v134;
      *&v134[v145[11]] = v133;
      sub_22746B5DC();
      v125 = v124;

      (*(v142 + 8))(v86, v143);
      (*(v140 + 8))(v139, v141);
      sub_226E97D1C(v138, &qword_27D7BB3E8, &unk_227686370);
      sub_226E97D1C(v135, &unk_27D7BB9D0, &qword_227671550);
      sub_227442514(v146);
      *(v123 + v122[17]) = v125;
      sub_227442570(v123, v131);
      sub_226EA9E3C(v132, 0);

      return;
    }

    v83 = *&v41[8 * v87];
    ++v85;
    if (v83)
    {
      v85 = v87;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:

  __break(1u);
LABEL_56:
  sub_22766D220();
  __break(1u);
}

void sub_22743DDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v52 = a6;
  v55 = a5;
  v12 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = sub_2276681F0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a3;
  sub_227667240();
  v24 = sub_227668090();
  (*(v21 + 8))(v23, v20);
  if (v24 == a1)
  {
    sub_2274424B0(a4, v19);
    v25 = *(*a2 + 16);
    if (v25)
    {
      v26 = *a2 + 32;
      do
      {
        if (*(*v26 + 16))
        {

          WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v27, v16);
        }

        else
        {
          WorkoutPlanGenerationScaffold.withUnscheduledDay()(v16);
        }

        sub_227442514(v19);
        sub_227442570(v16, v19);
        v26 += 8;
        --v25;
      }

      while (v25);
    }

LABEL_23:
    if (!WorkoutPlanGenerationScaffold.satisfiesHardConstraints()())
    {
      goto LABEL_28;
    }

    a7 = v51;
    sub_2274424B0(v19, v51);
    v38 = v55;
    swift_beginAccess();
    v31 = *(v38 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v38 + 16) = v31;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_25:
      v41 = v31[2];
      v40 = v31[3];
      if (v41 >= v40 >> 1)
      {
        v31 = sub_2273A5B90((v40 > 1), v41 + 1, 1, v31);
      }

      v31[2] = v41 + 1;
      sub_227442570(a7, v31 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41);
      *(v55 + 16) = v31;
      swift_endAccess();
LABEL_28:
      sub_227442514(v19);
      return;
    }

LABEL_40:
    v31 = sub_2273A5B90(0, v31[2] + 1, 1, v31);
    *(v55 + 16) = v31;
    goto LABEL_25;
  }

  v28 = a4;
  v29 = v52;
  if (!sub_22718C954(a1, v52))
  {
    v42 = *a2;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v44 = v28;
    if ((v43 & 1) == 0)
    {
      v48 = sub_2273A58B0(0, v42[2] + 1, 1, v42);
      v44 = v28;
      v42 = v48;
    }

    v46 = v42[2];
    v45 = v42[3];
    if (v46 >= v45 >> 1)
    {
      v49 = v44;
      v50 = sub_2273A58B0((v45 > 1), v46 + 1, 1, v42);
      v44 = v49;
      v42 = v50;
    }

    v42[2] = v46 + 1;
    v42[v46 + 4] = MEMORY[0x277D84F90];
    *a2 = v42;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      sub_22743DDA8(a1 + 1, a2, v54, v44, v55, v29, a7);
      v46 = *a2;
      if (*(*a2 + 16))
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v47 = *(v46 + 16);
          if (v47)
          {
LABEL_37:
            *(v46 + 16) = v47 - 1;

            *a2 = v46;
            return;
          }

LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          return;
        }

LABEL_43:
        v46 = sub_2272EC574(v46);
        v47 = *(v46 + 16);
        if (v47)
        {
          goto LABEL_37;
        }

        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v53 = v28;
  v30 = *(a7 + 2);
  if (v30)
  {
    v31 = (a1 + 1);
    if (!__OFADD__(a1, 1))
    {
      v32 = *a2;
      for (i = 32; ; i += 8)
      {
        v34 = *&a7[i];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2273A58B0(0, v32[2] + 1, 1, v32);
        }

        v36 = v32[2];
        v35 = v32[3];
        v19 = (v36 + 1);
        if (v36 >= v35 >> 1)
        {
          v32 = sub_2273A58B0((v35 > 1), v36 + 1, 1, v32);
        }

        v32[2] = v19;
        v32[v36 + 4] = v34;
        *a2 = v32;
        sub_22743DDA8(v31, a2, v54, v53, v55, v29, a7);
        v32 = *a2;
        if (!*(*a2 + 16))
        {
          break;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v37 = v32[2];
          if (!v37)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v32 = sub_2272EC574(v32);
          v37 = v32[2];
          if (!v37)
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        v32[2] = v37 - 1;

        *a2 = v32;
        if (!--v30)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

    goto LABEL_45;
  }
}

void sub_22743E304(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v76 = a2;
  v77 = a3;
  v4 = sub_227664EC0();
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v80 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  v12 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v12);
  v78 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v65 - v21;
  sub_2274424B0(a1, &v65 - v21);
  v82 = v19;
  sub_2274424B0(v22, v19);
  sub_22766A630();
  sub_22766B370();
  v23 = *(v7 + 8);
  v74 = v7 + 8;
  v75 = v6;
  v73 = v23;
  v23(v11, v6);
  v24 = sub_2276692F0();
  v26 = v24;
  v27 = *(v24 + 16);
  if (!v27)
  {
    LODWORD(v81) = 0;
    v83 = MEMORY[0x277D84F90];
LABEL_25:

    sub_227442514(v82);
    sub_227442514(v22);
    if (v81)
    {
    }

    return;
  }

  v65 = v4;
  LODWORD(v81) = 0;
  v28 = 0;
  v29 = *(v12 + 32);
  v85 = v24 + 32;
  v86 = v29;
  v71 = v27 - 1;
  v83 = MEMORY[0x277D84F90];
  v30 = -INFINITY;
  *&v25 = 134217984;
  v67 = v25;
  while (1)
  {
    while (1)
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v31 = v12;
      v32 = v28 + 1;
      if (sub_22718CB74(*(v85 + v28), *&v22[v86]))
      {
        break;
      }

      WorkoutPlanGenerationScaffold.withUnscheduledDay()(v16);
      sub_227442514(v22);
      sub_227442570(v16, v22);
      ++v28;
      if (v27 == v32)
      {
        goto LABEL_25;
      }
    }

    sub_22766A630();
    v33 = sub_22766B380();
    v66 = sub_22766C8B0();
    if (os_log_type_enabled(v33, v66))
    {
      v34 = swift_slowAlloc();
      v70 = v33;
      v35 = v34;
      *v34 = v67;
      *(v34 + 4) = sub_227669310();
      _os_log_impl(&dword_226E8E000, v70, v66, "Determining daily schedule at day=%ld", v35, 0xCu);
      v36 = v35;
      v33 = v70;
      MEMORY[0x22AA9A450](v36, -1, -1);
    }

    v73(v80, v75);
    v37 = sub_227669310();
    v38 = v82;
    v39 = v84;
    sub_22743AF8C(v78, v22, v37, v82, v76, v77, v30);
    v84 = v39;
    if (v39)
    {
      break;
    }

    v42 = v40;
    v30 = v41;
    sub_227442514(v38);
    if (v81)
    {
    }

    sub_227442570(v78, v82);

    v44 = v42;
    v45 = v79;
    v46 = sub_227440298(v43);
    v70 = v44;
    if (v46)
    {
      sub_2274404C0(v44);
      v48 = v47;

      v49 = v48;
    }

    else
    {
      v87 = v44;

      v50 = v84;
      sub_227443E04(&v87, v45);
      v84 = v50;
      if (v50)
      {

        __break(1u);
        return;
      }

      v49 = v87;
    }

    v81 = v49;
    WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v49, v16);
    sub_227442514(v22);
    sub_227442570(v16, v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v83 = sub_2273A58B0(0, v83[2] + 1, 1, v83);
    }

    v52 = v83[2];
    v51 = v83[3];
    if (v52 >= v51 >> 1)
    {
      v83 = sub_2273A58B0((v51 > 1), v52 + 1, 1, v83);
    }

    v53 = v83;
    v83[2] = v52 + 1;
    v53[v52 + 4] = v81;
    v12 = v31;
    v87 = *&v22[*(v31 + 24)];

    v54 = sub_226F491E4();
    sub_22746AB34(v54);
    v55 = *(v87 + 2);

    if (!v55)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE68, &qword_2276798D8);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_227670CD0;
      *(v64 + 32) = v83;
      sub_227442514(v82);
      sub_227442514(v22);
      return;
    }

    LODWORD(v81) = 1;
    v72 = v70;
    if (v71 == v28++)
    {
      goto LABEL_25;
    }
  }

  v87 = v84;
  v57 = v84;
  v58 = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v59 = v69;
  v60 = v65;
  if (!swift_dynamicCast())
  {
LABEL_35:
    sub_227442514(v82);
    sub_227442514(v22);
    goto LABEL_37;
  }

  v61 = v68;
  v62 = (*(v68 + 88))(v59, v60);
  v63 = v82;
  if (v62 == *MEMORY[0x277D511D0])
  {

    sub_227442514(v63);
    sub_227442514(v22);

    if (v81)
    {
    }

    return;
  }

  sub_227442514(v82);
  sub_227442514(v22);
  (*(v61 + 8))(v59, v60);
LABEL_37:

  if (v81)
  {
  }
}

uint64_t sub_22743EAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v91 = a2;
  v92 = a4;
  v6 = sub_22766B390();
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x28223BE20](v6);
  v93 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *(a1 + 16);
  v90 = a1;
  if (!v96)
  {

    v8 = 0;
    goto LABEL_22;
  }

  v95 = a1 + 32;

  v8 = 0;
  v9 = 0;
  while (2)
  {
    v10 = *(v95 + 8 * v9);
    v98 = *(v10 + 16);
    if (!v98)
    {
      goto LABEL_3;
    }

    v97 = v9;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);

    v11 = 0;
    v12 = (v10 + 64);
    do
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v13 = *(v12 - 2);
      v14 = *(v12 - 1);
      v15 = *v12;

      sub_226EB396C(v13, v14, v15);
      sub_226EB396C(v13, v14, v15);
      sub_226EA9E3C(v8, 0);
      v16 = a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = v16;
      v18 = sub_226F491D8();
      v20 = *(v16 + 16);
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_73;
      }

      v24 = v19;
      if (*(v16 + 24) < v23)
      {
        sub_226FF6748();
        a3 = v99;
        v18 = sub_226F491D8();
        if ((v24 & 1) != (v25 & 1))
        {
          goto LABEL_81;
        }

LABEL_13:
        if (v24)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        a3 = v16;
        goto LABEL_13;
      }

      v27 = v18;
      sub_226FF6744();
      v18 = v27;
      a3 = v99;
      if (v24)
      {
LABEL_14:
        v26 = v18;
        sub_226EB2DFC(v13, v14, v15);
        v18 = v26;
        goto LABEL_18;
      }

LABEL_16:
      a3[(v18 >> 6) + 8] |= 1 << v18;
      v28 = a3[6] + 24 * v18;
      *v28 = v13;
      *(v28 + 8) = v14;
      *(v28 + 16) = v15;
      *(a3[7] + 8 * v18) = 0;
      v29 = a3[2];
      v22 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v22)
      {
        goto LABEL_75;
      }

      a3[2] = v30;
LABEL_18:
      v31 = a3[7];
      v32 = *(v31 + 8 * v18);
      v22 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v22)
      {
        goto LABEL_74;
      }

      ++v11;
      *(v31 + 8 * v18) = v33;

      sub_226EB2DFC(v13, v14, v15);
      v12 += 40;
      v8 = sub_227444F98;
    }

    while (v98 != v11);

    v8 = sub_227444F98;
    v9 = v97;
LABEL_3:
    if (++v9 != v96)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v34 = 0;
  v35 = 0;
  v36 = 1 << *(a3 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & a3[8];
  v39 = (v36 + 63) >> 6;
  v40 = v93;
  do
  {
    if (v38)
    {
      v41 = v34;
    }

    else
    {
      do
      {
        v41 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_76;
        }

        if (v41 >= v39)
        {
          goto LABEL_34;
        }

        v38 = a3[v41 + 8];
        ++v34;
      }

      while (!v38);
      v34 = v41;
    }

    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v43 = *(a3[7] + ((v41 << 9) | (8 * v42))) == 0;
    v22 = __OFADD__(v35, v43);
    v35 += v43;
  }

  while (!v22);
  __break(1u);
LABEL_34:
  if (!v35)
  {
    sub_22766A630();
    v68 = v90;

    v69 = sub_22766B380();
    v70 = sub_22766C8B0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v99 = v72;
      *v71 = 136315138;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFD0, &unk_227679A90);
      v74 = MEMORY[0x22AA98660](v68, v73);
      v76 = sub_226E97AE8(v74, v75, &v99);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_226E8E000, v69, v70, "Partial kernel has set cover. partialKernel=%s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v72);
      MEMORY[0x22AA9A450](v72, -1, -1);
      MEMORY[0x22AA9A450](v71, -1, -1);
    }

    (*(v88 + 8))(v40, v89);

    result = sub_226EA9E3C(v8, 0);
    v78 = 2;
LABEL_71:
    *v92 = v78;
    return result;
  }

  v97 = v35;
  v98 = a3;
  v44 = *(v91 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = (v91 + 64);
    while (1)
    {
      v47 = *(v46 - 2);
      v48 = *(v46 - 1);
      v49 = *v46;

      sub_226EB396C(v47, v48, v49);
      sub_226EB396C(v47, v48, v49);
      sub_226EA9E3C(v45, 0);
      v50 = v98;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v99 = v50;
      v52 = sub_226F491D8();
      v54 = *(v50 + 16);
      v55 = (v53 & 1) == 0;
      v22 = __OFADD__(v54, v55);
      v56 = v54 + v55;
      if (v22)
      {
        goto LABEL_78;
      }

      v57 = v53;
      if (*(v50 + 24) < v56)
      {
        break;
      }

      if (v51)
      {
        goto LABEL_42;
      }

      v61 = v52;
      sub_226FF6744();
      v52 = v61;
      v98 = v99;
      if ((v57 & 1) == 0)
      {
LABEL_45:
        v60 = v98;
        *(v98 + 8 * (v52 >> 6) + 64) |= 1 << v52;
        v62 = v60[6] + 24 * v52;
        *v62 = v47;
        *(v62 + 8) = v48;
        *(v62 + 16) = v49;
        *(v60[7] + 8 * v52) = 0;
        v63 = v60[2];
        v22 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v22)
        {
          goto LABEL_80;
        }

        v60[2] = v64;
        goto LABEL_47;
      }

LABEL_43:
      v59 = v52;
      sub_226EB2DFC(v47, v48, v49);
      v52 = v59;
      v60 = v98;
LABEL_47:
      v65 = v60[7];
      v66 = *(v65 + 8 * v52);
      v22 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v22)
      {
        goto LABEL_79;
      }

      *(v65 + 8 * v52) = v67;

      sub_226EB2DFC(v47, v48, v49);
      v46 += 40;
      v45 = sub_227444F98;
      if (!--v44)
      {
        goto LABEL_54;
      }
    }

    sub_226FF6748();
    v98 = v99;
    v52 = sub_226F491D8();
    if ((v57 & 1) != (v58 & 1))
    {
      goto LABEL_82;
    }

LABEL_42:
    if ((v57 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v45 = 0;
LABEL_54:
  v79 = 0;
  v80 = 0;
  v81 = 1 << *(v98 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v98 + 64);
  v84 = (v81 + 63) >> 6;
  while (v83)
  {
    v85 = v79;
LABEL_63:
    v86 = __clz(__rbit64(v83));
    v83 &= v83 - 1;
    v87 = *(*(v98 + 56) + ((v85 << 9) | (8 * v86))) == 0;
    v22 = __OFADD__(v80, v87);
    v80 += v87;
    if (v22)
    {
      __break(1u);
LABEL_66:

      sub_226EA9E3C(v8, 0);
      result = sub_226EA9E3C(v45, 0);
      if (v80 < v97)
      {
        v78 = 1;
      }

      else
      {
        v78 = 2;
      }

      if (!v80)
      {
        v78 = 0;
      }

      goto LABEL_71;
    }
  }

  while (1)
  {
    v85 = v79 + 1;
    if (__OFADD__(v79, 1))
    {
      break;
    }

    if (v85 >= v84)
    {
      goto LABEL_66;
    }

    v83 = *(v98 + 64 + 8 * v85);
    ++v79;
    if (v83)
    {
      v79 = v85;
      goto LABEL_63;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_22766D220();
  __break(1u);
LABEL_82:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  result = sub_22766D220();
  __break(1u);
  return result;
}

void sub_22743F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v68 = a2;
  v65 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  MEMORY[0x28223BE20](v65);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v11 = sub_2276681F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();
  sub_22766B370();
  (*(v16 + 8))(v18, v15);
  v19 = *(a1 + 16);
  if (!v19 || (sub_227667240(), v20 = sub_227667F10(), (*(v12 + 8))(v14, v11), v20 >= v19))
  {

    return;
  }

  v73 = v4;
  v21 = 0;
  v72 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_objectiveUtils;
  v67 = a1 + 32;
  v22 = MEMORY[0x277D84F90];
  v23 = 0x8000000000000000;
  v66 = v19;
  do
  {
    v70 = v21;
    v71 = v22;
    v24 = *(v67 + 8 * v21);
    v25 = *(v24 + 16);
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
      v26 = swift_allocObject();
      v27 = _swift_stdlib_malloc_size(v26);
      v28 = v27 - 32;
      if (v27 < 32)
      {
        v28 = v27 - 25;
      }

      v26[2] = v25;
      v26[3] = 2 * (v28 >> 3);
      v29 = v24;
      v30 = *(v24 + 16);
      if (v30)
      {
        v31 = 0;
        v32 = v25 - 1;
        v33 = v30;
        while ((v30 ^ v31) != 0x8000000000000000)
        {
          v34 = v33 - 1;
          if (v33 - 1 < 0 || v34 >= v30)
          {
            goto LABEL_51;
          }

          v26[v31 + 4] = *(v29 + 24 + 8 * v33);
          if (v32 == v31)
          {

            v24 = v29;
            goto LABEL_17;
          }

          ++v31;
          v33 = v34;
          if (!v34)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_48:
      __break(1u);
      goto LABEL_47;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_17:
    sub_2274424B0(v68, v10);
    v69 = v24;

    v35 = sub_2276692F0();
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = 0;
      v38 = *(v65 + 32);
      v39 = 0.0;
      while (v37 < *(v35 + 16))
      {
        if (sub_22718CB74(*(v35 + v37 + 32), *&v10[v38]))
        {
          if (!v26[2])
          {
            goto LABEL_29;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2272EC574(v26);
          }

          v40 = v26[2];
          if (!v40)
          {
            goto LABEL_53;
          }

          v41 = v40 - 1;
          v42 = v26[v41 + 4];
          v26[2] = v41;
          v39 = v39 + sub_22713824C(v42, v10);
          WorkoutPlanGenerationScaffold.withScheduledDay(withDailySchedule:)(v42, v7);
        }

        else
        {
          WorkoutPlanGenerationScaffold.withUnscheduledDay()(v7);
        }

        ++v37;
        sub_227442514(v10);
        sub_227442570(v7, v10);
        if (v36 == v37)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_52;
    }

    v39 = 0.0;
LABEL_29:

    v22 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v66;
    v45 = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_2273A5D10(0, v22[2] + 1, 1, v22);
    }

    v47 = v22[2];
    v46 = v22[3];
    if (v47 >= v46 >> 1)
    {
      v22 = sub_2273A5D10((v46 > 1), v47 + 1, 1, v22);
    }

    v21 = v45 + 1;
    v22[2] = v47 + 1;
    v48 = &v22[2 * v47];
    *(v48 + 4) = v69;
    v48[5] = v39;
    sub_227442514(v10);
  }

  while (v21 != v44);
  v74 = v22;

  v23 = 0;
  sub_227441430(&v74);
  v49 = sub_2273FC470(v64, v74);
  v53 = v52 >> 1;
  v54 = (v52 >> 1) - v51;
  if (__OFSUB__(v52 >> 1, v51))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v23 = v49;
  if (!v54)
  {
LABEL_47:

    swift_unknownObjectRelease();
    return;
  }

  v55 = v50;
  v56 = v51;
  v74 = MEMORY[0x277D84F90];
  sub_226F1FD48(0, v54 & ~(v54 >> 63), 0);
  if ((v54 & 0x8000000000000000) == 0)
  {
    v57 = v74;
    if (v56 <= v53)
    {
      v58 = v53;
    }

    else
    {
      v58 = v56;
    }

    v59 = v58 - v56;
    v60 = (v55 + 16 * v56);
    while (v59)
    {
      v61 = *v60;
      v74 = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);

      if (v63 >= v62 >> 1)
      {
        sub_226F1FD48((v62 > 1), v63 + 1, 1);
        v57 = v74;
      }

      *(v57 + 16) = v63 + 1;
      *(v57 + 8 * v63 + 32) = v61;
      --v59;
      v60 += 2;
      if (!--v54)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_54;
  }

LABEL_56:
  __break(1u);

  __break(1u);
}

uint64_t sub_22743F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v7 = sub_2276681F0();
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  v14 = *(v13 + 24);
  v59 = a1;
  v15 = sub_227433A74(*(a1 + v14));
  if (*(v15 + 16))
  {
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
    v17 = sub_22766D010();
    v15 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v62[0] = v17;
  sub_227441044(v15, 1, v62);
  v18 = v62[0];
  sub_22766A630();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v19 = *(*(v59 + *(v13 + 32)) + 16);
  v20 = 2;
  if (v19 < 2)
  {
    v20 = *(*(v59 + *(v13 + 32)) + 16);
  }

  v21 = MEMORY[0x277D84F90];
  if (v19 <= 5)
  {
    v22 = v20;
  }

  else
  {
    v22 = 3;
  }

  v61 = MEMORY[0x277D84F90];
  v62[0] = MEMORY[0x277D84F90];
  sub_22743FF70(0, v22, v62, &v61, a2, v4, v18);

  v23 = v61;
  v24 = *(v61 + 16);
  if (v24)
  {
    v51 = v22;
    v52 = v18;
    v53 = a2;
    v55 = v4;
    v25 = 0;
    v26 = MEMORY[0x277D84F90];
    v27 = 32;
    v60 = xmmword_227670CD0;
    do
    {
      v28 = *(v23 + v27);
      v29 = *(v28 + 16);
      if (v25 < v29)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE68, &qword_2276798D8);
        v26 = swift_allocObject();
        *(v26 + 16) = v60;
        v25 = v29;
        *(v26 + 32) = v28;
      }

      else if (v29 == v25)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2273A5BB8(0, *(v26 + 16) + 1, 1, v26);
        }

        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        if (v31 >= v30 >> 1)
        {
          v26 = sub_2273A5BB8((v30 > 1), v31 + 1, 1, v26);
        }

        *(v26 + 16) = v31 + 1;
        *(v26 + 8 * v31 + 32) = v28;
      }

      v27 += 8;
      --v24;
    }

    while (v24);

    if (v25 >= 2)
    {
      v23 = v26;
    }

    v4 = v55;
    v32 = v56;
    v18 = v52;
    v33 = *(v23 + 16);
    sub_227667240();
    v34 = sub_227667F40();
    (*(v57 + 8))(v32, v58);
    a2 = v53;
    if (v34 >= v33)
    {
      sub_22743F2C4(v23, v59, v54);
      v21 = v35;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v22 = v51;
  }

  if (*(v21 + 16) || v22 != 2)
  {
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
    v61 = MEMORY[0x277D84F90];
    v62[0] = MEMORY[0x277D84F90];
    sub_22743FF70(0, 3, v62, &v61, a2, v4, v18);

    v36 = v61;
    v37 = *(v61 + 16);
    if (v37)
    {
      v55 = v4;
      v38 = 0;
      v39 = MEMORY[0x277D84F90];
      v40 = 32;
      v60 = xmmword_227670CD0;
      do
      {
        v41 = *(v36 + v40);
        v42 = *(v41 + 16);
        if (v38 < v42)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE68, &qword_2276798D8);
          v39 = swift_allocObject();
          *(v39 + 16) = v60;
          v38 = v42;
          *(v39 + 32) = v41;
        }

        else if (v42 == v38)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_2273A5BB8(0, *(v39 + 16) + 1, 1, v39);
          }

          v44 = *(v39 + 16);
          v43 = *(v39 + 24);
          if (v44 >= v43 >> 1)
          {
            v39 = sub_2273A5BB8((v43 > 1), v44 + 1, 1, v39);
          }

          *(v39 + 16) = v44 + 1;
          *(v39 + 8 * v44 + 32) = v41;
        }

        v40 += 8;
        --v37;
      }

      while (v37);

      if (v38 >= 2)
      {
        v36 = v39;
      }

      v46 = v56;
      v47 = *(v36 + 16);
      sub_227667240();
      v48 = sub_227667F40();
      (*(v57 + 8))(v46, v58);
      if (v48 >= v47)
      {
        sub_22743F2C4(v36, v59, v54);
        v21 = v49;
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }
    }
  }

  return v21;
}

void sub_22743FF70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v34 = a6;
  v35 = a4;
  v31 = sub_2276681F0();
  MEMORY[0x28223BE20](v31);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  v33 = a2;
  if (a1 < a2)
  {
    v15 = *(a5 + 16);
    if (v15)
    {
      v29 = (v12 + 8);
      v30 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration;
      v16 = 32;
      v28 = xmmword_227670CD0;
      do
      {
        v17 = *(a5 + v16);
        v18 = *a3;

        sub_22743EAF0(v18, v17, a7, &v37);
        if (v37)
        {
          if (v37 == 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_2273A58B0(0, v18[2] + 1, 1, v18);
            }

            v20 = v18[2];
            v19 = v18[3];
            if (v20 >= v19 >> 1)
            {
              v18 = sub_2273A58B0((v19 > 1), v20 + 1, 1, v18);
            }

            v18[2] = v20 + 1;
            v18[v20 + 4] = v17;
            *a3 = v18;
            sub_22743FF70(v32 + 1, v33, a3, v35, a5, v34, a7);
            v21 = *a3;
            if (!*(*a3 + 16))
            {
              __break(1u);
              return;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v22 = v21[2];
              if (!v22)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v21 = sub_2272EC574(v21);
              v22 = v21[2];
              if (!v22)
              {
LABEL_22:
                __break(1u);
                return;
              }
            }

            v21[2] = v22 - 1;

            *a3 = v21;
          }

          else
          {
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFC8, &unk_22767A740);
          inited = swift_initStackObject();
          *(inited + 16) = v28;
          *(inited + 32) = v17;
          v36 = v18;

          sub_227460998(inited);
          v24 = v36;
          v25 = *v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_2273A5BB8(0, v25[2] + 1, 1, v25);
          }

          v27 = v25[2];
          v26 = v25[3];
          if (v27 >= v26 >> 1)
          {
            v25 = sub_2273A5BB8((v26 > 1), v27 + 1, 1, v25);
          }

          v25[2] = v27 + 1;
          v25[v27 + 4] = v24;
          *v35 = v25;
          sub_227667240();
          sub_227667F40();
          (*v29)(v14, v31);
        }

        v16 += 8;
        --v15;
      }

      while (v15);
    }
  }
}

uint64_t sub_227440298(uint64_t a1)
{
  result = Array<A>.modalityCounts.getter(a1);
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 64);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v7 >= v6)
        {
          v9 = 0;
          goto LABEL_13;
        }

        v5 = *(result + 64 + 8 * v7);
        ++v2;
        if (v5)
        {
          v2 = v7;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

    v7 = v2;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (*(*(result + 56) + ((v7 << 9) | (8 * v8))) == 2);
  v9 = 1;
LABEL_13:
  if (*(result + 16) != 2 || v9)
  {

    goto LABEL_16;
  }

  v11 = sub_2274CD858(2, 0);
  v12 = sub_2274CF83C();
  result = sub_226EBB21C(v24);
  if (v12 == 2)
  {
    v13 = v11[2];
    if (v13)
    {
      v14 = v11[4];
      v15 = v11[5];
      v16 = *(v11 + 48);
      v17 = &v11[3 * v13 + 4];
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v20 = *(v17 - 8);
      sub_226EB396C(v14, v15, v16);
      sub_226EB396C(v18, v19, v20);

      v21 = sub_227667250();
      v22 = sub_22718C9FC(v14, v15, v16, v21);

      sub_226EB2DFC(v14, v15, v16);
      v23 = sub_227667250();
      LOBYTE(v14) = sub_22718C9FC(v18, v19, v20, v23);

      sub_226EB2DFC(v18, v19, v20);
      v10 = v22 ^ v14;
    }

    else
    {

LABEL_16:
      v10 = 0;
    }

    return v10 & 1;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_2274404C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v78 = a1 + 32;
    v3 = MEMORY[0x277D84F90];
    v79 = *(a1 + 16);
LABEL_3:
    v72 = v3;
    while (v2 < v1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_74;
      }

      v5 = (v78 + 40 * v2);
      v74 = *v5;
      v76 = v5[1];
      v6 = v5[2];
      v7 = v5[3];
      v8 = *(v5 + 32);

      sub_226EB396C(v6, v7, v8);
      sub_226EB396C(v6, v7, v8);
      v9 = sub_227667250();
      if (*(v9 + 16))
      {
        sub_22766D370();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        sub_226F480FC();
        sub_227663B10();
        v10 = sub_22766D3F0();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          sub_226F48150();
          sub_226EC1E18();
          while ((sub_227663B20() & 1) == 0)
          {
            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_226EB2DFC(v6, v7, v8);
          v3 = v72;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226F1FD28(0, *(v72 + 16) + 1, 1);
            v3 = v72;
          }

          v15 = *(v3 + 16);
          v14 = *(v3 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_226F1FD28((v14 > 1), v15 + 1, 1);
            v3 = v72;
          }

          *(v3 + 16) = v15 + 1;
          v16 = v3 + 40 * v15;
          *(v16 + 32) = v74;
          *(v16 + 40) = v76;
          *(v16 + 48) = v6;
          *(v16 + 56) = v7;
          *(v16 + 64) = v8;
          v1 = v79;
          v2 = v4;
          if (v4 == v79)
          {
LABEL_18:
            v17 = 0;
            v18 = MEMORY[0x277D84F90];
LABEL_19:
            v19 = v17;
            v81 = v18;
            while (v19 < v1)
            {
              if (__OFADD__(v19, 1))
              {
                goto LABEL_76;
              }

              v77 = v19 + 1;
              v20 = (v78 + 40 * v19);
              v71 = *v20;
              v22 = v20[2];
              v21 = v20[3];
              v23 = *(v20 + 32);
              v75 = v20[1];

              sub_226EB396C(v22, v21, v23);
              sub_226EB396C(v22, v21, v23);
              v24 = sub_227667250();
              if (!*(v24 + 16) || (sub_22766D370(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560), sub_226F480FC(), sub_227663B10(), v25 = sub_22766D3F0(), v26 = -1 << *(v24 + 32), v27 = v25 & ~v26, ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
              {
LABEL_30:
                sub_226EB2DFC(v22, v21, v23);

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v18 = v81;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_226F1FD28(0, *(v81 + 16) + 1, 1);
                  v18 = v81;
                }

                v1 = v79;
                v17 = v77;
                v31 = *(v18 + 16);
                v30 = *(v18 + 24);
                if (v31 >= v30 >> 1)
                {
                  sub_226F1FD28((v30 > 1), v31 + 1, 1);
                  v18 = v81;
                }

                *(v18 + 16) = v31 + 1;
                v32 = v18 + 40 * v31;
                *(v32 + 32) = v71;
                *(v32 + 40) = v75;
                *(v32 + 48) = v22;
                *(v32 + 56) = v21;
                *(v32 + 64) = v23;
                if (v77 == v79)
                {
LABEL_35:
                  v33 = v3;
                  goto LABEL_37;
                }

                goto LABEL_19;
              }

              v28 = ~v26;
              sub_226F48150();
              sub_226EC1E18();
              while ((sub_227663B20() & 1) == 0)
              {
                v27 = (v27 + 1) & v28;
                if (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              sub_226EB2DFC(v22, v21, v23);

              sub_226EB2DFC(v22, v21, v23);
              v19 = v77;
              v1 = v79;
              v18 = v81;
              if (v77 == v79)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_75;
          }

          goto LABEL_3;
        }
      }

LABEL_4:

      sub_226EB2DFC(v6, v7, v8);
      sub_226EB2DFC(v6, v7, v8);

      v1 = v79;
      v2 = v4;
      v3 = v72;
      if (v4 == v79)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
LABEL_37:
    v34 = *(v33 + 16);
    v35 = *(v18 + 16);
    v84 = v34;
    if (v35 > v34)
    {
      v34 = *(v18 + 16);
    }

    v80 = v34;
    if (v34)
    {
      v82 = v18;
      v73 = v33;
      v36 = 0;
      v37 = 0;
      v38 = MEMORY[0x277D84F90];
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD098, &unk_2276858A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2276728D0;
        if (v37 >= v35)
        {
          v41 = 0;
          v40 = 0;
          v42 = 0;
          v43 = 0;
          v44 = 0;
        }

        else
        {
          if (v37 >= *(v82 + 16))
          {
            goto LABEL_80;
          }

          v41 = *(v82 + v36 + 32);
          v40 = *(v82 + v36 + 40);
          v42 = *(v82 + v36 + 48);
          v43 = *(v82 + v36 + 56);
          v44 = *(v82 + v36 + 64);

          sub_226EB396C(v42, v43, v44);
        }

        *(inited + 32) = v41;
        *(inited + 40) = v40;
        *(inited + 48) = v42;
        *(inited + 56) = v43;
        *(inited + 64) = v44;
        if (v37 >= v84)
        {
          v46 = 0;
          v45 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
        }

        else
        {
          if (v37 >= *(v73 + 16))
          {
            goto LABEL_81;
          }

          v46 = *(v73 + v36 + 32);
          v45 = *(v73 + v36 + 40);
          v47 = *(v73 + v36 + 48);
          v48 = *(v73 + v36 + 56);
          v49 = *(v73 + v36 + 64);

          sub_226EB396C(v47, v48, v49);
        }

        *(inited + 72) = v46;
        *(inited + 80) = v45;
        *(inited + 88) = v47;
        *(inited + 96) = v48;
        *(inited + 104) = v49;
        v50 = v38[2];
        v51 = v50 + 2;
        if (__OFADD__(v50, 2))
        {
          goto LABEL_77;
        }

        v52 = swift_isUniquelyReferenced_nonNull_native();
        if (!v52 || (v53 = v38[3] >> 1, v53 < v51))
        {
          if (v50 <= v51)
          {
            v54 = v50 + 2;
          }

          else
          {
            v54 = v50;
          }

          v38 = sub_2273A6050(v52, v54, 1, v38);
          v53 = v38[3] >> 1;
        }

        if (v53 - v38[2] < 2)
        {
          goto LABEL_78;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BD0A0, &qword_2276839F0);
        swift_arrayInitWithCopy();

        v55 = v38[2];
        v56 = __OFADD__(v55, 2);
        v57 = v55 + 2;
        if (v56)
        {
          goto LABEL_79;
        }

        v38[2] = v57;
        ++v37;
        v36 += 40;
        if (v80 == v37)
        {

          goto LABEL_61;
        }
      }
    }

    v38 = MEMORY[0x277D84F90];
LABEL_61:
    v58 = 0;
    v59 = v38[2];
    v60 = MEMORY[0x277D84F90];
LABEL_62:
    v61 = &v38[5 * v58 + 2];
    while (1)
    {
      if (v59 == v58)
      {

        return;
      }

      if (v58 >= v38[2])
      {
        break;
      }

      ++v58;
      v62 = v61 + 40;
      v63 = *(v61 + 24);
      v61 += 40;
      if (v63)
      {
        v64 = *(v62 - 24);
        v65 = *(v62 - 8);
        v66 = *v62;
        v67 = *(v62 + 8);

        sub_226EB396C(v65, v66, v67 & 1);
        v83 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_2273A55F4(0, *(v60 + 2) + 1, 1, v60);
        }

        v69 = *(v60 + 2);
        v68 = *(v60 + 3);
        if (v69 >= v68 >> 1)
        {
          v60 = sub_2273A55F4((v68 > 1), v69 + 1, 1, v60);
        }

        *(v60 + 2) = v69 + 1;
        v70 = &v60[40 * v69];
        *(v70 + 4) = v83;
        *(v70 + 5) = v63;
        *(v70 + 6) = v65;
        *(v70 + 7) = v66;
        v70[64] = v67 & 1;
        goto LABEL_62;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

BOOL sub_227440D60(uint64_t *a1, uint64_t *a2)
{
  v12 = *a2;
  v13 = *a1;
  v2 = sub_227667230();
  if (*(v2 + 16) && (v3 = sub_226F491D8(), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = -1;
  }

  v6 = sub_227667230();
  if (*(v6 + 16))
  {
    v7 = sub_226F491D8();
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);

      if (v5 == v9)
      {
        return v13 < v12;
      }

      return v5 < v9;
    }
  }

  if (v5 != -1)
  {
    v9 = -1;
    return v5 < v9;
  }

  return v13 < v12;
}

uint64_t sub_227440E78()
{
  v1 = OBJC_IVAR____TtC15SeymourServices24WorkoutPlanScheduleUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanScheduleUtils(uint64_t a1)
{
  result = qword_27D7BDB50;
  if (!qword_27D7BDB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227440F98(uint64_t a1)
{
  result = sub_227667370();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_227441044(uint64_t a1, char a2, void *a3)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 48);
  v9 = *a3;
  sub_226EB396C(v6, v5, v8);
  v10 = sub_226F491D8();
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
    sub_226FF6748();
    v10 = sub_226F491D8();
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    v10 = sub_22766D220();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_226FF6744();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_226EB2DFC(v6, v5, v8);

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = v21[6] + 24 * v10;
  *v22 = v6;
  *(v22 + 8) = v5;
  *(v22 + 16) = v8;
  *(v21[7] + 8 * v10) = v7;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22766CE20();
    MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_22766CF90();
    MEMORY[0x22AA98450](39, 0xE100000000000000);
    sub_22766CFB0();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v4 = (a1 + 88);
    v7 = 1;
    while (v7 < *(a1 + 16))
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v25 = *v4;
      v8 = *(v4 - 8);
      v26 = *a3;
      sub_226EB396C(v6, v5, v8);
      v27 = sub_226F491D8();
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_226FF6748();
        v27 = sub_226F491D8();
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = v33[6] + 24 * v27;
      *v34 = v6;
      *(v34 + 8) = v5;
      *(v34 + 16) = v8;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v33[2] = v36;
      v4 += 4;
      if (v37 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_227441430(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227117820(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  v4 = sub_22766D130();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE80, &unk_2276798F0);
      v7 = sub_22766C380();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_22744158C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_22744158C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_2271171D0(v8);
    }

    v81 = v8 + 16;
    v82 = *(v8 + 2);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[16 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_2274421E4((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2273A4F9C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v35 = *(v8 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      v8 = sub_2273A4F9C((v35 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v36;
    v37 = v8 + 32;
    v38 = &v8[16 * v5 + 32];
    *v38 = v9;
    *(v38 + 1) = v7;
    v90 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 4);
          v40 = *(v8 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[16 * v36];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[16 * v36];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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

        v76 = &v37[16 * v5 - 16];
        v77 = *v76;
        v78 = &v37[16 * v5];
        v79 = *(v78 + 1);
        sub_2274421E4((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        *(v76 + 1) = v79;
        v80 = *(v8 + 2);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        memmove(&v37[16 * v5], v78 + 16, 16 * (v80 - 1 - v5));
        *(v8 + 2) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[16 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[16 * v36];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
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
}

void sub_227441B20(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v67 = a5;
  v65 = a3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE90, &unk_22767DF70);
  MEMORY[0x28223BE20](v66);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v58 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v22 = a2;
  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_66;
  }

  v23 = v65 - a2;
  if (v65 - a2 != 0x8000000000000000 || v21 != -1)
  {
    v24 = (a2 - a1) / v21;
    v72 = a1;
    v71 = a4;
    if (v24 < v23 / v21)
    {
      v25 = v24 * v21;
      if (a4 < a1 || a1 + v25 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == a1)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v22 = a2;
LABEL_17:
      v27 = a1;
      v68 = v5;
      v64 = a4 + v25;
      v70 = a4 + v25;
      if (v25 >= 1 && v22 < v65)
      {
        v62 = v15;
        v63 = v19;
        v29 = &qword_27D7BAE90;
        while (1)
        {
          v30 = v21;
          v69 = v22;
          v31 = v63;
          sub_226E93170(v22, v63, v29, &unk_22767DF70);
          sub_226E93170(a4, v15, v29, &unk_22767DF70);
          v32 = v68;
          v33 = sub_227437AE0(v31, v15, v67);
          v68 = v32;
          if (v32)
          {
            break;
          }

          v34 = v33;
          sub_226E97D1C(v15, v29, &unk_22767DF70);
          v35 = v29;
          sub_226E97D1C(v31, v29, &unk_22767DF70);
          if (v34)
          {
            v21 = v30;
            v36 = v69 + v30;
            if (v27 < v69 || v27 >= v36)
            {
              swift_arrayInitWithTakeFrontToBack();
              v22 = v36;
            }

            else if (v27 == v69)
            {
              v22 = v69 + v30;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              v22 = v36;
            }
          }

          else
          {
            v21 = v30;
            if (v27 < a4 || v27 >= a4 + v30)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v27 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v71 = a4 + v30;
            a4 += v30;
            v22 = v69;
          }

          v27 += v21;
          v72 = v27;
          if (a4 < v64)
          {
            v29 = v35;
            v15 = v62;
            if (v22 < v65)
            {
              continue;
            }
          }

          goto LABEL_64;
        }

        sub_226E97D1C(v15, &qword_27D7BAE90, &unk_22767DF70);
        sub_226E97D1C(v31, &qword_27D7BAE90, &unk_22767DF70);
      }

LABEL_64:
      sub_22711725C(&v72, &v71, &v70);

      return;
    }

    v26 = v23 / v21 * v21;
    v64 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_41:
        v37 = a4 + v26;
        if (v26 >= 1)
        {
          v38 = -v21;
          v39 = &qword_27D7BAE90;
          v40 = a4 + v26;
          v41 = &unk_22767DF70;
          v42 = v65;
          v60 = a1;
          v61 = a4;
          v63 = v38;
          do
          {
            v58 = v37;
            v43 = v22 + v38;
            v69 = v22 + v38;
            v62 = v22;
            while (1)
            {
              if (v22 <= a1)
              {
                v68 = v6;
                v72 = v22;
                v70 = v58;
                goto LABEL_64;
              }

              v59 = v37;
              v45 = v63;
              v44 = v64;
              v65 = v40;
              v46 = &v63[v40];
              v47 = v6;
              v48 = v39;
              v49 = v41;
              sub_226E93170(&v63[v40], v64, v39, v41);
              sub_226E93170(v43, v11, v48, v49);
              v50 = sub_227437AE0(v44, v11, v67);
              v51 = v11;
              if (v47)
              {
                sub_226E97D1C(v11, &qword_27D7BAE90, &unk_22767DF70);
                sub_226E97D1C(v44, &qword_27D7BAE90, &unk_22767DF70);
                v72 = v62;
                v70 = v59;
                goto LABEL_64;
              }

              v52 = v50;
              v53 = v42 + v45;
              v54 = v51;
              sub_226E97D1C(v51, v48, v49);
              sub_226E97D1C(v44, v48, v49);
              if (v52)
              {
                break;
              }

              v37 = v46;
              if (v42 < v65 || v53 >= v65)
              {
                swift_arrayInitWithTakeFrontToBack();
                v37 = v46;
                v11 = v54;
                a1 = v60;
              }

              else
              {
                v11 = v54;
                a1 = v60;
                if (v42 != v65)
                {
                  swift_arrayInitWithTakeBackToFront();
                  v37 = v46;
                }
              }

              v40 = v37;
              v22 = v62;
              v43 = v69;
              v42 = v53;
              v39 = v48;
              v41 = v49;
              v6 = 0;
              if (v46 <= v61)
              {
                goto LABEL_59;
              }
            }

            v68 = 0;
            if (v42 < v62 || v53 >= v62)
            {
              v57 = v69;
              swift_arrayInitWithTakeFrontToBack();
              v42 = v53;
              v11 = v54;
              v22 = v57;
              a1 = v60;
            }

            else
            {
              v55 = v42 == v62;
              v11 = v54;
              v22 = v69;
              v42 = v53;
              a1 = v60;
              if (!v55)
              {
                v56 = v69;
                swift_arrayInitWithTakeBackToFront();
                v22 = v56;
              }
            }

            v40 = v65;
            v37 = v59;
            v38 = v63;
            v39 = v48;
            v41 = v49;
            v6 = v68;
          }

          while (v65 > v61);
        }

LABEL_59:
        v68 = v6;
        v72 = v22;
        v70 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a2;
    goto LABEL_41;
  }

LABEL_67:
  __break(1u);
}

uint64_t sub_2274421E4(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t sub_2274423E8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_227664440();
    sub_226EAC0B4(&qword_27D7BB388, MEMORY[0x277D508E8], MEMORY[0x277D508F0]);
    v2 = sub_22766BF40();
    v3 = v2 * v1;
    result = (v2 * v1) >> 64;
    if (v3 < v1)
    {
      v4 = -v1 % v1;
      if (v4 > v3)
      {
        do
        {
          v5 = sub_22766BF40();
        }

        while (v4 > v5 * v1);
        return (v5 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2274424B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227442514(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227442570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanGenerationScaffold(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2274425D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v9 = *(a1 + 16);
  swift_beginAccess();
  if (!v9)
  {
    return;
  }

  v10 = 0;
  v11 = a1 + 32;
  v12 = MEMORY[0x277D84F90];
  while (2)
  {
    v26 = v12;
    v13 = v10;
    while (2)
    {
      if (v13 >= v9)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 8 * v13);
      if (*(a2 + 16) && (sub_226F491D8(), (v15 & 1) != 0))
      {
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      v17 = *(v16 + 16);
      v18 = 32;
      do
      {
        if (!v17)
        {

          goto LABEL_5;
        }

        v19 = *(v16 + v18);
        v18 += 8;
        --v17;
      }

      while (v19 != v14);

      v20 = sub_227669310();
      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      if (v20 >= *(*a6 + 16))
      {
LABEL_29:
        __break(1u);
        return;
      }

      if (*(*a6 + 8 * v20 + 32) < v14)
      {
LABEL_5:
        v13 = v10;
        if (v10 == v9)
        {
          return;
        }

        continue;
      }

      break;
    }

    v21 = v26;
    v29 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_226F1F090(0, *(v26 + 16) + 1, 1);
      v21 = v26;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v25 = *(v21 + 16);
      v27 = v23 + 1;
      sub_226F1F090((v22 > 1), v23 + 1, 1);
      v23 = v25;
      v24 = v27;
      v21 = v29;
    }

    *(v21 + 16) = v24;
    *(v21 + 8 * v23 + 32) = v14;
    v12 = v21;
    if (v10 != v9)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2274427C4(char *__dst, char *__src, unint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = (__src - __dst) / 40;
  v9 = a3 - __src;
  v10 = (a3 - __src) / 40;
  v80 = a4;
  if (v8 >= v10)
  {
    v35 = 5 * v10;
    if (a4 != __src || &__src[v35 * 8] <= a4)
    {
      memmove(a4, __src, 40 * v10);
      a4 = v80;
    }

    v12 = &a4[v35];
    if (v9 < 40 || v5 <= v6)
    {
      goto LABEL_63;
    }

    v75 = v6;
LABEL_38:
    v63 = v5 - 5;
    v36 = v12;
    while (1)
    {
      v79 = v12;
      v71 = v4;
      v37 = *(v36 - 40);
      v36 -= 40;
      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      v40 = *(v36 + 32);
      v64 = *(v5 - 5);
      v65 = v37;
      v41 = *(v5 - 3);
      v42 = *(v5 - 2);
      v43 = *(v5 - 8);

      sub_226EB396C(v39, v38, v40);
      v44 = v42;
      v45 = v41;

      v77 = v43;
      sub_226EB396C(v41, v44, v43);
      v46 = sub_227667230();
      v72 = v39;
      v69 = v38;
      if (*(v46 + 16))
      {
        v47 = sub_226F491D8();
        v48 = v40;
        if (v49)
        {
          v50 = *(*(v46 + 56) + 8 * v47);
        }

        else
        {
          v50 = -1;
        }

        v67 = v50;
        v51 = v71;
      }

      else
      {
        v67 = -1;
        v51 = v71;
        v48 = v40;
      }

      v52 = sub_227667230();
      if (*(v52 + 16) && (v53 = sub_226F491D8(), (v54 & 1) != 0))
      {
        v55 = *(*(v52 + 56) + 8 * v53);

        sub_226EB2DFC(v45, v44, v77);

        sub_226EB2DFC(v72, v69, v48);
        v56 = v67;
        if (v67 == v55)
        {
          goto LABEL_54;
        }
      }

      else
      {

        sub_226EB2DFC(v41, v44, v77);

        sub_226EB2DFC(v72, v69, v48);
        v56 = v67;
        if (v67 == -1)
        {
LABEL_54:
          v4 = (v51 - 5);
          a4 = v80;
          if (v65 < v64)
          {
LABEL_57:
            v12 = v79;
            if (v51 != v5)
            {
              v59 = *v63;
              v60 = *(v5 - 3);
              *(v4 + 32) = *(v5 - 1);
              *v4 = v59;
              *(v4 + 16) = v60;
            }

            if (v79 <= a4 || (v5 -= 5, v63 <= v75))
            {
              v5 = v63;
              goto LABEL_63;
            }

            goto LABEL_38;
          }

          goto LABEL_55;
        }

        v55 = -1;
      }

      v4 = (v51 - 5);
      a4 = v80;
      if (v56 < v55)
      {
        goto LABEL_57;
      }

LABEL_55:
      if (v79 != v51)
      {
        v57 = *v36;
        v58 = *(v36 + 16);
        *(v4 + 32) = *(v36 + 32);
        *v4 = v57;
        *(v4 + 16) = v58;
      }

      v12 = v36;
      if (v36 <= a4)
      {
        v12 = v36;
        goto LABEL_63;
      }
    }
  }

  v11 = 5 * v8;
  if (a4 != __dst || &__dst[v11 * 8] <= a4)
  {
    memmove(a4, __dst, v11 * 8);
    a4 = v80;
  }

  v12 = &a4[v11];
  if (v7 >= 40 && v5 < v4)
  {
    v78 = &a4[v11];
    v66 = v4;
    do
    {
      v73 = v5;
      v74 = v6;
      v14 = v5[2];
      v13 = v5[3];
      v15 = *(v5 + 32);
      v68 = *a4;
      v70 = *v5;
      v17 = a4[2];
      v16 = a4[3];
      v81 = a4;
      v18 = *(a4 + 32);

      sub_226EB396C(v14, v13, v15);

      sub_226EB396C(v17, v16, v18);
      v19 = sub_227667230();
      v76 = v15;
      if (*(v19 + 16))
      {
        v20 = v14;
        v21 = sub_226F491D8();
        v22 = v13;
        if (v23)
        {
          v24 = *(*(v19 + 56) + 8 * v21);
        }

        else
        {
          v24 = -1;
        }

        v25 = v20;
      }

      else
      {
        v25 = v14;
        v22 = v13;
        v24 = -1;
      }

      v26 = sub_227667230();
      if (*(v26 + 16) && (v27 = sub_226F491D8(), (v28 & 1) != 0))
      {
        v29 = *(*(v26 + 56) + 8 * v27);

        sub_226EB2DFC(v17, v16, v18);

        sub_226EB2DFC(v25, v22, v76);
        v5 = v73;
        if (v24 != v29)
        {
          goto LABEL_20;
        }
      }

      else
      {

        sub_226EB2DFC(v17, v16, v18);

        sub_226EB2DFC(v25, v22, v76);
        v5 = v73;
        if (v24 != -1)
        {
          v29 = -1;
LABEL_20:
          v30 = v24 < v29;
          goto LABEL_22;
        }
      }

      v30 = v70 < v68;
LABEL_22:
      v12 = v78;
      a4 = v81;
      if (!v30)
      {
        v31 = v81;
        a4 = v81 + 5;
        if (v74 == v81)
        {
          goto LABEL_29;
        }

LABEL_28:
        v33 = *v31;
        v34 = *(v31 + 1);
        v74[4] = v31[4];
        *v74 = v33;
        *(v74 + 1) = v34;
        goto LABEL_29;
      }

      v31 = v5;
      v32 = v74 == v5;
      v5 += 5;
      if (!v32)
      {
        goto LABEL_28;
      }

LABEL_29:
      v6 = (v74 + 5);
    }

    while (a4 < v78 && v5 < v66);
  }

  v5 = v6;
LABEL_63:
  v61 = 5 * ((v12 - a4) / 40);
  if (v5 != a4 || v5 >= &a4[v61])
  {
    memmove(v5, a4, v61 * 8);
  }

  return 1;
}

void sub_227442DA8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v22 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_2271171D0(v22);
  }

  v19 = v6;
  *v6 = v22;
  v8 = (v22 + 16);
  v9 = *(v22 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v19 = v22;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = v5;
      v6 = &v22[16 * v9];
      v12 = *v6;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __dst = (v10 + 40 * *v6);
      v15 = (v10 + 40 * *v13);
      v16 = v10 + 40 * v14;

      sub_2274427C4(__dst, v15, v16, a2);
      v5 = v11;

      if (v11)
      {
        *v19 = v22;

        return;
      }

      if (v14 < v12)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_12;
      }

      *v6 = v12;
      v6[1] = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_13;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v19 = v22;
    __break(1u);
  }
}

void sub_227442F54(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t a5)
{
  v6 = a3[1];
  v185 = MEMORY[0x277D84F90];
  if (v6 < 1)
  {
    v9 = a5;
    swift_retain_n();
LABEL_122:
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    sub_227442DA8(&v185, v141, a3, v9);
    if (!v161)
    {

      goto LABEL_126;
    }

LABEL_124:

LABEL_125:

LABEL_126:

    return;
  }

  swift_retain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v163 = a5;
  while (1)
  {
    v10 = v7;
    if (v7 + 1 >= v6)
    {
      v31 = v7 + 1;
      goto LABEL_38;
    }

    v159 = v6;
    v151 = v8;
    v11 = *a3;
    v12 = *a3 + 40 * (v7 + 1);
    v13 = *(v12 + 8);
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    v16 = *(v12 + 32);
    v181[0] = *v12;
    v181[1] = v13;
    v182 = v15;
    v183 = v14;
    v184 = v16;
    v17 = v11 + 40 * v7;
    v18 = v7;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
    v177[0] = *v17;
    v177[1] = v19;
    v178 = v20;
    v179 = v21;
    v180 = v22;

    sub_226EB396C(v15, v14, v16);

    sub_226EB396C(v20, v21, v22);
    v166 = sub_227440D60(v181, v177);
    if (v161)
    {
      v142 = v178;
      v143 = v179;
      v144 = v180;

      sub_226EB2DFC(v142, v143, v144);
      v145 = v182;
      v146 = v183;
      v147 = v184;

      sub_226EB2DFC(v145, v146, v147);
      goto LABEL_125;
    }

    v23 = v178;
    v24 = v179;
    v25 = v180;

    sub_226EB2DFC(v23, v24, v25);
    v26 = v182;
    v27 = v183;
    v28 = v184;

    sub_226EB2DFC(v26, v27, v28);
    v29 = v18 + 2;
    v149 = v18;
    v164 = 40 * v18;
    v30 = (v11 + 40 * v18 + 112);
    v31 = v159;
    while (v31 != v29)
    {
      v171 = *(v30 - 4);
      v172 = v29;
      v35 = *(v30 - 2);
      v34 = *(v30 - 1);
      v36 = *v30;
      v169 = *(v30 - 9);
      v37 = *(v30 - 7);
      v38 = *(v30 - 6);
      v39 = *(v30 - 40);

      sub_226EB396C(v35, v34, v36);

      sub_226EB396C(v37, v38, v39);
      v40 = sub_227667230();
      v174 = v36;
      if (*(v40 + 16))
      {
        v41 = v35;
        v42 = sub_226F491D8();
        if (v43)
        {
          v44 = *(*(v40 + 56) + 8 * v42);
        }

        else
        {
          v44 = -1;
        }

        v45 = v41;
      }

      else
      {
        v45 = v35;
        v44 = -1;
      }

      v46 = sub_227667230();
      if (*(v46 + 16) && (v47 = sub_226F491D8(), (v48 & 1) != 0))
      {
        v49 = *(*(v46 + 56) + 8 * v47);

        sub_226EB2DFC(v37, v38, v39);

        sub_226EB2DFC(v45, v34, v174);
        if (v44 != v49)
        {
          v32 = v44 < v49;
          goto LABEL_9;
        }
      }

      else
      {

        sub_226EB2DFC(v37, v38, v39);

        sub_226EB2DFC(v45, v34, v174);
        if (v44 != -1)
        {
          v32 = v44 < -1;
          goto LABEL_9;
        }
      }

      v32 = v171 < v169;
LABEL_9:
      v33 = v32;
      v31 = v159;
      ++v29;
      v30 += 40;
      if ((v166 ^ v33))
      {
        v31 = v172;
        break;
      }
    }

    v10 = v149;
    v8 = v151;
    if (!v166)
    {
      goto LABEL_38;
    }

    if (v31 < v149)
    {
      goto LABEL_148;
    }

    if (v149 < v31)
    {
      v50 = 40 * v31 - 8;
      v51 = v164 + 32;
      v52 = v31;
      v53 = v149;
      do
      {
        if (v53 != --v52)
        {
          v62 = *a3;
          if (!*a3)
          {
            goto LABEL_151;
          }

          v54 = (v62 + v51);
          v55 = (v62 + v50);
          v56 = *(v54 - 4);
          v57 = *(v54 - 3);
          v58 = *v54;
          v59 = *(v54 - 1);
          v60 = *v55;
          v61 = *(v55 - 1);
          *(v54 - 2) = *(v55 - 2);
          *(v54 - 1) = v61;
          *v54 = v60;
          *(v55 - 4) = v56;
          *(v55 - 3) = v57;
          *(v55 - 1) = v59;
          *v55 = v58;
        }

        ++v53;
        v50 -= 40;
        v51 += 40;
      }

      while (v53 < v52);
    }

LABEL_38:
    v63 = a3[1];
    if (v31 >= v63)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v31, v10))
    {
      goto LABEL_145;
    }

    if (v31 - v10 >= a4)
    {
LABEL_47:
      v7 = v31;
      if (v31 < v10)
      {
        goto LABEL_144;
      }

      goto LABEL_48;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_146;
    }

    v64 = v10 + a4 >= v63 ? a3[1] : v10 + a4;
    if (v64 < v10)
    {
      break;
    }

    if (v31 == v64)
    {
      goto LABEL_47;
    }

    v150 = v10;
    v152 = v8;
    v162 = *a3;
    v118 = *a3 + 40 * v31 - 40;
    v119 = v10 - v31;
    v155 = v64;
    while (2)
    {
      v160 = v31;
      v156 = v119;
      v157 = v118;
      v120 = v119;
      while (2)
      {
        v168 = v118 + 40;
        v170 = v120;
        v121 = *(v118 + 56);
        v122 = *(v118 + 64);
        v123 = *(v118 + 72);
        v165 = *v118;
        v167 = *(v118 + 40);
        v125 = *(v118 + 16);
        v124 = *(v118 + 24);
        v126 = *(v118 + 32);

        sub_226EB396C(v121, v122, v123);

        sub_226EB396C(v125, v124, v126);
        v127 = sub_227667230();
        v176 = v121;
        if (*(v127 + 16))
        {
          v128 = sub_226F491D8();
          if (v129)
          {
            v130 = *(*(v127 + 56) + 8 * v128);
          }

          else
          {
            v130 = -1;
          }

          v173 = v130;
        }

        else
        {
          v173 = -1;
        }

        v131 = sub_227667230();
        if (*(v131 + 16) && (v132 = sub_226F491D8(), (v133 & 1) != 0))
        {
          v134 = *(*(v131 + 56) + 8 * v132);

          sub_226EB2DFC(v125, v124, v126);

          sub_226EB2DFC(v176, v122, v123);
          if (v173 != v134)
          {
            if (v173 >= v134)
            {
              break;
            }

            goto LABEL_115;
          }

LABEL_114:
          if (v167 >= v165)
          {
            break;
          }
        }

        else
        {

          sub_226EB2DFC(v125, v124, v126);

          sub_226EB2DFC(v121, v122, v123);
          if (v173 == -1)
          {
            goto LABEL_114;
          }

          if (v173 >= -1)
          {
            break;
          }
        }

LABEL_115:
        if (!v162)
        {
          goto LABEL_149;
        }

        v136 = *(v118 + 40);
        v135 = *(v118 + 48);
        v137 = *(v118 + 72);
        v138 = *(v118 + 56);
        v139 = *(v118 + 16);
        v140 = *(v118 + 32);
        *v168 = *v118;
        *(v118 + 56) = v139;
        *v118 = v136;
        *(v118 + 8) = v135;
        *(v118 + 16) = v138;
        *(v118 + 32) = v137;
        v118 -= 40;
        *(v168 + 32) = v140;
        v120 = v170 + 1;
        if (v170 != -1)
        {
          continue;
        }

        break;
      }

      ++v31;
      v118 = v157 + 40;
      v119 = v156 - 1;
      v7 = v155;
      if (v160 + 1 != v155)
      {
        continue;
      }

      break;
    }

    v10 = v150;
    v8 = v152;
    if (v155 < v150)
    {
      goto LABEL_144;
    }

LABEL_48:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2273A4F9C(0, *(v8 + 2) + 1, 1, v8);
    }

    v66 = *(v8 + 2);
    v65 = *(v8 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      v8 = sub_2273A4F9C((v65 > 1), v66 + 1, 1, v8);
    }

    *(v8 + 2) = v67;
    v68 = v8 + 32;
    v69 = &v8[16 * v66 + 32];
    *v69 = v10;
    *(v69 + 1) = v7;
    v185 = v8;
    v175 = *a1;
    if (!*a1)
    {
      goto LABEL_152;
    }

    if (v66)
    {
      v154 = v7;
      while (1)
      {
        v70 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v71 = *(v8 + 4);
          v72 = *(v8 + 5);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_68:
          if (v74)
          {
            goto LABEL_135;
          }

          v87 = &v8[16 * v67];
          v89 = *v87;
          v88 = *(v87 + 1);
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_138;
          }

          v93 = &v68[16 * v70];
          v95 = *v93;
          v94 = *(v93 + 1);
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_141;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_142;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              v70 = v67 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        v97 = &v8[16 * v67];
        v99 = *v97;
        v98 = *(v97 + 1);
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_82:
        if (v92)
        {
          goto LABEL_137;
        }

        v100 = &v68[16 * v70];
        v102 = *v100;
        v101 = *(v100 + 1);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_140;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_89:
        if (v70 - 1 >= v67)
        {
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
          goto LABEL_147;
        }

        v108 = *a3;
        if (!*a3)
        {
          goto LABEL_150;
        }

        v109 = &v68[16 * v70 - 16];
        v110 = *v109;
        v111 = v70;
        v112 = &v68[16 * v70];
        v113 = *(v112 + 1);
        v114 = (v108 + 40 * *v109);
        v115 = (v108 + 40 * *v112);
        v116 = v108 + 40 * v113;

        sub_2274427C4(v114, v115, v116, v175);
        if (v161)
        {
          goto LABEL_124;
        }

        if (v113 < v110)
        {
          goto LABEL_130;
        }

        v117 = *(v8 + 2);
        if (v111 > v117)
        {
          goto LABEL_131;
        }

        *v109 = v110;
        *(v109 + 1) = v113;
        if (v111 >= v117)
        {
          goto LABEL_132;
        }

        v67 = v117 - 1;
        memmove(v112, v112 + 16, 16 * (v117 - 1 - v111));
        *(v8 + 2) = v117 - 1;
        v68 = v8 + 32;
        if (v117 <= 2)
        {
LABEL_3:
          v185 = v8;
          v7 = v154;
          goto LABEL_4;
        }
      }

      v75 = &v68[16 * v67];
      v76 = *(v75 - 8);
      v77 = *(v75 - 7);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_133;
      }

      v80 = *(v75 - 6);
      v79 = *(v75 - 5);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_134;
      }

      v82 = &v8[16 * v67];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_136;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_139;
      }

      if (v86 >= v78)
      {
        v104 = &v68[16 * v70];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_143;
        }

        if (v73 < v107)
        {
          v70 = v67 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_68;
    }

LABEL_4:
    v6 = a3[1];
    v9 = v163;
    if (v7 >= v6)
    {
      goto LABEL_122;
    }
  }

LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:

  __break(1u);
LABEL_150:

  __break(1u);
LABEL_151:

  __break(1u);
LABEL_152:

  __break(1u);
LABEL_153:

  __break(1u);
}