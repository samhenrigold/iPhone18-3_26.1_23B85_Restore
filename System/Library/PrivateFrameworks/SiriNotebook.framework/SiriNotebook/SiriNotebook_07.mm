uint64_t sub_2681989AC@<X0>(void *a1@<X0>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31[0] = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E430, &qword_2683D6CB8);
  MEMORY[0x28223BE20](v15 - 8);
  sub_2683CE288();
  v16 = a1;
  Entity<A>.init(_:)(v16, v17, v18, v19, v20, v21, v22, v23, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11]);
  type metadata accessor for Common.EventTrigger(0);
  sub_2683CE278();
  if (sub_2683CD568())
  {
    sub_26812C2A8(a6, v11, &qword_28024DD70, &unk_2683D4E80);
    sub_26819A7D0();
    sub_2683CF868();
    sub_26812C310(a6, &qword_28024DD70, &unk_2683D4E80);

    v24 = sub_2683CF8B8();
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
    if (!__swift_getEnumTagSinglePayload(v14, 1, v24))
    {
      v29 = v31[0];
      (*(*(v24 - 8) + 32))(v31[0], v14, v24);
      v27 = v29;
      v28 = 0;
      v26 = v24;
      return __swift_storeEnumTagSinglePayload(v27, v28, 1, v26);
    }

    sub_26812C310(v14, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_26812C310(a6, &qword_28024DD70, &unk_2683D4E80);
  }

  v26 = sub_2683CF8B8();
  v27 = v31[0];
  v28 = 1;
  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v26);
}

uint64_t sub_268198CE0()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[4] = v5;
  v1[5] = v6;
  v1[2] = v7;
  v1[3] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v9);
  v1[10] = OUTLINED_FUNCTION_15_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v10);
  v1[11] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v11);
  v1[12] = OUTLINED_FUNCTION_15_1();
  v12 = sub_2683CF168();
  v1[13] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[14] = v13;
  v1[15] = OUTLINED_FUNCTION_15_1();
  v14 = sub_2683CC598();
  v1[16] = v14;
  OUTLINED_FUNCTION_3_1(v14);
  v1[17] = v15;
  v1[18] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_268198E68);
}

uint64_t sub_268198E68()
{
  v1 = sub_2681DF5DC(*(v0 + 24));
  *(v0 + 152) = v1;
  v2 = v1;
  type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  v3 = sub_268163274(v2);
  *(v0 + 160) = v3;
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_268198FC0;
  v5 = *(v0 + 144);

  return sub_26815F510(v5, v3);
}

uint64_t sub_268198FC0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v3 + 176) = v0;

  if (v0)
  {
    v6 = sub_26819943C;
  }

  else
  {

    v6 = sub_2681990CC;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681990CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_12_10();
  v20 = v18[12];
  v19 = v18[13];
  sub_2681A1324(v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v19) == 1)
  {
    v21 = v18[12];
    v22 = v18[13];
    sub_2683CFB38();
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      sub_26812C310(v18[12], &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  else
  {
    (*(v18[14] + 32))(v18[15], v18[12], v18[13]);
  }

  v23 = v18[14];
  v53 = v18[13];
  v55 = v18[15];
  v24 = v18[10];
  v48 = v18[11];
  v51 = v18[2];

  sub_2683CF818();
  v25 = sub_2683CF828();
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
  sub_2681978FC(v24, v48);

  sub_26812C310(v24, &qword_28024DD70, &unk_2683D4E80);
  (*(v23 + 16))(v51, v55, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E420, &unk_2683F6620);
  v26 = sub_2683CC288();
  OUTLINED_FUNCTION_3_1(v26);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2683D1EC0;
  v28 = sub_2683CF158();
  v47 = v29;
  v49 = v28;
  if (qword_28024CBB8 != -1)
  {
    swift_once();
  }

  v30 = v18[18];
  v31 = v18[17];
  v46 = v18[16];
  v32 = v18[14];
  v33 = v18[15];
  v34 = v18[13];
  v52 = v18[19];
  v54 = v18[12];
  v50 = v18[11];
  v56 = v18[10];
  v35 = v18[2];
  sub_2683CCFA8();
  sub_2683CC258();
  (*(v32 + 8))(v33, v34);
  (*(v31 + 8))(v30, v46);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E428, &qword_2683D6CB0);
  *(v35 + v36[7]) = v52;
  *(v35 + v36[8]) = v27;
  sub_26819A760(v50, v35 + v36[9]);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_11_15();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, v46, v47, v49, v50, v52, v54, v56, a16, a17, a18);
}

uint64_t sub_26819943C()
{

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681994E8()
{
  OUTLINED_FUNCTION_14();
  v1[242] = v0;
  v1[241] = v2;
  v1[235] = v3;
  v1[229] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v5);
  v1[243] = OUTLINED_FUNCTION_15_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E440, &qword_2683D6CD0);
  v1[244] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[245] = v7;
  v1[246] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CF168();
  v1[247] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[248] = v9;
  v1[249] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CC598();
  v1[250] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[251] = v11;
  v1[252] = swift_task_alloc();
  v1[253] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268199684);
}

uint64_t sub_268199684()
{
  OUTLINED_FUNCTION_12_10();
  v1 = *(v0 + 1928);
  *(v0 + 2032) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E448, &qword_2683D6CD8);
  v2 = sub_2683CC878();
  *(v0 + 2040) = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = sub_268129C00(v3, v4);
  *(v0 + 2048) = v5;
  sub_26819A814(v1, v0 + 1336);
  v6 = swift_allocObject();
  *(v0 + 2056) = v6;
  v6[2] = v2;
  v6[3] = v5;
  memcpy(v6 + 4, (v0 + 1336), 0x88uLL);

  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E450, &qword_2683D6CF0);
  swift_asyncLet_begin();
  v8 = sub_2683CC878();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v0 + 1984);
    v11 = *(v0 + 1960);
    v30 = *(v0 + 1952);
    v31 = MEMORY[0x277D84F90];
    sub_2683906D0(0, v9, 0);
    v12 = v31;
    v13 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v29 = *(v11 + 72);
    do
    {
      v14 = *(v0 + 1992);
      v15 = *(v0 + 1976);
      v16 = *(v0 + 1968);
      sub_26812C2A8(v13, v16, &qword_28024E440, &qword_2683D6CD0);
      (*(v10 + 16))(v14, v16 + *(v30 + 28), v15);
      sub_26812C310(v16, &qword_28024E440, &qword_2683D6CD0);
      v18 = *(v31 + 16);
      v17 = *(v31 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2683906D0(v17 > 1, v18 + 1, 1);
      }

      v19 = *(v0 + 1992);
      v20 = *(v0 + 1976);
      *(v31 + 16) = v18 + 1;
      (*(v10 + 32))(v31 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
      v13 += v29;
      --v9;
    }

    while (v9);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v21 = *(v0 + 1936);
  *(v0 + 2064) = *(v21 + 2);
  *(v0 + 2072) = *(v21 + 3);
  *(v0 + 1752) = *(v21 + 40);
  v22 = swift_allocObject();
  *(v0 + 2080) = v22;
  v23 = v21[2];
  v24 = *(v21 + 6);
  v25 = *v21;
  *(v22 + 32) = v21[1];
  *(v22 + 48) = v23;
  *(v22 + 16) = v25;
  *(v22 + 64) = v24;
  *(v22 + 72) = v12;

  sub_26819A9C4(v0 + 1752, v0 + 1768);
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x282200930](v26);
}

uint64_t sub_2681999F8()
{
  *(v1 + 2088) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 656);
  }

  else
  {
    return OUTLINED_FUNCTION_1_1(sub_268199A34);
  }
}

uint64_t sub_268199A34()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 1928);
  (*(*(v0 + 2008) + 16))(*(v0 + 2016), *(v0 + 2024), *(v0 + 2000));
  sub_26813CA00(v1, v0 + 1512);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  *(v0 + 2112) = sub_2683CC0A8() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
  inited = swift_initStackObject();
  *(v0 + 2096) = inited;
  *(inited + 16) = xmmword_2683D1EC0;

  return MEMORY[0x282200930](v0 + 16);
}

uint64_t sub_268199B20()
{
  OUTLINED_FUNCTION_7();
  v1[263] = v0;
  if (v0)
  {
    v2 = v1[252];
    v3 = v1[251];
    v4 = v1[250];
    __swift_destroy_boxed_opaque_existential_0(v1 + 189);
    (*(v3 + 8))(v2, v4);
    v5 = sub_26819A010;
  }

  else
  {
    v5 = sub_268199BC8;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_268199BC8()
{
  OUTLINED_FUNCTION_12_10();
  v1 = *(v0 + 1784);
  *(*(v0 + 2096) + 32) = v1;
  v20 = MEMORY[0x277D84F90];
  v2 = v1;
  for (i = 0; (i & 1) == 0; i = 1)
  {
    v4 = *(*(v0 + 2096) + 32);
    if (!v4)
    {
      break;
    }

    v5 = v4;
    MEMORY[0x26D616770]();
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2683CFCD8();
    }

    sub_2683CFD08();
  }

  v6 = *(v0 + 2072);
  v7 = *(v0 + 2064);
  v17 = *(v0 + 2016);
  v18 = *(v0 + 2008);
  v19 = *(v0 + 2000);
  v8 = *(v0 + 1944);
  v9 = *(v0 + 1832);
  swift_setDeallocating();
  sub_2681F5544();
  v10 = sub_2683CC878();
  sub_2681979F4(v10, v7, v6, v8);

  v11 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v11);
  v12 = sub_2683CCC98();
  *(v0 + 1672) = 0u;
  *(v0 + 1688) = 0u;
  *(v0 + 1704) = 0;
  v13 = MEMORY[0x277D5C1D8];
  v9[3] = v12;
  v9[4] = v13;
  __swift_allocate_boxed_opaque_existential_0(v9);
  sub_2683CC348();

  sub_26812C310(v0 + 1672, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v8, &qword_28024D400, &qword_2683D2460);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1512));
  (*(v18 + 8))(v17, v19);
  OUTLINED_FUNCTION_6_14();
  OUTLINED_FUNCTION_11_15();

  return MEMORY[0x282200920](v14);
}

uint64_t sub_268199E3C()
{
  v1 = *(v0 + 2048);

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268199F58()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26819A010()
{
  OUTLINED_FUNCTION_14();
  *(*(v0 + 2096) + 16) = 0;
  swift_setDeallocating();
  sub_2681F5544();
  v1 = OUTLINED_FUNCTION_6_14();

  return MEMORY[0x282200920](v1);
}

uint64_t sub_26819A0C4()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_26819A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_26819A244;

  return sub_2681A487C(0, a4, a2, a3);
}

uint64_t sub_26819A244()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = v3;

    return MEMORY[0x2822009F8](sub_26819A380);
  }
}

uint64_t sub_26819A380()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_40();
  return v1();
}

uint64_t sub_26819A3B0(uint64_t a1, int **a2, uint64_t a3)
{
  v8 = (*a2 + **a2);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_268133EC8;

  return v8(a1, a3);
}

uint64_t sub_26819A4B4()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_26819A580;

  return sub_2681994E8();
}

uint64_t sub_26819A580()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26819A660()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_26819AA20;

  return sub_268198CE0();
}

uint64_t sub_26819A760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26819A7D0()
{
  result = qword_28024E438;
  if (!qword_28024E438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024E438);
  }

  return result;
}

uint64_t sub_26819A870()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2681342AC;

  return sub_26819A17C(v3, v4, v5, v0 + 32);
}

uint64_t sub_26819A91C()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_268133EC8;

  return sub_26819A3B0(v3, (v0 + 16), v4);
}

uint64_t OUTLINED_FUNCTION_3_13()
{
}

uint64_t type metadata accessor for SearchForNotebookItemsCATPatternsExecutor(uint64_t a1)
{
  result = qword_28024E458;
  if (!qword_28024E458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26819AB2C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819AB40()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(42);

  return v6(v5);
}

uint64_t sub_26819AC3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819AC50()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(40);

  return v6(v5);
}

uint64_t sub_26819AD4C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819AD60()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(43);

  return v6(v5);
}

uint64_t sub_26819AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

uint64_t Snippet.ReminderList.init(identifier:title:groupName:color:badge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *(a7 + 16);
  v11 = *(a7 + 24);
  v12 = *a8;
  v13 = a8[1];
  v14 = *(a8 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = *a7;
  *(a9 + 64) = v10;
  *(a9 + 72) = v11;
  v15 = OUTLINED_FUNCTION_8_12();
  result = sub_268151B3C(v15, v16, v17);
  *(a9 + 80) = v12;
  *(a9 + 88) = v13;
  *(a9 + 96) = v14;
  return result;
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static Snippet.ReminderList.ListBadge.emblem(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t Snippet.ReminderList.identifier.setter()
{
  OUTLINED_FUNCTION_13_3();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippet.ReminderList.title.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippet.ReminderList.groupName.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

__n128 Snippet.ReminderList.color.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[4].n128_u64[0];
  v3 = v1[4].n128_u8[8];
  result = v1[3];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

__n128 Snippet.ReminderList.color.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v2;
  v1[4].n128_u8[8] = v3;
  return result;
}

uint64_t Snippet.ReminderList.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 96);
  *(a1 + 16) = v4;
  return sub_268151B1C(v2, v3, v4);
}

uint64_t Snippet.ReminderList.badge.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_268151B3C(*(v1 + 80), *(v1 + 88), *(v1 + 96));
  *(v1 + 80) = v2;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  return result;
}

double static Snippet.ReminderList.ListBadge.default.getter@<D0>(uint64_t a1@<X8>)
{
  result = 1.81776662e-306;
  *a1 = xmmword_2683D6DC0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t static Snippet.ReminderList.ListBadge.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v6 = *a1;
      v7 = v2;
      if (v3 != v5 || v2 != v4)
      {
        v28 = sub_2683D0598();
        v29 = OUTLINED_FUNCTION_69();
        v31 = OUTLINED_FUNCTION_1_18(v29, v30);
        v33 = OUTLINED_FUNCTION_1_18(v31, v32);
        sub_26814304C(v33, v34);
        v35 = OUTLINED_FUNCTION_69();
        sub_26814304C(v35, v36);
        return v28 & 1;
      }

      goto LABEL_16;
    }

LABEL_10:
    v19 = OUTLINED_FUNCTION_69();
    v21 = OUTLINED_FUNCTION_1_18(v19, v20);
    v23 = OUTLINED_FUNCTION_1_18(v21, v22);
    sub_26814304C(v23, v24);
    v25 = OUTLINED_FUNCTION_69();
    sub_26814304C(v25, v26);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = *a1;
  v7 = v2;
  if (v3 == v5 && v2 == v4)
  {
LABEL_16:
    v37 = OUTLINED_FUNCTION_1_18(v6, v7);
    v39 = OUTLINED_FUNCTION_1_18(v37, v38);
    sub_26814304C(v39, v40);
    v41 = OUTLINED_FUNCTION_41_0();
    sub_26814304C(v41, v42);
    return 1;
  }

  v9 = sub_2683D0598();
  v10 = OUTLINED_FUNCTION_69();
  v12 = OUTLINED_FUNCTION_1_18(v10, v11);
  v14 = OUTLINED_FUNCTION_1_18(v12, v13);
  sub_26814304C(v14, v15);
  v16 = OUTLINED_FUNCTION_69();
  sub_26814304C(v16, v17);
  result = 0;
  if (v9)
  {
    return 1;
  }

  return result;
}

uint64_t static Snippet.ReminderList.ListBadgeEmblem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2683D0598();
  }
}

uint64_t sub_26819B4B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D656C626D65 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26819B570(char a1)
{
  if (a1)
  {
    return 0x6D656C626D65;
  }

  else
  {
    return 0x696A6F6D65;
  }
}

uint64_t sub_26819B5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819B4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26819B5D0(uint64_t a1)
{
  v2 = sub_26819BA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819B60C(uint64_t a1)
{
  v2 = sub_26819BA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26819B648(uint64_t a1)
{
  v2 = sub_26819BA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819B684(uint64_t a1)
{
  v2 = sub_26819BA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26819B6C0(uint64_t a1)
{
  v2 = sub_26819BAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819B6FC(uint64_t a1)
{
  v2 = sub_26819BAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderList.ListBadge.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E468, &qword_2683D6DD0);
  OUTLINED_FUNCTION_0_3();
  v27 = v4;
  v28 = v3;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v26 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E470, &qword_2683D6DD8);
  OUTLINED_FUNCTION_0_3();
  v24 = v8;
  v25 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E478, &qword_2683D6DE0);
  OUTLINED_FUNCTION_0_3();
  v14 = v13;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  v18 = v0[1];
  v29 = *v0;
  v30 = v18;
  v19 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26819BA00();
  sub_2683D0718();
  if (v19)
  {
    LOBYTE(v31) = 1;
    sub_26819BA54();
    v20 = v26;
    sub_2683D04C8();
    v31 = v29;
    v32 = v30;
    sub_26819BAA8();
    v21 = v28;
    sub_2683D0548();
    (*(v27 + 8))(v20, v21);
  }

  else
  {
    LOBYTE(v31) = 0;
    sub_26819BAFC();
    sub_2683D04C8();
    v22 = v25;
    sub_2683D0518();
    (*(v24 + 8))(v11, v22);
  }

  (*(v14 + 8))(v17, v12);
  OUTLINED_FUNCTION_62();
}

unint64_t sub_26819BA00()
{
  result = qword_28024E480;
  if (!qword_28024E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E480);
  }

  return result;
}

unint64_t sub_26819BA54()
{
  result = qword_28024E488;
  if (!qword_28024E488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E488);
  }

  return result;
}

unint64_t sub_26819BAA8()
{
  result = qword_28024E490;
  if (!qword_28024E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E490);
  }

  return result;
}

unint64_t sub_26819BAFC()
{
  result = qword_28024E498;
  if (!qword_28024E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E498);
  }

  return result;
}

uint64_t Snippet.ReminderList.ListBadge.hash(into:)(uint64_t a1)
{
  MEMORY[0x26D617190](*(v1 + 16));

  return sub_2683CFB48();
}

uint64_t Snippet.ReminderList.ListBadge.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_79(a1);
  MEMORY[0x26D617190](v2);
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.ReminderList.ListBadge.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v50 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4A0, &qword_2683D6DE8);
  OUTLINED_FUNCTION_0_3();
  v47 = v6;
  v48 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4A8, &qword_2683D6DF0);
  OUTLINED_FUNCTION_0_3();
  v46 = v11;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4B0, &unk_2683D6DF8);
  OUTLINED_FUNCTION_0_3();
  v49 = v16;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819BA00();
  sub_2683D06F8();
  if (v0)
  {
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v14;
  v53 = v3;
  v18 = v50;
  sub_2683D04B8();
  sub_268151B7C();
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v27 = sub_2683D01D8();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0);
    *v29 = &type metadata for Snippet.ReminderList.ListBadge;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v49 + 8))(v1, v15);
    v3 = v53;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v3);
LABEL_9:
    OUTLINED_FUNCTION_62();
    return;
  }

  v43 = 0;
  if (v20 < (v21 >> 1))
  {
    v22 = *(v19 + v20);
    sub_268151B68();
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      v42 = v22;
      if (v22)
      {
        LOBYTE(v51) = 1;
        sub_26819BA54();
        OUTLINED_FUNCTION_15_12(&_s14descr2878F8F29V12ReminderListV9ListBadgeO16EmblemCodingKeysON);
        sub_26819D608();
        v31 = v48;
        sub_2683D04A8();
        v43 = 0;
        swift_unknownObjectRelease();
        (*(v47 + 8))(v9, v31);
        v34 = OUTLINED_FUNCTION_4_15();
        v35(v34);
        v36 = v51;
        v37 = v52;
      }

      else
      {
        LOBYTE(v51) = 0;
        sub_26819BAFC();
        v30 = v45;
        OUTLINED_FUNCTION_15_12(&_s14descr2878F8F29V12ReminderListV9ListBadgeO15EmojiCodingKeysON);
        v32 = v44;
        v33 = sub_2683D0478();
        v43 = 0;
        v36 = v33;
        v37 = v38;
        swift_unknownObjectRelease();
        (*(v46 + 8))(v30, v32);
        v39 = OUTLINED_FUNCTION_4_15();
        v40(v39);
      }

      *v18 = v36;
      *(v18 + 8) = v37;
      *(v18 + 16) = v42;
      __swift_destroy_boxed_opaque_existential_0(v53);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26819C154(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2683D0698();
  MEMORY[0x26D617190](v2);
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.rawValue.setter()
{
  OUTLINED_FUNCTION_13_3();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_26819C238(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2683D0598();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26819C2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819C238(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26819C2F8(uint64_t a1)
{
  v2 = sub_26819D65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819C334(uint64_t a1)
{
  v2 = sub_26819D65C();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderList.ListBadgeEmblem.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4C0, &qword_2683D6E08);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48_1();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_26819D65C();
  sub_2683D0718();
  sub_2683D0518();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.ReminderList.ListBadgeEmblem.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  sub_2683CFB48();
  return sub_2683D06D8();
}

void Snippet.ReminderList.ListBadgeEmblem.init(from:)()
{
  OUTLINED_FUNCTION_63_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4D0, &qword_2683D6E10);
  OUTLINED_FUNCTION_0_3();
  v8 = v7;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_48_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819D65C();
  sub_2683D06F8();
  if (!v0)
  {
    v10 = sub_2683D0478();
    v12 = v11;
    (*(v8 + 8))(v1, v6);
    *v5 = v10;
    v5[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(v3);
  OUTLINED_FUNCTION_62();
}

uint64_t sub_26819C654(uint64_t a1)
{
  sub_2683D0698();
  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.ReminderList.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[4];
  v5 = v1[5];
  v20 = v1[6];
  v21 = *v1;
  v18 = v1[8];
  v19 = v1[7];
  v17 = *(v1 + 72);
  v7 = v1[10];
  v6 = v1[11];
  v8 = *(v1 + 96);

  v9 = sub_2683CFAC8();
  v11 = v10;
  if (v5)
  {
    v4 = sub_2683CFAC8();
  }

  else
  {
    v12 = 0;
  }

  *a1 = v21;
  *(a1 + 8) = v3;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v4;
  *(a1 + 40) = v12;
  *(a1 + 48) = v20;
  *(a1 + 56) = v19;
  *(a1 + 64) = v18;
  *(a1 + 72) = v17;
  sub_268151B1C(v7, v6, v8);
  v13 = OUTLINED_FUNCTION_8_12();
  result = sub_268151B3C(v13, v14, v15);
  *(a1 + 80) = v7;
  *(a1 + 88) = v6;
  *(a1 + 96) = v8;
  return result;
}

BOOL static Snippet.ReminderList.== infix(_:_:)(__n128 *a1, __n128 *a2)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = a1[2].n128_u64[0];
  v5 = a1[2].n128_u64[1];
  v6 = a1[4].n128_u8[8];
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u64[1];
  v9 = a2[2].n128_u64[0];
  v10 = a2[2].n128_u64[1];
  v11 = a2[4].n128_u64[0];
  v12 = a2[4].n128_u8[8];
  if (a1->n128_u64[1])
  {
    if (!a2->n128_u64[1])
    {
      return 0;
    }

    OUTLINED_FUNCTION_17_8();
    if (*v18 != *v19 || v13 != v14)
    {
      v62 = v17;
      v65 = v16;
      v57 = v9;
      v21 = v4;
      v22 = v6;
      v23 = v12;
      v24 = v15;
      v25 = sub_2683D0598();
      v17 = v62;
      v16 = v65;
      v15 = v24;
      v12 = v23;
      v6 = v22;
      v4 = v21;
      v9 = v57;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_17_8();
    if (v26)
    {
      return 0;
    }
  }

  if (v2 != v7 || v3 != v8)
  {
    OUTLINED_FUNCTION_9_0();
    v63 = v29;
    v66 = v28;
    v31 = v30;
    v32 = sub_2683D0598();
    v17 = v63;
    v16 = v66;
    v15 = v31;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v10)
    {
      return 0;
    }

    if (v4 != v9 || v5 != v10)
    {
      v64 = v17;
      v67 = v16;
      v34 = v15;
      v35 = sub_2683D0598();
      v17 = v64;
      v16 = v67;
      v15 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }
  }

  else
  {
    v71 = v16;
    v72 = v15;
    v73 = v6;
    if (v12 == 3)
    {
      return 0;
    }

    v68 = v17;
    v69 = v11;
    v70 = v12;
    if (!static Snippet.Color.== infix(_:_:)(&v71, &v68))
    {
      return 0;
    }
  }

  if (v60 != 255)
  {
    v71 = v61;
    LOBYTE(v72) = v60;
    if (v58 != 255)
    {
      v68 = v59;
      LOBYTE(v69) = v58 & 1;
      sub_268151B1C(v61, *(&v61 + 1), v60);
      sub_268151B1C(v59, *(&v59 + 1), v58);
      v36 = OUTLINED_FUNCTION_69();
      sub_268151B1C(v36, v37, v60);
      v38 = static Snippet.ReminderList.ListBadge.== infix(_:_:)(&v71, &v68);
      sub_26814304C(v59, *(&v59 + 1));
      v39 = OUTLINED_FUNCTION_69();
      sub_26814304C(v39, v40);
      v41 = OUTLINED_FUNCTION_69();
      sub_268151B3C(v41, v42, v60);
      return (v38 & 1) != 0;
    }

    v45 = -1;
    sub_268151B1C(v61, *(&v61 + 1), v60);
    v46 = *(&v59 + 1);
    v47 = v59;
    sub_268151B1C(v59, *(&v59 + 1), 255);
    v48 = OUTLINED_FUNCTION_41_0();
    sub_268151B1C(v48, v49, v60);
    v50 = OUTLINED_FUNCTION_41_0();
    sub_26814304C(v50, v51);
LABEL_36:
    v52 = OUTLINED_FUNCTION_41_0();
    sub_268151B3C(v52, v53, v60);
    sub_268151B3C(v47, v46, v45);
    return 0;
  }

  v43 = OUTLINED_FUNCTION_41_0();
  sub_268151B1C(v43, v44, 255);
  v45 = v58;
  if (v58 != 255)
  {
    v46 = *(&v59 + 1);
    v47 = v59;
    sub_268151B1C(v59, *(&v59 + 1), v58);
    goto LABEL_36;
  }

  sub_268151B1C(v59, *(&v59 + 1), 255);
  v55 = OUTLINED_FUNCTION_41_0();
  sub_268151B3C(v55, v56, 255);
  return 1;
}

uint64_t sub_26819CAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_2683D0598();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26819CC54(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = 0x726F6C6F63;
      break;
    case 4:
      result = 0x6567646162;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26819CCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819CAA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26819CD1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26819CC4C();
  *a1 = result;
  return result;
}

uint64_t sub_26819CD44(uint64_t a1)
{
  v2 = sub_26819D6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819CD80(uint64_t a1)
{
  v2 = sub_26819D6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.ReminderList.encode(to:)()
{
  OUTLINED_FUNCTION_63_0();
  v34 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4D8, &qword_2683D6E18);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = *(v0 + 16);
  v32 = *(v0 + 24);
  v33 = v10;
  v11 = *(v0 + 32);
  v30 = *(v0 + 40);
  v31 = v11;
  v12 = *(v0 + 48);
  v28 = *(v0 + 56);
  v29 = v12;
  v27 = *(v0 + 64);
  v39 = *(v0 + 72);
  v13 = *(v0 + 88);
  v24 = *(v0 + 80);
  v25 = v13;
  v26 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_26819D6B0();
  sub_2683D0718();
  LOBYTE(v35) = 0;
  v14 = v34;
  sub_2683D04D8();
  if (!v14)
  {
    v15 = v28;
    v16 = v29;
    LOBYTE(v35) = 1;
    sub_2683D0518();
    LOBYTE(v35) = 2;
    sub_2683D04D8();
    v35 = v16;
    v36 = v15;
    v37 = v27;
    v38 = v39;
    v17 = sub_26819D704();
    OUTLINED_FUNCTION_13_11(v17, v18, v19, &type metadata for Snippet.Color, v17);
    v35 = v24;
    v36 = v25;
    LOBYTE(v37) = v26;
    sub_268151B1C(v24, v25, v26);
    v20 = sub_26819D758();
    OUTLINED_FUNCTION_13_11(v20, v21, v22, &type metadata for Snippet.ReminderList.ListBadge, v20);
    sub_268151B3C(v35, v36, v37);
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_62();
}

uint64_t Snippet.ReminderList.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_96();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  sub_2683CFB48();
  if (v2)
  {
    OUTLINED_FUNCTION_96();
    sub_2683CFB48();
  }

  else
  {
    OUTLINED_FUNCTION_95();
  }

  if (v3 == 3)
  {
    OUTLINED_FUNCTION_95();
  }

  else
  {
    OUTLINED_FUNCTION_96();
    Snippet.Color.hash(into:)();
  }

  if (v4 == 255)
  {
    return OUTLINED_FUNCTION_95();
  }

  OUTLINED_FUNCTION_96();
  if (v4)
  {
    MEMORY[0x26D617190](1);
  }

  else
  {
    MEMORY[0x26D617190](0);
  }

  sub_268151B34(v6, v7);
  sub_2683CFB48();

  return sub_268151B3C(v6, v7, v4);
}

uint64_t Snippet.ReminderList.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_79(a1);
  Snippet.ReminderList.hash(into:)(v2);
  return sub_2683D06D8();
}

void Snippet.ReminderList.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63_0();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E4F8, &qword_2683D6E20);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_26819D6B0();
  sub_2683D06F8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);

    v31 = OUTLINED_FUNCTION_8_12();
    sub_268151B3C(v31, v32, v33);
  }

  else
  {
    OUTLINED_FUNCTION_7_11();
    v30 = sub_2683D0438();
    v35 = v34;
    v57 = v30;
    OUTLINED_FUNCTION_7_11();
    v36 = sub_2683D0478();
    v38 = v37;
    v56 = v36;
    v55 = v28;
    LOBYTE(v59) = 2;
    OUTLINED_FUNCTION_7_11();
    v39 = sub_2683D0438();
    v41 = v40;
    v54 = v39;
    LOBYTE(v58[0]) = 3;
    sub_26819D7AC();
    OUTLINED_FUNCTION_18_11();
    v51 = v59;
    v53 = v60;
    v52 = v61;
    v75 = v62;
    sub_26819D800();
    OUTLINED_FUNCTION_18_11();
    v42 = OUTLINED_FUNCTION_3_14();
    v43(v42);
    v44 = v72;
    v45 = v73;
    v50 = v72;
    v49 = v74;
    v46 = OUTLINED_FUNCTION_8_12();
    sub_268151B3C(v46, v47, v48);
    v58[0] = v57;
    v58[1] = v35;
    v58[2] = v56;
    v58[3] = v38;
    v58[4] = v54;
    v58[5] = v41;
    v58[6] = v51;
    v58[7] = v53;
    v58[8] = v52;
    LOBYTE(v58[9]) = v75;
    v58[10] = v44;
    v58[11] = v45;
    LOBYTE(v58[12]) = v49;
    memcpy(v55, v58, 0x61uLL);
    sub_26814FB60(v58, &v59);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v59 = v57;
    v60 = v35;
    v61 = v56;
    v62 = v38;
    v63 = v54;
    v64 = v41;
    v65 = v51;
    v66 = v53;
    v67 = v52;
    v68 = v75;
    v69 = v50;
    v70 = v45;
    v71 = v49;
    sub_26814F740(&v59);
  }

  OUTLINED_FUNCTION_62();
}

uint64_t sub_26819D5C4(uint64_t a1)
{
  sub_2683D0698();
  Snippet.ReminderList.hash(into:)(v2);
  return sub_2683D06D8();
}

unint64_t sub_26819D608()
{
  result = qword_28024E4B8;
  if (!qword_28024E4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4B8);
  }

  return result;
}

unint64_t sub_26819D65C()
{
  result = qword_28024E4C8;
  if (!qword_28024E4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4C8);
  }

  return result;
}

unint64_t sub_26819D6B0()
{
  result = qword_28024E4E0;
  if (!qword_28024E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4E0);
  }

  return result;
}

unint64_t sub_26819D704()
{
  result = qword_28024E4E8;
  if (!qword_28024E4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4E8);
  }

  return result;
}

unint64_t sub_26819D758()
{
  result = qword_28024E4F0;
  if (!qword_28024E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E4F0);
  }

  return result;
}

unint64_t sub_26819D7AC()
{
  result = qword_28024E500;
  if (!qword_28024E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E500);
  }

  return result;
}

unint64_t sub_26819D800()
{
  result = qword_28024E508;
  if (!qword_28024E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E508);
  }

  return result;
}

unint64_t sub_26819D858()
{
  result = qword_28024E510;
  if (!qword_28024E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E510);
  }

  return result;
}

unint64_t sub_26819D8B0()
{
  result = qword_28024E518;
  if (!qword_28024E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E518);
  }

  return result;
}

unint64_t sub_26819D908()
{
  result = qword_28024E520;
  if (!qword_28024E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E520);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook7SnippetO12ReminderListV0E5BadgeOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26819D984(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_26819D9C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s14descr2878F8F29V12ReminderListV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V12ReminderListV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V12ReminderListV9ListBadgeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26819DCA4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_26819DD54()
{
  result = qword_28024E528;
  if (!qword_28024E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E528);
  }

  return result;
}

unint64_t sub_26819DDAC()
{
  result = qword_28024E530;
  if (!qword_28024E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E530);
  }

  return result;
}

unint64_t sub_26819DE04()
{
  result = qword_28024E538;
  if (!qword_28024E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E538);
  }

  return result;
}

unint64_t sub_26819DE5C()
{
  result = qword_28024E540;
  if (!qword_28024E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E540);
  }

  return result;
}

unint64_t sub_26819DEB4()
{
  result = qword_28024E548;
  if (!qword_28024E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E548);
  }

  return result;
}

unint64_t sub_26819DF0C()
{
  result = qword_28024E550;
  if (!qword_28024E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E550);
  }

  return result;
}

unint64_t sub_26819DF64()
{
  result = qword_28024E558;
  if (!qword_28024E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E558);
  }

  return result;
}

unint64_t sub_26819DFBC()
{
  result = qword_28024E560;
  if (!qword_28024E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E560);
  }

  return result;
}

unint64_t sub_26819E014()
{
  result = qword_28024E568;
  if (!qword_28024E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E568);
  }

  return result;
}

unint64_t sub_26819E06C()
{
  result = qword_28024E570;
  if (!qword_28024E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E570);
  }

  return result;
}

unint64_t sub_26819E0C4()
{
  result = qword_28024E578;
  if (!qword_28024E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E578);
  }

  return result;
}

unint64_t sub_26819E11C()
{
  result = qword_28024E580;
  if (!qword_28024E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E580);
  }

  return result;
}

unint64_t sub_26819E174()
{
  result = qword_28024E588;
  if (!qword_28024E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E588);
  }

  return result;
}

unint64_t sub_26819E1CC()
{
  result = qword_28024E590;
  if (!qword_28024E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E590);
  }

  return result;
}

unint64_t sub_26819E224()
{
  result = qword_28024E598;
  if (!qword_28024E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E598);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2683D0508();
}

uint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{

  return sub_2683D0418();
}

void *OUTLINED_FUNCTION_18_11()
{

  return sub_2683D0468();
}

uint64_t type metadata accessor for SearchForNotebookItemsV2CATs(uint64_t a1)
{
  result = qword_28024E5A0;
  if (!qword_28024E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26819E3EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819E404()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_2_12(v3);
  OUTLINED_FUNCTION_6_12();

  return v5();
}

uint64_t sub_26819E514()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FC74);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_26819E638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819E650()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_2_12(v3);
  OUTLINED_FUNCTION_6_12();

  return v5();
}

uint64_t sub_26819E760(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26819E778()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[6] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_2_12(v3);
  OUTLINED_FUNCTION_6_12();

  return v5();
}

uint64_t sub_26819E888()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_26819E9AC()
{
  OUTLINED_FUNCTION_7();
  *(v1 + 64) = v24;
  *(v1 + 72) = v0;
  *(v1 + 125) = v22;
  *(v1 + 124) = v21;
  *(v1 + 123) = v20;
  *(v1 + 122) = v19;
  *(v1 + 48) = v18;
  *(v1 + 56) = v23;
  *(v1 + 121) = v17;
  *(v1 + 120) = v15;
  *(v1 + 119) = v14;
  *(v1 + 118) = v13;
  *(v1 + 117) = v12;
  *(v1 + 116) = v2;
  *(v1 + 115) = v3;
  *(v1 + 114) = v4;
  *(v1 + 113) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v16;
  *(v1 + 112) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26819EAC4);
}

uint64_t sub_26819EAC4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = xmmword_2683D7770;
  *(v3 + 32) = 0x6554686372616573;
  *(v3 + 40) = 0xEA00000000007478;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = *(v0 + 80);
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(*(v0 + 80), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v8 = *(v0 + 113);
  v9 = *(v0 + 112);
  *(v3 + 80) = 0x6E6F707365527369;
  *(v3 + 88) = 0xEF7974706D456573;
  v10 = MEMORY[0x277D839B0];
  *(v3 + 96) = v9;
  *(v3 + 120) = v10;
  strcpy((v3 + 128), "taskListCount");
  *(v3 + 142) = -4864;
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v11 = *(v0 + 32);
    v12 = MEMORY[0x277D839F8];
  }

  v13 = *(v0 + 121);
  v14 = *(v0 + 120);
  v15 = *(v0 + 119);
  v16 = *(v0 + 118);
  v17 = *(v0 + 117);
  v18 = *(v0 + 116);
  v19 = *(v0 + 115);
  v20 = *(v0 + 114);
  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  *(v3 + 176) = 0xD000000000000010;
  *(v3 + 184) = 0x80000002683FE240;
  *(v3 + 192) = v20;
  *(v3 + 216) = v10;
  *(v3 + 224) = 0x4F7365746F4E7369;
  *(v3 + 232) = 0xEB00000000796C6ELL;
  *(v3 + 240) = v19;
  *(v3 + 264) = v10;
  *(v3 + 272) = 0x4F736B7361547369;
  *(v3 + 280) = 0xEB00000000796C6ELL;
  *(v3 + 288) = v18;
  *(v3 + 312) = v10;
  *(v3 + 320) = 0x656C706D6F437369;
  *(v3 + 328) = 0xEB00000000646574;
  *(v3 + 336) = v17;
  *(v3 + 360) = v10;
  *(v3 + 368) = 0x79426575447369;
  *(v3 + 376) = 0xE700000000000000;
  *(v3 + 384) = v16;
  *(v3 + 408) = v10;
  *(v3 + 416) = 0x656767616C467369;
  *(v3 + 424) = 0xE900000000000064;
  *(v3 + 432) = v15;
  *(v3 + 456) = v10;
  *(v3 + 464) = 0xD000000000000010;
  *(v3 + 472) = 0x80000002683FE260;
  *(v3 + 480) = v14;
  *(v3 + 504) = v10;
  *(v3 + 512) = 0x6C6F687365726874;
  *(v3 + 520) = 0xE900000000000064;
  if (v13)
  {
    v21 = 0;
    v22 = 0;
    *(v3 + 536) = 0u;
  }

  else
  {
    v21 = *(v0 + 40);
    v22 = MEMORY[0x277D839F8];
  }

  v23 = *(v0 + 122);
  *(v3 + 528) = v21;
  *(v3 + 552) = v22;
  strcpy((v3 + 560), "totalItemCount");
  *(v3 + 575) = -18;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    *(v3 + 584) = 0u;
  }

  else
  {
    v24 = *(v0 + 48);
    v25 = MEMORY[0x277D839F8];
  }

  v26 = *(v0 + 56);
  v27 = *(v0 + 125);
  v28 = *(v0 + 124);
  v29 = *(v0 + 123);
  *(v3 + 576) = v24;
  *(v3 + 600) = v25;
  *(v3 + 608) = 0x7564656863537369;
  *(v3 + 616) = 0xEB0000000064656CLL;
  *(v3 + 648) = v10;
  *(v3 + 624) = v29;
  *(v3 + 656) = 0x7272756365527369;
  *(v3 + 664) = 0xEB00000000676E69;
  *(v3 + 696) = v10;
  *(v3 + 672) = v28;
  *(v3 + 704) = 0x656C676E69537369;
  *(v3 + 712) = 0xEB00000000796144;
  *(v3 + 744) = v10;
  *(v3 + 720) = v27;
  *(v3 + 752) = 7368801;
  *(v3 + 760) = 0xE300000000000000;
  if (v26)
  {
    v30 = sub_2683CF138();
    v31 = v26;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    *(v3 + 776) = 0u;
  }

  v32 = *(v0 + 64);
  *(v3 + 768) = v31;
  *(v3 + 792) = v30;
  *(v3 + 800) = 0x7261646E656C6163;
  *(v3 + 808) = 0xE800000000000000;
  v33 = 0;
  if (v32)
  {
    v33 = sub_2683CEFE8();
  }

  else
  {
    *(v3 + 824) = 0u;
  }

  *(v3 + 816) = v32;
  *(v3 + 840) = v33;
  OUTLINED_FUNCTION_5_13();

  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v0 + 96) = v34;
  *v34 = v35;
  v34[1] = sub_26819EFE4;
  v36 = *(v0 + 16);

  return v38(v36, 0xD00000000000002ELL, 0x80000002683FE280, v3);
}

uint64_t sub_26819EFE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26819F114);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_26819F114()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26819F178()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F224()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F2D0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F37C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F428()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F4D4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F580()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_268133EC8;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F62C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_15_10();
  v1 = OUTLINED_FUNCTION_1_3(v0);
  *v1 = v2;
  v1[1] = sub_2681342AC;
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_3_11();

  return v3();
}

uint64_t sub_26819F72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v13 - v10, &qword_28024D258, &unk_2683D1F60);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v11;
}

uint64_t type metadata accessor for Snippet.SetTaskAttribute3p(uint64_t a1)
{
  result = qword_28024E5E8;
  if (!qword_28024E5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Snippet.SetTaskAttribute3p.interaction.setter(uint64_t a1)
{
  type metadata accessor for Snippet.SetTaskAttribute3p(0);
  OUTLINED_FUNCTION_1_19();
  return sub_26819FA1C();
}

uint64_t sub_26819FA1C()
{
  v2 = OUTLINED_FUNCTION_6_15();
  v3(v2);
  OUTLINED_FUNCTION_1();
  (*(v4 + 40))(v0, v1);
  return v0;
}

uint64_t Snippet.SetTaskAttribute3p.init(reminder:interaction:)()
{
  OUTLINED_FUNCTION_0_24();
  sub_26819FB08();
  type metadata accessor for Snippet.SetTaskAttribute3p(0);
  OUTLINED_FUNCTION_1_19();
  return sub_26819FB08();
}

uint64_t sub_26819FB08()
{
  v2 = OUTLINED_FUNCTION_6_15();
  v3(v2);
  OUTLINED_FUNCTION_1();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26819FB60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEB000000006E6F69)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26819FC2C(char a1)
{
  if (a1)
  {
    return 0x7463617265746E69;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

uint64_t sub_26819FC74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26819FB60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26819FC9C(uint64_t a1)
{
  v2 = sub_26819FEC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26819FCD8(uint64_t a1)
{
  v2 = sub_26819FEC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SetTaskAttribute3p.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E5B0, &qword_2683D7820);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26819FEC8();
  sub_2683D0718();
  v17[15] = 0;
  type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_4_16();
  sub_2681A0384(v11, v12, &protocol conformance descriptor for Snippet.Reminder);
  OUTLINED_FUNCTION_9_13(v3);
  if (!v2)
  {
    v13 = *(type metadata accessor for Snippet.SetTaskAttribute3p(0) + 20);
    v17[14] = 1;
    type metadata accessor for Snippet.Interaction(0);
    OUTLINED_FUNCTION_3_15();
    sub_2681A0384(v14, v15, &protocol conformance descriptor for Snippet.Interaction);
    OUTLINED_FUNCTION_9_13(v3 + v13);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_26819FEC8()
{
  result = qword_28024E5B8;
  if (!qword_28024E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E5B8);
  }

  return result;
}

uint64_t Snippet.SetTaskAttribute3p.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for Snippet.Interaction(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v35 = type metadata accessor for Snippet.Reminder(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v36 = v7 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E5C8, &qword_2683D7828);
  OUTLINED_FUNCTION_0_3();
  v34 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  type metadata accessor for Snippet.SetTaskAttribute3p(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26819FEC8();
  sub_2683D06F8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v31 = a1;
  v16 = v34;
  v17 = v15;
  v39 = 0;
  OUTLINED_FUNCTION_4_16();
  v20 = sub_2681A0384(v18, v19, &protocol conformance descriptor for Snippet.Reminder);
  v21 = v37;
  OUTLINED_FUNCTION_8_13(v35, &v39, v22, v23, v20);
  OUTLINED_FUNCTION_0_24();
  sub_26819FB08();
  v38 = 1;
  OUTLINED_FUNCTION_3_15();
  v26 = sub_2681A0384(v24, v25, &protocol conformance descriptor for Snippet.Interaction);
  OUTLINED_FUNCTION_8_13(v33, &v38, v27, v28, v26);
  (*(v16 + 8))(v11, v21);
  OUTLINED_FUNCTION_1_19();
  sub_26819FB08();
  sub_2681A0244();
  __swift_destroy_boxed_opaque_existential_0(v31);
  return sub_2681A029C(v17, type metadata accessor for Snippet.SetTaskAttribute3p);
}

uint64_t sub_2681A0244()
{
  v2 = OUTLINED_FUNCTION_6_15();
  v3(v2);
  OUTLINED_FUNCTION_1();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2681A029C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2681A0384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2681A0424(uint64_t a1)
{
  result = type metadata accessor for Snippet.Reminder(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Snippet.Interaction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *_s14descr2878F8F29V18SetTaskAttribute3pV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2681A0588()
{
  result = qword_28024E5F8;
  if (!qword_28024E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E5F8);
  }

  return result;
}

unint64_t sub_2681A05E0()
{
  result = qword_28024E600;
  if (!qword_28024E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E600);
  }

  return result;
}

unint64_t sub_2681A0638()
{
  result = qword_28024E608;
  if (!qword_28024E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E608);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_2683D04A8();
}

uint64_t OUTLINED_FUNCTION_9_13(uint64_t a1)
{

  return sub_2683D0548();
}

BOOL sub_2681A073C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_2681A0800()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2681A091C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E610, &qword_2683D7AB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2681A0A14;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 fetchSiriKitAppIdentifiersWithNotificationPreviewRestrictionsWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2681A091C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2681A09F0);
}

uint64_t sub_2681A0A14(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_2683CFCA8();
  }

  else
  {
    v4 = 0;
  }

  return sub_2681A0A78(v3, v4);
}

uint64_t sub_2681A0A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268167A44;

  return sub_2681A07EC();
}

uint64_t sub_2681A0B40(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681A0B54(uint64_t a1)
{
  v23 = v1;
  v1[8] = sub_2683CF258();
  v1[9] = v2;
  if (v2)
  {
    v3 = v1[7];
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    OUTLINED_FUNCTION_6_16(v5);
    v21 = (v6 + *v6);
    v7 = swift_task_alloc();
    v1[10] = v7;
    *v7 = v1;
    v7[1] = sub_2681A0DD8;

    return v21(v4, v5);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);

    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE78();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[6];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      v1[4] = v12;
      sub_2683CF278();
      sub_26816EC88();
      v15 = sub_2683D0568();
      v17 = sub_2681610A0(v15, v16, &v22);

      *(v13 + 4) = v17;
      OUTLINED_FUNCTION_7_12(&dword_2680EB000, v18, v19, "[NotificationPreviewSettingProvider] Got nil app id, assuming previews restricted for %s.");
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    OUTLINED_FUNCTION_37();

    return v20(1);
  }
}

uint64_t sub_2681A0DD8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v1 + 88) = v0;

  return MEMORY[0x2822009F8](sub_2681A0ED0);
}

uint64_t sub_2681A0ED0()
{
  v29 = v0;
  v1 = v0[11];
  if (v1)
  {
    v0[2] = v0[8];
    v0[3] = v0[9];
    v2 = swift_task_alloc();
    *(v2 + 16) = v0 + 2;
    v3 = sub_2681A073C(sub_2681A12C0, v2, v1);

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v4 = sub_2683CF7E8();
    __swift_project_value_buffer(v4, qword_28027C958);

    v5 = sub_2683CF7C8();
    v6 = sub_2683CFE98();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[9];
    if (v7)
    {
      v9 = v0[8];
      v10 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v10 = 136446466;
      v11 = sub_2681610A0(v9, v8, v28);

      *(v10 + 4) = v11;
      *(v10 + 12) = 2080;
      if (v3)
      {
        v12 = 0x5443495254534552;
      }

      else
      {
        v12 = 0x7473657220544F4ELL;
      }

      if (v3)
      {
        v13 = 0xEA00000000004445;
      }

      else
      {
        v13 = 0xEE00646574636972;
      }

      v14 = sub_2681610A0(v12, v13, v28);

      *(v10 + 14) = v14;
      _os_log_impl(&dword_2680EB000, v5, v6, "Notification previews for %{public}s are %s", v10, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  else
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v15 = sub_2683CF7E8();
    __swift_project_value_buffer(v15, qword_28027C958);

    v16 = sub_2683CF7C8();
    v17 = sub_2683CFE78();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[6];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28[0] = v20;
      *v19 = 136315138;
      v0[5] = v18;
      sub_2683CF278();
      sub_26816EC88();
      v21 = sub_2683D0568();
      v23 = sub_2681610A0(v21, v22, v28);

      *(v19 + 4) = v23;
      OUTLINED_FUNCTION_7_12(&dword_2680EB000, v24, v25, "[NotificationPreviewSettingProvider] Got nil restricted apps, assuming previews restricted for %s");
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v3 = 1;
  }

  OUTLINED_FUNCTION_37();

  return v26(v3);
}

uint64_t sub_2681A1250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2683D0598() & 1;
  }
}

void OUTLINED_FUNCTION_7_12(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2681A1324@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28024E618, qword_2683D7B18);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_2683CC318();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  v14 = sub_2683CC588();
  sub_2682B2AC0(v14);

  v15 = sub_2683CC608();
  if (__swift_getEnumTagSinglePayload(v4, 1, v15) == 1)
  {
    sub_2681A1704(v4);
    v16 = 1;
  }

  else
  {
    sub_2683CC5F8();
    (*(*(v15 - 8) + 8))(v4, v15);
    (*(v7 + 32))(v13, v11, v5);
    sub_2683CC308();
    sub_2683CC2F8();
    sub_2683CF148();
    (*(v7 + 8))(v13, v5);
    v16 = 0;
  }

  v17 = sub_2683CF168();
  return __swift_storeEnumTagSinglePayload(a1, v16, 1, v17);
}

uint64_t sub_2681A1544()
{
  v0 = sub_2683CC318();
  OUTLINED_FUNCTION_0_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28024E618, qword_2683D7B18);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_2683CC588();
  sub_2682B2AC0(v9);

  v10 = sub_2683CC608();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_2681A1704(v8);
    return 0;
  }

  sub_2683CC5F8();
  (*(*(v10 - 8) + 8))(v8, v10);
  v11 = sub_2683CC308();
  v13 = v12;
  (*(v2 + 8))(v5, v0);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    return 0;
  }

  return v11;
}

uint64_t sub_2681A1704(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28024E618, qword_2683D7B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681A17E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v5 = sub_2683CCBA8();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v57 - v12;
  v13 = sub_2683CCC18();
  OUTLINED_FUNCTION_0_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 88);
  v20 = *(v3 + 96);
  sub_2683CCB88();
  v21 = sub_2681D3080(v18, v19, v20);
  (*(v15 + 8))(v18, v13);
  if (v21 == 3)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v33 = sub_2683CF7E8();
    __swift_project_value_buffer(v33, qword_28027C958);
    (*(v7 + 16))(v10, a1, v5);
    v34 = sub_2683CF7C8();
    v35 = sub_2683CFE98();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&v59 = v37;
      *v36 = 136315138;
      sub_2681A2BA8(&qword_28024DEE8, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
      v38 = sub_2683D0568();
      v40 = v39;
      (*(v7 + 8))(v10, v5);
      v41 = sub_2681610A0(v38, v40, &v59);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_2680EB000, v34, v35, "Ignoring interruption of unknown input: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      (*(v7 + 8))(v10, v5);
    }

    v51 = sub_2683CC7B8();
    v52 = v58;
    return __swift_storeEnumTagSinglePayload(v52, 1, 1, v51);
  }

  if (v21 != 2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v42 = sub_2683CF7E8();
    __swift_project_value_buffer(v42, qword_28027C958);
    v43 = sub_2683CF7C8();
    v44 = sub_2683CFE98();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v59 = v46;
      *v45 = 136315138;
      if (v21)
      {
        v47 = 1886352499;
      }

      else
      {
        v47 = 0x6C65636E6163;
      }

      if (v21)
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE600000000000000;
      }

      v49 = sub_2681610A0(v47, v48, &v59);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_2680EB000, v43, v44, "Ignoring interruption of %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v50 = v58;
    v51 = sub_2683CC7B8();
    v52 = v50;
    return __swift_storeEnumTagSinglePayload(v52, 1, 1, v51);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v22 = sub_2683CF7E8();
  __swift_project_value_buffer(v22, qword_28027C958);

  v23 = sub_2683CF7C8();
  v24 = sub_2683CFE98();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v60 = v26;
    *v25 = 136315138;
    v59 = *(v3 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6F8, &qword_2683D7ED8);
    v27 = sub_2683CFF98();
    v29 = sub_2681610A0(v27, v28, &v60);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2680EB000, v23, v24, "Accepting input as next page. jumping to: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v30 = v58;
  if (*(v3 + 104))
  {
    v31 = *(v3 + 112);
    v32 = *(v3 + 104);
  }

  else
  {
    v54 = sub_2683CC7B8();
    __swift_storeEnumTagSinglePayload(v57, 1, 1, v54);
    sub_2683CC5E8();
    swift_allocObject();
    v32 = sub_2683CC5D8();
    v31 = sub_2681A2BA8(&qword_28024E6F0, MEMORY[0x277D5BDD0], MEMORY[0x277D5BDC8]);
  }

  *v30 = v32;
  v30[1] = v31;
  v55 = *MEMORY[0x277D5BF58];
  v56 = sub_2683CC7B8();
  (*(*(v56 - 8) + 104))(v30, v55, v56);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v56);
  return swift_unknownObjectRetain();
}

uint64_t sub_2681A1EA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D0, &unk_2683DE610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6D8, &unk_2683D7EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2683D1EC0;
  type metadata accessor for ErrorAction();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  v7 = sub_2681A2BA8(&qword_28024E6E0, type metadata accessor for ErrorAction, &unk_2683D7D60);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = sub_2683CC7B8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  sub_2683CC5E8();
  swift_allocObject();
  v9 = a1;
  return sub_2683CC5D8();
}

uint64_t *sub_2681A200C()
{
  sub_268128194(*(v0 + 40), *(v0 + 48));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2681A204C()
{
  sub_2681A200C();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

unint64_t sub_2681A20B4(uint64_t a1, uint64_t a2)
{
  sub_2683D0178();

  swift_beginAccess();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E6E8, &qword_2683D7ED0);
  v2 = sub_2683CFAD8();
  MEMORY[0x26D616690](v2);

  return 0xD000000000000013;
}

uint64_t sub_2681A2170()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2681A2220(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2681A22C8;

  return MEMORY[0x2821BBC58](a1, a2);
}

uint64_t sub_2681A22C8()
{

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681A23FC(uint64_t a1)
{
  v2 = *(*(v1 + 16) + 32);
  swift_willThrow();
  v3 = v2;
  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681A2470(uint64_t a1, uint64_t a2)
{
  sub_2683D0178();

  v3 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  v4 = sub_2683CFAD8();
  MEMORY[0x26D616690](v4);

  return 0x6120726F7272455BLL;
}

uint64_t sub_2681A251C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2681A2544()
{
  v0 = sub_2681A251C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2681A25E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681A2BF0;

  return sub_2681A23DC();
}

uint64_t sub_2681A26B8()
{
  (*(*(v0 + 16) + 32))();
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681A2740()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2681A2768()
{
  v0 = sub_2681A2740();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2681A27BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2681A2854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681A28E0;

  return sub_2681A2698();
}

uint64_t sub_2681A28E0()
{

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_2681A2BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_2681A2C04(void *a1)
{
  type metadata accessor for NotebookTemporalEventTriggerConcept.Builder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v3 = [a1 dateComponentsRange];
  v4 = sub_2683608FC();

  v5 = sub_2681E07F4(v4);

  v6 = [a1 dateComponentsRange];
  v7 = [v6 allDay];

  if (v7)
  {
    v8 = [v7 BOOLValue];
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 24) = v8;
  type metadata accessor for NotebookTemporalEventTriggerConcept();
  swift_allocObject();
  v9 = sub_26835179C(v5);

  return v9;
}

uint64_t sub_2681A2D2C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  type metadata accessor for NotebookReminderListConcept.Builder(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_listTitle;
  v7 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v5 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_isDefault;
  *(v5 + OBJC_IVAR____TtCC12SiriNotebook27NotebookReminderListConcept7Builder_isDefault) = 0;
  sub_2683CFEA8();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  swift_beginAccess();
  sub_268163BC8(v4, v5 + v6);
  swift_endAccess();
  sub_26812E924(v4);
  *(v5 + v8) = sub_2681BAC30() & 1;
  type metadata accessor for NotebookReminderListConcept(0);
  swift_allocObject();
  v9 = sub_268364C10(v5);

  return v9;
}

uint64_t sub_2681A2E94@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_2683CFFA8();
  OUTLINED_FUNCTION_0_3();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-v12];
  sub_26813CC6C(a1, v16);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a3);
    return (*(*(a3 - 8) + 32))(a4, v13, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a3);
    v15 = (*(v10 + 8))(v13, v8);
    a2(v15);
    return swift_willThrow();
  }
}

uint64_t sub_2681A3020@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E700, &qword_2683D7EE0);
  sub_2683CFAD8();
  swift_getMetatypeMetadata();
  sub_2683CFAD8();
  sub_2681A2E94(a1, sub_2681A318C, a2, a3);
}

uint64_t sub_2681A3124(uint64_t a1)
{
  sub_26812C6B8();
  v2 = swift_allocError();
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v4;
  *(v5 + 32) = v3;
  sub_26812CA1C(a1, v7);
  return v2;
}

BOOL sub_2681A3194(void *a1)
{
  v2 = sub_2683CF168();
  OUTLINED_FUNCTION_0_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = v7 - v6;
  v9 = [a1 title];
  sub_2683CFEA8();

  v10 = sub_2683CF158();
  v12 = v11;
  (*(v4 + 8))(v8, v2);
  v13 = sub_2683CB5A8();
  v15 = sub_2681A32D0(v10, v12, v13, v14);

  return v15 > 3.0;
}

double sub_2681A32D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a1;
  v5 = sub_2683CF738();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_2683CF768();
  __swift_project_value_buffer(v14, qword_28027C9A0);
  sub_2683CF728();
  v15 = sub_2683CF758();
  v16 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v17 = swift_slowAlloc();
    v28[0] = a4;
    v18 = v17;
    *v17 = 0;
    v19 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v15, v16, v19, "SpeechUtils#ttsDuration", "", v18, 2u);
    MEMORY[0x26D617A40](v18, -1, -1);
  }

  (*(v7 + 16))(v11, v13, v5);
  sub_2683CF7A8();
  swift_allocObject();
  v20 = sub_2683CF798();
  (*(v7 + 8))(v13, v5);
  v21 = objc_allocWithZone(sub_2683CED58());

  v22 = sub_2683CED48();
  objc_allocWithZone(sub_2683CED78());

  v23 = v22;
  v24 = sub_2683CED68();
  sub_2683CED98();
  sub_2683CED88();
  v26 = v25;

  sub_2681A3598(v20);

  return v26;
}

uint64_t sub_2681A3598(uint64_t a1)
{
  v1 = sub_2683CF778();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF738();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v9 = sub_2683CF768();
  __swift_project_value_buffer(v9, qword_28027C9A0);
  v10 = sub_2683CF758();
  sub_2683CF788();
  v11 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v10, v11, v14, "SpeechUtils#ttsDuration", v12, v13, 2u);
    MEMORY[0x26D617A40](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2681A3824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E708, &qword_2683D7EE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  sub_2683CB668();
  OUTLINED_FUNCTION_0_3();
  v39 = v4;
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v7 = v6 - v5;
  sub_2683CB7A8();
  OUTLINED_FUNCTION_0_3();
  v37 = v9;
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v12 = v11 - v10;
  v13 = sub_2683CEB08();
  OUTLINED_FUNCTION_0_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v19 = v18 - v17;
  sub_2683CB528();
  OUTLINED_FUNCTION_0_3();
  v35 = v21;
  v36 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_3();
  v24 = v23 - v22;
  sub_2683CE9C8();
  OUTLINED_FUNCTION_0_3();
  v33 = v26;
  v34 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_3();
  v29 = v28 - v27;
  sub_2683CE9B8();
  sub_2683CB518();
  (*(v15 + 104))(v19, *MEMORY[0x277D56370], v13);
  sub_2683CB768();
  sub_2683CB628();
  v30 = sub_2683CE978();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v30);
  sub_2683CEB78();
  sub_2681A3BD4();
  sub_2683CF9D8();
  v31 = sub_2683CE9A8();

  sub_2681A3C2C(v2);
  (*(v39 + 8))(v7, v40);
  (*(v37 + 8))(v12, v38);
  (*(v15 + 8))(v19, v13);
  (*(v35 + 8))(v24, v36);
  (*(v33 + 8))(v29, v34);
  return v31 & 1;
}

unint64_t sub_2681A3BD4()
{
  result = qword_28024E710;
  if (!qword_28024E710)
  {
    sub_2683CEB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E710);
  }

  return result;
}

uint64_t sub_2681A3C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E708, &qword_2683D7EE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2681A3C94(uint64_t a1, char a2, char a3)
{
  v44 = sub_2683CC318();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0_18();
  v43 = v9;
  v42 = sub_2683CC608();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_18();
  v41 = v13;
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setCanUseServerTTS_];
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v14 setListenAfterSpeaking_];

  [v14 setRepeatable_];
  v16 = sub_2683CC568();
  v38 = v14;
  sub_26813F2FC(v16, v17, v14, &selRef_setDialogIdentifier_);
  v18 = sub_2683CC588();
  v19 = *(v18 + 16);
  if (v19)
  {
    v37 = a1;
    v45 = MEMORY[0x277D84F90];
    sub_268390600(0, v19, 0);
    v20 = v45;
    v22 = *(v11 + 16);
    v21 = v11 + 16;
    v23 = v18 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v39 = *(v21 + 56);
    v40 = v22;
    do
    {
      v40(v41, v23, v42);
      sub_2683CC5F8();
      v24 = sub_2683CC308();
      v26 = v25;
      (*(v7 + 8))(v43, v44);
      (*(v21 - 8))(v41, v42);
      v28 = *(v45 + 16);
      v27 = *(v45 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_268390600((v27 > 1), v28 + 1, 1);
      }

      *(v45 + 16) = v28 + 1;
      v29 = v45 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v23 += v39;
      --v19;
    }

    while (v19);

    a1 = v37;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v31 = 0;
  v32 = *(v20 + 16);
  for (i = (v20 + 40); ; i += 2)
  {
    if (v32 == v31)
    {

      sub_26813F2FC(0, 0xE000000000000000, v38, &selRef_setMessage_);

      v36 = sub_2683CC598();
      (*(*(v36 - 8) + 8))(a1, v36);
      return v38;
    }

    if (v31 >= *(v20 + 16))
    {
      break;
    }

    ++v31;
    v35 = *(i - 1);
    v34 = *i;

    MEMORY[0x26D616690](v35, v34);
  }

  __break(1u);
  return result;
}

double sub_2681A4078()
{
  if (qword_28024C8F0 != -1)
  {
    OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
  }

  v0 = sub_2683CF7E8();
  __swift_project_value_buffer(v0, qword_28027C988);
  v1 = sub_2683CF7C8();
  v2 = sub_2683CFE78();
  if (OUTLINED_FUNCTION_17_5(v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_15_7(&dword_2680EB000, v3, v4, "NoOp AppIntentHelper called");
    OUTLINED_FUNCTION_3_16();
  }

  return OUTLINED_FUNCTION_2_14();
}

double OUTLINED_FUNCTION_2_14()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_3_16()
{

  JUMPOUT(0x26D617A40);
}

uint64_t sub_2681A4154(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 384))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2681A4194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681A4248(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v3[5] = swift_task_alloc();
  v4 = sub_2683CB598();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681A4344);
}

uint64_t sub_2681A4344()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  __swift_project_boxed_opaque_existential_1((v0[4] + 80), *(v0[4] + 104));
  v1 = OUTLINED_FUNCTION_55_0();
  if ((v2(v1) & 1) == 0)
  {
LABEL_10:
    sub_2683CF2F8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_20_9();

    return v22(v21, v22, v23, v24, v25, v26, v27, v28);
  }

  sub_2683CEC88();
  sub_2683CEC78();
  sub_2683CEC38();
  OUTLINED_FUNCTION_97_0();

  sub_2683CF698();
  v4 = v3;

  v0[9] = v4;
  if (!v4)
  {
LABEL_5:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v8 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v8, qword_28027C958);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_43(v10))
    {
      v11 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v11);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_10;
  }

  v6 = v0[5];
  v5 = v0[6];
  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    v7 = v0[5];

    sub_2681433DC(v7, &qword_28024DB50, &qword_2683D4250);
    goto LABEL_5;
  }

  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v30 = swift_task_alloc();
  v31 = OUTLINED_FUNCTION_83_0(v30);
  *v31 = v32;
  v31[1] = sub_2681A45A0;
  OUTLINED_FUNCTION_39_4(v0[3]);
  OUTLINED_FUNCTION_20_9();

  return sub_26820BC40(v33, v34, v35);
}

uint64_t sub_2681A45A0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  *v4 = v3;
  v4[1] = sub_2681A471C;
  OUTLINED_FUNCTION_20_9();

  return sub_268164EE4();
}

uint64_t sub_2681A471C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681A4800()
{
  OUTLINED_FUNCTION_14();
  (*(v0[7] + 8))(v0[8], v0[6]);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681A487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681A4894()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  if ((sub_268200040(*(v0 + 40), *(v0 + 48)) & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v13 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v13, qword_28027C958);
    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v15))
    {
      v16 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v16);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_5(*(v0 + 32));
  if (sub_2683CC0B8())
  {
    OUTLINED_FUNCTION_8_14(&qword_2683D83F0);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_95_0(v1);
    *v2 = v3;
    v2[1] = sub_2681B5864;
    OUTLINED_FUNCTION_39_4(*(v0 + 24));
    OUTLINED_FUNCTION_101();

    return v7(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  OUTLINED_FUNCTION_35_5(*(v0 + 32));
  v30 = sub_2683CC0C8();
  if (v30)
  {
    v31 = sub_268200914(*(v0 + 40), *(v0 + 48));
    v33 = v32;
    sub_2683210B4(v31, v32);
    OUTLINED_FUNCTION_9_10();

LABEL_11:
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_101();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v34 = *(v0 + 24);
  if (!v34 || (sub_2681E73A0(v30) & 1) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_8_14(&qword_2683D83E8);
    v47 = swift_task_alloc();
    *(v0 + 64) = v47;
    *v47 = v0;
    v47[1] = sub_2681B5868;
    OUTLINED_FUNCTION_39_4(*(v0 + 40));
    OUTLINED_FUNCTION_101();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  v35 = sub_2681B422C();
  v36 = OUTLINED_FUNCTION_61_1(v35, v35);
  OUTLINED_FUNCTION_105_0(v36);
  OUTLINED_FUNCTION_109_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4(v37))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v38 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v38, qword_28027C958);
    v39 = sub_2683CF7C8();
    v40 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v40))
    {
      v41 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v41);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v42, v43, v44, v45, v46, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_101();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55);
}

uint64_t sub_2681A4BD4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2681A4BF8);
}

uint64_t sub_2681A4F74()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_17_9();

    return v7(v6);
  }
}

uint64_t sub_2681A5084()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681A5198()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v3 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v3, qword_28027C958);
    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v5))
    {
      v6 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v6);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    OUTLINED_FUNCTION_8_14(qword_2683D80F0);
    v26 = v12;
    v13 = swift_task_alloc();
    v14 = OUTLINED_FUNCTION_83_0(v13);
    *v14 = v15;
    v23 = OUTLINED_FUNCTION_40_4(v14, v16, v17, v18, v19, v20, v21, v22, v26);

    return v23();
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v25();
  }
}

uint64_t sub_2681A531C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_17_9();

    return v7(v6);
  }
}

uint64_t sub_2681A542C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681A5444()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  if (!*(*(v0 + 40) + 16))
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v13 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v13, qword_28027C958);
    v14 = sub_2683CF7C8();
    v15 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v15))
    {
      v16 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v16);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_35_5(*(v0 + 32));
  if (sub_2683CC0B8())
  {
    OUTLINED_FUNCTION_8_14(&qword_2683D8428);
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_95_0(v1);
    *v2 = v3;
    v2[1] = sub_2681B5864;
    OUTLINED_FUNCTION_39_4(*(v0 + 24));
    OUTLINED_FUNCTION_101();

    return v7(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  OUTLINED_FUNCTION_35_5(*(v0 + 32));
  v22 = sub_2683CC0C8();
  if (v22)
  {
    sub_2683210B4(*(v0 + 40), *(v0 + 48));
LABEL_13:
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_101();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  v31 = *(v0 + 24);
  if (!v31 || (sub_2681E73A0(v22) & 1) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_8_14(&qword_2683D8420);
    v44 = swift_task_alloc();
    *(v0 + 64) = v44;
    *v44 = v0;
    v44[1] = sub_2681A5770;
    OUTLINED_FUNCTION_39_4(*(v0 + 40));
    OUTLINED_FUNCTION_101();

    return v25(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  v32 = sub_2681B422C();
  v33 = OUTLINED_FUNCTION_61_1(v32, v32);
  OUTLINED_FUNCTION_105_0(v33);
  OUTLINED_FUNCTION_109_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (OUTLINED_FUNCTION_38_4(v34))
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v35 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v35, qword_28027C958);
    v36 = sub_2683CF7C8();
    v37 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_43(v37))
    {
      v38 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v38);
      OUTLINED_FUNCTION_29();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40]();
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_101();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52);
}

uint64_t sub_2681A5770()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_40();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_17_9();

    return v7(v6);
  }
}

uint64_t sub_2681A5880()
{
  OUTLINED_FUNCTION_14();
  v1[35] = v2;
  v1[36] = v0;
  v1[34] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v1[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E730, &unk_2683D8088);
  v1[38] = OUTLINED_FUNCTION_55();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v4 = sub_2683CC598();
  v1[41] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[42] = v5;
  v1[43] = OUTLINED_FUNCTION_55();
  v1[44] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v1[45] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[46] = v7;
  v1[47] = OUTLINED_FUNCTION_55();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681A5A24()
{
  v57 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v1 = v0[49];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[35];
  v5 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v5, qword_28027C958);
  v6 = *(v2 + 16);
  v0[50] = v6;
  v0[51] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2683CF7C8();
  v54 = sub_2683CFE98();
  v8 = os_log_type_enabled(v7, v54);
  v9 = v0[49];
  v11 = v0[45];
  v10 = v0[46];
  if (v8)
  {
    OUTLINED_FUNCTION_87_0();
    buf = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v51 = swift_slowAlloc();
    v56 = v51;
    *buf = 136315138;
    v12 = sub_2683CC848();
    v13 = v6;
    v14 = [v12 description];
    v49 = sub_2683CFA78();
    v16 = v15;

    v6 = v13;
    v17 = *(v10 + 8);
    v17(v9, v11);
    v18 = v17;

    v19 = sub_2681610A0(v49, v16, &v56);

    *(buf + 4) = v19;
    _os_log_impl(&dword_2680EB000, v7, v54, "[SFNI HandleIntentStrategy] Intent: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    v20 = *(v10 + 8);
    v20(v9, v11);
    v18 = v20;
  }

  v0[52] = v18;
  v6(v0[48], v0[35], v0[45]);
  v21 = sub_2683CF7C8();
  v22 = sub_2683CFE98();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[48];
  v25 = v0[45];
  if (v23)
  {
    OUTLINED_FUNCTION_87_0();
    v53 = v18;
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_86_0();
    v55 = swift_slowAlloc();
    v56 = v55;
    *v26 = 136315138;
    v27 = sub_2683CC818();
    v28 = [v27 description];
    v29 = sub_2683CFA78();
    v52 = v22;
    v31 = v30;

    v53(v24, v25);
    v32 = sub_2681610A0(v29, v31, &v56);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_2680EB000, v21, v52, "[SFNI HandleIntentStrategy] Intent Response: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  else
  {

    v18(v24, v25);
  }

  if (sub_2681A7274())
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[53] = v33;
    *v33 = v34;
    OUTLINED_FUNCTION_112(v33);
    OUTLINED_FUNCTION_11_15();

    return sub_2681A7488(v35, v36);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[36] + 176), *(v0[36] + 200));
    v39 = OUTLINED_FUNCTION_55_0();
    if (v40(v39))
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[54] = v41;
      *v41 = v42;
      OUTLINED_FUNCTION_112(v41);
      OUTLINED_FUNCTION_11_15();

      return sub_2681A8B40(v43, v44);
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[55] = v46;
      *v46 = v47;
      v46[1] = sub_2681A62CC;
      OUTLINED_FUNCTION_11_15();

      return sub_2681AA4DC();
    }
  }
}

uint64_t sub_2681A5EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v13 = *v12;
  OUTLINED_FUNCTION_1_0();
  *v14 = v13;

  OUTLINED_FUNCTION_77();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2681A60D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  v14 = *v13;
  OUTLINED_FUNCTION_1_0();
  *v15 = v14;

  OUTLINED_FUNCTION_77();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v12, a10, a11, a12);
}

uint64_t sub_2681A62CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 448) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681A63C4()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 288);
  (*(v0 + 400))(*(v0 + 376), *(v0 + 280), *(v0 + 360));
  sub_268134034(v2 + 56, v0 + 32);
  *(v0 + 16) = sub_2683CC848();
  *(v0 + 24) = sub_2683CC818();
  v3 = sub_2683CC828();
  v4 = OUTLINED_FUNCTION_61_0();
  v1(v4);
  *(v0 + 72) = v3;
  v5 = sub_2683CC818();
  v6 = sub_26818598C();

  if (v6 < 1)
  {
    *(v0 + 480) = 0;
    v12 = swift_task_alloc();
    *(v0 + 488) = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_46_4(v12);
    v13 = OUTLINED_FUNCTION_39_4(*(v0 + 280));

    return sub_2681AAC40(v13);
  }

  else
  {
    v7 = *(v0 + 288);
    v8 = sub_2683CC828();
    *(v0 + 456) = v8;
    OUTLINED_FUNCTION_8_14(&qword_2683D80B8);
    v14 = v9;
    v10 = swift_task_alloc();
    *(v0 + 464) = v10;
    *v10 = v0;
    v10[1] = sub_2681A6588;

    return v14(v8, v7 + 16);
  }
}

uint64_t sub_2681A6588()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  v4[59] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {
    v4[60] = v0;
    v9 = swift_task_alloc();
    v4[61] = v9;
    *v9 = v6;
    OUTLINED_FUNCTION_46_4(v9);
    v10 = OUTLINED_FUNCTION_39_4(v4[35]);

    return sub_2681AAC40(v10);
  }
}

uint64_t sub_2681A66EC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  *v4 = *v1;
  v3[62] = v5;
  v3[63] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v6);
  }

  else
  {
    OUTLINED_FUNCTION_8_14(&qword_2683D80A8);
    v13 = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v3[64] = v8;
    *v8 = v9;
    v8[1] = sub_2681A6864;
    v10 = v3[40];
    v11 = v3[35];

    return v13(v10, v11);
  }
}

uint64_t sub_2681A6864()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

id sub_2681A6948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  __swift_project_boxed_opaque_existential_1((*(v20 + 288) + 224), *(*(v20 + 288) + 248));
  v21 = sub_2683CC848();
  v22 = sub_2683CC818();
  sub_26832A218();
  v24 = v23;

  if (v24)
  {
    v25 = *(v20 + 496);
    v26 = *(v20 + 480);
    v28 = *(v20 + 312);
    v27 = *(v20 + 320);
    v29 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2683D1ED0;
    *(inited + 32) = v26;
    *(inited + 40) = v25;
    sub_26818F510(v27, v28, &unk_28024E730, &unk_2683D8088);
    v31 = sub_2683CF2F8();
    LODWORD(v28) = __swift_getEnumTagSinglePayload(v28, 1, v31);
    v32 = v25;
    v33 = v26;
    if (v28 == 1)
    {
      result = sub_2681433DC(*(v20 + 312), &unk_28024E730, &unk_2683D8088);
      *(inited + 48) = 0;
    }

    else
    {
      *(inited + 48) = sub_2683CF2E8();
      OUTLINED_FUNCTION_23_0();
      v40 = OUTLINED_FUNCTION_61_0();
      result = v41(v40);
    }

    v42 = 0;
    v43 = MEMORY[0x277D84F90];
    v94 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v42 == 3)
      {
        v93 = *(v20 + 480);
        v45 = *(v20 + 344);
        v46 = *(v20 + 352);
        v48 = *(v20 + 328);
        v47 = *(v20 + 336);
        v91 = *(v20 + 496);
        v92 = *(v20 + 320);
        v49 = *(v20 + 272);
        v89 = *(v20 + 296);
        v90 = *(v20 + 280);
        swift_setDeallocating();
        sub_2681F5544();
        sub_26813F26C(v43, v29);
        v50 = sub_2683CFA78();
        sub_26813F2F0(v50, v51, v29);
        sub_268129504(0, &unk_28024E750, 0x277D47B10);
        (*(v47 + 16))(v45, v46, v48);
        v52 = OUTLINED_FUNCTION_33_1();
        v54 = sub_2681A3C94(v52, v53, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
        OUTLINED_FUNCTION_37_4();
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_2683D6890;
        *(v55 + 32) = v29;
        *(v55 + 40) = v54;
        a17 = 0;
        a15 = 0u;
        a16 = 0u;
        v56 = v29;
        v57 = v54;
        sub_2682EBBF4(v90);
        sub_2683CC528();
        OUTLINED_FUNCTION_10_0();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
        v62 = sub_2683CCC98();
        v63 = MEMORY[0x277D5C1D8];
        v49[3] = v62;
        v49[4] = v63;
        __swift_allocate_boxed_opaque_existential_0(v49);
        sub_2683CCC78();

        sub_2681433DC(v92, &unk_28024E730, &unk_2683D8088);
        sub_2681AC044(v20 + 16);
        (*(v47 + 8))(v46, v48);
        goto LABEL_24;
      }

      if (v42 > 2)
      {
        break;
      }

      v44 = *(inited + 8 * v42++ + 32);
      if (v44)
      {
        v44;
        MEMORY[0x26D616770]();
        if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        result = sub_2683CFD08();
        v43 = v94;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v35 = *(v20 + 320);
    v36 = *(v20 + 304);
    v37 = *(v20 + 288);
    sub_268134034(v37 + 16, v20 + 192);
    __swift_project_boxed_opaque_existential_1((v37 + 16), *(v37 + 40));
    sub_2683CC0A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E740, &qword_2683D80B0);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_2683D1ED0;
    sub_26818F510(v35, v36, &unk_28024E730, &unk_2683D8088);
    v39 = sub_2683CF2F8();
    if (__swift_getEnumTagSinglePayload(v36, 1, v39) == 1)
    {
      sub_2681433DC(*(v20 + 304), &unk_28024E730, &unk_2683D8088);
      *(v38 + 32) = 0;
    }

    else
    {
      *(v38 + 32) = sub_2683CF2E8();
      OUTLINED_FUNCTION_23_0();
      v64 = OUTLINED_FUNCTION_61_0();
      v65(v64);
    }

    v66 = *(v20 + 496);
    v67 = *(v20 + 480);
    *(v38 + 40) = v67;
    *(v38 + 48) = v66;
    *&a15 = MEMORY[0x277D84F90];
    v68 = v66;
    result = v67;
    v93 = result;
    for (i = 0; i != 3; ++i)
    {
      if (i > 2)
      {
        goto LABEL_28;
      }

      v70 = *(v38 + 8 * i + 32);
      if (v70)
      {
        v70;
        MEMORY[0x26D616770]();
        if (*((a15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        result = sub_2683CFD08();
      }
    }

    v89 = *(v20 + 352);
    v90 = v68;
    v71 = *(v20 + 336);
    v91 = *(v20 + 320);
    v92 = *(v20 + 328);
    v72 = *(v20 + 296);
    v74 = *(v20 + 272);
    v73 = *(v20 + 280);
    swift_setDeallocating();
    sub_2681F5544();
    sub_2682EBBF4(v73);
    sub_2683CC528();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
    v79 = sub_2683CCC98();
    *(v20 + 232) = 0u;
    *(v20 + 248) = 0u;
    *(v20 + 264) = 0;
    v80 = MEMORY[0x277D5C1D8];
    v74[3] = v79;
    v74[4] = v80;
    __swift_allocate_boxed_opaque_existential_0(v74);
    a9 = v20 + 232;
    sub_2683CC328();

    sub_2681433DC(v20 + 232, &qword_28024D408, &qword_2683D2470);
    sub_2681433DC(v72, &qword_28024D400, &qword_2683D2460);
    __swift_destroy_boxed_opaque_existential_0((v20 + 192));
    sub_2681433DC(v91, &unk_28024E730, &unk_2683D8088);
    sub_2681AC044(v20 + 16);
    (*(v71 + 8))(v89, v92);
LABEL_24:

    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_48_3();

    return v82(v81, v82, v83, v84, v85, v86, v87, v88, a9, v89, v90, v91, v92, v93, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, a18, a19, a20);
  }

  return result;
}

uint64_t sub_2681A7044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_57_1();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2681A70E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();
  sub_2681AC044(v12 + 16);
  v13 = OUTLINED_FUNCTION_41_0();
  v14(v13);
  OUTLINED_FUNCTION_57_1();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2681A71A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_80();

  sub_2681AC044(v12 + 16);
  v13 = OUTLINED_FUNCTION_41_0();
  v14(v13);
  OUTLINED_FUNCTION_57_1();

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_77();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2681A7274()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  sub_2683CC828();
  v15 = 1;
  v1 = sub_26812A998(&v15);

  if (v1 & 1) != 0 && (__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), (sub_2683CC0B8()))
  {
    v2 = sub_2683CC818();
    if (sub_2682DEB58(v2))
    {
      v3 = sub_268229348();

      v4 = v3 > 1;
    }

    else
    {
      v4 = 0;
    }

    __swift_project_boxed_opaque_existential_1(v0 + 28, v0[31]);
    v6 = sub_2683CC848();
    v7 = sub_2683CC818();
    sub_26832A218();
    v9 = v8;

    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v5 = (v4 | v9) ^ 1;
    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109632;
      *(v13 + 4) = v5 & 1;
      *(v13 + 8) = 1024;
      *(v13 + 10) = v4;
      *(v13 + 14) = 1024;
      *(v13 + 16) = v9 & 1;
      _os_log_impl(&dword_2680EB000, v11, v12, "[SFNI HandleIntentStrategy] Should send punchout on watch: %{BOOL}d \n{ hasMultipleNotes: %{BOOL}d, willRead: %{BOOL}d }", v13, 0x14u);
      MEMORY[0x26D617A40](v13, -1, -1);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_2681A7488(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v3[25] = type metadata accessor for Snippet(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v4 = sub_2683CC9A8();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = sub_2683CC138();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v3[39] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v3[40] = v6;
  v3[41] = *(v6 + 64);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v7 = sub_2683CB438();
  v3[50] = v7;
  v3[51] = *(v7 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681A77D8);
}

void sub_2681A77D8()
{
  v131 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v1 = sub_2683CC818();
  v2 = sub_2682DEB58(v1);
  if (v2)
  {
    if (sub_2683ABE58())
    {
      sub_2683ABE60();
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x26D616C90](0, v2);
      }

      else
      {
        v3 = *(v2 + 32);
      }

      v4 = v3;

      sub_2681B2FCC(v4);
    }

    else
    {
    }
  }

  v5 = v0[53];
  sub_268129504(0, &qword_28024E778, 0x277D479F0);
  v6 = OUTLINED_FUNCTION_9_0();
  sub_2683963B4(v6, v7, 0, v8);

  v9 = sub_26816B2DC(v5);
  v0[54] = v9;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v10 = sub_2683CF7E8();
  __swift_project_value_buffer(v10, qword_28027C958);
  v11 = v9;
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE98();
  if (!os_log_type_enabled(v12, v13))
  {

LABEL_14:
    v24 = v0[25];
    v25 = v0[23];
    v129 = *(v0[24] + 216);
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
    v29 = OUTLINED_FUNCTION_33_1();
    __swift_storeEnumTagSinglePayload(v29, v30, 1, v24);
    sub_2682EBBF4(v25);
    sub_2683CC528();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    sub_2683CED08();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    sub_2683CC1D8();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2683D2250;
    *(v43 + 32) = v11;
    v44 = v11;
    sub_2683CC108();
    v45 = MEMORY[0x277D84F90];
    v127 = v43;
    if (sub_2683ABE58())
    {
      sub_2683ABE60();
      if (v45 >> 62)
      {
        v46 = MEMORY[0x26D616C90](0, MEMORY[0x277D84F90]);
      }

      else
      {
        v46 = *(v45 + 32);
      }

      v47 = v46;
      v48 = [v46 catId];

      v121 = sub_2683CFA78();
      v126 = v49;
    }

    else
    {
      v121 = 0;
      v126 = 0;
    }

    v50 = v0[49];
    v52 = v0[46];
    v51 = v0[47];
    v54 = v0[40];
    v53 = v0[41];
    v113 = v0[39];
    v114 = v0[38];
    v116 = v0[37];
    v55 = v0[34];
    v56 = v0[35];
    v111 = v0[33];
    v112 = v0[36];
    v118 = v0[32];
    v119 = v50;
    v122 = v0[25];
    v124 = v0[45];
    sub_26818F510(v0[48], v51, &qword_28024E770, &qword_2683D80D0);
    sub_26818F510(v50, v52, &qword_28024E770, &qword_2683D80D0);
    v57 = *(v54 + 80);
    v58 = (v57 + 24) & ~v57;
    v59 = (v53 + v57 + v58) & ~v57;
    v60 = swift_allocObject();
    v0[55] = v60;
    *(v60 + 16) = v129;
    sub_2681430AC(v51, v60 + v58);
    sub_2681430AC(v52, v60 + v59);
    (*(v55 + 16))(v56, v112, v111);
    v61 = swift_task_alloc();
    v69 = OUTLINED_FUNCTION_66_0(v61, v62, v63, v64, v65, v66, v67, v68, v110, v111, v112, v113, v114, v116, v118, v119, v121, v122, v124, v126);
    *(v69 + 64) = 514;
    *(v69 + 72) = sub_2681B303C;
    *(v69 + 80) = v60;
    *(v69 + 88) = v127;
    *(v69 + 96) = v115;
    *(v69 + 104) = 2;
    *(v69 + 112) = v117;

    sub_2683CC8E8();

    sub_26818F510(v120, v125, &qword_28024E770, &qword_2683D80D0);
    if (__swift_getEnumTagSinglePayload(v125, 1, v123) == 1)
    {
      v70 = v0 + 45;
    }

    else
    {
      sub_26814320C(v0[45], v0[29]);
      v71 = OUTLINED_FUNCTION_41_0();
      sub_26818F510(v71, v72, v73, v74);
      if (OUTLINED_FUNCTION_88_0() != 1)
      {
        v93 = v0[25];
        sub_26814320C(v0[44], v0[28]);
        v0[15] = v93;
        v94 = sub_268143270();
        v0[16] = v94;
        __swift_allocate_boxed_opaque_existential_0(v0 + 12);
        v95 = OUTLINED_FUNCTION_56_1();
        sub_2681432C8(v95, v96);
        v0[20] = v93;
        v0[21] = v94;
        __swift_allocate_boxed_opaque_existential_0(v0 + 17);
        v97 = OUTLINED_FUNCTION_92_0();
        sub_2681432C8(v97, v98);
        OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD30]);
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[56] = v99;
        *v99 = v100;
        v99[1] = sub_2681A80E0;
        OUTLINED_FUNCTION_72_0();

        __asm { BR              X5 }
      }

      v70 = v0 + 44;
      sub_26814332C(v0[29]);
    }

    OUTLINED_FUNCTION_130_0(*v70);
    v75 = OUTLINED_FUNCTION_41_0();
    sub_26818F510(v75, v76, &qword_28024E770, &qword_2683D80D0);
    v77 = OUTLINED_FUNCTION_88_0();
    v78 = v0[43];
    v79 = v0[25];
    if (v77 == 1)
    {
      OUTLINED_FUNCTION_130_0(v78);
      v80 = OUTLINED_FUNCTION_30_5();
      sub_26818F510(v80, v81, v82, &qword_2683D80D0);
      v83 = OUTLINED_FUNCTION_33_1();
      if (__swift_getEnumTagSinglePayload(v83, v84, v79) == 1)
      {
        sub_2681433DC(v0[42], &qword_28024E770, &qword_2683D80D0);
        OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD50]);
        swift_task_alloc();
        OUTLINED_FUNCTION_10_2();
        v0[59] = v85;
        *v85 = v86;
        v85[1] = sub_2681A88AC;
        OUTLINED_FUNCTION_72_0();

        __asm { BR              X3 }
      }

      v103 = v0[25];
      sub_26814320C(v0[42], v0[26]);
      v0[5] = v103;
      v0[6] = sub_268143270();
      __swift_allocate_boxed_opaque_existential_0(v0 + 2);
      v104 = OUTLINED_FUNCTION_56_1();
      sub_2681432C8(v104, v105);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD40]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[58] = v106;
      *v106 = v107;
      v106[1] = sub_2681A8620;
    }

    else
    {
      sub_26814320C(v78, v0[27]);
      v0[10] = v79;
      v0[11] = sub_268143270();
      __swift_allocate_boxed_opaque_existential_0(v0 + 7);
      v89 = OUTLINED_FUNCTION_92_0();
      sub_2681432C8(v89, v90);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD38]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[57] = v91;
      *v91 = v92;
      v91[1] = sub_2681A8394;
    }

    OUTLINED_FUNCTION_72_0();

    __asm { BR              X4 }
  }

  OUTLINED_FUNCTION_87_0();
  v14 = swift_slowAlloc();
  OUTLINED_FUNCTION_86_0();
  v15 = swift_slowAlloc();
  v130 = v15;
  *v14 = 136315138;
  v16 = [v11 punchOutUri];
  v128 = v11;

  if (v16)
  {
    v17 = v0[51];
    v18 = v0[52];
    v19 = v0[50];
    sub_2683CB3E8();

    v20 = sub_2683CB3A8();
    v22 = v21;
    (*(v17 + 8))(v18, v19);
    v23 = sub_2681610A0(v20, v22, &v130);

    *(v14 + 4) = v23;
    _os_log_impl(&dword_2680EB000, v12, v13, "[SFNI HandleIntentStrategy] Sending punchout to %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();

    v11 = v128;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2681A80E0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681A81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v49 = v24[49];
  v25 = v24[34];
  v26 = v24[31];
  v28 = v24[29];
  v27 = v24[30];
  v29 = v24[28];

  sub_26814332C(v29);
  sub_26814332C(v28);
  v30 = OUTLINED_FUNCTION_32_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  v34 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v34, v35, v36);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v37, v38, v39);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v29, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26 + 8, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v49, a22, a23, a24);
}

uint64_t sub_2681A8394()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681A8478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_81();
  v29 = *(v25 + 216);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_32_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  v34 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v34, v35, v36);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v37, v38, v39);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681A8620()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681A8704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_81();
  v29 = *(v25 + 208);

  sub_26814332C(v29);
  v30 = OUTLINED_FUNCTION_32_3();
  v31(v30);
  v32 = OUTLINED_FUNCTION_74_0();
  v33(v32);
  v34 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v34, v35, v36);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v37, v38, v39);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v28 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v24, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681A88AC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681A8990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_82_0();
  v26 = v24[49];
  v27 = v24[31];
  v28 = v24[30];

  v29 = OUTLINED_FUNCTION_32_3();
  v30(v29);
  v31 = OUTLINED_FUNCTION_74_0();
  v32(v31);
  v33 = OUTLINED_FUNCTION_30_5();
  sub_2681433DC(v33, v34, v35);
  OUTLINED_FUNCTION_55_1();
  sub_2681433DC(v36, v37, v38);
  OUTLINED_FUNCTION_4_17();
  sub_2681433DC(v27 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v26, &qword_28024D400, &qword_2683D2460);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_24_3();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2681A8B40(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v3[30] = type metadata accessor for Snippet(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v5 = sub_2683CC9A8();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_2683CC138();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  v3[44] = swift_task_alloc();
  v7 = sub_2683CB528();
  v3[45] = v7;
  v3[46] = *(v7 - 8);
  v3[47] = swift_task_alloc();
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0) - 8);
  v3[48] = v8;
  v3[49] = *(v8 + 64);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v9 = swift_task_alloc();
  v3[58] = v9;
  *v9 = v3;
  v9[1] = sub_2681A8EC0;

  return sub_2681AB040(a2);
}

uint64_t sub_2681A8EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_42();
  v25 = v24;
  OUTLINED_FUNCTION_2_0();
  *v26 = v25;
  v27 = *v23;
  *v26 = v27;
  v25[59] = v28;

  if (v22)
  {
    v40 = v22;
    a10 = v25[44];
    a11 = v25[43];
    a12 = v25[42];
    a13 = v25[41];
    a14 = v25[40];
    a15 = v25[37];
    a16 = v25[34];
    a17 = v25[33];
    a18 = v25[32];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_48_3();
  }

  else
  {
    OUTLINED_FUNCTION_8_14(&qword_2683DD890);
    v40 = v37;
    v38 = swift_task_alloc();
    v25[60] = v38;
    *v38 = v27;
    v38[1] = sub_2681A910C;
    OUTLINED_FUNCTION_39_4(v25[28]);
    OUTLINED_FUNCTION_48_3();
  }

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v40, a20, a21, a22);
}

uint64_t sub_2681A910C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

void sub_2681A91F0()
{
  v1 = v0[29];
  __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC848();
  v3 = sub_2683CC818();
  OUTLINED_FUNCTION_19_2();
  sub_26832A218();
  v5 = v4;

  if (v5)
  {
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    v11 = v0[46];
    v10 = v0[47];
    v12 = v0[45];
    __swift_project_boxed_opaque_existential_1((v1 + 224), *(v1 + 248));
    sub_2683CB508();
    sub_268335558();
    (*(v11 + 8))(v10, v12);
  }

  v14 = v0[46];
  v13 = v0[47];
  v15 = v0[45];
  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[28];
  sub_2683CB508();
  v19 = sub_2681A4078();
  (*(v14 + 8))(v13, v15, v19);
  v120 = v17[27];
  v20 = 1;
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  sub_2682EBBF4(v18);
  sub_2683CC528();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  __swift_project_boxed_opaque_existential_1(v17 + 2, v17[5]);
  OUTLINED_FUNCTION_19_2();
  v28 = sub_2683CC0B8();
  if (v5)
  {
    sub_2683CECD8();
    v20 = 0;
  }

  v29 = v0[59];
  v30 = v0[43];
  v31 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v30, v20, 1, v31);
  v119 = v28 & 1;
  sub_2683CC1D8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_2683CC108();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v36 = swift_allocObject();
  v0[61] = v36;
  *(v36 + 16) = xmmword_2683D2250;
  *(v36 + 32) = v29;
  v37 = v29;
  if (sub_2683ABE58())
  {
    sub_2683ABE60();
    if ((v36 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x26D616C90](0, v36);
    }

    else
    {
      v38 = *(v36 + 32);
    }

    v39 = v38;
    v40 = [v38 catId];

    v113 = sub_2683CFA78();
    v118 = v41;
  }

  else
  {
    v113 = 0;
    v118 = 0;
  }

  v42 = v0[57];
  v44 = v0[54];
  v43 = v0[55];
  v46 = v0[48];
  v45 = v0[49];
  v105 = v0[44];
  v106 = v0[43];
  v108 = v0[42];
  v47 = v0[39];
  v48 = v0[40];
  v103 = v0[38];
  v104 = v0[41];
  v110 = v0[37];
  v111 = v42;
  v114 = v0[30];
  v116 = v0[53];
  sub_26818F510(v0[56], v43, &qword_28024E770, &qword_2683D80D0);
  sub_26818F510(v42, v44, &qword_28024E770, &qword_2683D80D0);
  v49 = *(v46 + 80);
  v50 = (v49 + 24) & ~v49;
  v51 = (v45 + v49 + v50) & ~v49;
  v52 = swift_allocObject();
  v0[62] = v52;
  *(v52 + 16) = v120;
  sub_2681430AC(v43, v52 + v50);
  sub_2681430AC(v44, v52 + v51);
  (*(v47 + 16))(v48, v104, v103);
  v53 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_66_0(v53, v54, v55, v56, v57, v58, v59, v60, v102, v103, v104, v105, v106, v108, v110, v111, v113, v114, v116, v118);
  *(v61 + 64) = 2;
  *(v61 + 65) = v119;
  *(v61 + 72) = sub_2681B5854;
  *(v61 + 80) = v52;
  *(v61 + 88) = 0;
  *(v61 + 96) = v107;
  *(v61 + 104) = 2;
  *(v61 + 112) = v109;

  sub_2683CC8E8();

  sub_26818F510(v112, v117, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v117, 1, v115) == 1)
  {
    v62 = v0 + 53;
  }

  else
  {
    sub_26814320C(v0[53], v0[34]);
    v63 = OUTLINED_FUNCTION_41_0();
    sub_26818F510(v63, v64, v65, v66);
    if (OUTLINED_FUNCTION_88_0() != 1)
    {
      v85 = v0[30];
      sub_26814320C(v0[52], v0[33]);
      v0[20] = v85;
      v86 = sub_268143270();
      v0[21] = v86;
      __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      v87 = OUTLINED_FUNCTION_56_1();
      sub_2681432C8(v87, v88);
      v0[25] = v85;
      v0[26] = v86;
      __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      v89 = OUTLINED_FUNCTION_92_0();
      sub_2681432C8(v89, v90);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD30]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[63] = v91;
      *v91 = v92;
      v91[1] = sub_2681A9998;
      OUTLINED_FUNCTION_72_0();

      __asm { BR              X5 }
    }

    v62 = v0 + 52;
    sub_26814332C(v0[34]);
  }

  OUTLINED_FUNCTION_130_0(*v62);
  v67 = OUTLINED_FUNCTION_41_0();
  sub_26818F510(v67, v68, &qword_28024E770, &qword_2683D80D0);
  v69 = OUTLINED_FUNCTION_88_0();
  v70 = v0[51];
  v71 = v0[30];
  if (v69 == 1)
  {
    OUTLINED_FUNCTION_130_0(v70);
    v72 = OUTLINED_FUNCTION_30_5();
    sub_26818F510(v72, v73, v74, &qword_2683D80D0);
    v75 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v75, v76, v71) == 1)
    {
      sub_2681433DC(v0[50], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD50]);
      swift_task_alloc();
      OUTLINED_FUNCTION_10_2();
      v0[66] = v77;
      *v77 = v78;
      v77[1] = sub_2681AA218;
      OUTLINED_FUNCTION_72_0();

      __asm { BR              X3 }
    }

    v95 = v0[30];
    sub_26814320C(v0[50], v0[31]);
    v0[10] = v95;
    v0[11] = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    v96 = OUTLINED_FUNCTION_56_1();
    sub_2681432C8(v96, v97);
    OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD40]);
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[65] = v98;
    *v98 = v99;
    v98[1] = sub_2681A9F48;
  }

  else
  {
    sub_26814320C(v70, v0[32]);
    v0[15] = v71;
    v0[16] = sub_268143270();
    __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    v81 = OUTLINED_FUNCTION_92_0();
    sub_2681432C8(v81, v82);
    OUTLINED_FUNCTION_8_14(MEMORY[0x277D5BD38]);
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v0[64] = v83;
    *v83 = v84;
    v83[1] = sub_2681A9C78;
  }

  OUTLINED_FUNCTION_72_0();

  __asm { BR              X4 }
}

uint64_t sub_2681A9998()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681A9AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v24 = v23[39];
  v26 = v23[36];
  v25 = v23[37];
  v28 = v23[34];
  v27 = v23[35];
  v29 = v23[33];

  sub_26814332C(v29);
  sub_26814332C(v28);
  v30 = OUTLINED_FUNCTION_19_2();
  v31(v30);
  v32 = OUTLINED_FUNCTION_55_0();
  v33(v32);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v24 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v26 + 8, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v25, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681A9C78()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681A9D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v26 = v23[36];
  v25 = v23[37];
  v27 = v23[35];
  v28 = v23[32];

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_19_2();
  v30(v29);
  v31 = OUTLINED_FUNCTION_55_0();
  v32(v31);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v26 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v25, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681A9F48()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_2_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681AA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v26 = v23[36];
  v25 = v23[37];
  v27 = v23[35];
  v28 = v23[31];

  sub_26814332C(v28);
  v29 = OUTLINED_FUNCTION_19_2();
  v30(v29);
  v31 = OUTLINED_FUNCTION_55_0();
  v32(v31);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v26 + 8, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v24, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC((v23 + 2), &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v25, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681AA218()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681AA318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_60_0();
  v26 = *(v23 + 296);
  v27 = *(v23 + 280);

  v28 = OUTLINED_FUNCTION_19_2();
  v29(v28);
  v30 = OUTLINED_FUNCTION_55_0();
  v31(v30);
  sub_2681433DC(v22, &qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_5_14();
  sub_2681433DC(v24, &unk_28024E760, &unk_2683D2BF0);
  sub_2681433DC(v25, &qword_28024D588, &unk_2683D8DB0);
  sub_2681433DC(v22, &qword_28024D400, &qword_2683D2460);

  sub_2681433DC(v23 + 16, &qword_28024E7B8, &unk_2683D80E0);
  sub_2681433DC(v26, &qword_28024E770, &qword_2683D80D0);

  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_48_3();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2681AA4DC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[5] = OUTLINED_FUNCTION_55();
  v1[6] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2681AA574(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC848();
  v1[7] = v2;
  v3 = sub_2683CC818();
  v1[8] = v3;
  sub_268185828();
  sub_2682E5D30(v3);
  v4 = [v2 title];
  if (v4)
  {
    v5 = v4;
    v7 = v1[5];
    v6 = v1[6];
    sub_2683CFEA8();

    v8 = sub_2683CF168();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    OUTLINED_FUNCTION_23_0();
    (*(v12 + 32))(v6, v7, v8);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  }

  else
  {
    v16 = sub_2683CF168();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    sub_268176AD8(v2);
    if (v20)
    {
      sub_2683CFB38();
    }

    OUTLINED_FUNCTION_103_0(v1[6]);
    if (!v21)
    {
      sub_2681433DC(v1[5], &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  v22 = sub_268229348();

  v23 = sub_268229348();

  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    sub_268185F90();
    if (v25)
    {
      sub_268229348();
      OUTLINED_FUNCTION_97_0();
    }

    v26 = OUTLINED_FUNCTION_18_10();
    sub_2681AB7CC(v26, v27);
    v28 = OUTLINED_FUNCTION_18_10();
    sub_2681AB868(v28, v29);
    v30 = OUTLINED_FUNCTION_18_10();
    sub_2681AB8F8(v30);
    [v2 status];
    [v2 dateSearchType];
    [v2 taskPriority];
    sub_26818598C();
    sub_268185F40();
    sub_268185F40();
    v41 = sub_26818598C();
    OUTLINED_FUNCTION_102_0();
    if ((OUTLINED_FUNCTION_102_0() & 4) != 0)
    {
      OUTLINED_FUNCTION_102_0();
    }

    v31 = [v2 dateTime];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 allDay];

      if (v33)
      {
        [v33 BOOLValue];
      }
    }

    sub_2683CF138();
    v34 = sub_2683CC828();
    v1[9] = sub_26818F730(v34);
    v35 = [v2 dateTime];
    if (v35)
    {
      v36 = v35;
      v37 = sub_2683608FC();
    }

    else
    {
      v37 = 0;
    }

    v1[10] = v37;
    swift_task_alloc();
    OUTLINED_FUNCTION_10_2();
    v1[11] = v38;
    *v38 = v39;
    v38[1] = sub_2681AA9E4;
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_133();

    return sub_26819E9AC();
  }

  return result;
}

uint64_t sub_2681AA9E4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681AAB1C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  sub_2681433DC(v2, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_7_4();

  return v3();
}

uint64_t sub_2681AABAC()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  sub_2681433DC(v2, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681AAC40(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AAC54()
{
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v1 = sub_2683CC818();
  v2 = sub_26818598C();

  v3 = sub_2683CC818();
  v4 = sub_268185F40();

  if (v4 >= v2)
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v10 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v10, qword_28027C958);
    v7 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (!OUTLINED_FUNCTION_43(v11))
    {
      goto LABEL_14;
    }

    v9 = "[SFNI HandleIntentStrategy] Not creating see all in app button, total count is less than display threshold";
    goto LABEL_13;
  }

  v5 = v0[3];
  v4 = *(v5 + 40);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v4);
  OUTLINED_FUNCTION_55_0();
  if (sub_2683CC0B8() & 1) != 0 || (v4 = *(v5 + 40), __swift_project_boxed_opaque_existential_1((v5 + 16), v4), OUTLINED_FUNCTION_55_0(), (sub_2683CC0D8()) || (v4 = *(v5 + 40), __swift_project_boxed_opaque_existential_1((v5 + 16), v4), OUTLINED_FUNCTION_55_0(), (sub_2683CC0C8()))
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v6 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v6, qword_28027C958);
    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE98();
    if (!OUTLINED_FUNCTION_43(v8))
    {
      goto LABEL_14;
    }

    v9 = "[SFNI HandleIntentStrategy] Not creating see all in app button, button not supported on platform";
LABEL_13:
    v12 = OUTLINED_FUNCTION_21_5();
    *v12 = 0;
    _os_log_impl(&dword_2680EB000, v7, v4, v9, v12, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
LABEL_14:

    OUTLINED_FUNCTION_37();

    return v13(0);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_25();
    swift_once();
  }

  v15 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v15, qword_28027C958);
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_43(v17))
  {
    v18 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v18);
    OUTLINED_FUNCTION_29();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_31_5();
    MEMORY[0x26D617A40]();
  }

  v24 = v0[3];

  __swift_project_boxed_opaque_existential_1((v24 + 96), *(v24 + 120));
  v25 = swift_task_alloc();
  v0[4] = v25;
  *v25 = v0;
  v25[1] = sub_2681AAF58;
  OUTLINED_FUNCTION_39_4(v0[2]);

  return sub_2681C482C();
}

uint64_t sub_2681AAF58()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681AB040(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681AB0E8);
}

uint64_t sub_2681AB0E8(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAA0, &qword_2683D4370);
  v2 = sub_2683CC848();
  v1[6] = v2;
  v3 = sub_2683CC818();
  v1[7] = v3;
  sub_268185828();
  sub_2682E5D30(v3);
  v4 = [v2 title];
  if (v4)
  {
    v5 = v4;
    v7 = v1[4];
    v6 = v1[5];
    sub_2683CFEA8();

    v8 = sub_2683CF168();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
    OUTLINED_FUNCTION_23_0();
    (*(v12 + 32))(v6, v7, v8);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  }

  else
  {
    v16 = sub_2683CF168();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
    sub_268176AD8(v2);
    if (v20)
    {
      sub_2683CFB38();
    }

    OUTLINED_FUNCTION_103_0(v1[5]);
    if (!v21)
    {
      sub_2681433DC(v1[4], &unk_28024E7C0, &unk_2683D6CA0);
    }
  }

  v22 = sub_268229348();

  v23 = sub_268229348();

  if (__OFADD__(v22, v23))
  {
    __break(1u);
  }

  else
  {
    sub_268185F90();
    if (v25)
    {
      sub_268229348();
      OUTLINED_FUNCTION_97_0();
    }

    v26 = OUTLINED_FUNCTION_18_10();
    sub_2681AB7CC(v26, v27);
    v28 = OUTLINED_FUNCTION_18_10();
    sub_2681AB868(v28, v29);
    v30 = OUTLINED_FUNCTION_18_10();
    sub_2681AB8F8(v30);
    [v2 status];
    [v2 dateSearchType];
    [v2 taskPriority];
    sub_26818598C();
    sub_268185F40();
    sub_268185F40();
    sub_26818598C();
    OUTLINED_FUNCTION_102_0();
    if ((OUTLINED_FUNCTION_102_0() & 4) != 0)
    {
      OUTLINED_FUNCTION_102_0();
    }

    v31 = [v2 dateTime];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 allDay];

      if (v33)
      {
        [v33 BOOLValue];
      }
    }

    sub_2683CF138();
    v34 = sub_2683CC828();
    v1[8] = sub_26818F730(v34);
    v35 = [v2 dateTime];
    if (v35)
    {
      v36 = v35;
      v37 = sub_2683608FC();
    }

    else
    {
      v37 = 0;
    }

    v1[9] = v37;
    v38 = swift_task_alloc();
    v39 = OUTLINED_FUNCTION_83_0(v38);
    *v39 = v40;
    v39[1] = sub_2681AB54C;
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_39_4(v41);
    OUTLINED_FUNCTION_133();

    return sub_2681FF57C();
  }

  return result;
}

uint64_t sub_2681AB54C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v3;
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2681AB6A0()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_2681433DC(v2, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_37();
  v4 = *(v0 + 96);

  return v3(v4);
}

uint64_t sub_2681AB738()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_2681433DC(v2, &unk_28024E7C0, &unk_2683D6CA0);

  OUTLINED_FUNCTION_40();

  return v3();
}

BOOL sub_2681AB7CC(uint64_t a1, void *a2)
{
  v3 = sub_2682E5CA0(a2);
  v4 = v3;
  if (v3)
  {
    v5 = sub_268229348();

    v4 = v5 == 1;
  }

  sub_2682E5FA4(a2);
  if (v4)
  {
    v6 = sub_268229348();

    return v6 == 0;
  }

  else
  {

    return 0;
  }
}

BOOL sub_2681AB868(void *a1, void *a2)
{
  sub_2682E5D30(a2);
  v3 = sub_26818598C();
  if (v3 < 1)
  {

    return [a1 itemType] == 1;
  }

  else
  {
    v4 = v3;
    v5 = sub_268229348();

    return v4 == v5;
  }
}

BOOL sub_2681AB8F8(void *a1)
{
  sub_268185828();
  v2 = sub_26818598C();
  if (v2 < 1)
  {

    return [a1 itemType] == 3;
  }

  else
  {
    v3 = v2;
    v4 = sub_268229348();

    return v3 == v4;
  }
}

uint64_t sub_2681AB978(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AB990()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 136), *(*(v0 + 32) + 160));
  v1 = OUTLINED_FUNCTION_9_0();
  sub_2682B28A0(v1, v2);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_2681ABA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_268133EC8;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2681ABACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_2681ABB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_2681ABC54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2681A5880();
}

uint64_t sub_2681ABCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_2681ABDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_2681ABE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2681ABF48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_2681AB978(a1, a2);
}

unint64_t sub_2681ABFF0()
{
  result = qword_28024E720;
  if (!qword_28024E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024E720);
  }

  return result;
}

void *sub_2681AC098()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v31 = *v0;
  v25 = *(v31 + 16);
  v4 = (v31 + 48);
  while (v25 != v2)
  {
    v5 = *(v4 - 2);
    v6 = *(v4 - 1);
    v27 = v4;
    v28 = v2;
    v7 = *v4;
    v9 = v1[2];
    v8 = v1[3];
    v26 = v3;
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      sub_2681B4774(v5, v6, v7);
      sub_2681B4C18(v9, v8);
      *(v10 + 32) = v9(v2);
      *(v10 + 40) = v11;
      sub_268128194(v9, v8);
    }

    else
    {
      sub_2681B4774(v5, v6, v7);
      v10 = MEMORY[0x277D84F90];
    }

    v30 = v1[1];
    v29[0] = v7;
    v12 = swift_allocObject();
    v13 = *(v1 + 1);
    *(v12 + 16) = *v1;
    *(v12 + 32) = v13;
    *(v12 + 48) = *(v1 + 2);
    *(v12 + 64) = v5;
    *(v12 + 72) = v6;
    *(v12 + 80) = v29[0];
    v14 = swift_allocObject();
    v14[2] = v10;
    v14[3] = &unk_2683D8188;
    v14[4] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2683D1EC0;
    *(v15 + 32) = &unk_2683D8198;
    *(v15 + 40) = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    sub_2681B4C18(v9, v8);
    sub_26818F510(&v31, v29, &qword_28024E820, &qword_2683D81A8);
    sub_26818F510(&v30, v29, &qword_28024E828, &unk_2683D81B0);

    sub_2681B4774(v5, v6, v7);

    v3 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v26 + 16) + 1, 1, v26);
      v3 = v20;
    }

    v18 = *(v3 + 16);
    v17 = *(v3 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2682E511C(v17 > 1, v18 + 1, 1, v3);
      v3 = v21;
    }

    sub_2681B4940(v5, v6, v7);
    *(v3 + 16) = v18 + 1;
    v19 = v3 + 16 * v18;
    *(v19 + 32) = &unk_2683D81A0;
    *(v19 + 40) = v16;
    v4 = v27 + 24;
    v2 = v28 + 1;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2683D1EC0;
  *(v23 + 32) = &unk_2683D81C0;
  *(v23 + 40) = v22;
  *(swift_allocObject() + 16) = v23;
  return &unk_2683D81C8;
}

void *sub_2681AC418()
{
  v1 = v0;
  v2 = v0[1];
  v29[0] = *v0;
  v29[1] = v2;
  v3 = v2;
  v27 = *(&v2 + 1) >> 1;
  result = swift_unknownObjectRetain();
  v5 = 0;
  v26 = *(&v29[0] + 1) + 8 * v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!(v3 - (*(&v3 + 1) >> 1) + v5))
    {
      sub_2681433DC(v29, &unk_28024E8A0, &qword_2683D83A0);
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2683D1EC0;
      *(v25 + 32) = &unk_2683D83A8;
      *(v25 + 40) = v24;
      *(swift_allocObject() + 16) = v25;
      return &unk_2683D83B0;
    }

    if (v3 + v5 >= v27)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v26 + 8 * v5);
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      v11 = v7;
      sub_2681B4C18(v8, v9);
      *(v10 + 32) = v8(v5);
      *(v10 + 40) = v12;
      sub_268128194(v8, v9);
    }

    else
    {
      v13 = v7;
      v10 = MEMORY[0x277D84F90];
    }

    v14 = swift_allocObject();
    memcpy((v14 + 16), v1, 0x48uLL);
    *(v14 + 88) = v7;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D8380;
    v15[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D8388;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_26818F510(v1, v28, &qword_28024E898, &qword_2683D8398);
    v18 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v22;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
      v6 = v23;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = &unk_2683D8390;
    *(v21 + 40) = v17;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_2681AC75C()
{
  v1 = v0;
  v2 = v0[1];
  v29[0] = *v0;
  v29[1] = v2;
  v3 = v2;
  v27 = *(&v2 + 1) >> 1;
  result = swift_unknownObjectRetain();
  v5 = 0;
  v26 = *(&v29[0] + 1) + 8 * v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!(v3 - (*(&v3 + 1) >> 1) + v5))
    {
      sub_2681433DC(v29, &qword_28024E890, &unk_2683D82F0);
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2683D1EC0;
      *(v25 + 32) = &unk_2683F1CF0;
      *(v25 + 40) = v24;
      *(swift_allocObject() + 16) = v25;
      return &unk_2683D8300;
    }

    if (v3 + v5 >= v27)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v26 + 8 * v5);
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      v11 = v7;
      sub_2681B4C18(v8, v9);
      *(v10 + 32) = v8(v5);
      *(v10 + 40) = v12;
      sub_268128194(v8, v9);
    }

    else
    {
      v13 = v7;
      v10 = MEMORY[0x277D84F90];
    }

    v14 = swift_allocObject();
    memcpy((v14 + 16), v1, 0x48uLL);
    *(v14 + 88) = v7;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D82D0;
    v15[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D82D8;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_26818F510(v1, v28, &qword_28024E888, &qword_2683D82E8);
    v18 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v22;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
      v6 = v23;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = &unk_2683D82E0;
    *(v21 + 40) = v17;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *sub_2681ACAA0()
{
  v1 = v0;
  v2 = v0[1];
  v29[0] = *v0;
  v29[1] = v2;
  v3 = v2;
  v27 = *(&v2 + 1) >> 1;
  result = swift_unknownObjectRetain();
  v5 = 0;
  v26 = *(&v29[0] + 1) + 8 * v3;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (!(v3 - (*(&v3 + 1) >> 1) + v5))
    {
      sub_2681433DC(v29, &qword_28024E880, &qword_2683D8260);
      v24 = swift_allocObject();
      *(v24 + 16) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_2683D1EC0;
      *(v25 + 32) = &unk_2683D8268;
      *(v25 + 40) = v24;
      *(swift_allocObject() + 16) = v25;
      return &unk_2683D8270;
    }

    if (v3 + v5 >= v27)
    {
      break;
    }

    if (__OFADD__(v5, 1))
    {
      goto LABEL_15;
    }

    v7 = *(v26 + 8 * v5);
    v8 = v1[5];
    if (v8)
    {
      v9 = v1[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_2683D1EC0;
      v11 = v7;
      sub_2681B4C18(v8, v9);
      *(v10 + 32) = v8(v5);
      *(v10 + 40) = v12;
      sub_268128194(v8, v9);
    }

    else
    {
      v13 = v7;
      v10 = MEMORY[0x277D84F90];
    }

    v14 = swift_allocObject();
    memcpy((v14 + 16), v1, 0x48uLL);
    *(v14 + 88) = v7;
    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = &unk_2683D8240;
    v15[4] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2683D1EC0;
    *(v16 + 32) = &unk_2683D8248;
    *(v16 + 40) = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_26818F510(v1, v28, &qword_28024E878, &qword_2683D8258);
    v18 = v7;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v6 + 16) + 1, 1, v6);
      v6 = v22;
    }

    v20 = *(v6 + 16);
    v19 = *(v6 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_2682E511C(v19 > 1, v20 + 1, 1, v6);
      v6 = v23;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = &unk_2683D8250;
    *(v21 + 40) = v17;
    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

id sub_2681ACDE4()
{
  v1 = v0;
  v2 = *v0;
  result = sub_2683ABE58();
  v4 = 0;
  v26 = v2 & 0xC000000000000001;
  v27 = result;
  v5 = MEMORY[0x277D84F90];
  v25 = v2 & 0xFFFFFFFFFFFFFF8;
  v24 = v2;
  while (1)
  {
    if (v27 == v4)
    {
      v22 = swift_allocObject();
      *(v22 + 16) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2683D1EC0;
      *(v23 + 32) = &unk_2683D8348;
      *(v23 + 40) = v22;
      *(swift_allocObject() + 16) = v23;
      return &unk_2683D8350;
    }

    if (v26)
    {
      result = MEMORY[0x26D616C90](v4, v2);
    }

    else
    {
      if (v4 >= *(v25 + 16))
      {
        goto LABEL_18;
      }

      result = *(v2 + 8 * v4 + 32);
    }

    v6 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v8 = v1[2];
    v7 = v1[3];
    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E830, &unk_2683E65B0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_2683D1EC0;

      *(v9 + 32) = v8(v4);
      *(v9 + 40) = v10;
      sub_268128194(v8, v7);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v29 = v1[1];
    v11 = swift_allocObject();
    v12 = *(v1 + 1);
    *(v11 + 16) = *v1;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(v1 + 2);
    *(v11 + 64) = v6;
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = &unk_2683D8330;
    v13[4] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2683D1EC0;
    *(v14 + 32) = &unk_2683D8338;
    *(v14 + 40) = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    sub_2681B4C18(v8, v7);
    v2 = v24;

    sub_26818F510(&v29, v28, &qword_28024E828, &unk_2683D81B0);

    v16 = v6;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E511C(0, *(v5 + 16) + 1, 1, v5);
      v5 = v20;
    }

    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2682E511C(v17 > 1, v18 + 1, 1, v5);
      v5 = v21;
    }

    *(v5 + 16) = v18 + 1;
    v19 = v5 + 16 * v18;
    *(v19 + 32) = &unk_2683D8340;
    *(v19 + 40) = v15;
    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2681AD14C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(a1 + 32);
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4 & 1;
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 56) = v6;
  *v6 = v4;
  v6[1] = sub_2681AD258;

  return v8(v4 + 40, v4 + 16);
}

uint64_t sub_2681AD258()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681AD350()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D81E0;
  *(v2 + 40) = v1;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681AD444(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = (*(a1 + 56) + **(a1 + 56));
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2681AD544;

  return v5(v2 + 16, v2 + 32);
}

uint64_t sub_2681AD544()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681AD63C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D83C0;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681AD704(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = (*(a1 + 56) + **(a1 + 56));
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2681AD804;

  return v5(v2 + 16, v2 + 32);
}

uint64_t sub_2681AD804()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681AD8FC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D8310;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681AD9C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a2;
  v5 = (*(a1 + 56) + **(a1 + 56));
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_2681ADAC4;

  return v5(v2 + 16, v2 + 32);
}

uint64_t sub_2681ADAC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681ADBBC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D8280;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681ADC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  *(v2 + 32) = a2;
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_2681ADD84;

  return v6(v2 + 16, v2 + 32);
}

uint64_t sub_2681ADD84()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681ADE7C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_63_1(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = &unk_2683D8360;
  *(v2 + 40) = v0;
  OUTLINED_FUNCTION_68_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_18_12(v3);
  v4 = OUTLINED_FUNCTION_94_0();

  return v5(v4);
}

uint64_t sub_2681ADF68(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681ADF7C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[8];
  v9 = v0[7];

  sub_2682C038C(MEMORY[0x277D84F90]);
  v0[9] = v9;
  v0[5] = &unk_28790BA10;
  v0[6] = &off_28790BA28;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &unk_28790BA10);

  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_83_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_26_4(v3);
  OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_101();

  return sub_26835E928(v5, v6);
}

uint64_t sub_2681AE05C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 88) = v0;

  if (!v0)
  {
    *(v4 + 96) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681AE17C()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_2681AE1DC()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681AE238(uint64_t a1)
{
  *(v2 + 168) = a1;
  *(v2 + 176) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AE24C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 176);
  v2 = *(v1 + 40);
  v14 = *(v0 + 168);

  sub_2682C038C(v2);
  *(v0 + 184) = v14;
  *(v0 + 152) = &_s9DetailRowVN;
  *(v0 + 160) = &off_28790B800;
  OUTLINED_FUNCTION_113_0();
  v3 = swift_allocObject();
  *(v0 + 128) = v3;
  v5 = *(v1 + 16);
  v4 = *(v1 + 32);
  v6 = *v1;
  *(v3 + 64) = *(v1 + 48);
  *(v3 + 32) = v5;
  *(v3 + 48) = v4;
  *(v3 + 16) = v6;
  v7 = __swift_project_boxed_opaque_existential_1((v0 + 128), &_s9DetailRowVN);
  v9 = *(v7 + 1);
  v8 = *(v7 + 2);
  v10 = *v7;
  *(v0 + 64) = v7[6];
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  *(v0 + 16) = v10;
  sub_2681B54D4(v1, v0 + 72);
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  *v11 = v0;
  v12 = OUTLINED_FUNCTION_58_1(v11);

  return sub_26835C190(v12);
}

uint64_t sub_2681AE37C()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 200) = v0;

  if (!v0)
  {
    *(v4 + 208) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681AE49C()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 208);

  return v1(v2);
}

uint64_t sub_2681AE4FC()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 128));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681AE558()
{
  OUTLINED_FUNCTION_14();
  v0[5] = v1;
  v0[6] = v2;
  v0[4] = v3;
  v4 = sub_2683CAEA8();
  v0[7] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[8] = v5;
  v0[9] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6);
}

void sub_2681AE608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_51_2();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_52_1();
  a28 = v30;
  v33 = v30[8];
  v34 = v30[5];
  a19 = v30[4];

  v35 = MEMORY[0x277D84F90];
  sub_2682C038C(MEMORY[0x277D84F90]);
  v83 = a19;
  v30[10] = a19;
  v36 = sub_2683ABE58();
  v37 = 0;
  v38 = v34 & 0xC000000000000001;
  v87 = v34 & 0xFFFFFFFFFFFFFF8;
  v88 = v34 + 32;
  v82 = v33 + 8;
  *&v39 = 136315138;
  v84 = v39;
  v85 = v35;
  v86 = v30;
LABEL_2:
  v40 = v87;
  while (v36 != v37)
  {
    if (v38)
    {
      v41 = MEMORY[0x26D616C90](v37, v30[5]);
    }

    else
    {
      if (v37 >= *(v40 + 16))
      {
        goto LABEL_31;
      }

      v41 = *(v88 + 8 * v37);
    }

    v42 = v41;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    v44 = v43;
    if (v43)
    {
      v45 = sub_26813CCC8(v43);
      if (v46)
      {
        v30[2] = v45;
        v30[3] = v46;
        sub_2683CAE78();
        sub_26812A1AC();
        v48 = sub_2683CFFE8();
        a11 = v59;
        v60 = OUTLINED_FUNCTION_18_10();
        v61(v60);

        goto LABEL_22;
      }
    }

    else
    {
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = [v47 image];

        if (v48)
        {
          a11 = 0;
LABEL_22:
          v62 = v85;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2682E514C();
            v62 = v65;
          }

          v30 = v86;
          v63 = *(v62 + 16);
          if (v63 >= *(v62 + 24) >> 1)
          {
            sub_2682E514C();
            v62 = v66;
          }

          *(v62 + 16) = v63 + 1;
          v85 = v62;
          v64 = v62 + 24 * v63;
          *(v64 + 32) = v48;
          *(v64 + 40) = a11;
          *(v64 + 48) = v44 != 0;
          ++v37;
          goto LABEL_2;
        }
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_25();
          swift_once();
        }

        v49 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v49, qword_28027C958);

        v50 = sub_2683CF7C8();
        v51 = sub_2683CFE78();

        if (os_log_type_enabled(v50, v51))
        {
          OUTLINED_FUNCTION_87_0();
          v52 = swift_slowAlloc();
          OUTLINED_FUNCTION_86_0();
          v53 = v38;
          v54 = swift_slowAlloc();
          a19 = v54;
          *v52 = v84;
          sub_268129504(0, &qword_28024D4C0, 0x277CD3E08);
          v55 = OUTLINED_FUNCTION_92_0();
          v56 = MEMORY[0x26D6167A0](v55);
          v58 = sub_2681610A0(v56, v57, &a19);

          *(v52 + 4) = v58;
          _os_log_impl(&dword_2680EB000, v50, v51, "[CasinoCards.NoteContent] unknown noteContent type: %s", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54);
          v38 = v53;
          v30 = v86;
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
          OUTLINED_FUNCTION_31_5();
          MEMORY[0x26D617A40]();
        }

        v40 = v87;
      }
    }

    ++v37;
  }

  v68 = v30[5];
  v67 = v30[6];
  OUTLINED_FUNCTION_69_0();
  v69 = swift_allocObject();
  *(v69 + 16) = v68;
  *(v69 + 24) = v67;
  v70 = swift_allocObject();
  v70[2] = v85;
  v70[3] = MEMORY[0x277D84F90];
  v70[4] = sub_2681B4280;
  v70[5] = 0;
  v70[6] = &unk_2683D8150;
  v70[7] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_2683D1EC0;
  *(v71 + 32) = &unk_2683D8160;
  *(v71 + 40) = v70;
  OUTLINED_FUNCTION_68_0();
  v72 = swift_allocObject();
  v30[11] = v72;
  *(v72 + 16) = v71;

  v73 = swift_task_alloc();
  v30[12] = v73;
  *v73 = v30;
  v73[1] = sub_2681AEB14;
  OUTLINED_FUNCTION_48_3();

  v77(v74, v75, v76, v77, v78, v79, v80, v81, a9, v82, a11, v83, v84, *(&v84 + 1), v85, v86, v87, sub_2681AEC74, a19, a20, a21, a22);
}

uint64_t sub_2681AEB14()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2681AEC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AEC8C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v2 = v0[8];
  v1 = v0[9];
  v13 = v0[7];

  sub_2682C038C(MEMORY[0x277D84F90]);
  v0[10] = v13;
  v0[5] = &_s16AnyCardComponentVN;
  v0[6] = &off_287908C10;
  v0[2] = v2;
  v0[3] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, &_s16AnyCardComponentVN);

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_26_4(v3);
  OUTLINED_FUNCTION_101();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2681AEDCC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681AEED0()
{
  OUTLINED_FUNCTION_14();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_2681AEF38()
{
  OUTLINED_FUNCTION_14();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681AEF9C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AEFB0()
{
  OUTLINED_FUNCTION_15();
  v20 = *(v0 + 16);

  v2 = sub_2682C038C(v1);
  OUTLINED_FUNCTION_44_3(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20);
  v10 = sub_2681AC098();
  OUTLINED_FUNCTION_42_5(v10, v11);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_22(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_9_14(v13);

  return v16(v15);
}

uint64_t sub_2681AF06C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681AF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF1AC()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[6];
  v7 = v0[4];

  sub_2682C038C(v2);
  v0[8] = v7;
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  v0[9] = v3;
  *v3 = v4;
  v3[1] = sub_2681AF2C4;

  return v6(v0 + 2);
}

uint64_t sub_2681AF2C4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2681AF3C4()
{
  OUTLINED_FUNCTION_7();
  v0[11] = v0[3];
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_2681AF468;
  OUTLINED_FUNCTION_39_4(v0[8]);
  OUTLINED_FUNCTION_91_0();

  return v2();
}

uint64_t sub_2681AF468()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  v3 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2681AF598(uint64_t a1)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF5AC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[26];
  v2 = v1[7];
  v9 = v0[25];

  sub_2682C038C(v2);
  v0[27] = v9;
  v0[23] = &_s16RichTitleSectionVN;
  v0[24] = &off_2879050A8;
  v3 = swift_allocObject();
  v0[20] = v3;
  memcpy((v3 + 16), v1, 0x48uLL);
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 20, &_s16RichTitleSectionVN);
  memcpy(v0 + 2, v4, 0x48uLL);
  sub_2681B4E8C(v1, (v0 + 11));
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_58_1(v5);
  OUTLINED_FUNCTION_101();

  return sub_26820B2FC(v6);
}

uint64_t sub_2681AF6D0()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 232) = v0;

  if (!v0)
  {
    *(v4 + 240) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681AF7F0()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 240);

  return v1(v2);
}

uint64_t sub_2681AF850()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681AF8AC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF8C0()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_106_0();

  v1 = sub_2682C038C(v0);
  OUTLINED_FUNCTION_44_3(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19);
  v9 = sub_2681AC418();
  OUTLINED_FUNCTION_42_5(v9, v10);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_9_14(v12);

  return v15(v14);
}

uint64_t sub_2681AF970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AF98C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  sub_2682C038C(v5);
  v0[5] = &_s13HeaderSectionVN;
  v0[6] = &off_2878FFA70;
  OUTLINED_FUNCTION_37_4();
  v6 = swift_allocObject();
  v0[2] = v6;
  v6[2] = v3;
  v6[3] = v4;
  v6[4] = v2;
  v6[5] = v1;
  v7 = __swift_project_boxed_opaque_existential_1(v0 + 2, &_s13HeaderSectionVN)[3];

  v8 = [objc_allocWithZone(MEMORY[0x277D4C600]) init];
  v9 = sub_2683CC208();
  [v8 setText_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  OUTLINED_FUNCTION_37_4();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_41_3(v10, xmmword_2683D1EC0);
  v0[10] = sub_26816B19C;
  v0[11] = 0;
  v11 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  v12 = sub_2681B4CB8();
  v13 = OUTLINED_FUNCTION_127(v12);
  v15 = v14;

  v10[2].n128_u64[0] = v13;
  v10[2].n128_u64[1] = v15;
  sub_2681B2EE4(v10, v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  OUTLINED_FUNCTION_37_4();
  v16 = swift_allocObject();
  *(v16 + 16) = v21;
  *(v16 + 32) = sub_26839EEEC(v11, v7, MEMORY[0x277D84F90]);
  *(v16 + 40) = v17;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v18 = OUTLINED_FUNCTION_37_0();

  return v19(v18);
}

uint64_t sub_2681AFBC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFBD4()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_106_0();

  v1 = sub_2682C038C(v0);
  OUTLINED_FUNCTION_44_3(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19);
  v9 = sub_2681AC75C();
  OUTLINED_FUNCTION_42_5(v9, v10);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_9_14(v12);

  return v15(v14);
}

uint64_t sub_2681AFC84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFC98()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_106_0();

  v1 = sub_2682C038C(v0);
  OUTLINED_FUNCTION_44_3(v1, v2, v3, v4, v5, v6, v7, v8, v17, v18, v19);
  v9 = sub_2681ACAA0();
  OUTLINED_FUNCTION_42_5(v9, v10);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_22(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_9_14(v12);

  return v15(v14);
}

uint64_t sub_2681AFD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFD60()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[5];
  v15 = v0[4];

  sub_2682C038C(v2);
  v0[8] = v15;
  sub_2681861B0(v1, v0 + 2);
  v0[9] = v0[3];
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_83_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_26_4(v4);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_101();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2681AFE40()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_9();

    return v9(v8);
  }
}

uint64_t sub_2681AFFBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681AFFD0()
{
  OUTLINED_FUNCTION_15();
  v20 = *(v0 + 16);

  v2 = sub_2682C038C(v1);
  OUTLINED_FUNCTION_44_3(v2, v3, v4, v5, v6, v7, v8, v9, v18, v19, v20);
  v10 = sub_2681ACDE4();
  OUTLINED_FUNCTION_42_5(v10, v11);
  OUTLINED_FUNCTION_8_14(&dword_2683D8120);
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_22(v12);
  *v13 = v14;
  v15 = OUTLINED_FUNCTION_9_14(v13);

  return v16(v15);
}

uint64_t sub_2681B008C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B00A0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  v16 = v0[2];

  sub_2682C038C(v2);
  v0[4] = v16;
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  v8 = v1[6];
  OUTLINED_FUNCTION_113_0();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  *(v9 + 48) = v7;
  *(v9 + 56) = MEMORY[0x277D84F90];
  *(v9 + 64) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280253370, &qword_2683F1B30);
  OUTLINED_FUNCTION_37_4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2683D1EC0;
  *(v10 + 32) = &unk_2683D82A0;
  *(v10 + 40) = v9;
  OUTLINED_FUNCTION_68_0();
  v11 = swift_allocObject();
  v0[5] = v11;
  *(v11 + 16) = v10;

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_22(v12);
  *v13 = v14;
  v13[1] = sub_2681AF06C;

  return sub_2681AEC74(v16, &unk_2683D82A8, v11);
}

uint64_t sub_2681B0250(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B0264()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_15();
  v1 = v0[32];
  v2 = v1[10];
  v9 = v0[31];

  sub_2682C038C(v2);
  v0[33] = v9;
  v0[29] = &_s3RowVN;
  v0[30] = &off_28790A910;
  v3 = swift_allocObject();
  v0[26] = v3;
  memcpy((v3 + 16), v1, 0x60uLL);
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 26, &_s3RowVN);
  memcpy(v0 + 2, v4, 0x60uLL);
  sub_2681B4E30(v1, (v0 + 14));
  v5 = swift_task_alloc();
  v0[34] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_58_1(v5);
  OUTLINED_FUNCTION_101();

  return sub_268345310(v6);
}

uint64_t sub_2681B0388()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 280) = v0;

  if (!v0)
  {
    *(v4 + 288) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681B04A8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 288);

  return v1(v2);
}

uint64_t sub_2681B0508()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681B0564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B057C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v10 = v0[7];

  sub_2682C038C(MEMORY[0x277D84F90]);
  v0[11] = v10;
  v0[5] = &_s10MapItemRowVN;
  v0[6] = &off_287907498;
  v0[2] = v3;
  v0[3] = v2;
  v0[4] = v1;
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, &_s10MapItemRowVN);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  sub_26814F3C8(v3, v2);

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_26_4(v8);

  return sub_2682B1EF4(v10, v5, v6, v7);
}

uint64_t sub_2681B0698()
{
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  OUTLINED_FUNCTION_2_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v4 + 104) = v0;

  if (!v0)
  {
    *(v4 + 112) = v1;
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_20_9();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681B07B8()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_37();
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2681B0818()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681B0874(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = a4;
  *(v5 + 120) = a5;
  *(v5 + 128) = a3;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681B0890()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);

  sub_2682C038C(v2);
  *(v0 + 40) = &_s13ImagesSectionVN;
  *(v0 + 48) = &off_28790AE20;
  OUTLINED_FUNCTION_37_4();
  v5 = swift_allocObject();
  *(v0 + 16) = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 16), &_s13ImagesSectionVN);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v6[3];

  v10 = [objc_allocWithZone(MEMORY[0x277D4C3D0]) init];
  sub_2681B2F50(v7, v10);
  [v10 setBorderless_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  OUTLINED_FUNCTION_37_4();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_41_3(v11, xmmword_2683D1EC0);
  *(v0 + 80) = sub_26816B19C;
  *(v0 + 88) = 0;
  v12 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E840, &qword_2683D8200);
  v13 = sub_2681B4CB8();
  v14 = OUTLINED_FUNCTION_127(v13);
  v16 = v15;

  v11[2].n128_u64[0] = v14;
  v11[2].n128_u64[1] = v16;
  sub_2681B2EE4(v11, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E868, &qword_2683D8210);
  OUTLINED_FUNCTION_37_4();
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 32) = sub_26839EEEC(v12, v9, MEMORY[0x277D84F90]);
  *(v17 + 40) = v18;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v19 = OUTLINED_FUNCTION_37_0();

  return v20(v19);
}

uint64_t sub_2681B0AC0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_2681B422C();
  v8 = swift_allocError();
  swift_willThrow();
  v26 = v8;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
  if (swift_dynamicCast())
  {

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_25();
      swift_once();
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    swift_bridgeObjectRetain_n();
    v11 = a2;
    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE98();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_87_0();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_86_0();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v16 = sub_2683CFAD8();
      v18 = v17;

      v19 = sub_2681610A0(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v12, v13, "%{public}s.sash is unimplemented. Skipping Sash.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40](v20, v21);
      OUTLINED_FUNCTION_31_5();
      MEMORY[0x26D617A40](v22, v23);
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2681B0CF4()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 64) = v0;
  swift_task_alloc();
  OUTLINED_FUNCTION_10_2();
  *(v1 + 72) = v2;
  *v2 = v3;
  v2[1] = sub_2681B0D84;

  return sub_26833DE0C(v1 + 48);
}

uint64_t sub_2681B0D84()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    v8 = v3[6];
    v9 = v3[7];
    v3[11] = v9;
    OUTLINED_FUNCTION_8_14(&dword_2683D8120);
    v14 = v10;
    v11 = swift_task_alloc();
    v3[12] = v11;
    *v11 = v5;
    v11[1] = sub_2681B0F00;
    v12 = OUTLINED_FUNCTION_39_4(&unk_2878FB3B8);

    return v14(v12, v8, v9);
  }
}

uint64_t sub_2681B0F00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_2_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v7 + 104) = v6;
  *(v7 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2681B1018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_52_1();
  v23 = v22 + 16;
  v24 = *(v22 + 104);
  v67 = v22;
  v66 = sub_26839F0F8(v24);
  v25 = sub_2683CF258();
  v65 = sub_26839F6D0(v25, v26);

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v69 = v24 + 32;
  v70 = *(v24 + 16);
  v29 = &qword_28024E7E8;
  v68 = v24;
  while (1)
  {
    v30 = v28 >> 62;
    if (v27 == v70)
    {
      break;
    }

    if (v27 >= *(v24 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v31 = v29;
    v32 = *(v69 + 16 * v27 + 8);
    if (v32 >> 62)
    {
      v33 = sub_2683D00A8();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v30)
    {
      v34 = sub_2683D00A8();
    }

    else
    {
      v34 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v34 + v33;
    if (__OFADD__(v34, v33))
    {
      goto LABEL_40;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v30)
      {
LABEL_14:
        sub_2683D00A8();
      }

LABEL_15:
      v28 = sub_2683D01B8();
      v36 = v28 & 0xFFFFFFFFFFFFFF8;
      OUTLINED_FUNCTION_85();
      goto LABEL_16;
    }

    if (v30)
    {
      goto LABEL_14;
    }

    v36 = v28 & 0xFFFFFFFFFFFFFF8;
    OUTLINED_FUNCTION_85();
    if (v37 < v35)
    {
      goto LABEL_15;
    }

LABEL_16:
    a18 = v33;
    a19 = v27 + 1;
    v38 = *(v36 + 16);
    v39 = v37 - v38;
    v40 = v36 + 8 * v38;
    if (v32 >> 62)
    {
      v42 = sub_2683D00A8();
      if (!v42)
      {
        goto LABEL_30;
      }

      v43 = v42;
      a15 = sub_2683D00A8();
      if (v39 < a15)
      {
        goto LABEL_44;
      }

      if (v43 < 1)
      {
        goto LABEL_45;
      }

      a13 = v36;
      a14 = v28;
      v44 = v40 + 32;
      OUTLINED_FUNCTION_14_12();
      sub_2681B4DEC(&qword_28024E7F0, v29, qword_2683D8128);
      for (i = 0; i != v43; ++i)
      {
        v46 = OUTLINED_FUNCTION_41_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
        v48 = OUTLINED_FUNCTION_32_3();
        v50 = sub_2683ABDEC(v48, v49, v32);
        v52 = *v51;
        (v50)(v23, 0);
        v29 = v31;
        *(v44 + 8 * i) = v52;
      }

      v24 = v68;
      v41 = a15;
LABEL_26:

      v27 = a19;
      if (v41 < a18)
      {
        goto LABEL_41;
      }

      if (v41 > 0)
      {
        v53 = *(v36 + 16);
        v54 = __OFADD__(v53, v41);
        v55 = v53 + v41;
        if (v54)
        {
          goto LABEL_42;
        }

        *(v36 + 16) = v55;
      }
    }

    else
    {
      v41 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        if (v39 < v41)
        {
          goto LABEL_43;
        }

        sub_268129504(0, &qword_28024E7E0, 0x277D471A8);
        swift_arrayInitWithCopy();
        goto LABEL_26;
      }

LABEL_30:

      v27 = a19;
      if (a18 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  if (!v30)
  {

    sub_2683D05C8();
    goto LABEL_36;
  }

LABEL_46:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E7F8, &unk_2683F0F30);
  OUTLINED_FUNCTION_56_1();
  sub_2683D0398();

LABEL_36:

  sub_268129504(0, &unk_28024E800, 0x277D47200);
  OUTLINED_FUNCTION_33_1();
  sub_2683CFE48();
  OUTLINED_FUNCTION_9_10();

  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_48_3();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, v67, v68, a13, a14, a15, v69, v70, a18, a19, a20, a21, a22);
}