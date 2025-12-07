uint64_t sub_2660157F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26601580C()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v3[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  v3[2].i64[0] = v2;
  v3[2].i64[1] = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058298, &qword_26603C068);
  *v4 = v0;
  v4[1] = sub_266015914;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_266015914()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266015A14()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

void sub_266015A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_41_1();
  v5 = v4;
  v7 = v6;
  v24 = v8;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = sub_266039954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26603B720;
  *(v18 + 32) = v7;
  *(v18 + 40) = v5;

  v19 = sub_266039954();

  (*(v13 + 16))(v16, v10, v11);
  v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v21 = swift_allocObject();
  (*(v13 + 32))(v21 + v20, v16, v11);
  OUTLINED_FUNCTION_13_2();
  v25[1] = 1107296256;
  v25[2] = sub_266015E84;
  v25[3] = &block_descriptor_35;
  v22 = _Block_copy(v25);

  [v24 loadScopedPlayerIDs:v17 gameBundleIDs:v19 handler:v22];
  _Block_release(v22);

  OUTLINED_FUNCTION_42_0();
}

void *sub_266015C84(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_266039BB4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v20 = MEMORY[0x277D84F90];
  result = sub_26601B428(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v20;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x266777030](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = sub_265FFFCFC(0, &qword_280058428, 0x277D0C200);
      v18 = v8;
      v9 = sub_26601E15C();
      v19 = v9;
      v20 = v3;
      v17[0] = v7;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_26601B428((v10 > 1), v11 + 1, 1);
        v8 = v18;
        v12 = v19;
      }

      else
      {
        v12 = v9;
      }

      ++v5;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v17, v8);
      MEMORY[0x28223BE20](v13);
      v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_26601DB6C(v11, v15, &v20, v8, v12);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v3 = v20;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_266015E84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_265FFFCFC(0, &qword_280058428, 0x277D0C200);
  v5 = sub_266039964();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_266015F34()
{
  OUTLINED_FUNCTION_1();
  v0[19] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800582A0, &qword_26603C078);
  v0[20] = v2;
  OUTLINED_FUNCTION_3_0(v2);
  v0[21] = v3;
  v0[22] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266015FF0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v9 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2660161A4;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800582A8, &qword_26603C080);
  sub_2660399B4();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2660162D0;
  v1[13] = &block_descriptor_2;
  [v9 getContextualPromptStatesWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2660161A4()
{
  OUTLINED_FUNCTION_1();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266016274()
{
  OUTLINED_FUNCTION_1();

  v0 = OUTLINED_FUNCTION_9_2();

  return v1(v0);
}

uint64_t sub_2660162D0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_265FFFCFC(0, &qword_280058418, 0x277CCABB0);
  v3 = sub_266039884();

  return sub_266016378(v2, v3);
}

uint64_t sub_2660163C4()
{
  OUTLINED_FUNCTION_1();
  v2 = v1;
  v3 = *v0;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return sub_266015380(v2, v3);
}

uint64_t sub_266016454()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return sub_266015F34();
}

uint64_t sub_2660164DC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_2();

  return v4(v3);
}

uint64_t sub_2660165C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_24_1();
  v4 = *v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);

  return sub_2660157F4(v3, v2, v0, v4);
}

uint64_t sub_266016660@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  sub_266005E54(a1, a4);
  a4[8] = &type metadata for ShimProfileService.GCFProfileServiceAdapter;
  a4[9] = sub_266008044();
  a4[5] = a2;
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_2660021E4(a3, (a4 + 10));
}

uint64_t sub_2660166D4@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  sub_2660021E4(a1, a4);
  sub_2660021E4(a2, a4 + 40);

  return sub_2660021E4(a3, a4 + 80);
}

uint64_t ShimProfileService.describeProfiles(players:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800582B8, &qword_26603C090);
  OUTLINED_FUNCTION_3_0(v3);
  v1[4] = v4;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_2(v5);

  return sub_266017058();
}

uint64_t sub_26601681C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_266016954()
{
  OUTLINED_FUNCTION_24();
  __swift_project_boxed_opaque_existential_1((v0[3] + 40), *(v0[3] + 64));

  v0[8] = sub_2660176D8(v1);
  OUTLINED_FUNCTION_6_2();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_2(v2);
  v3 = OUTLINED_FUNCTION_31_1();

  return v4(v3);
}

uint64_t sub_266016A88()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  *(v2 + 80) = v6;
  *(v2 + 88) = v0;

  if (v0)
  {

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_266016BE8()
{
  v48 = v0;
  v1 = *(v0 + 80);
  sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
  v2 = sub_2660398A4();
  v3 = sub_266003570(v1);
  v4 = v3;
  v5 = 0;
  v44 = v1 & 0xFFFFFFFFFFFFFF8;
  v45 = v1 & 0xC000000000000001;
  v43 = v1 + 32;
  while (1)
  {
    if (v4 == v5)
    {
      v23 = v42[2];

      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v42[2];
        v46 = MEMORY[0x277D84F90];
        sub_26601B448(0, v24, 0);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
        OUTLINED_FUNCTION_3_0(v26);
        v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v29 = v42;
        v31 = *(v30 + 72);
        v32 = v42[11];
        do
        {
          sub_2660177F8(v28, v29[7], &v47, v29[5], v2);
          if (v32)
          {

            OUTLINED_FUNCTION_11();
            OUTLINED_FUNCTION_38_0();

            __asm { BRAA            X1, X16 }
          }

          v34 = *(v46 + 16);
          v33 = *(v46 + 24);
          if (v34 >= v33 >> 1)
          {
            v35 = OUTLINED_FUNCTION_38_1(v33);
            sub_26601B448(v35, v34 + 1, 1);
          }

          *(v46 + 16) = v34 + 1;
          v29 = v42;
          sub_26601DED0();
          v32 = 0;
          v28 += v31;
          --v24;
        }

        while (v24);
      }

      else
      {
      }

      OUTLINED_FUNCTION_9_2();
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X2, X16 }
    }

    if (v45)
    {
      v3 = MEMORY[0x266777030](v5, v42[10]);
    }

    else
    {
      if (v5 >= *(v44 + 16))
      {
        goto LABEL_35;
      }

      v3 = *(v43 + 8 * v5);
    }

    v6 = v3;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return MEMORY[0x2821FE290](v3);
    }

    v7 = [v3 playerID];
    v8 = sub_2660398E4();
    v10 = v9;

    v11 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v2;
    v3 = sub_26601BA28(v8, v10);
    if (__OFADD__(*(v2 + 16), (v12 & 1) == 0))
    {
      goto LABEL_36;
    }

    v13 = v3;
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800582C8, &unk_26603C0A0);
    if (sub_266039BA4())
    {
      break;
    }

LABEL_11:
    if (v14)
    {

      v2 = v47;
      v17 = *(v47 + 56);
      v18 = *(v17 + 8 * v13);
      *(v17 + 8 * v13) = v11;
    }

    else
    {
      v2 = v47;
      OUTLINED_FUNCTION_28_1(v47 + 8 * (v13 >> 6));
      v19 = (*(v47 + 48) + 16 * v13);
      *v19 = v8;
      v19[1] = v10;
      *(*(v2 + 56) + 8 * v13) = v11;

      v20 = *(v2 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v2 + 16) = v22;
    }

    ++v5;
  }

  v15 = sub_26601BA28(v8, v10);
  if ((v14 & 1) == (v16 & 1))
  {
    v13 = v15;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE290](v3);
}

uint64_t sub_266017058()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v1[2] = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[3] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v1[4] = v5;
  v1[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058408, &qword_26603C348);
  v1[6] = v6;
  OUTLINED_FUNCTION_16(v6);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[10] = v7;
  *v7 = v1;
  v7[1] = sub_2660171B0;

  return sub_26600029C(v0 + 80, v3);
}

uint64_t sub_2660171B0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_11();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_266017300()
{
  v1 = v0[11];
  v2 = v0[4];
  v43 = *(v0[2] + 16);
  v39 = v0[6];
  v38 = (v2 + 32);
  v40 = (v2 + 8);
  v41 = v2;

  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v42 = v1;
  v5 = (v1 + 40);
  while (1)
  {
    if (v43 == v3)
    {

      goto LABEL_16;
    }

    v6 = *(v41 + 72);
    v7 = *(v41 + 16);
    v8 = (v7)(v0[5], v0[2] + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + v6 * v3, v0[3]);
    v9 = *(v42 + 16);
    if (v3 == v9)
    {
      break;
    }

    if (v3 >= v9)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return MEMORY[0x2821FE290](v8);
    }

    v44 = v6;
    v45 = v7;
    v46 = v5;
    v10 = v0[8];
    v11 = v0[7];
    v12 = *(v5 - 1);
    v13 = *v5;
    v14 = (v0[9] + *(v39 + 48));
    (*v38)(v0[9], v0[5], v0[3]);
    *v14 = v12;
    v14[1] = v13;
    sub_26601DF7C();

    sub_26601DF7C();
    v15 = (v11 + *(v39 + 48));
    v17 = *v15;
    v16 = v15[1];
    swift_isUniquelyReferenced_nonNull_native();
    v8 = sub_26601B980(v10);
    if (__OFADD__(v4[2], (v18 & 1) == 0))
    {
      goto LABEL_23;
    }

    v19 = v8;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058410, &qword_26603C350);
    if (sub_266039BA4())
    {
      v21 = sub_26601B980(v0[8]);
      if ((v20 & 1) != (v22 & 1))
      {
        v8 = v0[3];

        return MEMORY[0x2821FE290](v8);
      }

      v19 = v21;
    }

    v23 = v0[9];
    if (v20)
    {
      v24 = (v4[7] + 16 * v19);
      *v24 = v17;
      v24[1] = v16;

      sub_2660078E8(v23, &qword_280058408, &qword_26603C348);
    }

    else
    {
      OUTLINED_FUNCTION_28_1(&v4[v19 >> 6]);
      v45(v4[6] + v19 * v44);
      v25 = (v4[7] + 16 * v19);
      *v25 = v17;
      v25[1] = v16;
      v8 = sub_2660078E8(v23, &qword_280058408, &qword_26603C348);
      v26 = v4[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_24;
      }

      v4[2] = v28;
    }

    v29 = v0[7];
    v30 = v0[3];
    v31 = *v40;
    (*v40)(v0[8], v30);
    v31(v29, v30);
    v5 = v46 + 2;
    ++v3;
  }

  v32 = v0[3];

  v33 = OUTLINED_FUNCTION_27_0();
  v34(v33, v32);
LABEL_16:

  v35 = OUTLINED_FUNCTION_9_2();

  return v36(v35);
}

void *sub_2660176D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26601B1C4(*(a1 + 16), 0);
  v4 = sub_26601DC04(&v6, v3 + 4, v2, a1);
  sub_26601DF74(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_266017768(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_26601B1C4(*(a1 + 16), 0);
  v4 = sub_26601DD60(&v6, v3 + 4, v2, a1);
  sub_26601DF74(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2660177F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>, uint64_t a5@<X2>)
{
  v97 = a3;
  v111 = a4;
  v9 = sub_266039864();
  OUTLINED_FUNCTION_2_0();
  v96 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_0();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800583C0, &unk_26603C320);
  OUTLINED_FUNCTION_16(v15);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26_0();
  v98 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_16(v18);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_0();
  v102 = v20;
  OUTLINED_FUNCTION_37_1();
  v21 = sub_266039654();
  OUTLINED_FUNCTION_2_0();
  v99 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_0();
  v101 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0();
  v103 = v27;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_26_0();
  v104 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F8, &qword_26603BD40);
  v31 = OUTLINED_FUNCTION_16(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_2();
  v100 = v32 - v33;
  OUTLINED_FUNCTION_21_0();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v93 - v36;
  MEMORY[0x28223BE20](v35);
  v105 = &v93 - v38;
  if (!*(a2 + 16) || (sub_26601B980(a1), (v39 & 1) == 0) || (, v40 = OUTLINED_FUNCTION_15_0(), v42 = sub_2660181F8(v40, v41, a5), , !v42))
  {
    sub_266039674();
    OUTLINED_FUNCTION_34_0();
    return __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v43);
  v95 = v42;
  v47 = sub_26601DA9C(v42);
  if (!v47)
  {
    v109 = 0u;
    v110 = 0u;
    v49 = v5;
    goto LABEL_12;
  }

  v48 = v47;
  v106 = 0x6574616C706D6574;
  v107 = 0xE800000000000000;
  sub_266039AC4();
  sub_266006E54(v48, &v109, &v108);

  sub_266007894(&v108);
  v49 = v5;
  if (!*(&v110 + 1))
  {
LABEL_12:
    sub_2660078E8(&v109, &unk_280057F50, &qword_26603B9C0);
    v67 = v101;
    v51 = v104;
    goto LABEL_17;
  }

  v50 = swift_dynamicCast();
  v51 = v104;
  if ((v50 & 1) == 0)
  {
LABEL_14:
    v67 = v101;
    goto LABEL_17;
  }

  sub_266039534();
  if (!v5)
  {
    sub_2660078E8(v105, &qword_2800580F8, &qword_26603BD40);
    __swift_storeEnumTagSinglePayload(v37, 0, 1, v43);
    sub_26601DED0();
    goto LABEL_14;
  }

  sub_266039844();
  v52 = v5;
  v53 = sub_266039854();
  v54 = sub_266039A14();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v94 = v53;
    v57 = v56;
    *v55 = 138412290;
    v58 = v5;
    v59 = _swift_stdlib_bridgeErrorToNSError();
    *(v55 + 4) = v59;
    *v57 = v59;
    v60 = v54;
    v61 = v94;
    _os_log_impl(&dword_265FFB000, v94, v60, "Encountered an error while attempting to create a profile image: %@", v55, 0xCu);
    sub_2660078E8(v57, &qword_2800583F0, &qword_26603C340);
    MEMORY[0x266777640](v57, -1, -1);
    MEMORY[0x266777640](v55, -1, -1);

    v51 = v104;
  }

  else
  {
  }

  v67 = v101;
  (*(v96 + 8))(v14, v9);
  v49 = 0;
LABEL_17:
  (*(v103 + 16))(v51, a1, v26);
  if ([v95 isArcadeSubscriber])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583E8, &qword_26603C338);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_26603B720;
    sub_266039644();
    v108 = v68;
  }

  else
  {
    v108 = MEMORY[0x277D84F90];
  }

  sub_26601C208(&qword_2800583D0, MEMORY[0x277D0D550], MEMORY[0x277D0D558]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800583D8, &qword_26603C330);
  sub_26601DF2C(&qword_2800583E0, &qword_2800583D8, &qword_26603C330, MEMORY[0x277D83970]);
  sub_266039A84();
  sub_26601DB08(v95);
  v69 = v102;
  if (v70)
  {
    swift_bridgeObjectRetain_n();
    sub_2660395C4();
    if (v49)
    {
      swift_bridgeObjectRelease_n();

      (*(v99 + 8))(v67, v21);
      (*(v103 + 8))(v51, v26);
      result = sub_2660078E8(v105, &qword_2800580F8, &qword_26603BD40);
      *v97 = v49;
      return result;
    }

    swift_bridgeObjectRelease_n();
    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  __swift_storeEnumTagSinglePayload(v69, v71, 1, v72);
  v73 = v95;
  v74 = [v95 displayNameWithOptions_];
  v99 = sub_2660398E4();
  v103 = v75;

  v76 = [v73 contact];
  v77 = v76;
  if (v76)
  {
    v78 = [v76 _gkCompositeName];

    sub_2660398E4();
  }

  sub_26601DF7C();
  v79 = [v95 avatarArtwork];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 metadata];
    v82 = [v81 templateURL];

    sub_2660398E4();
    v84 = v83;

    v85 = [v80 metadata];
    Artwork.init(templateURL:metadata:)(v84, v85, v98);
  }

  else
  {
    sub_266039634();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
  }

  v90 = v95;
  [v95 isChallengeable];
  [v90 supportsMultiplayerActivities];
  v91 = v111;
  sub_266039664();

  sub_2660078E8(v105, &qword_2800580F8, &qword_26603BD40);
  v92 = sub_266039674();
  return __swift_storeEnumTagSinglePayload(v91, 0, 1, v92);
}

void *sub_2660181F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_26601BA28(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_266018240(uint64_t a1, uint64_t *a2)
{
  v58 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v35 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  v54 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - v8;
  v9 = sub_266039264();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058350, &qword_26603C2E0);
  v13 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v35 - v14;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v60 = MEMORY[0x277D84F90];
  sub_26601B488(0, v15, 0);
  v16 = v60;
  v17 = *(v10 + 16);
  v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v52 = (v10 + 88);
  v53 = v17;
  v51 = *MEMORY[0x277D0CEC0];
  v39 = *MEMORY[0x277D0CEB8];
  v46 = (v10 + 96);
  v36 = (v7 + 32);
  v35 = v7 + 8;
  v38 = (v54 + 32);
  v37 = v54 + 8;
  v54 = v10 + 16;
  v44 = *(v10 + 72);
  v45 = v13 + 32;
  v49 = v10;
  v50 = v9;
  v47 = v13;
  v48 = v12;
  while (1)
  {
    v19 = *v58;
    v53(v12, v18, v9);
    v20 = (*v52)(v12, v9);
    if (v20 == v51)
    {
      (*v46)(v12, v9);
      v21 = v42;
      v22 = v12;
      v23 = v43;
      v24 = (*v38)(v42, v22, v43);
      MEMORY[0x28223BE20](v24);
      *(&v35 - 2) = v21;
      swift_bridgeObjectRetain_n();
      v25 = sub_26601A94C(sub_26601C0C8, (&v35 - 4), v19);
      v26 = &v62;
    }

    else
    {
      if (v20 != v39)
      {
        sub_266039224();
        sub_26601C208(&qword_2800584E0, MEMORY[0x277D0CE80], MEMORY[0x277D0CE88]);
        swift_allocError();

        sub_266039204();
        swift_willThrow();
        (*(v10 + 8))(v12, v9);

        return v16;
      }

      (*v46)(v12, v9);
      v21 = v40;
      v27 = v12;
      v23 = v41;
      v28 = (*v36)(v40, v27, v41);
      MEMORY[0x28223BE20](v28);
      *(&v35 - 2) = v21;
      swift_bridgeObjectRetain_n();
      v25 = sub_26601A94C(sub_26601C250, (&v35 - 4), v19);
      v26 = &v61;
    }

    (**(v26 - 32))(v21, v23);

    v59 = v25;

    sub_26601C160(&v59);
    if (v2)
    {
      break;
    }

    v29 = sub_2660395F4();
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v29);
    sub_266039444();
    v30 = MEMORY[0x277D0D358];
    sub_26601C208(&qword_280058360, MEMORY[0x277D0D358], MEMORY[0x277D0D368]);
    sub_26601C208(&qword_280058368, v30, MEMORY[0x277D0D360]);
    v31 = v55;
    sub_2660395E4();
    v60 = v16;
    v33 = *(v16 + 16);
    v32 = *(v16 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_26601B488(v32 > 1, v33 + 1, 1);
      v16 = v60;
    }

    *(v16 + 16) = v33 + 1;
    (*(v47 + 32))(v16 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v33, v31, v56);
    v18 += v44;
    --v15;
    v10 = v49;
    v9 = v50;
    v12 = v48;
    if (!v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ShimProfileService.listInteractions(player:participants:after:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2660189B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v1[13];
  v4 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v3);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_6_2();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800582D8, &qword_26603C0C8);
  *v7 = v0;
  v7[1] = sub_266018B3C;
  v9 = v0[3];

  return (v11)(v0 + 2, v9, &unk_26603C0C0, v5, v8, v3, v4);
}

uint64_t sub_266018B3C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266018C3C()
{
  OUTLINED_FUNCTION_1();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v0[3] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v0[8] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v0[9] = v7;
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v8 = sub_266039264();
  v0[13] = v8;
  OUTLINED_FUNCTION_3_0(v8);
  v0[14] = v9;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266018D78()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];
    v5 = *(v3 + 16);
    v3 += 16;
    v4 = v5;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v7 = *(v3 + 56);
    v38 = *MEMORY[0x277D0CEB8];
    v35 = v0[9];
    v37 = (v35 + 32);
    v8 = MEMORY[0x277D84F90];
    v33 = v7;
    v34 = v5;
    do
    {
      v9 = v0[13];
      v4(v0[16], v6, v9);
      v10 = OUTLINED_FUNCTION_15_0();
      v11(v10);
      v12 = OUTLINED_FUNCTION_27_0();
      v14 = v13(v12, v9);
      v15 = v0[15];
      if (v14 == v38)
      {
        v16 = v0[11];
        v36 = v0[12];
        v17 = v8;
        v18 = v0[10];
        v19 = v0[8];
        v20 = OUTLINED_FUNCTION_27_0();
        v21(v20);
        v22 = *v37;
        (*v37)(v18, v15, v19);
        v23 = v18;
        v8 = v17;
        v22(v16, v23, v19);
        v22(v36, v16, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26601AFBC(0, *(v17 + 16) + 1, 1, v17);
        }

        v25 = *(v8 + 2);
        v24 = *(v8 + 3);
        v7 = v33;
        v4 = v34;
        if (v25 >= v24 >> 1)
        {
          v30 = OUTLINED_FUNCTION_38_1(v24);
          v8 = sub_26601AFBC(v30, v25 + 1, 1, v8);
        }

        v26 = v0[12];
        v27 = v0[8];
        *(v8 + 2) = v25 + 1;
        v22(&v8[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25], v26, v27);
      }

      else
      {
        v28 = OUTLINED_FUNCTION_27_0();
        v29(v28);
      }

      v6 += v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v0[17] = v8;
  v31 = swift_task_alloc();
  v0[18] = v31;
  *v31 = v0;
  v31[1] = sub_26601904C;

  return sub_266017058();
}

uint64_t sub_26601904C()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 152) = v0;

  if (!v0)
  {

    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26601915C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[6];
  v2 = sub_2660199CC(v0[20]);
  v0[21] = sub_266017768(v2);
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  OUTLINED_FUNCTION_6_2();
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_2(v3);
  v4 = OUTLINED_FUNCTION_31_1();

  return v5(v4);
}

uint64_t sub_26601928C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  *(v5 + 184) = v4;
  *(v5 + 192) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

id sub_2660193AC()
{
  v19 = v0;
  v1 = v0[23];
  v16 = MEMORY[0x277D84F90];
  result = sub_266003570(v1);
  v3 = result;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v0[24];
  v8 = v1 + 32;
  while (v3 != v4)
  {
    if (v5)
    {
      result = MEMORY[0x266777030](v4, v0[23]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_17;
      }

      result = *(v8 + 8 * v4);
    }

    v9 = result;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    v17 = result;
    sub_266019AE8(&v17, &v18);
    if (v7)
    {

      OUTLINED_FUNCTION_11();

      return v14();
    }

    result = sub_26601A320(v18);
    ++v4;
  }

  v10 = v0[6];

  v0[25] = v16;
  v0[2] = v16;
  __swift_project_boxed_opaque_existential_1((v10 + 80), *(v10 + 104));
  OUTLINED_FUNCTION_6_2();
  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_266019610;
  v13 = OUTLINED_FUNCTION_34_1(v0[4]);

  return v15(v13);
}

uint64_t sub_266019610()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_4();
  *v8 = v7;
  *(v5 + 216) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266019718()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 216);
  v2 = *(v0 + 56);
  sub_26601A320(*(v0 + 224));
  v3 = sub_266018240(v2, (v0 + 16));
  if (!v1)
  {
    **(v0 + 24) = v3;
  }

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_266019824()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_33_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_2660198B4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_33_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_26601993C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_33_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_2660199CC(uint64_t a1)
{
  result = MEMORY[0x266776F10](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_266013B2C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_266019AE8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_16(v3);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_0();
  v111 = v5;
  OUTLINED_FUNCTION_37_1();
  sub_2660393F4();
  OUTLINED_FUNCTION_2_0();
  v107 = v7;
  v108 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23_0();
  v106 = v9 - v8;
  OUTLINED_FUNCTION_37_1();
  v115 = sub_266039444();
  OUTLINED_FUNCTION_2_0();
  v110 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_2();
  v102 = v12 - v13;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v14);
  v104 = &v98 - v15;
  OUTLINED_FUNCTION_37_1();
  v116 = sub_266039154();
  OUTLINED_FUNCTION_2_0();
  v114 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_2();
  v112 = v18 - v19;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v20);
  v109 = &v98 - v21;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v22);
  v105 = &v98 - v23;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v24);
  v101 = &v98 - v25;
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v26);
  v103 = &v98 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0();
  v117 = v29;
  v118 = v28;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_2();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v98 - v34;
  v36 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v38 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26603B720;
  v40 = (v39 + v38);
  v41 = [v36 playerID];
  v42 = sub_2660398E4();
  v44 = v43;

  *v40 = v42;
  v40[1] = v44;
  swift_storeEnumTagMultiPayload();
  v45 = v119;
  sub_266039584();
  if (!v45)
  {
    v100 = v32;
    v119 = v35;
    v46 = v110;
    v47 = v115;
    v48 = [v36 lastPlayedGame];
    v49 = v36;
    if (v48)
    {
      v50 = v48;
      v99 = v36;
      v51 = [v36 lastPlayedDate];
      if (v51)
      {
        v52 = v51;
        v53 = v101;
        sub_266039144();

        v54 = v114;
        v55 = v103;
        v56 = v53;
        v57 = v116;
        (*(v114 + 32))(v103, v56, v116);
        (*(v54 + 16))(v105, v55, v57);
        v58 = v50;
        v59 = v106;
        GKGameDescriptor.ref.getter();
        v101 = v58;

        (*(v107 + 104))(v59, *MEMORY[0x277D0D348], v108);
        v60 = v100;
        (*(v117 + 16))(v100, v119, v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
        v65 = v60;
        sub_266039414();
        v66 = sub_26600CA88(0, 1, 1, MEMORY[0x277D84F90]);
        v68 = v66[2];
        v67 = v66[3];
        if (v68 >= v67 >> 1)
        {
          v96 = OUTLINED_FUNCTION_38_1(v67);
          v66 = sub_26600CA88(v96, v68 + 1, 1, v66);
        }

        (*(v54 + 8))(v103, v116);
        v66[2] = v68 + 1;
        (*(v46 + 32))(v66 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v68, v104, v47);
      }

      else
      {

        v66 = MEMORY[0x277D84F90];
        v65 = v100;
      }

      v49 = v99;
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
      v65 = v100;
    }

    v69 = [v49 lastChallengedGame];
    v70 = v112;
    if (v69)
    {
      v71 = v69;
      v72 = [v49 lastChallengedDate];
      if (v72)
      {
        v73 = v72;
        sub_266039144();

        v74 = v114;
        v75 = v109;
        v76 = v70;
        v77 = v116;
        (*(v114 + 32))(v109, v76, v116);
        (*(v74 + 16))(v105, v75, v77);
        v78 = v71;
        v79 = v106;
        GKGameDescriptor.ref.getter();

        (*(v107 + 104))(v79, *MEMORY[0x277D0D350], v108);
        (*(v117 + 16))(v65, v119, v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
        v84 = v102;
        OUTLINED_FUNCTION_35_1();
        sub_266039414();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v113;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = sub_26600CA88(0, v66[2] + 1, 1, v66);
        }

        v87 = v115;
        v89 = v66[2];
        v88 = v66[3];
        if (v89 >= v88 >> 1)
        {
          v97 = OUTLINED_FUNCTION_38_1(v88);
          v66 = sub_26600CA88(v97, v89 + 1, 1, v66);
        }

        (*(v114 + 8))(v109, v116);
        v90 = OUTLINED_FUNCTION_25_1();
        v91(v90);
        v66[2] = v89 + 1;
        (*(v46 + 32))(v66 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v89, v84, v87);
        goto LABEL_20;
      }

      v94 = OUTLINED_FUNCTION_25_1();
      v95(v94);
    }

    else
    {
      v92 = OUTLINED_FUNCTION_25_1();
      v93(v92);
    }

    v86 = v113;
LABEL_20:
    *v86 = v66;
  }
}

uint64_t sub_26601A320(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26601C0F8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_266039444();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t ShimProfileService.listSuggestedNicknames(player:count:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26601A438()
{
  OUTLINED_FUNCTION_8();
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26601A4E4;
  v2 = OUTLINED_FUNCTION_34_1(*(v0 + 16));

  return MEMORY[0x282165118](v2);
}

uint64_t sub_26601A4E4()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26601A5D4()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimProfileService.describeProfiles(players:)();
}

uint64_t sub_26601A65C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return ShimProfileService.listInteractions(player:participants:after:)(v1, v0);
}

uint64_t sub_26601A6F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_2(v3);

  return ShimProfileService.listSuggestedNicknames(player:count:)(v1, v0);
}

uint64_t sub_26601A784()
{
  OUTLINED_FUNCTION_36_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - v4;
  sub_266039424();
  v6 = sub_26601A85C();
  (*(v2 + 8))(v5, v0);
  return v6 & 1;
}

uint64_t sub_26601A85C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  sub_26601DF2C(&qword_280058370, &unk_280057F70, &unk_26603B960, MEMORY[0x277D0D518]);
  sub_266039934();
  sub_266039934();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_266039BE4();
  }

  return v1 & 1;
}

unint64_t sub_26601A94C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v33 = sub_266039444();
  v5 = *(v33 - 8);
  v6 = MEMORY[0x28223BE20](v33);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = 0;
  v32 = *(a3 + 16);
  v29 = v5 + 16;
  v12 = (v5 + 8);
  v26 = (v5 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v32 == v11)
    {

      return v28;
    }

    if (v11 >= *(a3 + 16))
    {
      break;
    }

    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = *(v5 + 72);
    v15 = a3;
    (*(v5 + 16))(v10, a3 + v13 + v14 * v11, v33);
    v16 = v30(v10);
    if (v3)
    {
      (*v12)(v10, v33);
      v23 = v28;

      return v23;
    }

    if (v16)
    {
      v25 = *v26;
      v25(v27, v10, v33);
      v17 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v17;
      if (isUniquelyReferenced_nonNull_native)
      {
        v19 = v17;
      }

      else
      {
        sub_26601B4C8(0, *(v17 + 16) + 1, 1);
        v19 = v34;
      }

      a3 = v15;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = v21 + 1;
        v24 = v21;
        sub_26601B4C8((v20 > 1), v21 + 1, 1);
        v22 = v28;
        v21 = v24;
        a3 = v15;
        v19 = v34;
      }

      ++v11;
      *(v19 + 16) = v22;
      v28 = v19;
      result = (v25)(v19 + v13 + v21 * v14, v27, v33);
    }

    else
    {
      result = (*v12)(v10, v33);
      ++v11;
    }
  }

  __break(1u);
  return result;
}

void sub_26601AC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_41_1();
  v40 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  OUTLINED_FUNCTION_2_0();
  v7 = v6;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_0();
  v39 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058388, &qword_26603C2F8) - 8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058390, &qword_26603C300);
  v15 = OUTLINED_FUNCTION_16(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_2();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v39 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  sub_266039434();
  v25 = v7;
  (*(v7 + 16))(v22, v40, v5);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
  v26 = *(v10 + 56);
  sub_26601DF7C();
  sub_26601DF7C();
  OUTLINED_FUNCTION_43_1(v13);
  if (!v27)
  {
    sub_26601DF7C();
    OUTLINED_FUNCTION_43_1(&v13[v26]);
    if (!v27)
    {
      v28 = v39;
      (*(v25 + 32))(v39, &v13[v26], v5);
      sub_26601DF2C(&qword_280058398, &qword_280057DB8, &unk_26603B760, MEMORY[0x277D0D510]);
      sub_2660398C4();
      v29 = *(v25 + 8);
      v29(v28, v5);
      OUTLINED_FUNCTION_35_1();
      sub_2660078E8(v30, v31, v32);
      OUTLINED_FUNCTION_35_1();
      sub_2660078E8(v33, v34, v35);
      v29(v18, v5);
      OUTLINED_FUNCTION_35_1();
      sub_2660078E8(v36, v37, v38);
      goto LABEL_10;
    }

    sub_2660078E8(v22, &qword_280058390, &qword_26603C300);
    sub_2660078E8(v24, &qword_280058390, &qword_26603C300);
    (*(v25 + 8))(v18, v5);
LABEL_9:
    sub_2660078E8(v13, &qword_280058388, &qword_26603C2F8);
    goto LABEL_10;
  }

  sub_2660078E8(v22, &qword_280058390, &qword_26603C300);
  sub_2660078E8(v24, &qword_280058390, &qword_26603C300);
  OUTLINED_FUNCTION_43_1(&v13[v26]);
  if (!v27)
  {
    goto LABEL_9;
  }

  sub_2660078E8(v13, &qword_280058390, &qword_26603C300);
LABEL_10:
  OUTLINED_FUNCTION_42_0();
}

void *sub_26601AFBC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26601B240(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_26601B348(a4 + v11, v8, v9 + v11, &unk_280057F70, &unk_26603B960);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_26601B0C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058378, &qword_26603C2E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_26601B1C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DC8, &qword_26603CCA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_26601B240(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058230, &unk_26603CC50);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26601B348(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_36_1();
  if (v11 < v10 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_5(), v6 + *(v12 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_15_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    OUTLINED_FUNCTION_15_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_26601B428(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26601B4E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26601B4C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26601B7CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26601B4E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058438, &qword_26603C360);
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
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058440, &qword_26603C368);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26601B620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_41_1();
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v14 = v13;
  if (v15)
  {
    v16 = *(v5 + 24);
    v17 = v16 >> 1;
    if ((v16 >> 1) < v4)
    {
      if (v17 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if ((v16 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v17 = v4;
      }
    }
  }

  else
  {
    v17 = v4;
  }

  v18 = *(v5 + 16);
  if (v17 <= v18)
  {
    v19 = *(v5 + 16);
  }

  else
  {
    v19 = v17;
  }

  if (!v19)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v20 = OUTLINED_FUNCTION_15_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_3_0(v22);
  v24 = *(v23 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v28 = _swift_stdlib_malloc_size(v27);
  if (!v24)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v28 - v26 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_24;
  }

  v27[2] = v18;
  v27[3] = 2 * ((v28 - v26) / v24);
LABEL_19:
  v30 = OUTLINED_FUNCTION_15_0();
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v30, v31) - 8);
  if (v14)
  {
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    sub_26601B348(v12 + v33, v18, v27 + v33, v11, v9);
    *(v12 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_42_0();
}

void *sub_26601B7CC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058380, &qword_26603C2F0);
  v10 = *(sub_266039444() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266039444() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26600CC70(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_26601B980(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  sub_26601DF2C(&qword_2800583F8, &unk_280057F70, &unk_26603B960, MEMORY[0x277D0D508]);
  v2 = sub_2660398B4();

  return sub_26601BAA0(a1, v2);
}

unint64_t sub_26601BA28(uint64_t a1, uint64_t a2)
{
  sub_266039C24();
  sub_2660398F4();
  v4 = sub_266039C34();

  return sub_26601BC60(a1, a2, v4);
}

unint64_t sub_26601BAA0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_26601DF2C(&qword_280058400, &unk_280057F70, &unk_26603B960, MEMORY[0x277D0D510]);
    v9 = sub_2660398C4();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_26601BC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266039BE4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26601BD14()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_265FFD52C;

  return sub_266018C3C();
}

unint64_t sub_26601BDC8(uint64_t a1)
{
  result = sub_266007ED4();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of GCFProfileService.getProfiles(playerIDs:)()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_6_2();
  v8 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_2(v5);

  return v8(v2, v1, v0);
}

uint64_t dispatch thunk of GCFProfileService.getContextualPromptStates()()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_6_2();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_2(v4);

  return v7(v1, v0);
}

uint64_t sub_26601C00C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26601C04C(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_26601C0F8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_26600CA88(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_26601C160(uint64_t *a1)
{
  v2 = *(sub_266039444() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26601DEBC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26601C280(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26601C208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26601C280(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_266039BC4();
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
        sub_266039444();
        v6 = sub_266039984();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_266039444() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_26601C748(v8, v9, a1, v4);
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
    return sub_26601C3B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26601C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_266039154();
  v8 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v41 - v11;
  v12 = sub_266039444();
  v13 = MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v57 = &v41 - v16;
  result = MEMORY[0x28223BE20](v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
    while (2)
    {
      v46 = v24;
      v47 = a3;
      v44 = v26;
      v45 = v25;
      v61 = v25;
      do
      {
        v28 = v56;
        v29 = v54;
        v54(v56, v26, v12);
        v30 = v12;
        v31 = v57;
        v29(v57, v24, v30);
        sub_266039404();
        v32 = v59;
        sub_266039404();
        v62 = sub_266039124();
        v33 = *v53;
        v34 = v32;
        v35 = v60;
        (*v53)(v34, v60);
        v33(v27, v35);
        v36 = *v52;
        v37 = v31;
        v12 = v30;
        (*v52)(v37, v30);
        result = v36(v28, v30);
        if ((v62 & 1) == 0)
        {
          break;
        }

        if (!v50)
        {
          __break(1u);
          return result;
        }

        v38 = *v49;
        v39 = v51;
        (*v49)(v51, v26, v30);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v24, v39, v30);
        v24 += v48;
        v26 += v48;
      }

      while (!__CFADD__(v61++, 1));
      a3 = v47 + 1;
      v24 = &v46[v42];
      v25 = v45 - 1;
      v26 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_26601C748(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v157 = sub_266039154();
  v8 = *(v157 - 8);
  v9 = MEMORY[0x28223BE20](v157);
  v156 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v130 - v11;
  v12 = sub_266039444();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v136 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v130 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v154 = &v130 - v19;
  result = MEMORY[0x28223BE20](v18);
  v158 = &v130 - v21;
  v142 = a3;
  v22 = a3[1];
  v137 = v13;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_101:
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v123 = (v24 + 16);
      v124 = *(v24 + 16);
      while (v124 >= 2)
      {
        if (!*v142)
        {
          goto LABEL_139;
        }

        v125 = v24;
        v126 = (v24 + 16 * v124);
        v127 = *v126;
        v128 = &v123[2 * v124];
        v24 = v128[1];
        sub_26601D33C(&(*v142)[*(v137 + 9) * *v126], &(*v142)[*(v137 + 9) * *v128], &(*v142)[*(v137 + 9) * v24], v159);
        if (v5)
        {
          break;
        }

        if (v24 < v127)
        {
          goto LABEL_127;
        }

        if (v124 - 2 >= *v123)
        {
          goto LABEL_128;
        }

        *v126 = v127;
        v126[1] = v24;
        v129 = *v123 - v124;
        if (*v123 < v124)
        {
          goto LABEL_129;
        }

        v124 = *v123 - 1;
        result = memmove(v128, v128 + 2, 16 * v129);
        *v123 = v124;
        v24 = v125;
      }
    }

LABEL_136:
    result = sub_26601D9A8(v24);
    v24 = result;
    goto LABEL_103;
  }

  v131 = a4;
  v23 = 0;
  v151 = (v8 + 8);
  v152 = v13 + 16;
  v149 = (v13 + 32);
  v150 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v153 = v12;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    if (v23 + 1 < v22)
    {
      v132 = v24;
      v27 = v23;
      v134 = v23;
      v143 = v5;
      v144 = v23 + 1;
      v28 = *v142;
      v159 = v28;
      v29 = v13;
      v30 = *(v13 + 9);
      v145 = v22;
      v146 = v30;
      v31 = v28 + v30 * v26;
      v32 = v12;
      v33 = *(v29 + 2);
      v33(v158, v31, v12);
      v34 = v154;
      v140 = v33;
      v33(v154, v28 + v30 * v27, v32);
      v5 = v155;
      v24 = v158;
      sub_266039404();
      v35 = v156;
      sub_266039404();
      LODWORD(v141) = sub_266039124();
      v36 = *v151;
      v37 = v157;
      (*v151)(v35, v157);
      v139 = v36;
      (v36)(v5, v37);
      v38 = *(v137 + 1);
      (v38)(v34, v32);
      v138 = v38;
      result = (v38)(v24, v32);
      v39 = v145;
      v40 = v134 + 2;
      v41 = v159 + v146 * (v134 + 2);
      while (1)
      {
        v42 = v40;
        if (++v144 >= v39)
        {
          break;
        }

        v5 = v158;
        v43 = v153;
        v44 = v140;
        v159 = v40;
        (v140)(v158, v41, v153);
        v24 = v154;
        v44(v154, v31, v43);
        v45 = v155;
        sub_266039404();
        v46 = v156;
        sub_266039404();
        LOBYTE(v148) = sub_266039124() & 1;
        LODWORD(v148) = v148;
        v47 = v46;
        v48 = v157;
        v49 = v139;
        (v139)(v47, v157);
        v49(v45, v48);
        v50 = v138;
        (v138)(v24, v43);
        result = (v50)(v5, v43);
        v42 = v159;
        v39 = v145;
        v41 += v146;
        v31 += v146;
        v40 = v159 + 1;
        if ((v141 & 1) != v148)
        {
          goto LABEL_9;
        }
      }

      v144 = v39;
LABEL_9:
      if (v141)
      {
        v26 = v144;
        v25 = v134;
        v12 = v153;
        if (v144 < v134)
        {
          goto LABEL_133;
        }

        if (v134 >= v144)
        {
          v5 = v143;
          v13 = v137;
          v24 = v132;
          goto LABEL_32;
        }

        if (v39 >= v42)
        {
          v51 = v42;
        }

        else
        {
          v51 = v39;
        }

        v52 = v146 * (v51 - 1);
        v53 = v146 * v51;
        v54 = v134;
        v55 = v134 * v146;
        v5 = v143;
        v13 = v137;
        do
        {
          if (v54 != --v26)
          {
            v56 = v5;
            v57 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            v159 = *v149;
            (v159)(v136, &v57[v55], v12);
            v58 = v55 < v52 || &v57[v55] >= &v57[v53];
            if (v58)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v55 != v52)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v159)(&v57[v52], v136, v12);
            v5 = v56;
            v13 = v137;
          }

          ++v54;
          v52 -= v146;
          v53 -= v146;
          v55 += v146;
        }

        while (v54 < v26);
        v24 = v132;
      }

      else
      {
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v12 = v153;
      }

      v26 = v144;
      v25 = v134;
    }

LABEL_32:
    v59 = v142[1];
    if (v26 < v59)
    {
      if (__OFSUB__(v26, v25))
      {
        goto LABEL_132;
      }

      if (v26 - v25 < v131)
      {
        break;
      }
    }

LABEL_48:
    if (v26 < v25)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26601B0C4(0, *(v24 + 16) + 1, 1, v24);
      v24 = result;
    }

    v80 = *(v24 + 16);
    v79 = *(v24 + 24);
    v81 = v80 + 1;
    if (v80 >= v79 >> 1)
    {
      result = sub_26601B0C4((v79 > 1), v80 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 16) = v81;
    v82 = (v24 + 32);
    v83 = (v24 + 32 + 16 * v80);
    *v83 = v25;
    v83[1] = v26;
    v159 = *v133;
    if (!v159)
    {
      goto LABEL_141;
    }

    v144 = v26;
    if (v80)
    {
      v148 = (v24 + 32);
      while (1)
      {
        v84 = v81 - 1;
        v85 = &v82[16 * v81 - 16];
        v86 = (v24 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v87 = *(v24 + 32);
          v88 = *(v24 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_69:
          if (v90)
          {
            goto LABEL_118;
          }

          v102 = *v86;
          v101 = v86[1];
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_121;
          }

          v106 = *(v85 + 1);
          v107 = v106 - *v85;
          if (__OFSUB__(v106, *v85))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v104, v107))
          {
            goto LABEL_126;
          }

          if (v104 + v107 >= v89)
          {
            if (v89 < v107)
            {
              v84 = v81 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v81 < 2)
        {
          goto LABEL_120;
        }

        v109 = *v86;
        v108 = v86[1];
        v97 = __OFSUB__(v108, v109);
        v104 = v108 - v109;
        v105 = v97;
LABEL_84:
        if (v105)
        {
          goto LABEL_123;
        }

        v111 = *v85;
        v110 = *(v85 + 1);
        v97 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v97)
        {
          goto LABEL_125;
        }

        if (v112 < v104)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v84 - 1 >= v81)
        {
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
          goto LABEL_135;
        }

        if (!*v142)
        {
          goto LABEL_138;
        }

        v116 = &v82[16 * v84 - 16];
        v117 = *v116;
        v118 = v84;
        v119 = &v82[16 * v84];
        v120 = *(v119 + 1);
        sub_26601D33C(&(*v142)[*(v13 + 9) * *v116], &(*v142)[*(v13 + 9) * *v119], &(*v142)[*(v13 + 9) * v120], v159);
        if (v5)
        {
        }

        if (v120 < v117)
        {
          goto LABEL_113;
        }

        v143 = 0;
        v5 = v13;
        v121 = v24;
        v24 = *(v24 + 16);
        if (v118 > v24)
        {
          goto LABEL_114;
        }

        *v116 = v117;
        *(v116 + 1) = v120;
        if (v118 >= v24)
        {
          goto LABEL_115;
        }

        v81 = v24 - 1;
        result = memmove(v119, v119 + 16, 16 * (v24 - 1 - v118));
        *(v121 + 16) = v24 - 1;
        v122 = v24 > 2;
        v24 = v121;
        v13 = v5;
        v5 = v143;
        v82 = v148;
        if (!v122)
        {
          goto LABEL_98;
        }
      }

      v91 = &v82[16 * v81];
      v92 = *(v91 - 8);
      v93 = *(v91 - 7);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_116;
      }

      v96 = *(v91 - 6);
      v95 = *(v91 - 5);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_117;
      }

      v98 = v86[1];
      v99 = v98 - *v86;
      if (__OFSUB__(v98, *v86))
      {
        goto LABEL_119;
      }

      v97 = __OFADD__(v89, v99);
      v100 = v89 + v99;
      if (v97)
      {
        goto LABEL_122;
      }

      if (v100 >= v94)
      {
        v114 = *v85;
        v113 = *(v85 + 1);
        v97 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v97)
        {
          goto LABEL_130;
        }

        if (v89 < v115)
        {
          v84 = v81 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v22 = v142[1];
    v23 = v144;
    if (v144 >= v22)
    {
      goto LABEL_101;
    }
  }

  v60 = (v25 + v131);
  if (__OFADD__(v25, v131))
  {
    goto LABEL_134;
  }

  if (v60 >= v59)
  {
    v60 = v142[1];
  }

  if (v60 < v25)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v26 == v60)
  {
    goto LABEL_48;
  }

  v132 = v24;
  v143 = v5;
  v61 = *v142;
  v62 = *(v13 + 9);
  v148 = *(v13 + 2);
  v63 = &v61[v62 * (v26 - 1)];
  v145 = -v62;
  v134 = v25;
  v64 = (v25 - v26);
  v146 = v61;
  v135 = v62;
  v65 = &v61[v26 * v62];
  v138 = v60;
LABEL_41:
  v144 = v26;
  v139 = v65;
  v140 = v64;
  v141 = v63;
  v66 = v63;
  while (1)
  {
    v67 = v158;
    v68 = v148;
    (v148)(v158, v65, v12);
    v69 = v154;
    (v68)(v154, v66, v12);
    v70 = v155;
    sub_266039404();
    v71 = v156;
    sub_266039404();
    LODWORD(v159) = sub_266039124();
    v72 = *v151;
    v73 = v71;
    v74 = v157;
    (*v151)(v73, v157);
    v75 = v70;
    v12 = v153;
    v72(v75, v74);
    v76 = *v150;
    (*v150)(v69, v12);
    result = v76(v67, v12);
    if ((v159 & 1) == 0)
    {
LABEL_46:
      v26 = v144 + 1;
      v63 = &v141[v135];
      v64 = v140 - 1;
      v65 = &v139[v135];
      if ((v144 + 1) == v138)
      {
        v26 = v138;
        v5 = v143;
        v13 = v137;
        v24 = v132;
        v25 = v134;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v146)
    {
      break;
    }

    v77 = *v149;
    v78 = v147;
    (*v149)(v147, v65, v12);
    swift_arrayInitWithTakeFrontToBack();
    v77(v66, v78, v12);
    v66 += v145;
    v65 += v145;
    v58 = __CFADD__(v64++, 1);
    if (v58)
    {
      goto LABEL_46;
    }
  }

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
  return result;
}

uint64_t sub_26601D33C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v84 = a4;
  v79 = sub_266039154();
  v7 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v77 = &v67 - v10;
  v83 = sub_266039444();
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v81 = &v67 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v18 = a2 - a1 == 0x8000000000000000 && v17 == -1;
  if (v18)
  {
    goto LABEL_60;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v17;
  v87 = a1;
  v86 = v84;
  v74 = (v7 + 8);
  v75 = (v14 + 16);
  v73 = (v14 + 8);
  v22 = v19 / v17;
  if (v21 >= v19 / v17)
  {
    v42 = v84;
    sub_26600CC70(a2, v19 / v17, v84);
    v43 = v42 + v22 * v17;
    v44 = -v17;
    v45 = v43;
    v82 = a1;
    v69 = v44;
LABEL_36:
    v46 = a2 + v44;
    v47 = a3;
    v67 = v45;
    v48 = v45;
    v70 = a2 + v44;
    v71 = a2;
    while (1)
    {
      if (v43 <= v84)
      {
        v87 = a2;
        v85 = v48;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v68 = v48;
      v80 = v47 + v44;
      v49 = v43 + v44;
      v50 = v43;
      v51 = *v75;
      v52 = v46;
      v53 = v83;
      v54 = v47;
      (*v75)(v81, v43 + v44, v83);
      v55 = v76;
      v51(v76, v52, v53);
      v56 = v77;
      sub_266039404();
      v57 = v78;
      sub_266039404();
      LODWORD(v72) = sub_266039124();
      v58 = *v74;
      v59 = v57;
      v60 = v79;
      (*v74)(v59, v79);
      v58(v56, v60);
      v61 = *v73;
      (*v73)(v55, v53);
      v61(v81, v53);
      if (v72)
      {
        v43 = v50;
        a3 = v80;
        if (v54 < v71 || v80 >= v71)
        {
          a2 = v70;
          swift_arrayInitWithTakeFrontToBack();
          v45 = v68;
          v44 = v69;
          a1 = v82;
        }

        else
        {
          v65 = v68;
          v44 = v69;
          v45 = v68;
          v18 = v54 == v71;
          v66 = v70;
          a2 = v70;
          a1 = v82;
          if (!v18)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v66;
            v45 = v65;
          }
        }

        goto LABEL_36;
      }

      v62 = v80;
      if (v54 < v50 || v80 >= v50)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v62;
        v43 = v49;
        v48 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
      }

      else
      {
        v48 = v49;
        v18 = v50 == v54;
        v47 = v80;
        v43 = v49;
        v46 = v70;
        a2 = v71;
        a1 = v82;
        v44 = v69;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v47 = v62;
          v43 = v49;
          v48 = v49;
        }
      }
    }

    v87 = a2;
    v85 = v67;
  }

  else
  {
    v23 = v84;
    sub_26600CC70(a1, (a2 - a1) / v17, v84);
    v71 = v17;
    v72 = v23 + v21 * v17;
    v85 = v72;
    v80 = a3;
    while (v84 < v72 && a2 < a3)
    {
      v82 = a1;
      v25 = *v75;
      v26 = v81;
      v27 = v83;
      (*v75)(v81, a2, v83);
      v28 = v76;
      v25(v76, v84, v27);
      v29 = v77;
      sub_266039404();
      v30 = v78;
      sub_266039404();
      v31 = sub_266039124();
      v32 = a2;
      v33 = *v74;
      v34 = v30;
      v35 = v79;
      (*v74)(v34, v79);
      v33(v29, v35);
      v36 = *v73;
      (*v73)(v28, v27);
      v36(v26, v27);
      if (v31)
      {
        v37 = v71;
        a2 = v32 + v71;
        v38 = v82;
        if (v82 < v32 || v82 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
        }

        else
        {
          a3 = v80;
          if (v82 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v37 = v71;
        v40 = v84 + v71;
        v38 = v82;
        if (v82 < v84 || v82 >= v40)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v80;
          a2 = v32;
        }

        else
        {
          a3 = v80;
          a2 = v32;
          if (v82 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v86 = v40;
        v84 = v40;
      }

      a1 = v38 + v37;
      v87 = a1;
    }
  }

LABEL_58:
  sub_26601D9BC(&v87, &v86, &v85);
  return 1;
}

uint64_t sub_26601D9BC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_266039444();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26601DA9C(void *a1)
{
  v1 = [a1 photos];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266039884();

  return v3;
}

uint64_t sub_26601DB08(void *a1)
{
  v1 = [a1 contactsAssociationID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2660398E4();

  return v3;
}

uint64_t sub_26601DB6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2660021E4(&v12, v10 + 40 * a1 + 32);
}

void *sub_26601DC04(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26601DD60(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26601DED0()
{
  OUTLINED_FUNCTION_36_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26601DF2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_26601DF7C()
{
  OUTLINED_FUNCTION_36_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26601DFEC()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
  OUTLINED_FUNCTION_16(v2);
  if (v0)
  {
    v3 = sub_266039224();
    OUTLINED_FUNCTION_3_4();
    v6 = sub_26601C208(v4, v5, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_47(v6);
    *v7 = v0;
    (*(*(v3 - 8) + 104))(v7, *MEMORY[0x277D0CE60], v3);
    v8 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
    return sub_2660399C4();
  }

  else
  {
    sub_266015C84(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058420, &qword_26603C358);
    return sub_2660399D4();
  }
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26601E15C()
{
  result = qword_280058430;
  if (!qword_280058430)
  {
    sub_265FFFCFC(255, &qword_280058428, 0x277D0C200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280058430);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_5();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x2821FE8E8](v2, v5 + v6, v4 | 7);
}

uint64_t sub_26601E2A4()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  OUTLINED_FUNCTION_16(v2);
  if (v0)
  {
    v3 = sub_266039224();
    OUTLINED_FUNCTION_3_4();
    v6 = sub_26601C208(v4, v5, MEMORY[0x277D0CE88]);
    v7 = OUTLINED_FUNCTION_47(v6);
    *v8 = v0;
    (*(*(v3 - 8) + 104))(v8, *MEMORY[0x277D0CE60], v3);
    *&v14[0] = v7;
    v9 = v0;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
    return sub_2660399C4();
  }

  if (!v1)
  {
    sub_266039224();
    OUTLINED_FUNCTION_3_4();
    sub_26601C208(v11, v12, MEMORY[0x277D0CE88]);
    memset(v14, 0, sizeof(v14));
    v13 = swift_allocError();
    sub_266039214();
    sub_2660078E8(v14, &unk_280057F50, &qword_26603B9C0);
    *&v14[0] = v13;
    goto LABEL_3;
  }

  *&v14[0] = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  return sub_2660399D4();
}

void OUTLINED_FUNCTION_13_2()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x277D85DD0];
}

uint64_t OUTLINED_FUNCTION_33_1()
{
}

uint64_t sub_26601E60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return OUTLINED_FUNCTION_0(sub_26601E628);
}

uint64_t sub_26601E628()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584B0, &qword_26603C388);
  *v4 = v0;
  v4[1] = sub_26600D774;
  v5 = OUTLINED_FUNCTION_79();

  return MEMORY[0x2822008A0](v5);
}

void sub_26601E724()
{
  OUTLINED_FUNCTION_41_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
  OUTLINED_FUNCTION_2_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  (*(v10 + 16))(v17 - v12, v7, v8);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v8);
  v17[4] = sub_2660277D4;
  v17[5] = v15;
  OUTLINED_FUNCTION_29_1();
  v17[1] = 1107296256;
  v17[2] = sub_26601E8C8;
  v17[3] = &block_descriptor_52;
  v16 = _Block_copy(v17);

  [v5 getLeaderboardsForGameDescriptor:v3 player:v1 setIdentifier:0 handler:v16];
  _Block_release(v16);
  OUTLINED_FUNCTION_42_0();
}

void sub_26601E8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_265FFFCFC(0, &qword_2800585B8, 0x277D0C118);
  v5 = sub_266039964();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26601E978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = OUTLINED_FUNCTION_41_0();
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26601E9B8()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = v5;
  *(v2 + 80) = v1;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584B8, &qword_26603C398);
  *v6 = v0;
  v6[1] = sub_26601EAC4;
  v7 = OUTLINED_FUNCTION_79();

  return MEMORY[0x2822008A0](v7);
}

uint64_t sub_26601EAC4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26601EBC4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v0();
}

void sub_26601EC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_41_1();
  v51 = v23;
  v52 = v22;
  v55 = v24;
  v56 = v25;
  v53 = v26;
  v54 = v27;
  v49 = v28;
  v50 = a22;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
  OUTLINED_FUNCTION_2_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v49 - v33;
  v35 = OUTLINED_FUNCTION_54_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v38 = OUTLINED_FUNCTION_16(v37);
  MEMORY[0x28223BE20](v38);
  v40 = &v49 - v39;
  sub_265FFFCFC(0, &qword_280058210, 0x277D0C1C8);
  v41 = sub_266039954();
  sub_2660275DC(a21, v40, &qword_2800584F8, &qword_26603C3F8);
  v42 = sub_266039184();
  v43 = 0;
  if (__swift_getEnumTagSinglePayload(v40, 1, v42) != 1)
  {
    v43 = sub_266039164();
    OUTLINED_FUNCTION_5_1();
    (*(v44 + 8))(v40, v42);
  }

  v45 = objc_opt_self();
  (*(v31 + 16))(v34, v49, v29);
  v46 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v47 = swift_allocObject();
  (*(v31 + 32))(v47 + v46, v34, v29);
  v57[4] = sub_266027650;
  v57[5] = v47;
  OUTLINED_FUNCTION_29_1();
  v57[1] = 1107296256;
  v57[2] = sub_26601EF18;
  v57[3] = &block_descriptor_3;
  v48 = _Block_copy(v57);

  [v45 getEntriesForLeaderboard:v53 gameDescriptor:v54 localPlayer:0 playerScope:v55 timeScope:v56 range:v52 players:v51 locale:v41 from:v43 handler:{v50, v48}];
  _Block_release(v48);

  OUTLINED_FUNCTION_42_0();
}

uint64_t sub_26601EF18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_265FFFCFC(0, &qword_2800585A8, 0x277D0C110);
    v7 = sub_266039964();
  }

  v10 = a2;
  v11 = a5;
  v9(a2, v7, a4, a5);
}

uint64_t sub_26601EFE0()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_2(v7);

  return sub_26601E60C(v4, v2, v5);
}

uint64_t sub_26601F080()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  v1[1] = sub_26600DCB0;
  OUTLINED_FUNCTION_44_1();
  OUTLINED_FUNCTION_45_1();

  return sub_26601E978(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_26601F120@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for ShimLeaderboardService.GCFGameStatServiceLeaderboardsAdapter;
  a3[4] = &off_2877B8970;
  *a3 = a1;
  return sub_2660021E4(a2, (a3 + 5));
}

uint64_t ShimLeaderboardService.describe(leaderboards:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_266039154();
  v1[4] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43_0();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v5 = sub_266039384();
  OUTLINED_FUNCTION_16(v5);
  v1[10] = OUTLINED_FUNCTION_28_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F0, &qword_26603BD38);
  OUTLINED_FUNCTION_16(v6);
  v1[11] = OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800580F8, &qword_26603BD40);
  OUTLINED_FUNCTION_16(v7);
  v1[12] = OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800584C0, &qword_26603C3A8);
  OUTLINED_FUNCTION_16(v8);
  v1[13] = OUTLINED_FUNCTION_43_0();
  v1[14] = swift_task_alloc();
  v9 = sub_2660393D4();
  v1[15] = v9;
  OUTLINED_FUNCTION_3_0(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_43_0();
  v1[18] = swift_task_alloc();
  v11 = sub_2660392C4();
  v1[19] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_43_0();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058150, &qword_26603BDB0);
  OUTLINED_FUNCTION_16(v13);
  v1[24] = OUTLINED_FUNCTION_28_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[25] = v14;
  OUTLINED_FUNCTION_3_0(v14);
  v1[26] = v15;
  v1[27] = OUTLINED_FUNCTION_28_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v1[28] = v16;
  OUTLINED_FUNCTION_3_0(v16);
  v1[29] = v17;
  v1[30] = OUTLINED_FUNCTION_28_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F60, &unk_26603B9E0);
  OUTLINED_FUNCTION_16(v18);
  v1[31] = OUTLINED_FUNCTION_28_0();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[32] = v19;
  OUTLINED_FUNCTION_3_0(v19);
  v1[33] = v20;
  v1[34] = OUTLINED_FUNCTION_28_0();
  v21 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26601F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_99();
  v23 = v22[32];
  __swift_project_boxed_opaque_existential_1((v22[3] + 40), *(v22[3] + 64));
  v24 = OUTLINED_FUNCTION_52_0();
  v25(v24);
  v26 = OUTLINED_FUNCTION_73();
  if (__swift_getEnumTagSinglePayload(v26, v27, v23) == 1)
  {
    sub_266027184(v22[31], &unk_280057F60);
    sub_266039224();
    OUTLINED_FUNCTION_0_2();
    sub_266027598(v28, v29);
    OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_15();
    v51 = swift_allocError();
    sub_2660391E4();
    swift_willThrow();
    v42 = v22[14];
    v43 = v22[13];
    v44 = v22[12];
    v45 = v22[11];
    v46 = v22[10];
    v47 = v22[9];
    v48 = v22[8];
    v49 = v22[7];
    v50 = v22[6];

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_62();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, a19, a20, a21, a22);
  }

  else
  {
    (*(v22[33] + 32))(v22[34], v22[31], v22[32]);
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    v22[35] = v39;
    *v39 = v40;
    v39[1] = sub_26601F76C;
    OUTLINED_FUNCTION_62();

    return sub_265FFF2B8();
  }
}

uint64_t sub_26601F76C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  *(v2 + 288) = v1;
  *(v2 + 296) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26601F874()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[36];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[39] = v4;
  *v4 = v0;
  v4[1] = sub_26601F940;

  return sub_266020DA4();
}

uint64_t sub_26601F940()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v6[40] = v4;
  v6[41] = v5;
  v6[42] = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26601FA64()
{
  v1 = 0;
  v2 = v0[29];
  v3 = v0[5];
  v118 = (v0[26] + 32);
  v111 = (v0[20] + 104);
  v105 = (v3 + 16);
  v106 = (v3 + 8);
  v110 = (v0[16] + 16);
  v112 = v0[16];
  v123 = MEMORY[0x277D84F90];
  v4 = *(v0[2] + 16);
  v108 = *MEMORY[0x277D0CFF0];
  v5 = v0[42];
  v113 = v2;
  v109 = v4;
  while (v1 != v4)
  {
    (*(v2 + 16))(v0[30], v0[2] + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v1, v0[28]);
    v6 = sub_266039544();
    if (v5)
    {
      v96 = v0[33];
      v95 = v0[34];
      v97 = v0[32];

      OUTLINED_FUNCTION_70();
      v98 = OUTLINED_FUNCTION_54_0();
      v99(v98);
      (*(v96 + 8))(v95, v97);

      goto LABEL_33;
    }

    v8 = v6;
    v9 = v7;
    v10 = v0[25];
    sub_266021C44(v0[30], v0[40], v0[24]);
    v11 = OUTLINED_FUNCTION_73();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, v12, v10);
    v14 = v0[41];
    if (EnumTagSinglePayload == 1)
    {
      v100 = v0[24];

      sub_266027184(v100, &unk_280058150);
      goto LABEL_32;
    }

    v15 = v0[27];
    (*v118)(v15, v0[24], v0[25]);
    v16 = sub_266021D40(v15, v14);
    if (!v16)
    {
      OUTLINED_FUNCTION_71();
      v101();

LABEL_31:

LABEL_32:
      v79 = v0[36];
      v81 = v0[33];
      v80 = v0[34];
      v82 = v0[32];
      v83 = v0[30];
      v84 = v0[28];
      sub_266039224();
      OUTLINED_FUNCTION_0_2();
      v87 = sub_266027598(v85, v86);
      OUTLINED_FUNCTION_47(v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584E8, &unk_26603C3D0);
      sub_2660391F4();
      swift_willThrow();

      OUTLINED_FUNCTION_70();
      v88(v83, v84);
      (*(v81 + 8))(v80, v82);
LABEL_33:

      OUTLINED_FUNCTION_11();

      v89();
      return;
    }

    v17 = v16;
    v119 = v1 + 1;
    v18 = sub_266003570(v16);
    for (i = 0; ; ++i)
    {
      if (v18 == i)
      {
        v0 = v121;
        v76 = v121[27];
        v77 = v121[25];

        OUTLINED_FUNCTION_71();
        v78(v76, v77);
        goto LABEL_31;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x266777030](i, v17);
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v20 = *(v17 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        return;
      }

      v124 = v20;
      v21 = [v20 identifier];
      v22 = sub_2660398E4();
      v24 = v23;

      if (v22 == v8 && v24 == v9)
      {
        break;
      }

      v26 = sub_266039BE4();

      if (v26)
      {
        goto LABEL_20;
      }
    }

LABEL_20:

    v0 = v121;
    v27 = v121[23];

    sub_266000FE8([v124 type], v27);
    v28 = v121[22];
    v29 = [v124 baseLeaderboardID];
    sub_2660398E4();

    v30 = [v124 groupIdentifier];
    sub_2660398E4();

    v31 = sub_266039474();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
    v35 = [v124 title];
    sub_2660398E4();

    sub_266000FE8([v124 type], v28);
    v107 = v31;
    v36 = v121[21];
    v115 = v121[19];
    v38 = v121[11];
    v37 = v121[12];
    v39 = v121[10];
    v114 = [v124 supportsChallenges];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E70, &unk_26603B7A0);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    sub_26600FD7C([v124 releaseState], v38);
    sub_266001934(v124, &selRef_visibility);
    sub_266039374();

    v103 = sub_266001934(v124, &selRef_leaderboardDescription);
    v104 = v44;
    LOBYTE(v102) = v114;
    sub_2660393B4();
    (*v111)(v36, v108, v115);
    LOBYTE(v30) = sub_266021DB0();
    v45 = OUTLINED_FUNCTION_53();
    v122 = v46;
    v46(v45);
    if (v30)
    {
      v47 = [v124 startDate];
      if (v47)
      {
        v48 = v47;
        sub_266039144();

        v49 = [v124 nextStartDate];
        if (v49)
        {
          v50 = v49;
          v52 = v121[8];
          v51 = v121[9];
          v54 = v121[6];
          v53 = v121[7];
          v55 = v121[4];
          sub_266039144();

          v56 = *v105;
          (*v105)(v53, v51, v55);
          v56(v54, v52, v55);
          [v124 duration];
          OUTLINED_FUNCTION_74();
          sub_266039464();
          OUTLINED_FUNCTION_88();
          __swift_storeEnumTagSinglePayload(v57, v58, v59, v107);
          sub_2660393C4();
          v60 = *v106;
          (*v106)(v52, v55);
          v60(v51, v55);
        }

        else
        {
          (*v106)(v121[9], v121[4]);
        }
      }
    }

    (*v110)(v121[17], v121[18], v121[15]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v70 = OUTLINED_FUNCTION_68();
      v123 = sub_266026DEC(v70, v71, v72, v73);
    }

    v62 = v123[2];
    v61 = v123[3];
    if (v62 >= v61 >> 1)
    {
      v74 = OUTLINED_FUNCTION_38_1(v61);
      v123 = sub_266026DEC(v74, v75, 1, v123);
    }

    v63 = v121[28];
    v64 = v121[18];
    v116 = v121[30];
    v117 = v121[17];
    v65 = v121[15];

    (*(v112 + 8))(v64, v65);
    v66 = OUTLINED_FUNCTION_74();
    v122(v66);
    OUTLINED_FUNCTION_71();
    v67 = OUTLINED_FUNCTION_52_0();
    v68(v67);
    OUTLINED_FUNCTION_70();
    v69(v116, v63);
    v123[2] = v62 + 1;
    (*(v112 + 32))(v123 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v62, v117, v65);
    v5 = 0;
    v1 = v119;
    v2 = v113;
    v4 = v109;
  }

  v90 = v0[36];
  v91 = v0[33];
  v92 = v0[34];
  v93 = v0[32];

  v120 = sub_266021E90(v123);

  (*(v91 + 8))(v92, v93);

  OUTLINED_FUNCTION_31_0();

  v94(v120);
}

uint64_t sub_2660207C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_99();
  (*(v22[33] + 8))(v22[34], v22[32]);
  OUTLINED_FUNCTION_26_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_62();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2660208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_99();

  v23 = OUTLINED_FUNCTION_12_0();
  v24(v23);
  OUTLINED_FUNCTION_26_1();

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_62();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2660209F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0(sub_266020A10);
}

uint64_t sub_266020A10()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_6_2();
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_266020B38;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_266020B38()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v4 = *v1;
  OUTLINED_FUNCTION_4();
  *v5 = v4;

  OUTLINED_FUNCTION_31_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266020C24()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);

  return sub_2660209F4(v2, v4, v3);
}

uint64_t sub_266020CC0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_39_1();

  return v4(v3);
}

uint64_t sub_266020DA4()
{
  OUTLINED_FUNCTION_1();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v0[7] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_43_0();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v0[12] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v0[13] = v7;
  v0[14] = OUTLINED_FUNCTION_43_0();
  v0[15] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266020ED4()
{
  OUTLINED_FUNCTION_89();
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = *(v0[4] + 16);
  v0[16] = v3;
  v4 = v2;
  while (1)
  {
    v0[18] = v1;
    v0[19] = v2;
    v0[17] = v2;
    v5 = v0[15];
    if (v1 == v3)
    {

      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X3, X16 }
    }

    v6 = v0[13];
    v7 = v0[11];
    v8 = *(v6 + 16);
    v9 = *(v6 + 72);
    v10 = OUTLINED_FUNCTION_39_0();
    v11 = v8(v10);
    v12 = OUTLINED_FUNCTION_104(v11);
    if (v7)
    {
      v43 = OUTLINED_FUNCTION_45_0(v12, v0[15]);
      v44(v43);

      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X1, X16 }
    }

    v13 = OUTLINED_FUNCTION_48_0();
    v54 = v8;
    v8(v13);
    v14 = OUTLINED_FUNCTION_24_0();
    v52 = v15;
    v15(v14);
    swift_isUniquelyReferenced_nonNull_native();
    v0[2] = v4;
    sub_2660266C4(v5, &qword_2800584D8, &qword_26603C3B0, &qword_280058578);
    if (__OFADD__(*(v4 + 16), (v17 & 1) == 0))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return MEMORY[0x2821FE290](v16);
    }

    v18 = v16;
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058588, &qword_26603C668);
    if (sub_266039BA4())
    {
      break;
    }

LABEL_8:
    v22 = v0[2];
    v0[22] = v22;
    v23 = v0[13];
    v24 = v0[14];
    v25 = v0[12];
    v27 = v0[7];
    v26 = v0[8];
    v55 = v22;
    if (v19)
    {
      v28 = *(v26 + 72);
      (*(v26 + 40))(*(v22 + 56) + v28 * v18, v0[10], v27);
      v29 = *(v23 + 8);
      v29(v24, v25);
    }

    else
    {
      OUTLINED_FUNCTION_51(v22 + 8 * (v18 >> 6));
      v53 = v31;
      v54(v30 + v18 * v9, v24, v25);
      v28 = *(v26 + 72);
      (*(v26 + 32))(*(v55 + 56) + v28 * v18, v53, v27);
      v29 = *(v23 + 8);
      v16 = (v29)(v24, v25);
      v32 = *(v55 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_29;
      }

      *(v55 + 16) = v34;
    }

    v0[23] = v28;
    v0[24] = v29;
    v2 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16) || (v35 = v0[11], , sub_2660266C4(v35, &qword_2800584D0, &unk_26603B740, &qword_280058258), LOBYTE(v35) = v36, , (v35 & 1) == 0))
    {
      v40 = OUTLINED_FUNCTION_50();
      v52(v40);
      v0[25] = sub_265FFEED4();
      OUTLINED_FUNCTION_7_4();
      v47 = swift_task_alloc();
      v0[26] = v47;
      *v47 = v0;
      OUTLINED_FUNCTION_25_2(v47);
      OUTLINED_FUNCTION_38_0();

      __asm { BRAA            X1, X16 }
    }

    v37 = OUTLINED_FUNCTION_30();
    v38(v37);
    v39 = OUTLINED_FUNCTION_53();
    (v29)(v39);
    v4 = v0[22];
    v1 = v0[18] + 1;
    v3 = v0[16];
  }

  sub_2660266C4(v0[14], &qword_2800584D8, &qword_26603C3B0, &qword_280058578);
  if ((v19 & 1) == (v21 & 1))
  {
    v18 = v20;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_38_0();

  return MEMORY[0x2821FE290](v16);
}

uint64_t sub_266021410()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  v3[27] = v7;
  v3[28] = v0;

  v8 = v2[25];
  if (v0)
  {
    v10 = v3[8];
    v9 = v3[9];
    v11 = v3[7];
    v12 = *(v10 + 8);
    v3[29] = v12;
    v3[30] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v9, v11);
  }

  else
  {
  }

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266021570()
{
  v1 = v0[17];
  v2 = v0[9];
  swift_isUniquelyReferenced_nonNull_native();
  v0[3] = v1;
  sub_2660266C4(v2, &qword_2800584D0, &unk_26603B740, &qword_280058258);
  if (__OFADD__(*(v1 + 16), (v4 & 1) == 0))
  {
    goto LABEL_38;
  }

  v5 = v3;
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058590, &qword_26603C670);
  if ((sub_266039BA4() & 1) == 0)
  {
LABEL_5:
    v9 = v0[3];
    v10 = v0[27];
    v71 = v9;
    if (v6)
    {
      *(v9[7] + 8 * v5) = v10;
    }

    else
    {
      v11 = v0[23];
      v12 = v0[20];
      v13 = v0[9];
      v14 = v0[7];
      v9[(v5 >> 6) + 8] |= 1 << v5;
      v3 = v12(v9[6] + v11 * v5, v13, v14);
      *(v9[7] + 8 * v5) = v10;
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
LABEL_39:
        __break(1u);
        return MEMORY[0x2821FE290](v3);
      }

      v9[2] = v17;
    }

    v18 = v0[24];
    v19 = *(v0[8] + 8);
    (v19)(v0[9], v0[7]);
    v20 = OUTLINED_FUNCTION_52_0();
    v19(v20);
    v21 = OUTLINED_FUNCTION_15_0();
    v18(v21);
    v22 = v0[28];
    v23 = v71;
    while (1)
    {
      v24 = v0[22];
      v25 = v0[18] + 1;
      v0[18] = v25;
      v0[19] = v23;
      v0[17] = v23;
      v26 = v0[15];
      if (v25 == v0[16])
      {

        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X3, X16 }
      }

      v27 = v0[13];
      v28 = *(v27 + 16);
      v29 = *(v27 + 72);
      v30 = OUTLINED_FUNCTION_39_0();
      v28(v30);
      v31 = sub_266039554();
      if (v22)
      {
        v61 = OUTLINED_FUNCTION_45_0(v31, v0[15]);
        v62(v61);

        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v32 = OUTLINED_FUNCTION_48_0();
      v28(v32);
      v33 = OUTLINED_FUNCTION_24_0();
      v70 = v34;
      v34(v33);
      swift_isUniquelyReferenced_nonNull_native();
      v0[2] = v24;
      sub_2660266C4(v26, &qword_2800584D8, &qword_26603C3B0, &qword_280058578);
      if (__OFADD__(*(v24 + 16), (v35 & 1) == 0))
      {
        break;
      }

      v36 = v3;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058588, &qword_26603C668);
      if (sub_266039BA4())
      {
        sub_2660266C4(v0[14], &qword_2800584D8, &qword_26603C3B0, &qword_280058578);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_33;
        }

        v36 = v38;
      }

      v40 = v0[2];
      v0[22] = v40;
      v41 = v0[13];
      v42 = v0[14];
      v43 = v0[12];
      v45 = v0[7];
      v44 = v0[8];
      v73 = v40;
      if (v37)
      {
        v46 = *(v44 + 72);
        (*(v44 + 40))(*(v40 + 56) + v46 * v36, v0[10], v45);
        v47 = *(v41 + 8);
        v47(v42, v43);
      }

      else
      {
        OUTLINED_FUNCTION_51(v40 + 8 * (v36 >> 6));
        v72 = v49;
        v50(v48 + v36 * v29, v42, v43);
        v46 = *(v44 + 72);
        (*(v44 + 32))(*(v73 + 56) + v46 * v36, v72, v45);
        v47 = *(v41 + 8);
        v3 = (v47)(v42, v43);
        v51 = *(v73 + 16);
        v16 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v16)
        {
          goto LABEL_37;
        }

        *(v73 + 16) = v52;
      }

      v0[23] = v46;
      v0[24] = v47;
      v23 = v71;
      if (!v71[2] || (v53 = v0[11], , sub_2660266C4(v53, &qword_2800584D0, &unk_26603B740, &qword_280058258), LOBYTE(v53) = v54, , (v53 & 1) == 0))
      {
        v58 = OUTLINED_FUNCTION_50();
        v70(v58);
        v0[25] = sub_265FFEED4();
        OUTLINED_FUNCTION_7_4();
        v65 = swift_task_alloc();
        v0[26] = v65;
        *v65 = v0;
        OUTLINED_FUNCTION_25_2(v65);
        OUTLINED_FUNCTION_37_0();

        __asm { BRAA            X1, X16 }
      }

      v55 = OUTLINED_FUNCTION_30();
      v56(v55);
      v57 = OUTLINED_FUNCTION_53();
      (v47)(v57);
      v22 = 0;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_2660266C4(v0[9], &qword_2800584D0, &unk_26603B740, &qword_280058258);
  if ((v6 & 1) == (v8 & 1))
  {
    v5 = v7;
    goto LABEL_5;
  }

LABEL_33:
  OUTLINED_FUNCTION_37_0();

  return MEMORY[0x2821FE290](v3);
}

uint64_t sub_266021C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_2660266C4(a1, &qword_2800584D8, &qword_26603C3B0, &qword_280058578), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    (*(*(v9 - 8) + 16))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_266021D40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2660266C4(a1, &qword_2800584D0, &unk_26603B740, &qword_280058258);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266021DB0()
{
  sub_2660392C4();
  sub_266027598(&qword_280058570, MEMORY[0x277D0CFF8]);
  sub_266039934();
  sub_266039934();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_266039BE4();
  }

  return v1 & 1;
}

uint64_t sub_266021E90(uint64_t a1)
{
  v2 = sub_2660393D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058558, &qword_26603C650);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_26602676C(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_26602676C(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v15 + 1;
      sub_266027528(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t ShimLeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)()
{
  OUTLINED_FUNCTION_1();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[9] = v5;
  v1[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v7);
  v1[15] = OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F0, &qword_26603C3F0);
  v1[16] = v8;
  OUTLINED_FUNCTION_3_0(v8);
  v1[17] = v9;
  v1[18] = OUTLINED_FUNCTION_28_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F8, &qword_26603C3F8);
  OUTLINED_FUNCTION_16(v10);
  v1[19] = OUTLINED_FUNCTION_28_0();
  v11 = sub_266039364();
  v1[20] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[21] = v12;
  v1[22] = OUTLINED_FUNCTION_28_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058500, &unk_26603C400);
  OUTLINED_FUNCTION_16(v13);
  v1[23] = OUTLINED_FUNCTION_28_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[24] = v14;
  OUTLINED_FUNCTION_3_0(v14);
  v1[25] = v15;
  v1[26] = OUTLINED_FUNCTION_28_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v1[27] = v16;
  OUTLINED_FUNCTION_3_0(v16);
  v1[28] = v17;
  v1[29] = OUTLINED_FUNCTION_28_0();
  v18 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

id sub_2660222FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_89();
  v20 = *(*(v18 + 72) + 16);
  *(v18 + 304) = *MEMORY[0x277D0D298];
  *(v18 + 308) = *MEMORY[0x277D0D2A0];
  *(v18 + 312) = *MEMORY[0x277D0D290];
  v21 = MEMORY[0x277D84F90];
  *(v18 + 248) = 0;
  *(v18 + 256) = v21;
  *(v18 + 240) = v20;
  if (v20)
  {
    v22 = OUTLINED_FUNCTION_43_2();
    v23(v22);
    sub_266039554();
    v24 = sub_265FFEED4();
    *(v18 + 264) = v24;
    v33 = v24;
    v34 = OUTLINED_FUNCTION_22_0();
    v35(v34);
    result = sub_265FFF154();
    *(v18 + 272) = result;
    v48 = *(v18 + 80);
    v47 = *(v18 + 88);
    v49 = v47 - v48;
    if (__OFSUB__(v47, v48))
    {
      __break(1u);
      return result;
    }

    v50 = result;
    v51 = *(v18 + 160);
    sub_2660275DC(*(v18 + 104), *(v18 + 184), &qword_280058500, &unk_26603C400);
    v52 = OUTLINED_FUNCTION_73();
    if (__swift_getEnumTagSinglePayload(v52, v53, v51) == 1)
    {
      sub_266027184(*(v18 + 184), &qword_280058500);
LABEL_15:
      OUTLINED_FUNCTION_100();
      v61 = *(v18 + 48);
      __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
      v62 = sub_266039184();
      OUTLINED_FUNCTION_5();
      (*(v63 + 16))(v49, v19, v62);
      OUTLINED_FUNCTION_88();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v62);
      OUTLINED_FUNCTION_6_2();
      v90 = v67 + *v67;
      v68 = swift_task_alloc();
      *(v18 + 280) = v68;
      *v68 = v18;
      OUTLINED_FUNCTION_24_2(v68);
      OUTLINED_FUNCTION_69();
      OUTLINED_FUNCTION_38_0();

      return v77(v69, v70, v71, v72, v73, v74, v75, v76, a9, v61 + 16, v90, v49, a13, a14, a15, a16, a17, a18);
    }

    v54 = *(v18 + 304);
    v55 = *(v18 + 176);
    v56 = *(v18 + 160);
    v57 = *(v18 + 168);
    (*(v57 + 16))(v55, *(v18 + 184), v56);
    v58 = (*(v57 + 88))(v55, v56);
    if (v58 == v54 || v58 == *(v18 + 308))
    {
      v59 = OUTLINED_FUNCTION_12_3();
      v60(v59);
      goto LABEL_15;
    }

    if (v58 == *(v18 + 312))
    {
      (*(*(v18 + 168) + 8))(*(v18 + 184), *(v18 + 160));
      goto LABEL_15;
    }

    v79 = *(v18 + 168);
    v91 = *(v18 + 176);
    v80 = *(v18 + 160);
    sub_266039224();
    OUTLINED_FUNCTION_0_2();
    v83 = sub_266027598(v81, v82);
    OUTLINED_FUNCTION_47(v83);
    v85 = v84;
    OUTLINED_FUNCTION_50_0();
    *(v18 + 56) = a13;
    *(v18 + 64) = a14;
    OUTLINED_FUNCTION_40_0();
    sub_266039B94();
    v86 = *(v18 + 64);
    *v85 = *(v18 + 56);
    v85[1] = v86;
    OUTLINED_FUNCTION_5_1();
    (*(v87 + 104))(v85);
    swift_willThrow();
    v88 = *(v79 + 8);
    v88(v91, v80);

    v89 = OUTLINED_FUNCTION_74();
    (v88)(v89);
    OUTLINED_FUNCTION_67();
    v37 = OUTLINED_FUNCTION_76();
    v38(v37);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_1();

    return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, v91, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_42_1();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_266022868()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  v3[36] = v5;
  v3[37] = v0;

  sub_266027184(v3[19], &qword_2800584F8);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

id sub_2660229A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_89();
  v20 = *(v18 + 288);
  v21 = *(v18 + 296);
  v22 = *(v18 + 232);
  __swift_destroy_boxed_opaque_existential_0((v18 + 16));
  v23 = swift_task_alloc();
  *(v23 + 16) = v22;
  sub_26602377C(sub_2660271D8, v23, v20);
  if (v21)
  {
    v25 = *(v18 + 264);
    v24 = *(v18 + 272);

LABEL_14:
    OUTLINED_FUNCTION_67();
    v64 = OUTLINED_FUNCTION_76();
    v65(v64);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_1();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  sub_266039334();
  OUTLINED_FUNCTION_31_2();
  sub_266027598(v30, v19);
  OUTLINED_FUNCTION_7_5();
  v32 = sub_266027598(v31, v19);
  OUTLINED_FUNCTION_61(v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v18 + 256);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_68();
    sub_266026EEC();
    v34 = v116;
  }

  v36 = *(v34 + 16);
  v35 = *(v34 + 24);
  a12 = v36 + 1;
  if (v36 >= v35 >> 1)
  {
    OUTLINED_FUNCTION_38_1(v35);
    sub_266026EEC();
    v34 = v117;
  }

  v37 = *(v18 + 264);
  v39 = *(v18 + 224);
  v38 = *(v18 + 232);
  v40 = *(v18 + 216);
  v41 = *(v18 + 144);
  v42 = *(v18 + 128);

  *(v34 + 16) = a12;
  OUTLINED_FUNCTION_57();
  v45(v43 + v44 * v36, v41, v42);
  (*(v39 + 8))(v38, v40);
  v46 = *(v18 + 240);
  v47 = *(v18 + 248) + 1;
  *(v18 + 248) = v47;
  *(v18 + 256) = v34;
  if (v47 == v46)
  {

    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_42_1();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v57 = OUTLINED_FUNCTION_5_4();
    v59 = v58(v57);
    OUTLINED_FUNCTION_104(v59);
    if (v38)
    {

      goto LABEL_14;
    }

    v60 = sub_265FFEED4();
    *(v18 + 264) = v60;
    v61 = v60;
    v62 = OUTLINED_FUNCTION_22_0();
    v63(v62);
    result = sub_265FFF154();
    *(v18 + 272) = result;
    v75 = *(v18 + 80);
    v74 = *(v18 + 88);
    v76 = v74 - v75;
    if (__OFSUB__(v74, v75))
    {
      __break(1u);
      return result;
    }

    v77 = result;
    v78 = *(v18 + 160);
    sub_2660275DC(*(v18 + 104), *(v18 + 184), &qword_280058500, &unk_26603C400);
    v79 = OUTLINED_FUNCTION_73();
    if (__swift_getEnumTagSinglePayload(v79, v80, v78) == 1)
    {
      sub_266027184(*(v18 + 184), &qword_280058500);
    }

    else
    {
      v81 = *(v18 + 304);
      v82 = *(v18 + 176);
      v83 = *(v18 + 160);
      v84 = *(v18 + 168);
      (*(v84 + 16))(v82, *(v18 + 184), v83);
      v85 = *(v84 + 88);
      v36 = v84 + 88;
      v86 = v85(v82, v83);
      if (v86 == v81 || v86 == *(v18 + 308))
      {
        v87 = OUTLINED_FUNCTION_12_3();
        v88(v87);
      }

      else
      {
        v36 = *(v18 + 184);
        if (v86 != *(v18 + 312))
        {
          v107 = *(v18 + 168);
          a11 = *(v18 + 160);
          a12 = *(v18 + 176);
          a10 = *(v18 + 184);
          sub_266039224();
          OUTLINED_FUNCTION_0_2();
          v110 = sub_266027598(v108, v109);
          OUTLINED_FUNCTION_47(v110);
          v112 = v111;
          OUTLINED_FUNCTION_50_0();
          *(v18 + 56) = a13;
          *(v18 + 64) = a14;
          OUTLINED_FUNCTION_40_0();
          sub_266039B94();
          v113 = *(v18 + 64);
          *v112 = *(v18 + 56);
          v112[1] = v113;
          OUTLINED_FUNCTION_5_1();
          (*(v114 + 104))(v112);
          swift_willThrow();
          v115 = *(v107 + 8);
          v115(a12, a11);

          v115(v36, a11);
          goto LABEL_14;
        }

        (*(*(v18 + 168) + 8))(*(v18 + 184), *(v18 + 160));
      }
    }

    OUTLINED_FUNCTION_100();
    v89 = *(v18 + 48);
    __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
    v90 = sub_266039184();
    OUTLINED_FUNCTION_5();
    (*(v91 + 16))(v36, v76, v90);
    OUTLINED_FUNCTION_88();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v90);
    OUTLINED_FUNCTION_6_2();
    v118 = v95 + *v95;
    v96 = swift_task_alloc();
    *(v18 + 280) = v96;
    *v96 = v18;
    OUTLINED_FUNCTION_24_2(v96);
    OUTLINED_FUNCTION_38_0();

    return v105(v97, v98, v99, v100, v101, v102, v103, v104, a9, v89 + 16, v118, v76, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_2660230C8()
{
  OUTLINED_FUNCTION_36();
  v1 = *(v0 + 264);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_2660231A8()
{
  sub_266039364();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_35_2(v2, v14);
  v4(v3);
  v5 = OUTLINED_FUNCTION_69();
  v7 = v6(v5);
  result = 0;
  if (v7 != *MEMORY[0x277D0D298])
  {
    if (v7 == *MEMORY[0x277D0D2A0])
    {
      return 1;
    }

    else if (v7 == *MEMORY[0x277D0D290])
    {
      return 2;
    }

    else
    {
      sub_266039224();
      OUTLINED_FUNCTION_0_2();
      sub_266027598(v9, v10);
      OUTLINED_FUNCTION_15();
      swift_allocError();
      OUTLINED_FUNCTION_75();
      sub_266039B04();
      MEMORY[0x266776E20](0xD00000000000001CLL, 0x800000026603B0E0);
      sub_266039B94();
      *v0 = v15;
      v0[1] = v16;
      OUTLINED_FUNCTION_5_1();
      (*(v11 + 104))(v0);
      swift_willThrow();
      v12 = OUTLINED_FUNCTION_69();
      return v13(v12);
    }
  }

  return result;
}

uint64_t sub_2660233B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v29[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  OUTLINED_FUNCTION_2_0();
  v30 = v4;
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = v29 - v5;
  v6 = sub_266039154();
  v7 = OUTLINED_FUNCTION_16(v6);
  MEMORY[0x28223BE20](v7);
  v35 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  OUTLINED_FUNCTION_2_0();
  v34 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057E80, &unk_26603BD00);
  sub_265FFED20();
  v17 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26603B720;
  v19 = (v18 + v17);
  v20 = [v2 player];
  v21 = [v20 playerID];

  v22 = sub_2660398E4();
  v24 = v23;

  *v19 = v22;
  v19[1] = v24;
  swift_storeEnumTagMultiPayload();
  v25 = v37;
  result = sub_266039584();
  if (!v25)
  {
    v37 = [v2 context];
    v27 = [v2 date];
    sub_266039144();

    v28 = [v2 formattedScore];
    sub_2660398E4();

    (*(v30 + 16))(v33, v32, v31);
    (*(v34 + 16))(v13, v15, v36);
    result = [v2 rank];
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      [v2 score];
      sub_266039324();
      return (*(v34 + 8))(v15, v36);
    }
  }

  return result;
}

void *sub_26602377C(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_266039334();
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266039BB4())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v26 = MEMORY[0x277D84F90];
    result = sub_2660267AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v9 = v26;
    v18 = i;
    v19 = a3 & 0xC000000000000001;
    v17[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v17[1] = v6 + 32;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v19)
      {
        v13 = MEMORY[0x266777030](v11, a3);
      }

      else
      {
        if (v11 >= *(v17[0] + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a3 + 8 * v11 + 32);
      }

      v14 = v13;
      v25 = v13;
      v21(&v25, &v24);
      if (v4)
      {

        return v9;
      }

      v4 = 0;

      v26 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2660267AC((v15 > 1), v16 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v16 + 1;
      (*(v6 + 32))(v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v23, v20);
      ++v11;
      if (v12 == v18)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void sub_2660239C4(void (*a1)(id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v16 - v7;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_266039BB4())
  {
    v25 = MEMORY[0x277D84F90];
    sub_2660267CC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
      return;
    }

    v9 = 0;
    v10 = v25;
    v17 = i;
    v18 = a3 & 0xC000000000000001;
    v16[0] = a3 & 0xFFFFFFFFFFFFFF8;
    v16[1] = v6 + 32;
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v18)
      {
        v12 = MEMORY[0x266777030](v9, a3);
      }

      else
      {
        if (v9 >= *(v16[0] + 16))
        {
          goto LABEL_19;
        }

        v12 = *(a3 + 8 * v9 + 32);
      }

      v13 = v12;
      v24 = v12;
      v20(&v24, &v23);
      if (v4)
      {

        return;
      }

      v4 = 0;

      v25 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2660267CC(v14 > 1, v15 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v15 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v22, v19);
      ++v9;
      if (v11 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }
}

uint64_t ShimLeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)()
{
  OUTLINED_FUNCTION_1();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[9] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v6);
  v1[14] = OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F0, &qword_26603C3F0);
  v1[15] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_43_0();
  v1[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584F8, &qword_26603C3F8);
  OUTLINED_FUNCTION_16(v9);
  v1[19] = OUTLINED_FUNCTION_28_0();
  v10 = sub_266039364();
  v1[20] = v10;
  OUTLINED_FUNCTION_3_0(v10);
  v1[21] = v11;
  v1[22] = OUTLINED_FUNCTION_28_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058500, &unk_26603C400);
  OUTLINED_FUNCTION_16(v12);
  v1[23] = OUTLINED_FUNCTION_28_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[24] = v13;
  OUTLINED_FUNCTION_3_0(v13);
  v1[25] = v14;
  v1[26] = OUTLINED_FUNCTION_28_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D8, &qword_26603C3B0);
  v1[27] = v15;
  OUTLINED_FUNCTION_3_0(v15);
  v1[28] = v16;
  v1[29] = OUTLINED_FUNCTION_28_0();
  v17 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266023E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();
  v13 = *(*(v12 + 72) + 16);
  *(v12 + 328) = *MEMORY[0x277D0D298];
  *(v12 + 332) = *MEMORY[0x277D0D2A0];
  *(v12 + 336) = *MEMORY[0x277D0D290];
  v14 = MEMORY[0x277D84F90];
  *(v12 + 248) = 0;
  *(v12 + 256) = v14;
  *(v12 + 240) = v13;
  if (v13)
  {
    v15 = OUTLINED_FUNCTION_43_2();
    v16(v15);
    sub_266039554();
    *(v12 + 264) = sub_265FFEED4();
    (*(*(v12 + 200) + 8))(*(v12 + 208), *(v12 + 192));
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v12 + 272) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_4_3(v26);
    OUTLINED_FUNCTION_45_1();

    return sub_266000818(v28, v29, v30);
  }

  else
  {
    OUTLINED_FUNCTION_84();

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_45_1();

    return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }
}

uint64_t sub_266024094()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 280) = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26602419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_89();
  v22 = *(v20 + 288);
  v23 = sub_265FFF154();
  *(v20 + 296) = v23;
  if (v22)
  {
    v24 = *(v20 + 264);

LABEL_3:

LABEL_4:
    OUTLINED_FUNCTION_67();
    v25 = OUTLINED_FUNCTION_76();
    v26(v25);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_42_1();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v36 = v23;
  v37 = *(v20 + 184);
  v38 = *(v20 + 160);
  sub_2660275DC(*(v20 + 96), v37, &qword_280058500, &unk_26603C400);
  if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
  {
    sub_266027184(*(v20 + 184), &qword_280058500);
  }

  else
  {
    v39 = *(v20 + 328);
    (*(*(v20 + 168) + 16))(*(v20 + 176), *(v20 + 184), *(v20 + 160));
    v40 = OUTLINED_FUNCTION_53();
    v42 = v41(v40);
    if (v42 != v39 && v42 != *(v20 + 332) && v42 != *(v20 + 336))
    {
      a10 = *(v20 + 280);
      a11 = *(v20 + 264);
      a12 = *(v20 + 256);
      v91 = *(v20 + 176);
      v92 = *(v20 + 160);
      v93 = *(v20 + 168);
      sub_266039224();
      OUTLINED_FUNCTION_0_2();
      v96 = sub_266027598(v94, v95);
      OUTLINED_FUNCTION_47(v96);
      v98 = v97;
      OUTLINED_FUNCTION_50_0();
      *(v20 + 56) = a13;
      *(v20 + 64) = a14;
      OUTLINED_FUNCTION_40_0();
      sub_266039B94();
      v99 = *(v20 + 64);
      *v98 = *(v20 + 56);
      v98[1] = v99;
      OUTLINED_FUNCTION_5_1();
      (*(v100 + 104))(v98);
      swift_willThrow();
      v101 = *(v93 + 8);
      v101(v91, v92);

      v102 = OUTLINED_FUNCTION_54_0();
      (v101)(v102);
      goto LABEL_4;
    }

    v43 = OUTLINED_FUNCTION_12_3();
    v44(v43);
  }

  if (*(*(v20 + 80) + 16))
  {
    sub_266005E54(*(v20 + 104), v20 + 16);
    v45 = *(v20 + 48);
    __swift_project_boxed_opaque_existential_1((v20 + 16), *(v20 + 40));
    v46 = sub_266039184();
    OUTLINED_FUNCTION_5();
    v47 = OUTLINED_FUNCTION_54_0();
    v48(v47);
    OUTLINED_FUNCTION_88();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v46);
    OUTLINED_FUNCTION_6_2();
    v111 = v52 + *v52;
    v53 = swift_task_alloc();
    *(v20 + 304) = v53;
    *v53 = v20;
    v53[1] = sub_2660248DC;
    OUTLINED_FUNCTION_38_0();

    return v62(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, v45 + 16, v111, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {

    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    sub_266039334();
    v68 = MEMORY[0x277D0D080];
    sub_266027598(&qword_280058508, MEMORY[0x277D0D080]);
    OUTLINED_FUNCTION_7_5();
    sub_266027598(v69, v68);
    sub_2660395E4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = *(v20 + 256);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_68();
      sub_266026EEC();
      v71 = v109;
    }

    v72 = *(v71 + 24);
    a12 = v71;
    if (*(v71 + 16) >= v72 >> 1)
    {
      OUTLINED_FUNCTION_38_1(v72);
      sub_266026EEC();
      a12 = v110;
    }

    v73 = *(v20 + 136);
    OUTLINED_FUNCTION_94();

    v75 = OUTLINED_FUNCTION_32_1(a12);
    v76(v75);
    v77 = OUTLINED_FUNCTION_52_0();
    v78(v77);
    OUTLINED_FUNCTION_77();
    if (v79)
    {
      OUTLINED_FUNCTION_8_2();

      OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_42_1();

      return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    else
    {
      v88 = OUTLINED_FUNCTION_5_4();
      v90 = v89(v88);
      OUTLINED_FUNCTION_104(v90);
      if (v73)
      {
        goto LABEL_3;
      }

      *(v20 + 264) = sub_265FFEED4();
      (*(*(v20 + 200) + 8))(*(v20 + 208), *(v20 + 192));
      swift_task_alloc();
      OUTLINED_FUNCTION_26();
      *(v20 + 272) = v103;
      *v103 = v104;
      OUTLINED_FUNCTION_4_3(v103);
      OUTLINED_FUNCTION_42_1();

      return sub_266000818(v105, v106, v107);
    }
  }
}

uint64_t sub_2660248DC()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v5 = v4;
  v2[39] = v6;
  v2[40] = v0;

  sub_266027184(v2[19], &qword_2800584F8);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266024A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  v17 = v14[39];
  v18 = v14[40];
  v19 = v14[29];
  __swift_destroy_boxed_opaque_existential_0(v14 + 2);
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  sub_26602377C(sub_266027920, v20, v17);
  if (v18)
  {
    v21 = v14[37];
    v22 = v14[33];

LABEL_15:
    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_8_2();
    v52 = OUTLINED_FUNCTION_76();
    v53(v52);

    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_34_2();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14);
  }

  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_266039334();
  OUTLINED_FUNCTION_31_2();
  sub_266027598(v27, v15);
  OUTLINED_FUNCTION_7_5();
  v29 = sub_266027598(v28, v15);
  OUTLINED_FUNCTION_61(v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v14[32];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_68();
    sub_266026EEC();
    v31 = v68;
  }

  v32 = *(v31 + 24);
  a10 = v31;
  if (*(v31 + 16) >= v32 >> 1)
  {
    OUTLINED_FUNCTION_38_1(v32);
    sub_266026EEC();
    a10 = v69;
  }

  v33 = v14[18];
  OUTLINED_FUNCTION_94();

  v35 = OUTLINED_FUNCTION_32_1(a10);
  v36(v35);
  v37 = OUTLINED_FUNCTION_52_0();
  v38(v37);
  OUTLINED_FUNCTION_77();
  if (v39)
  {
    OUTLINED_FUNCTION_8_2();

    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_34_2();

    return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v49 = OUTLINED_FUNCTION_5_4();
    v51 = v50(v49);
    OUTLINED_FUNCTION_104(v51);
    if (v33)
    {

      goto LABEL_15;
    }

    v14[33] = sub_265FFEED4();
    (*(v14[25] + 8))(v14[26], v14[24]);
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    v14[34] = v62;
    *v62 = v63;
    OUTLINED_FUNCTION_4_3(v62);
    OUTLINED_FUNCTION_34_2();

    return sub_266000818(v64, v65, v66);
  }
}

uint64_t sub_266024DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();

  v13 = *(v12 + 232);
  OUTLINED_FUNCTION_8_2();
  (*(v14 + 8))(v13);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_266024EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_80();
  v13 = *(v12 + 264);

  __swift_destroy_boxed_opaque_existential_0((v12 + 16));
  v14 = *(v12 + 232);
  OUTLINED_FUNCTION_8_2();
  (*(v15 + 8))(v14);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_45_1();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t ShimLeaderboardService.listLeaderboards(games:players:)()
{
  OUTLINED_FUNCTION_1();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v4);
  v1[10] = OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058518, &qword_26603C420);
  v1[11] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_43_0();
  v1[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800584D0, &unk_26603B740);
  v1[15] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_43_0();
  v1[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058520, &qword_26603C428);
  v1[19] = v9;
  OUTLINED_FUNCTION_16(v9);
  v1[20] = OUTLINED_FUNCTION_28_0();
  v10 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266025110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  v15 = *(v14 + 64);
  v16 = *(*(v14 + 56) + 16);
  v17 = MEMORY[0x277D84F90];
  *(v14 + 176) = 0;
  *(v14 + 184) = v17;
  *(v14 + 168) = v16;
  if (v16)
  {
    OUTLINED_FUNCTION_92();
    v18();
    if (*(v15 + 16))
    {
      v20 = *(v14 + 152);
      v19 = *(v14 + 160);
      v21 = *(v14 + 120);
      v22 = *(v14 + 128);
      v42 = *(v14 + 136);
      v41 = *(v14 + 64);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
      *(v14 + 192) = v23;
      v24 = *(v23 - 8);
      *(v14 + 200) = v24;
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = *(v20 + 48);
      *(v14 + 264) = v26;
      v27 = *(v22 + 32);
      v28 = OUTLINED_FUNCTION_12_0();
      v27(v28);
      (*(v24 + 16))(v19 + v26, v41 + v25, v23);
      (v27)(v42, v19, v21);
      swift_task_alloc();
      OUTLINED_FUNCTION_26();
      *(v14 + 208) = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_28_2(v29);
      OUTLINED_FUNCTION_90();
      OUTLINED_FUNCTION_34_2();

      return sub_265FFF2B8();
    }

    (*(*(v14 + 128) + 8))(*(v14 + 144), *(v14 + 120));
  }

  OUTLINED_FUNCTION_31_0();
  OUTLINED_FUNCTION_34_2();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26602532C()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  *(v3 + 216) = v7;
  *(v3 + 224) = v0;

  (*(*(v2 + 200) + 8))(*(v3 + 160) + *(v3 + 264), *(v2 + 192));
  if (v0)
  {
  }

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26602549C(uint64_t a1)
{
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 224);
  sub_266005E54(*(v1 + 72), v1 + 16);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v5 = sub_265FFEED4();
  *(v1 + 232) = v5;
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    v6 = OUTLINED_FUNCTION_10_2();
    v7(v6);

    OUTLINED_FUNCTION_14_3();

    return v8();
  }

  else
  {
    v10 = v5;
    OUTLINED_FUNCTION_6_2();
    v14 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v1 + 240) = v12;
    *v12 = v1;
    v12[1] = sub_266025694;
    v13 = *(v1 + 216);

    return v14(v10, v13, v3, v4);
  }
}

uint64_t sub_266025694()
{
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7_0();
  *v6 = v5;
  *(v3 + 248) = v7;
  *(v3 + 256) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_60();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660257C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  v15 = *(v14 + 248);
  v16 = *(v14 + 256);
  v17 = *(v14 + 136);
  __swift_destroy_boxed_opaque_existential_0((v14 + 16));
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  sub_2660239C4(sub_26602722C, v18, v15);
  if (v16)
  {

    v19 = OUTLINED_FUNCTION_10_2();
    v20(v19);

    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_34_2();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
  }

  v30 = *(v14 + 112);
  v85 = *(v14 + 104);
  v32 = *(v14 + 88);
  v31 = *(v14 + 96);

  sub_2660395F4();
  OUTLINED_FUNCTION_34_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = OUTLINED_FUNCTION_74();
  __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  sub_266014E7C(&qword_280058528, &qword_2800584D8, &qword_26603C3B0);
  sub_266014E7C(&qword_280058530, &qword_2800584D8, &qword_26603C3B0);
  sub_2660395E4();
  (*(v31 + 16))(v85, v30, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(v14 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_68();
    sub_266026EEC();
    v40 = v82;
  }

  v42 = *(v40 + 16);
  v41 = *(v40 + 24);
  if (v42 >= v41 >> 1)
  {
    OUTLINED_FUNCTION_38_1(v41);
    v43 = v83;
    sub_266026EEC();
    v40 = v84;
  }

  else
  {
    v43 = v42 + 1;
  }

  v44 = *(v14 + 128);
  v87 = *(v14 + 136);
  v46 = *(v14 + 112);
  v45 = *(v14 + 120);
  v47 = *(v14 + 96);
  v48 = *(v14 + 104);
  v49 = *(v14 + 88);

  (*(v47 + 8))(v46, v49);
  *(v40 + 16) = v43;
  OUTLINED_FUNCTION_57();
  v52(v50 + v51 * v42, v48, v49);
  (*(v44 + 8))(v87, v45);
  v53 = *(v14 + 168);
  v54 = *(v14 + 176) + 1;
  *(v14 + 176) = v54;
  *(v14 + 184) = v40;
  if (v54 == v53)
  {
    goto LABEL_12;
  }

  v55 = *(v14 + 64);
  OUTLINED_FUNCTION_92();
  result = v56();
  v57 = *(v55 + 16);
  if (v54 == v57)
  {
    (*(*(v14 + 128) + 8))(*(v14 + 144), *(v14 + 120));
LABEL_12:

    OUTLINED_FUNCTION_31_0();
    OUTLINED_FUNCTION_34_2();

    return v60(v58, v59, v60, v61, v62, v63, v64, v65, v85, v87, a11, a12, a13, a14);
  }

  if (v54 >= v57)
  {
    __break(1u);
  }

  else
  {
    v67 = *(v14 + 152);
    v66 = *(v14 + 160);
    v68 = *(v14 + 120);
    v69 = *(v14 + 128);
    v70 = *(v14 + 64);
    v86 = *(v14 + 136);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
    *(v14 + 192) = v71;
    OUTLINED_FUNCTION_2_0();
    v73 = v72;
    *(v14 + 200) = v72;
    v75 = v70 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v74 + 72) * v54;
    v76 = *(v67 + 48);
    *(v14 + 264) = v76;
    v77 = *(v69 + 32);
    v78 = OUTLINED_FUNCTION_12_0();
    v77(v78);
    (*(v73 + 16))(v66 + v76, v75, v71);
    (v77)(v86, v66, v68);
    swift_task_alloc();
    OUTLINED_FUNCTION_26();
    *(v14 + 208) = v79;
    *v79 = v80;
    OUTLINED_FUNCTION_28_2(v79);
    OUTLINED_FUNCTION_90();
    OUTLINED_FUNCTION_34_2();

    return sub_265FFF2B8();
  }

  return result;
}

uint64_t sub_266025CD0()
{
  OUTLINED_FUNCTION_36();
  v0 = OUTLINED_FUNCTION_10_2();
  v1(v0);

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266025D84()
{
  OUTLINED_FUNCTION_36();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OUTLINED_FUNCTION_10_2();
  v2(v1);

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_266025E84()
{
  OUTLINED_FUNCTION_8();
  sub_266039224();
  OUTLINED_FUNCTION_0_2();
  sub_266027598(v0, v1);
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_15();
  swift_allocError();
  sub_266039204();
  swift_willThrow();
  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_266025F68()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.describe(leaderboards:)();
}

uint64_t sub_266025FF0()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboardEntries(leaderboards:range:locale:timeScope:)();
}

uint64_t sub_2660260A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_34();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_40();

  return ShimLeaderboardService.listLeaderboardEntries(leaderboards:players:locale:timeScope:)();
}

uint64_t sub_266026140()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboards(games:players:)();
}

uint64_t sub_2660261D8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.previousOcurrences(leaderboards:players:)();
}

uint64_t sub_266026258()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.submit(entries:)();
}

uint64_t sub_2660262D8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.reset(leaderboards:)();
}

uint64_t sub_266026358()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.describe(leaderboardSets:)();
}

uint64_t sub_2660263D8()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboardSets(games:)();
}

uint64_t sub_266026458()
{
  OUTLINED_FUNCTION_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);

  return ShimLeaderboardService.listLeaderboards(leaderboardSets:)();
}

uint64_t sub_2660264D8()
{
  sub_2660393E4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v1);
  v3 = OUTLINED_FUNCTION_35_2(v2, v14);
  v4(v3);
  v5 = OUTLINED_FUNCTION_69();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277D0D340])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277D0D338])
  {
    return 0;
  }

  sub_266039224();
  OUTLINED_FUNCTION_0_2();
  sub_266027598(v9, v10);
  OUTLINED_FUNCTION_15();
  swift_allocError();
  OUTLINED_FUNCTION_75();
  sub_266039B04();
  MEMORY[0x266776E20](0xD00000000000001ELL, 0x800000026603B100);
  sub_266039B94();
  *v0 = v15;
  v0[1] = v16;
  OUTLINED_FUNCTION_5_1();
  (*(v11 + 104))(v0);
  swift_willThrow();
  v12 = OUTLINED_FUNCTION_69();
  return v13(v12);
}

void sub_2660266C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v7 = OUTLINED_FUNCTION_45_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  sub_266014E7C(a4, a2, a3);
  OUTLINED_FUNCTION_74();
  sub_2660398B4();
  OUTLINED_FUNCTION_52();
  sub_266026FF4();
}

void *sub_2660267AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266026908(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26602680C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058568, &qword_26603C660);
  v4 = *(sub_2660393D4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266026908(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058550, &qword_26603C648);
  v10 = *(sub_266039334() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266039334() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_266026C70(a4 + v16, v8, v13 + v16, MEMORY[0x277D0D080]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_266026AD0()
{
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_3_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_15_0();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_266026D24(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_42_0();
}

void sub_266026C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_81();
  if (v8 && (a4(0), OUTLINED_FUNCTION_5(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_15_1();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_15_1();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_266026D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_81();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_5(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_15_1();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_15_1();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void *sub_266026DEC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_26602680C(v8, v7);
  v10 = *(sub_2660393D4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_266026C70(a4 + v11, v8, v9 + v11, MEMORY[0x277D0D320]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_266026EEC()
{
  OUTLINED_FUNCTION_46();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_266013318(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_15_0();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8);
  if (v3)
  {
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_266026D24(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_266026FF4()
{
  OUTLINED_FUNCTION_41_1();
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v16 = v5;
  v18 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v1);
  OUTLINED_FUNCTION_2_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  v21 = v0 + 64;
  v17 = v0;
  v13 = ~(-1 << *(v0 + 32));
  for (i = v4 & v13; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v9 + 16))(v12, *(v17 + 48) + *(v9 + 72) * i, v7);
    sub_266014E7C(v20, v18, v19);
    v15 = sub_2660398C4();
    (*(v9 + 8))(v12, v7);
    if (v15)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_42_0();
}

uint64_t sub_266027184(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_45_0(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_5();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2660271F0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_2660233B0(*(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_26602722C(id *a1, void *a2)
{
  v4 = [*a1 identifier];
  sub_2660398E4();

  sub_2660394A4();

  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t dispatch thunk of GCFGameStatServiceLeaderboards.getLeaderboardsForGameDescriptor(gameDescriptor:player:)()
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_6_2();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2(v2);
  v4 = OUTLINED_FUNCTION_40();

  return v6(v4);
}

uint64_t dispatch thunk of GCFGameStatServiceLeaderboards.loadEntriesForLeaderboard(leaderboard:gameDescriptor:playerScope:timeScope:range:players:locale:)(uint64_t a1)
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_2();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v3[1] = sub_266027938;
  v5 = OUTLINED_FUNCTION_44_1();

  return v7(v5);
}

uint64_t sub_266027528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058558, &qword_26603C650);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266027598(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_52();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2660275DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_5();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266027650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
  OUTLINED_FUNCTION_16(v6);
  if (a4)
  {
    sub_266039224();
    OUTLINED_FUNCTION_0_2();
    v9 = sub_266027598(v7, v8);
    v10 = OUTLINED_FUNCTION_47(v9);
    *v11 = a4;
    OUTLINED_FUNCTION_5_1();
    (*(v12 + 104))();
    v13 = a4;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
    OUTLINED_FUNCTION_19_1(v14, v15, v16, v17, v18, v19, v20, v21, v32, v10);
    return sub_2660399C4();
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
    if (a2)
    {
      v23 = a2;
    }

    v33 = v23;

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058598, &qword_26603C678);
    OUTLINED_FUNCTION_19_1(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    return sub_2660399D4();
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2660277D4(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
  OUTLINED_FUNCTION_16(v4);
  if (a2)
  {
    sub_266039224();
    OUTLINED_FUNCTION_0_2();
    v7 = sub_266027598(v5, v6);
    v8 = OUTLINED_FUNCTION_47(v7);
    *v9 = a2;
    OUTLINED_FUNCTION_5_1();
    (*(v10 + 104))();
    v11 = a2;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
    OUTLINED_FUNCTION_19_1(v12, v13, v14, v15, v16, v17, v18, v19, v29, v8);
    return sub_2660399C4();
  }

  else
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585B0, &qword_26603C680);
    OUTLINED_FUNCTION_19_1(v21, v22, v23, v24, v25, v26, v27, v28, v29, v3);
    return sub_2660399D4();
  }
}

uint64_t OUTLINED_FUNCTION_24_2(uint64_t result)
{
  *(result + 8) = sub_266022868;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_1()
{
}

void OUTLINED_FUNCTION_40_0()
{

  JUMPOUT(0x266776E20);
}

uint64_t OUTLINED_FUNCTION_50_0()
{

  return sub_266039B04();
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1)
{

  return sub_2660395E4();
}

uint64_t OUTLINED_FUNCTION_100()
{
  v2 = *(v0 + 112);

  return sub_266005E54(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{

  return sub_266039554();
}

char *sub_266027F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      if (!*v2)
      {
        break;
      }

      v5 = *(v2 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_2660016D4(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = sub_2660016D4((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      v8 = &v3[16 * v7];
      *(v8 + 4) = v5;
      *(v8 + 5) = v4;
      v2 += 2;
      if (!--v1)
      {
        return v3;
      }
    }

    sub_266039224();
    v9 = sub_265FFE434();
    OUTLINED_FUNCTION_6(v9);
    sub_2660391E4();
    swift_willThrow();
  }

  return v3;
}

uint64_t sub_266028038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v3;
  swift_getWitnessTable();
  result = sub_266039924();
  if ((result & 1) == 0)
  {
    (*(v6 + 16))(v8, a1, v5);
    return sub_2660399A4();
  }

  return result;
}

uint64_t sub_266028160()
{
  v1 = sub_2660395F4();
  result = __swift_getEnumTagSinglePayload(v0, 1, v1);
  if (result != 1)
  {
    v3 = sub_266039224();
    v4 = sub_265FFE434();
    OUTLINED_FUNCTION_6(v4);
    *v5 = 0xD00000000000001FLL;
    v5[1] = 0x800000026603B180;
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D0CE68], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26602821C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2, a1);
  if (sub_266039A64() < 65)
  {
    sub_266039A74();
    sub_266039A54();
  }

  else
  {
    sub_2660283C0();
    sub_266028414();
    sub_266039874();
  }

  (*(v4 + 8))(v6, a1);
  return sub_266039134();
}

unint64_t sub_2660283C0()
{
  result = qword_2800585C0;
  if (!qword_2800585C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800585C0);
  }

  return result;
}

unint64_t sub_266028414()
{
  result = qword_2800585C8;
  if (!qword_2800585C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800585C8);
  }

  return result;
}

uint64_t sub_266028468(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  *(v5 + 112) = a3;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  return MEMORY[0x2822009F8](sub_266028490, 0, 0);
}

uint64_t sub_266028490()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  sub_266028CD8();
  OUTLINED_FUNCTION_12_0();
  v1 = sub_265FFFD3C();
  *(v0 + 80) = v1;

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2660285B8;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 112);

  return sub_266028F68(v1, v5, v3, v4);
}

uint64_t sub_2660285B8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

char *sub_2660286B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  v17 = sub_266003570(*(v14 + 96));
  if (v17)
  {
    v18 = v17;
    a11 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_118();
    result = sub_266034CC8(v19, v20, 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_117();
    do
    {
      if (v15)
      {
        v22 = MEMORY[0x266777030](0, *(v14 + 96));
      }

      else
      {
        v22 = *a10;
      }

      v23 = v22;
      v24 = [v23 *(v16 + 280)];
      sub_2660398E4();

      OUTLINED_FUNCTION_149();
      if (v26)
      {
        sub_266034CC8((v25 > 1), v23, 1);
      }

      OUTLINED_FUNCTION_116();
    }

    while (!v27);
  }

  else
  {
    v28 = *(v14 + 80);
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_34_2();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26602880C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t sub_266028868(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 120) = a3;
  *(v6 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266028888()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800585D0, &qword_26603B790);
  sub_266039A24();
  sub_266028CD8();
  OUTLINED_FUNCTION_12_0();
  v1 = sub_265FFFD3C();
  *(v0 + 88) = v1;

  OUTLINED_FUNCTION_3_1();
  v8 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_266028A28;
  v4 = *(v0 + 72);
  v5 = *(v0 + 64);
  v6 = *(v0 + 120);

  return v8(v1, v6, v5, v4);
}

uint64_t sub_266028A28()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

char *sub_266028B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  v17 = sub_266003570(*(v14 + 104));
  if (v17)
  {
    v18 = v17;
    a11 = MEMORY[0x277D84F90];
    v19 = OUTLINED_FUNCTION_118();
    result = sub_266034CC8(v19, v20, 0);
    if (v18 < 0)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_117();
    do
    {
      if (v15)
      {
        v22 = MEMORY[0x266777030](0, *(v14 + 104));
      }

      else
      {
        v22 = *a10;
      }

      v23 = v22;
      v24 = [v23 *(v16 + 280)];
      sub_2660398E4();

      OUTLINED_FUNCTION_149();
      if (v26)
      {
        sub_266034CC8((v25 > 1), v23, 1);
      }

      OUTLINED_FUNCTION_116();
    }

    while (!v27);
  }

  else
  {
    v28 = *(v14 + 88);
  }

  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_34_2();

  return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266028C7C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v1();
}

unint64_t sub_266028CD8()
{
  result = qword_280058210;
  if (!qword_280058210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280058210);
  }

  return result;
}

__n128 InvitationMailboxEntry.init(issueTimestamp:issuingPlayerID:receivingPlayerId:issuingPlayerCAID:addressedToCAID:lastPlayedGame:lastPlayedTimestamp:lastChallengedGame:lastChallengedTimestamp:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  sub_2660021E4(a1, a9);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = a8;
  *(a9 + 96) = a10;
  *(a9 + 104) = a11;
  v21 = *(a12 + 16);
  *(a9 + 112) = *a12;
  *(a9 + 128) = v21;
  *(a9 + 144) = *(a12 + 32);
  *(a9 + 152) = a13;
  *(a9 + 160) = a14;
  result = *a15;
  v23 = *(a15 + 16);
  *(a9 + 200) = *(a15 + 32);
  *(a9 + 184) = v23;
  *(a9 + 168) = result;
  return result;
}

uint64_t sub_266028F68(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 72) = a2;
  *(v4 + 24) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266028F84()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 72);
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_32_2(v4);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v1 + 56) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058290, &qword_26603C6A0);
  *v6 = v1;
  v6[1] = sub_266018B3C;

  return sub_2660035B4(v1 + 16, sub_26603559C, v0, v7);
}

void sub_26602906C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_266028CD8();
  v5 = sub_266039964();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_26602910C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266029124()
{
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_43_3(v3);
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_79_0(v5);
  *v6 = v7;
  v6[1] = sub_2660291D8;

  return sub_266003CE8(sub_2660356B0, v0);
}

uint64_t sub_2660291D8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

void sub_2660292F4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_266029360(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266029374()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_43_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585F0, &qword_26603C6B8);
  OUTLINED_FUNCTION_110();
  *v2 = v3;
  v2[1] = sub_26602945C;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822007B8]();
}

uint64_t sub_26602945C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_266029574()
{
  OUTLINED_FUNCTION_36_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058768, &qword_26603CC90);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_76_0(v3, aBlock[0]);
  v5(v4);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_123(v6);
  v8(v7);
  aBlock[4] = sub_266038464;
  v11 = v1;
  OUTLINED_FUNCTION_24_3();
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2660296D0;
  aBlock[3] = &block_descriptor_197;
  v9 = _Block_copy(aBlock);

  [v0 suggestedFriendsWithHandler_];
  _Block_release(v9);
}

uint64_t sub_2660296D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058750, &qword_26603CC78);
  v3 = sub_266039964();

  v2(v3);
}

uint64_t sub_266029750(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_266029764()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_43_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800585F8, &qword_26603C6C8);
  OUTLINED_FUNCTION_110();
  *v2 = v3;
  v2[1] = sub_26602984C;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v4);
}

uint64_t sub_26602984C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_26602994C()
{
  OUTLINED_FUNCTION_47_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058738, &qword_26603CC60);
  OUTLINED_FUNCTION_2_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &aBlock[-v6];
  v8 = sub_2660398D4();
  (*(v4 + 16))(v7, v1, v2);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v7, v2);
  v16 = sub_2660379D4;
  v17 = v10;
  OUTLINED_FUNCTION_24_3();
  v13 = 1107296256;
  v14 = sub_266029D0C;
  v15 = &block_descriptor_191;
  v11 = _Block_copy(aBlock);

  [v0 getFriendInvitationMailboxWithType:v8 completion:v11];
  _Block_release(v11);
}

void *sub_266029AF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_266035AF0(*(a1 + 16), 0);
  v4 = sub_2660382E8(&v6, v3 + 2, v2, a1);
  sub_26601DF74(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_266029B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_266034D28(0, v2, 0);
  v3 = v10;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_2660031D4(v4, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058750, &qword_26603CC78);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_266034D28((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

double sub_266029CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_26601BA28(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2660031D4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_266029D0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_266039884();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_266029DB8()
{
  OUTLINED_FUNCTION_1();
  v0[21] = v1;
  v0[22] = v2;
  OUTLINED_FUNCTION_142(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  v0[23] = v6;
  OUTLINED_FUNCTION_3_0(v6);
  v0[24] = v7;
  v0[25] = OUTLINED_FUNCTION_28_0();
  v8 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266029E6C()
{
  OUTLINED_FUNCTION_98();
  OUTLINED_FUNCTION_86();
  if (v0[19])
  {
    v1 = sub_2660398D4();
  }

  else
  {
    v1 = 0;
  }

  v11 = v1;
  v0[26] = v1;
  if (v0[21])
  {
    v2 = sub_2660398D4();
  }

  else
  {
    v2 = 0;
  }

  v0[27] = v2;
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v10 = v0[22];
  v0[2] = v0;
  v0[3] = sub_26602A040;
  swift_continuation_init();
  v0[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057E58, &qword_26603C6E0);
  sub_2660399B4();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26602A224;
  v0[13] = &block_descriptor_4;
  [v10 sendFriendInvitationWithPlayerID:v11 contactAssociationID:v2 completion:v0 + 10];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);
  OUTLINED_FUNCTION_34_2();

  return MEMORY[0x282200938](v7);
}

uint64_t sub_26602A040()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = *(v3 + 48);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26602A13C()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 208);

  OUTLINED_FUNCTION_7_3();

  return v2();
}

uint64_t sub_26602A1A4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v3();
}

void sub_26602A224(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    sub_26602A2B0(v3, v4);
  }

  else
  {

    sub_26602A2FC();
  }
}

uint64_t sub_26602A338()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_142(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  v0[21] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[22] = v5;
  v0[23] = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26602A4F8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26602A5F4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_7_3();

  return v1();
}

uint64_t sub_26602A654()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_11();

  return v2();
}

uint64_t sub_26602A6C8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_142(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  v0[21] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[22] = v5;
  v0[23] = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26602A888()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26602A984()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_142(v1, v2, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280058600, &unk_26603B9B0);
  v0[21] = v4;
  OUTLINED_FUNCTION_3_0(v4);
  v0[22] = v5;
  v0[23] = OUTLINED_FUNCTION_28_0();
  v6 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26602AB44(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602AB58()
{
  OUTLINED_FUNCTION_8();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_43_3(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058290, &qword_26603C6A0);
  OUTLINED_FUNCTION_110();
  *v2 = v3;
  v2[1] = sub_26602984C;
  OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2822008A0](v4);
}

void sub_26602AC40()
{
  OUTLINED_FUNCTION_36_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058730, &unk_26603C370);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_76_0(v3, aBlock[0]);
  v5(v4);
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_123(v6);
  v8(v7);
  aBlock[4] = sub_266037868;
  v12 = v1;
  OUTLINED_FUNCTION_24_3();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_59();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_185;
  v10 = _Block_copy(aBlock);

  [v0 getActiveFriendRequests_];
  _Block_release(v10);
}

uint64_t sub_26602AD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602ADA8()
{
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_32_2(v3);
  *(v4 + 32) = v2;
  *(v4 + 40) = v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102(v5);
  *v6 = v7;
  v6[1] = sub_26602AE5C;

  return sub_266003CE8(sub_266035794, v1);
}

uint64_t sub_26602AE5C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

uint64_t sub_26602AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602AF90()
{
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_32_2(v3);
  *(v4 + 32) = v2;
  *(v4 + 40) = v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102(v5);
  *v6 = v7;
  v6[1] = sub_26602B044;

  return sub_266003CE8(sub_266035844, v1);
}

uint64_t sub_26602B044()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

uint64_t sub_26602B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602B178()
{
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_32_2(v3);
  *(v4 + 32) = v2;
  *(v4 + 40) = v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102(v5);
  *v6 = v7;
  v6[1] = sub_26602B044;

  return sub_266003CE8(sub_2660358F0, v1);
}

uint64_t sub_26602B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602B244()
{
  OUTLINED_FUNCTION_8();
  v3 = OUTLINED_FUNCTION_165();
  OUTLINED_FUNCTION_32_2(v3);
  *(v4 + 32) = v2;
  *(v4 + 40) = v0;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_102(v5);
  *v6 = v7;
  v6[1] = sub_26602B044;

  return sub_266003CE8(sub_266035904, v1);
}

uint64_t sub_26602B2F8()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_83();

  return sub_266028F68(v3, v4, v5, v6);
}

uint64_t sub_26602B398()
{
  OUTLINED_FUNCTION_8();
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_2(v4);

  return sub_26602910C(v6, v2, v1);
}

uint64_t sub_26602B430()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_266029360(v5, v1);
}

uint64_t sub_26602B4B8()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_266029750(v5, v1);
}

uint64_t sub_26602B540()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_57_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_60_0();

  return sub_266029DB8();
}

uint64_t sub_26602B5F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);

  return sub_26602A338();
}

uint64_t sub_26602B684()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);

  return sub_26602A6C8();
}

uint64_t sub_26602B718()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);

  return sub_26602A984();
}

uint64_t sub_26602B7AC()
{
  OUTLINED_FUNCTION_1();
  v1 = *(v0 + 8);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_3(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_4_2(v3);

  return sub_26602AB44(v5, v1);
}

uint64_t sub_26602B834()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);
  OUTLINED_FUNCTION_83();

  return sub_26602AD90(v3, v4, v5, v6);
}

uint64_t sub_26602B8C8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);
  OUTLINED_FUNCTION_83();

  return sub_26602AF78(v3, v4, v5, v6);
}

uint64_t sub_26602B95C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);
  OUTLINED_FUNCTION_83();

  return sub_26602B160(v3, v4, v5, v6);
}

uint64_t sub_26602B9F0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_47_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_4_4(v1);
  OUTLINED_FUNCTION_83();

  return sub_26602B22C(v3, v4, v5, v6);
}

uint64_t sub_26602BA84()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v4 = *v0;
  v3 = v0[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_2(v6);
  v8 = OUTLINED_FUNCTION_152();

  return sub_266028468(v8, v9, v2, v4, v3);
}

uint64_t sub_26602BB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  a4[3] = &unk_2877B8DF0;
  a4[4] = sub_266007FF0();
  *a4 = a1;
  a4[1] = a2;

  return sub_2660021E4(a3, (a4 + 5));
}

uint64_t ShimFriendService.listFriends(player:after:)()
{
  OUTLINED_FUNCTION_1();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280057F70, &unk_26603B960);
  v1[6] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_28_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058120, &unk_26603C2D0);
  OUTLINED_FUNCTION_16(v7);
  v1[9] = OUTLINED_FUNCTION_28_0();
  v8 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26602BC8C()
{
  OUTLINED_FUNCTION_8();
  sub_266028160();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_26602BD84;

  return sub_265FFF2B8();
}

uint64_t sub_26602BD84()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_111();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_26602BEBC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  OUTLINED_FUNCTION_18_1(v1);
  OUTLINED_FUNCTION_3_1();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_26602BFD0;
  v6 = OUTLINED_FUNCTION_58(v0[11]);

  return (v8)(v6, 0, v2, v3);
}

uint64_t sub_26602BFD0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 104) = v4;
  *(v2 + 112) = v0;

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_26602C0D0()
{
  v1 = sub_266003570(v0[13]);
  if (v1)
  {
    v2 = v1;
    v24 = MEMORY[0x277D84F90];
    sub_2660131DC(0, v1 & ~(v1 >> 63), 0);
    if ((v2 & 0x8000000000000000) == 0)
    {
      v3 = 0;
      v4 = v0[7];
      v5 = v0[13];
      v6 = v0[14];
      v7 = v5 & 0xC000000000000001;
      v22 = v5 + 32;
      v23 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v7)
        {
          v9 = MEMORY[0x266777030](v3, v0[13]);
        }

        else
        {
          if (v3 >= *(v23 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v22 + 8 * v3);
        }

        v10 = v9;
        sub_266000BD4(v0[8]);
        if (v6)
        {
          v15 = v0[11];

          OUTLINED_FUNCTION_14_3();
          goto LABEL_16;
        }

        v12 = *(v24 + 16);
        v11 = *(v24 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = OUTLINED_FUNCTION_38_1(v11);
          sub_2660131DC(v14, v12 + 1, 1);
        }

        *(v24 + 16) = v12 + 1;
        OUTLINED_FUNCTION_32_0();
        (*(v4 + 32))(v24 + v13 + *(v4 + 72) * v12);
        v6 = 0;
        ++v3;
        if (v8 == v2)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    v16 = v0[11];
    sub_2660395F4();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    sub_26603774C(&qword_280058188, &unk_280057F70, &unk_26603B960);
    sub_26603774C(&qword_280058190, &unk_280057F70, &unk_26603B960);
    sub_2660395E4();

    OUTLINED_FUNCTION_7_3();
LABEL_16:

    v21();
  }
}

uint64_t sub_26602C37C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ShimFriendService.remove(friends:of:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602C400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_14_4();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_69_0(v11);
  OUTLINED_FUNCTION_3_1();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_79_0(v12);
  *v13 = v14;
  v13[1] = sub_26602C524;
  OUTLINED_FUNCTION_58(*(v10 + 24));
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_21();

  return v21(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_26602C524()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

uint64_t sub_26602C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(*(v10 + 32), *(*(v10 + 32) + 24));
  sub_266028CD8();
  *(v10 + 40) = sub_265FFFD3C();
  OUTLINED_FUNCTION_3_1();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_79_0(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_2(v12);
  OUTLINED_FUNCTION_21();

  return v17(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_26602C798()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_7_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_11();

    return v10();
  }
}

uint64_t sub_26602C8B4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_11();

  return v1();
}

uint64_t ShimFriendService.listFriendSuggestions(player:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_26602C924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_14_4();
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_69_0(v11);
  OUTLINED_FUNCTION_3_1();
  v12 = swift_task_alloc();
  *(v10 + 48) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058618, &qword_26603C760);
  *v12 = v10;
  v12[1] = sub_266015490;
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_21();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_26602CA64()
{
  OUTLINED_FUNCTION_1();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280057DB8, &unk_26603B760);
  v0[4] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_28_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058620, &qword_26603C770);
  v0[7] = v5;
  OUTLINED_FUNCTION_3_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_28_0();
  v7 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26602CB6C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_18_1(*(v0 + 24));
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_4_2(v1);
  OUTLINED_FUNCTION_145();

  return v2();
}

uint64_t sub_26602CC6C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void *sub_26602CD54(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v2 + 64);
    v17 = MEMORY[0x277D84F90];
    v6 = OUTLINED_FUNCTION_118();
    result = sub_266034D48(v6, v4, 0);
    v8 = 0;
    v9 = v17;
    while (v8 < *(v3 + 16))
    {

      sub_26602CF90();
      sub_2660395B4();

      v10 = OUTLINED_FUNCTION_53();
      v11(v10);
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        v15 = OUTLINED_FUNCTION_38_1(v12);
        sub_266034D48(v15, v13 + 1, 1);
      }

      ++v8;
      *(v17 + 16) = v13 + 1;
      OUTLINED_FUNCTION_32_0();
      result = (*(v5 + 32))(v17 + v14 + *(v5 + 72) * v13);
      if (v4 == v8)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_9:
    **(v2 + 16) = v9;

    OUTLINED_FUNCTION_7_3();

    return v16();
  }

  return result;
}

uint64_t sub_26602CF90()
{
  v1 = *v0;
  sub_266029CA8(0x49746361746E6F63, 0xE900000000000044, *v0, v10);
  sub_2660377E4();
  if (v9)
  {
    if (swift_dynamicCast())
    {
      sub_266029CA8(1684627811, 0xE400000000000000, v1, &v8);
      sub_2660377E4();
      if (v7[3])
      {
        if (!swift_dynamicCast())
        {

          sub_266039224();
          OUTLINED_FUNCTION_0_3();
          sub_266037708(v4, v5);
          OUTLINED_FUNCTION_21_1();
          swift_allocError();
          sub_266039214();
          swift_willThrow();
          goto LABEL_11;
        }
      }

      else
      {
        sub_2660078E8(v7, &unk_280057F50, &qword_26603B9C0);
      }

      OUTLINED_FUNCTION_151();
      sub_2660395C4();
LABEL_11:
      sub_2660078E8(&v8, &unk_280057F50, &qword_26603B9C0);
      return sub_2660078E8(v10, &unk_280057F50, &qword_26603B9C0);
    }
  }

  else
  {
    sub_2660078E8(&v8, &unk_280057F50, &qword_26603B9C0);
  }

  sub_266039224();
  OUTLINED_FUNCTION_0_3();
  sub_266037708(v2, v3);
  OUTLINED_FUNCTION_21_1();
  swift_allocError();
  sub_266039214();
  swift_willThrow();
  return sub_2660078E8(v10, &unk_280057F50, &qword_26603B9C0);
}

uint64_t ShimFriendService.describeFriendSuggestions(friendSuggestions:)()
{
  OUTLINED_FUNCTION_1();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058620, &qword_26603C770);
  v1[4] = v3;
  OUTLINED_FUNCTION_3_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43_0();
  v1[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058628, &qword_26603C778);
  OUTLINED_FUNCTION_3_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_43_0();
  v1[10] = swift_task_alloc();
  v7 = sub_266039314();
  v1[11] = v7;
  OUTLINED_FUNCTION_3_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_43_0();
  v1[14] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26602D360()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_18_1(*(v0 + 24));
  OUTLINED_FUNCTION_3_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_122(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_4_2(v2);
  OUTLINED_FUNCTION_145();

  return v4();
}

uint64_t sub_26602D45C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_25_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 128) = v3;

  v4 = OUTLINED_FUNCTION_41_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26602D544()
{
  v1 = 0;
  v2 = v0[16];
  v47 = v0[5];
  v49 = (v0[12] + 16);
  v50 = (v47 + 8);
  v48 = v0[12];
  v51 = MEMORY[0x277D84F98];
  v3 = *(v2 + 16);
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
LABEL_29:
      v10 = v0[4];

      return MEMORY[0x2821FE290](v10);
    }

    v4 = v0[10];

    sub_26602DAD0(v4);
    v5 = v0[14];
    v45 = v0[13];
    v6 = v0[11];
    v7 = v0[7];
    __swift_storeEnumTagSinglePayload(v0[10], 0, 1, v6);
    v8 = OUTLINED_FUNCTION_53();
    v44 = v9;
    (v9)(v8);
    sub_2660392F4();
    (*v49)(v45, v5, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_266035D68(v7);
    if (__OFADD__(v51[2], (v11 & 1) == 0))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return MEMORY[0x2821FE290](v10);
    }

    v12 = v10;
    v46 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280058630, &qword_26603C780);
    if (sub_266039BA4())
    {
      v13 = sub_266035D68(v0[7]);
      v15 = v46;
      if ((v46 & 1) != (v14 & 1))
      {
        goto LABEL_29;
      }

      v12 = v13;
    }

    else
    {
      v15 = v46;
    }

    v16 = v0[13];
    v17 = v0[11];
    if (v15)
    {
      (*(v48 + 40))(v51[7] + *(v48 + 72) * v12, v0[13], v0[11]);
    }

    else
    {
      v18 = v0[7];
      v19 = v0[4];
      v51[(v12 >> 6) + 8] |= 1 << v12;
      (*(v47 + 16))(v51[6] + *(v47 + 72) * v12, v18, v19);
      v10 = v44(v51[7] + *(v48 + 72) * v12, v16, v17);
      v20 = v51[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_33;
      }

      v51[2] = v22;
    }

    ++v1;
    (*v50)(v0[7], v0[4]);

    v23 = OUTLINED_FUNCTION_53();
    v24(v23);
  }

  v25 = v0[2];

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v0[2];
    v52 = MEMORY[0x277D84F90];
    sub_266034D88(0, v26, 0);
    v28 = v51;
    v29 = v52;
    OUTLINED_FUNCTION_32_0();
    v31 = v27 + v30;
    v32 = *(v47 + 72);
    v33 = *(v47 + 16);
    do
    {
      v33(v0[6], v31, v0[4]);
      if (v28[2] && (v34 = sub_266035D68(v0[6]), (v35 & 1) != 0))
      {
        (*(v48 + 16))(v0[9], v28[7] + *(v48 + 72) * v34, v0[11]);
        v36 = 0;
      }

      else
      {
        v36 = 1;
      }

      v37 = v0[11];
      v38 = v0[9];
      (*v50)(v0[6], v0[4]);
      __swift_storeEnumTagSinglePayload(v38, v36, 1, v37);
      v40 = *(v52 + 16);
      v39 = *(v52 + 24);
      if (v40 >= v39 >> 1)
      {
        v41 = OUTLINED_FUNCTION_38_1(v39);
        sub_266034D88(v41, v40 + 1, 1);
      }

      *(v52 + 16) = v40 + 1;
      OUTLINED_FUNCTION_32_0();
      sub_266037310();
      v31 += v32;
      --v26;
      v28 = v51;
    }

    while (v26);
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  v42 = v0[1];

  return v42(v29);
}