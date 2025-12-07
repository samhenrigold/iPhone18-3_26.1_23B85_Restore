void *sub_2629FEA84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  v42 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v43 = &v35 - v6;
  MEMORY[0x28223BE20](v5);
  v8 = (&v35 - v7);
  v9 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v40 = *(a1 + 16);
  if (!v40)
  {
    return v9;
  }

  v10 = 0;
  v39 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v11 = a1 + ((*(*(v39 - 8) + 80) + 32) & ~*(*(v39 - 8) + 80));
  v38 = *(*(v39 - 8) + 72);
  v36 = xmmword_262A2B290;
  v37 = v2;
  while (1)
  {
    v12 = *(v2 + 48);
    *v8 = v10;
    sub_2629FEF84(v11, v8 + v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v13 = v43;
    sub_2629FEEF4(v8, v43);
    v14 = *(v13 + *(v2 + 48) + *(v39 + 28));
    v16 = sub_2629D41BC(v14);
    v18 = v9[2];
    v19 = (v15 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v15;
    if (v9[3] < v20)
    {
      sub_2629D1F1C(v20, 1, v17);
      v9 = v44;
      v22 = sub_2629D41BC(v14);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v16 = v22;
    }

    if (v21)
    {
      v24 = v9[7];
      sub_2629FEEF4(v43, v41);
      v25 = *(v24 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2629A9804(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v16) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_2629A9804((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v16) = v25;
      }

      v25[2] = v28 + 1;
      sub_2629FEEF4(v41, v25 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28);
      v2 = v37;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFE8, &unk_262A2B490);
      v29 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_2629FEEF4(v43, v30 + v29);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      *(v9[6] + v16) = v14;
      *(v9[7] + 8 * v16) = v30;
      v31 = v9[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v9[2] = v33;
    }

    ++v10;
    v11 += v38;
    if (v40 == v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_2629FEE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629FEEF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629FEF84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2629FEFEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2629FF04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2629FF0B0()
{
  result = qword_27FF3CBC8;
  if (!qword_27FF3CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CBC8);
  }

  return result;
}

unint64_t sub_2629FF104()
{
  result = qword_27FF3CBD0;
  if (!qword_27FF3CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CBD0);
  }

  return result;
}

uint64_t sub_2629FF158(uint64_t a1, uint64_t a2)
{
  v5[2] = *(v2 + 16);
  sub_2629EB170(sub_2629FF1BC, 0.0, v5, a2);
  return a1;
}

BOOL sub_2629FF1D8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(*a2 + 16);
  v5 = v3 + *(type metadata accessor for HeuristicsProcessor(0) + 24);
  return v4 >= *(v5 + *(type metadata accessor for PlanGenerationContext(0) + 60));
}

uint64_t sub_2629FF23C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBF0, &qword_262A30FD0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = *(type metadata accessor for SIDArchivedSession(0) - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2629FF360, 0, 0);
}

uint64_t sub_2629FF360()
{
  v1 = *(v0 + 48);
  v2 = v1 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v3 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
  v4 = v3;
  v5 = *(v2 + *(v3 + 28));
  *(v0 + 104) = v5;
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v28 = v3;
    v29 = v2;
    v8 = *(v0 + 88);
    v9 = *(v0 + 96);
    v30 = MEMORY[0x277D84F90];
    sub_2629CD800(0, v6, 0);
    v7 = v30;
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    do
    {
      v12 = *(v0 + 96);
      sub_262A02E7C(v10, v12, type metadata accessor for SIDArchivedSession);
      v13 = *v12;
      v14 = *(v9 + 8);

      sub_262A02FD8(v12, type metadata accessor for SIDArchivedSession);
      v16 = *(v30 + 16);
      v15 = *(v30 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2629CD800((v15 > 1), v16 + 1, 1);
      }

      *(v30 + 16) = v16 + 1;
      v17 = v30 + 16 * v16;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      v10 += v11;
      --v6;
    }

    while (v6);
    v4 = v28;
    v2 = v29;
  }

  v18 = sub_262A26BD8(v7);
  *(v0 + 112) = v18;

  v19 = type metadata accessor for RequestPreProcessor(0);
  *(v0 + 120) = v19;
  *(v0 + 152) = *(v19 + 20);
  sub_262A2A6F8();

  *(v0 + 32) = *(v18 + 16);
  v20 = sub_262A2A868();
  MEMORY[0x26672ECF0](v20);

  MEMORY[0x26672ECF0](0xD00000000000001DLL, 0x8000000262A334B0);
  sub_2629EA8C8(0x20676E6974746547, 0xE800000000000000);

  if (*(v18 + 16))
  {
    v21 = (v2 + *(v4 + 44));
    v23 = *v21;
    v22 = v21[1];
    v24 = swift_task_alloc();
    *(v0 + 128) = v24;
    *v24 = v0;
    v24[1] = sub_2629FF6A4;

    return sub_262A15D7C(v23, v22, v18);
  }

  else
  {

    sub_2629EA8C8(0xD000000000000044, 0x8000000262A33540);

    v26 = *(v0 + 8);
    v27 = MEMORY[0x277D84F90];

    return v26(v27);
  }
}

uint64_t sub_2629FF6A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_2629FFBB4;
  }

  else
  {
    v4 = sub_2629FF7E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2629FF7E0()
{
  v32 = v0;
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v29 = v0[10];
    v4 = v0[8];
    v30 = MEMORY[0x277D84F90];
    sub_2629CD820(0, v2, 0);
    v5 = v30;
    v6 = *(type metadata accessor for SIDCatalogWorkoutReference(0) - 8);
    v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      v9 = v28[10];
      v10 = (v9 + *(v4 + 48));
      sub_262A02E7C(v7, v10, type metadata accessor for SIDCatalogWorkoutReference);
      v11 = v10[1];
      *v9 = *v10;
      *(v29 + 8) = v11;
      v30 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_2629CD820((v12 > 1), v13 + 1, 1);
        v5 = v30;
      }

      v14 = v28[10];
      *(v5 + 16) = v13 + 1;
      sub_262A02EE4(v14, v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13);
      v7 += v8;
      --v2;
    }

    while (v2);

    if (*(v5 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C790, &qword_262A2E760);
      v15 = sub_262A2A778();
      goto LABEL_10;
    }
  }

  v15 = MEMORY[0x277D84F98];
LABEL_10:
  v16 = v28[18];
  v30 = v15;

  sub_262A01244(v17, 1, &v30);
  if (v16)
  {

    return swift_unexpectedError();
  }

  else
  {
    v19 = v28[13];
    v20 = v28[7];

    v21 = v30;
    v22 = swift_task_alloc();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v23 = sub_2629EBBF4(sub_262A02F54, v22, v19);

    v30 = v23;

    sub_262A017C0(&v30);

    v24 = v30;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_262A2A6F8();

    v30 = 0xD000000000000028;
    v31 = 0x8000000262A33510;
    v25 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
    v26 = MEMORY[0x26672EDD0](v24, v25);
    MEMORY[0x26672ECF0](v26);

    sub_2629EA8C8(v30, v31);

    v27 = v28[1];

    return v27(v24);
  }
}

uint64_t sub_2629FFBB4()
{
  v1 = *(*(v0 + 56) + *(*(v0 + 120) + 24));
  *(v0 + 156) = 1;
  v2 = *(v0 + 144);
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v4[2] = v1;
  v4[3] = 0;
  v4[4] = v2;
  v4[5] = v0 + 156;
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_2629B3A78;
  *(v5 + 24) = v4;

  os_unfair_lock_lock(v3 + 4);
  sub_2629B3A9C(v6);
  v7 = *(v0 + 144);
  os_unfair_lock_unlock(v3 + 4);

  sub_262A2A6F8();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x26672ECF0](0xD000000000000039, 0x8000000262A334D0);
  *(v0 + 40) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  sub_262A2A738();
  sub_2629EA8B0(*(v0 + 16), *(v0 + 24));

  MEMORY[0x26672F6A0](v7);

  v8 = *(v0 + 8);
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

void sub_2629FFDBC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  v8 = sub_262A02A8C(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CDD0, &qword_262A2B3B0);
  v9 = sub_262A2A758();
  v10 = v9;
  v11 = 0;
  v12 = 1 << *(v8 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v8[8];
  v15 = (v12 + 63) >> 6;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_10:
      v20 = *(v8[6] + v17);
      v21 = *(*(v8[7] + 8 * v17) + 16);
      *(v9 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v9[6] + v17) = v20;
      *(v9[7] + 8 * v17) = v21;
      v22 = v9[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v9[2] = v24;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v11 >= v15)
      {
        break;
      }

      v19 = v8[v11 + 8];
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_10;
      }
    }

    sub_262A00F00(v10);
    v26 = v25;

    v27 = sub_262A0107C(v26 & 1, a1);
    v28 = a1 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
    sub_2629ADF8C(v28, a4, &unk_27FF3C0B0, &unk_262A30350);
    v29 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
    v30 = *(v28 + v29[5]);
    v31 = v29[8];
    v32 = type metadata accessor for FitnessPlanUser(0);
    sub_262A02E7C(v28 + v31, a4 + v32[6], type metadata accessor for SIDUserMetadata);
    sub_2629ADF8C(v28 + v29[10], a4 + v32[7], &qword_27FF3C948, &unk_262A30B40);
    *(a4 + v32[5]) = v30;
    *(a4 + v32[8]) = a3;
    *(a4 + v32[9]) = v27;
    *(a4 + v32[10]) = a2;
  }
}

void sub_262A0003C(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v142 = a4;
  v141 = a3;
  v6 = sub_262A2A168();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_262A29FD8();
  v136 = *(v138 - 8);
  v10 = MEMORY[0x28223BE20](v138);
  v135 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v122 - v12;
  v139 = type metadata accessor for SIDCatalogWorkoutReference(0);
  v14 = *(v139 - 1);
  v15 = MEMORY[0x28223BE20](v139);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v140 = &v122 - v18;
  v137 = a1;
  v20 = *a1;
  v19 = *(a1 + 1);
  if (!*(a2 + 16) || (v21 = sub_2629CB0BC(v20, v19), (v22 & 1) == 0))
  {
    type metadata accessor for RequestPreProcessor(0);
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_262A2A6F8();

    v143 = 0xD00000000000002DLL;
    v144 = 0x8000000262A33590;
    MEMORY[0x26672ECF0](v20, v19);
    sub_2629EAAEC(v143, v144);

LABEL_12:
    v46 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
    (*(*(v46 - 8) + 56))(v142, 1, 1, v46);
    return;
  }

  v132 = v20;
  v134 = v19;
  sub_262A02E7C(*(a2 + 56) + *(v14 + 72) * v21, v17, type metadata accessor for SIDCatalogWorkoutReference);
  sub_262A02F70(v17, v140, type metadata accessor for SIDCatalogWorkoutReference);
  v23 = type metadata accessor for SIDArchivedSession(0);
  v24 = *(v23 + 24);
  v133 = *(v23 + 28);
  v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v26 = sub_262A2A3E8();
  [v25 setDateFormat_];

  v27 = v137;
  v28 = sub_262A2A138();
  [v25 setTimeZone_];

  v29 = sub_262A29F88();
  v30 = [v25 stringFromDate_];

  v129 = sub_262A2A3F8();
  v32 = v31;

  v130 = *(v136 + 16);
  v131 = v24;
  v130(v13, &v27[v24], v138);
  (*(v7 + 16))(v9, &v27[v133], v6);
  v33 = v140;
  v34 = sub_2629E9F70(v13, v9);
  v35 = v139;
  v36 = *(v33 + v139[10]);
  v37 = sub_2629B4608(v36);
  v38 = (v33 + v35[12]);
  v39 = *v38;
  v40 = v38[1];

  v41 = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0(v39, v40);
  if (v41 == 14)
  {

    type metadata accessor for RequestPreProcessor(0);
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A335E0);
    MEMORY[0x26672ECF0](v39, v40);
    MEMORY[0x26672ECF0](0xD000000000000015, 0x8000000262A33610);
    MEMORY[0x26672ECF0](v132, v134);
    sub_2629EAAEC(v143, v144);
LABEL_11:

    sub_262A02FD8(v33, type metadata accessor for SIDCatalogWorkoutReference);
    goto LABEL_12;
  }

  v42 = v41;
  v145 = v34;
  v133 = v32;
  if (SIDWorkoutModality.rawValue.getter(v41) == 0x3032383934393431 && v43 == 0xEA00000000003635)
  {
    goto LABEL_8;
  }

  v44 = sub_262A2A878();

  if (v44)
  {
    goto LABEL_10;
  }

  if (SIDWorkoutModality.rawValue.getter(v42) == 0x3332373831363531 && v47 == 0xEA00000000003639)
  {
LABEL_8:

LABEL_10:

    type metadata accessor for RequestPreProcessor(0);
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_262A2A6F8();

    v143 = 0x676E697070696B53;
    v144 = 0xEA0000000000203ALL;
    v146 = v42;
    v45 = sub_262A2A418();
    MEMORY[0x26672ECF0](v45);

    MEMORY[0x26672ECF0](0x74756F6B726F7720, 0xEA0000000000203ALL);
    MEMORY[0x26672ECF0](v132, v134);
    sub_2629EA8C8(v143, v144);
    goto LABEL_11;
  }

  v48 = sub_262A2A878();

  if (v48)
  {
    goto LABEL_10;
  }

  v125 = v37;
  v126 = v42;
  v49 = v33;
  v50 = 0;
  v51 = *(v49 + v139[13]);
  v52 = *(v51 + 16);
  v128 = MEMORY[0x277D84F90];
LABEL_17:
  v53 = v51 + 40 + 16 * v50;
  while (v52 != v50)
  {
    if (v50 >= *(v51 + 16))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    ++v50;
    v54 = v53 + 16;

    v55 = sub_262A2A788();

    v53 = v54;
    if (v55 < 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_2629A9A24(0, *(v128 + 2) + 1, 1, v128);
      }

      v56 = v128;
      v58 = *(v128 + 2);
      v57 = *(v128 + 3);
      if (v58 >= v57 >> 1)
      {
        v56 = sub_2629A9A24((v57 > 1), v58 + 1, 1, v128);
      }

      *(v56 + 2) = v58 + 1;
      v128 = v56;
      v56[v58 + 32] = v55;
      goto LABEL_17;
    }
  }

  v59 = 0;
  v60 = *(v140 + v139[14]);
  v61 = *(v60 + 16);
  v141 = MEMORY[0x277D84F90];
LABEL_27:
  v62 = v60 + 40 + 16 * v59;
  while (v61 != v59)
  {
    if (v59 >= *(v60 + 16))
    {
      goto LABEL_94;
    }

    ++v59;

    v63 = sub_262A2A788();

    if (!v63)
    {
      v64 = 0;
      goto LABEL_34;
    }

    v62 += 16;
    if (v63 == 1)
    {
      v64 = 1;
LABEL_34:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = sub_2629A9B60(0, *(v141 + 2) + 1, 1, v141);
      }

      v66 = *(v141 + 2);
      v65 = *(v141 + 3);
      if (v66 >= v65 >> 1)
      {
        v141 = sub_2629A9B60((v65 > 1), v66 + 1, 1, v141);
      }

      v67 = v141;
      *(v141 + 2) = v66 + 1;
      v67[v66 + 32] = v64;
      goto LABEL_27;
    }
  }

  v68 = 0;
  v69 = *(v140 + v139[15]);
  v70 = *(v69 + 16);
  v127 = MEMORY[0x277D84F90];
LABEL_40:
  v71 = v69 + 40 + 16 * v68;
  while (v70 != v68)
  {
    if (v68 >= *(v69 + 16))
    {
      goto LABEL_95;
    }

    ++v68;
    v72 = v71 + 16;

    v73 = sub_262A2A788();

    v71 = v72;
    if (v73 < 0xA)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_2629A9A60(0, *(v127 + 2) + 1, 1, v127);
      }

      v75 = *(v127 + 2);
      v74 = *(v127 + 3);
      if (v75 >= v74 >> 1)
      {
        v127 = sub_2629A9A60((v74 > 1), v75 + 1, 1, v127);
      }

      v76 = v127;
      *(v127 + 2) = v75 + 1;
      v76[v75 + 32] = v73;
      goto LABEL_40;
    }
  }

  v77 = *(v140 + v139[16]);
  v78 = *(v77 + 16);
  if (v78)
  {
    v79 = 0;
    v80 = (v77 + 40);
    v123 = v78 - 1;
    v81 = MEMORY[0x277D84F90];
    v124 = (v77 + 40);
LABEL_51:
    v82 = &v80[16 * v79];
    v83 = v79;
    while (v83 < *(v77 + 16))
    {
      v79 = v83 + 1;
      v84 = *(v82 - 1);
      v85 = *v82;

      v86._countAndFlagsBits = v84;
      v86._object = v85;
      SIDWorkoutTrainerIdentifier.init(rawValue:)(v86);
      v87 = v143;
      if (v143 != 31)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_2629A9A10(0, *(v81 + 2) + 1, 1, v81);
        }

        v89 = *(v81 + 2);
        v88 = *(v81 + 3);
        if (v89 >= v88 >> 1)
        {
          v81 = sub_2629A9A10((v88 > 1), v89 + 1, 1, v81);
        }

        v80 = v124;
        *(v81 + 2) = v89 + 1;
        v81[v89 + 32] = v87;
        if (v123 != v83)
        {
          goto LABEL_51;
        }

        goto LABEL_63;
      }

      v82 += 2;
      ++v83;
      if (v78 == v79)
      {
        goto LABEL_63;
      }
    }

LABEL_98:
    __break(1u);
    return;
  }

  v81 = MEMORY[0x277D84F90];
LABEL_63:
  v124 = v81;
  v90 = *(v137 + 2);
  v130(v135, &v137[v131], v138);
  v91 = *(v140 + 16);
  v92 = *(v91 + 16);

  v93 = 0;
  v137 = MEMORY[0x277D84F90];
LABEL_64:
  v94 = v91 + 40 + 16 * v93;
  while (v92 != v93)
  {
    if (v93 >= *(v91 + 16))
    {
      goto LABEL_96;
    }

    ++v93;
    v95 = v94 + 16;

    v96 = sub_262A2A788();

    v94 = v95;
    if (v96 < 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v137 = sub_2629A9A38(0, *(v137 + 2) + 1, 1, v137);
      }

      v98 = *(v137 + 2);
      v97 = *(v137 + 3);
      if (v98 >= v97 >> 1)
      {
        v137 = sub_2629A9A38((v97 > 1), v98 + 1, 1, v137);
      }

      v99 = v137;
      *(v137 + 2) = v98 + 1;
      v99[v98 + 32] = v96;
      goto LABEL_64;
    }
  }

  v100 = 0;
  LODWORD(v131) = *(v140 + 24);
  v101 = *(v140 + 40);
  v102 = *(v101 + 16);
  v103 = MEMORY[0x277D84F90];
LABEL_74:
  v104 = v101 + 40 + 16 * v100;
  while (v102 != v100)
  {
    if (v100 >= *(v101 + 16))
    {
      goto LABEL_97;
    }

    ++v100;
    v105 = v104 + 16;

    v106 = sub_262A2A788();

    v104 = v105;
    if (v106 < 8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_2629A9A4C(0, *(v103 + 2) + 1, 1, v103);
      }

      v108 = *(v103 + 2);
      v107 = *(v103 + 3);
      if (v108 >= v107 >> 1)
      {
        v103 = sub_2629A9A4C((v107 > 1), v108 + 1, 1, v103);
      }

      *(v103 + 2) = v108 + 1;
      v103[v108 + 32] = v106;
      goto LABEL_74;
    }
  }

  v109 = v139;
  v110 = v140;
  v147 = DateComponents.convertToMillisecondsSince1970()();
  if (v147.is_nil)
  {
    value = 0;
  }

  else
  {
    value = v147.value;
  }

  if (*(v128 + 2))
  {
    v112 = v128[32];
  }

  else
  {
    v112 = 9;
  }

  v113 = v142;
  v114 = *(v110 + v109[11]);
  if (*(v124 + 2))
  {
    v115 = v124[32];
  }

  else
  {
    v115 = 31;
  }

  v116 = v124;
  v117 = *(v110 + v139[17]);

  sub_262A02FD8(v110, type metadata accessor for SIDCatalogWorkoutReference);
  v118 = v134;
  *v113 = v132;
  *(v113 + 1) = v118;
  *(v113 + 2) = v90;
  v119 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  (*(v136 + 32))(&v113[v119[6]], v135, v138);
  v113[v119[7]] = v145;
  v120 = &v113[v119[8]];
  v121 = v133;
  *v120 = v129;
  v120[1] = v121;
  *&v113[v119[9]] = v137;
  v113[v119[10]] = v131;
  *&v113[v119[11]] = v103;
  *&v113[v119[12]] = value;
  *&v113[v119[13]] = v36;
  v113[v119[14]] = v125;
  v113[v119[15]] = v114;
  v113[v119[16]] = v126;
  *&v113[v119[17]] = v128;
  v113[v119[18]] = v112;
  *&v113[v119[19]] = v141;
  *&v113[v119[20]] = v127;
  *&v113[v119[21]] = v116;
  v113[v119[22]] = v115;
  *&v113[v119[23]] = v117;
  (*(*(v119 - 1) + 56))(v113, 0, 1, v119);
}

void sub_262A00F00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = a1 + 64;
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    if (!v5)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 56) + ((v7 << 9) | (8 * v9)));
        if (v10 >= 2)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2629CD840(0, *(v8 + 16) + 1, 1);
      }

      v12 = *(v8 + 16);
      v13 = *(v8 + 24);
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v15 = *(v8 + 16);
        v16 = v12 + 1;
        sub_2629CD840((v13 > 1), v12 + 1, 1);
        v12 = v15;
        v14 = v16;
      }

      *(v8 + 16) = v14;
      *(v8 + 8 * v12 + 32) = v10;
    }

    while (v5);
LABEL_7:
    while (1)
    {
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v11 >= v6)
      {

        return;
      }

      v5 = *(v2 + 8 * v11);
      ++v7;
      if (v5)
      {
        v7 = v11;
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

uint64_t sub_262A0107C(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for SIDUserOnboardingData(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0;
  }

  v12 = a2 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v13 = type metadata accessor for SIDPersonalizedPlanDataProvider(0);
  sub_2629ADF8C(v12 + *(v13 + 40), v6, &qword_27FF3C948, &unk_262A30B40);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_262A02DC8(v6);
  }

  else
  {
    sub_262A02F70(v6, v10, type metadata accessor for SIDUserOnboardingData);
    v14 = *(*&v10[*(v7 + 20)] + 16);
    sub_262A02FD8(v10, type metadata accessor for SIDUserOnboardingData);
    if (v14)
    {
      return 1;
    }
  }

  return 3;
}

uint64_t sub_262A01244(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for SIDCatalogWorkoutReference(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBF0, &qword_262A30FD0);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v57 = v3;
  v58 = v8;
  v16 = a2;
  v17 = *(v12 + 48);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v62 = a1;
  v56 = v18;
  sub_2629ADF8C(a1 + v18, &v55 - v14, &qword_27FF3CBF0, &qword_262A30FD0);
  v19 = v15[1];
  v65 = *v15;
  v20 = v65;
  v66 = v19;
  v59 = v17;
  sub_262A02F70(v15 + v17, v10, type metadata accessor for SIDCatalogWorkoutReference);
  v21 = *a3;
  v23 = sub_2629CB0BC(v20, v19);
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
      sub_2629CDF3C();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_2629CFB9C(v26, v16 & 1);
  v28 = sub_2629CB0BC(v20, v19);
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
      sub_262A02F70(v10, v34 + v58 * v23, type metadata accessor for SIDCatalogWorkoutReference);
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
            sub_2629ADF8C(v39, v15, &qword_27FF3CBF0, &qword_262A30FD0);
            v41 = v15[1];
            v65 = *v15;
            v42 = v65;
            v66 = v41;
            sub_262A02F70(v15 + v59, v10, type metadata accessor for SIDCatalogWorkoutReference);
            v43 = *a3;
            v44 = sub_2629CB0BC(v42, v41);
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
              sub_2629CFB9C(v48, 1);
              v44 = sub_2629CB0BC(v42, v41);
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
            sub_262A02F70(v10, v51[7] + v58 * v44, type metadata accessor for SIDCatalogWorkoutReference);
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
            }
          }

          goto LABEL_26;
        }
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
    MEMORY[0x26672F6B0](v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_262A02FD8(v10, type metadata accessor for SIDCatalogWorkoutReference);

      return MEMORY[0x26672F6A0](v67);
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_262A2A938();
  __break(1u);
LABEL_28:
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD00000000000001BLL, 0x8000000262A32480);
  sub_262A2A738();
  MEMORY[0x26672ECF0](39, 0xE100000000000000);
  result = sub_262A2A748();
  __break(1u);
  return result;
}

uint64_t sub_262A017C0(uint64_t *a1)
{
  v2 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_262A1F2B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_262A01868(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_262A01868(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_262A2A858();
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
        type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
        v6 = sub_262A2A548();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_262A01BF8(v8, v9, a1, v4);
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
    return sub_262A01994(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_262A01994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v9 = MEMORY[0x28223BE20](v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_262A02E7C(v23, v17, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      sub_262A02E7C(v20, v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v24 = sub_262A29F98();
      sub_262A02FD8(v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      result = sub_262A02FD8(v17, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_262A02F70(v23, v35, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_262A02F70(v25, v20, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_262A01BF8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v112 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_262A1F22C(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_262A0255C(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_262A1F22C(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_262A1F1A0(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_262A02E7C(v110 + v24 * v23, v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v116;
      sub_262A02E7C(v26, v116, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      LODWORD(v111) = sub_262A29F98();
      sub_262A02FD8(v28, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      result = sub_262A02FD8(v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v102 = v27;
      v29 = v27 + 2;
      v113 = v24;
      v30 = v110 + v24 * (v27 + 2);
      while (v19 != v29)
      {
        sub_262A02E7C(v30, v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v31 = v116;
        sub_262A02E7C(v5, v116, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v32 = sub_262A29F98() & 1;
        sub_262A02FD8(v31, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        result = sub_262A02FD8(v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        ++v29;
        v30 += v113;
        v5 += v113;
        if ((v111 & 1) != v32)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v33 = v113 * (v19 - 1);
          v34 = v19;
          v35 = v19 * v113;
          v111 = v19;
          v36 = v102;
          v37 = v102;
          v38 = v102 * v113;
          do
          {
            if (v36 != --v34)
            {
              v39 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v39 + v38;
              sub_262A02F70(v39 + v38, v107, type metadata accessor for PreprocessedUserHistoryWithMetadata);
              if (v38 < v33 || v5 >= v39 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_262A02F70(v107, v39 + v33, type metadata accessor for PreprocessedUserHistoryWithMetadata);
            }

            ++v36;
            v33 -= v113;
            v35 -= v113;
            v38 += v113;
          }

          while (v36 < v34);
          v6 = v101;
          a4 = v103;
          v22 = v37;
          v19 = v111;
        }
      }
    }

    v40 = v114[1];
    if (v19 < v40)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v40)
        {
          v41 = v114[1];
        }

        else
        {
          v41 = v22 + a4;
        }

        if (v41 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v41)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_2629A8DAC(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v42 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_2629A8DAC((v42 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * a4];
    *(v43 + 4) = v22;
    *(v43 + 5) = v20;
    v44 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_112;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_115;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_119;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_114;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_117;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v83 = v21;
        v84 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v45 + 40];
        sub_262A0255C(*v114 + *(v112 + 72) * v84, *v114 + *(v112 + 72) * *&v21[16 * v45 + 32], *v114 + *(v112 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_262A1F22C(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_109;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v118 = v83;
        result = sub_262A1F1A0(v45);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_110;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_111;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_113;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_116;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v86 = v19;
  v87 = v22;
  v88 = *v114;
  v89 = *(v112 + 72);
  v90 = *v114 + v89 * (v19 - 1);
  v91 = -v89;
  v102 = v87;
  v92 = v87 - v19;
  v111 = v86;
  v105 = v89;
  v106 = v41;
  v5 = v88 + v86 * v89;
LABEL_85:
  v109 = v5;
  v110 = v92;
  v113 = v90;
  while (1)
  {
    sub_262A02E7C(v5, v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v93 = v116;
    sub_262A02E7C(v90, v116, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    a4 = sub_262A29F98();
    sub_262A02FD8(v93, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    result = sub_262A02FD8(v18, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v90 = v113 + v105;
      v92 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v88)
    {
      break;
    }

    a4 = type metadata accessor for PreprocessedUserHistoryWithMetadata;
    v94 = v115;
    sub_262A02F70(v5, v115, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    swift_arrayInitWithTakeFrontToBack();
    sub_262A02F70(v94, v90, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v90 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_262A0255C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v8 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_262A02E7C(v30, v43, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v32 = v44;
          sub_262A02E7C(v27, v44, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          v33 = sub_262A29F98();
          sub_262A02FD8(v32, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          sub_262A02FD8(v31, type metadata accessor for PreprocessedUserHistoryWithMetadata);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_262A02E7C(a2, v43, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v21 = v44;
        sub_262A02E7C(a4, v44, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        v22 = sub_262A29F98();
        sub_262A02FD8(v21, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        sub_262A02FD8(v20, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_262A1A524(&v48, &v47, &v46);
  return 1;
}

void *sub_262A02A8C(uint64_t a1)
{
  v2 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = MEMORY[0x277D84F98];
  v44 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v39 = *(v4 + 80);
  v10 = *(v4 + 72);
  v42 = (v39 + 32) & ~v39;
  v11 = a1 + v42;
  v38 = xmmword_262A2B290;
  v43 = v5;
  v40 = v2;
  v41 = v10;
  while (1)
  {
    sub_262A02E7C(v11, v7, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v15 = v7[*(v2 + 64)];
    v18 = sub_2629CB1E4(v15, v16);
    v19 = v8[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_2629CFED8(v21, 1);
      v8 = v44;
      v24 = sub_2629CB1E4(v15, v23);
      if ((v22 & 1) != (v25 & 1))
      {
        goto LABEL_19;
      }

      v18 = v24;
    }

    if (v22)
    {
      v26 = v8[7];
      sub_262A02F70(v7, v43, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v27 = *(v26 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v18) = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_2629A8FBC(0, v27[2] + 1, 1, v27);
        *(v26 + 8 * v18) = v27;
      }

      v30 = v27[2];
      v29 = v27[3];
      if (v30 >= v29 >> 1)
      {
        v27 = sub_2629A8FBC((v29 > 1), v30 + 1, 1, v27);
        *(v26 + 8 * v18) = v27;
      }

      v2 = v40;
      v12 = v41;
      v27[2] = v30 + 1;
      v13 = v27 + v42 + v30 * v12;
      v14 = v12;
      sub_262A02F70(v43, v13, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C040, &qword_262A30F70);
      v31 = v42;
      v32 = swift_allocObject();
      *(v32 + 16) = v38;
      sub_262A02F70(v7, v32 + v31, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v8[(v18 >> 6) + 8] |= 1 << v18;
      *(v8[6] + v18) = v15;
      *(v8[7] + 8 * v18) = v32;
      v33 = v8[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v8[2] = v35;
      v14 = v41;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_262A02DC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RequestPreProcessor(uint64_t a1)
{
  result = qword_27FF3CBF8;
  if (!qword_27FF3CBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A02E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A02EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CBF0, &qword_262A30FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262A02F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_262A02FD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_262A0304C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CatalogMetadataService(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PersistentLogger(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for PlanGenerationContext(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_262A031D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CatalogMetadataService(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for PersistentLogger(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for PlanGenerationContext(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_262A03348(uint64_t a1)
{
  type metadata accessor for CatalogMetadataService(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PersistentLogger(319);
    if (v2 <= 0x3F)
    {
      sub_2629B1BAC(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PlanGenerationContext(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_262A03410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PersistentLogger(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PlanGenerationContext(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_262A03548(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PersistentLogger(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PlanGenerationContext(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ResultPostProcessor(uint64_t a1)
{
  result = qword_27FF3CC08;
  if (!qword_27FF3CC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_262A036B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v33 = MEMORY[0x277D84F90];
    v32 = *(a1 + 16);
    sub_2629CD800(0, v1, 0);
    v2 = v33;
    v4 = a1 + 56;
    v5 = sub_262A2A648();
    v6 = v32;
    v7 = 0;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      v10 = 1 << v5;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_37;
      }

      v11 = *(a1 + 36);
      ++v7;
      v12 = v5 & 0x3F;
      v13 = 0xEA00000000003638;
      v14 = 0x3932343038373431;
      switch(*(*(a1 + 48) + v5))
      {
        case 1:
          v13 = 0xEA00000000003937;
          goto LABEL_22;
        case 2:
          v13 = 0xEA00000000003438;
          goto LABEL_22;
        case 3:
          v13 = 0xEA00000000003238;
          goto LABEL_22;
        case 4:
          v13 = 0xEA00000000003633;
          v14 = 0x3532363037343631;
          break;
        case 5:
          v13 = 0xEA00000000003839;
          goto LABEL_18;
        case 6:
          v13 = 0xEA00000000003738;
          goto LABEL_22;
        case 7:
          v13 = 0xEA00000000003739;
          goto LABEL_18;
        case 8:
          v14 = 0x3932343038373431;
          v13 = 0xEA00000000003038;
          break;
        case 9:
          v13 = 0xEA00000000003639;
LABEL_18:
          v14 = 0x3332373831363531;
          break;
        case 0xA:
          v13 = 0xEA00000000003338;
          goto LABEL_22;
        case 0xB:
          v13 = 0xEA00000000003138;
          goto LABEL_22;
        case 0xC:
          v13 = 0xEA00000000003635;
          v14 = 0x3032383934393431;
          break;
        case 0xD:
          v13 = 0xEA00000000003538;
LABEL_22:
          v14 = 0x3932343038373431;
          break;
        default:
          break;
      }

      v16 = *(v33 + 16);
      v15 = *(v33 + 24);
      if (v16 >= v15 >> 1)
      {
        v30 = *(a1 + 36);
        v31 = v5;
        v28 = v5 & 0x3F;
        v29 = v7;
        sub_2629CD800((v15 > 1), v16 + 1, 1);
        v12 = v28;
        v7 = v29;
        v6 = v32;
        v11 = v30;
        v5 = v31;
      }

      *(v33 + 16) = v16 + 1;
      v17 = v33 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_38;
      }

      v18 = *(v4 + 8 * v9);
      if ((v18 & v10) == 0)
      {
        goto LABEL_39;
      }

      if (v11 != *(a1 + 36))
      {
        goto LABEL_40;
      }

      v19 = v18 & (-2 << v12);
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
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
            v25 = v7;
            sub_2629D40E8(v5, v11, 0);
            v7 = v25;
            v6 = v32;
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        v26 = v7;
        sub_2629D40E8(v5, v11, 0);
        v7 = v26;
        v6 = v32;
      }

LABEL_4:
      v5 = v8;
      if (v7 == v6)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    JUMPOUT(0x262A039FCLL);
  }

  return v2;
}

uint64_t sub_262A03A34(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_2629CD960(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_262A2A648();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_24;
    }

    v11 = *(a1 + 36);
    if (*(*(a1 + 48) + 32 * result) >= 7uLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(*(a1 + 48) + 32 * result);
    }

    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_2629CD960((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v11 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v12;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_25;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_26;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_27;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_2629D40E8(result, v11, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_2629D40E8(result, v11, 0);
      v6 = v24;
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
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_262A03C5C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_262A15BAC(a3 + v15 + v16 * v13, v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v17 = a1(v12);
      if (v3)
      {
        sub_262A15C14(v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_262A15C74(v12, v24, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8E0(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2629CD8E0((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_262A15C74(v24, v14 + v15 + v20 * v16, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_262A15C14(v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

void sub_262A03EE8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_2629A900C(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v15 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

char *sub_262A03FFC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2629A9244(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_262A040F0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2629A9140(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_262A041DC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (v16 < result)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t (*sub_262A042E8(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_262A12810(v4, a2);
  return sub_262A15D74;
}

uint64_t (*sub_262A04360(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = sub_262A128B4(v10, a2, a3, a4, a5);
  return sub_262A15D74;
}

uint64_t (*sub_262A04400(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_262A12A20(v6, a2, a3);
  return sub_262A15D74;
}

uint64_t (*sub_262A04488(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_262A12978(v4, a2);
  return sub_262A04500;
}

void sub_262A04504(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

int64_t sub_262A04550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_262A04604(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(a1 + 56);
    result = *(v12 + 8 * v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + ((v14 << 9) | (8 * v15)));
      if (result <= v16)
      {
        result = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        return result;
      }

      v7 = *(v1 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(a1 + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_262A04710(unsigned __int8 *a1, uint64_t a2)
{
  v3 = sub_262A29F48();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_262A29F58();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - v8;
  v9 = sub_262A2A3D8();
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v51 = sub_262A2A048();
  v49 = *(v51 - 8);
  v17 = MEMORY[0x28223BE20](v51);
  v48 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v60 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  v23 = a2 + *(type metadata accessor for FitnessPlanUser(0) + 24);
  v25 = *(v23 + 16);
  v24 = *(v23 + 24);
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
  }

  v59 = v22;
  sub_262A2A028();
  v47 = v16;
  sub_262A2A3C8();
  v27 = v62;
  v45 = *(v61 + 16);
  v46 = v14;
  v28 = v14;
  v45(v14, v16, v62);
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = [objc_opt_self() bundleForClass_];
  v31 = v49;
  v32 = *(v49 + 16);
  v33 = v60;
  v34 = v51;
  v32(v60, v59, v51);
  v45(v50, v28, v27);
  v32(v48, v33, v34);
  v35 = [v30 bundleURL];
  v36 = v54;
  sub_262A29F78();

  (*(v55 + 104))(v36, *MEMORY[0x277CC9118], v56);
  v37 = v52;
  sub_262A29F68();
  v39 = v57;
  v38 = v58;
  (*(v57 + 16))(v53, v37, v58);
  v40 = sub_262A2A408();

  (*(v39 + 8))(v37, v38);
  v41 = *(v31 + 8);
  v41(v60, v34);
  v42 = v62;
  v43 = *(v61 + 8);
  v43(v46, v62);
  v43(v47, v42);
  v41(v59, v34);
  return v40;
}

void sub_262A04CC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_2629AC204(MEMORY[0x277D84F90]);
  v11 = sub_2629ACF00(v9);
  type metadata accessor for StretchPlanDurationFactory();
  v93 = type metadata accessor for ResultPostProcessor(0);
  v96 = a2;
  sub_262A2746C(a2, v118);
  v95 = a1;
  v12 = *(a1 + 72);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;

  v98 = 0;
  v18 = 0;
  v100 = v17;
  v99 = v12 + 64;
  v103 = v12;
  v102 = v6;
  while (1)
  {
    v19 = v18;
LABEL_6:
    if (!v16)
    {
      break;
    }

    v110 = v10;
    v108 = v11;
    v18 = v19;
LABEL_12:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = v21 | (v18 << 6);
    v23 = (*(v12 + 48) + 32 * v22);
    v105 = *v23;
    v106 = v23[1];
    v107 = v23[2];
    v104 = v23[3];
    v24 = *(*(v12 + 56) + 8 * v22);

    sub_262A2A6F8();

    *&v115 = 0xD000000000000028;
    *(&v115 + 1) = 0x8000000262A33A10;
    v25 = MEMORY[0x26672EDD0](v24, &type metadata for SIDWorkoutPlanScheduledItem);
    MEMORY[0x26672ECF0](v25);

    sub_2629EA8C8(0xD000000000000028, 0x8000000262A33A10);

    v10 = v6;
    v27 = v119;
    v26 = v120;
    __swift_project_boxed_opaque_existential_1(v118, v119);
    v28 = v121;
    v29 = (*(v26 + 8))(v24, a3, v27, v26);
    v121 = v28;
    if (v28)
    {
      sub_262A2A6F8();

      *(&v115 + 1) = 0x8000000262A33A40;
      v30 = MEMORY[0x26672EDD0](v24, &type metadata for SIDWorkoutPlanScheduledItem);
      MEMORY[0x26672ECF0](v30);

      sub_2629EA8C8(0xD000000000000029, 0x8000000262A33A40);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v115 = v110;
      v10 = v105;
      sub_262A11A1C(v24, v105, v106, v107, v104, isUniquelyReferenced_nonNull_native);
      v32 = 0;
      v33 = *(v24 + 16) + 1;
      v34 = 32;
      do
      {
        if (!--v33)
        {

          v20 = swift_isUniquelyReferenced_nonNull_native();
          *&v115 = v108;
          sub_262A11CD0(v32, v105, v106, v107, v104, v20);
          MEMORY[0x26672F6A0](v121);
          v121 = 0;
          v11 = v108;
          v19 = v18;
          v6 = v102;
          v12 = v103;
          v17 = v100;
          v13 = v99;
          v10 = v110;
          goto LABEL_6;
        }

        v35 = *(v24 + v34);
        v34 += 32;
        v36 = __OFADD__(v32, v35);
        v32 += v35;
      }

      while (!v36);
      __break(1u);
LABEL_54:
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
      os_unfair_lock_unlock(v10 + 4);
      __break(1u);
      return;
    }

    v37 = v29;

    sub_262A2A6F8();

    *(&v115 + 1) = 0x8000000262A33A70;
    v38 = MEMORY[0x26672EDD0](v37, &type metadata for SIDWorkoutPlanScheduledItem);
    MEMORY[0x26672ECF0](v38);

    sub_2629EA8C8(0xD000000000000026, 0x8000000262A33A70);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v115 = v110;
    sub_262A11A1C(v37, v105, v106, v107, v104, v39);
    v40 = 0;
    v41 = *(v37 + 16) + 1;
    v42 = 32;
    v6 = v10;
    while (--v41)
    {
      v43 = *(v37 + v42);
      v42 += 32;
      v36 = __OFADD__(v40, v43);
      v40 += v43;
      if (v36)
      {
        goto LABEL_55;
      }
    }

    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v115 = v108;
    sub_262A11CD0(v40, v105, v106, v107, v104, v44);
    v11 = v108;
    v98 = 1;
    v10 = v110;
    v12 = v103;
    v17 = v100;
    v13 = v99;
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_54;
    }

    if (v18 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      v110 = v10;
      v108 = v11;
      goto LABEL_12;
    }
  }

  if ((v98 & 1) == 0)
  {
    sub_2629EA8C8(0xD000000000000043, 0x8000000262A33AA0);
    v45 = *(v12 + 16);
    if (v45)
    {
      v111 = v10;
      v46 = sub_2629A9D7C(v45, 0);
      v47 = sub_262A13B90(&v115, v46 + 2, v45, v12);
      v10 = *(&v115 + 1);
      v48 = v115;

      sub_2629ADE08(v48);
      if (v47 != v45)
      {
        goto LABEL_58;
      }

      v6 = v102;
      v10 = v111;
    }

    else
    {
      v46 = MEMORY[0x277D84F90];
    }

    v49 = sub_262A058B8(v46);

    v50 = sub_262A05998(v49, a4);

    if (v50 == 7)
    {

      sub_2629EA8C8(0xD000000000000048, 0x8000000262A33AF0);
      v51 = *(&v6->_os_unfair_lock_opaque + *(v93 + 20));
      sub_2629B3A24();
      v52 = swift_allocError();
      *v53 = 0;
      LOBYTE(v115) = 8;
      v10 = *(v51 + 16);
      v91 = MEMORY[0x28223BE20](v52);
      MEMORY[0x28223BE20](v91);

      os_unfair_lock_lock(v10 + 4);
      v54 = v121;
      sub_2629B3C0C(v55);
      if (v54)
      {
        goto LABEL_59;
      }

      os_unfair_lock_unlock(v10 + 4);

      MEMORY[0x26672F6A0](v52);
      v56 = 0;
LABEL_53:
      swift_allocError();
      *v90 = v56;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v118);

      return;
    }

    sub_262A05CFC(v50, v103, &v115);
    v57 = v117;
    if (!v117)
    {

      sub_2629EA8C8(0xD00000000000002ALL, 0x8000000262A33B40);
      v85 = *(&v6->_os_unfair_lock_opaque + *(v93 + 20));
      sub_2629B3A24();
      v86 = swift_allocError();
      *v87 = 12;
      LOBYTE(v115) = 8;
      v10 = *(v85 + 16);
      v92 = MEMORY[0x28223BE20](v86);
      MEMORY[0x28223BE20](v92);

      os_unfair_lock_lock(v10 + 4);
      v88 = v121;
      sub_2629B3C0C(v89);
      if (v88)
      {
        goto LABEL_59;
      }

      os_unfair_lock_unlock(v10 + 4);

      MEMORY[0x26672F6A0](v86);
      v56 = 12;
      goto LABEL_53;
    }

    v109 = v116;
    v112 = v115;

    v58 = swift_isUniquelyReferenced_nonNull_native();
    *&v115 = v10;
    sub_262A11A1C(v57, v50, 0, 0, 0, v58);
    v59 = 0;
    v60 = v115;
    v61 = *(v57 + 16) + 1;
    v62 = 32;
    while (--v61)
    {
      v63 = *(v57 + v62);
      v62 += 32;
      v36 = __OFADD__(v59, v63);
      v59 += v63;
      if (v36)
      {
        __break(1u);
        break;
      }
    }

    v64 = swift_isUniquelyReferenced_nonNull_native();
    *&v115 = v11;
    sub_262A11CD0(v59, v50, 0, 0, 0, v64);
    *&v115 = 0;
    *(&v115 + 1) = 0xE000000000000000;
    sub_262A2A6F8();
    v114 = v115;
    MEMORY[0x26672ECF0](0x656E206465646441, 0xEE00207961642077);
    LOBYTE(v115) = v50;
    sub_262A2A738();
    MEMORY[0x26672ECF0](0xD000000000000022, 0x8000000262A33B70);
    v116 = v109;
    v115 = v112;
    sub_262A2A738();
    sub_2629EA8C8(v114, *(&v114 + 1));

    v10 = v60;
  }

  v66 = sub_262A041DC(v65);
  v68 = v67;

  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v66;
  }

  v71 = sub_262A04604(v70);
  v73 = v72;

  if (v73)
  {
    v74 = 0;
  }

  else
  {
    v74 = v71;
  }

  if (v74 < v69)
  {
    goto LABEL_56;
  }

  v75 = *&v10[4]._os_unfair_lock_opaque;
  v113 = v10;
  if (v75)
  {
    v76 = sub_2629A9D7C(v75, 0);
    v77 = sub_262A13B90(&v115, v76 + 2, v75, v10);
    v10 = *(&v115 + 1);
    v78 = v115;

    sub_2629ADE08(v78);
    if (v77 != v75)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
  }

  v79 = sub_262A058B8(v76);

  type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  sub_262A2A008();
  v80 = *(v95 + 32);
  v81 = *(v95 + 48);
  LOBYTE(v115) = 2;

  v82 = sub_262A04710(&v115, v96);
  v84 = v83;
  sub_262A2A008();
  *(a5 + 16) = v69;
  *(a5 + 24) = v74;
  *(a5 + 32) = v80;
  *(a5 + 40) = v74;
  *(a5 + 48) = v81;
  *(a5 + 56) = v79;
  *a5 = v82;
  *(a5 + 8) = v84;
  *(a5 + 64) = 2;
  *(a5 + 72) = v113;
  __swift_destroy_boxed_opaque_existential_1Tm(v118);
}

uint64_t sub_262A058B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2;
      v2 += 4;
      v4 = v5;
      if (v5 <= 6)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2629A9350(0, *(v3 + 2) + 1, 1, v3);
        }

        v7 = *(v3 + 2);
        v6 = *(v3 + 3);
        if (v7 >= v6 >> 1)
        {
          v3 = sub_2629A9350((v6 > 1), v7 + 1, 1, v3);
        }

        *(v3 + 2) = v7 + 1;
        v3[v7 + 32] = v4;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v8 = sub_262A272BC(v3);

  return v8;
}

uint64_t sub_262A05998(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = a1 + 56;
    while (1)
    {
      v7 = *(v5 + v4);
      if (!*(a1 + 16))
      {
        break;
      }

      sub_262A2A998();
      MEMORY[0x26672F240](v7);
      v8 = sub_262A2A9D8();
      v9 = -1 << *(a1 + 32);
      v10 = v8 & ~v9;
      if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        break;
      }

      ++v4;
      v11 = ~v9;
      while (*(*(a1 + 48) + v10) != v7)
      {
        v10 = (v10 + 1) & v11;
        if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          return v7;
        }
      }

      if (v4 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
    v13 = a1 + 56;
    do
    {
      v7 = byte_287533E38[v12 + 32];
      if (*(a1 + 16) && (sub_262A2A998(), MEMORY[0x26672F240](v7), v14 = sub_262A2A9D8(), v15 = -1 << *(a1 + 32), v16 = v14 & ~v15, ((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (*(*(a1 + 48) + v16) != v7)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v13 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
LABEL_17:
        if (!*(a1 + 16))
        {
          return v7;
        }

        sub_262A2A998();
        MEMORY[0x26672F240]((v7 - 7 * ((9363 * v7 + 56178) >> 16) + 6));
        v18 = sub_262A2A9D8();
        v19 = -1 << *(a1 + 32);
        v20 = v18 & ~v19;
        if ((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (*(*(a1 + 48) + v20) != (v7 - 7 * ((9363 * v7 + 56178) >> 16) + 6))
          {
            v20 = (v20 + 1) & v21;
            if (((*(v13 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          if (!*(a1 + 16))
          {
            return v7;
          }

          v22 = (v7 - 7 * ((9363 * v7 + 9363) >> 16) + 1);
          sub_262A2A998();
          MEMORY[0x26672F240](v22);
          v23 = sub_262A2A9D8();
          v24 = -1 << *(a1 + 32);
          v25 = v23 & ~v24;
          if (((*(v13 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            return v7;
          }

          v26 = ~v24;
          while (v22 != *(*(a1 + 48) + v25))
          {
            v25 = (v25 + 1) & v26;
            if (((*(v13 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              return v7;
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != 7);
    v28 = 0;
    do
    {
      v7 = byte_287533E38[v28 + 32];
      if (!*(a1 + 16))
      {
        break;
      }

      sub_262A2A998();
      MEMORY[0x26672F240](v7);
      v29 = sub_262A2A9D8();
      v30 = -1 << *(a1 + 32);
      v31 = v29 & ~v30;
      if (((*(v13 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      ++v28;
      v32 = ~v30;
      while (*(*(a1 + 48) + v31) != v7)
      {
        v31 = (v31 + 1) & v32;
        if (((*(v13 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          return v7;
        }
      }

      v7 = 7;
    }

    while (v28 != 7);
  }

  return v7;
}

void sub_262A05CFC(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    v5 = a2 + 64;
    v6 = 1;
    v7 = 1 << *(a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a2 + 64);
    v11 = (v7 + 63) >> 6;
    v27 = a1;

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (v10)
    {
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v14 << 6);
      v18 = (*(a2 + 48) + 32 * v17);
      v19 = *v18;
      if (*v18 < 7)
      {
        v20 = !v18[1] && v18[2] == 0;
        if (v20 && v18[3] == 0)
        {
          v22 = v19 - v27;
          if (v19 - v27 < 0)
          {
            v22 = v27 - v19;
          }

          if (v22 <= 3)
          {
            v23 = v22;
          }

          else
          {
            v23 = 7 - v22;
          }

          if (v8 < v23)
          {
            v26 = *(*(a2 + 56) + 8 * v17);

            v6 = 0;
            v8 = v23;
            v12 = v26;
            v13 = v19;
          }
        }
      }
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v15 >= v11)
      {
        break;
      }

      v10 = *(v5 + 8 * v15);
      ++v14;
      if (v10)
      {
        v14 = v15;
        goto LABEL_11;
      }
    }

    v24 = v13;
    v25 = v12;

    if (v6)
    {

      goto LABEL_31;
    }

    if (v25)
    {
      *a3 = v24;
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      a3[4] = v25;
      return;
    }
  }

LABEL_31:
  a3[4] = 0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
}

uint64_t sub_262A05E9C(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_262A2A998();
    SIDWorkoutModality.rawValue.getter(a1);
    sub_262A2A448();

    v4 = sub_262A2A9D8();
    v5 = -1 << *(a2 + 32);
    v6 = v4 & ~v5;
    if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = 0xEA00000000003638;
        v9 = 0x3932343038373431;
        switch(*(*(a2 + 48) + v6))
        {
          case 1:
            v8 = 0xEA00000000003937;
            goto LABEL_18;
          case 2:
            v8 = 0xEA00000000003438;
            goto LABEL_18;
          case 3:
            v8 = 0xEA00000000003238;
            goto LABEL_18;
          case 4:
            v8 = 0xEA00000000003633;
            v9 = 0x3532363037343631;
            break;
          case 5:
            v8 = 0xEA00000000003839;
            goto LABEL_14;
          case 6:
            v8 = 0xEA00000000003738;
            goto LABEL_18;
          case 7:
            v8 = 0xEA00000000003739;
            goto LABEL_14;
          case 8:
            v9 = 0x3932343038373431;
            v8 = 0xEA00000000003038;
            break;
          case 9:
            v8 = 0xEA00000000003639;
LABEL_14:
            v9 = 0x3332373831363531;
            break;
          case 0xA:
            v8 = 0xEA00000000003338;
            goto LABEL_18;
          case 0xB:
            v8 = 0xEA00000000003138;
            goto LABEL_18;
          case 0xC:
            v8 = 0xEA00000000003635;
            v9 = 0x3032383934393431;
            break;
          case 0xD:
            v8 = 0xEA00000000003538;
LABEL_18:
            v9 = 0x3932343038373431;
            break;
          default:
            break;
        }

        v10 = 0xEA00000000003638;
        switch(a1)
        {
          case 1:
            v10 = 0xEA00000000003937;
            goto LABEL_36;
          case 2:
            v10 = 0xEA00000000003438;
            goto LABEL_36;
          case 3:
            v10 = 0xEA00000000003238;
            goto LABEL_36;
          case 4:
            v10 = 0xEA00000000003633;
            if (v9 != 0x3532363037343631)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 5:
            v10 = 0xEA00000000003839;
            goto LABEL_31;
          case 6:
            v10 = 0xEA00000000003738;
            goto LABEL_36;
          case 7:
            v10 = 0xEA00000000003739;
            goto LABEL_31;
          case 8:
            v10 = 0xEA00000000003038;
            if (v9 != 0x3932343038373431)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 9:
            v10 = 0xEA00000000003639;
LABEL_31:
            if (v9 != 0x3332373831363531)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 10:
            v10 = 0xEA00000000003338;
            goto LABEL_36;
          case 11:
            v10 = 0xEA00000000003138;
            goto LABEL_36;
          case 12:
            v10 = 0xEA00000000003635;
            if (v9 != 0x3032383934393431)
            {
              goto LABEL_38;
            }

            goto LABEL_37;
          case 13:
            v10 = 0xEA00000000003538;
            goto LABEL_36;
          default:
LABEL_36:
            if (v9 != 0x3932343038373431)
            {
              goto LABEL_38;
            }

LABEL_37:
            if (v8 == v10)
            {

              v11 = 1;
              return v11 & 1;
            }

LABEL_38:
            v11 = sub_262A2A878();

            if (v11)
            {
              return v11 & 1;
            }

            v6 = (v6 + 1) & v7;
            if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
            {
              return v11 & 1;
            }

            break;
        }
      }
    }
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_262A06214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a3;
  v7 = sub_262A2A328();
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = type metadata accessor for SIDWorkoutPlanScheduleResponse(0);
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = type metadata accessor for SIDWorkoutPlanScheduleRequest(0);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = *a2;
  *(v5 + 224) = *(a2 + 16);
  *(v5 + 232) = *(a2 + 24);
  *(v5 + 248) = *(a2 + 40);

  return MEMORY[0x2822009F8](sub_262A06374, 0, 0);
}

uint64_t sub_262A06374()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v25 = *(v0 + 232);
  v26 = *(v0 + 240);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 128);
  v27 = *(v0 + 112);
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000035, 0x8000000262A336B0);
  *(v0 + 72) = *(v2 + 16);
  v8 = sub_262A2A868();
  MEMORY[0x26672ECF0](v8);

  MEMORY[0x26672ECF0](0x74696C61646F6D20, 0xEB00000000736569);
  sub_2629EA8C8(0, 0xE000000000000000);

  v9 = type metadata accessor for ResultPostProcessor(0);
  *(v0 + 256) = v9;
  v10 = *(v9 + 24);
  *(v0 + 312) = v10;
  v11 = v7 + v10;
  v12 = *(type metadata accessor for PlanGenerationContext(0) + 24);
  *(v0 + 316) = v12;
  v13 = sub_262A2A018();
  *(v0 + 264) = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  *(v0 + 272) = v15;
  *(v0 + 280) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v6, v11 + v12, v13);
  v16 = (v6 + *(v5 + 20));
  *v16 = v3;
  v16[1] = v4;
  v16[2] = v2;
  v16[3] = v25;
  v16[4] = v26;
  v16[5] = v1;
  *(v6 + *(v5 + 24)) = 0;

  sub_262A2A6F8();

  v17 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v17);

  sub_2629EA8C8(0xD000000000000026, 0x8000000262A336F0);

  type metadata accessor for FunctionTimer();
  inited = swift_initStackObject();
  *(v0 + 288) = inited;
  inited[3] = 0x8000000262A31BB0;
  inited[4] = 0;
  inited[2] = 0xD000000000000016;
  sub_262A2A318();
  v19 = v27 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v20 = (v19 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 56));
  v28 = (*v20 + **v20);
  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  *v21 = v0;
  v21[1] = sub_262A066E0;
  v22 = *(v0 + 200);
  v23 = *(v0 + 176);

  return v28(v23, v22);
}

uint64_t sub_262A066E0()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_262A07174;
  }

  else
  {
    v2 = sub_262A067F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_262A067F4(uint64_t a1)
{
  v83 = v1;
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  sub_262A2A318();
  v6 = sub_262A2A308();
  v7 = sub_262A2A308();
  v8 = *(v5 + 8);
  v8(v3, v4);
  result = (v8)(v2, v4);
  if (v6 < v7)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v1 + 304);
    v11 = *(v1 + 256);
    v12 = *(v1 + 176);
    v13 = *(v1 + 184);
    v14 = *(v1 + 128);
    v15 = (v6 - v7) / 1000000.0;
    *(*(v1 + 288) + 32) = v15;
    sub_262A15C74(v12, v13, type metadata accessor for SIDWorkoutPlanScheduleResponse);
    v16 = *(v14 + *(v11 + 20));
    *(v1 + 323) = 6;
    v17 = *(v16 + 16);
    v18 = swift_task_alloc();
    *(v18 + 16) = v16;
    *(v18 + 24) = v15;
    *(v18 + 32) = 0;
    *(v18 + 40) = v1 + 323;
    v19 = swift_task_alloc();
    *(v19 + 16) = sub_2629B3BF4;
    *(v19 + 24) = v18;

    os_unfair_lock_lock(v17 + 4);
    sub_2629B3C0C(v20);
    os_unfair_lock_unlock(v17 + 4);

    if (!v10)
    {
      v21 = *(v1 + 184);

      v22 = *v21;

      sub_262A2A6F8();

      *&v79 = 0xD000000000000023;
      *(&v79 + 1) = 0x8000000262A33790;
      *&v73 = v22;
      v23 = SIDWorkoutPlanSchedule.description.getter();
      MEMORY[0x26672ECF0](v23);

      sub_2629EA8C8(0xD000000000000023, 0x8000000262A33790);

      if (*(v22 + 16))
      {
        v69 = *(v1 + 272);
        v67 = *(v1 + 316);
        v68 = *(v1 + 264);
        v25 = *(v1 + 240);
        v24 = *(v1 + 248);
        v62 = *(v1 + 208);
        v63 = *(v1 + 224);
        v71 = *(v1 + 184);
        v72 = *(v1 + 200);
        v70 = *(v1 + 168);
        v26 = *(v1 + 120);
        v27 = *(v1 + 104);
        v66 = *(v1 + 128) + *(v1 + 312);
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A337C0);
        *(v1 + 96) = *(v22 + 16);
        v28 = sub_262A2A868();
        MEMORY[0x26672ECF0](v28);

        MEMORY[0x26672ECF0](0xD000000000000015, 0x8000000262A337F0);
        sub_2629EA8C8(v79, *(&v79 + 1));

        LOBYTE(v79) = 0;
        v29 = sub_262A04710(&v79, v26);
        v64 = v30;
        v65 = v29;
        v78 = v22;
        v79 = v62;
        v80 = v63;
        v81 = v25;
        v82 = v24;
        sub_262A07588(&v78, &v79, &v73);
        v31 = v73;
        v32 = v74;
        v33 = v75;
        *&v63 = v74;
        v35 = v76;
        v34 = v77;
        *&v62 = v77;
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        sub_262A2A6F8();
        v73 = v79;
        MEMORY[0x26672ECF0](0xD000000000000033, 0x8000000262A33810);
        v79 = v31;
        *&v80 = v32;
        *(&v80 + 1) = v33;
        v81 = v35;
        v82 = v34;
        v36 = SIDWorkoutPlanScaffold.description.getter();
        MEMORY[0x26672ECF0](v36);

        sub_2629EA8C8(v73, *(&v73 + 1));

        v37 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
        v69(v27 + *(v37 + 32), v66 + v67, v68);
        sub_262A2A008();
        *(v27 + 16) = v31;
        *(v27 + 32) = v63;
        *(v27 + 40) = v33;
        *(v27 + 48) = v35;
        *(v27 + 56) = v62;
        *v27 = v65;
        *(v27 + 8) = v64;
        *(v27 + 64) = 0;
        *(v27 + 72) = v22;
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        sub_262A2A6F8();

        *&v79 = 0xD000000000000027;
        *(&v79 + 1) = 0x8000000262A33850;
        v38 = SIDPersonalizedWorkoutPlan.description.getter();
        MEMORY[0x26672ECF0](v38);

        sub_2629EA8C8(v79, *(&v79 + 1));

        v39 = *(v70 + 20);
        v40 = type metadata accessor for ConsistentWorkoutPlanResult(0);
        sub_262A15BAC(v71 + v39, v27 + *(v40 + 20), type metadata accessor for SIDMetricCreatePlanScaffold);
        sub_262A15C14(v71, type metadata accessor for SIDWorkoutPlanScheduleResponse);
        sub_262A15C14(v72, type metadata accessor for SIDWorkoutPlanScheduleRequest);

        v41 = *(v1 + 8);
      }

      else
      {
        v42 = *(v1 + 184);

        sub_2629EA8B0(0xD000000000000035, 0x8000000262A33880);
        sub_2629B3A24();
        v43 = swift_allocError();
        *v44 = 10;
        swift_willThrow();
        sub_262A15C14(v42, type metadata accessor for SIDWorkoutPlanScheduleResponse);
        *(v1 + 80) = v43;
        MEMORY[0x26672F6B0](v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
        v45 = swift_dynamicCast();
        v46 = *(v1 + 256);
        v47 = *(v1 + 128);
        if (v45 && *(v1 + 320) == 12)
        {
          MEMORY[0x26672F6A0](v43);
          v48 = *(v47 + *(v46 + 20));
          sub_262A1580C();
          v49 = swift_allocError();
          *v50 = 12;
          *(v1 + 322) = 6;
          v51 = *(v48 + 16);
          v52 = swift_task_alloc();
          *(v52 + 16) = v48;
          *(v52 + 24) = v15;
          *(v52 + 32) = v49;
          *(v52 + 40) = v1 + 322;
          v53 = swift_task_alloc();
          *(v53 + 16) = sub_2629B3BF4;
          *(v53 + 24) = v52;

          os_unfair_lock_lock(v51 + 4);
          sub_2629B3C0C(v54);
          os_unfair_lock_unlock(v51 + 4);
          MEMORY[0x26672F6A0](v49);

          sub_2629EA8B0(0xD00000000000003ELL, 0x8000000262A33750);
          swift_allocError();
          *v55 = 9;
          swift_willThrow();

          MEMORY[0x26672F6A0](*(v1 + 80));
        }

        else
        {
          MEMORY[0x26672F6A0](*(v1 + 80));
          v56 = *(v47 + *(v46 + 20));
          *(v1 + 321) = 6;
          v57 = *(v56 + 16);
          v58 = swift_task_alloc();
          *(v58 + 16) = v56;
          *(v58 + 24) = v15;
          *(v58 + 32) = v43;
          *(v58 + 40) = v1 + 321;
          v59 = swift_task_alloc();
          *(v59 + 16) = sub_2629B3A78;
          *(v59 + 24) = v58;
          MEMORY[0x26672F6B0](v43);

          os_unfair_lock_lock(v57 + 4);
          sub_2629B3A9C(v60);
          os_unfair_lock_unlock(v57 + 4);
          MEMORY[0x26672F6A0](v43);

          *&v79 = 0;
          *(&v79 + 1) = 0xE000000000000000;
          sub_262A2A6F8();
          *(v1 + 56) = 0;
          *(v1 + 64) = 0xE000000000000000;
          MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A33720);
          *(v1 + 88) = v43;
          sub_262A2A738();
          sub_2629EA8B0(*(v1 + 56), *(v1 + 64));

          swift_allocError();
          *v61 = 10;
          swift_willThrow();
          MEMORY[0x26672F6A0](v43);
        }

        sub_262A15C14(*(v1 + 200), type metadata accessor for SIDWorkoutPlanScheduleRequest);

        v41 = *(v1 + 8);
      }

      return v41();
    }
  }

  return result;
}

uint64_t sub_262A07174()
{
  (*(*(v0 + 144) + 8))(*(v0 + 160), *(v0 + 136));
  v1 = *(v0 + 304);
  *(v0 + 80) = v1;
  MEMORY[0x26672F6B0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BEC0, &unk_262A2BA60);
  v2 = swift_dynamicCast();
  v3 = *(v0 + 256);
  v4 = *(v0 + 128);
  if (v2)
  {
    v5 = *(v0 + 320) == 12;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    MEMORY[0x26672F6A0](v1);
    v12 = *(v4 + *(v3 + 20));
    sub_262A1580C();
    v13 = swift_allocError();
    *v14 = 12;
    *(v0 + 322) = 6;
    v15 = *(v12 + 16);
    v16 = swift_task_alloc();
    v16[2] = v12;
    v16[3] = 0;
    v16[4] = v13;
    v16[5] = v0 + 322;
    v17 = swift_task_alloc();
    *(v17 + 16) = sub_2629B3BF4;
    *(v17 + 24) = v16;

    os_unfair_lock_lock(v15 + 4);
    sub_2629B3C0C(v18);
    os_unfair_lock_unlock(v15 + 4);
    MEMORY[0x26672F6A0](v13);

    sub_2629EA8B0(0xD00000000000003ELL, 0x8000000262A33750);
    sub_2629B3A24();
    swift_allocError();
    *v19 = 9;
    swift_willThrow();

    MEMORY[0x26672F6A0](*(v0 + 80));
  }

  else
  {
    MEMORY[0x26672F6A0](*(v0 + 80));
    v6 = *(v4 + *(v3 + 20));
    *(v0 + 321) = 6;
    v7 = *(v6 + 16);
    v8 = swift_task_alloc();
    v8[2] = v6;
    v8[3] = 0;
    v8[4] = v1;
    v8[5] = v0 + 321;
    v9 = swift_task_alloc();
    *(v9 + 16) = sub_2629B3A78;
    *(v9 + 24) = v8;
    MEMORY[0x26672F6B0](v1);

    os_unfair_lock_lock(v7 + 4);
    sub_2629B3A9C(v10);
    os_unfair_lock_unlock(v7 + 4);
    MEMORY[0x26672F6A0](v1);

    sub_262A2A6F8();
    *(v0 + 56) = 0;
    *(v0 + 64) = 0xE000000000000000;
    MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A33720);
    *(v0 + 88) = v1;
    sub_262A2A738();
    sub_2629EA8B0(*(v0 + 56), *(v0 + 64));

    sub_2629B3A24();
    swift_allocError();
    *v11 = 10;
    swift_willThrow();
    MEMORY[0x26672F6A0](v1);
  }

  sub_262A15C14(*(v0 + 200), type metadata accessor for SIDWorkoutPlanScheduleRequest);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_262A07588@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, int8x8_t *a3@<X8>)
{
  v3 = *a1;
  v76 = a2[3];
  v77 = a2[2];
  v74 = a2[5];
  v75 = a2[4];
  v80 = sub_2629AC5CC(MEMORY[0x277D84F90]);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_11:
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = *(*(v3 + 48) + 32 * v10);
    v12 = *(*(v3 + 56) + 8 * v10);
    v13 = v80;
    if (v80[2])
    {
      sub_2629CB210(v11);
      if (v14)
      {

        goto LABEL_25;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v13;
    v16 = sub_2629CB210(v11);
    v18 = v13[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      goto LABEL_70;
    }

    v22 = v17;
    if (v13[3] < v21)
    {
      sub_2629CFF00(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_2629CB210(v11);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_74;
      }

LABEL_19:
      v24 = v79[0];
      if ((v22 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v25 = v16;
    sub_2629CE16C();
    v16 = v25;
    v24 = v79[0];
    if ((v22 & 1) == 0)
    {
LABEL_22:
      v24[(v16 >> 6) + 8] |= 1 << v16;
      *(v24[6] + 8 * v16) = v11;
      *(v24[7] + 8 * v16) = MEMORY[0x277D84F90];
      v26 = v24[2];
      v20 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v20)
      {
        goto LABEL_71;
      }

      v24[2] = v27;
      goto LABEL_24;
    }

LABEL_20:
    *(v24[7] + 8 * v16) = MEMORY[0x277D84F90];

LABEL_24:
    v80 = v24;
LABEL_25:
    v6 &= v6 - 1;
    v28 = sub_262A042E8(v79, v11);
    if (*v29)
    {
      sub_262A03FFC(v12);
    }

    else
    {
    }

    (v28)(v79, 0);
    v8 = v9;
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

      v30 = v80;
      v31 = v80 + 8;
      v32 = 1 << *(v80 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & v80[8];
      v35 = (v32 + 63) >> 6;

      v36 = 0;
      v37 = MEMORY[0x277D84F90];
      if (v34)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v38 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_69;
        }

        if (v38 >= v35)
        {
          break;
        }

        v34 = v31[v38];
        ++v36;
        if (v34)
        {
          v36 = v38;
          do
          {
LABEL_34:
            v39 = 0;
            v40 = __clz(__rbit64(v34));
            v34 &= v34 - 1;
            v41 = *(v30[7] + ((v36 << 9) | (8 * v40)));
            v42 = (v41 + 32);
            v43 = *(v41 + 16) + 1;
            while (--v43)
            {
              v44 = *v42;
              v42 += 4;
              v20 = __OFADD__(v39, v44);
              v39 += v44;
              if (v20)
              {
                __break(1u);
                goto LABEL_68;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v37 = sub_2629A9140(0, *(v37 + 2) + 1, 1, v37);
            }

            v46 = *(v37 + 2);
            v45 = *(v37 + 3);
            if (v46 >= v45 >> 1)
            {
              v37 = sub_2629A9140((v45 > 1), v46 + 1, 1, v37);
            }

            *(v37 + 2) = v46 + 1;
            *&v37[8 * v46 + 32] = v39;
          }

          while (v34);
        }
      }

      v47 = *(v37 + 2);
      if (!v47)
      {
        goto LABEL_73;
      }

      v48 = *(v37 + 4);
      v49 = v47 - 1;
      if (v47 == 1)
      {

        v50 = v48;
LABEL_67:

        *a3 = v50;
        a3[1] = v48;
        a3[2] = v77;
        a3[3] = v76;
        a3[4] = v75;
        a3[5] = v74;
        return result;
      }

      if (v47 > 4)
      {
        v52 = vdupq_n_s64(v48);
        v51 = v49 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v53 = (v37 + 56);
        v54 = v49 & 0xFFFFFFFFFFFFFFFCLL;
        v55 = v52;
        do
        {
          v52 = vbslq_s8(vcgtq_s64(v52, v53[-1]), v53[-1], v52);
          v55 = vbslq_s8(vcgtq_s64(v55, *v53), *v53, v55);
          v53 += 2;
          v54 -= 4;
        }

        while (v54);
        v56 = vbslq_s8(vcgtq_s64(v55, v52), v52, v55);
        v57 = vextq_s8(v56, v56, 8uLL).u64[0];
        v50 = vbsl_s8(vcgtd_s64(v57, v56.i64[0]), *v56.i8, v57);
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v51 = 1;
        v50 = *(v37 + 32);
LABEL_53:
        v58 = v47 - v51;
        v59 = &v37[8 * v51 + 32];
        do
        {
          v61 = *v59;
          v59 += 8;
          v60 = v61;
          if (*&v61 < *&v50)
          {
            v50 = v60;
          }

          --v58;
        }

        while (v58);
      }

      if (v47 >= 5)
      {
        v62 = v49 & 0xFFFFFFFFFFFFFFFCLL | 1;
        v63 = vdupq_n_s64(v48);
        v64 = (v37 + 56);
        v65 = v49 & 0xFFFFFFFFFFFFFFFCLL;
        v66 = v63;
        do
        {
          v63 = vbslq_s8(vcgtq_s64(v63, v64[-1]), v63, v64[-1]);
          v66 = vbslq_s8(vcgtq_s64(v66, *v64), v66, *v64);
          v64 += 2;
          v65 -= 4;
        }

        while (v65);
        v67 = vbslq_s8(vcgtq_s64(v63, v66), v63, v66);
        v68 = vextq_s8(v67, v67, 8uLL).u64[0];
        v48 = vbsl_s8(vcgtd_s64(v67.i64[0], v68), *v67.i8, v68);
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_62;
        }
      }

      else
      {
        v62 = 1;
LABEL_62:
        v69 = v47 - v62;
        v70 = &v37[8 * v62 + 32];
        do
        {
          v72 = *v70++;
          v71 = v72;
          if (v48 <= v72)
          {
            v48 = v71;
          }

          --v69;
        }

        while (v69);
      }

      if (v48 < *&v50)
      {
        goto LABEL_72;
      }

      goto LABEL_67;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

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
  result = sub_262A2A938();
  __break(1u);
  return result;
}

void *sub_262A07AD0(uint64_t a1, uint64_t a2, char *a3)
{
  v116 = a2;
  v117 = a3;
  v119 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC38, &unk_262A30C00);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v114 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v107 = &v103 - v7;
  MEMORY[0x28223BE20](v6);
  v109 = &v103 - v8;
  v9 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v112 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v104 = &v103 - v13;
  MEMORY[0x28223BE20](v12);
  v105 = &v103 - v14;
  v15 = type metadata accessor for SIDWorkoutPlanType(0);
  v120 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v115 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v113 = &v103 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v103 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v106 = &v103 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v110 = &v103 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v103 = &v103 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v108 = &v103 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v111 = &v103 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v103 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0B0, &unk_262A30350);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v103 - v39;
  v41 = type metadata accessor for SIDActiveWorkoutPlan(0);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v103 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2629ADF8C(v117, v40, &unk_27FF3C0B0, &unk_262A30350);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    sub_2629ADF2C(v40, &unk_27FF3C0B0, &unk_262A30350);
    sub_262A15BAC(v119, v22, type metadata accessor for SIDPersonalizedWorkoutPlan);
    v45 = v118;
    v46 = *(v118 + 56);
    v46(v22, 0, 1, v9);
    v47 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
    v49 = v47[2];
    v48 = v47[3];
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v47 = sub_2629A94D0((v48 > 1), v49 + 1, 1, v47);
    }

    v51 = v120;
    v47[2] = v50;
    v52 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v53 = *(v51 + 72);
    sub_262A15C74(v22, v47 + v52 + v53 * v49, type metadata accessor for SIDWorkoutPlanType);
    v54 = v114;
    sub_2629ADF8C(v116, v114, &qword_27FF3CC38, &unk_262A30C00);
    if ((*(v45 + 48))(v54, 1, v9) == 1)
    {
      sub_2629ADF2C(v54, &qword_27FF3CC38, &unk_262A30C00);
      v55 = v115;
    }

    else
    {
      v68 = v112;
      sub_262A15C74(v54, v112, type metadata accessor for SIDPersonalizedWorkoutPlan);
      v69 = v113;
      sub_262A15BAC(v68, v113, type metadata accessor for SIDPersonalizedWorkoutPlan);
      v46(v69, 0, 1, v9);
      v70 = v47[3];
      v71 = v49 + 2;
      if ((v49 + 2) > (v70 >> 1))
      {
        v47 = sub_2629A94D0((v70 > 1), v49 + 2, 1, v47);
      }

      v55 = v115;
      sub_262A15C14(v68, type metadata accessor for SIDPersonalizedWorkoutPlan);
      v47[2] = v71;
      sub_262A15C74(v113, v47 + v52 + v53 * v50, type metadata accessor for SIDWorkoutPlanType);
    }

    v46(v55, 1, 1, v9);
    v73 = v47[2];
    v72 = v47[3];
    if (v73 >= v72 >> 1)
    {
      v47 = sub_2629A94D0((v72 > 1), v73 + 1, 1, v47);
    }

    v47[2] = v73 + 1;
    sub_262A15C74(v55, v47 + v52 + v73 * v53, type metadata accessor for SIDWorkoutPlanType);
    sub_2629EA8C8(0xD000000000000014, 0x8000000262A33960);
  }

  else
  {
    v57 = v118;
    v56 = v119;
    sub_262A15C74(v40, v44, type metadata accessor for SIDActiveWorkoutPlan);
    if (v44[*(v41 + 36)])
    {
      v58 = v9;
      if (v44[*(v41 + 36)] == 1)
      {
        v117 = v44;
        sub_262A15BAC(v56, v37, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v59 = *(v57 + 56);
        v59(v37, 0, 1, v9);
        v47 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
        v61 = v47[2];
        v60 = v47[3];
        v62 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          v47 = sub_2629A94D0((v60 > 1), v61 + 1, 1, v47);
        }

        v63 = v120;
        v47[2] = v62;
        v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
        v65 = *(v63 + 72);
        sub_262A15C74(v37, v47 + v64 + v65 * v61, type metadata accessor for SIDWorkoutPlanType);
        v66 = v109;
        sub_2629ADF8C(v116, v109, &qword_27FF3CC38, &unk_262A30C00);
        if ((*(v57 + 48))(v66, 1, v58) == 1)
        {
          sub_2629ADF2C(v66, &qword_27FF3CC38, &unk_262A30C00);
          v67 = v108;
        }

        else
        {
          v89 = v105;
          sub_262A15C74(v66, v105, type metadata accessor for SIDPersonalizedWorkoutPlan);
          v90 = v111;
          sub_262A15BAC(v89, v111, type metadata accessor for SIDPersonalizedWorkoutPlan);
          v59(v90, 0, 1, v58);
          v91 = v47[3];
          v92 = v61 + 2;
          if (v92 > (v91 >> 1))
          {
            v47 = sub_2629A94D0((v91 > 1), v92, 1, v47);
          }

          v67 = v108;
          sub_262A15C14(v89, type metadata accessor for SIDPersonalizedWorkoutPlan);
          v47[2] = v92;
          sub_262A15C74(v111, v47 + v64 + v65 * v62, type metadata accessor for SIDWorkoutPlanType);
        }

        v59(v67, 1, 1, v58);
        v94 = v47[2];
        v93 = v47[3];
        if (v94 >= v93 >> 1)
        {
          v47 = sub_2629A94D0((v93 > 1), v94 + 1, 1, v47);
        }

        v44 = v117;
        v47[2] = v94 + 1;
        sub_262A15C74(v67, v47 + v64 + v94 * v65, type metadata accessor for SIDWorkoutPlanType);
        v87 = "lan is consistent plan";
        v88 = 0xD000000000000022;
      }

      else
      {
        sub_262A15BAC(v56, v27, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v79 = *(v57 + 56);
        v79(v27, 0, 1, v9);
        v47 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
        v81 = v47[2];
        v80 = v47[3];
        v82 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          v47 = sub_2629A94D0((v80 > 1), v81 + 1, 1, v47);
        }

        v47[2] = v82;
        v83 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v84 = *(v120 + 72);
        sub_262A15C74(v27, v47 + v83 + v84 * v81, type metadata accessor for SIDWorkoutPlanType);
        v85 = v106;
        v79(v106, 1, 1, v58);
        v86 = v47[3];
        if ((v81 + 2) > (v86 >> 1))
        {
          v47 = sub_2629A94D0((v86 > 1), v81 + 2, 1, v47);
        }

        v47[2] = v81 + 2;
        sub_262A15C74(v85, v47 + v83 + v84 * v82, type metadata accessor for SIDWorkoutPlanType);
        v87 = "No active plan found";
        v88 = 0xD000000000000023;
      }
    }

    else
    {
      v74 = v107;
      sub_2629ADF8C(v116, v107, &qword_27FF3CC38, &unk_262A30C00);
      v75 = v57;
      v76 = v9;
      if ((*(v57 + 48))(v74, 1, v9) == 1)
      {
        sub_2629ADF2C(v74, &qword_27FF3CC38, &unk_262A30C00);
        v77 = *(v57 + 56);
        v47 = MEMORY[0x277D84F90];
        v78 = v120;
      }

      else
      {
        v95 = v104;
        sub_262A15C74(v74, v104, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v96 = v103;
        sub_262A15BAC(v95, v103, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v77 = *(v75 + 56);
        v77(v96, 0, 1, v9);
        v47 = sub_2629A94D0(0, 1, 1, MEMORY[0x277D84F90]);
        v98 = v47[2];
        v97 = v47[3];
        v78 = v120;
        if (v98 >= v97 >> 1)
        {
          v47 = sub_2629A94D0((v97 > 1), v98 + 1, 1, v47);
        }

        sub_262A15C14(v95, type metadata accessor for SIDPersonalizedWorkoutPlan);
        v47[2] = v98 + 1;
        sub_262A15C74(v96, v47 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v98, type metadata accessor for SIDWorkoutPlanType);
      }

      v99 = v110;
      v77(v110, 1, 1, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_2629A94D0(0, v47[2] + 1, 1, v47);
      }

      v101 = v47[2];
      v100 = v47[3];
      if (v101 >= v100 >> 1)
      {
        v47 = sub_2629A94D0((v100 > 1), v101 + 1, 1, v47);
      }

      v47[2] = v101 + 1;
      sub_262A15C74(v99, v47 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v101, type metadata accessor for SIDWorkoutPlanType);
      v87 = "lan is stretch plan";
      v88 = 0xD000000000000026;
    }

    sub_2629EA8C8(v88, v87 | 0x8000000000000000);
    sub_262A15C14(v44, type metadata accessor for SIDActiveWorkoutPlan);
  }

  return v47;
}

void sub_262A088C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v227 = a3;
  v250 = *MEMORY[0x277D85DE8];
  v235 = sub_2629AC204(MEMORY[0x277D84F90]);
  v226 = a1;
  v5 = a1[9];
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v230 = (v7 + 63) >> 6;
  v229 = v5;

  v10 = v9;
  v11 = 0;
  v225 = 0;
  v237 = a2;
  for (i = v6; ; v6 = i)
  {
    if (!v10)
    {
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v230)
        {

          v211 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
          v212 = *(v211 + 32);
          v213 = sub_262A2A018();
          v214 = *(*(v213 - 8) + 16);
          v215 = v227;
          v216 = v226;
          v214(v227 + v212, v226 + v212, v213);
          v217 = v216[2];
          v245 = v216[3];
          v246 = v217;
          v218 = v216[4];
          v219 = v216[5];
          v220 = v216[6];
          v221 = v216[7];
          v222 = v216[1];
          v243 = *v216;
          v244 = v220;
          LODWORD(v242) = *(v216 + 64);
          v214(v215 + *(v211 + 36), v216 + *(v211 + 36), v213);
          v223 = v245;
          *(v215 + 16) = v246;
          *(v215 + 24) = v223;
          *(v215 + 32) = v218;
          *(v215 + 40) = v219;
          v224 = v243;
          *(v215 + 48) = v244;
          *(v215 + 56) = v221;
          *v215 = v224;
          *(v215 + 8) = v222;
          *(v215 + 64) = v242;
          *(v215 + 72) = v235;

          return;
        }

        v10 = *(v6 + 8 * v13);
        ++v11;
        if (v10)
        {
          goto LABEL_12;
        }
      }

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
    }

    v13 = v11;
LABEL_12:
    v232 = v10;
    v231 = v13;
    v14 = __clz(__rbit64(v10)) | (v13 << 6);
    v15 = *(v229 + 56);
    v16 = (*(v229 + 48) + 32 * v14);
    v17 = *v16;
    v233 = v16[1];
    v234 = v17;
    v243 = *(v15 + 8 * v14);
    v242 = *(v243 + 16);
    if (v242)
    {
      break;
    }

    v192 = MEMORY[0x277D84F90];
LABEL_257:
    v193 = v235;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v248 = v193;
    v195 = v234;
    v196 = v233;
    v197 = sub_2629CB134(v234, *(&v234 + 1), v233, *(&v233 + 1));
    v199 = v193[2];
    v200 = (v198 & 1) == 0;
    v55 = __OFADD__(v199, v200);
    v201 = v199 + v200;
    if (v55)
    {
      goto LABEL_275;
    }

    v202 = v198;
    if (v193[3] >= v201)
    {
      v204 = v232;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v210 = v197;
        sub_2629CE828();
        v204 = v232;
        v197 = v210;
      }
    }

    else
    {
      sub_2629D0B78(v201, isUniquelyReferenced_nonNull_native);
      v197 = sub_2629CB134(v195, *(&v195 + 1), v196, *(&v196 + 1));
      if ((v202 & 1) != (v203 & 1))
      {
        goto LABEL_285;
      }

      v204 = v232;
    }

    v10 = (v204 - 1) & v204;
    v235 = v248;
    if (v202)
    {
      *(v248[7] + 8 * v197) = v192;
      v12 = v10;

      v10 = v12;
    }

    else
    {
      v205 = v235;
      v248[(v197 >> 6) + 8] |= 1 << v197;
      v206 = (v205[6] + 32 * v197);
      v207 = v233;
      *v206 = v234;
      v206[1] = v207;
      *(v205[7] + 8 * v197) = v192;
      v208 = v205[2];
      v55 = __OFADD__(v208, 1);
      v209 = v208 + 1;
      if (v55)
      {
        goto LABEL_276;
      }

      v205[2] = v209;
    }

    v11 = v231;
  }

  v241 = v243 + 32;

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 >= *(v243 + 16))
    {
      goto LABEL_271;
    }

    v23 = (v241 + 32 * v18);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    swift_bridgeObjectRetain_n();
    v246 = v24;

    v244 = v26;
    v28 = sub_262A2A788();

    v245 = v25;
    if (v28 > 0xD || !*(a2 + 16) || (v30 = sub_2629CB1E4(v28, v29), (v31 & 1) == 0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2629A9244(0, *(v19 + 2) + 1, 1, v19);
      }

      v57 = *(v19 + 2);
      v56 = *(v19 + 3);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v19 = sub_2629A9244((v56 > 1), v57 + 1, 1, v19);
      }

      v20 = v246;
      goto LABEL_15;
    }

    v32 = (*(a2 + 56) + 32 * v30);
    v33 = *v32;
    v34 = v32[1];
    v36 = v32[2];
    v35 = v32[3];
    v37 = *(*v32 + 16);
    v239 = v36;
    v240 = v19;
    v238 = v35;
    if (!v37)
    {
      v20 = v246;

      if (!*(v34 + 16))
      {
        goto LABEL_65;
      }

      goto LABEL_84;
    }

    v236 = v34;
    v38 = *(v33 + 32);
    v39 = v246;
    v40 = *(v246 + 32);
    v41 = v40 & 0x3F;
    v42 = ((1 << v40) + 63) >> 6;
    v43 = 8 * v42;

    if (v41 <= 0xD)
    {

LABEL_23:
      MEMORY[0x28223BE20](v44);
      bzero(&v225 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0), v43);
      v45 = 0;
      v46 = 0;
      v47 = 1 << *(v39 + 32);
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v49 = v48 & *(v39 + 56);
      v50 = (v47 + 63) >> 6;
      while (v49)
      {
        v51 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
        v52 = v51 | (v46 << 6);
LABEL_34:
        if (*(*(v39 + 48) + 24 * v52 + 16))
        {
          *(&v225 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v52;
          v55 = __OFADD__(v45++, 1);
          if (v55)
          {
            goto LABEL_277;
          }
        }
      }

      v53 = v46;
      while (1)
      {
        v46 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v46 >= v50)
        {
          v20 = sub_262A26738((&v225 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0)), v42, v45, v39);
          goto LABEL_43;
        }

        v54 = *(v39 + 56 + 8 * v46);
        ++v53;
        if (v54)
        {
          v49 = (v54 - 1) & v54;
          v52 = __clz(__rbit64(v54)) | (v46 << 6);
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
      goto LABEL_272;
    }

    swift_bridgeObjectRetain_n();

    if (swift_stdlib_isStackAllocationSafe())
    {
      v44 = swift_bridgeObjectRelease_n();
      goto LABEL_23;
    }

    v143 = v38;
    v60 = swift_slowAlloc();

    v144 = v225;
    v145 = sub_262A1248C(v60, v42, v39, sub_262A09F90);
    v146 = &v249;
    v225 = v144;
    if (v144)
    {
      goto LABEL_282;
    }

    v20 = v145;
    swift_bridgeObjectRelease_n();
    MEMORY[0x26672F820](v60, -1, -1);
    v38 = v143;
LABEL_43:
    v59 = 12337;
    if (v38 != 1)
    {
      v59 = 12593;
    }

    if (v38)
    {
      v60 = v59;
    }

    else
    {
      v60 = 57;
    }

    if (v38)
    {
      v61 = 0xE200000000000000;
    }

    else
    {
      v61 = 0xE100000000000000;
    }

    sub_262A2A998();
    MEMORY[0x26672F240](0);
    sub_262A2A448();
    v62 = sub_262A2A9D8();
    v63 = -1 << *(v20 + 32);
    v64 = v62 & ~v63;
    if ((*(v20 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
    {
      v65 = ~v63;
      v66 = *(v20 + 48);
      while (1)
      {
        v67 = v66 + 24 * v64;
        if (!*(v67 + 16))
        {
          v68 = *v67 == v60 && *(v67 + 8) == v61;
          if (v68 || (sub_262A2A878() & 1) != 0)
          {
            break;
          }
        }

        v64 = (v64 + 1) & v65;
        if (((*(v20 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      a2 = v237;
      goto LABEL_83;
    }

LABEL_61:
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v247 = v20;
    v70 = *(v20 + 16);
    if (*(v20 + 24) > v70)
    {
      a2 = v237;
      if ((v69 & 1) == 0)
      {
        sub_262A25520();
        v20 = v247;
      }

      goto LABEL_81;
    }

    a2 = v237;
    if (v69)
    {
      sub_262A23FD4(v70 + 1);
    }

    else
    {
      sub_262A26224(v70 + 1);
    }

    v20 = v247;
    sub_262A2A998();
    MEMORY[0x26672F240](0);
    sub_262A2A448();
    v71 = sub_262A2A9D8();
    v72 = -1 << *(v20 + 32);
    v64 = v71 & ~v72;
    if ((*(v20 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
    {
      break;
    }

LABEL_81:
    *(v20 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v64;
    v77 = *(v20 + 48) + 24 * v64;
    *v77 = v60;
    *(v77 + 8) = v61;
    *(v77 + 16) = 0;
    v78 = *(v20 + 16);
    v55 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v55)
    {
      goto LABEL_273;
    }

    *(v20 + 16) = v79;
LABEL_83:
    v36 = v239;
    v19 = v240;
    v34 = v236;
    if (!*(v236 + 16))
    {
LABEL_65:

      if (!*(v36 + 16))
      {
        goto LABEL_66;
      }

      goto LABEL_152;
    }

LABEL_84:
    v80 = *(v34 + 32);

    v82 = *(v20 + 32);
    v83 = ((1 << v82) + 63) >> 6;
    if ((v82 & 0x3Fu) <= 0xD)
    {
      goto LABEL_85;
    }

    swift_bridgeObjectRetain_n();
    if (swift_stdlib_isStackAllocationSafe())
    {
      v81 = swift_bridgeObjectRelease_n();
LABEL_85:
      MEMORY[0x28223BE20](v81);
      v85 = &v225 - ((v84 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v85, v84);
      v86 = 0;
      v87 = 0;
      v88 = 1 << *(v20 + 32);
      if (v88 < 64)
      {
        v89 = ~(-1 << v88);
      }

      else
      {
        v89 = -1;
      }

      v90 = v89 & *(v20 + 56);
      v91 = (v88 + 63) >> 6;
      while (v90)
      {
        v92 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
        v93 = v92 | (v87 << 6);
LABEL_96:
        if (*(*(v20 + 48) + 24 * v93 + 16) != 1)
        {
          *&v85[(v93 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v93;
          v55 = __OFADD__(v86++, 1);
          if (v55)
          {
            goto LABEL_278;
          }
        }
      }

      v94 = v87;
      while (1)
      {
        v87 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_268;
        }

        if (v87 >= v91)
        {
          break;
        }

        v95 = *(v20 + 56 + 8 * v87);
        ++v94;
        if (v95)
        {
          v90 = (v95 - 1) & v95;
          v93 = __clz(__rbit64(v95)) | (v87 << 6);
          goto LABEL_96;
        }
      }

      v20 = sub_262A26738(v85, v83, v86, v20);
      goto LABEL_101;
    }

    v60 = swift_slowAlloc();

    v147 = v225;
    v148 = sub_262A1248C(v60, v83, v20, sub_262A09FA0);
    v225 = v147;
    if (v147)
    {
      goto LABEL_283;
    }

    v149 = v148;
    swift_bridgeObjectRelease_n();
    MEMORY[0x26672F820](v60, -1, -1);
    v20 = v149;
LABEL_101:
    v96 = 0xEA00000000003739;
    v97 = 0xEA00000000003735;
    v98 = 0x3032383934393431;
    if (v80 != 6)
    {
      v98 = 0x3930393836383531;
      v97 = 0xEA00000000003638;
    }

    v99 = 0xEA00000000003836;
    if (v80 != 4)
    {
      v99 = 0xEA00000000003736;
    }

    if (v80 <= 5)
    {
      v98 = 0x3932343038373431;
      v97 = v99;
    }

    v100 = 0xEA00000000003636;
    if (v80 != 2)
    {
      v100 = 0xEA00000000003037;
    }

    v101 = 0x3931333738353531;
    if (v80)
    {
      v101 = 0x3932343038373431;
      v96 = 0xEA00000000003936;
    }

    if (v80 <= 1)
    {
      v102 = v101;
    }

    else
    {
      v102 = 0x3932343038373431;
    }

    if (v80 > 1)
    {
      v96 = v100;
    }

    v103 = v80 <= 3;
    if (v80 <= 3)
    {
      v104 = v102;
    }

    else
    {
      v104 = v98;
    }

    if (v103)
    {
      v105 = v96;
    }

    else
    {
      v105 = v97;
    }

    sub_262A2A998();
    MEMORY[0x26672F240](1);
    sub_262A2A448();
    v106 = sub_262A2A9D8();
    v107 = -1 << *(v20 + 32);
    v60 = v106 & ~v107;
    if ((*(v20 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
    {
      v108 = ~v107;
      v109 = *(v20 + 48);
      while (1)
      {
        v110 = v109 + 24 * v60;
        if (*(v110 + 16) == 1)
        {
          v111 = *v110 == v104 && *(v110 + 8) == v105;
          if (v111 || (sub_262A2A878() & 1) != 0)
          {
            break;
          }
        }

        v60 = (v60 + 1) & v108;
        if (((*(v20 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
        {
          goto LABEL_132;
        }
      }

      a2 = v237;
    }

    else
    {
LABEL_132:
      v112 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v20;
      v113 = *(v20 + 16);
      if (*(v20 + 24) <= v113)
      {
        a2 = v237;
        if (v112)
        {
          sub_262A23FD4(v113 + 1);
        }

        else
        {
          sub_262A26224(v113 + 1);
        }

        v20 = v247;
        sub_262A2A998();
        MEMORY[0x26672F240](1);
        sub_262A2A448();
        v114 = sub_262A2A9D8();
        v115 = -1 << *(v20 + 32);
        v60 = v114 & ~v115;
        if ((*(v20 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
        {
          v116 = ~v115;
          v117 = *(v20 + 48);
          do
          {
            v118 = v117 + 24 * v60;
            if (*(v118 + 16) == 1)
            {
              v119 = *v118 == v104 && *(v118 + 8) == v105;
              if (v119 || (sub_262A2A878() & 1) != 0)
              {
                goto LABEL_281;
              }
            }

            v60 = (v60 + 1) & v116;
          }

          while (((*(v20 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) != 0);
          a2 = v237;
        }
      }

      else
      {
        a2 = v237;
        if ((v112 & 1) == 0)
        {
          sub_262A25520();
          v20 = v247;
        }
      }

      *(v20 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v60;
      v120 = *(v20 + 48) + 24 * v60;
      *v120 = v104;
      *(v120 + 8) = v105;
      *(v120 + 16) = 1;
      v121 = *(v20 + 16);
      v55 = __OFADD__(v121, 1);
      v122 = v121 + 1;
      if (v55)
      {
        goto LABEL_274;
      }

      *(v20 + 16) = v122;
    }

    v36 = v239;
    v19 = v240;
    if (!*(v239 + 16))
    {
LABEL_66:

      goto LABEL_213;
    }

LABEL_152:
    v123 = *(v36 + 32);

    v125 = *(v20 + 32);
    v126 = ((1 << v125) + 63) >> 6;
    if ((v125 & 0x3Fu) <= 0xD)
    {
      goto LABEL_153;
    }

    swift_bridgeObjectRetain_n();
    if (swift_stdlib_isStackAllocationSafe())
    {
      v124 = swift_bridgeObjectRelease_n();
LABEL_153:
      MEMORY[0x28223BE20](v124);
      v128 = &v225 - ((v127 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v128, v127);
      v129 = 0;
      v130 = 0;
      v131 = 1 << *(v20 + 32);
      if (v131 < 64)
      {
        v132 = ~(-1 << v131);
      }

      else
      {
        v132 = -1;
      }

      v133 = v132 & *(v20 + 56);
      v134 = (v131 + 63) >> 6;
      while (v133)
      {
        v135 = __clz(__rbit64(v133));
        v133 &= v133 - 1;
        v136 = v135 | (v130 << 6);
LABEL_164:
        if (*(*(v20 + 48) + 24 * v136 + 16) != 3)
        {
          *&v128[(v136 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v136;
          v55 = __OFADD__(v129++, 1);
          if (v55)
          {
            goto LABEL_279;
          }
        }
      }

      v137 = v130;
      while (1)
      {
        v130 = v137 + 1;
        if (__OFADD__(v137, 1))
        {
          goto LABEL_269;
        }

        if (v130 >= v134)
        {
          break;
        }

        v138 = *(v20 + 56 + 8 * v130);
        ++v137;
        if (v138)
        {
          v133 = (v138 - 1) & v138;
          v136 = __clz(__rbit64(v138)) | (v130 << 6);
          goto LABEL_164;
        }
      }

      v20 = sub_262A26738(v128, v126, v129, v20);
      if (v123 > 4)
      {
        goto LABEL_188;
      }

      goto LABEL_169;
    }

    v60 = swift_slowAlloc();

    v150 = v225;
    v151 = sub_262A1248C(v60, v126, v20, sub_262A09FB0);
    v225 = v150;
    if (v150)
    {
      goto LABEL_283;
    }

    v152 = v151;
    swift_bridgeObjectRelease_n();
    MEMORY[0x26672F820](v60, -1, -1);
    v20 = v152;
    if (v123 > 4)
    {
LABEL_188:
      v139 = 12337;
      if (v123 != 8)
      {
        v139 = 12593;
      }

      v140 = 0xE200000000000000;
      if (v123 == 7)
      {
        v139 = 57;
        v140 = 0xE100000000000000;
      }

      v141 = 55;
      if (v123 != 5)
      {
        v141 = 56;
      }

      v142 = v123 <= 6;
      goto LABEL_195;
    }

LABEL_169:
    v139 = 53;
    if (v123 != 3)
    {
      v139 = 54;
    }

    v140 = 0xE100000000000000;
    if (v123 == 2)
    {
      v139 = 52;
      v140 = 0xE100000000000000;
    }

    v141 = 50;
    if (v123)
    {
      v141 = 51;
    }

    v142 = v123 <= 1;
LABEL_195:
    if (v142)
    {
      v153 = v141;
    }

    else
    {
      v153 = v139;
    }

    if (v142)
    {
      v154 = 0xE100000000000000;
    }

    else
    {
      v154 = v140;
    }

    sub_262A2A998();
    MEMORY[0x26672F240](3);
    sub_262A2A448();
    v155 = sub_262A2A9D8();
    v156 = -1 << *(v20 + 32);
    v157 = v155 & ~v156;
    if ((*(v20 + 56 + ((v157 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v157))
    {
      v158 = ~v156;
      v159 = *(v20 + 48);
      while (1)
      {
        v160 = v159 + 24 * v157;
        if (*(v160 + 16) >= 3u)
        {
          v161 = *v160 == v153 && *(v160 + 8) == v154;
          if (v161 || (sub_262A2A878() & 1) != 0)
          {
            break;
          }
        }

        v157 = (v157 + 1) & v158;
        if (((*(v20 + 56 + ((v157 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v157) & 1) == 0)
        {
          goto LABEL_211;
        }
      }
    }

    else
    {
LABEL_211:
      v162 = swift_isUniquelyReferenced_nonNull_native();
      v248 = v20;
      sub_262A24DB8(v153, v154, 3u, v157, v162);
      v20 = v248;
    }

    a2 = v237;
    v19 = v240;
LABEL_213:
    if (*(v238 + 16))
    {
      v163 = *(v238 + 32);

      v165 = *(v20 + 32);
      v166 = ((1 << v165) + 63) >> 6;
      if ((v165 & 0x3Fu) > 0xD)
      {
        swift_bridgeObjectRetain_n();
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v60 = swift_slowAlloc();

          v189 = v225;
          v190 = sub_262A1248C(v60, v166, v20, sub_262A09FC0);
          v225 = v189;
          if (v189)
          {
LABEL_283:
            MEMORY[0x26672F6A0](v225);
            goto LABEL_284;
          }

          v191 = v190;
          swift_bridgeObjectRelease_n();
          MEMORY[0x26672F820](v60, -1, -1);
          v20 = v191;
          goto LABEL_231;
        }

        v164 = swift_bridgeObjectRelease_n();
      }

      MEMORY[0x28223BE20](v164);
      v168 = &v225 - ((v167 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v168, v167);
      v169 = 0;
      v170 = 0;
      v171 = 1 << *(v20 + 32);
      if (v171 < 64)
      {
        v172 = ~(-1 << v171);
      }

      else
      {
        v172 = -1;
      }

      v173 = v172 & *(v20 + 56);
      v174 = (v171 + 63) >> 6;
      while (v173)
      {
        v175 = __clz(__rbit64(v173));
        v173 &= v173 - 1;
        v176 = v175 | (v170 << 6);
LABEL_226:
        if (*(*(v20 + 48) + 24 * v176 + 16) != 2)
        {
          *&v168[(v176 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v176;
          v55 = __OFADD__(v169++, 1);
          if (v55)
          {
            goto LABEL_280;
          }
        }
      }

      v177 = v170;
      while (1)
      {
        v170 = v177 + 1;
        if (__OFADD__(v177, 1))
        {
          goto LABEL_270;
        }

        if (v170 >= v174)
        {
          break;
        }

        v178 = *(v20 + 56 + 8 * v170);
        ++v177;
        if (v178)
        {
          v173 = (v178 - 1) & v178;
          v176 = __clz(__rbit64(v178)) | (v170 << 6);
          goto LABEL_226;
        }
      }

      v20 = sub_262A26738(v168, v166, v169, v20);
LABEL_231:
      if (v163)
      {
        v179 = 52;
      }

      else
      {
        v179 = 53;
      }

      sub_262A2A998();
      MEMORY[0x26672F240](2);
      sub_262A2A448();
      v180 = sub_262A2A9D8();
      v181 = -1 << *(v20 + 32);
      v182 = v180 & ~v181;
      if ((*(v20 + 56 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182))
      {
        v183 = ~v181;
        v184 = *(v20 + 48);
        while (1)
        {
          v185 = v184 + 24 * v182;
          if (*(v185 + 16) == 2)
          {
            v186 = *v185 == v179 && *(v185 + 8) == 0xE100000000000000;
            if (v186 || (sub_262A2A878() & 1) != 0)
            {
              break;
            }
          }

          v182 = (v182 + 1) & v183;
          if (((*(v20 + 56 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182) & 1) == 0)
          {
            goto LABEL_244;
          }
        }
      }

      else
      {
LABEL_244:
        v187 = swift_isUniquelyReferenced_nonNull_native();
        v248 = v20;
        sub_262A24DB8(v179, 0xE100000000000000, 2u, v182, v187);
        v20 = v248;
      }

      v19 = v240;
      goto LABEL_247;
    }

LABEL_247:

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_2629A9244(0, *(v19 + 2) + 1, 1, v19);
    }

    v57 = *(v19 + 2);
    v188 = *(v19 + 3);
    v58 = v57 + 1;
    if (v57 >= v188 >> 1)
    {
      v19 = sub_2629A9244((v188 > 1), v57 + 1, 1, v19);
    }

LABEL_15:
    ++v18;
    *(v19 + 2) = v58;
    v21 = &v19[32 * v57];
    v22 = v244;
    *(v21 + 4) = v245;
    *(v21 + 5) = v20;
    *(v21 + 6) = v22;
    *(v21 + 7) = v27;
    if (v18 == v242)
    {
      v192 = v19;

      goto LABEL_257;
    }
  }

  v73 = ~v72;
  v74 = *(v20 + 48);
  while (1)
  {
    v75 = v74 + 24 * v64;
    if (!*(v75 + 16))
    {
      v76 = *v75 == v60 && *(v75 + 8) == v61;
      if (v76 || (sub_262A2A878() & 1) != 0)
      {
        break;
      }
    }

    v64 = (v64 + 1) & v73;
    if (((*(v20 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) == 0)
    {
      a2 = v237;
      goto LABEL_81;
    }
  }

LABEL_281:
  sub_262A2A928();
  __break(1u);
LABEL_282:
  MEMORY[0x26672F6A0](*(v146 - 32));
LABEL_284:
  swift_bridgeObjectRelease_n();
  MEMORY[0x26672F820](v60, -1, -1);
  __break(1u);
LABEL_285:
  sub_262A2A938();
  __break(1u);
}

void sub_262A09FD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v260 = a5;
  v271 = a4;
  v264 = a2;
  v223 = sub_262A2A1F8();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v224 = &v217 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC18, &qword_262A30B98);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v217 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  MEMORY[0x28223BE20](v12 - 8);
  v229 = &v217 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C948, &unk_262A30B40);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v228 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v227 = &v217 - v17;
  v272 = sub_262A2A018();
  v266 = *(v272 - 8);
  v18 = MEMORY[0x28223BE20](v272);
  v254 = &v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v253 = &v217 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v252 = &v217 - v23;
  MEMORY[0x28223BE20](v22);
  v249 = &v217 - v24;
  v251 = type metadata accessor for PlanDataSetEvent(0);
  v259 = *(v251 - 1);
  v25 = MEMORY[0x28223BE20](v251);
  v250 = (&v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v25);
  v246 = &v217 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v245 = (&v217 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v244 = &v217 - v32;
  MEMORY[0x28223BE20](v31);
  v243 = (&v217 - v33);
  v258 = type metadata accessor for SIDPersonalizedPlanRequest(0);
  v257 = *(v258 - 8);
  v34 = *(v257 + 64);
  MEMORY[0x28223BE20](v258);
  v256 = &v217 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC20, &qword_262A30BA0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v226 = &v217 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v225 = &v217 - v39;
  MEMORY[0x28223BE20](v38);
  v255 = &v217 - v40;
  v269 = type metadata accessor for SIDPersonalizedWorkoutPlan(0);
  v265 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v270 = &v217 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SIDWorkoutPlanType(0);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42 - 8);
  v45 = &v217 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  MEMORY[0x28223BE20](PlanScaffold);
  v48 = &v217 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = type metadata accessor for FitnessPlanUser(0);
  v268 = a3;
  if ((*(a3 + v267[6] + 8) & 1) == 0)
  {

    sub_2629EA8C8(0xD00000000000003DLL, 0x8000000262A33630);
    return;
  }

  v218 = v11;
  v219 = v9;
  v220 = v8;
  v221 = a1;
  v277 = 0;
  v278 = 0xE000000000000000;
  sub_262A2A6F8();

  v277 = 0xD00000000000001ELL;
  v278 = 0x8000000262A33670;
  v49 = v260;
  sub_262A15BAC(v260, v48, type metadata accessor for SIDMetricCreatePlanScaffold);
  v50 = sub_262A2A418();
  MEMORY[0x26672ECF0](v50);

  sub_2629EA8C8(v277, v278);

  v51 = *v271;
  v52 = *(*v271 + 16);
  v53 = MEMORY[0x277D84F90];
  if (!v52)
  {
LABEL_68:
    (*(v222 + 104))(v224, *MEMORY[0x277D4D3D0], v223);
    v174 = v53[2];
    if (v174)
    {
      v277 = MEMORY[0x277D84F90];

      sub_2629CD880(0, v174, 0);
      v175 = v277;
      v176 = (*(v259 + 80) + 32) & ~*(v259 + 80);
      v248 = v53;
      v177 = v53 + v176;
      v249 = *(v259 + 72);
      do
      {
        v265 = v174;
        v266 = v175;
        v178 = v250;
        sub_262A15BAC(v177, v250, type metadata accessor for PlanDataSetEvent);
        v179 = v251;
        v180 = v251[15];
        v257 = v251[14];
        v181 = *(v178 + v180);
        v182 = v178[1];
        v264 = *v178;
        v183 = v178[3];
        v263 = v178[2];
        v184 = v178[5];
        v262 = v178[4];
        v185 = v178[7];
        v261 = v178[6];
        v186 = v178[9];
        v260 = v178[8];
        v187 = v178[11];
        v259 = v178[10];
        v188 = v178[13];
        v258 = v178[12];
        v272 = v181;

        v271 = v182;

        v270 = v183;

        v269 = v184;

        v268 = v185;

        v267 = v186;
        v189 = v187;

        v257 = sub_262A29FE8();
        v256 = v190;
        v191 = v178[15];
        v255 = v178[14];
        v192 = v178[16];

        v193 = sub_262A29FE8();
        v175 = v266;
        v254 = v193;
        v253 = v194;
        v195 = v179[17];
        v196 = (v178 + v179[16]);
        v197 = v196[1];
        v252 = *v196;
        v198 = *(v178 + v195);

        sub_262A15C14(v178, type metadata accessor for PlanDataSetEvent);
        v277 = v175;
        v200 = *(v175 + 16);
        v199 = *(v175 + 24);
        if (v200 >= v199 >> 1)
        {
          sub_2629CD880((v199 > 1), v200 + 1, 1);
          v175 = v277;
        }

        v201 = (v175 + 200 * v200);
        v202 = v264;
        v201[4] = v272;
        v201[5] = v202;
        v203 = v263;
        v201[6] = v271;
        v201[7] = v203;
        v204 = v262;
        v201[8] = v270;
        v201[9] = v204;
        v205 = v261;
        v201[10] = v269;
        v201[11] = v205;
        v206 = v260;
        v201[12] = v268;
        v201[13] = v206;
        v207 = v259;
        v201[14] = v267;
        v201[15] = v207;
        v208 = v258;
        v201[16] = v189;
        v201[17] = v208;
        v209 = v257;
        v201[18] = v188;
        v201[19] = v209;
        v210 = v255;
        v201[20] = v256;
        v201[21] = v210;
        v201[22] = v191;
        v201[23] = v192;
        v211 = v253;
        v201[24] = v254;
        v201[25] = v211;
        v201[26] = v252;
        v201[27] = v197;
        v201[28] = v198;
        *(v175 + 16) = v200 + 1;
        v177 += v249;
        v174 = v265 - 1;
      }

      while (v265 != 1);
      v53 = v248;
    }

    sub_262A100C8();
    v212 = v218;
    sub_262A2A258();
    v277 = 0;
    v278 = 0xE000000000000000;
    sub_262A2A6F8();
    MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A33690);
    v213 = v220;
    sub_262A2A738();
    sub_2629EA8C8(v277, v278);

    sub_262A2A1E8();
    sub_262A2A1C8();
    sub_262A2A198();

    (*(v219 + 8))(v212, v213);
    v277 = 0;
    v278 = 0xE000000000000000;
    sub_262A2A6F8();

    v277 = 0x4574655361746164;
    v278 = 0xEF203A73746E6576;
    v214 = MEMORY[0x26672EDD0](v53, v251);
    v216 = v215;

    MEMORY[0x26672ECF0](v214, v216);

    sub_2629EA8C8(v277, v278);

    return;
  }

  v242 = PlanScaffold;
  v54 = v51 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
  v55 = *(v43 + 72);
  v56 = (v265 + 48);
  v271 = (v266 + 16);
  v241 = (v266 + 56);
  v240 = v34 + 7;
  v217 = 0x8000000262A31CA0;
  v236 = (v266 + 32);
  v58 = v269;
  v57 = v270;
  v239 = v45;
  v238 = v55;
  v237 = (v265 + 48);
  while (1)
  {
    sub_262A15BAC(v54, v45, type metadata accessor for SIDWorkoutPlanType);
    if ((*v56)(v45, 1, v58) == 1)
    {
      goto LABEL_5;
    }

    sub_262A15C74(v45, v57, type metadata accessor for SIDPersonalizedWorkoutPlan);
    if (!*(v57 + 64))
    {
      break;
    }

    if (*(v57 + 64) != 1)
    {
      v265 = v54;
      v266 = v52;
      v248 = v53;
      v261 = *(v57 + 40);
      v59 = v242;
      v262 = swift_allocBox();
      v61 = v60;
      v234 = sub_2629AC344(MEMORY[0x277D84F90]);

      v233 = sub_262A26C70(v62);

      v235 = *(v58 + 32);
      v263 = *v271;
      v63 = v229;
      v64 = v272;
      (v263)(v229, v57 + v235, v272);
      v65 = *v241;
      (*v241)(v63, 0, 1, v64);
      v277 = *(v57 + 72);
      v66 = SIDWorkoutPlanSchedule.metricScaffold.getter();
      sub_2629E6220(v66);
      v232 = v67;

      v68 = *(v57 + 56);
      v69 = v59[12];
      v65(v61 + v69, 1, 1, v64);
      v70 = v61 + v59[13];
      *v70 = 0;
      *(v70 + 8) = 1;
      v71 = v59[14];
      v65(v61 + v71, 1, 1, v64);
      *v61 = v234;
      *(v61 + 8) = 0;
      v72 = v233;
      *(v61 + 16) = 0;
      *(v61 + 24) = v72;

      sub_2629BEB44(v63, v61 + v69);
      *(v61 + 32) = 0;
      *(v61 + v59[15]) = v232;
      *(v61 + 40) = 0;
      *(v61 + 48) = 0;
      *(v61 + v59[16]) = v261;
      *(v61 + 49) = 2;
      *(v61 + 56) = v68;
      sub_2629ADF2C(v61 + v71, &unk_27FF3CD10, &qword_262A2D5B0);
      v65(v61 + v71, 1, 1, v64);
      sub_2629ADF2C(v63, &unk_27FF3CD10, &qword_262A2D5B0);
      *(v61 + v59[17]) = MEMORY[0x277D84F90];
      *v70 = 0;
      *(v70 + 8) = 1;
      v74 = v267;
      v73 = v268;
      v75 = *(v268 + v267[9]);
      v233 = v75;
      swift_beginAccess();
      v76 = v61 + v59[13];
      *v76 = v75;
      *(v76 + 8) = 0;
      v77 = v59[14];
      sub_2629ADF2C(v61 + v77, &unk_27FF3CD10, &qword_262A2D5B0);
      v234 = *(v269 + 36);
      (v263)(v61 + v77, &v270[v234], v64);
      v65(v61 + v77, 0, 1, v64);
      v78 = v247;
      v79 = *(v73 + v74[8]);
      *(v61 + v59[17]) = v79;
      v261 = v79;

      v80 = sub_262A2A588();
      v81 = v226;
      (*(*(v80 - 8) + 56))(v226, 1, 1, v80);
      v82 = v264;
      v83 = v256;
      sub_262A15BAC(v264, v256, type metadata accessor for SIDPersonalizedPlanRequest);
      v84 = (*(v257 + 80) + 32) & ~*(v257 + 80);
      v85 = (v240 + v84) & 0xFFFFFFFFFFFFFFF8;
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      *(v86 + 24) = 0;
      sub_262A15C74(v83, v86 + v84, type metadata accessor for SIDPersonalizedPlanRequest);
      *(v86 + v85) = v262;

      sub_262A0C2E8(0, 0, v81, &unk_262A30BB0, v86);

      v87 = v258;
      v88 = v82 + *(v258 + 20);
      v89 = (v88 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 24));
      v90 = v89[1];
      v232 = *v89;
      v277 = v233;

      v233 = sub_262A2A868();
      v231 = v91;
      v92 = v78 + *(type metadata accessor for ResultPostProcessor(0) + 24);
      v57 = v270;
      v93 = *(v92 + 16);
      v230 = *(v92 + 8);
      v94 = v272;
      v95 = v263;
      (v263)(v253, &v270[v235], v272);
      v95(v254, v57 + v234, v94);
      v96 = *(v82 + *(v87 + 32));
      if (v96 <= 1)
      {
        v97 = v228;
        if (!v96)
        {
          v263 = 0xD000000000000011;
          v124 = v217;
          goto LABEL_49;
        }

        v235 = 0xE700000000000000;
        v124 = 0x6E65704F707061;
        v157 = &v280;
      }

      else
      {
        v97 = v228;
        if (v96 != 2)
        {
          v53 = v248;
          v45 = v239;
          if (v96 == 3)
          {
            v263 = 0x44676F6C61746163;
            v158 = 0xEE00646574656C65;
          }

          else
          {
            v263 = 0x616470556E616C70;
            v158 = 0xEB00000000646574;
          }

          v235 = v158;
LABEL_53:
          sub_2629ADF8C(v268 + v267[7], v97, &qword_27FF3C948, &unk_262A30B40);
          v159 = type metadata accessor for SIDUserOnboardingData(0);
          if ((*(*(v159 - 8) + 48))(v97, 1, v159) == 1)
          {

            sub_2629ADF2C(v97, &qword_27FF3C948, &unk_262A30B40);
            v160 = MEMORY[0x277D84FA0];
            v161 = *(MEMORY[0x277D84FA0] + 16);
            if (v161)
            {
LABEL_55:
              v162 = sub_2629A9C54(v161, 0);
              v163 = sub_262A13538(&v277, v162 + 4, v161, v160);
              sub_2629ADE08(v277);
              if (v163 != v161)
              {
                goto LABEL_75;
              }

LABEL_59:
              v164 = v245;
              *v245 = v232;
              v164[1] = v90;
              v165 = v231;
              v164[2] = v233;
              v164[3] = v165;
              v164[4] = v230;
              v164[5] = v93;
              v164[6] = 1819047278;
              v164[7] = 0xE400000000000000;
              v164[8] = 1819047278;
              v164[9] = 0xE400000000000000;
              v164[10] = 1851878512;
              v164[11] = 0xE400000000000000;
              v164[12] = 0x74655361746164;
              v164[13] = 0xE700000000000000;
              v164[14] = 1868785010;
              v164[15] = 0xE400000000000000;
              v164[16] = &unk_287533810;
              v166 = v251;
              v167 = *v236;
              v168 = v272;
              (*v236)(v164 + v251[13], v253, v272);
              v167(v164 + v166[14], v254, v168);
              *(v164 + v166[15]) = v261;
              v169 = (v164 + v166[16]);
              v170 = v235;
              *v169 = v263;
              v169[1] = v170;
              *(v164 + v166[17]) = v162;
              sub_262A15BAC(v164, v246, type metadata accessor for PlanDataSetEvent);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v49 = v260;
              v58 = v269;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v53 = sub_2629A8FE4(0, v53[2] + 1, 1, v53);
              }

              v52 = v266;
              v55 = v238;
              v173 = v53[2];
              v172 = v53[3];
              if (v173 >= v172 >> 1)
              {
                v53 = sub_2629A8FE4((v172 > 1), v173 + 1, 1, v53);
              }

              sub_262A15C14(v245, type metadata accessor for PlanDataSetEvent);
              v53[2] = v173 + 1;
              sub_262A15C74(v246, v53 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v173, type metadata accessor for PlanDataSetEvent);
              sub_262A15C14(v57, type metadata accessor for SIDPersonalizedWorkoutPlan);
LABEL_64:

              v54 = v265;
              v56 = v237;
              goto LABEL_5;
            }
          }

          else
          {
            v160 = *(v97 + *(v159 + 20));

            sub_262A15C14(v97, type metadata accessor for SIDUserOnboardingData);
            v161 = *(v160 + 16);
            if (v161)
            {
              goto LABEL_55;
            }
          }

          v162 = MEMORY[0x277D84F90];
          goto LABEL_59;
        }

        v263 = 0x6F54736472617761;
        v124 = 0xEB00000000747361;
LABEL_49:
        v157 = &v267;
      }

      *(v157 - 32) = v124;
      v53 = v248;
      v45 = v239;
      goto LABEL_53;
    }

    sub_262A15C14(v57, type metadata accessor for SIDPersonalizedWorkoutPlan);
LABEL_5:
    v54 += v55;
    if (!--v52)
    {
      goto LABEL_68;
    }
  }

  v248 = v53;
  v265 = v54;
  v266 = v52;
  v98 = v242;
  v99 = swift_allocBox();
  v101 = v100;
  sub_262A15BAC(v49, v100, type metadata accessor for SIDMetricCreatePlanScaffold);
  v103 = v267;
  v102 = v268;
  v104 = *(v268 + v267[9]);
  swift_beginAccess();
  v105 = v101 + v98[13];
  v261 = v104;
  *v105 = v104;
  *(v105 + 8) = 0;
  v106 = v98[14];
  sub_2629ADF2C(v101 + v106, &unk_27FF3CD10, &qword_262A2D5B0);
  v107 = *(v58 + 36);
  v108 = *v271;
  v262 = v107;
  v109 = v272;
  v108(v101 + v106, v57 + v107, v272);
  (*v241)(v101 + v106, 0, 1, v109);
  v110 = *(v102 + v103[8]);
  *(v101 + v98[17]) = v110;
  v263 = v110;

  v111 = sub_262A2A588();
  v112 = *(v111 - 8);
  v113 = v255;
  (*(v112 + 56))(v255, 1, 1, v111);
  v114 = v256;
  sub_262A15BAC(v264, v256, type metadata accessor for SIDPersonalizedPlanRequest);
  v115 = (*(v257 + 80) + 32) & ~*(v257 + 80);
  v116 = (v240 + v115) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  *(v117 + 16) = 0;
  *(v117 + 24) = 0;
  sub_262A15C74(v114, v117 + v115, type metadata accessor for SIDPersonalizedPlanRequest);
  *(v117 + v116) = v99;
  v118 = v225;
  sub_2629ADF8C(v113, v225, &qword_27FF3CC20, &qword_262A30BA0);
  LODWORD(v115) = (*(v112 + 48))(v118, 1, v111);
  v231 = v99;

  if (v115 == 1)
  {
    sub_2629ADF2C(v118, &qword_27FF3CC20, &qword_262A30BA0);
  }

  else
  {
    sub_262A2A578();
    (*(v112 + 8))(v118, v111);
  }

  v119 = v227;
  v120 = *(v117 + 16);
  swift_unknownObjectRetain();

  v53 = v248;
  if (v120)
  {
    swift_getObjectType();
    v121 = sub_262A2A568();
    v123 = v122;
    swift_unknownObjectRelease();
  }

  else
  {
    v121 = 0;
    v123 = 0;
  }

  sub_2629ADF2C(v255, &qword_27FF3CC20, &qword_262A30BA0);
  v125 = swift_allocObject();
  *(v125 + 16) = &unk_262A30BC0;
  *(v125 + 24) = v117;
  if (v123 | v121)
  {
    v273 = 0;
    v274 = 0;
    v275 = v121;
    v276 = v123;
  }

  swift_task_create();

  v126 = v258;
  v127 = v264;
  v128 = v264 + *(v258 + 20);
  v129 = (v128 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 24));
  v130 = v129[1];
  v235 = *v129;
  v277 = v261;

  v261 = sub_262A2A868();
  v234 = v131;
  v132 = v247 + *(type metadata accessor for ResultPostProcessor(0) + 24);
  v133 = *(v132 + 16);
  v233 = *(v132 + 8);
  v134 = v270;
  v135 = v272;
  v108(v249, &v270[*(v269 + 32)], v272);
  v108(v252, &v134[v262], v135);
  v136 = *(v127 + *(v126 + 32));
  if (v136 <= 1)
  {
    v45 = v239;
    if (!*(v127 + *(v126 + 32)))
    {
      v262 = 0xD000000000000011;
      v137 = v217;
      goto LABEL_33;
    }

    v232 = 0xE700000000000000;
    v137 = 0x6E65704F707061;
    v139 = &v279;
  }

  else
  {
    v45 = v239;
    if (v136 == 2)
    {
      v262 = 0x6F54736472617761;
      v138 = 7631713;
    }

    else
    {
      if (v136 == 3)
      {
        v262 = 0x44676F6C61746163;
        v137 = 0xEE00646574656C65;
        goto LABEL_33;
      }

      v262 = 0x616470556E616C70;
      v138 = 6579572;
    }

    v137 = v138 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_33:
    v139 = &v264;
  }

  *(v139 - 32) = v137;
  sub_2629ADF8C(v268 + v267[7], v119, &qword_27FF3C948, &unk_262A30B40);
  v140 = type metadata accessor for SIDUserOnboardingData(0);
  if ((*(*(v140 - 8) + 48))(v119, 1, v140) == 1)
  {

    sub_2629ADF2C(v119, &qword_27FF3C948, &unk_262A30B40);
    v141 = MEMORY[0x277D84FA0];
    v142 = *(MEMORY[0x277D84FA0] + 16);
    if (v142)
    {
      goto LABEL_36;
    }

LABEL_41:

    v143 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v141 = *(v119 + *(v140 + 20));

  sub_262A15C14(v119, type metadata accessor for SIDUserOnboardingData);
  v142 = *(v141 + 16);
  if (!v142)
  {
    goto LABEL_41;
  }

LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BED8, &qword_262A2B380);
  v143 = swift_allocObject();
  v144 = _swift_stdlib_malloc_size(v143);
  v145 = v144 - 32;
  if (v144 < 32)
  {
    v145 = v144 - 17;
  }

  v143[2] = v142;
  v143[3] = 2 * (v145 >> 4);
  v146 = sub_262A13538(&v277, v143 + 4, v142, v141);
  sub_2629ADE08(v277);
  if (v146 == v142)
  {
LABEL_42:
    v147 = v243;
    *v243 = v235;
    v147[1] = v130;
    v148 = v234;
    v147[2] = v261;
    v147[3] = v148;
    v147[4] = v233;
    v147[5] = v133;
    v147[6] = 1819047278;
    v147[7] = 0xE400000000000000;
    v147[8] = 1819047278;
    v147[9] = 0xE400000000000000;
    v147[10] = 1851878512;
    v147[11] = 0xE400000000000000;
    v147[12] = 0x74655361746164;
    v147[13] = 0xE700000000000000;
    v147[14] = 1868785010;
    v147[15] = 0xE400000000000000;
    v147[16] = &unk_2875337D0;
    v149 = v251;
    v150 = *v236;
    v151 = v272;
    (*v236)(v147 + v251[13], v249, v272);
    v150(v147 + v149[14], v252, v151);
    *(v147 + v149[15]) = v263;
    v152 = (v147 + v149[16]);
    v153 = v232;
    *v152 = v262;
    v152[1] = v153;
    *(v147 + v149[17]) = v143;
    sub_262A15BAC(v147, v244, type metadata accessor for PlanDataSetEvent);
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v49 = v260;
    v58 = v269;
    if ((v154 & 1) == 0)
    {
      v53 = sub_2629A8FE4(0, v53[2] + 1, 1, v53);
    }

    v57 = v270;
    v52 = v266;
    v55 = v238;
    v156 = v53[2];
    v155 = v53[3];
    if (v156 >= v155 >> 1)
    {
      v53 = sub_2629A8FE4((v155 > 1), v156 + 1, 1, v53);
    }

    sub_262A15C14(v243, type metadata accessor for PlanDataSetEvent);
    v53[2] = v156 + 1;
    sub_262A15C74(v244, v53 + ((*(v259 + 80) + 32) & ~*(v259 + 80)) + *(v259 + 72) * v156, type metadata accessor for PlanDataSetEvent);
    sub_262A15C14(v57, type metadata accessor for SIDPersonalizedWorkoutPlan);
    goto LABEL_64;
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

uint64_t sub_262A0C0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  type metadata accessor for SIDMetricCreatePlanScaffold(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_262A0C190, 0, 0);
}

uint64_t sub_262A0C190()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v3 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v5 = *(v4 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 64));
  swift_beginAccess();
  sub_262A15BAC(v2, v1, type metadata accessor for SIDMetricCreatePlanScaffold);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_262A15D70;
  v7 = v0[6];

  return v9(v7);
}

uint64_t sub_262A0C2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC20, &qword_262A30BA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2629ADF8C(a3, v25 - v10, &qword_27FF3CC20, &qword_262A30BA0);
  v12 = sub_262A2A588();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2629ADF2C(v11, &qword_27FF3CC20, &qword_262A30BA0);
  }

  else
  {
    sub_262A2A578();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_262A2A568();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_262A2A428() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2629ADF2C(a3, &qword_27FF3CC20, &qword_262A30BA0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2629ADF2C(a3, &qword_27FF3CC20, &qword_262A30BA0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_262A0C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  type metadata accessor for SIDMetricCreatePlanScaffold(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_262A0C688, 0, 0);
}

uint64_t sub_262A0C688()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v3 + *(type metadata accessor for SIDPersonalizedPlanRequest(0) + 20);
  v5 = *(v4 + *(type metadata accessor for SIDPersonalizedPlanDataProvider(0) + 64));
  swift_beginAccess();
  sub_262A15BAC(v2, v1, type metadata accessor for SIDMetricCreatePlanScaffold);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_262A0C7E0;
  v7 = v0[6];

  return v9(v7);
}

uint64_t sub_262A0C7E0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  sub_262A15C14(v1, type metadata accessor for SIDMetricCreatePlanScaffold);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_262A0C90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v90 = a2;
  v88 = a3;
  v99 = sub_262A29F38();
  *&v95 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v103 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_262A2A108();
  v100 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v111 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A8, &qword_262A30A50);
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v85 - v7;
  v102 = sub_262A29FD8();
  v85 = *(v102 - 8);
  v8 = MEMORY[0x28223BE20](v102);
  v110 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v101 = &v85 - v10;
  v11 = sub_262A2A168();
  MEMORY[0x28223BE20](v11 - 8);
  v107 = (&v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C998, &qword_262A2F8E8);
  MEMORY[0x28223BE20](v13 - 8);
  v106 = &v85 - v14;
  v15 = sub_262A2A058();
  v104 = *(v15 - 8);
  v105 = v15;
  MEMORY[0x28223BE20](v15);
  v98 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_262A2A128();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v113 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v24 = &v85 - v23;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = *(v22 + 72);
    v112 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v27 = a1 + v112;
    v28 = MEMORY[0x277D84F90];
    do
    {
      sub_262A15BAC(v27, v24, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      if (v24[*(v18 + 56)] == 7)
      {
        sub_262A15C14(v24, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      else
      {
        sub_262A15C74(v24, v21, type metadata accessor for PreprocessedUserHistoryWithMetadata);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v115 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2629CD8E0(0, *(v28 + 16) + 1, 1);
          v28 = v115;
        }

        v31 = *(v28 + 16);
        v30 = *(v28 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2629CD8E0((v30 > 1), v31 + 1, 1);
          v28 = v115;
        }

        *(v28 + 16) = v31 + 1;
        sub_262A15C74(v21, v28 + v112 + v31 * v26, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      }

      v27 += v26;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v115 = 0;
  v116 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000019, 0x8000000262A33CB0);
  v114 = *(v28 + 16);
  v32 = sub_262A2A868();
  MEMORY[0x26672ECF0](v32);

  MEMORY[0x26672ECF0](0xD000000000000028, 0x8000000262A33CD0);
  v33 = sub_262A036B8(v90);
  v93 = 0;
  v114 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  sub_2629ADBD8();
  v34 = sub_262A2A398();
  v36 = v35;

  MEMORY[0x26672ECF0](v34, v36);

  v37 = v92;
  sub_2629EA8C8(v115, v116);

  v39 = v104;
  v38 = v105;
  v40 = v98;
  (*(v104 + 104))(v98, *MEMORY[0x277CC9830], v105);
  sub_262A2A068();
  (*(v39 + 8))(v40, v38);
  sub_262A2A088();
  v41 = v106;
  sub_262A2A038();
  v42 = sub_262A2A048();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  sub_262A2A0D8();
  sub_262A2A148();
  sub_262A2A0F8();
  v43 = v37 + *(type metadata accessor for ResultPostProcessor(0) + 24);
  result = type metadata accessor for PlanGenerationContext(0);
  v45 = *(v43 + *(result + 44));
  if ((v45 & 0x8000000000000000) == 0)
  {
    v91 = v28;
    v47 = v101;
    v46 = v102;
    v89 = v45;
    if (!v45)
    {
LABEL_26:
      v115 = 0;
      v116 = 0xE000000000000000;
      sub_262A2A6F8();
      MEMORY[0x26672ECF0](0xD00000000000002DLL, 0x8000000262A33D00);
      v114 = v89;
      v78 = sub_262A2A868();
      MEMORY[0x26672ECF0](v78);

      MEMORY[0x26672ECF0](0xD00000000000001ELL, 0x8000000262A33D30);
      sub_2629EA8C8(v115, v116);

      v79 = v113;
      sub_262A0D6DC(v91, v113, v88);

      return (*(v86 + 8))(v79, v87);
    }

    v48 = 0;
    v49 = *MEMORY[0x277CC9940];
    v106 = (v100 + 104);
    v50 = (v100 + 8);
    v105 = (v85 + 48);
    v97 = (v85 + 32);
    v96 = *MEMORY[0x277CC9960];
    v98 = (v95 + 8);
    v107 = (v85 + 8);
    v104 = -v89;
    v95 = xmmword_262A2EA00;
    LODWORD(v112) = v49;
    v94 = (v100 + 8);
    v51 = (v100 + 104);
    while (1)
    {
      sub_262A29FC8();
      v52 = *v51;
      v53 = v111;
      v54 = v108;
      (*v51)(v111, v49, v108);
      v55 = v109;
      sub_262A2A0C8();
      (*v50)(v53, v54);
      if ((*v105)(v55, 1, v46) == 1)
      {
        (*v107)(v47, v46);
        sub_2629ADF2C(v55, &qword_27FF3C9A8, &qword_262A30A50);
      }

      else
      {
        (*v97)(v110, v55, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
        v56 = *(v100 + 72);
        v57 = (*(v100 + 80) + 32) & ~*(v100 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v95;
        v59 = v58 + v57;
        v52(v59, v112, v54);
        v60 = v113;
        v52((v59 + v56), v96, v54);
        sub_262A15860(v58);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v61 = v103;
        sub_262A2A0A8();

        v62 = sub_262A29ED8();
        if (v63 & 1) != 0 || (v64 = v62, v65 = sub_262A29EB8(), (v66))
        {
          (*v98)(v61, v99);
        }

        else
        {
          v69 = MEMORY[0x28223BE20](v65);
          *(&v85 - 4) = v60;
          *(&v85 - 3) = v64;
          *(&v85 - 2) = v69;
          v70 = v91;

          v71 = v93;
          v72 = sub_262A03C5C(sub_262A15CDC, (&v85 - 6), v70);
          v73 = *(v72 + 16);
          v93 = v71;
          if (v73)
          {
            v74 = sub_262A0DA1C(v72, v90);

            v75 = v74;
            v76 = *(v74 + 16);
            v77 = v103;
            if (v76)
            {
              v80 = v75;

              sub_262A0DC40(v80, &v115);

              (*v98)(v77, v99);
              v81 = *v107;
              v82 = v102;
              (*v107)(v110, v102);
              v81(v101, v82);
              v83 = v115;
              v115 = 0;
              v116 = 0xE000000000000000;
              sub_262A2A6F8();
              MEMORY[0x26672ECF0](0xD000000000000031, 0x8000000262A33D50);
              v114 = -v48;
              v84 = sub_262A2A868();
              MEMORY[0x26672ECF0](v84);

              sub_2629EA8C8(v115, v116);

              result = (*(v86 + 8))(v113, v87);
              *v88 = v83;
              return result;
            }

            (*v98)(v77, v99);
          }

          else
          {

            (*v98)(v103, v99);
          }
        }

        v67 = *v107;
        v46 = v102;
        (*v107)(v110, v102);
        v68 = v101;
        v67(v101, v46);
        v47 = v68;
        v50 = v94;
      }

      --v48;
      v49 = v112;
      if (v104 == v48)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_262A0D6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_262A29F38();
  v8 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v30 = v9;
    v31 = v8;
    v32 = a3;
    v29[0] = v3;
    v12 = *(type metadata accessor for PreprocessedUserHistoryWithMetadata(0) - 8);
    v29[1] = (*(v12 + 80) + 32) & ~*(v12 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
    v13 = sub_262A2A108();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_262A2EA00;
    v18 = v17 + v16;
    v19 = *(v14 + 104);
    v19(v18, *MEMORY[0x277CC9940], v13);
    v19(v18 + v15, *MEMORY[0x277CC9960], v13);
    sub_262A15860(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_262A2A0A8();

    v20 = sub_262A29ED8();
    if (v21 & 1) != 0 || (v22 = v20, v23 = sub_262A29EB8(), (v24))
    {
      v25 = sub_2629AC204(MEMORY[0x277D84F90]);
      result = (*(v30 + 8))(v11, v31);
      *v32 = v25;
    }

    else
    {
      v27 = MEMORY[0x28223BE20](v23);
      v29[-4] = a2;
      v29[-3] = v22;
      v29[-2] = v27;

      v28 = sub_262A03C5C(sub_262A15D54, &v29[-6], a1);
      sub_262A0DC40(v28, v32);

      return (*(v30 + 8))(v11, v31);
    }
  }

  else
  {
    result = sub_2629AC204(MEMORY[0x277D84F90]);
    *a3 = result;
  }

  return result;
}

uint64_t sub_262A0DA1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v8 + 72);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v19;
  v14 = MEMORY[0x277D84F90];
  do
  {
    sub_262A15BAC(v13, v10, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    if (sub_262A05E9C(v10[*(v4 + 64)], a2))
    {
      sub_262A15C74(v10, v7, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2629CD8E0(0, *(v14 + 16) + 1, 1);
        v14 = v20;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2629CD8E0((v16 > 1), v17 + 1, 1);
        v14 = v20;
      }

      *(v14 + 16) = v17 + 1;
      sub_262A15C74(v7, v14 + v19 + v17 * v12, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    }

    else
    {
      sub_262A15C14(v10, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    }

    v13 += v12;
    --v11;
  }

  while (v11);
  return v14;
}

uint64_t sub_262A0DC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BFF0, &qword_262A30C20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v70 = (&v68 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC50, &qword_262A30C28);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v68 - v10);
  v12 = type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v74 = v9;
  v75 = v3;
  v73 = v11;
  v80 = v12;
  v69 = v13;
  v76 = v16;
  v71 = a1;
  if (v16)
  {
    v79 = v4;
    v81[0] = MEMORY[0x277D84F90];
    sub_2629CD920(0, v16, 0);
    v12 = v80;
    v18 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v13 + 72);
    v20 = v81[0];
    do
    {
      sub_262A15BAC(v18, v15, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v21 = v15[v12[14]];
      if (v21 == 7)
      {
        goto LABEL_61;
      }

      v22 = 0xEA00000000003638;
      v23 = 0x3932343038373431;
      switch(v15[v12[16]])
      {
        case 1:
          v22 = 0xEA00000000003937;
          break;
        case 2:
          v22 = 0xEA00000000003438;
          break;
        case 3:
          v22 = 0xEA00000000003238;
          break;
        case 4:
          v22 = 0xEA00000000003633;
          v23 = 0x3532363037343631;
          break;
        case 5:
          v22 = 0xEA00000000003839;
          goto LABEL_14;
        case 6:
          v22 = 0xEA00000000003738;
          break;
        case 7:
          v22 = 0xEA00000000003739;
          goto LABEL_14;
        case 8:
          v22 = 0xEA00000000003038;
          break;
        case 9:
          v22 = 0xEA00000000003639;
LABEL_14:
          v23 = 0x3332373831363531;
          break;
        case 10:
          v22 = 0xEA00000000003338;
          break;
        case 11:
          v22 = 0xEA00000000003138;
          break;
        case 12:
          v22 = 0xEA00000000003635;
          v23 = 0x3032383934393431;
          break;
        case 13:
          v22 = 0xEA00000000003538;
          break;
        default:
          break;
      }

      v24 = qword_262A30C58[v21];
      sub_262A15C14(v15, type metadata accessor for PreprocessedUserHistoryWithMetadata);
      v81[0] = v20;
      v26 = v20[2];
      v25 = v20[3];
      v27 = v20;
      if (v26 >= v25 >> 1)
      {
        sub_2629CD920((v25 > 1), v26 + 1, 1);
        v12 = v80;
        v27 = v81[0];
      }

      v27[2] = v26 + 1;
      v28 = &v27[4 * v26];
      v28[4] = v24;
      v28[5] = MEMORY[0x277D84FA0];
      v28[6] = v23;
      v28[7] = v22;
      v18 += v19;
      --v16;
      v20 = v27;
    }

    while (v16);
    v9 = v74;
    v3 = v75;
    v11 = v73;
    v16 = v76;
    v17 = MEMORY[0x277D84F90];
    v4 = v79;
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v29 = 0;
  v82 = sub_2629AC204(v17);
  v77 = (v4 + 6);
  v78 = (v4 + 7);
  v72 = v20 + 4;
  v79 = v20;
  v30 = v16 == 0;
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_25:
  if (v30)
  {
    goto LABEL_58;
  }

  if (__OFADD__(v29, 1))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    sub_262A2A938();
    __break(1u);
    JUMPOUT(0x262A0E3F8);
  }

  v31 = v70;
  v32 = v71 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v29;
  v33 = *(v3 + 48);
  *v70 = v29;
  sub_262A15BAC(v32, v31 + v33, type metadata accessor for PreprocessedUserHistoryWithMetadata);
  sub_2629E2E14(v31, v9, &qword_27FF3BFF0, &qword_262A30C20);
  v34 = 0;
  ++v29;
  v12 = v80;
  while (1)
  {
    (*v78)(v9, v34, 1, v3);
    sub_2629E2E14(v9, v11, &qword_27FF3CC50, &qword_262A30C28);
    if ((*v77)(v11, 1, v3) == 1)
    {
      break;
    }

    v35 = *v11;
    v36 = v11 + *(v3 + 48);
    v37 = *(v36 + v12[7]);
    sub_262A15C14(v36, type metadata accessor for PreprocessedUserHistoryWithMetadata);
    v38 = v82;
    if (!v82[2] || (sub_2629CB134(v37, 0, 0, 0), (v39 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v81[0] = v38;
      v41 = sub_2629CB134(v37, 0, 0, 0);
      v43 = v38[2];
      v44 = (v42 & 1) == 0;
      v45 = __OFADD__(v43, v44);
      v46 = v43 + v44;
      if (v45)
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v47 = v42;
      if (v38[3] >= v46)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = v41;
          sub_2629CE828();
          v41 = v66;
        }
      }

      else
      {
        sub_2629D0B78(v46, isUniquelyReferenced_nonNull_native);
        v41 = sub_2629CB134(v37, 0, 0, 0);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_62;
        }
      }

      v20 = v79;
      v49 = v81[0];
      if (v47)
      {
        *(v81[0][7] + 8 * v41) = MEMORY[0x277D84F90];
      }

      else
      {
        v81[0][(v41 >> 6) + 8] |= 1 << v41;
        v50 = (v49[6] + 32 * v41);
        *v50 = v37;
        v50[1] = 0;
        v50[2] = 0;
        v50[3] = 0;
        *(v49[7] + 8 * v41) = MEMORY[0x277D84F90];
        v51 = v49[2];
        v45 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v45)
        {
          goto LABEL_60;
        }

        v49[2] = v52;
      }

      v82 = v49;
    }

    v54 = sub_262A04360(v81, v37, 0, 0, 0);
    v55 = *v53;
    if (*v53)
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_56;
      }

      if (v35 >= v20[2])
      {
        goto LABEL_57;
      }

      v56 = v53;
      v57 = &v72[4 * v35];
      v58 = *v57;
      v59 = v57[1];
      v60 = v57[2];
      v61 = v57[3];

      v62 = swift_isUniquelyReferenced_nonNull_native();
      *v56 = v55;
      if ((v62 & 1) == 0)
      {
        v55 = sub_2629A9244(0, *(v55 + 2) + 1, 1, v55);
        *v56 = v55;
      }

      v64 = *(v55 + 2);
      v63 = *(v55 + 3);
      if (v64 >= v63 >> 1)
      {
        v55 = sub_2629A9244((v63 > 1), v64 + 1, 1, v55);
        *v56 = v55;
      }

      *(v55 + 2) = v64 + 1;
      v65 = &v55[32 * v64];
      *(v65 + 4) = v58;
      *(v65 + 5) = v59;
      *(v65 + 6) = v60;
      *(v65 + 7) = v61;
      (v54)(v81, 0);
      v9 = v74;
      v3 = v75;
      v11 = v73;
      v20 = v79;
      v12 = v80;
    }

    else
    {
      (v54)(v81, 0);
      v12 = v80;
    }

    v16 = v76;
    v30 = v29 >= v76;
    if (v29 != v76)
    {
      goto LABEL_25;
    }

LABEL_28:
    v34 = 1;
    v29 = v16;
  }

  *v68 = v82;
  return result;
}

BOOL sub_262A0E430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v23 = a1;
  v24 = a2;
  v4 = sub_262A29F38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C9A0, &unk_262A2F8F0);
  v8 = sub_262A2A108();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_262A2EA00;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x277CC9940], v8);
  v14(v13 + v10, *MEMORY[0x277CC9960], v8);
  sub_262A15860(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  type metadata accessor for PreprocessedUserHistoryWithMetadata(0);
  sub_262A2A0A8();

  v15 = sub_262A29ED8();
  if ((v16 & 1) != 0 || v15 != v22)
  {
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v17 = sub_262A29EB8();
    v19 = v18;
    (*(v5 + 8))(v7, v4);
    if ((v19 & 1) == 0)
    {
      return v17 == v21;
    }
  }

  return 0;
}

uint64_t sub_262A0E6A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = sub_262A03A34(*a1);
  v168 = sub_262A272BC(v3);

  v4 = MEMORY[0x277D84F90];
  v171 = sub_2629ACBA8(MEMORY[0x277D84F90]);
  v196 = sub_2629ACCD8(v4);
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v193 = v2;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
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
      goto LABEL_158;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v14);
    ++v10;
    if (v8)
    {
      v10 = v14;
LABEL_4:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = v11 | (v10 << 6);
      v13 = *(*(v193 + 48) + 32 * v12);
      if (v13 < 7)
      {
        v15 = 0;
        v16 = *(*(v193 + 56) + 8 * v12);
        v180 = *(v16 + 16);
        v17 = v180 + 1;
        v18 = 32;
        while (--v17)
        {
          v19 = *(v16 + v18);
          v18 += 32;
          v20 = __OFADD__(v15, v19);
          v15 += v19;
          if (v20)
          {
            goto LABEL_153;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v194 = v171;
        sub_262A11BAC(v15, v13, isUniquelyReferenced_nonNull_native);
        v171 = v194;
        if (v180)
        {
          v22 = 0;
          v23 = (v16 + 56);
          v178 = v16;
          while (v22 < *(v16 + 16))
          {
            v186 = *(v23 - 3);
            v188 = v22;
            v26 = *(v23 - 1);
            v25 = *v23;
            v27 = v196;
            v28 = *(v196 + 16);
            v190 = *(v23 - 2);

            if (!v28 || (sub_2629CB0BC(v26, v25), (v29 & 1) == 0))
            {
              v30 = swift_isUniquelyReferenced_nonNull_native();
              v31 = v26;
              v32 = v30;
              v194 = v27;
              v33 = v31;
              v34 = sub_2629CB0BC(v31, v25);
              v36 = v27[2];
              v37 = (v35 & 1) == 0;
              v20 = __OFADD__(v36, v37);
              v38 = v36 + v37;
              if (v20)
              {
                goto LABEL_155;
              }

              v39 = v35;
              if (v27[3] >= v38)
              {
                if ((v32 & 1) == 0)
                {
                  v53 = v34;
                  sub_2629CE990();
                  v34 = v53;
                }

                v26 = v33;
              }

              else
              {
                sub_2629D0E40(v38, v32);
                v26 = v33;
                v34 = sub_2629CB0BC(v33, v25);
                if ((v39 & 1) != (v40 & 1))
                {
                  goto LABEL_161;
                }
              }

              v41 = v194;
              if (v39)
              {
                *(v194[7] + 8 * v34) = MEMORY[0x277D84F90];
              }

              else
              {
                v194[(v34 >> 6) + 8] |= 1 << v34;
                v42 = (v41[6] + 16 * v34);
                *v42 = v26;
                v42[1] = v25;
                *(v41[7] + 8 * v34) = MEMORY[0x277D84F90];
                v43 = v41[2];
                v20 = __OFADD__(v43, 1);
                v44 = v43 + 1;
                if (v20)
                {
                  goto LABEL_159;
                }

                v41[2] = v44;
              }

              v196 = v41;
            }

            v184 = v26;
            v45 = sub_262A04400(&v194, v26, v25);
            v47 = *v46;
            if (*v46)
            {
              v48 = v46;
              v182 = v45;

              v49 = swift_isUniquelyReferenced_nonNull_native();
              *v48 = v47;
              if ((v49 & 1) == 0)
              {
                v47 = sub_2629A9244(0, *(v47 + 2) + 1, 1, v47);
                *v48 = v47;
              }

              v51 = *(v47 + 2);
              v50 = *(v47 + 3);
              if (v51 >= v50 >> 1)
              {
                v47 = sub_2629A9244((v50 > 1), v51 + 1, 1, v47);
                *v48 = v47;
              }

              v16 = v178;
              *(v47 + 2) = v51 + 1;
              v52 = &v47[32 * v51];
              *(v52 + 4) = v186;
              *(v52 + 5) = v190;
              *(v52 + 6) = v184;
              *(v52 + 7) = v25;
              (v182)(&v194, 0);
              v24 = v188;
            }

            else
            {
              (v45)(&v194, 0);
              v16 = v178;
              v24 = v188;
            }

            v22 = v24 + 1;
            swift_bridgeObjectRelease_n();

            v23 += 4;
            if (v180 == v22)
            {
              goto LABEL_40;
            }
          }

          goto LABEL_154;
        }

LABEL_40:
      }

      goto LABEL_5;
    }
  }

  v55 = sub_262A041DC(v54);
  v57 = v56;

  if (v57)
  {
    v58 = 0;
  }

  else
  {
    v58 = v55;
  }

  v60 = sub_262A04604(v59);
  v62 = v61;

  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v60;
  }

  v167 = v58;
  if (v63 >= v58)
  {
    v166 = v63;
    v174 = v196 + 64;
    v64 = 1 << *(v196 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & *(v196 + 64);
    v172 = v196;
    v173 = (v64 + 63) >> 6;

    v67 = 0;
    v68 = MEMORY[0x277D84F98];
    v181 = MEMORY[0x277D84F90];
    v70 = v173;
    v69 = v174;
    if (!v66)
    {
      goto LABEL_52;
    }

    while (1)
    {
LABEL_56:
      v177 = v66;
      v179 = v67;
      v72 = __clz(__rbit64(v66)) | (v67 << 6);
      v73 = (*(v172 + 48) + 16 * v72);
      v175 = v73[1];
      v176 = *v73;
      v74 = *(*(v172 + 56) + 8 * v72);
      v195 = v68;
      v189 = *(v74 + 16);
      if (v189)
      {
        v187 = v74 + 32;

        v75 = 0;
        v76 = v193;
        v183 = v74;
        while (2)
        {
          if (v75 >= *(v74 + 16))
          {
            goto LABEL_147;
          }

          v77 = 0;
          v78 = (v187 + 32 * v75);
          v79 = *v78;
          v185 = v78[1];
          v80 = 1 << *(v76 + 32);
          if (v80 < 64)
          {
            v81 = ~(-1 << v80);
          }

          else
          {
            v81 = -1;
          }

          v82 = v81 & *(v76 + 64);
          v83 = v78[2];
          v84 = v78[3];
          v191 = v75 + 1;
          v85 = (v80 + 63) >> 6;
          while (1)
          {
LABEL_64:
            if (!v82)
            {
              while (1)
              {
                v86 = v77 + 1;
                if (__OFADD__(v77, 1))
                {
                  break;
                }

                if (v86 >= v85)
                {
                  v74 = v183;
                  v75 = v191;
                  goto LABEL_83;
                }

                v82 = *(v5 + 8 * v86);
                ++v77;
                if (v82)
                {
                  v77 = v86;
                  goto LABEL_69;
                }
              }

              __break(1u);
              goto LABEL_146;
            }

LABEL_69:
            v87 = __clz(__rbit64(v82));
            v82 &= v82 - 1;
            v88 = v87 | (v77 << 6);
            v89 = *(*(v76 + 56) + 8 * v88);
            v90 = *(v89 + 16);
            if (v90)
            {
              v91 = *(*(v76 + 48) + 32 * v88);
              v92 = (v89 + 56);
              while (1)
              {
                if (*(v92 - 3) == v79)
                {
                  v93 = *(v92 - 1) == v83 && *v92 == v84;
                  if (v93 || (sub_262A2A878() & 1) != 0)
                  {
                    break;
                  }
                }

                v92 += 4;
                if (!--v90)
                {
                  v76 = v193;
                  goto LABEL_64;
                }
              }

              v76 = v193;
              if (v91 <= 6)
              {
                break;
              }
            }
          }

          v94 = v195;
          if (v195[2] && (sub_2629D41BC(v91), (v95 & 1) != 0))
          {

            v96 = v185;
          }

          else
          {

            v96 = v185;

            v97 = swift_isUniquelyReferenced_nonNull_native();
            v194 = v94;
            sub_262A11FA4(MEMORY[0x277D84F90], v91, v97, sub_2629D41BC, sub_2629CDF00, sub_2629CF7DC, &type metadata for SIDWeekday);
            v195 = v194;
          }

          v74 = v183;
          v75 = v191;
          v99 = sub_262A04488(&v194, v91);
          v100 = *v98;
          if (*v98)
          {
            v101 = v98;
            v102 = swift_isUniquelyReferenced_nonNull_native();
            *v101 = v100;
            if ((v102 & 1) == 0)
            {
              v100 = sub_2629A9244(0, *(v100 + 2) + 1, 1, v100);
              *v101 = v100;
            }

            v104 = *(v100 + 2);
            v103 = *(v100 + 3);
            v105 = v104 + 1;
            if (v104 >= v103 >> 1)
            {
              v107 = sub_2629A9244((v103 > 1), v104 + 1, 1, v100);
              v105 = v104 + 1;
              v100 = v107;
              *v101 = v107;
            }

            *(v100 + 2) = v105;
            v106 = &v100[32 * v104];
            *(v106 + 4) = v79;
            *(v106 + 5) = v96;
            *(v106 + 6) = v83;
            *(v106 + 7) = v84;
            (v99)(&v194, 0);
            v75 = v191;
          }

          else
          {

            (v99)(&v194, 0);
          }

          v76 = v193;
LABEL_83:
          if (v75 != v189)
          {
            continue;
          }

          break;
        }

        v68 = v195;
        v108 = v195[2];
        if (!v108)
        {
          goto LABEL_108;
        }
      }

      else
      {

        v108 = *(v68 + 16);
        if (!v108)
        {
LABEL_108:
          v192 = MEMORY[0x277D84F90];
          v113 = *(v74 + 16);
          if (!v113)
          {
            goto LABEL_109;
          }

          goto LABEL_97;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3BF40, &qword_262A30C10);
      v109 = swift_allocObject();
      v110 = _swift_stdlib_malloc_size(v109);
      *(v109 + 16) = v108;
      *(v109 + 24) = 2 * v110 - 64;
      v192 = v109;
      v111 = sub_262A13A94(&v194, (v109 + 32), v108, v68);
      v112 = v194;

      sub_2629ADE08(v112);
      if (v111 != v108)
      {
        goto LABEL_156;
      }

      v113 = *(v74 + 16);
      if (!v113)
      {
LABEL_109:

        v114 = MEMORY[0x277D84F90];
        v119 = *(MEMORY[0x277D84F90] + 16);
        if (v119)
        {
          goto LABEL_102;
        }

        goto LABEL_110;
      }

LABEL_97:
      v194 = MEMORY[0x277D84F90];
      sub_2629CD840(0, v113, 0);
      v114 = v194;
      v115 = v194[2];
      v116 = 32;
      do
      {
        v117 = *(v74 + v116);
        v194 = v114;
        v118 = v114[3];
        if (v115 >= v118 >> 1)
        {
          sub_2629CD840((v118 > 1), v115 + 1, 1);
          v114 = v194;
        }

        v114[2] = v115 + 1;
        v114[v115 + 4] = v117;
        v116 += 32;
        ++v115;
        --v113;
      }

      while (v113);

      v119 = v114[2];
      if (v119)
      {
LABEL_102:
        v194 = MEMORY[0x277D84F90];
        sub_2629CD940(0, v119, 0);
        v120 = v194;
        v121 = v194[2];
        v122 = 2 * v121;
        v123 = 4;
        do
        {
          v124 = v114[v123];
          v194 = v120;
          v125 = v120[3];
          v126 = v121 + 1;
          if (v121 >= v125 >> 1)
          {
            sub_2629CD940((v125 > 1), v121 + 1, 1);
            v120 = v194;
          }

          v120[2] = v126;
          v127 = &v120[v122];
          v127[4] = v124;
          v127[5] = 1;
          v122 += 2;
          ++v123;
          v121 = v126;
          --v119;
        }

        while (v119);

        goto LABEL_111;
      }

LABEL_110:

      v120 = MEMORY[0x277D84F90];
LABEL_111:
      if (v120[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C028, &unk_262A2B4D0);
        v128 = sub_262A2A778();
        v129 = v120[2];
        v194 = v128;
        if (v129)
        {
          v130 = v129;
          v131 = 0;
          v132 = v120 + 5;
          do
          {
            v136 = v131 + 1;
            if (__OFADD__(v131, 1))
            {
              goto LABEL_148;
            }

            v138 = *(v132 - 1);
            v137 = *v132;
            v139 = sub_2629CB210(v138);
            v141 = v128[2];
            v142 = (v140 & 1) == 0;
            v20 = __OFADD__(v141, v142);
            v143 = v141 + v142;
            if (v20)
            {
              goto LABEL_149;
            }

            v144 = v140;
            if (v128[3] < v143)
            {
              sub_2629D0674(v143, 1);
              v139 = sub_2629CB210(v138);
              if ((v144 & 1) != (v145 & 1))
              {
                goto LABEL_160;
              }
            }

            v128 = v194;
            if (v144)
            {
              v133 = (v194[7] + 8 * v139);
              v135 = *v133 + v137;
              if (__OFADD__(*v133, v137))
              {
                goto LABEL_152;
              }
            }

            else
            {
              v194[(v139 >> 6) + 8] |= 1 << v139;
              *(v128[6] + 8 * v139) = v138;
              *(v128[7] + 8 * v139) = v137;
              v133 = v128 + 2;
              v134 = v128[2];
              v20 = __OFADD__(v134, 1);
              v135 = v134 + 1;
              if (v20)
              {
                goto LABEL_151;
              }
            }

            v132 += 2;
            *v133 = v135;
            ++v131;
          }

          while (v136 != v130);
        }
      }

      else
      {
        v128 = MEMORY[0x277D84F98];
        v194 = MEMORY[0x277D84F98];
      }

      v146 = v128[2];
      if (v146)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC40, &qword_262A30F60);
        v147 = swift_allocObject();
        v148 = _swift_stdlib_malloc_size(v147);
        v149 = v148 - 32;
        if (v148 < 32)
        {
          v149 = v148 - 17;
        }

        v147[2] = v146;
        v147[3] = 2 * (v149 >> 4);
        v150 = sub_262A13990(&v194, v147 + 4, v146, v128);
        v151 = v194;

        sub_2629ADE08(v151);
        if (v150 != v146)
        {
          goto LABEL_157;
        }
      }

      else
      {
        v147 = MEMORY[0x277D84F90];
      }

      v194 = v147;
      sub_262A1011C(&v194);

      v152 = v194;
      v153 = v194[2];
      if (v153)
      {
        v194 = MEMORY[0x277D84F90];
        sub_2629CD840(0, v153, 0);
        v154 = v194;
        v155 = v194[2];
        v156 = 4;
        do
        {
          v157 = v152[v156];
          v194 = v154;
          v158 = v154[3];
          if (v155 >= v158 >> 1)
          {
            sub_2629CD840((v158 > 1), v155 + 1, 1);
            v154 = v194;
          }

          v154[2] = v155 + 1;
          v154[v155 + 4] = v157;
          v156 += 2;
          ++v155;
          --v153;
        }

        while (v153);
      }

      else
      {

        v154 = MEMORY[0x277D84F90];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v181 = sub_2629A9020(0, *(v181 + 2) + 1, 1, v181);
      }

      v160 = *(v181 + 2);
      v159 = *(v181 + 3);
      if (v160 >= v159 >> 1)
      {
        v181 = sub_2629A9020((v159 > 1), v160 + 1, 1, v181);
      }

      *(v181 + 2) = v160 + 1;
      v66 = (v177 - 1) & v177;
      v161 = &v181[48 * v160];
      *(v161 + 4) = v176;
      *(v161 + 5) = v175;
      *(v161 + 6) = v154;
      v162 = MEMORY[0x277D84F90];
      *(v161 + 7) = MEMORY[0x277D84F90];
      *(v161 + 8) = v162;
      *(v161 + 9) = v192;

      v67 = v179;
      v68 = MEMORY[0x277D84F98];
      v70 = v173;
      v69 = v174;
      if (!v66)
      {
LABEL_52:
        while (1)
        {
          v71 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_150;
          }

          if (v71 >= v70)
          {

            v163 = v169 + *(type metadata accessor for ResultPostProcessor(0) + 24);
            result = type metadata accessor for PlanGenerationContext(0);
            v165 = *(v163 + *(result + 116));
            *a2 = v167;
            a2[1] = v166;
            a2[2] = v181;
            a2[3] = v166;
            a2[4] = v165;
            a2[5] = v168;
            return result;
          }

          v66 = *(v69 + 8 * v71);
          ++v67;
          if (v66)
          {
            v67 = v71;
            goto LABEL_56;
          }
        }
      }
    }
  }

LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  sub_262A2A938();
  __break(1u);
  MEMORY[0x26672F6A0](0);

  __break(1u);
LABEL_161:
  result = sub_262A2A938();
  __break(1u);
  return result;
}

uint64_t sub_262A0F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v70 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  MEMORY[0x28223BE20](v11 - 8);
  v71 = &v60 - v12;
  v13 = a3[1];
  v69 = *a3;
  v68 = v13;
  v14 = *(a3 + 5);
  v67 = *(a3 + 4);
  v66 = v14;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000033, 0x8000000262A33BA0);
  *&v77[0] = *(a4 + 16);
  v15 = sub_262A2A868();
  MEMORY[0x26672ECF0](v15);

  MEMORY[0x26672ECF0](0xD000000000000016, 0x8000000262A333C0);
  sub_2629EA8C8(v80, v81);

  v17 = sub_262A1FE30(v16);
  sub_262A0C90C(a1, v17, &v80);

  v18 = v80;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_262A2A6F8();

  v80 = 0xD000000000000030;
  v81 = 0x8000000262A33BE0;
  *&v77[0] = v18;
  v19 = SIDWorkoutPlanSchedule.description.getter();
  MEMORY[0x26672ECF0](v19);

  sub_2629EA8E0(v80, v81);

  v65 = v18;
  *&v77[0] = v18;
  v20 = v6;
  sub_262A0E6A4(v77, &v80);
  v21 = v80;
  v22 = v81;
  v23 = v82;
  v24 = v83;
  v26 = v84;
  v25 = v85;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_262A2A6F8();
  MEMORY[0x26672ECF0](0xD000000000000021, 0x8000000262A33C20);
  *&v77[0] = *(v18 + 16);
  v27 = sub_262A2A868();
  MEMORY[0x26672ECF0](v27);

  MEMORY[0x26672ECF0](0xD000000000000027, 0x8000000262A33C50);
  sub_2629EA8C8(v80, v81);

  LOBYTE(v80) = 0;
  v64 = sub_262A04710(&v80, v70);
  v63 = v28;
  v77[0] = v69;
  v77[1] = v68;
  v78 = v67;
  v79 = v66;
  *&v72 = v21;
  *(&v72 + 1) = v22;
  v73 = v23;
  v74 = v24;
  v75 = v26;
  v76 = v25;
  sub_262A0FCAC(v77, &v72, &v80);

  v29 = v80;
  v30 = v81;
  v66 = v80;
  v61 = v81;
  v32 = v82;
  v31 = v83;
  *&v69 = v82;
  v70 = v83;
  v33 = v84;
  v34 = v85;
  v60 = v84;
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_262A2A6F8();

  *&v77[0] = 0xD000000000000026;
  *(&v77[0] + 1) = 0x8000000262A33C80;
  v80 = v29;
  v81 = v30;
  v82 = v32;
  v83 = v31;
  v84 = v33;
  v85 = v34;
  v35 = SIDWorkoutPlanScaffold.description.getter();
  MEMORY[0x26672ECF0](v35);

  v62 = v20;
  sub_2629EA8E0(*&v77[0], *(&v77[0] + 1));

  v36 = v20 + *(type metadata accessor for ResultPostProcessor(0) + 24);
  v37 = *(type metadata accessor for PlanGenerationContext(0) + 24);
  v38 = *(type metadata accessor for SIDPersonalizedWorkoutPlan(0) + 32);
  v67 = v38;
  v39 = sub_262A2A018();
  v40 = *(v39 - 8);
  v41 = *(v40 + 16);
  v41(a5 + v38, v36 + v37, v39);
  v42 = v69;

  sub_262A2A008();
  v43 = v61;
  *(a5 + 16) = v66;
  *(a5 + 24) = v43;
  v44 = v70;
  *(a5 + 32) = v42;
  *(a5 + 40) = v44;
  *(a5 + 48) = v60;
  *(a5 + 56) = v34;
  *&v68 = v34;
  v45 = v63;
  *a5 = v64;
  *(a5 + 8) = v45;
  *(a5 + 64) = 0;
  *(a5 + 72) = v65;
  v80 = 0;
  v81 = 0xE000000000000000;

  sub_262A2A6F8();

  v80 = 0xD000000000000027;
  v81 = 0x8000000262A33850;
  v46 = SIDPersonalizedWorkoutPlan.description.getter();
  MEMORY[0x26672ECF0](v46);

  sub_2629EA8C8(v80, v81);

  v66 = sub_2629AC344(MEMORY[0x277D84F90]);

  v65 = sub_262A26C70(v47);

  v48 = v71;
  v41(v71, a5 + v67, v39);
  v49 = *(v40 + 56);
  v49(v48, 0, 1, v39);
  v80 = *(a5 + 72);
  v50 = SIDWorkoutPlanSchedule.metricScaffold.getter();
  sub_2629E6220(v50);
  v52 = v51;

  v53 = a5 + *(type metadata accessor for ConsistentWorkoutPlanResult(0) + 20);
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold(0);
  v55 = PlanScaffold[12];
  v49(v53 + v55, 1, 1, v39);
  v56 = PlanScaffold[14];
  v57 = v53 + PlanScaffold[13];
  v49(v53 + v56, 1, 1, v39);
  *v53 = v66;
  *(v53 + 8) = 0;
  v58 = v65;
  *(v53 + 16) = 0;
  *(v53 + 24) = v58;
  sub_2629BEB44(v48, v53 + v55);
  *(v53 + 32) = 0;
  *(v53 + PlanScaffold[15]) = v52;
  *(v53 + 40) = 0;
  *(v53 + 48) = 0;
  *(v53 + PlanScaffold[16]) = v70;
  *(v53 + 49) = 0;
  *(v53 + 56) = v68;
  sub_2629ADF2C(v53 + v56, &unk_27FF3CD10, &qword_262A2D5B0);
  v49(v53 + v56, 1, 1, v39);

  result = sub_2629ADF2C(v71, &unk_27FF3CD10, &qword_262A2D5B0);
  *(v53 + PlanScaffold[17]) = MEMORY[0x277D84F90];
  *v57 = 0;
  *(v57 + 8) = 1;
  return result;
}

void sub_262A0FCAC(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 2);
  v19 = *(a2 + 24);
  v20 = *a2;
  v21 = *(a2 + 5);
  v25 = *(v3 + 16);
  if (v25)
  {
    v4 = 0;
    v5 = *(a1 + 16);
    v24 = v3 + 32;
    v6 = -*(v5 + 16);
    v7 = MEMORY[0x277D84F90];
    v23 = *(a2 + 2);
    while (v4 < *(v3 + 16))
    {
      v8 = (v24 + 48 * v4);
      v9 = *v8;
      v10 = v8[1];
      v29 = v8[2];
      v26 = v8[4];
      v27 = v8[3];
      v28 = v8[5];
      ++v4;
      v11 = -1;
      v12 = (v5 + 64);
      while (v6 + v11 != -1)
      {
        if (++v11 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v14 = *(v12 - 1);
        v13 = *v12;
        if (*(v12 - 4) != v9 || *(v12 - 3) != v10)
        {
          v12 += 6;
          if ((sub_262A2A878() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v14 = v27;

      v13 = v26;
LABEL_14:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2629A9020(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_2629A9020((v16 > 1), v17 + 1, 1, v7);
      }

      *(v7 + 2) = v17 + 1;
      v18 = &v7[48 * v17];
      *(v18 + 4) = v9;
      *(v18 + 5) = v10;
      *(v18 + 6) = v29;
      *(v18 + 7) = v14;
      *(v18 + 8) = v13;
      *(v18 + 9) = v28;
      v3 = v23;
      if (v4 == v25)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_21:
    *a3 = v20;
    *(a3 + 16) = v7;
    *(a3 + 24) = v19;
    *(a3 + 40) = v21;
  }
}

uint64_t sub_262A0FED8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_262A0FFD0;

  return v6(a1);
}

uint64_t sub_262A0FFD0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_262A100C8()
{
  result = qword_27FF3CC28;
  if (!qword_27FF3CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CC28);
  }

  return result;
}

uint64_t sub_262A1011C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_262A1F380(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_262A2A858();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[16 * i + 40];
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
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 16;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3CC48, &qword_262A30C18);
      v7 = sub_262A2A548();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_262A10278(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}