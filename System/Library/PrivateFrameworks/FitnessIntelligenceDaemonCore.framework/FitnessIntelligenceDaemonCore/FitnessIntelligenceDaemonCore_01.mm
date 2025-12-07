uint64_t sub_1D0B357E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for Daemon(uint64_t a1)
{
  result = qword_1EE052BF8;
  if (!qword_1EE052BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0B358F0(uint64_t a1)
{
  result = sub_1D0B63970();
  if (v2 <= 0x3F)
  {
    result = sub_1D0B640C0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D0B35A30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D0B63490();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static TrainingLoadContext.make(for:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B640C0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1D0B63C50();
  v3[8] = swift_task_alloc();
  v5 = sub_1D0B63C30();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF8, &qword_1D0B65878);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B00, &qword_1D0B65880);
  v3[16] = swift_task_alloc();
  v6 = sub_1D0B63610();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B08, &qword_1D0B65888);
  v3[22] = swift_task_alloc();
  v7 = sub_1D0B636E0();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B35D5C, 0, 0);
}

uint64_t sub_1D0B35D5C()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 112) + **(v3 + 112));
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1D0B35E8C;
  v5 = v0[22];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_1D0B35E8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D0B35F88, 0, 0);
}

uint64_t sub_1D0B35F88()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &qword_1EC5F9B08;
    v5 = &qword_1D0B65888;
LABEL_5:
    sub_1D0B2B620(v3, v4, v5);
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[16];
  (*(v2 + 32))(v0[25], v3, v1);
  sub_1D0B636D0();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v3 = v0[16];
    (*(v0[24] + 8))(v0[25], v0[23]);
    v4 = &qword_1EC5F9B00;
    v5 = &qword_1D0B65880;
    goto LABEL_5;
  }

  v14 = v0[20];
  v15 = v0[21];
  v16 = v0[17];
  v17 = v0[18];
  (*(v17 + 32))(v15, v0[16], v16);
  v18 = *(v17 + 16);
  v18(v14, v15, v16);
  v19 = (*(v17 + 88))(v14, v16);
  if (v19 == *MEMORY[0x1E69A2E00])
  {
    v20 = v0[14];
    v21 = v0[9];
    v22 = v0[10];
    v23 = MEMORY[0x1E699E350];
LABEL_20:
    (*(v22 + 104))(v20, *v23, v21);
    (*(v22 + 56))(v20, 0, 1, v21);
    goto LABEL_21;
  }

  if (v19 == *MEMORY[0x1E69A2DF0])
  {
    v20 = v0[14];
    v21 = v0[9];
    v22 = v0[10];
    v23 = MEMORY[0x1E699E340];
    goto LABEL_20;
  }

  if (v19 == *MEMORY[0x1E69A2DE0])
  {
    v20 = v0[14];
    v21 = v0[9];
    v22 = v0[10];
    v23 = MEMORY[0x1E699E330];
    goto LABEL_20;
  }

  if (v19 == *MEMORY[0x1E69A2DE8])
  {
    v20 = v0[14];
    v21 = v0[9];
    v22 = v0[10];
    v23 = MEMORY[0x1E699E338];
    goto LABEL_20;
  }

  if (v19 == *MEMORY[0x1E69A2DF8])
  {
    v20 = v0[14];
    v21 = v0[9];
    v22 = v0[10];
    v23 = MEMORY[0x1E699E348];
    goto LABEL_20;
  }

  v55 = v0[20];
  v56 = v0[17];
  v57 = v0[18];
  (*(v0[10] + 56))(v0[14], 1, 1, v0[9]);
  (*(v57 + 8))(v55, v56);
LABEL_21:
  v24 = v0[15];
  v25 = v0[13];
  v26 = v0[9];
  v27 = v0[10];
  sub_1D0B36614(v0[14], v24);
  sub_1D0B36684(v24, v25);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v28 = v0[21];
    v29 = v0[19];
    v30 = v0[17];
    sub_1D0B2B620(v0[13], &qword_1EC5F9AF8, &qword_1D0B65878);
    sub_1D0B63F70();
    v18(v29, v28, v30);
    v31 = sub_1D0B640A0();
    v32 = sub_1D0B644D0();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[18];
    v34 = v0[19];
    v36 = v0[17];
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      v38 = sub_1D0B63600();
      v62 = *(v35 + 8);
      v62(v34, v36);
      *(v37 + 4) = v38;
      _os_log_impl(&dword_1D0B1E000, v31, v32, "Unhandled TrainingLoadBand: %ld", v37, 0xCu);
      MEMORY[0x1D387E1B0](v37, -1, -1);
    }

    else
    {
      v62 = *(v35 + 8);
      v62(v0[19], v0[17]);
    }

    v46 = v31;
    v47 = v0[24];
    v61 = v0[25];
    v48 = v0[23];
    v49 = v0[21];
    v50 = v0[17];
    v51 = v0[15];
    v52 = v0[6];
    v53 = v0[7];
    v54 = v0[5];

    (*(v52 + 8))(v53, v54);
    sub_1D0B2B620(v51, &qword_1EC5F9AF8, &qword_1D0B65878);
    v62(v49, v50);
    (*(v47 + 8))(v61, v48);
    goto LABEL_6;
  }

  v39 = v0[24];
  v60 = v0[23];
  v63 = v0[25];
  v40 = v0[18];
  v58 = v0[17];
  v59 = v0[21];
  v41 = v0[15];
  v42 = v0[12];
  v43 = v0[10];
  v44 = v0[11];
  v45 = v0[9];
  (*(v43 + 32))(v42, v0[13], v45);
  (*(v43 + 16))(v44, v42, v45);
  sub_1D0B63C40();
  sub_1D0B63D50();
  (*(v43 + 8))(v42, v45);
  sub_1D0B2B620(v41, &qword_1EC5F9AF8, &qword_1D0B65878);
  (*(v40 + 8))(v59, v58);
  (*(v39 + 8))(v63, v60);
  v9 = 0;
LABEL_7:
  v10 = v0[2];
  v11 = sub_1D0B63D60();
  (*(*(v11 - 8) + 56))(v10, v9, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D0B36614(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF8, &qword_1D0B65878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0B36684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AF8, &qword_1D0B65878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D0B366F4(uint64_t *a1, int a2)
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

uint64_t sub_1D0B3673C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D0B36798()
{
  v1[27] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B10, &qword_1D0B65968);
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B18, &qword_1D0B65970);
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  v4 = sub_1D0B63CA0();
  v1[34] = v4;
  v1[35] = *(v4 - 8);
  v1[36] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B20, &qword_1D0B65978);
  v1[37] = v5;
  v1[38] = *(v5 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B28, &unk_1D0B65980);
  v1[42] = v6;
  v1[43] = *(v6 - 8);
  v1[44] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9990, &unk_1D0B65DB0);
  v1[45] = v7;
  v1[46] = *(v7 - 8);
  v1[47] = swift_task_alloc();
  v8 = sub_1D0B640C0();
  v1[48] = v8;
  v1[49] = *(v8 - 8);
  v1[50] = swift_task_alloc();
  sub_1D0B643F0();
  v1[51] = sub_1D0B643E0();
  v10 = sub_1D0B64390();
  v1[52] = v10;
  v1[53] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D0B36B08, v10, v9);
}

uint64_t sub_1D0B36B08(uint64_t a1)
{
  v3 = *(v1 + 392);
  v2 = *(v1 + 400);
  v5 = *(v1 + 376);
  v4 = *(v1 + 384);
  v6 = *(v1 + 368);
  v7 = *(v1 + 216);
  sub_1D0B63F70();
  sub_1D0B64090();
  (*(v3 + 8))(v2, v4);
  v8 = *(v7 + 40);
  *(v1 + 432) = v8;
  v8;
  sub_1D0B639A0();
  v9 = *(v7 + 16);
  *(v1 + 440) = v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AE8, &qword_1D0B65990);
  *(v1 + 40) = v43;
  v10 = sub_1D0B3A650(&qword_1EE052C40, &qword_1EC5F9AE8, &qword_1D0B65990, MEMORY[0x1E699DD20]);
  *(v1 + 16) = v9;
  v42 = v10;
  *(v1 + 48) = v10;
  v46 = v9;
  swift_retain_n();
  sub_1D0B64410();
  v36 = *MEMORY[0x1E699DCE0];
  (*(v6 + 104))(v5);
  *(v1 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B30, &unk_1D0B65DF0);
  v11 = sub_1D0B63C90();
  *(v1 + 456) = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  *(v1 + 464) = v13;
  v14 = *(v12 + 80);
  *(v1 + 920) = v14;
  v15 = (v14 + 32) & ~v14;
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D0B65890;
  v41 = v15;
  v16 = v45 + v15;
  v17 = *MEMORY[0x1E699E370];
  v18 = *(v12 + 104);
  *(v1 + 472) = v18;
  *(v1 + 480) = (v12 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v40 = v17;
  v18(v16);
  v39 = *MEMORY[0x1E699E378];
  v18(v16 + v13);
  v38 = *MEMORY[0x1E699E3B8];
  v18(v16 + 2 * v13);
  v37 = *MEMORY[0x1E699E3C8];
  v18(v16 + 3 * v13);
  v35 = *MEMORY[0x1E699E3F0];
  v18(v16 + 4 * v13);
  v34 = *MEMORY[0x1E699E390];
  v18(v16 + 5 * v13);
  v33 = *MEMORY[0x1E699E3E0];
  v18(v16 + 6 * v13);
  v32 = *MEMORY[0x1E699E380];
  v18(v16 + 7 * v13);
  v31 = *MEMORY[0x1E699E388];
  v18(v16 + 8 * v13);
  (v18)(v16 + 9 * v13, *MEMORY[0x1E699E398], v11);
  v30 = *MEMORY[0x1E699E3F8];
  v18(v16 + 10 * v13);
  v29 = *MEMORY[0x1E699E418];
  v18(v16 + 11 * v13);
  (v18)(v16 + 12 * v13, *MEMORY[0x1E699E450], v11);
  (v18)(v16 + 13 * v13, *MEMORY[0x1E699E3C0], v11);
  v28 = *MEMORY[0x1E699E3D8];
  v18(v16 + 14 * v13);
  (v18)(v16 + 15 * v13, *MEMORY[0x1E699E440], v11);
  v44 = *MEMORY[0x1E699E3D0];
  v18(v16 + 16 * v13);
  sub_1D0B63930();
  v19 = *(v1 + 344);
  v26 = *(v1 + 352);
  v27 = *(v1 + 336);
  v20 = *(v1 + 216);
  (*(*(v1 + 368) + 8))(*(v1 + 376), *(v1 + 360));

  __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  *(v1 + 488) = *(v20 + 32);
  sub_1D0B638F0();
  *(v1 + 80) = v43;
  *(v1 + 88) = v42;
  *(v1 + 56) = v46;
  sub_1D0B64410();
  (*(v19 + 104))(v26, v36, v27);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D0B658A0;
  v22 = v21 + v41;
  (v18)(v21 + v41, v40, v11);
  (v18)(v22 + v13, v39, v11);
  (v18)(v22 + 2 * v13, v38, v11);
  (v18)(v22 + 3 * v13, v37, v11);
  (v18)(v22 + 4 * v13, v35, v11);
  (v18)(v22 + 5 * v13, v34, v11);
  (v18)(v22 + 6 * v13, v33, v11);
  (v18)(v22 + 7 * v13, v32, v11);
  (v18)(v22 + 8 * v13, v31, v11);
  (v18)(v22 + 9 * v13, v30, v11);
  (v18)(v22 + 10 * v13, v29, v11);
  (v18)(v22 + 11 * v13, v28, v11);
  (v18)(v22 + 12 * v13, v44, v11);
  sub_1D0B63930();
  *(v1 + 496) = 0;
  (*(*(v1 + 344) + 8))(*(v1 + 352), *(v1 + 336));

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));
  sub_1D0B3A650(&qword_1EE052C38, &qword_1EC5F9AE8, &qword_1D0B65990, MEMORY[0x1E699DD28]);
  v24 = sub_1D0B64390();
  *(v1 + 504) = v24;
  *(v1 + 512) = v23;

  return MEMORY[0x1EEE6DFA0](sub_1D0B37464, v24, v23);
}

uint64_t sub_1D0B37464()
{
  v0[65] = sub_1D0B63990();
  v1 = v0[52];
  v2 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B374CC, v1, v2);
}

uint64_t sub_1D0B374CC()
{
  v1 = *(v0 + 464);
  v14 = *(v0 + 456);
  v15 = *(v0 + 472);
  v2 = *(v0 + 432);
  v3 = *(v0 + 328);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AC0, &unk_1D0B65740);
  *(v0 + 128) = sub_1D0B3A650(&qword_1EE052C30, &qword_1EC5F9AC0, &unk_1D0B65740, MEMORY[0x1E699DD38]);
  *(v0 + 96) = v2;
  v7 = *MEMORY[0x1E699DCD0];
  v8 = *(v5 + 104);
  *(v0 + 528) = v8;
  *(v0 + 536) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v3, v7, v4);
  v9 = swift_allocObject();
  *(v0 + 544) = v9;
  *(v9 + 16) = xmmword_1D0B658B0;
  *(v0 + 924) = *MEMORY[0x1E699E3A0];
  v10 = v9 + v6;
  v15(v9 + v6);
  (v15)(v10 + v1, *MEMORY[0x1E699E448], v14);
  *(v0 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B38, &qword_1D0B65998);
  *(v0 + 560) = sub_1D0B3A650(&qword_1EE052C58, &qword_1EC5F9B38, &qword_1D0B65998, MEMORY[0x1E699DCD8]);
  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B376CC, v12, v11);
}

uint64_t sub_1D0B376CC()
{
  v1 = v0[62];
  sub_1D0B63920();
  v0[71] = v1;
  v2 = v0[41];
  v3 = v0[37];
  v4 = v0[38];
  v7 = *(v4 + 8);
  v5 = v4 + 8;
  v6 = v7;
  if (v1)
  {
    v6(v2, v3);

    v8 = v0[52];
    v9 = v0[53];
    v10 = sub_1D0B39014;
  }

  else
  {
    v0[72] = v6;
    v0[73] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v2, v3);

    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    v8 = v0[63];
    v9 = v0[64];
    v10 = sub_1D0B377C8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1D0B377C8()
{
  v0[74] = sub_1D0B63990();
  v1 = v0[52];
  v2 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B37830, v1, v2);
}

uint64_t sub_1D0B37830()
{
  v13 = *(v0 + 924);
  v10 = *(v0 + 528);
  v12 = *(v0 + 472);
  v11 = *(v0 + 456);
  v1 = *(v0 + 320);
  v2 = (*(v0 + 920) + 32) & ~*(v0 + 920);
  v3 = *(*(v0 + 216) + 24);
  *(v0 + 600) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AC8, &qword_1D0B659A0);
  *(v0 + 608) = v4;
  *(v0 + 160) = v4;
  v5 = sub_1D0B3A650(&qword_1EE052C60, &qword_1EC5F9AC8, &qword_1D0B659A0, MEMORY[0x1E699DCC0]);
  *(v0 + 616) = v5;
  *(v0 + 168) = v5;
  *(v0 + 136) = v3;
  swift_retain_n();
  sub_1D0B64420();
  *(v0 + 928) = *MEMORY[0x1E699DCC8];
  v10(v1);
  v6 = swift_allocObject();
  *(v0 + 624) = v6;
  *(v6 + 16) = xmmword_1D0B658C0;
  v12(v6 + v2, v13, v11);
  v8 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B379E0, v8, v7);
}

uint64_t sub_1D0B379E0()
{
  v1 = v0[71];
  sub_1D0B63920();
  v0[79] = v1;
  if (v1)
  {
    v2 = v0[72];
    v3 = v0[40];
    v4 = v0[37];

    v2(v3, v4);
    v5 = v0[52];
    v6 = v0[53];
    v7 = sub_1D0B39104;
  }

  else
  {
    (v0[72])(v0[40], v0[37]);

    __swift_destroy_boxed_opaque_existential_0(v0 + 17);
    v5 = v0[63];
    v6 = v0[64];
    v7 = sub_1D0B37AF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1D0B37AF8()
{
  v0[80] = sub_1D0B63990();
  v1 = v0[52];
  v2 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B37B60, v1, v2);
}

uint64_t sub_1D0B37B60(uint64_t a1)
{
  v15 = *(v1 + 928);
  v2 = *(v1 + 600);
  v14 = *(v1 + 528);
  v3 = *(v1 + 472);
  v5 = *(v1 + 456);
  v4 = *(v1 + 464);
  v6 = *(v1 + 312);
  v7 = *(v1 + 296);
  v8 = (*(v1 + 920) + 32) & ~*(v1 + 920);
  *(v1 + 200) = *(v1 + 608);
  *(v1 + 176) = v2;
  sub_1D0B64410();
  v14(v6, v15, v7);
  v9 = swift_allocObject();
  *(v1 + 648) = v9;
  *(v9 + 16) = xmmword_1D0B658D0;
  v10 = v9 + v8;
  v3(v10, *MEMORY[0x1E699E420], v5);
  v3(v10 + v4, *MEMORY[0x1E699E408], v5);
  v3(v10 + 2 * v4, *MEMORY[0x1E699E3E8], v5);
  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B37CE4, v12, v11);
}

uint64_t sub_1D0B37CE4()
{
  v1 = *(v0 + 632);
  sub_1D0B63920();
  *(v0 + 656) = v1;
  (*(v0 + 576))(*(v0 + 312), *(v0 + 296));

  if (v1)
  {
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = sub_1D0B391F4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    v2 = *(v0 + 416);
    v3 = *(v0 + 424);
    v4 = sub_1D0B37DB0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1D0B37DB0()
{
  v18 = *(v0 + 928);
  v19 = *(v0 + 432);
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  v7 = *(v0 + 216);
  *(v0 + 664) = *v7;
  *(v0 + 672) = sub_1D0B638A0();
  v8 = *MEMORY[0x1E699E468];
  v9 = *(v1 + 104);
  *(v0 + 680) = v9;
  *(v0 + 688) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v2, v8, v3);
  sub_1D0B64430();
  v10 = *(v6 + 104);
  *(v0 + 696) = v10;
  *(v0 + 704) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v4, v18, v5);
  *(v0 + 712) = *(v7 + 8);
  v11 = swift_allocObject();
  *(v0 + 720) = v11;
  v13 = *(v7 + 16);
  v12 = *(v7 + 32);
  v11[1] = *v7;
  v11[2] = v13;
  v11[3] = v12;
  v14 = v19;

  *(v0 + 728) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B40, &qword_1D0B659B8);
  *(v0 + 736) = sub_1D0B3A650(&qword_1EE052C50, &qword_1EC5F9B40, &qword_1D0B659B8, MEMORY[0x1E699DCD8]);
  v16 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B37FA4, v16, v15);
}

uint64_t sub_1D0B37FA4()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v6 = v0[32];
  sub_1D0B63910();

  v7 = *(v6 + 8);
  v0[93] = v7;
  v0[94] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  v8 = *(v2 + 8);
  v0[95] = v8;
  v0[96] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = v0[52];
  v10 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B380B0, v9, v10);
}

uint64_t sub_1D0B380B0()
{
  v15 = *(v0 + 696);
  v1 = *(v0 + 680);
  v2 = *(v0 + 928);
  v16 = *(v0 + 432);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  *(v0 + 776) = sub_1D0B638A0();
  v1(v3, *MEMORY[0x1E699E460], v4);
  sub_1D0B64430();
  v15(v5, v2, v6);
  v8 = swift_allocObject();
  *(v0 + 784) = v8;
  v10 = v7[1];
  v9 = v7[2];
  v8[1] = *v7;
  v8[2] = v10;
  v8[3] = v9;
  v11 = v16;

  v13 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38234, v13, v12);
}

uint64_t sub_1D0B38234()
{
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  sub_1D0B63910();

  v2(v5, v6);
  v1(v3, v4);
  v7 = v0[52];
  v8 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38328, v7, v8);
}

uint64_t sub_1D0B38328()
{
  v15 = *(v0 + 696);
  v1 = *(v0 + 680);
  v2 = *(v0 + 928);
  v16 = *(v0 + 432);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  *(v0 + 792) = sub_1D0B638A0();
  v1(v3, *MEMORY[0x1E699E478], v4);
  sub_1D0B64430();
  v15(v5, v2, v6);
  v8 = swift_allocObject();
  *(v0 + 800) = v8;
  v10 = v7[1];
  v9 = v7[2];
  v8[1] = *v7;
  v8[2] = v10;
  v8[3] = v9;
  v11 = v16;

  v13 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B384AC, v13, v12);
}

uint64_t sub_1D0B384AC()
{
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  sub_1D0B63910();

  v2(v5, v6);
  v1(v3, v4);
  v7 = v0[52];
  v8 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B385A0, v7, v8);
}

uint64_t sub_1D0B385A0()
{
  v15 = *(v0 + 696);
  v1 = *(v0 + 680);
  v2 = *(v0 + 928);
  v16 = *(v0 + 432);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  *(v0 + 808) = sub_1D0B638A0();
  v1(v3, *MEMORY[0x1E699E470], v4);
  sub_1D0B64410();
  v15(v5, v2, v6);
  v8 = swift_allocObject();
  *(v0 + 816) = v8;
  v10 = v7[1];
  v9 = v7[2];
  v8[1] = *v7;
  v8[2] = v10;
  v8[3] = v9;
  v11 = v16;

  v13 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38720, v13, v12);
}

uint64_t sub_1D0B38720()
{
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  sub_1D0B63910();

  v2(v5, v6);
  v1(v3, v4);
  v7 = v0[52];
  v8 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38814, v7, v8);
}

uint64_t sub_1D0B38814()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 432);
  v3 = *(v0 + 232);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  *(v0 + 824) = sub_1D0B63870();
  *(v0 + 932) = 3;
  sub_1D0B64400();
  v7 = *(v3 + 104);
  *(v0 + 832) = v7;
  *(v0 + 840) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v4, v1, v6);
  v8 = swift_allocObject();
  *(v0 + 848) = v8;
  v10 = v5[1];
  v9 = v5[2];
  v8[1] = *v5;
  v8[2] = v10;
  v8[3] = v9;
  v11 = v2;

  *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B48, &qword_1D0B65A00);
  *(v0 + 864) = sub_1D0B3A650(&qword_1EE052C48, &qword_1EC5F9B48, &qword_1D0B65A00, MEMORY[0x1E699DCD8]);
  v13 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B389C0, v13, v12);
}

uint64_t sub_1D0B389C0()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_1D0B63910();

  v4 = *(v2 + 8);
  v0[109] = v4;
  v0[110] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = v0[52];
  v6 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38A98, v5, v6);
}

uint64_t sub_1D0B38A98()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 928);
  v3 = *(v0 + 432);
  v4 = *(v0 + 240);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  *(v0 + 888) = sub_1D0B63870();
  *(v0 + 933) = 1;
  sub_1D0B64430();
  v1(v4, v2, v5);
  v7 = swift_allocObject();
  *(v0 + 896) = v7;
  v9 = v6[1];
  v8 = v6[2];
  v7[1] = *v6;
  v7[2] = v9;
  v7[3] = v8;
  v10 = v3;

  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38BF0, v12, v11);
}

uint64_t sub_1D0B38BF0()
{
  v1 = v0[109];
  v2 = v0[30];
  v3 = v0[28];
  sub_1D0B63910();

  v1(v2, v3);
  v4 = v0[52];
  v5 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38CB4, v4, v5);
}

uint64_t sub_1D0B38CB4()
{
  v15 = *(v0 + 696);
  v1 = *(v0 + 680);
  v2 = *(v0 + 928);
  v16 = *(v0 + 432);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  *(v0 + 904) = sub_1D0B638A0();
  v1(v3, *MEMORY[0x1E699E458], v4);
  sub_1D0B64430();
  v15(v5, v2, v6);
  v8 = swift_allocObject();
  *(v0 + 912) = v8;
  v10 = v7[1];
  v9 = v7[2];
  v8[1] = *v7;
  v8[2] = v10;
  v8[3] = v9;
  v11 = v16;

  v13 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B38E38, v13, v12);
}

uint64_t sub_1D0B38E38()
{
  v1 = v0[95];
  v2 = v0[93];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[31];
  sub_1D0B63910();

  v2(v5, v6);
  v1(v3, v4);
  v7 = v0[52];
  v8 = v0[53];

  return MEMORY[0x1EEE6DFA0](sub_1D0B38F2C, v7, v8);
}

uint64_t sub_1D0B38F2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B39014()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B39104()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B391F4()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B392E4(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B393A4, 0, 0);
}

uint64_t sub_1D0B393A4()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699E450], v0[3]);
  v4 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D0B39474;
  v2 = v0[5];

  return v4(v2);
}

uint64_t sub_1D0B39474()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B3A820, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D0B3961C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B396DC, 0, 0);
}

uint64_t sub_1D0B396DC()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699E440], v0[3]);
  v4 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D0B397AC;
  v2 = v0[5];

  return v4(v2);
}

uint64_t sub_1D0B397AC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B39954, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D0B39954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B399B8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B39A78, 0, 0);
}

uint64_t sub_1D0B39A78()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E699E3C0], v0[3]);
  v4 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1D0B39474;
  v2 = v0[5];

  return v4(v2);
}

uint64_t sub_1D0B39B48(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1D0B63C90();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B39C14, 0, 0);
}

uint64_t sub_1D0B39C14()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v0[7] = *(v0[2] + 16);
  v4 = *MEMORY[0x1E699E450];
  v5 = *(v3 + 104);
  v0[8] = v5;
  v0[9] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v9 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1D0B39CF8;
  v7 = v0[6];

  return v9(v7);
}

uint64_t sub_1D0B39CF8()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v2[11] = v0;

  v6 = *(v4 + 8);
  v2[12] = v6;
  v2[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1D0B3A100;
  }

  else
  {
    v7 = sub_1D0B39E7C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D0B39E7C()
{
  (*(v0 + 64))(*(v0 + 40), *MEMORY[0x1E699E3D8], *(v0 + 24));
  v4 = (*MEMORY[0x1E699DD18] + MEMORY[0x1E699DD18]);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D0B39F44;
  v2 = *(v0 + 40);

  return v4(v2);
}

uint64_t sub_1D0B39F44()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B3A16C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D0B3A100()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B3A16C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B3A1D8()
{
  v2 = v0[1];
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = v0[2];
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B3A278;

  return sub_1D0B36798();
}

uint64_t sub_1D0B3A278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D0B3A36C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

uint64_t sub_1D0B3A400()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2E1C4;

  return sub_1D0B3961C(v0 + 16);
}

uint64_t sub_1D0B3A494()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

uint64_t sub_1D0B3A528()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B399B8(v0 + 16);
}

uint64_t sub_1D0B3A5BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B39B48(v0 + 16);
}

uint64_t sub_1D0B3A650(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1D0B3A698()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D0B3A78C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D0B2FC90;

  return sub_1D0B392E4(v0 + 16);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D0B3A858@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v9;
    v23 = a5;
    v14 = *(v9 + 16);
    v13 = v9 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v8);
      v18 = v25(v11);
      if (v5)
      {
        return (*v15)(v11, v8);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v8);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v9 = v22;
        a5 = v23;
        return (*(v9 + 56))(a5, v19, 1, v8);
      }
    }

    v9 = v22;
    a5 = v23;
    (*(v22 + 32))(v23, v11, v8);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v9 + 56))(a5, v19, 1, v8);
}

uint64_t sub_1D0B3AA2C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D0B640C0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1D0B64040();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1D0B633F0();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_1D0B64010();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = sub_1D0B64030();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3AC98, 0, 0);
}

uint64_t sub_1D0B3AC98()
{
  sub_1D0B63F40();
  sub_1D0B64000();
  v1 = sub_1D0B64020();
  v2 = sub_1D0B64540();
  if (sub_1D0B64570())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1D0B63FF0();
    _os_signpost_emit_with_name_impl(&dword_1D0B1E000, v1, v2, v4, "resolveContext", "", v3, 2u);
    MEMORY[0x1D387E1B0](v3, -1, -1);
  }

  v18 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[20];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[4];

  (*(v9 + 16))(v7, v8, v10);
  sub_1D0B64070();
  swift_allocObject();
  v0[25] = sub_1D0B64060();
  v12 = *(v9 + 8);
  v0[26] = v12;
  v0[27] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v8, v10);
  v13 = *(v6 + 8);
  v0[28] = v13;
  v0[29] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v18, v5);
  sub_1D0B633E0();
  v14 = v11[3];
  v15 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v14);
  v19 = (*(v15 + 104) + **(v15 + 104));
  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_1D0B3AF20;

  return v19(v14, v15);
}

uint64_t sub_1D0B3AF20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_1D0B3B78C;
  }

  else
  {
    v4 = sub_1D0B3B034;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B3B034()
{
  v1 = v0[32];
  v2 = sub_1D0B2FCA4(v0[3]);
  v0[33] = v2;
  if (v1)
  {
    v3 = v0[31];
    [v3 invalidate];

    (*(v0[12] + 8))(v0[15], v0[11]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v0[15];
    v8 = v0[4];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B50, &qword_1D0B65AE0);
    v10 = swift_task_alloc();
    v0[34] = v10;
    v10[2] = v6;
    v10[3] = v8;
    v10[4] = v7;
    v11 = swift_task_alloc();
    v0[35] = v11;
    *v11 = v0;
    v11[1] = sub_1D0B3B25C;

    return MEMORY[0x1EEE6DD58](v0 + 2, v9, v9, 0, 0, &unk_1D0B65AF0, v10, v9);
  }
}

uint64_t sub_1D0B3B25C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1D0B3B898;
  }

  else
  {

    v2 = sub_1D0B3B380;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B3B380()
{
  v39 = v0[2];
  sub_1D0B63F40();
  v1 = sub_1D0B64020();
  sub_1D0B64050();
  v2 = sub_1D0B64530();
  if (sub_1D0B64570())
  {
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[8];

    sub_1D0B64080();

    if ((*(v3 + 88))(v4, v5) == *MEMORY[0x1E69E93E8])
    {
      v6 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
      v6 = "";
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_1D0B63FF0();
    _os_signpost_emit_with_name_impl(&dword_1D0B1E000, v1, v2, v8, "resolveContext", v6, v7, 2u);
    MEMORY[0x1D387E1B0](v7, -1, -1);
  }

  v9 = v0[28];
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[21];
  v13 = v0[18];
  v14 = v0[16];
  v36 = v0[14];
  v15 = v0[12];
  v35 = v0[11];
  v37 = v0[15];

  v10(v13, v14);
  v9(v11, v12);
  sub_1D0B63F70();
  (*(v15 + 16))(v36, v37, v35);

  v16 = sub_1D0B640A0();
  v17 = sub_1D0B644F0();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[14];
  if (v18)
  {
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[11];
    v23 = v0[3];
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = *(v23 + 16);

    *(v24 + 12) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v26 = v25;
    v27 = *(v21 + 8);
    v27(v20, v22);
    v38 = v27;
    v27(v19, v22);
    *(v24 + 14) = v26;
    _os_log_impl(&dword_1D0B1E000, v16, v17, "Resolved all %ld queries in %fs", v24, 0x16u);
    MEMORY[0x1D387E1B0](v24, -1, -1);
  }

  else
  {
    v28 = v0[11];
    v29 = v0[12];

    v38 = *(v29 + 8);
    v38(v19, v28);
  }

  v30 = v0[31];
  v31 = v0[15];
  v32 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  [v30 invalidate];

  v38(v31, v32);

  v33 = v0[1];

  return v33(v39);
}

uint64_t sub_1D0B3B78C()
{

  (*(v0[12] + 8))(v0[15], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B3B898()
{
  v1 = v0[31];

  [v1 invalidate];

  (*(v0[12] + 8))(v0[15], v0[11]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D0B3B9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = sub_1D0B633F0();
  v5[27] = v6;
  v7 = *(v6 - 8);
  v5[28] = v7;
  v5[29] = *(v7 + 64);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B58, &qword_1D0B65AF8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B60, &qword_1D0B65B00);
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3BB4C, 0, 0);
}

uint64_t sub_1D0B3BB4C()
{
  v25 = sub_1D0B45BAC();
  v1 = *(v25 + 16);
  if (v1)
  {
    v2 = (v25 + 32);
    v29 = **(v0 + 184);
    v30 = *(v0 + 224);
    v3 = sub_1D0B64450();
    v4 = *(v3 - 8);
    v28 = *(v4 + 56);
    v27 = (v4 + 48);
    v26 = (v4 + 8);
    do
    {
      v35 = v1;
      v6 = *(v0 + 256);
      v33 = *(v0 + 248);
      v7 = *(v0 + 240);
      v8 = v3;
      v10 = *(v0 + 208);
      v9 = *(v0 + 216);
      v11 = *(v0 + 200);
      v32 = *(v0 + 192);
      v34 = v2;
      v31 = *v2;
      v28(v6, 1, 1, v8);
      sub_1D0B45EB8(v11, v0 + 16);
      (*(v30 + 16))(v7, v10, v9);
      v12 = (*(v30 + 80) + 144) & ~*(v30 + 80);
      v13 = swift_allocObject();
      *(v13 + 40) = v31;
      v14 = *(v0 + 64);
      *(v13 + 88) = *(v0 + 48);
      *(v13 + 104) = v14;
      *(v13 + 120) = *(v0 + 80);
      v15 = *(v0 + 32);
      *(v13 + 56) = *(v0 + 16);
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = v32;
      *(v13 + 136) = *(v0 + 96);
      *(v13 + 72) = v15;
      (*(v30 + 32))(v13 + v12, v7, v9);
      sub_1D0B2B870(v6, v33, &qword_1EC5F9B58, &qword_1D0B65AF8);
      v3 = v8;
      v16 = (*v27)(v33, 1, v8);

      v17 = *(v0 + 248);
      if (v16 == 1)
      {
        sub_1D0B2B620(*(v0 + 248), &qword_1EC5F9B58, &qword_1D0B65AF8);
      }

      else
      {
        sub_1D0B64440();
        (*v26)(v17, v8);
      }

      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v18 = sub_1D0B64390();
        v20 = v19;
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0;
        v20 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B50, &qword_1D0B65AE0);
      v21 = v20 | v18;
      if (v20 | v18)
      {
        v21 = v0 + 104;
        *(v0 + 104) = 0;
        *(v0 + 112) = 0;
        *(v0 + 120) = v18;
        *(v0 + 128) = v20;
      }

      v5 = *(v0 + 256);
      *(v0 + 136) = 1;
      *(v0 + 144) = v21;
      *(v0 + 152) = v29;
      swift_task_create();

      sub_1D0B2B620(v5, &qword_1EC5F9B58, &qword_1D0B65AF8);
      v2 = v34 + 1;
      v1 = v35 - 1;
    }

    while (v35 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B50, &qword_1D0B65AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F8, &qword_1D0B668C0);
  sub_1D0B64470();
  *(v0 + 288) = MEMORY[0x1E69E7CC0];
  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  *v22 = v0;
  v22[1] = sub_1D0B3BFA4;
  v23 = *(v0 + 264);

  return MEMORY[0x1EEE6DAD8](v0 + 160, 0, 0, v23, v0 + 168);
}

uint64_t sub_1D0B3BFA4()
{

  if (v0)
  {

    v1 = sub_1D0B3C308;
  }

  else
  {
    v1 = sub_1D0B3C0BC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D0B3C0BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5[20];
  v7 = v5[36];
  if (v6)
  {
    v8 = *(v6 + 16);
    v9 = *(v7 + 16);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v5[36];
      if (isUniquelyReferenced_nonNull_native && v10 <= v12[3] >> 1)
      {
        if (*(v6 + 16))
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v20 = v9 + v8;
        }

        else
        {
          v20 = v9;
        }

        v12 = sub_1D0B2CD34(isUniquelyReferenced_nonNull_native, v20, 1, v5[36]);
        if (*(v6 + 16))
        {
LABEL_6:
          v13 = (v12[3] >> 1) - v12[2];
          a1 = sub_1D0B639F0();
          if (v13 >= v8)
          {
            swift_arrayInitWithCopy();

            if (!v8)
            {
              goto LABEL_18;
            }

            v14 = v12[2];
            v15 = __OFADD__(v14, v8);
            v16 = v14 + v8;
            if (!v15)
            {
              v12[2] = v16;
              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }
      }

      if (!v8)
      {
LABEL_18:
        v5[36] = v12;
        v21 = swift_task_alloc();
        v5[37] = v21;
        *v21 = v5;
        v21[1] = sub_1D0B3BFA4;
        a4 = v5[33];
        a5 = v5 + 21;
        a1 = v5 + 20;
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6DAD8](a1, a2, a3, a4, a5);
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v17 = v5[22];
  (*(v5[34] + 8))(v5[35], v5[33], a3, a4, a5);
  *v17 = v7;

  v18 = v5[1];

  return v18();
}

uint64_t sub_1D0B3C308()
{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B3C3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[34] = a7;
  v8[35] = a8;
  v8[32] = a4;
  v8[33] = a5;
  v8[31] = a1;
  v9 = sub_1D0B63A60();
  v8[36] = v9;
  v8[37] = *(v9 - 8);
  v8[38] = swift_task_alloc();
  v10 = sub_1D0B640C0();
  v8[39] = v10;
  v8[40] = *(v10 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v11 = sub_1D0B633F0();
  v8[44] = v11;
  v8[45] = *(v11 - 8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3C588, 0, 0);
}

uint64_t sub_1D0B3C588(uint64_t a1)
{
  v41 = v1;
  v2 = *(v1 + 256);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v2 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v7 = *(v1 + 264);
      sub_1D0B357E4(v5, v1 + 16);
      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      if (swift_getDynamicType() == v7)
      {
        sub_1D0B20A40((v1 + 16), v1 + 56);
        v40 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D0B23FB8(0, *(v6 + 16) + 1, 1);
          v6 = v40;
        }

        v9 = *(v6 + 16);
        v8 = *(v6 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D0B23FB8((v8 > 1), v9 + 1, 1);
          v6 = v40;
        }

        *(v6 + 16) = v9 + 1;
        sub_1D0B20A40((v1 + 56), v6 + 40 * v9 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      }

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 416) = v6;
  v10 = *(v6 + 16);
  *(v1 + 424) = v10;
  if (v10)
  {
    sub_1D0B633E0();
    sub_1D0B63F70();

    v11 = sub_1D0B640A0();
    v12 = sub_1D0B644F0();

    if (os_log_type_enabled(v11, v12))
    {
      v37 = v12;
      log = v11;
      v13 = *(v1 + 296);
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      v40 = v4;
      *v14 = 136315138;
      v15 = v6 + 32;
      do
      {
        v16 = *(v1 + 304);
        v17 = *(v1 + 288);
        sub_1D0B357E4(v15, v1 + 176);
        v19 = *(v1 + 200);
        v18 = *(v1 + 208);
        __swift_project_boxed_opaque_existential_1((v1 + 176), v19);
        (*(v18 + 32))(v19, v18);
        v20 = sub_1D0B63A30();
        (*(v13 + 8))(v16, v17);
        __swift_destroy_boxed_opaque_existential_0((v1 + 176));
        sub_1D0B3EB90(v20);
        v15 += 40;
        --v10;
      }

      while (v10);
      v21 = *(v1 + 344);
      v23 = *(v1 + 312);
      v22 = *(v1 + 320);
      v24 = MEMORY[0x1D387D5D0](v40, MEMORY[0x1E69E6158]);
      v26 = v25;

      v27 = sub_1D0B22738(v24, v26, &v39);

      *(v14 + 4) = v27;
      _os_log_impl(&dword_1D0B1E000, log, v37, "Resolving queries %s...", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1D387E1B0](v36, -1, -1);
      MEMORY[0x1D387E1B0](v14, -1, -1);

      v28 = *(v22 + 8);
      v28(v21, v23);
    }

    else
    {
      v31 = *(v1 + 344);
      v32 = *(v1 + 312);
      v33 = *(v1 + 320);

      v28 = *(v33 + 8);
      v28(v31, v32);
    }

    *(v1 + 432) = v28;
    v34 = swift_task_alloc();
    *(v1 + 440) = v34;
    *v34 = v1;
    v34[1] = sub_1D0B3CA04;
    v35 = *(v1 + 280);

    return sub_1D0B3D518(v6, v35);
  }

  else
  {

    **(v1 + 248) = v4;

    v29 = *(v1 + 8);

    return v29();
  }
}

uint64_t sub_1D0B3CA04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {
    v4 = sub_1D0B3CF94;
  }

  else
  {
    v4 = sub_1D0B3CB18;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B3CB18(uint64_t a1)
{
  v58 = v1;
  v2 = *(v1 + 408);
  v4 = *(v1 + 392);
  v3 = *(v1 + 400);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  v7 = *(v1 + 280);
  sub_1D0B63F70();
  v8 = *(v6 + 16);
  v8(v3, v2, v5);
  v8(v4, v7, v5);

  v9 = sub_1D0B640A0();
  v10 = sub_1D0B644F0();

  if (os_log_type_enabled(v9, v10))
  {
    v53 = v10;
    log = v9;
    v11 = *(v1 + 416);
    v12 = *(v1 + 296);
    v13 = swift_slowAlloc();
    v14 = 0;
    v51 = swift_slowAlloc();
    v56 = v51;
    v52 = v13;
    *v13 = 136315650;
    v57 = MEMORY[0x1E69E7CC0];
    v15 = v11 + 32;
    v16 = (v12 + 8);
    do
    {
      v17 = *(v1 + 424);
      v18 = *(v1 + 304);
      v19 = *(v1 + 288);
      sub_1D0B357E4(v15, v1 + 136);
      ++v14;
      v20 = *(v1 + 160);
      v21 = *(v1 + 168);
      __swift_project_boxed_opaque_existential_1((v1 + 136), v20);
      (*(v21 + 32))(v20, v21);
      v22 = sub_1D0B63A30();
      (*v16)(v18, v19);
      __swift_destroy_boxed_opaque_existential_0((v1 + 136));
      sub_1D0B3EB90(v22);
      v15 += 40;
    }

    while (v14 != v17);
    v49 = *(v1 + 432);
    v50 = *(v1 + 408);
    v23 = *(v1 + 392);
    v24 = *(v1 + 400);
    v25 = *(v1 + 384);
    v27 = *(v1 + 352);
    v26 = *(v1 + 360);
    v47 = *(v1 + 312);
    v48 = *(v1 + 336);

    v28 = MEMORY[0x1D387D5D0](v57, MEMORY[0x1E69E6158]);
    v30 = v29;

    v31 = sub_1D0B22738(v28, v30, &v56);

    *(v52 + 1) = v31;
    *(v52 + 6) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v33 = v32;
    v34 = *(v26 + 8);
    v34(v25, v27);
    v34(v24, v27);
    *(v52 + 14) = v33;
    *(v52 + 11) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v36 = v35;
    v34(v25, v27);
    v34(v23, v27);
    *(v52 + 3) = v36;
    _os_log_impl(&dword_1D0B1E000, log, v53, "Resolved queries %s in %fs ; total %fs", v52, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1D387E1B0](v51, -1, -1);
    MEMORY[0x1D387E1B0](v52, -1, -1);

    v49(v48, v47);
    v34(v50, v27);
  }

  else
  {
    v37 = *(v1 + 432);
    loga = *(v1 + 408);
    v39 = *(v1 + 392);
    v38 = *(v1 + 400);
    v40 = *(v1 + 352);
    v41 = *(v1 + 360);
    v42 = *(v1 + 336);
    v43 = *(v1 + 312);

    v44 = *(v41 + 8);
    v44(v39, v40);
    v44(v38, v40);
    v37(v42, v43);
    v44(loga, v40);
  }

  **(v1 + 248) = *(v1 + 448);

  v45 = *(v1 + 8);

  return v45();
}

uint64_t sub_1D0B3CF94(uint64_t a1)
{
  v67 = v1;
  v62 = *(v1 + 456);
  v2 = *(v1 + 408);
  v4 = *(v1 + 368);
  v3 = *(v1 + 376);
  v5 = *(v1 + 352);
  v6 = *(v1 + 360);
  v7 = *(v1 + 280);
  sub_1D0B63F70();
  v8 = *(v6 + 16);
  v8(v3, v2, v5);
  v8(v4, v7, v5);

  v9 = v62;
  v10 = sub_1D0B640A0();
  v11 = sub_1D0B644D0();

  v12 = os_log_type_enabled(v10, v11);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v60 = v11;
    v63 = v10;
    v14 = *(v1 + 416);
    v15 = *(v1 + 296);
    v16 = swift_slowAlloc();
    v17 = 0;
    v58 = swift_slowAlloc();
    v65 = v58;
    v59 = v16;
    *v16 = 136315906;
    v66 = v13;
    v18 = v14 + 32;
    v19 = (v15 + 8);
    do
    {
      v20 = *(v1 + 424);
      v21 = *(v1 + 304);
      v22 = *(v1 + 288);
      sub_1D0B357E4(v18, v1 + 96);
      ++v17;
      v23 = *(v1 + 120);
      v24 = *(v1 + 128);
      __swift_project_boxed_opaque_existential_1((v1 + 96), v23);
      (*(v24 + 32))(v23, v24);
      v25 = sub_1D0B63A30();
      (*v19)(v21, v22);
      __swift_destroy_boxed_opaque_existential_0((v1 + 96));
      sub_1D0B3EB90(v25);
      v18 += 40;
    }

    while (v17 != v20);
    v26 = *(v1 + 384);
    v52 = *(v1 + 376);
    v27 = *(v1 + 360);
    v53 = *(v1 + 368);
    v54 = *(v1 + 456);
    v28 = *(v1 + 352);
    v56 = *(v1 + 328);
    v57 = *(v1 + 432);
    v55 = *(v1 + 312);

    v29 = MEMORY[0x1D387D5D0](v66, MEMORY[0x1E69E6158]);
    v31 = v30;

    v32 = sub_1D0B22738(v29, v31, &v65);

    *(v59 + 1) = v32;
    *(v59 + 6) = 2080;
    swift_getErrorValue();
    v33 = *(*(v1 + 224) - 8);
    swift_task_alloc();
    (*(v33 + 16))();
    v34 = sub_1D0B642A0();
    v36 = v35;

    v37 = sub_1D0B22738(v34, v36, &v65);

    *(v59 + 14) = v37;
    *(v59 + 11) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v39 = v38;
    v40 = *(v27 + 8);
    v40(v26, v28);
    v40(v52, v28);
    *(v59 + 3) = v39;
    *(v59 + 16) = 2048;
    sub_1D0B633E0();
    sub_1D0B63330();
    v42 = v41;
    v40(v26, v28);
    v40(v53, v28);
    *(v59 + 34) = v42;
    _os_log_impl(&dword_1D0B1E000, v63, v60, "Error when resolving: %s, error %s. Failed in %fs ; total %fs", v59, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D387E1B0](v58, -1, -1);
    MEMORY[0x1D387E1B0](v59, -1, -1);

    v57(v56, v55);
    v43 = v54;
  }

  else
  {
    v61 = *(v1 + 432);
    v64 = *(v1 + 456);
    v45 = *(v1 + 368);
    v44 = *(v1 + 376);
    v46 = *(v1 + 352);
    v47 = *(v1 + 360);
    v48 = *(v1 + 328);
    v49 = *(v1 + 312);

    v40 = *(v47 + 8);
    v40(v45, v46);
    v40(v44, v46);
    v61(v48, v49);
    v43 = v64;
  }

  v40(*(v1 + 408), *(v1 + 352));
  **(v1 + 248) = MEMORY[0x1E69E7CC0];

  v50 = *(v1 + 8);

  return v50();
}

uint64_t sub_1D0B3D518(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A10, &qword_1D0B65678);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = sub_1D0B63DB0();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = sub_1D0B639F0();
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A20, &qword_1D0B65680);
  v3[31] = v7;
  v3[32] = *(v7 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v8 = sub_1D0B63EB0();
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3D788, 0, 0);
}

uint64_t sub_1D0B3D788()
{
  *(v0 + 96) = *(v0 + 136);

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B68, &qword_1D0B65B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B70, &qword_1D0B65B30);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 104);
    *(v0 + 304) = v3;
    sub_1D0B357E4(v2 + 40, v0 + 56);
    v4 = *(v0 + 80);
    v5 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v4);
    v6 = *(v3 + 16);
    *(v0 + 312) = v6;
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v43 = v5;
      v45 = v4;
      v8 = *(v0 + 288);
      v9 = *(v0 + 256);
      v49 = *(v0 + 248);
      v52 = MEMORY[0x1E69E7CC0];
      sub_1D0B23F74(0, v6, 0);
      v7 = v52;
      v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v47 = *(v9 + 72);
      do
      {
        v11 = *(v0 + 296);
        v13 = *(v0 + 272);
        v12 = *(v0 + 280);
        sub_1D0B2B870(v10, v13, &qword_1EC5F9A20, &qword_1D0B65680);
        (*(v8 + 16))(v11, v13 + *(v49 + 36), v12);
        sub_1D0B2B620(v13, &qword_1EC5F9A20, &qword_1D0B65680);
        v15 = *(v52 + 16);
        v14 = *(v52 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D0B23F74((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 296);
        v17 = *(v0 + 280);
        *(v52 + 16) = v15 + 1;
        (*(v8 + 32))(v52 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15, v16, v17);
        v10 += v47;
        --v6;
      }

      while (v6);
      v5 = v43;
      v4 = v45;
    }

    *(v0 + 320) = v7;
    v35 = swift_task_alloc();
    *(v0 + 328) = v35;
    *v35 = v0;
    v35[1] = sub_1D0B3DD80;

    return MEMORY[0x1EEE06CA8](v7, v4, v5);
  }

  else
  {
    v18 = *(v0 + 136);

    *(v0 + 112) = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B78, &qword_1D0B65B38);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 152);
      v20 = *(v0 + 120);
      *(v0 + 352) = v20;
      sub_1D0B357E4(v19 + 40, v0 + 16);
      v21 = *(v0 + 40);
      v22 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
      v23 = *(v20 + 16);
      *(v0 + 360) = v23;
      v24 = MEMORY[0x1E69E7CC0];
      if (v23)
      {
        v44 = v22;
        v46 = v21;
        v25 = *(v0 + 200);
        v26 = *(v0 + 168);
        v50 = *(v0 + 160);
        v53 = MEMORY[0x1E69E7CC0];
        sub_1D0B23F30(0, v23, 0);
        v24 = v53;
        v27 = v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v48 = *(v26 + 72);
        do
        {
          v28 = *(v0 + 208);
          v30 = *(v0 + 184);
          v29 = *(v0 + 192);
          sub_1D0B2B870(v27, v30, &qword_1EC5F9A10, &qword_1D0B65678);
          (*(v25 + 16))(v28, v30 + *(v50 + 36), v29);
          sub_1D0B2B620(v30, &qword_1EC5F9A10, &qword_1D0B65678);
          v32 = *(v53 + 16);
          v31 = *(v53 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1D0B23F30((v31 > 1), v32 + 1, 1);
          }

          v33 = *(v0 + 208);
          v34 = *(v0 + 192);
          *(v53 + 16) = v32 + 1;
          (*(v25 + 32))(v53 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v32, v33, v34);
          v27 += v48;
          --v23;
        }

        while (v23);
        v22 = v44;
        v21 = v46;
      }

      *(v0 + 368) = v24;
      v41 = swift_task_alloc();
      *(v0 + 376) = v41;
      *v41 = v0;
      v41[1] = sub_1D0B3E270;

      return MEMORY[0x1EEE06CA0](v24, v21, v22);
    }

    else
    {
      v36 = *(v0 + 136);
      v51 = *(v0 + 144);

      *(v0 + 128) = v36;
      v37 = swift_task_alloc();
      *(v0 + 400) = v37;
      *(v37 + 16) = v51;
      v38 = swift_task_alloc();
      *(v0 + 408) = v38;
      v39 = sub_1D0B3A650(&qword_1EC5F9B80, &qword_1EC5F9B68, &qword_1D0B65B28, MEMORY[0x1E69E6328]);
      *v38 = v0;
      v38[1] = sub_1D0B3E760;
      v40 = *(v0 + 216);

      return MEMORY[0x1EEE06D58](&unk_1D0B65B48, v37, v1, v40, v39);
    }
  }
}

uint64_t sub_1D0B3DD80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {

    v4 = sub_1D0B3E91C;
  }

  else
  {
    v4 = sub_1D0B3DECC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B3DECC()
{
  v4 = v1[39];
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v5 = v1[38];
  if (v4)
  {
    v6 = v1[32];
    v7 = v1[28];
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D0B23EEC(0, v1[39], 0);
    v8 = *(v1[38] + 16);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v35;
    v3 = ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = v1[42];
    v10 = v1[43];
    v12 = v1[33];
    v13 = v1[30];
    v14 = *(v6 + 72);
    sub_1D0B2B870(v3 + v5, v12, &qword_1EC5F9A20, &qword_1D0B65680);
    sub_1D0B3EE4C(v12, v11, v13);
    if (v10)
    {
      sub_1D0B2B620(v1[33], &qword_1EC5F9A20, &qword_1D0B65680);
    }

    v33 = v14;
    sub_1D0B2B620(v1[33], &qword_1EC5F9A20, &qword_1D0B65680);
    v2 = *(v35 + 16);
    v8 = *(v35 + 24);
    v0 = v2 + 1;
    if (v2 >= v8 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v17 = v1[39];
      v18 = v1[30];
      v19 = v1[27];
      *(v9 + 16) = v0;
      v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v34 = v9;
      v30 = *(v7 + 32);
      v31 = *(v7 + 72);
      v30(v9 + v32 + v31 * v2, v18, v19);
      if (v17 == 1)
      {
        break;
      }

      v5 += v3 + v33;
      v21 = 1;
      v2 = &qword_1EC5F9A20;
      while (1)
      {
        v8 = *(v1[38] + 16);
        if (v21 >= v8)
        {
          break;
        }

        v22 = v1[42];
        v23 = v1[33];
        v24 = v1[30];
        sub_1D0B2B870(v5, v23, &qword_1EC5F9A20, &qword_1D0B65680);
        sub_1D0B3EE4C(v23, v22, v24);
        v3 = &qword_1D0B65680;
        sub_1D0B2B620(v1[33], &qword_1EC5F9A20, &qword_1D0B65680);
        v25 = v34;
        v35 = v34;
        v27 = *(v34 + 16);
        v26 = *(v34 + 24);
        v0 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          sub_1D0B23EEC((v26 > 1), v27 + 1, 1);
          v25 = v34;
        }

        ++v21;
        v7 = v1[39];
        v28 = v1[30];
        v29 = v1[27];
        *(v25 + 16) = v0;
        v34 = v25;
        v30(v25 + v32 + v31 * v27, v28, v29);
        v5 += v33;
        if (v21 == v7)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D0B23EEC((v8 > 1), v0, 1);
      v9 = v35;
    }

LABEL_10:

    v16 = v34;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v20 = v1[1];

  return v20(v16);
}

uint64_t sub_1D0B3E270(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {

    v4 = sub_1D0B3E9F0;
  }

  else
  {
    v4 = sub_1D0B3E3BC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D0B3E3BC()
{
  v4 = v1[45];
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  v5 = v1[44];
  if (v4)
  {
    v6 = v1[28];
    v7 = v1[21];
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D0B23EEC(0, v1[45], 0);
    v8 = *(v1[44] + 16);
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v35;
    v3 = ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v11 = v1[48];
    v10 = v1[49];
    v12 = v1[29];
    v13 = v1[22];
    v14 = *(v7 + 72);
    sub_1D0B2B870(v3 + v5, v13, &qword_1EC5F9A10, &qword_1D0B65678);
    sub_1D0B3F494(v13, v11, v12);
    if (v10)
    {
      sub_1D0B2B620(v1[22], &qword_1EC5F9A10, &qword_1D0B65678);
    }

    v33 = v14;
    sub_1D0B2B620(v1[22], &qword_1EC5F9A10, &qword_1D0B65678);
    v2 = *(v35 + 16);
    v8 = *(v35 + 24);
    v0 = v2 + 1;
    if (v2 >= v8 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v17 = v1[45];
      v18 = v1[29];
      v19 = v1[27];
      *(v9 + 16) = v0;
      v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v34 = v9;
      v30 = *(v6 + 32);
      v31 = *(v6 + 72);
      v30(v9 + v32 + v31 * v2, v18, v19);
      if (v17 == 1)
      {
        break;
      }

      v5 += v3 + v33;
      v21 = 1;
      v2 = &qword_1EC5F9A10;
      while (1)
      {
        v8 = *(v1[44] + 16);
        if (v21 >= v8)
        {
          break;
        }

        v22 = v1[48];
        v23 = v1[29];
        v24 = v1[22];
        sub_1D0B2B870(v5, v24, &qword_1EC5F9A10, &qword_1D0B65678);
        sub_1D0B3F494(v24, v22, v23);
        v3 = &qword_1D0B65678;
        sub_1D0B2B620(v1[22], &qword_1EC5F9A10, &qword_1D0B65678);
        v25 = v34;
        v35 = v34;
        v27 = *(v34 + 16);
        v26 = *(v34 + 24);
        v0 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          sub_1D0B23EEC((v26 > 1), v27 + 1, 1);
          v25 = v34;
        }

        ++v21;
        v6 = v1[45];
        v28 = v1[29];
        v29 = v1[27];
        *(v25 + 16) = v0;
        v34 = v25;
        v30(v25 + v32 + v31 * v27, v28, v29);
        v5 += v33;
        if (v21 == v6)
        {
          goto LABEL_10;
        }
      }

LABEL_20:
      __break(1u);
LABEL_21:
      sub_1D0B23EEC((v8 > 1), v0, 1);
      v9 = v35;
    }

LABEL_10:

    v16 = v34;
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v20 = v1[1];

  return v20(v16);
}

uint64_t sub_1D0B3E760(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 416) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B3EAC4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1D0B3E91C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B3E9F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B3EAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1D0B3EB90(void *result)
{
  v3 = result[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D0B2CA68(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1D0B45A54(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (result[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1D0B2CA68((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (result[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1D0B1FEC8(result);
  *v1 = v4;
  return result;
}

uint64_t sub_1D0B3EE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v47 = a3;
  v5 = sub_1D0B63A20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B90, &qword_1D0B65B58);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B98, &unk_1D0B65B60);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v40 = a1;
  v42 = a1;
  sub_1D0B3A858(sub_1D0B460B4, v37, &qword_1EC5F9BA0, &qword_1D0B66410, &v36 - v21);
  v37 = v3;
  sub_1D0B2B870(v22, v20, &qword_1EC5F9B98, &unk_1D0B65B60);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BA0, &qword_1D0B66410);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v20, 1, v23) == 1)
  {
    v26 = &qword_1EC5F9B98;
    v27 = &unk_1D0B65B60;
    v28 = v20;
LABEL_5:
    sub_1D0B2B620(v28, v26, v27);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_7;
  }

  sub_1D0B63D20();
  (*(v24 + 8))(v20, v23);
  v29 = sub_1D0B63CB0();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    v26 = &qword_1EC5F9B90;
    v27 = &qword_1D0B65B58;
    v28 = v13;
    goto LABEL_5;
  }

  *(&v45 + 1) = v29;
  v46 = MEMORY[0x1E699E480];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  (*(v30 + 32))(boxed_opaque_existential_1, v13, v29);
LABEL_7:
  sub_1D0B2B870(v22, v17, &qword_1EC5F9B98, &unk_1D0B65B60);
  if (v25(v17, 1, v23) == 1)
  {
    sub_1D0B2B620(v17, &qword_1EC5F9B98, &unk_1D0B65B60);
    v32 = 1;
    v33 = v38;
  }

  else
  {
    v33 = v38;
    sub_1D0B63D40();
    (*(v24 + 8))(v17, v23);
    v32 = 0;
  }

  v34 = sub_1D0B63B00();
  (*(*(v34 - 8) + 56))(v33, v32, 1, v34);
  sub_1D0B63A30();
  sub_1D0B63A40();
  sub_1D0B2B870(&v44, v43, &qword_1EC5F9BA8, &qword_1D0B65B70);
  sub_1D0B2B870(v33, v39, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B639E0();
  sub_1D0B2B620(v33, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B2B620(v22, &qword_1EC5F9B98, &unk_1D0B65B60);
  return sub_1D0B2B620(&v44, &qword_1EC5F9BA8, &qword_1D0B65B70);
}

uint64_t sub_1D0B3F37C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D0B63EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BA0, &qword_1D0B66410);
  sub_1D0B63D30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A20, &qword_1D0B65680);
  v8 = MEMORY[0x1D387D120](v6, a2 + *(v7 + 36));
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D0B3F494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v47 = a3;
  v5 = sub_1D0B63A20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BB0, &qword_1D0B65B78);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BB8, &qword_1D0B65B80);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v36 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v36 - v21;
  v40 = a1;
  v42 = a1;
  sub_1D0B3A858(sub_1D0B460D4, v37, &qword_1EC5F9BC0, &qword_1D0B65B88, &v36 - v21);
  v37 = v3;
  sub_1D0B2B870(v22, v20, &qword_1EC5F9BB8, &qword_1D0B65B80);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BC0, &qword_1D0B65B88);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v20, 1, v23) == 1)
  {
    v26 = &qword_1EC5F9BB8;
    v27 = &qword_1D0B65B80;
    v28 = v20;
LABEL_5:
    sub_1D0B2B620(v28, v26, v27);
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    goto LABEL_7;
  }

  sub_1D0B63D20();
  (*(v24 + 8))(v20, v23);
  v29 = sub_1D0B63C20();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v13, 1, v29) == 1)
  {
    v26 = &qword_1EC5F9BB0;
    v27 = &qword_1D0B65B78;
    v28 = v13;
    goto LABEL_5;
  }

  *(&v45 + 1) = v29;
  v46 = MEMORY[0x1E699E328];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v44);
  (*(v30 + 32))(boxed_opaque_existential_1, v13, v29);
LABEL_7:
  sub_1D0B2B870(v22, v17, &qword_1EC5F9BB8, &qword_1D0B65B80);
  if (v25(v17, 1, v23) == 1)
  {
    sub_1D0B2B620(v17, &qword_1EC5F9BB8, &qword_1D0B65B80);
    v32 = 1;
    v33 = v38;
  }

  else
  {
    v33 = v38;
    sub_1D0B63D40();
    (*(v24 + 8))(v17, v23);
    v32 = 0;
  }

  v34 = sub_1D0B63B00();
  (*(*(v34 - 8) + 56))(v33, v32, 1, v34);
  sub_1D0B63A30();
  sub_1D0B63A40();
  sub_1D0B2B870(&v44, v43, &qword_1EC5F9BA8, &qword_1D0B65B70);
  sub_1D0B2B870(v33, v39, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B639E0();
  sub_1D0B2B620(v33, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B2B620(v22, &qword_1EC5F9BB8, &qword_1D0B65B80);
  return sub_1D0B2B620(&v44, &qword_1EC5F9BA8, &qword_1D0B65B70);
}

uint64_t sub_1D0B3F9C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D0B63DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BC0, &qword_1D0B65B88);
  sub_1D0B63D30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A10, &qword_1D0B65678);
  v8 = MEMORY[0x1D387D020](v6, a2 + *(v7 + 36));
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D0B3FADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  v4[11] = swift_task_alloc();
  v5 = sub_1D0B633F0();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B3FBD8, 0, 0);
}

uint64_t sub_1D0B3FBD8(uint64_t a1)
{
  v3 = v1[13];
  v2 = v1[14];
  v4 = v1[12];
  v5 = v1[10];
  v6 = v1[8];
  sub_1D0B633E0();
  sub_1D0B63330();
  v1[15] = v7;
  (*(v3 + 8))(v2, v4);
  v8 = swift_task_alloc();
  v1[16] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = swift_task_alloc();
  v1[17] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BA8, &qword_1D0B65B70);
  *v9 = v1;
  v9[1] = sub_1D0B3FD00;

  return MEMORY[0x1EEE06B90](v1 + 2, &unk_1D0B65B98, v8, v10);
}

uint64_t sub_1D0B3FD00(double a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1D0B3FF74;
  }

  else
  {
    *(v4 + 152) = a1;

    v5 = sub_1D0B3FE2C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D0B3FE2C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v4);
  sub_1D0B63AF0();
  v6 = sub_1D0B63B00();
  (*(*(v6 - 8) + 56))(v1, 0, 1, v6);
  sub_1D0B482FC((v0 + 2), v1, v4, v5, v3);
  sub_1D0B2B620(v1, &qword_1EC5F9B88, &qword_1D0B65B50);
  sub_1D0B2B620((v0 + 2), &qword_1EC5F9BA8, &qword_1D0B65B70);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D0B3FF74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B3FFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B63A20();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1D0B63A60();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B40110, 0, 0);
}

uint64_t sub_1D0B40110()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  sub_1D0B63A40();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_1D0B40220;
  v8 = v0[7];
  v9 = v0[2];

  return sub_1D0B40448(v9, v8);
}

uint64_t sub_1D0B40220()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B403D8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D0B403D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B40448(uint64_t a1, uint64_t a2)
{
  v3[122] = v2;
  v3[121] = a2;
  v3[120] = a1;
  v4 = sub_1D0B640C0();
  v3[123] = v4;
  v3[124] = *(v4 - 8);
  v3[125] = swift_task_alloc();
  v5 = sub_1D0B63CF0();
  v3[126] = v5;
  v3[127] = *(v5 - 8);
  v3[128] = swift_task_alloc();
  v3[129] = swift_task_alloc();
  v3[130] = swift_task_alloc();
  v3[131] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BC8, &qword_1D0B65BA8);
  v3[132] = swift_task_alloc();
  v3[133] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BD0, &qword_1D0B65BB0);
  v3[134] = swift_task_alloc();
  v3[135] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BD8, &qword_1D0B65BB8);
  v3[136] = swift_task_alloc();
  v6 = sub_1D0B63290();
  v3[137] = v6;
  v7 = *(v6 - 8);
  v3[138] = v7;
  v3[139] = *(v7 + 64);
  v3[140] = swift_task_alloc();
  v3[141] = swift_task_alloc();
  v3[142] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BE0, &qword_1D0B65BC0);
  v3[143] = swift_task_alloc();
  v3[144] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BE8, &qword_1D0B65BC8);
  v3[145] = swift_task_alloc();
  v3[146] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9BF0, &qword_1D0B65BD0);
  v3[147] = swift_task_alloc();
  v8 = sub_1D0B633F0();
  v3[148] = v8;
  v9 = *(v8 - 8);
  v3[149] = v9;
  v3[150] = *(v9 + 64);
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v3[154] = swift_task_alloc();
  v3[155] = swift_task_alloc();
  v3[156] = swift_task_alloc();
  v3[157] = swift_task_alloc();
  v10 = sub_1D0B63A20();
  v3[158] = v10;
  v3[159] = *(v10 - 8);
  v3[160] = swift_task_alloc();
  v3[161] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B40870, 0, 0);
}

uint64_t sub_1D0B40870()
{
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1264);
  v4 = *(v2 + 16);
  v4(v1, *(v0 + 968), v3);
  v5 = (*(v2 + 88))(v1, v3);
  if (v5 == *MEMORY[0x1E699E2B0] || v5 == *MEMORY[0x1E699E2A8])
  {
    (*(*(v0 + 1272) + 8))(*(v0 + 1288), *(v0 + 1264));
    sub_1D0B461A0();
    swift_allocError();
    *v7 = 0;
    v7[1] = 0;
    swift_willThrow();
  }

  else
  {
    if (v5 == *MEMORY[0x1E699E288])
    {
      v10 = *(v0 + 1288);
      v11 = *(v0 + 1248);
      v12 = *(v0 + 1240);
      v128 = *(v0 + 1200);
      v13 = *(v0 + 1192);
      v14 = *(v0 + 1184);
      v15 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v10, *(v0 + 1264));
      v16 = *(v13 + 32);
      v16(v12, v10, v14);
      (*(v13 + 16))(v11, v12, v14);
      sub_1D0B45EB8(v15, v0 + 456);
      v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v18 = swift_allocObject();
      *(v0 + 1320) = v18;
      v16(v18 + v17, v11, v14);
      v19 = v18 + ((v128 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
      v20 = *(v0 + 504);
      *(v19 + 32) = *(v0 + 488);
      *(v19 + 48) = v20;
      *(v19 + 64) = *(v0 + 520);
      *(v19 + 80) = *(v0 + 536);
      v21 = *(v0 + 472);
      *v19 = *(v0 + 456);
      *(v19 + 16) = v21;
      v22 = swift_task_alloc();
      *(v0 + 1328) = v22;
      *v22 = v0;
      v22[1] = sub_1D0B41A10;
      v24 = *(v0 + 1176);
      v25 = *(v0 + 1168);
      v26 = &unk_1D0B65C48;
LABEL_12:
      v27 = v26;
      v23.n128_u64[0] = 10.0;
      v28 = v18;
LABEL_21:
      v45 = 0;
      v46 = 0;
      goto LABEL_22;
    }

    if (v5 == *MEMORY[0x1E699E268])
    {
      v29 = *(v0 + 1288);
      v30 = *(v0 + 1256);
      v31 = *(v0 + 1248);
      v32 = *(v0 + 1200);
      v33 = *(v0 + 1192);
      v34 = *(v0 + 1184);
      v35 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v29, *(v0 + 1264));
      v36 = *(v33 + 32);
      v36(v30, v29, v34);
      (*(v33 + 16))(v31, v30, v34);
      sub_1D0B45EB8(v35, v0 + 544);
      v37 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v38 = swift_allocObject();
      *(v0 + 1296) = v38;
      v36(v38 + v37, v31, v34);
      v39 = v38 + ((v32 + v37 + 7) & 0xFFFFFFFFFFFFFFF8);
      v40 = *(v0 + 592);
      *(v39 + 32) = *(v0 + 576);
      *(v39 + 48) = v40;
      *(v39 + 64) = *(v0 + 608);
      *(v39 + 80) = *(v0 + 624);
      v41 = *(v0 + 560);
      *v39 = *(v0 + 544);
      *(v39 + 16) = v41;
      v42 = sub_1D0B63D10();
      *(v0 + 936) = v42;
      *(v0 + 944) = MEMORY[0x1E699E4A0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 912));
      v44 = swift_task_alloc();
      *(v0 + 1304) = v44;
      *v44 = v0;
      v44[1] = sub_1D0B41720;
      v27 = &unk_1D0B65C58;
      v23.n128_u64[0] = 10.0;
      v24 = boxed_opaque_existential_1;
      v28 = v38;
      v45 = 0;
      v46 = 0;
      v25 = v42;
LABEL_22:

      return MEMORY[0x1EEE06D60](v24, v27, v28, v45, v46, v25, v23);
    }

    if (v5 == *MEMORY[0x1E699E278])
    {
      v47 = *(v0 + 1288);
      v48 = *(v0 + 1248);
      v49 = *(v0 + 1232);
      v50 = *(v0 + 1200);
      v51 = *(v0 + 1192);
      v52 = *(v0 + 1184);
      v53 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v47, *(v0 + 1264));
      v54 = *(v51 + 32);
      v54(v49, v47, v52);
      (*(v51 + 16))(v48, v49, v52);
      sub_1D0B45EB8(v53, v0 + 368);
      v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
      v56 = swift_allocObject();
      *(v0 + 1344) = v56;
      v54(v56 + v55, v48, v52);
      v57 = v56 + ((v50 + v55 + 7) & 0xFFFFFFFFFFFFFFF8);
      v58 = *(v0 + 416);
      *(v57 + 32) = *(v0 + 400);
      *(v57 + 48) = v58;
      *(v57 + 64) = *(v0 + 432);
      *(v57 + 80) = *(v0 + 448);
      v59 = *(v0 + 384);
      *v57 = *(v0 + 368);
      *(v57 + 16) = v59;
      v60 = swift_task_alloc();
      *(v0 + 1352) = v60;
      *v60 = v0;
      v60[1] = sub_1D0B41DF4;
      v24 = *(v0 + 1160);
      v25 = *(v0 + 1152);
      v27 = &unk_1D0B65C38;
      v23.n128_u64[0] = 10.0;
LABEL_20:
      v28 = v56;
      goto LABEL_21;
    }

    if (v5 == *MEMORY[0x1E699E290])
    {
      v61 = *(v0 + 1288);
      v62 = *(v0 + 1128);
      v63 = *(v0 + 1120);
      v64 = *(v0 + 1104);
      v65 = *(v0 + 1096);
      (*(*(v0 + 1272) + 96))(v61, *(v0 + 1264));
      v66 = *(v64 + 32);
      v66(v62, v61, v65);
      (*(v64 + 16))(v63, v62, v65);
      v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v56 = swift_allocObject();
      *(v0 + 1392) = v56;
      v66(v56 + v67, v63, v65);
      v68 = swift_task_alloc();
      *(v0 + 1400) = v68;
      *v68 = v0;
      v68[1] = sub_1D0B425BC;
      v24 = *(v0 + 1088);
      v25 = *(v0 + 1080);
      v69 = &unk_1D0B65C18;
LABEL_19:
      v27 = v69;
      v23.n128_u64[0] = 5.0;
      goto LABEL_20;
    }

    if (v5 == *MEMORY[0x1E699E270])
    {
      v70 = *(v0 + 1288);
      v71 = *(v0 + 1248);
      v72 = *(v0 + 1224);
      v129 = *(v0 + 1200);
      v73 = *(v0 + 1192);
      v74 = *(v0 + 1184);
      v75 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v70, *(v0 + 1264));
      v76 = *(v73 + 32);
      v76(v72, v70, v74);
      (*(v73 + 16))(v71, v72, v74);
      sub_1D0B45EB8(v75, v0 + 280);
      v77 = (*(v73 + 80) + 16) & ~*(v73 + 80);
      v18 = swift_allocObject();
      *(v0 + 1368) = v18;
      v76(v18 + v77, v71, v74);
      v78 = v18 + ((v129 + v77 + 7) & 0xFFFFFFFFFFFFFFF8);
      v79 = *(v0 + 328);
      *(v78 + 32) = *(v0 + 312);
      *(v78 + 48) = v79;
      *(v78 + 64) = *(v0 + 344);
      *(v78 + 80) = *(v0 + 360);
      v80 = *(v0 + 296);
      *v78 = *(v0 + 280);
      *(v78 + 16) = v80;
      v81 = swift_task_alloc();
      *(v0 + 1376) = v81;
      *v81 = v0;
      v81[1] = sub_1D0B421D8;
      v24 = *(v0 + 1144);
      v25 = *(v0 + 1136);
      v26 = &unk_1D0B65C28;
      goto LABEL_12;
    }

    if (v5 == *MEMORY[0x1E699E298])
    {
      v82 = *(v0 + 1288);
      v83 = *(v0 + 1248);
      v84 = *(v0 + 1216);
      v85 = *(v0 + 1200);
      v86 = *(v0 + 1192);
      v87 = *(v0 + 1184);
      v88 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v82, *(v0 + 1264));
      v89 = *(v86 + 32);
      v89(v84, v82, v87);
      (*(v86 + 16))(v83, v84, v87);
      sub_1D0B45EB8(v88, v0 + 192);
      v90 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v56 = swift_allocObject();
      *(v0 + 1416) = v56;
      v89(v56 + v90, v83, v87);
      v91 = v56 + ((v85 + v90 + 7) & 0xFFFFFFFFFFFFFFF8);
      v92 = *(v0 + 240);
      *(v91 + 32) = *(v0 + 224);
      *(v91 + 48) = v92;
      *(v91 + 64) = *(v0 + 256);
      *(v91 + 80) = *(v0 + 272);
      v93 = *(v0 + 208);
      *v91 = *(v0 + 192);
      *(v91 + 16) = v93;
      v94 = swift_task_alloc();
      *(v0 + 1424) = v94;
      *v94 = v0;
      v94[1] = sub_1D0B429A0;
      v24 = *(v0 + 1072);
      v25 = *(v0 + 1064);
      v69 = &unk_1D0B65C08;
      goto LABEL_19;
    }

    if (v5 == *MEMORY[0x1E699E280])
    {
      v95 = *(v0 + 1288);
      v96 = *(v0 + 1248);
      v97 = *(v0 + 1208);
      v98 = *(v0 + 1192);
      v99 = *(v0 + 1184);
      (*(*(v0 + 1272) + 96))(v95, *(v0 + 1264));
      v100 = *(v98 + 32);
      v100(v97, v95, v99);
      (*(v98 + 16))(v96, v97, v99);
      v101 = (*(v98 + 80) + 16) & ~*(v98 + 80);
      v56 = swift_allocObject();
      *(v0 + 1440) = v56;
      v100(v56 + v101, v96, v99);
      v102 = swift_task_alloc();
      *(v0 + 1448) = v102;
      *v102 = v0;
      v102[1] = sub_1D0B42D84;
      v24 = *(v0 + 1056);
      v25 = *(v0 + 1048);
      v69 = &unk_1D0B65BF8;
      goto LABEL_19;
    }

    if (v5 == *MEMORY[0x1E699E2A0])
    {
      v103 = *(v0 + 1288);
      v104 = *(v0 + 1040);
      v105 = *(v0 + 1016);
      v106 = *(v0 + 1008);
      v107 = *(v0 + 976);
      (*(*(v0 + 1272) + 96))(v103, *(v0 + 1264));
      (*(v105 + 32))(v104, v103, v106);
      sub_1D0B63CC0();
      v109 = v108;
      sub_1D0B63CD0();
      v111 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v109 longitude:v110];
      *(v0 + 1464) = v111;
      sub_1D0B45EB8(v107, v0 + 16);
      v112 = swift_allocObject();
      *(v0 + 1472) = v112;
      v113 = *(v0 + 64);
      *(v112 + 48) = *(v0 + 48);
      *(v112 + 64) = v113;
      *(v112 + 80) = *(v0 + 80);
      v114 = *(v0 + 96);
      v115 = *(v0 + 32);
      *(v112 + 16) = *(v0 + 16);
      *(v112 + 32) = v115;
      *(v112 + 96) = v114;
      *(v112 + 104) = v111;
      sub_1D0B45EB8(v107, v0 + 104);
      v116 = swift_allocObject();
      *(v0 + 1480) = v116;
      v117 = *(v0 + 152);
      *(v116 + 48) = *(v0 + 136);
      *(v116 + 64) = v117;
      *(v116 + 80) = *(v0 + 168);
      *(v116 + 96) = *(v0 + 184);
      v118 = *(v0 + 120);
      *(v116 + 16) = *(v0 + 104);
      *(v116 + 32) = v118;
      v119 = v111;
      v120 = swift_task_alloc();
      *(v0 + 1488) = v120;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C00, &qword_1D0B65BE8);
      *v120 = v0;
      v120[1] = sub_1D0B43168;
      v27 = &unk_1D0B65BE0;
      v45 = sub_1D0B462A0;
      v24 = (v0 + 952);
      v23.n128_u64[0] = 3.0;
      v28 = v112;
      v46 = v116;
      goto LABEL_22;
    }

    v121 = *(v0 + 1288);
    v122 = *(v0 + 1272);
    v123 = *(v0 + 1264);
    v4(*(v0 + 1280), *(v0 + 968), v123);
    v124 = sub_1D0B642A0();
    v126 = v125;
    sub_1D0B461A0();
    swift_allocError();
    *v127 = v124;
    v127[1] = v126;
    swift_willThrow();
    (*(v122 + 8))(v121, v123);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D0B41720()
{
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v2 = sub_1D0B43680;
  }

  else
  {
    v2 = sub_1D0B41854;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B41854()
{
  v1 = *(v0 + 960);
  (*(*(v0 + 1192) + 8))(*(v0 + 1256), *(v0 + 1184));
  v2 = *(v0 + 912);
  v3 = *(v0 + 928);
  *(v1 + 32) = *(v0 + 944);
  *v1 = v2;
  *(v1 + 16) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D0B41A10()
{
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v2 = sub_1D0B43838;
  }

  else
  {
    v2 = sub_1D0B41B44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B41B44()
{
  v1 = (v0 + 872);
  v2 = *(v0 + 1176);
  v3 = sub_1D0B63E70();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1240), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BF0, &qword_1D0B65BD0);
    *v1 = 0u;
    *(v0 + 888) = 0u;
    *(v0 + 904) = 0;
  }

  else
  {
    *(v0 + 896) = v3;
    *(v0 + 904) = MEMORY[0x1E699E500];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 872));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 888);
  *(v10 + 32) = *(v0 + 904);
  *v10 = v11;
  *(v10 + 16) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D0B41DF4()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2 = sub_1D0B439E8;
  }

  else
  {
    v2 = sub_1D0B41F28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B41F28()
{
  v1 = (v0 + 832);
  v2 = *(v0 + 1160);
  v3 = sub_1D0B63DE0();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1232);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1232), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BE8, &qword_1D0B65BC8);
    *v1 = 0u;
    *(v0 + 848) = 0u;
    *(v0 + 864) = 0;
  }

  else
  {
    *(v0 + 856) = v3;
    *(v0 + 864) = MEMORY[0x1E699E4E8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 832));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 848);
  *(v10 + 32) = *(v0 + 864);
  *v10 = v11;
  *(v10 + 16) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D0B421D8()
{
  *(*v1 + 1384) = v0;

  if (v0)
  {
    v2 = sub_1D0B43B98;
  }

  else
  {
    v2 = sub_1D0B4230C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B4230C()
{
  v1 = (v0 + 792);
  v2 = *(v0 + 1144);
  v3 = sub_1D0B63D60();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1224);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1224), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BE0, &qword_1D0B65BC0);
    *v1 = 0u;
    *(v0 + 808) = 0u;
    *(v0 + 824) = 0;
  }

  else
  {
    *(v0 + 816) = v3;
    *(v0 + 824) = MEMORY[0x1E699E4B0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 792));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 808);
  *(v10 + 32) = *(v0 + 824);
  *v10 = v11;
  *(v10 + 16) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D0B425BC()
{
  *(*v1 + 1408) = v0;

  if (v0)
  {
    v2 = sub_1D0B43D48;
  }

  else
  {
    v2 = sub_1D0B426F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B426F0()
{
  v1 = (v0 + 752);
  v2 = *(v0 + 1088);
  v3 = sub_1D0B63B30();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1104);
  v8 = *(v0 + 1096);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1128), *(v0 + 1096));
    sub_1D0B2B620(v2, &qword_1EC5F9BD8, &qword_1D0B65BB8);
    *v1 = 0u;
    *(v0 + 768) = 0u;
    *(v0 + 784) = 0;
  }

  else
  {
    *(v0 + 776) = v3;
    *(v0 + 784) = MEMORY[0x1E699E2F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 752));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 768);
  *(v10 + 32) = *(v0 + 784);
  *v10 = v11;
  *(v10 + 16) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D0B429A0()
{
  *(*v1 + 1432) = v0;

  if (v0)
  {
    v2 = sub_1D0B43EF8;
  }

  else
  {
    v2 = sub_1D0B42AD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B42AD4()
{
  v1 = (v0 + 712);
  v2 = *(v0 + 1072);
  v3 = sub_1D0B63B50();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1216);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1216), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BD0, &qword_1D0B65BB0);
    *v1 = 0u;
    *(v0 + 728) = 0u;
    *(v0 + 744) = 0;
  }

  else
  {
    *(v0 + 736) = v3;
    *(v0 + 744) = MEMORY[0x1E699E300];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 712));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 728);
  *(v10 + 32) = *(v0 + 744);
  *v10 = v11;
  *(v10 + 16) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D0B42D84()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v2 = sub_1D0B440A8;
  }

  else
  {
    v2 = sub_1D0B42EB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B42EB8()
{
  v1 = (v0 + 672);
  v2 = *(v0 + 1056);
  v3 = sub_1D0B63E50();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 1208);
  v7 = *(v0 + 1192);
  v8 = *(v0 + 1184);
  if (v5 == 1)
  {
    (*(v7 + 8))(*(v0 + 1208), *(v0 + 1184));
    sub_1D0B2B620(v2, &qword_1EC5F9BC8, &qword_1D0B65BA8);
    *v1 = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0;
  }

  else
  {
    *(v0 + 696) = v3;
    *(v0 + 704) = MEMORY[0x1E699E4F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 672));
    (*(v4 + 32))(boxed_opaque_existential_1, v2, v3);
    (*(v7 + 8))(v6, v8);
  }

  v10 = *(v0 + 960);
  v11 = *v1;
  v12 = *(v0 + 688);
  *(v10 + 32) = *(v0 + 704);
  *v10 = v11;
  *(v10 + 16) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D0B43168()
{
  *(*v1 + 1496) = v0;

  if (v0)
  {
    v2 = sub_1D0B44258;
  }

  else
  {
    v2 = sub_1D0B432A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D0B432A4()
{
  v1 = *(v0 + 952);
  (*(*(v0 + 1016) + 16))(*(v0 + 1032), *(v0 + 1040), *(v0 + 1008));
  if (v1 >> 62)
  {
    if (sub_1D0B645A0())
    {
LABEL_3:
      v2 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1D387D8B0](0, v1);
      }

      else
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_28;
        }

        v3 = *(v1 + 32);
      }

      v4 = v3;
      v5 = [v3 country];

      if (v5)
      {
        sub_1D0B64290();

        if (v2)
        {
LABEL_8:
          v6 = MEMORY[0x1D387D8B0](0, v1);
LABEL_12:
          v7 = v6;
          v8 = [v6 locality];

          if (v8)
          {
            sub_1D0B64290();

            if (v2)
            {
LABEL_14:
              v9 = MEMORY[0x1D387D8B0](0, v1);
              goto LABEL_18;
            }
          }

          else if (v2)
          {
            goto LABEL_14;
          }

          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v1 + 32);
LABEL_18:
            v10 = v9;

            v11 = [v10 name];

            if (v11)
            {
              sub_1D0B64290();
            }

            goto LABEL_23;
          }

LABEL_29:
          __break(1u);
          return;
        }
      }

      else if (v2)
      {
        goto LABEL_8;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v1 + 32);
        goto LABEL_12;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_23:
  v12 = *(v0 + 1464);
  v13 = *(v0 + 1040);
  v14 = *(v0 + 1016);
  v15 = *(v0 + 1008);
  v16 = *(v0 + 960);
  *(v0 + 656) = sub_1D0B63C10();
  *(v0 + 664) = MEMORY[0x1E699E320];
  __swift_allocate_boxed_opaque_existential_1((v0 + 632));
  sub_1D0B63C00();

  (*(v14 + 8))(v13, v15);
  v17 = *(v0 + 632);
  v18 = *(v0 + 648);
  *(v16 + 32) = *(v0 + 664);
  *v16 = v17;
  *(v16 + 16) = v18;

  v19 = *(v0 + 8);

  v19();
}

uint64_t sub_1D0B43680()
{
  (*(v0[149] + 8))(v0[157], v0[148]);
  __swift_deallocate_boxed_opaque_existential_1((v0 + 114));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B43838()
{
  (*(v0[149] + 8))(v0[155], v0[148]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B439E8()
{
  (*(v0[149] + 8))(v0[154], v0[148]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B43B98()
{
  (*(v0[149] + 8))(v0[153], v0[148]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B43D48()
{
  (*(v0[138] + 8))(v0[141], v0[137]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B43EF8()
{
  (*(v0[149] + 8))(v0[152], v0[148]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B440A8()
{
  (*(v0[149] + 8))(v0[151], v0[148]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B44258()
{
  sub_1D0B63F70();
  v1 = sub_1D0B640A0();
  v2 = sub_1D0B644F0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D0B1E000, v1, v2, "Reverse geocoding failed, inserting empty location into context", v3, 2u);
    MEMORY[0x1D387E1B0](v3, -1, -1);
  }

  v16 = *(v0 + 1496);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1024);
  v6 = *(v0 + 1016);
  v7 = *(v0 + 1008);
  v8 = *(v0 + 1000);
  v9 = *(v0 + 992);
  v10 = *(v0 + 984);
  v11 = *(v0 + 960);

  (*(v9 + 8))(v8, v10);
  (*(v6 + 16))(v5, v4, v7);
  v12 = sub_1D0B63C10();
  v13 = MEMORY[0x1E699E320];
  v11[3] = v12;
  v11[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1D0B63C00();

  (*(v6 + 8))(v4, v7);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D0B44524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B634A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1D0B63290();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B44644, 0, 0);
}

uint64_t sub_1D0B44644()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1D0B63460();
  sub_1D0B63380();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1D0B44788;
  v5 = v0[10];
  v6 = v0[4];
  v7 = v0[2];

  return static WorkoutWeekContext.make(for:healthStore:)(v7, v5, v6);
}

uint64_t sub_1D0B44788()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D0B44900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B46DB0;

  return static ActivitySummaryContext.make(today:healthStore:)(a1, a2, a3);
}

uint64_t sub_1D0B449B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D0B634A0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = sub_1D0B63290();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B44AEC, 0, 0);
}

uint64_t sub_1D0B44AEC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  sub_1D0B63460();
  sub_1D0B63380();
  v4 = *(v3 + 8);
  v4(v1, v2);
  v5 = v0[7];
  v6 = v0[5];
  sub_1D0B63460();
  sub_1D0B63370();
  v4(v5, v6);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1D0B44CA0;
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[4];
  v11 = v0[2];

  return static WeeklySummaryContext.make(currentWeekInterval:previousWeekInterval:healthStore:)(v11, v8, v9, v10);
}

uint64_t sub_1D0B44CA0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v8 = *v0;

  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_1D0B44E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B44F28;

  return static TrainingLoadContext.make(for:healthStore:)(a1, a2, a3);
}

uint64_t sub_1D0B44F28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D0B45020(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B46DB0;

  return static AwardsContext.make(dateInterval:)(a1, a2);
}

uint64_t sub_1D0B450C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D0B46DB0;

  return static VitalsContext.make(for:healthStore:)(a1, a2, a3);
}

uint64_t sub_1D0B45178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B46DB0;

  return static ActivitySharingContext.make(date:)(a1, a2);
}

uint64_t sub_1D0B4521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C08, &qword_1D0B65C60);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B452EC, 0, 0);
}

uint64_t sub_1D0B452EC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  v11 = *(v1[20] + 80);
  v12 = v1[21];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D0B454BC;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C00, &qword_1D0B65BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F98F8, &qword_1D0B668C0);
  sub_1D0B643A0();
  (*(v6 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D0B456AC;
  v1[13] = &block_descriptor_0;
  [v11 reverseGeocodeLocation:v12 completionHandler:v4];
  (*(v6 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D0B454BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D0B45638;
  }

  else
  {
    v2 = sub_1D0B455CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D0B455CC()
{
  **(v0 + 152) = *(v0 + 144);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D0B45638(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_1D0B456AC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C08, &qword_1D0B65C60);
    sub_1D0B643B0();
  }

  else
  {
    sub_1D0B2B49C(0, &qword_1EC5F9C10, 0x1E695FC20);
    sub_1D0B64340();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C08, &qword_1D0B65C60);
    sub_1D0B643C0();
  }
}

uint64_t sub_1D0B45774(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D0B2FC90;

  return sub_1D0B3B9D0(a1, a2, v6, v7, v8);
}

void *sub_1D0B45838(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1D0B64590();
  sub_1D0B2B49C(0, &qword_1EC5F9A90, 0x1E696C638);
  sub_1D0B46B94();
  result = sub_1D0B644B0();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1D0B645B0())
      {
        goto LABEL_30;
      }

      sub_1D0B2B49C(0, &qword_1EC5F9A90, 0x1E696C638);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_1D0B45A54(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D0B45BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9C18, &qword_1D0B65C68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D0B65A40;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A20, &qword_1D0B65680);
  v2 = sub_1D0B3A650(&qword_1EC5F9A28, &qword_1EC5F9A20, &qword_1D0B65680, &unk_1D0B66418);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9A10, &qword_1D0B65678);
  v4 = sub_1D0B3A650(&qword_1EC5F9A18, &qword_1EC5F9A10, &qword_1D0B65678, &unk_1D0B66418);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for FitnessContextActivitySummaryQuery(0);
  v6 = sub_1D0B46B4C(&qword_1EC5F9A08, type metadata accessor for FitnessContextActivitySummaryQuery, &unk_1D0B663F4);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for FitnessContextWorkoutWeekQuery(0);
  v8 = sub_1D0B46B4C(&qword_1EC5F9A00, type metadata accessor for FitnessContextWorkoutWeekQuery, &unk_1D0B663D8);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for FitnessContextWeeklySummaryQuery(0);
  v10 = sub_1D0B46B4C(&qword_1EC5F99F8, type metadata accessor for FitnessContextWeeklySummaryQuery, &unk_1D0B663BC);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  v11 = type metadata accessor for FitnessContextAwardsQuery(0);
  v12 = sub_1D0B46B4C(&qword_1EC5F99F0, type metadata accessor for FitnessContextAwardsQuery, &unk_1D0B663A0);
  *(v0 + 112) = v11;
  *(v0 + 120) = v12;
  Query = type metadata accessor for FitnessContextTrainingLoadQuery(0);
  v14 = sub_1D0B46B4C(&qword_1EC5F99E8, type metadata accessor for FitnessContextTrainingLoadQuery, &unk_1D0B66384);
  *(v0 + 128) = Query;
  *(v0 + 136) = v14;
  v15 = type metadata accessor for FitnessContextVitalsQuery(0);
  v16 = sub_1D0B46B4C(&qword_1EC5F99E0, type metadata accessor for FitnessContextVitalsQuery, &unk_1D0B66368);
  *(v0 + 144) = v15;
  *(v0 + 152) = v16;
  v17 = type metadata accessor for FitnessContextActivitySharingQuery(0);
  v18 = sub_1D0B46B4C(&qword_1EC5F99D8, type metadata accessor for FitnessContextActivitySharingQuery, &unk_1D0B6634C);
  *(v0 + 160) = v17;
  *(v0 + 168) = v18;
  v19 = type metadata accessor for FitnessContextLocationQuery(0);
  v20 = sub_1D0B46B4C(&qword_1EC5F99D0, type metadata accessor for FitnessContextLocationQuery, &unk_1D0B66330);
  *(v0 + 176) = v19;
  *(v0 + 184) = v20;
  return v0;
}

uint64_t sub_1D0B45EF0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 144) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D0B2FC90;

  return sub_1D0B3C3B4(a1, v6, v7, v8, v9, v10, (v1 + 7), v1 + v5);
}

uint64_t sub_1D0B46000(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D0B2FC90;

  return sub_1D0B3FADC(a1, a2, v7, v6);
}

uint64_t sub_1D0B460F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B3FFF0(a1, v5, v4);
}

unint64_t sub_1D0B461A0()
{
  result = qword_1EC5F9BF8;
  if (!qword_1EC5F9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9BF8);
  }

  return result;
}

uint64_t sub_1D0B461F4(uint64_t a1)
{
  v4 = *(v1 + 104);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B2FC90;

  return sub_1D0B4521C(a1, v1 + 16, v4);
}

uint64_t sub_1D0B462B0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B45178(a1, v1 + v5);
}

uint64_t sub_1D0B4638C(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B450C4(a1, v1 + v5, v1 + v6);
}

uint64_t objectdestroy_30Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D0B46524(uint64_t a1)
{
  v4 = *(sub_1D0B63290() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D0B2FC90;

  return sub_1D0B45020(a1, v1 + v5);
}

uint64_t objectdestroy_35Tm()
{
  v1 = sub_1D0B633F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + v5));
  __swift_destroy_boxed_opaque_existential_0((v0 + v5 + 40));

  return MEMORY[0x1EEE6BDD0](v0, v5 + 88, v3 | 7);
}

uint64_t sub_1D0B466B0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B44E74(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1D0B467B8(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B449B4(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1D0B468C0(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2FC90;

  return sub_1D0B44900(a1, v1 + v5, v1 + v6);
}

uint64_t sub_1D0B469C8(uint64_t a1)
{
  v4 = *(sub_1D0B633F0() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0B2E1C4;

  return sub_1D0B44524(a1, v1 + v5, v1 + v6);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1D387E1B0);
  }

  return result;
}

uint64_t sub_1D0B46B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D0B46B94()
{
  result = qword_1EC5F9C20;
  if (!qword_1EC5F9C20)
  {
    sub_1D0B2B49C(255, &qword_1EC5F9A90, 0x1E696C638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9C20);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29FitnessIntelligenceDaemonCore0A20ContextQueryResolverV7FailureO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D0B46C20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0B46C74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D0B46CD0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D0B46D00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D0B46D48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D0B46DCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D0B46E14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D0B46E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9990, &unk_1D0B65DB0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B10, &qword_1D0B65968);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_1D0B640C0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  sub_1D0B643F0();
  v3[19] = sub_1D0B643E0();
  v8 = sub_1D0B64390();
  v3[20] = v8;
  v3[21] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D0B4702C, v8, v7);
}

uint64_t sub_1D0B4702C(uint64_t a1)
{
  v3 = *(v1 + 136);
  v2 = *(v1 + 144);
  v5 = *(v1 + 120);
  v4 = *(v1 + 128);
  v6 = *(v1 + 112);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  sub_1D0B63F70();
  sub_1D0B64090();
  (*(v3 + 8))(v2, v4);
  *(v1 + 176) = sub_1D0B63870();
  *(v1 + 260) = 0;
  sub_1D0B64420();
  *(v1 + 256) = *MEMORY[0x1E699DCC8];
  v10 = *(v6 + 104);
  *(v1 + 184) = v10;
  *(v1 + 192) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v5);
  v11 = swift_allocObject();
  *(v1 + 200) = v11;
  v11[2] = v9;
  v11[3] = v8;
  v11[4] = v7;
  v12 = v9;

  *(v1 + 208) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B48, &qword_1D0B65A00);
  *(v1 + 216) = sub_1D0B3A650(&qword_1EE052C48, &qword_1EC5F9B48, &qword_1D0B65A00, MEMORY[0x1E699DCD8]);
  v14 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B471FC, v14, v13);
}

uint64_t sub_1D0B471FC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_1D0B63910();

  v4 = *(v2 + 8);
  v0[28] = v4;
  v0[29] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = v0[20];
  v6 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D0B472D0, v5, v6);
}

uint64_t sub_1D0B472D0(uint64_t a1)
{
  v2 = *(v1 + 184);
  v3 = *(v1 + 256);
  v4 = *(v1 + 120);
  v5 = *(v1 + 104);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 56);
  *(v1 + 240) = sub_1D0B63870();
  *(v1 + 261) = 2;
  sub_1D0B64420();
  v2(v4, v3, v5);
  v9 = swift_allocObject();
  *(v1 + 248) = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v7;
  v10 = v8;

  v12 = sub_1D0B64390();

  return MEMORY[0x1EEE6DFA0](sub_1D0B473E4, v12, v11);
}

uint64_t sub_1D0B473E4()
{
  v1 = v0[28];
  v2 = v0[15];
  v3 = v0[13];
  sub_1D0B63910();

  v1(v2, v3);
  v4 = v0[20];
  v5 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D0B474A0, v4, v5);
}

uint64_t sub_1D0B474A0()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  sub_1D0B639A0();
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AE8, &qword_1D0B65990);
  v0[6] = sub_1D0B3A650(&qword_1EE052C40, &qword_1EC5F9AE8, &qword_1D0B65990, MEMORY[0x1E699DD20]);
  v0[2] = v4;

  sub_1D0B64410();
  (*(v2 + 104))(v1, *MEMORY[0x1E699DCE0], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B30, &unk_1D0B65DF0);
  v5 = sub_1D0B63C90();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D0B65D50;
  v10 = v9 + v8;
  v11 = *(v6 + 104);
  v11(v10, *MEMORY[0x1E699E410], v5);
  v11(v10 + v7, *MEMORY[0x1E699E428], v5);
  v11(v10 + 2 * v7, *MEMORY[0x1E699E430], v5);
  v11(v10 + 3 * v7, *MEMORY[0x1E699E360], v5);
  v11(v10 + 4 * v7, *MEMORY[0x1E699E438], v5);
  v11(v10 + 5 * v7, *MEMORY[0x1E699E3A8], v5);
  v11(v10 + 6 * v7, *MEMORY[0x1E699E3B0], v5);
  v11(v10 + 7 * v7, *MEMORY[0x1E699E400], v5);
  sub_1D0B63930();
  (*(v0[11] + 8))(v0[12], v0[10]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D0B477F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1D0B63EE0();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v5 = sub_1D0B63C90();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4790C, 0, 0);
}

uint64_t sub_1D0B4790C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E699E410], v0[6]);
  (*(v3 + 104))(v1, *MEMORY[0x1E699E530], v2);
  v10 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1D0B482A0();
  *v4 = v0;
  v4[1] = sub_1D0B47A18;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[3];

  return v10(v6, v7, v8, v5);
}

uint64_t sub_1D0B47A18()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B482F8, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_1D0B47C44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B2FC90;

  return sub_1D0B477F0(v2, v3, v4);
}

uint64_t sub_1D0B47CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = sub_1D0B63EE0();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v5 = sub_1D0B63C90();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B47E08, 0, 0);
}

uint64_t sub_1D0B47E08()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E699E410], v0[6]);
  (*(v3 + 104))(v1, *MEMORY[0x1E699E530], v2);
  v10 = (*MEMORY[0x1E699DD08] + MEMORY[0x1E699DD08]);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_1D0B482A0();
  *v4 = v0;
  v4[1] = sub_1D0B47F14;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[3];

  return v10(v6, v7, v8, v5);
}

uint64_t sub_1D0B47F14()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 80) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D0B48140, 0, 0);
  }

  else
  {

    v9 = *(v8 + 8);

    return v9();
  }
}

uint64_t sub_1D0B48140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D0B481F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D0B2E1C4;

  return sub_1D0B47CEC(v2, v3, v4);
}

unint64_t sub_1D0B482A0()
{
  result = qword_1EE052C10;
  if (!qword_1EE052C10)
  {
    sub_1D0B63EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE052C10);
  }

  return result;
}

uint64_t sub_1D0B482FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[0] = a3;
  v26 = a1;
  v27 = a2;
  v28 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9B88, &qword_1D0B65B50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = v24 - v8;
  v9 = sub_1D0B63A20();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v24[2] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D0B63A60();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  v18 = a4;
  v19 = *(a4 + 32);
  v20 = a3;
  v21 = v18;
  v19(v20);
  v24[1] = sub_1D0B63A30();
  v22 = *(v12 + 8);
  v22(v17, v11);
  (v19)(v24[0], v21);
  sub_1D0B63A40();
  v22(v15, v11);
  sub_1D0B2B870(v26, v29, &qword_1EC5F9BA8, &qword_1D0B65B70);
  sub_1D0B2B870(v27, v25, &qword_1EC5F9B88, &qword_1D0B65B50);
  return sub_1D0B639E0();
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = sub_1D0B63A60();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = a4(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_1D0B63A60();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = a5(0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_1D0B489DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0B48A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1D0B63A60();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0B48AA8(uint64_t a1)
{
  result = sub_1D0B63A60();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D0B48B30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D0B63A60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1D0B48D70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D0B63A60() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 + v13;
  v16 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v14 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v14 < a2)
  {
    v18 = ~v14 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_46:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
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
  if (v9 >= v11)
  {
    v24 = *(v8 + 56);

    v24(a1, a2);
  }

  else
  {
    v23 = *(v10 + 56);

    v23(&a1[v15] & ~v13, a2, v11);
  }
}

uint64_t sub_1D0B49054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1D0B63A50() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FitnessContextSnapshotPropertiesQuery(0, a3, a4, v6);
  return sub_1D0B64250() & 1;
}

uint64_t sub_1D0B490C8(uint64_t a1, uint64_t a2)
{
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0], MEMORY[0x1E699E2C8]);
  sub_1D0B64220();
  return sub_1D0B64220();
}

uint64_t sub_1D0B4915C(uint64_t a1)
{
  sub_1D0B64880();
  sub_1D0B490C8(v3, a1);
  return sub_1D0B648A0();
}

uint64_t sub_1D0B491AC(uint64_t a1, uint64_t a2)
{
  sub_1D0B64880();
  sub_1D0B490C8(v4, a2);
  return sub_1D0B648A0();
}

uint64_t sub_1D0B492A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D0B49548@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D0B63A60();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D0B495F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_1D0B64880();
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0], MEMORY[0x1E699E2C8]);
  sub_1D0B64220();
  a3(0);
  sub_1D0B492A8(a4, a5, a6);
  sub_1D0B64220();
  return sub_1D0B648A0();
}

uint64_t sub_1D0B4972C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0], MEMORY[0x1E699E2C8]);
  sub_1D0B64220();
  a4(0);
  sub_1D0B492A8(a5, a6, a7);
  return sub_1D0B64220();
}

uint64_t sub_1D0B49848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  sub_1D0B64880();
  sub_1D0B63A60();
  sub_1D0B492A8(&qword_1EC5F99A0, MEMORY[0x1E699E2C0], MEMORY[0x1E699E2C8]);
  sub_1D0B64220();
  a4(0);
  sub_1D0B492A8(a5, a6, a7);
  sub_1D0B64220();
  return sub_1D0B648A0();
}

uint64_t sub_1D0B49948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((sub_1D0B63A50() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return a5(a1 + v8, a2 + v8);
}

uint64_t sub_1D0B49A1C(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D68, type metadata accessor for FitnessContextLocationQuery, &unk_1D0B662F0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49A80(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D70, type metadata accessor for FitnessContextActivitySharingQuery, &unk_1D0B66288);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49AE4(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D78, type metadata accessor for FitnessContextVitalsQuery, &unk_1D0B66220);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49B48(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D80, type metadata accessor for FitnessContextTrainingLoadQuery, &unk_1D0B661B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49BAC(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D88, type metadata accessor for FitnessContextAwardsQuery, &unk_1D0B66150);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49C10(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D90, type metadata accessor for FitnessContextWeeklySummaryQuery, &unk_1D0B660E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49C74(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9D98, type metadata accessor for FitnessContextWorkoutWeekQuery, &unk_1D0B66080);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D0B49CD8(uint64_t a1)
{
  result = sub_1D0B492A8(&qword_1EC5F9DA0, type metadata accessor for FitnessContextActivitySummaryQuery, &unk_1D0B66018);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D0B49D34()
{
  result = qword_1EC5F9DA8;
  if (!qword_1EC5F9DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC5F9BA0, &qword_1D0B66410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9DA8);
  }

  return result;
}

uint64_t sub_1D0B49D98(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DuetMessageCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DuetMessageCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D0B49F90()
{
  result = qword_1EE0528D0;
  if (!qword_1EE0528D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC5F9DC8, qword_1D0B66450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0528D0);
  }

  return result;
}

uint64_t sub_1D0B4A000(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000038;
  v3 = "com.apple.fitnessintelligenced";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "heduling.OnPowerActivity";
      v5 = 0xD000000000000047;
    }

    else
    {
      v6 = "torePrivateDataActivity";
      v5 = 0xD00000000000003CLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000038;
    }

    else
    {
      v5 = 0xD000000000000044;
    }

    if (v4)
    {
      v6 = "rPrivateDataActivity";
    }

    else
    {
      v6 = "com.apple.fitnessintelligenced";
    }
  }

  if (a2 > 1u)
  {
    v3 = "heduling.OnPowerActivity";
    v7 = 0xD000000000000047;
    v8 = "torePrivateDataActivity";
    v2 = 0xD00000000000003CLL;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000044;
    v8 = "rPrivateDataActivity";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D0B647D0();
  }

  return v12 & 1;
}

unint64_t sub_1D0B4A120@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D0B4A440(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D0B4A150(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000038;
  v3 = "heduling.OnPowerActivity";
  v4 = 0xD000000000000047;
  if (*v1 != 2)
  {
    v4 = 0xD00000000000003CLL;
    v3 = "torePrivateDataActivity";
  }

  if (*v1)
  {
    v5 = "rPrivateDataActivity";
  }

  else
  {
    v2 = 0xD000000000000044;
    v5 = "com.apple.fitnessintelligenced";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1D0B4A1C8()
{
  sub_1D0B64880();
  sub_1D0B642B0();

  return sub_1D0B648A0();
}

uint64_t sub_1D0B4A280(uint64_t a1)
{
  sub_1D0B642B0();
}

uint64_t sub_1D0B4A324(uint64_t a1)
{
  sub_1D0B64880();
  sub_1D0B642B0();

  return sub_1D0B648A0();
}

unint64_t sub_1D0B4A3EC()
{
  result = qword_1EE0529A8[0];
  if (!qword_1EE0529A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0529A8);
  }

  return result;
}

unint64_t sub_1D0B4A440(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D0B64770();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D0B4A4B0()
{
  v1 = *v0;
  sub_1D0B64880();
  MEMORY[0x1D387DB10](v1);
  return sub_1D0B648A0();
}

uint64_t sub_1D0B4A524(uint64_t a1)
{
  v2 = *v1;
  sub_1D0B64880();
  MEMORY[0x1D387DB10](v2);
  return sub_1D0B648A0();
}

char *sub_1D0B4A568(void *a1)
{
  v3 = sub_1D0B63430();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider] = 0;
  sub_1D0B63420();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_identifier], v6, v3);
  *&v1[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_healthStore] = a1;
  v7 = type metadata accessor for WorkoutDatabaseClient(0);
  v16.receiver = v1;
  v16.super_class = v7;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D0B63E20();
  (*(v4 + 16))(v6, &v9[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_identifier], v3);
  v10 = objc_allocWithZone(MEMORY[0x1E696C500]);
  v11 = sub_1D0B64260();

  v12 = sub_1D0B63400();
  v13 = [v10 initWithHealthStore:v8 taskIdentifier:v11 exportedObject:v9 taskUUID:v12];

  (*(v4 + 8))(v6, v3);
  v14 = *&v9[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider];
  *&v9[OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider] = v13;

  return v9;
}

id sub_1D0B4A7A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDatabaseClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutDatabaseClient(uint64_t a1)
{
  result = qword_1EE052CB8;
  if (!qword_1EE052CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D0B4A8B8(uint64_t a1)
{
  result = sub_1D0B63430();
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

void sub_1D0B4A960(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)())
{
  sub_1D0B22F04(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E48, &unk_1D0B665A0);
  if (swift_dynamicCast())
  {
    a4();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D0B4BA0C();
    v6 = swift_allocError();
    *v7 = 1;
    a2();
  }
}

uint64_t sub_1D0B4AA34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void sub_1D0B4AAA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D0B4AB0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v51 = a3;
  v52 = a4;
  v54 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  v44 = v5;
  v50 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v43 - v9;
  v48 = v10;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v47 = &v43 - v11;
  v13 = sub_1D0B633F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v43 - v17;
  v18 = *(v14 + 16);
  v18();
  (v18)(&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v52, v13);
  v19 = v50;
  v52 = *(v50 + 16);
  v52(v12, a1, v5);
  v20 = *(v14 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = (v15 + v20 + v21) & ~v20;
  v23 = *(v19 + 80);
  v51 = v23 | 7;
  v24 = swift_allocObject();
  v25 = *(v14 + 32);
  v25(v24 + v21, v45, v13);
  v26 = v13;
  v27 = v44;
  v25(v24 + v22, v46, v26);
  v28 = v19;
  v29 = *(v19 + 32);
  v29(v24 + ((v15 + v23 + v22) & ~v23), v47, v27);
  v30 = v52;
  v31 = v53;
  v52(v53, v49, v27);
  v30(v55, v31, v27);
  v32 = swift_allocObject();
  v29(v32 + ((v23 + 16) & ~v23), v31, v27);
  v33 = *(v54 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore21WorkoutDatabaseClient_proxyProvider);
  if (v33)
  {
    v34 = swift_allocObject();
    v34[2] = sub_1D0B4B990;
    v34[3] = v32;
    v34[4] = sub_1D0B4B898;
    v34[5] = v24;
    v60 = sub_1D0B4BA60;
    v61 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_1D0B4AA34;
    v59 = &block_descriptor_1;
    v35 = _Block_copy(&aBlock);
    v36 = v33;

    v60 = sub_1D0B4B990;
    v61 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_1D0B4AAA4;
    v59 = &block_descriptor_14;
    v37 = _Block_copy(&aBlock);

    [v36 fetchProxyWithHandler:v35 errorHandler:v37];

    _Block_release(v37);
    _Block_release(v35);

    v38 = v55;
  }

  else
  {
    sub_1D0B4BA0C();
    v39 = swift_allocError();
    *v40 = 0;
    v41 = v55;
    sub_1D0B4B4F8(v39, v55);

    v38 = v41;
  }

  return (*(v28 + 8))(v38, v27);
}

void sub_1D0B4B034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  v10 = sub_1D0B633A0();
  v11 = sub_1D0B633A0();
  (*(v7 + 16))(v9, a4, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = sub_1D0B4BB18;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B4B468;
  aBlock[3] = &block_descriptor_20;
  v14 = _Block_copy(aBlock);

  [a1 queryWithStartDate:v10 endDate:v11 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1D0B4B218(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v6 = sub_1D0B63BD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
    return sub_1D0B643B0();
  }

  else
  {
    v12 = *(a1 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v17[0] = a3;
      v18 = MEMORY[0x1E69E7CC0];
      sub_1D0B23EA8(0, v12, 0);
      v13 = v18;
      v17[1] = v7 + 32;
      v14 = (a1 + 40);
      do
      {
        sub_1D0B4BBA4(*(v14 - 1), *v14);
        sub_1D0B4BBF8();
        sub_1D0B63DC0();
        v18 = v13;
        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          sub_1D0B23EA8((v15 > 1), v16 + 1, 1);
          v13 = v18;
        }

        v14 += 2;
        v13[2] = v16 + 1;
        (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v9, v6);
        --v12;
      }

      while (v12);
    }

    v18 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
    return sub_1D0B643C0();
  }
}

void sub_1D0B4B468(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1D0B64340();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1D0B4B4F8(void *a1, uint64_t a2)
{
  v4 = sub_1D0B640C0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0B63F50();
  v8 = a1;
  v9 = sub_1D0B640A0();
  v10 = sub_1D0B644D0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v14 = sub_1D0B64820();
    v16 = sub_1D0B22738(v14, v15, &v20);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1D0B1E000, v9, v10, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1D387E1B0](v13, -1, -1);
    MEMORY[0x1D387E1B0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v20 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  return sub_1D0B643B0();
}

uint64_t sub_1D0B4B764()
{
  v0 = sub_1D0B640C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D0B63F50();
  v4 = sub_1D0B640A0();
  v5 = sub_1D0B644F0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D0B1E000, v4, v5, "WorkoutDatabaseClient connection invalidated", v6, 2u);
    MEMORY[0x1D387E1B0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1D0B4B898(void *a1)
{
  v3 = *(sub_1D0B633F0() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590) - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  sub_1D0B4B034(a1, v1 + v5, v1 + v7, v9);
}

uint64_t sub_1D0B4B990(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D0B4B4F8(a1, v4);
}

unint64_t sub_1D0B4BA0C()
{
  result = qword_1EC5F9E40;
  if (!qword_1EC5F9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9E40);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D0B4BB18(uint64_t a1, unint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9E38, &unk_1D0B66590) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D0B4B218(a1, a2, v6);
}

uint64_t sub_1D0B4BBA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1D0B4BBF8()
{
  result = qword_1EC5F9E50;
  if (!qword_1EC5F9E50)
  {
    sub_1D0B63BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDatabaseClient.WorkoutDatabaseClientError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutDatabaseClient.WorkoutDatabaseClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D0B4BDB0()
{
  result = qword_1EC5F9E58;
  if (!qword_1EC5F9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC5F9E58);
  }

  return result;
}

uint64_t HealthStore.__allocating_init(healthStore:)(void *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1D0B63480();
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_assertion) = 0;
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) = a1;
  v3 = objc_allocWithZone(type metadata accessor for WorkoutDatabaseClient(0));
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_workoutDatabaseClient) = sub_1D0B4A568(a1);
  return v2;
}

uint64_t sub_1D0B4BEA4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0B645A0())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x1D387D8B0](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_1D0B64660();
        sub_1D0B64690();
        v4 = v15;
        sub_1D0B646A0();
        sub_1D0B64670();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v12;
}

uint64_t HealthStore.init(healthStore:)(void *a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  sub_1D0B63480();
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_assertion) = 0;
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) = a1;
  v4 = objc_allocWithZone(type metadata accessor for WorkoutDatabaseClient(0));
  *(v2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_workoutDatabaseClient) = sub_1D0B4A568(a1);
  return v2;
}

uint64_t sub_1D0B4C0D8(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D0B4C0F8, v1, 0);
}

uint64_t sub_1D0B4C0F8()
{
  v1 = v0[4];
  v2 = [objc_opt_self() workoutType];
  v0[5] = v2;
  v3 = objc_opt_self();
  v4 = sub_1D0B63400();
  v5 = [v3 predicateForObjectWithUUID_];
  v0[6] = v5;

  v6 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore, &protocol conformance descriptor for HealthStore);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EC0, &unk_1D0B666A8);
  *v8 = v0;
  v8[1] = sub_1D0B4C2B4;

  return MEMORY[0x1EEE6DDE0](v0 + 2, v1, v6, 0x2874756F6B726F77, 0xED0000293A726F66, sub_1D0B4C6C8, v7, v9);
}

uint64_t sub_1D0B4C2B4()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1D0B4C3E0, v1, 0);
}

uint64_t sub_1D0B4C3E0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t type metadata accessor for HealthStore(uint64_t a1)
{
  result = qword_1EE052CF0;
  if (!qword_1EE052CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D0B4C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FD0, &unk_1D0B66B50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, v11, v8);
  v14 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
  aBlock[4] = sub_1D0B5F468;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B59550;
  aBlock[3] = &block_descriptor_228;
  v15 = _Block_copy(aBlock);
  v16 = [v14 initWithSampleType:a2 predicate:a3 limit:1 sortDescriptors:0 resultsHandler:v15];
  _Block_release(v15);

  [*(a4 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) executeQuery_];
}

unint64_t sub_1D0B4C6D4(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_11;
  }

  result = sub_1D0B4C7CC(a2, 0x1E696C588);
  if (!result)
  {
    goto LABEL_11;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v5 = result;
    v6 = sub_1D0B645A0();
    result = v5;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FD0, &unk_1D0B66B50);
    return sub_1D0B643C0();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D387D8B0](0);
    goto LABEL_10;
  }

  if (*(v3 + 16))
  {
    v4 = *(result + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D0B4C7CC(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_1D0B64680();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0B645A0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D387D8B0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D0B64660();
      sub_1D0B64690();
      sub_1D0B646A0();
      sub_1D0B64670();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D0B645A0();
    sub_1D0B64680();
  }

  return v9;
}

uint64_t sub_1D0B4C934(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D0B4C9E0;

  return sub_1D0B5AD98(a1);
}

uint64_t sub_1D0B4C9E0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1D0B4CAE0(uint64_t a1, char a2)
{
  *(v3 + 312) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1D0B640E0();
  *(v3 + 32) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EC8, &qword_1D0B666C8);
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_1D0B634A0();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_1D0B63290();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED0, &qword_1D0B666D0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  v7 = sub_1D0B63AD0();
  *(v3 + 144) = v7;
  *(v3 + 152) = *(v7 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v8 = sub_1D0B633F0();
  *(v3 + 184) = v8;
  *(v3 + 192) = *(v8 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  *(v3 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED8, &qword_1D0B666D8);
  *(v3 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4CE48, v2, 0);
}

uint64_t sub_1D0B4CE48()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[23];
  v4 = v0[24];
  sub_1D0B63280();
  sub_1D0B63350();
  v5 = *(v4 + 8);
  v5(v1, v3);
  sub_1D0B63260();
  sub_1D0B63350();
  v38 = v5;
  v5(v2, v3);
  sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8], MEMORY[0x1E699E2F0]);
  v6 = sub_1D0B64240();
  if (v6)
  {
    v8 = v0[34];
    v41 = v8;
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[15];
    v39 = v0[33];
    v40 = v0[11];
    v42 = v0[9];
    v43 = v0[8];
    v15 = *(v11 + 32);
    v15(v13, v0[22], v10);
    v15(v13 + *(v14 + 48), v9, v10);
    sub_1D0B2B870(v13, v12, &qword_1EC5F9ED0, &qword_1D0B666D0);
    v16 = *(v14 + 48);
    v15(v8, v12, v10);
    v17 = *(v11 + 8);
    v17(v12 + v16, v10);
    sub_1D0B2B5B8(v13, v12, &qword_1EC5F9ED0, &qword_1D0B666D0);
    v15(v41 + *(v39 + 36), v12 + *(v14 + 48), v10);
    v17(v12, v10);
    sub_1D0B63460();
    sub_1D0B63AC0();
    v18 = *(v42 + 8);
    v18(v40, v43);
    v19 = v0[29];
    v20 = v0[28];
    v21 = v0[23];
    sub_1D0B63360();
    v38(v20, v21);
    sub_1D0B63340();
    v38(v19, v21);
    sub_1D0B63AB0();
    v22 = v0[20];
    v23 = v0[18];
    v24 = v0[10];
    v25 = v0[8];
    sub_1D0B63460();
    sub_1D0B63AC0();
    v18(v24, v25);
    v17(v22, v23);
    v26 = v0[32];
    v27 = v0[26];
    v28 = v0[25];
    v29 = v0[23];
    v44 = v0[3];
    sub_1D0B63360();
    v38(v28, v29);
    sub_1D0B63340();
    v38(v27, v29);
    sub_1D0B63270();
    v30 = objc_opt_self();
    sub_1D0B63280();
    v31 = sub_1D0B633A0();
    v38(v26, v29);
    sub_1D0B63260();
    v32 = sub_1D0B633A0();
    v38(v26, v29);
    v33 = [v30 predicateForSamplesWithStartDate:v31 endDate:v32 options:1];
    v0[35] = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE0, &qword_1D0B666E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE8, &unk_1D0B666E8);
    *(swift_allocObject() + 16) = xmmword_1D0B658C0;
    sub_1D0B2B49C(0, &qword_1EE052880, 0x1E696C588);
    v34 = v33;
    sub_1D0B64100();

    sub_1D0B64110();
    sub_1D0B640D0();
    sub_1D0B64120();
    v35 = *(v44 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
    v36 = swift_task_alloc();
    v0[36] = v36;
    *v36 = v0;
    v36[1] = sub_1D0B4D5B0;
    v7 = v0[5];
    v6 = v35;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEDC7698](v6, v7);
}

uint64_t sub_1D0B4D5B0(uint64_t a1)
{
  v4 = *v2;
  v4[37] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_1D0B4D8FC;
  }

  else
  {
    v4[38] = a1;
    v6 = sub_1D0B4D6EC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D0B4D6EC()
{
  v1 = v0[38];
  v2 = v0[34];
  v12 = v0[35];
  v3 = v0[13];
  v13 = v0[14];
  v4 = v0[12];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = swift_task_alloc();
  *(v8 + 16) = v2;
  v9 = sub_1D0B4BEA4(sub_1D0B5B2EC, v8, v1);

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v13, v4);
  sub_1D0B2B620(v2, &qword_1EC5F9ED8, &qword_1D0B666D8);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D0B4D8FC()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);

  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(*(v0 + 112), *(v0 + 96));
  sub_1D0B2B620(*(v0 + 272), &qword_1EC5F9ED8, &qword_1D0B666D8);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D0B4DAB8(id *a1, uint64_t a2)
{
  v3 = sub_1D0B63AD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D0B633F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*a1 startDate];
  sub_1D0B633C0();

  sub_1D0B63350();
  (*(v8 + 8))(v10, v7);
  sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8], MEMORY[0x1E699E2F0]);
  if (sub_1D0B64230())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED8, &qword_1D0B666D8);
    v12 = sub_1D0B64240();
  }

  else
  {
    v12 = 0;
  }

  (*(v4 + 8))(v6, v3);
  return v12 & 1;
}

uint64_t sub_1D0B4DCF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EC8, &qword_1D0B666C8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4DDBC, v1, 0);
}

uint64_t sub_1D0B4DDBC()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE0, &qword_1D0B666E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EE8, &unk_1D0B666E8);
  *(swift_allocObject() + 16) = xmmword_1D0B658C0;
  sub_1D0B2B49C(0, &qword_1EE052880, 0x1E696C588);
  sub_1D0B64100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EF0, &qword_1D0B666F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9EF8, &unk_1D0B66700);
  *(swift_allocObject() + 16) = xmmword_1D0B658C0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1D387C560](KeyPath, 1);
  sub_1D0B64110();
  v3 = *(v1 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1D0B4E014;
  v5 = v0[4];

  return MEMORY[0x1EEDC7698](v3, v5);
}

uint64_t sub_1D0B4E014(uint64_t a1)
{
  v4 = *v2;
  v4[8] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_1D0B4E1D4;
  }

  else
  {
    v4[9] = a1;
    v6 = sub_1D0B4E150;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D0B4E150()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1D0B4E1D4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

void sub_1D0B4E254(id *a1)
{
  v1 = [*a1 endDate];
  sub_1D0B633C0();
}

uint64_t sub_1D0B4E2B4()
{
  v1[3] = v0;
  v1[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED0, &qword_1D0B666D0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = sub_1D0B63AD0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9950, &qword_1D0B66740);
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4E430, v0, 0);
}

uint64_t sub_1D0B4E430()
{
  v1 = *(v0 + 24);
  v2 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore, &protocol conformance descriptor for HealthStore);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F00, &qword_1D0B66748);
  *v3 = v0;
  v3[1] = sub_1D0B4E55C;
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, v1, v2, 0xD000000000000012, 0x80000001D0B67550, sub_1D0B5B318, v5, v4);
}

uint64_t sub_1D0B4E55C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1D0B4E66C, v1, 0);
}

uint64_t sub_1D0B4E66C()
{
  v24 = v0;
  v1 = v0[2];
  v21 = MEMORY[0x1E69E7CC0];
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  sub_1D0B4F1D4(v1, v22, &v21);

  if (v23 == 1)
  {
    v2 = v21;
    goto LABEL_8;
  }

  v3 = v0[7];
  sub_1D0B63AE0();
  sub_1D0B63AE0();
  sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8], MEMORY[0x1E699E2F0]);
  v2 = v3;
  if ((sub_1D0B64240() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v0[13];
  v20 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v10 = v0[4];
  v9 = v0[5];
  v11 = *(v6 + 32);
  v11(v8, v0[10], v7);
  v11(v8 + *(v10 + 48), v5, v7);
  sub_1D0B2B870(v8, v9, &qword_1EC5F9ED0, &qword_1D0B666D0);
  v12 = *(v10 + 48);
  v11(v4, v9, v7);
  v13 = *(v6 + 8);
  v13(v9 + v12, v7);
  sub_1D0B2B5B8(v8, v9, &qword_1EC5F9ED0, &qword_1D0B666D0);
  v11(v4 + *(v20 + 36), v9 + *(v10 + 48), v7);
  v13(v9, v7);
  v2 = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_12:
    v2 = sub_1D0B2CD5C(0, v2[2] + 1, 1, v2);
  }

  v15 = v2[2];
  v14 = v2[3];
  if (v15 >= v14 >> 1)
  {
    v2 = sub_1D0B2CD5C((v14 > 1), v15 + 1, 1, v2);
  }

  v17 = v0[12];
  v16 = v0[13];
  v2[2] = v15 + 1;
  sub_1D0B2B5B8(v16, v2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15, &qword_1EC5F9950, &qword_1D0B66740);
LABEL_8:

  v18 = v0[1];

  return v18(v2);
}

void sub_1D0B4E964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FC0, &qword_1D0B66B40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D0B64290();
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = sub_1D0B64260();

  v10 = [v8 initWithKey:v9 ascending:1];

  sub_1D0B2B49C(0, &qword_1EE0528C8, 0x1E696C3D0);
  v11 = [swift_getObjCClassFromMetadata() pauseRingsScheduleType];
  if (v11)
  {
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AA8, &qword_1D0B66790);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D0B66680;
    *(v13 + 32) = v10;
    (*(v5 + 16))(v7, a1, v4);
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    (*(v5 + 32))(v15 + v14, v7, v4);
    v16 = objc_allocWithZone(MEMORY[0x1E696C3C8]);
    sub_1D0B2B49C(0, &qword_1EE0528A0, 0x1E696AEB0);
    v17 = v10;
    v18 = sub_1D0B64330();

    aBlock[4] = sub_1D0B5F3B0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D0B59550;
    aBlock[3] = &block_descriptor_220;
    v19 = _Block_copy(aBlock);
    v20 = [v16 initWithSampleType:v12 predicate:0 limit:0 sortDescriptors:v18 resultsHandler:v19];

    _Block_release(v19);

    [*(a2 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) executeQuery_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D0B4ECA8(uint64_t a1, unint64_t a2)
{
  if (!a2 || !sub_1D0B4C7CC(a2, 0x1E696C320))
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FC0, &qword_1D0B66B40);
  return sub_1D0B643C0();
}

void *sub_1D0B4ED20(void **a1, uint64_t a2, void *a3)
{
  v41 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9ED0, &qword_1D0B666D0);
  v5 = MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v34 - v7;
  v8 = sub_1D0B63AD0();
  v38 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9950, &qword_1D0B66740);
  v40 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v43 = &v34 - v14;
  v15 = *a1;
  v16 = *a2;
  v17 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = [v15 startDateIndex];
  v20 = v19;
  if (v18 == 1)
  {
    result = [v15 endDateIndex];
    if (result >= v20)
    {
      v16 = v20;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v35 = v15;
    if (v17 >= v19)
    {
      goto LABEL_11;
    }

    sub_1D0B63AE0();
    sub_1D0B63AE0();
    sub_1D0B5CB68(&qword_1EE052C18, MEMORY[0x1E699E2E8], MEMORY[0x1E699E2F0]);
    if (sub_1D0B64240())
    {
      v22 = v37;
      v23 = v38;
      v24 = *(v38 + 32);
      v24(v37, v13, v8);
      v25 = v42;
      v24((v22 + *(v42 + 48)), v11, v8);
      v26 = v39;
      sub_1D0B2B870(v22, v39, &qword_1EC5F9ED0, &qword_1D0B666D0);
      v34 = *(v25 + 48);
      v27 = v43;
      v24(v43, v26, v8);
      v28 = *(v23 + 8);
      v28(v26 + v34, v8);
      sub_1D0B2B5B8(v22, v26, &qword_1EC5F9ED0, &qword_1D0B666D0);
      v24((v27 + *(v36 + 36)), (v26 + *(v42 + 48)), v8);
      v28(v26, v8);
      v17 = v41;
      v16 = *v41;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v16;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
  do
  {
    __break(1u);
LABEL_16:
    v16 = sub_1D0B2CD5C(0, v16[2] + 1, 1, v16);
    *v17 = v16;
LABEL_7:
    v30 = v35;
    v31 = v40;
    v33 = v16[2];
    v32 = v16[3];
    if (v33 >= v32 >> 1)
    {
      v16 = sub_1D0B2CD5C((v32 > 1), v33 + 1, 1, v16);
      *v17 = v16;
    }

    v16[2] = v33 + 1;
    sub_1D0B2B5B8(v43, v16 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v33, &qword_1EC5F9950, &qword_1D0B66740);
    v16 = [v30 startDateIndex];
    result = [v30 endDateIndex];
    if (result >= v16)
    {
      break;
    }

    __break(1u);
LABEL_11:
    result = [v35 endDateIndex];
  }

  while (result < v16);
LABEL_12:
  *a2 = v16;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

void sub_1D0B4F1D4(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D0B645A0())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D387D8B0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1D0B4ED20(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D0B4F2D4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 104) = a3;
  *(v4 + 16) = a1;
  sub_1D0B640E0();
  *(v4 + 40) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F08, &qword_1D0B66758);
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B4F3D4, v3, 0);
}

uint64_t sub_1D0B4F3D4()
{
  v7 = v0[4];
  v1 = [objc_opt_self() predicateForObjectsFromWorkout_];
  v0[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F10, &qword_1D0B66760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F18, &unk_1D0B66768);
  *(swift_allocObject() + 16) = xmmword_1D0B658C0;
  sub_1D0B2B49C(0, &qword_1EE052888, 0x1E696C3A8);
  v2 = v1;
  sub_1D0B640F0();

  sub_1D0B64110();
  sub_1D0B640D0();
  sub_1D0B64120();
  v3 = *(v7 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1D0B4F600;
  v5 = v0[6];

  return MEMORY[0x1EEDC7698](v3, v5);
}

uint64_t sub_1D0B4F600(uint64_t a1)
{
  v4 = *v2;
  v4[11] = v1;

  v5 = v4[4];
  if (v1)
  {
    v6 = sub_1D0B4F7DC;
  }

  else
  {
    v4[12] = a1;
    v6 = sub_1D0B4F73C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D0B4F73C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 96);

  return v4(v5);
}

uint64_t sub_1D0B4F7DC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D0B4F878(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D0B5F56C;

  return sub_1D0B5B320(a1, a2);
}

void sub_1D0B4F930(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = [objc_opt_self() predicateForObjectsFromWorkout_];
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  (*(v8 + 32))(v17 + v14, v11, v7);
  *(v17 + v15) = v12;
  v18 = v25;
  *(v17 + v16) = v25;
  v19 = objc_allocWithZone(MEMORY[0x1E696C368]);
  aBlock[4] = sub_1D0B5F2B8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B59608;
  aBlock[3] = &block_descriptor_214;
  v20 = _Block_copy(aBlock);
  v21 = a3;

  v22 = v18;

  v23 = [v19 initWithQuantityType:v22 predicate:v13 quantityHandler:v20];
  _Block_release(v20);

  [v23 setIncludeSample_];
  [v23 setOrderByQuantitySampleStartDate_];
  [v21 executeQuery_];
}

void sub_1D0B4FBF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v83 = a7;
  v84 = a8;
  LODWORD(v81) = a5;
  v80 = a3;
  v82 = a2;
  v86[3] = *MEMORY[0x1E69E9840];
  v12 = sub_1D0B640C0();
  v79 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  v18 = sub_1D0B633F0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v68 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB8, &qword_1D0B66B38);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v68 - v26;
  v28 = sub_1D0B63290();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v33 = a6;
    [v83 stopQuery_];
    v86[0] = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
    sub_1D0B643B0();
  }

  else
  {
    v75 = v22;
    v76 = v24;
    v77 = v19;
    v78 = a1;
    v72 = v17;
    v73 = v15;
    v71 = v12;
    v34 = v81;
    v35 = v82;
    if (v82)
    {
      v74 = v32;
      v36 = v29;
      v37 = v30;
      sub_1D0B2B870(v80, v27, &qword_1EC5F9FB8, &qword_1D0B66B38);
      if ((*(v37 + 48))(v27, 1, v36) != 1)
      {
        v69 = a10;
        v70 = v37;
        v38 = *(v37 + 32);
        v80 = v36;
        v38(v74, v27, v36);
        v39 = v35;
        v40 = v76;
        sub_1D0B63280();
        v41 = v75;
        sub_1D0B63260();
        v42 = objc_allocWithZone(MEMORY[0x1E696C358]);
        v43 = v39;
        v44 = sub_1D0B633A0();
        v45 = sub_1D0B633A0();
        v86[0] = 0;
        v82 = v43;
        v46 = [v42 initWithType:v69 startDate:v44 endDate:v45 quantity:v43 error:v86];

        if (v46)
        {
          v47 = v86[0];

          v48 = *(v77 + 8);
          v48(v41, v18);
          v48(v40, v18);
          swift_beginAccess();
          v49 = v46;
          MEMORY[0x1D387D5A0]();
          if (*((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a9 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D0B64360();
          }

          sub_1D0B64380();
          swift_endAccess();

          if ((v34 & 1) == 0)
          {
            (*(v70 + 8))(v74, v80, v78);

            return;
          }

          [v83 stopQuery_];
          swift_beginAccess();
          v85 = *(a9 + 16);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
          sub_1D0B643C0();
        }

        else
        {
          v50 = v86[0];
          v51 = sub_1D0B63320();

          swift_willThrow();
          v52 = *(v77 + 8);
          v52(v41, v18);
          v52(v40, v18);
          v53 = v72;
          sub_1D0B63F70();
          v54 = v51;
          v55 = sub_1D0B640A0();
          v56 = sub_1D0B644E0();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            *v57 = 138412290;
            v59 = v51;
            v60 = _swift_stdlib_bridgeErrorToNSError();
            *(v57 + 4) = v60;
            *v58 = v60;
            _os_log_impl(&dword_1D0B1E000, v55, v56, "Failed to create HKQuantitySample: %@", v57, 0xCu);
            sub_1D0B2B620(v58, &qword_1EC5F9868, &unk_1D0B66B20);
            MEMORY[0x1D387E1B0](v58, -1, -1);
            MEMORY[0x1D387E1B0](v57, -1, -1);
          }

          v81 = v51;

          v61 = *(v79 + 8);
          v62 = v53;
          v63 = v71;
          v61(v62, v71);
          v64 = v73;
          sub_1D0B63F70();
          v65 = sub_1D0B640A0();
          v66 = sub_1D0B644D0();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&dword_1D0B1E000, v65, v66, "Stopping samples query and returning.", v67, 2u);
            MEMORY[0x1D387E1B0](v67, -1, -1);
          }

          v61(v64, v63);
          [v83 stopQuery_];
          v86[0] = MEMORY[0x1E69E7CC0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
          sub_1D0B643C0();
        }

        (*(v70 + 8))(v74, v80);
        return;
      }

      sub_1D0B2B620(v27, &qword_1EC5F9FB8, &qword_1D0B66B38);
    }

    if (v34)
    {
      [v83 stopQuery_];
      swift_beginAccess();
      v85 = *(a9 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9FB0, &qword_1D0B66B30);
      sub_1D0B643C0();
    }
  }
}

uint64_t sub_1D0B50408(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F20, &qword_1D0B66788);
  v2[10] = swift_task_alloc();
  sub_1D0B633F0();
  v2[11] = swift_task_alloc();
  v3 = sub_1D0B63CF0();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_1D0B64140();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = sub_1D0B64150();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = sub_1D0B64170();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5064C, v1, 0);
}

uint64_t sub_1D0B5064C()
{
  v1 = *(v0 + 64);
  sub_1D0B64180();
  sub_1D0B64160();

  return MEMORY[0x1EEE6DFA0](sub_1D0B506E0, 0, 0);
}

uint64_t sub_1D0B506E0()
{
  (*(v0[19] + 16))(v0[20], v0[21], v0[18]);
  sub_1D0B5CB68(&qword_1EC5F9F28, MEMORY[0x1E696B3F0], MEMORY[0x1E696B3F8]);
  sub_1D0B64490();
  v0[25] = MEMORY[0x1E69E7CC0];
  v1 = sub_1D0B5CB68(&qword_1EC5F9F30, MEMORY[0x1E696B3E0], MEMORY[0x1E696B3E8]);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1D0B50838;
  v3 = v0[15];

  return MEMORY[0x1EEE6D8C8](v0 + 7, v3, v1);
}

uint64_t sub_1D0B50838()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    (*(v2[16] + 8))(v2[17], v2[15]);

    v3 = sub_1D0B50F94;
  }

  else
  {
    v3 = sub_1D0B50970;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D0B50970()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9AA8, &qword_1D0B66790);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D0B66680;
    *(inited + 32) = v1;
    v6 = v2 >> 62;
    if (v2 >> 62)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D0B645A0();
      v8 = isUniquelyReferenced_nonNull_bridgeObject + 1;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
      {
LABEL_4:
        v9 = v1;

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v6)
          {
            v10 = v2 & 0xFFFFFFFFFFFFFF8;
            v11 = *(v10 + 24) >> 1;
            if (v11 >= v8)
            {
              v12 = v0[25];
              goto LABEL_15;
            }

LABEL_14:
            isUniquelyReferenced_nonNull_bridgeObject = sub_1D0B64640();
            v12 = isUniquelyReferenced_nonNull_bridgeObject;
            v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
            v11 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_15:
            if (v11 > *(v10 + 16))
            {
              sub_1D0B2B49C(0, &qword_1EC5F9F38, 0x1E6985C40);
              swift_arrayInitWithCopy();

              ++*(v10 + 16);
              v0[25] = v12;
              v17 = sub_1D0B5CB68(&qword_1EC5F9F30, MEMORY[0x1E696B3E0], MEMORY[0x1E696B3E8]);
              v18 = swift_task_alloc();
              v0[26] = v18;
              *v18 = v0;
              v18[1] = sub_1D0B50838;
              v4 = v0[15];
              isUniquelyReferenced_nonNull_bridgeObject = (v0 + 7);
              v5 = v17;

              return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_bridgeObject, v4, v5);
            }

LABEL_22:
            __break(1u);
            return MEMORY[0x1EEE6D8C8](isUniquelyReferenced_nonNull_bridgeObject, v4, v5);
          }
        }

        else if (!v6)
        {
          goto LABEL_14;
        }

        sub_1D0B645A0();
        goto LABEL_14;
      }
    }

    else
    {
      isUniquelyReferenced_nonNull_bridgeObject = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = isUniquelyReferenced_nonNull_bridgeObject + 1;
      if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[19];
  v16 = v0[9];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v15 + 8))(v13, v14);

  return MEMORY[0x1EEE6DFA0](sub_1D0B50C54, v16, 0);
}

uint64_t sub_1D0B50C54()
{
  v1 = v0[25];
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[25]; v2; i = v0[25])
  {
    v4 = 0;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v23 = v1 & 0xC000000000000001;
    v19 = i + 32;
    v20 = v0[13];
    v1 = MEMORY[0x1E69E7CC0];
    v21 = v2;
    while (1)
    {
      if (v23)
      {
        v5 = MEMORY[0x1D387D8B0](v4, v0[25]);
      }

      else
      {
        if (v4 >= *(v22 + 16))
        {
          goto LABEL_16;
        }

        v5 = *(v19 + 8 * v4);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 timestamp];
      sub_1D0B633C0();

      [v6 coordinate];
      [v6 coordinate];
      [v6 altitude];
      v9 = [objc_opt_self() meters];
      sub_1D0B2B49C(0, &qword_1EE0528B0, 0x1E696B058);
      sub_1D0B63230();
      sub_1D0B63CE0();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1D0B2D06C(0, *(v1 + 16) + 1, 1, v1);
      }

      v11 = *(v1 + 16);
      v10 = *(v1 + 24);
      if (v11 >= v10 >> 1)
      {
        v1 = sub_1D0B2D06C((v10 > 1), v11 + 1, 1, v1);
      }

      v12 = v0[14];
      v13 = v0[12];
      *(v1 + 16) = v11 + 1;
      (*(v20 + 32))(v1 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v11, v12, v13);
      ++v4;
      if (v7 == v21)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v2 = sub_1D0B645A0();
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v15 = v0[23];
  v14 = v0[24];
  v16 = v0[22];

  (*(v15 + 8))(v14, v16);

  v17 = v0[1];

  return v17(v1);
}

uint64_t sub_1D0B50F94()
{
  v1 = v0[9];
  (*(v0[19] + 8))(v0[21], v0[18]);

  return MEMORY[0x1EEE6DFA0](sub_1D0B51010, v1, 0);
}

uint64_t sub_1D0B51010()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D0B510E8(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  sub_1D0B640E0();
  *(v3 + 32) = swift_task_alloc();
  v4 = sub_1D0B641C0();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F40, &qword_1D0B667A0);
  *(v3 + 64) = swift_task_alloc();
  v5 = sub_1D0B632D0();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_1D0B634A0();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B512C8, 0, 0);
}

uint64_t sub_1D0B512C8(uint64_t a1)
{
  v2 = v1[13];
  v19 = v1[8];
  v20 = v1[12];
  v21 = v1[3];
  v18 = v1[14];
  sub_1D0B63460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F48, &qword_1D0B667A8);
  v3 = sub_1D0B63490();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D0B66690;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x1E6969A48], v3);
  v9(v8 + v5, *MEMORY[0x1E6969A78], v3);
  v9(v8 + 2 * v5, *MEMORY[0x1E6969A68], v3);
  v9(v8 + 3 * v5, *MEMORY[0x1E6969A50], v3);
  sub_1D0B35330(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0B63450();

  (*(v2 + 16))(v19, v18, v20);
  (*(v2 + 56))(v19, 0, 1, v20);
  sub_1D0B632C0();
  v10 = objc_opt_self();
  v11 = sub_1D0B632A0();
  v12 = sub_1D0B632A0();
  v13 = [v10 predicateForActivitySummariesBetweenStartDateComponents:v11 endDateComponents:v12];
  v1[15] = v13;

  v14 = v13;
  sub_1D0B641B0();
  sub_1D0B640D0();
  sub_1D0B64190();
  v15 = *(v21 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v16 = swift_task_alloc();
  v1[16] = v16;
  *v16 = v1;
  v16[1] = sub_1D0B5161C;

  return MEMORY[0x1EEDC76F0](v15);
}

uint64_t sub_1D0B5161C(uint64_t a1)
{
  *(*v2 + 136) = a1;

  if (v1)
  {

    v3 = sub_1D0B518C8;
  }

  else
  {
    v3 = sub_1D0B51738;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D0B51738()
{
  v1 = v0[17];
  if (v1 >> 62)
  {
    result = sub_1D0B645A0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = v0[15];

    v13 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1D387D8B0](0, v0[17]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[17] + 32);
  }

  v13 = v3;
  v4 = v0[15];

LABEL_9:
  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v11 = v0[9];
  v10 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);

  v12 = v0[1];

  return v12(v13);
}

uint64_t sub_1D0B518C8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_1D0B519D0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1D0B641C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F40, &qword_1D0B667A0);
  v2[7] = swift_task_alloc();
  v4 = sub_1D0B633F0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_1D0B632D0();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = sub_1D0B634A0();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B51BE8, 0, 0);
}

uint64_t sub_1D0B51BE8(uint64_t a1)
{
  v2 = v1[17];
  v32 = v1[16];
  v29 = v1[15];
  v25 = v1[10];
  v30 = v1[8];
  v31 = v1[9];
  v27 = v1[3];
  v28 = v1[7];
  sub_1D0B63460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F48, &qword_1D0B667A8);
  v3 = sub_1D0B63490();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v26 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D0B66690;
  v24 = *MEMORY[0x1E6969A48];
  v7 = *(v4 + 104);
  v7(v6 + v26);
  v23 = *MEMORY[0x1E6969A78];
  v7(v6 + v26 + v5);
  v22 = *MEMORY[0x1E6969A68];
  v7(v6 + v26 + 2 * v5);
  v21 = *MEMORY[0x1E6969A50];
  v7(v6 + v26 + 3 * v5);
  sub_1D0B35330(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0B63280();
  sub_1D0B63450();

  v19 = *(v31 + 8);
  v19(v25, v30);
  v18 = *(v32 + 16);
  v18(v28, v2, v29);
  v8 = *(v32 + 56);
  v8(v28, 0, 1, v29);
  sub_1D0B632C0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D0B66690;
  (v7)(v9 + v26, v24, v3);
  (v7)(v9 + v26 + v5, v23, v3);
  (v7)(v9 + v26 + 2 * v5, v22, v3);
  (v7)(v9 + v26 + 3 * v5, v21, v3);
  sub_1D0B35330(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D0B63260();
  sub_1D0B63450();

  v19(v25, v30);
  v18(v28, v2, v29);
  v8(v28, 0, 1, v29);
  sub_1D0B632C0();
  v10 = objc_opt_self();
  v11 = sub_1D0B632A0();
  v12 = sub_1D0B632A0();
  v13 = [v10 predicateForActivitySummariesBetweenStartDateComponents:v11 endDateComponents:v12];
  *(v20 + 144) = v13;

  v14 = v13;
  sub_1D0B641B0();
  v15 = *(v27 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore);
  v16 = swift_task_alloc();
  *(v20 + 152) = v16;
  *v16 = v20;
  v16[1] = sub_1D0B520FC;

  return MEMORY[0x1EEDC76F0](v15);
}

uint64_t sub_1D0B520FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1D0B52358;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1D0B52224;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D0B52224()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v14 = *(v0 + 120);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  (*(v2 + 8))(v1, v14);

  v11 = *(v0 + 8);
  v12 = *(v0 + 168);

  return v11(v12);
}

uint64_t sub_1D0B52358()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v13 = *(v0 + 120);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  (*(v8 + 8))(v7, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  (*(v2 + 8))(v1, v13);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D0B52488(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_1D0B633F0();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B5254C, v2, 0);
}

uint64_t sub_1D0B5254C()
{
  v1 = [objc_opt_self() quantityTypeForIdentifier_];
  v0[12] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[8];
    v4 = v0[6];
    sub_1D0B63440();
    v5 = objc_opt_self();
    v6 = sub_1D0B633A0();
    v7 = sub_1D0B633A0();
    v8 = [v5 predicateForSamplesWithStartDate:v6 endDate:v7 options:1];
    v0[13] = v8;

    v9 = sub_1D0B5CB68(qword_1EE052AE0, type metadata accessor for HealthStore, &protocol conformance descriptor for HealthStore);
    v10 = swift_task_alloc();
    v0[14] = v10;
    v10[2] = v2;
    v10[3] = v8;
    v10[4] = v4;
    v10[5] = v3;
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_1D0B2B49C(0, &qword_1EC5F9F50, 0x1E696C348);
    *v11 = v0;
    v11[1] = sub_1D0B52820;

    return MEMORY[0x1EEE6DDE0](v0 + 5, v3, v9, 0xD00000000000001CLL, 0x80000001D0B675E0, sub_1D0B5C180, v10, v12);
  }

  else
  {
    v13 = v0[6];
    sub_1D0B64600();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x1D387D540](0xD000000000000020, 0x80000001D0B675B0);
    v0[4] = v13;
    type metadata accessor for HKQuantityTypeIdentifier();
    sub_1D0B646B0();
    return sub_1D0B646F0();
  }
}

uint64_t sub_1D0B52820()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D0B5294C, v1, 0);
}

uint64_t sub_1D0B5294C()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 40);

  v6 = *(v0 + 8);

  return v6(v5);
}

void sub_1D0B529E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F88, &qword_1D0B66B10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = aBlock - v12;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  (*(v11 + 32))(v15 + v14, v13, v10);
  v16 = objc_allocWithZone(MEMORY[0x1E696C4E0]);
  aBlock[4] = sub_1D0B5F1AC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D0B597B8;
  aBlock[3] = &block_descriptor_203;
  v17 = _Block_copy(aBlock);
  v18 = a4;
  v19 = [v16 initWithQuantityType:a2 quantitySamplePredicate:a3 options:16 completionHandler:v17];
  _Block_release(v17);

  [*(a5 + OBJC_IVAR____TtC29FitnessIntelligenceDaemonCore11HealthStore_healthStore) executeQuery_];
}

void sub_1D0B52C24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1D0B2B49C(0, &qword_1EE0528A8, 0x1E696C370);
  v6 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v6 && (v7 = v6, v8 = [v6 canonicalUnit], v7, v8))
  {
    if (![a2 sumQuantity])
    {
      v9 = [objc_opt_self() quantityWithUnit:v8 doubleValue:0.0];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F88, &qword_1D0B66B10);
    sub_1D0B643C0();
  }

  else
  {
    sub_1D0B64600();
    MEMORY[0x1D387D540](0xD000000000000032, 0x80000001D0B67750);
    type metadata accessor for HKQuantityTypeIdentifier();
    sub_1D0B646B0();
    sub_1D0B646F0();
    __break(1u);
  }
}

uint64_t sub_1D0B52DCC(uint64_t a1, uint64_t a2)
{
  v3[707] = v2;
  v3[701] = a2;
  v3[695] = a1;
  v4 = sub_1D0B640C0();
  v3[713] = v4;
  v3[719] = *(v4 - 8);
  v3[725] = swift_task_alloc();
  v5 = sub_1D0B63AD0();
  v3[731] = v5;
  v3[737] = *(v5 - 8);
  v3[743] = swift_task_alloc();
  v3[749] = swift_task_alloc();
  v6 = sub_1D0B63290();
  v3[755] = v6;
  v7 = *(v6 - 8);
  v3[761] = v7;
  v3[767] = *(v7 + 64);
  v3[773] = swift_task_alloc();
  v3[779] = swift_task_alloc();
  v8 = sub_1D0B633F0();
  v3[785] = v8;
  v9 = *(v8 - 8);
  v3[791] = v9;
  v3[797] = *(v9 + 64);
  v3[803] = swift_task_alloc();
  v3[809] = swift_task_alloc();
  v3[815] = swift_task_alloc();
  v3[821] = swift_task_alloc();
  v3[822] = swift_task_alloc();
  v3[823] = swift_task_alloc();
  v3[824] = swift_task_alloc();
  v3[825] = swift_task_alloc();
  v3[826] = swift_task_alloc();
  v3[827] = swift_task_alloc();
  v3[828] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D0B53048, v2, 0);
}

uint64_t sub_1D0B53048()
{
  v77 = v0;
  v1 = v0[828];
  v2 = v0[827];
  v3 = v0[826];
  v4 = v0[791];
  v5 = v0[785];
  v6 = v0[779];
  v74 = v0[773];
  v7 = v0[761];
  v70 = v0[755];
  v71 = v0[825];
  v64 = v0[707];
  v8 = v0[701];
  v68 = v8;
  sub_1D0B63440();
  v9 = v1;
  v10 = *(v4 + 16);
  v10(v2, v9, v5);
  v10(v3, v8, v5);
  sub_1D0B63270();
  (*(v7 + 16))(v74, v6, v70);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v64;
  (*(v7 + 32))(v12 + v11, v74, v70);
  v13 = swift_allocObject();
  v0[829] = v13;
  *(v13 + 16) = &unk_1D0B667D0;
  *(v13 + 24) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F58, &qword_1D0B667E8);
  swift_asyncLet_begin();
  v14 = v71;
  v15 = v5;
  v10(v71, v68, v5);
  v16 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v64;
  v75 = v16;
  v72 = *(v4 + 32);
  v72(v17 + v16, v14, v5);
  v18 = swift_allocObject();
  v0[830] = v18;
  *(v18 + 16) = &unk_1D0B667F8;
  *(v18 + 24) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC5F9F60, &qword_1D0B66810);
  swift_asyncLet_begin();
  sub_1D0B633D0();
  sub_1D0B63330();
  v20 = v19;
  v21 = *(v4 + 8);
  v0[831] = v21;
  v0[832] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v2, v15);
  if (fabs(v20) >= 30.0)
  {
    v26 = v0[824];
    v27 = v0[785];
    v28 = v0[701];
    sub_1D0B63F50();
    v73 = v10;
    v10(v26, v28, v27);
    v29 = sub_1D0B640A0();
    v30 = sub_1D0B644F0();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[824];
    v33 = v0[785];
    v34 = v0[725];
    v35 = v0[719];
    v36 = v0[713];
    if (v31)
    {
      v37 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = v69;
      *v37 = 136315138;
      sub_1D0B5CB68(&qword_1EC5F97D8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v65 = v34;
      v67 = v36;
      v38 = sub_1D0B647B0();
      v39 = v30;
      v41 = v40;
      v21(v32, v33);
      v42 = sub_1D0B22738(v38, v41, &v76);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_1D0B1E000, v29, v39, "makeRingsRepresentable - slow path for date %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x1D387E1B0](v69, -1, -1);
      MEMORY[0x1D387E1B0](v37, -1, -1);

      (*(v35 + 8))(v65, v67);
    }

    else
    {

      v21(v32, v33);
      (*(v35 + 8))(v34, v36);
    }

    v43 = v0[823];
    v44 = v0[822];
    v61 = v0[821];
    v62 = v0[815];
    v63 = v0[809];
    v66 = v0[803];
    v45 = v0[785];
    v46 = v0[707];
    v47 = v0[701];
    v73(v43, v47, v45);
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    v72(v48 + v75, v43, v45);
    v49 = swift_allocObject();
    v0[835] = v49;
    *(v49 + 16) = &unk_1D0B66820;
    *(v49 + 24) = v48;

    sub_1D0B2B49C(0, &qword_1EC5F9F50, 0x1E696C348);
    swift_asyncLet_begin();
    v73(v44, v47, v45);
    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    v72(v50 + v75, v44, v45);
    v51 = swift_allocObject();
    v0[836] = v51;
    *(v51 + 16) = &unk_1D0B66840;
    *(v51 + 24) = v50;

    swift_asyncLet_begin();
    v73(v61, v47, v45);
    v52 = swift_allocObject();
    *(v52 + 16) = v46;
    v72(v52 + v75, v61, v45);
    v53 = swift_allocObject();
    v0[837] = v53;
    *(v53 + 16) = &unk_1D0B66858;
    *(v53 + 24) = v52;

    swift_asyncLet_begin();
    v73(v62, v47, v45);
    v54 = swift_allocObject();
    *(v54 + 16) = v46;
    v72(v54 + v75, v62, v45);
    v55 = swift_allocObject();
    v0[838] = v55;
    *(v55 + 16) = &unk_1D0B66870;
    *(v55 + 24) = v54;

    swift_asyncLet_begin();
    v73(v63, v47, v45);
    v56 = swift_allocObject();
    *(v56 + 16) = v46;
    v72(v56 + v75, v63, v45);
    v57 = swift_allocObject();
    v0[839] = v57;
    *(v57 + 16) = &unk_1D0B66888;
    *(v57 + 24) = v56;

    swift_asyncLet_begin();
    v73(v66, v47, v45);
    v58 = swift_allocObject();
    *(v58 + 16) = v46;
    v72(v58 + v75, v66, v45);
    v59 = swift_allocObject();
    v0[840] = v59;
    *(v59 + 16) = &unk_1D0B668A0;
    *(v59 + 24) = v58;

    swift_asyncLet_begin();
    sub_1D0B63350();
    v22 = sub_1D0B53F20;
    v23 = v0 + 82;
    v24 = v0 + 690;
    v25 = v0 + 689;
  }

  else
  {
    sub_1D0B63350();
    v22 = sub_1D0B53AD8;
    v23 = v0 + 82;
    v24 = v0 + 678;
    v25 = v0 + 689;
  }

  return MEMORY[0x1EEE6DEC0](v23, v25, v22, v24);
}