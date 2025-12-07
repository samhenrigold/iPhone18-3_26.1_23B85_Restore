void sub_2219C5CCC(uint64_t a1)
{
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_280FA9008);

  oslog = sub_221BCCD68();
  v3 = sub_221BCDA98();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_2219A6360(*(a1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(a1 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), &v7);
    _os_log_impl(&dword_221989000, oslog, v3, "[%s] Received cancellation event", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DA4C00](v5, -1, -1);
    MEMORY[0x223DA4C00](v4, -1, -1);
  }
}

void *sub_2219C5E20(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a2 + 32), *(a2 + 56));
  OUTLINED_FUNCTION_60_0();
  v3 = OUTLINED_FUNCTION_1_0();
  v5 = v4(v3);
  v7 = v6;
  if (a1)
  {
    v8 = v5;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    sub_221BB8ED4(a1, sub_2219EC5F4, v9);
    a1 = v10;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_2219C5ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = v3;
  *(v4 + 112) = a1;
  *(v4 + 168) = *a3;
  *(v4 + 136) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219C5EFC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *(v0 + 56) = *v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v5;
  *(v0 + 80) = v4;
  *(v0 + 88) = v1;
  *(v0 + 96) = *(v0 + 136);

  v6 = OUTLINED_FUNCTION_70();
  sub_221998178(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 152) = v8;
  *v8 = v9;
  v8[1] = sub_2219C5FD0;
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_253();

  return sub_2219C62A4(v10, v11, v12, v13);
}

uint64_t sub_2219C5FD0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 160) = v0;

  v7 = OUTLINED_FUNCTION_70();
  sub_2219982C4(v7, v8);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219C60F0()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 112);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v11 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v2);
  (*(v3 + 24))(v2, v3);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F90, &qword_221BD2820);
  OUTLINED_FUNCTION_70();
  v4 = sub_221BCE008();

  v5 = swift_task_alloc();
  *(v5 + 16) = v11;
  v6 = sub_2219F7AAC(sub_2219EB72C, v5, v4);

  v7 = OUTLINED_FUNCTION_70();
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v1[4] = sub_2219EB964(&qword_27CFB8038, &qword_27CFB8030, &qword_221BD28E0, &protocol conformance descriptor for AppEntityQueryResult<A>);
  *v1 = v6;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v9();
}

uint64_t sub_2219C62A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  *(v5 + 376) = a3;
  *(v5 + 384) = v6;
  *(v5 + 368) = a1;
  *(v5 + 392) = *v6;
  v9 = sub_221BCCD88();
  *(v5 + 400) = v9;
  *(v5 + 408) = *(v9 - 8);
  *(v5 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  *(v5 + 424) = swift_task_alloc();
  *(v5 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  *(v5 + 440) = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v12 = a2[1];
  *(v5 + 448) = v10;
  *(v5 + 456) = v11;
  *(v5 + 464) = v12;
  v13 = *(a2 + 1);
  *(v5 + 146) = *a4;
  v14 = *(a4 + 8);
  *(v5 + 472) = v13;
  *(v5 + 488) = v14;

  return MEMORY[0x2822009F8](sub_2219C6448, 0, 0);
}

uint64_t sub_2219C6448()
{
  v30 = *(*(v0 + 384) + 73);
  *(v0 + 147) = v30;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  *(v0 + 504) = __swift_project_value_buffer(*(v0 + 400), qword_280FA9008);
  if (qword_27CFB6CA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 146);
  v4 = *(v0 + 472);
  v3 = *(v0 + 480);
  v6 = *(v0 + 456);
  v5 = *(v0 + 464);
  v27 = v6;
  v28 = *(v0 + 496);
  v7 = *(v0 + 448);
  v8 = *(v0 + 384);
  v31 = *(v0 + 392);
  v9 = *(v0 + 376);
  v29 = v9;
  memcpy((v0 + 152), &qword_27CFDD0A8, 0x59uLL);
  v10 = v8 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id;
  *(v0 + 512) = *(v8 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
  *(v0 + 520) = *(v10 + 8);
  *(v0 + 528) = *(v8 + 16);
  *(v0 + 536) = *(v8 + 24);
  sub_2219AC930(v9, v0 + 16);
  v11 = swift_allocObject();
  *(v0 + 544) = v11;
  *(v11 + 16) = v30;
  memcpy((v11 + 24), (v0 + 16), 0x82uLL);
  *(v11 + 160) = v6;
  *(v11 + 168) = v5;
  *(v11 + 176) = v4;
  *(v11 + 184) = v3;
  *(v11 + 192) = v2;
  *(v11 + 200) = v1;
  *(v11 + 208) = v28;
  *(v0 + 280) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  v12 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v13 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 16))(v7, v8 + v12, v13);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = swift_task_alloc();
  *(v0 + 552) = v22;
  *(v22 + 16) = v8;
  *(v22 + 24) = v2;
  *(v22 + 32) = v1;
  *(v22 + 40) = v28;
  *(v22 + 48) = v27;
  *(v22 + 56) = v5;
  *(v22 + 64) = v4;
  *(v22 + 72) = v3;
  *(v22 + 80) = v29;
  *(v22 + 88) = v31;

  sub_221998178(v4, v3);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_2219C66CC()
{
  v25 = v0[68];
  v26 = v0[66];
  v27 = v0[64];
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  (*(v0[51] + 16))(v0[52], v0[63], v0[50]);
  sub_2219BAF0C((v0 + 31), (v0 + 36), qword_27CFB7A80, &unk_221BD2800);
  sub_2219BAF0C(v2, v1, &qword_27CFB7F60, &qword_221BD6680);
  sub_2219BAF0C(v3, v4, &qword_27CFB7F58, &unk_221BD27E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FB0, &qword_221BD2858);
  swift_allocObject();

  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_141(v6, v7, (v0 + 19), v8, sub_2219EB3DC, v9, v10, v11, 0, 0, v19, v20, v21, v22, v23, v4, sub_2219EC604, sub_2219EC608, v24, (v0 + 36), v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v13 = v12;
  v0[70] = v12;
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93(&qword_27CFB7338);
  }

  v14 = v0[69];
  v0[44] = v5;
  v0[45] = &off_28351D968;
  v0[41] = v13;
  v15 = swift_task_alloc();
  v0[71] = v15;
  v15[2] = v13;
  v15[3] = &unk_221BD2850;
  v15[4] = v14;

  v16 = swift_task_alloc();
  v0[72] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FB8, &qword_221BD2870);
  *v16 = v0;
  v16[1] = sub_2219C697C;
  v17 = OUTLINED_FUNCTION_106(v0[46]);

  return MEMORY[0x282200908](v17);
}

uint64_t sub_2219C697C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 328, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219C6AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 448);
  v12 = *(v10 + 432);

  sub_2219EC58C(v12, &qword_27CFB7F58);
  sub_2219EC58C(v11, &qword_27CFB7F60);
  sub_2219EC58C(v10 + 248, qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_2219C6BA4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);

  sub_2219EC58C(v2, &qword_27CFB7F58);
  sub_2219EC58C(v1, &qword_27CFB7F60);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v3, v4);
  OUTLINED_FUNCTION_182();
  sub_2219EC58C(v5, v6);

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219C6C84()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_25();

  return v0();
}

void sub_2219C6D10(void *a1, void *a2, uint64_t a3)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = a2[2];
  v8 = a2[3];

  sub_221998178(v7, v8);

  sub_22199BCCC(v6);
}

uint64_t sub_2219C6DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = v3;
  *(v4 + 72) = a1;
  *(v4 + 128) = *a3;
  *(v4 + 96) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219C6DFC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *(v0 + 16) = *v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4;
  *(v0 + 48) = v1;
  *(v0 + 56) = *(v0 + 96);

  v6 = OUTLINED_FUNCTION_70();
  sub_221998178(v6, v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 112) = v8;
  *v8 = v9;
  v8[1] = sub_2219C6ED0;
  OUTLINED_FUNCTION_222();
  OUTLINED_FUNCTION_253();

  return sub_2219C62A4(v10, v11, v12, v13);
}

uint64_t sub_2219C6ED0()
{
  OUTLINED_FUNCTION_8_0();
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = *(v2 + 32);
  v6 = *(v2 + 40);

  sub_2219982C4(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_99();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_166();

    return v10();
  }
}

uint64_t sub_2219C7068(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7, unint64_t a8, uint64_t a9)
{
  v31 = 0xE000000000000000;
  sub_221BCDE68();

  v35 = 0x696D726F66726550;
  v36 = 0xEB0000000020676ELL;
  v33 = &type metadata for QuerySpecification;
  v34 = sub_2219EB6D8(v17, v18, v19);
  v30 = swift_allocObject();
  sub_2219AC930(a2, v30 + 16);
  __swift_project_boxed_opaque_existential_0(&v30, &type metadata for QuerySpecification);
  LOBYTE(v28) = a1 & 1;
  v20 = sub_221A22514(&v28);
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(&v30);
  MEMORY[0x223DA31F0](v20, v22);

  MEMORY[0x223DA31F0](0x206E69202CLL, 0xE500000000000000);
  v30 = a3;
  v31 = a4;
  if (a6 == 2)
  {
  }

  else
  {
    v28 = 32;
    v29 = 0xE100000000000000;

    sub_221998178(a5, a6);
    v23 = sub_2219988C4(a5, a6);
    MEMORY[0x223DA31F0](v23);

    MEMORY[0x223DA31F0](v28, v29);

    a3 = v30;
    a4 = v31;
  }

  MEMORY[0x223DA31F0](a3, a4);

  MEMORY[0x223DA31F0](0x3A736E6F6974706FLL, 0xE900000000000020);
  LOBYTE(v30) = a7 & 1;
  v31 = a8;
  v32 = a9;

  Request = QueryRequestOptions.description.getter();
  v26 = v25;

  MEMORY[0x223DA31F0](Request, v26);

  return v35;
}

uint64_t sub_2219C7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 568) = v11;
  *(v8 + 552) = v10;
  *(v8 + 544) = a8;
  *(v8 + 536) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 504) = a1;
  *(v8 + 512) = a3;
  return MEMORY[0x2822009F8](sub_2219C72E0, 0, 0);
}

uint64_t sub_2219C72E0()
{
  OUTLINED_FUNCTION_104();
  v38 = v0;
  if (qword_27CFB6C98 != -1)
  {
    OUTLINED_FUNCTION_12_1(&qword_27CFB6C98);
  }

  v2 = type metadata accessor for Entitlement.Validator(0);
  OUTLINED_FUNCTION_178(v2, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v3)
  {
    v4 = v3;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3(&qword_27CFB7360);
    }

    OUTLINED_FUNCTION_223();
    if (v5 & 1) != 0 || (OUTLINED_FUNCTION_89(), *(v0 + 392) = &type metadata for FeatureFlags.Flag, *(v0 + 400) = sub_2219EB100(v6, v7, v8), OUTLINED_FUNCTION_49(), v9 = swift_allocObject(), *(v0 + 368) = v9, OUTLINED_FUNCTION_52_0(v9), v10 = sub_221BCC6F8(), __swift_destroy_boxed_opaque_existential_0((v0 + 368)), (v10))
    {
      swift_willThrow();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_206();

      __asm { BRAA            X1, X16 }
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v13 = *(v0 + 512);
    v14 = sub_221BCCD88();
    __swift_project_value_buffer(v14, qword_280FA9008);
    OUTLINED_FUNCTION_75();

    v15 = v4;
    v16 = sub_221BCCD68();
    v17 = sub_221BCDA78();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      v18 = OUTLINED_FUNCTION_138();
      v37 = v18;
      *v13 = 136315394;
      v19 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v21 = sub_2219A6360(v19, v20, &v37);
      OUTLINED_FUNCTION_132(v21);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v22;
      *v1 = v22;
      OUTLINED_FUNCTION_131(&dword_221989000, v23, v24, "[%s] Failed to validate entitlements: %@");
      sub_2219EC58C(v1, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  v25 = *(v0 + 568);
  v26 = *(v0 + 560);
  v27 = *(v0 + 552);
  v28 = *(v0 + 544);
  v29 = *(v0 + 536);
  v30 = *(v0 + 528);
  v31 = *(v0 + 520);
  *(v0 + 616) = 0;
  *(v0 + 408) = v29;
  *(v0 + 416) = v28;
  *(v0 + 424) = v27;
  *(v0 + 432) = v26;
  sub_2219AC930(v25, v0 + 232);
  type metadata accessor for LocalQueryExecutor();
  *(v0 + 576) = swift_initStackObject();

  sub_221998178(v27, v26);
  *(v0 + 584) = sub_2219AA560((v0 + 408), (v0 + 232));
  *(v0 + 472) = *(v0 + 616);
  *(v0 + 480) = v31;
  *(v0 + 488) = v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 592) = v32;
  *v32 = v33;
  v32[1] = sub_2219C7644;
  OUTLINED_FUNCTION_206();

  return sub_2219AA698(v34);
}

uint64_t sub_2219C7644()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 600) = v5;
  *(v3 + 608) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2219C7770()
{
  OUTLINED_FUNCTION_67();
  v1 = [*(v0 + 600) value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  v2 = swift_dynamicCast();
  v4 = *(v0 + 600);
  if (v2)
  {
    v5 = *(v0 + 504);
    OUTLINED_FUNCTION_27_0();
    v9 = sub_2219EDBE4(v6, v7, v8);

    v10 = OUTLINED_FUNCTION_16();
    v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_182();
    v5[4] = sub_2219EB964(v12, v13, v14, v15);
    *v5 = v9;
  }

  else
  {
    v17 = sub_2219ACB94(v2, v0 + 8, v3);
    OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.Errors, v17);
    *v18 = 0xD000000000000026;
    *(v18 + 8) = 0x8000000221BECC90;
    *(v18 + 16) = 3;
    swift_willThrow();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2219C7924()
{
  OUTLINED_FUNCTION_1_5();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[30] = v5;
  v1[31] = v6;
  v1[36] = *v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v7);
  v1[37] = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v8);
  v1[38] = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219C7A08()
{
  v1 = *(*(v0 + 280) + 73);
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_280FA9008);
  if (qword_27CFB6CB0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v24 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  memcpy((v0 + 16), &qword_27CFDD108, 0x59uLL);
  sub_2219EAFE0(v8, v0 + 112);
  v9 = swift_allocObject();
  *(v0 + 312) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v1;
  memcpy((v9 + 40), (v0 + 112), 0x58uLL);
  *(v9 + 128) = v7;
  *(v0 + 216) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 105) = v1;
  LOBYTE(v5) = v1;
  v10 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v11 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 16))(v3, v4 + v10, v11);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_task_alloc();
  *(v0 + 320) = v20;
  *(v20 + 16) = v6;
  *(v20 + 24) = v4;
  *(v20 + 32) = v8;
  *(v20 + 40) = v5;
  *(v20 + 48) = v24;
  v21 = swift_task_alloc();
  *(v0 + 328) = v21;
  sub_221BCDC98();
  OUTLINED_FUNCTION_229();
  *v21 = v22;
  v21[1] = sub_2219C7CCC;
  OUTLINED_FUNCTION_232();

  return sub_221BB0014();
}

uint64_t sub_2219C7CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 304);
  v17 = *(v15 + 296);
  v18 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v19 = v18;
  *(v13 + 336) = v10;

  sub_2219EC58C(v17, &qword_27CFB7F58);
  sub_2219EC58C(v16, &qword_27CFB7F60);
  sub_2219EC58C(v13 + 200, qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_2219C7EA8()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219C7F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v14[1] = 0xE000000000000000;
  sub_221BCDE68();

  v15 = 0x676E696863746546;
  v16 = 0xE900000000000020;
  v14[3] = &type metadata for DeferredEntityPropertySpecification;
  v14[4] = sub_2219EB320(v5, v6, v7);
  v14[0] = swift_allocObject();
  sub_2219EAFE0(a2, v14[0] + 16);
  __swift_project_boxed_opaque_existential_0(v14, &type metadata for DeferredEntityPropertySpecification);
  v13 = v4 & 1;
  v8 = sub_2219A7A50(&v13);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_0(v14);
  MEMORY[0x223DA31F0](v8, v10);

  MEMORY[0x223DA31F0](0x203A736120, 0xE500000000000000);
  v11 = sub_221BCE478();
  MEMORY[0x223DA31F0](v11);

  return v15;
}

uint64_t sub_2219C8038(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 504) = a5;
  *(v7 + 424) = a4;
  *(v7 + 432) = a7;
  *(v7 + 408) = a1;
  *(v7 + 416) = a3;
  *(v7 + 440) = *a2;

  return MEMORY[0x2822009F8](sub_2219C80F8, 0, 0);
}

uint64_t sub_2219C80F8()
{
  v43 = v0;
  v42[1] = *MEMORY[0x277D85DE8];
  if (qword_27CFB6C98 != -1)
  {
    OUTLINED_FUNCTION_12_1(&qword_27CFB6C98);
  }

  v2 = type metadata accessor for Entitlement.Validator(0);
  OUTLINED_FUNCTION_178(v2, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v3)
  {
    v4 = v3;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3(&qword_27CFB7360);
    }

    OUTLINED_FUNCTION_223();
    if (v5 & 1) != 0 || (OUTLINED_FUNCTION_89(), v0[42] = &type metadata for FeatureFlags.Flag, v0[43] = sub_2219EB100(v6, v7, v8), OUTLINED_FUNCTION_49(), v9 = swift_allocObject(), v0[39] = v9, OUTLINED_FUNCTION_52_0(v9), v10 = sub_221BCC6F8(), __swift_destroy_boxed_opaque_existential_0(v0 + 39), (v10))
    {
      swift_willThrow();
LABEL_15:
      OUTLINED_FUNCTION_25();

      return v28();
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v11 = v0[52];
    v12 = sub_221BCCD88();
    __swift_project_value_buffer(v12, qword_280FA9008);
    OUTLINED_FUNCTION_75();

    v13 = v4;
    v14 = sub_221BCCD68();
    v15 = sub_221BCDA78();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      v16 = OUTLINED_FUNCTION_138();
      v42[0] = v16;
      *v11 = 136315394;
      v17 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      v19 = sub_2219A6360(v17, v18, v42);
      OUTLINED_FUNCTION_132(v19);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v20;
      *v1 = v20;
      OUTLINED_FUNCTION_131(&dword_221989000, v21, v22, "[%s] Failed to validate entitlements: %@");
      sub_2219EC58C(v1, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  v23 = v0[53];
  type metadata accessor for CachedLinkMetadataProvider();
  v0[56] = swift_initStackObject();
  v0[57] = sub_221BB6B80();
  v24 = v23[6];
  __swift_project_boxed_opaque_existential_0(v23 + 2, v23[5]);
  v25 = OUTLINED_FUNCTION_97();
  v26(v25, v24);
  OUTLINED_FUNCTION_4();
  v27 = sub_221BB7510();
  v0[58] = v27;

  v30 = [objc_opt_self() policyWithEntityMetadata_];
  v0[49] = 0;
  v31 = [v30 connectionWithError_];
  v0[59] = v31;

  v32 = v0[49];
  if (!v31)
  {
    v41 = v32;
    sub_221BCC338();

    swift_willThrow();

    goto LABEL_15;
  }

  v33 = v32;
  OUTLINED_FUNCTION_92();
  v34 = sub_221BCD358();
  v0[60] = v34;
  __swift_project_boxed_opaque_existential_0(v23 + 2, v23[5]);
  v35 = OUTLINED_FUNCTION_92();
  v37 = sub_22199B82C(v35, v36);
  v38 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  v0[61] = v38;

  OUTLINED_FUNCTION_229();
  v0[2] = v39;
  v0[7] = v0 + 50;
  v0[3] = sub_2219C8628;
  v40 = swift_continuation_init();
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F70, &qword_221BD8080);
  v0[25] = MEMORY[0x277D85DD0];
  v0[26] = 1107296256;
  v0[27] = sub_2219C8C10;
  v0[28] = &block_descriptor_2;
  v0[29] = v40;
  [v31 fetchValueForPropertyWithIdentifier:v34 entity:v38 completionHandler:v0 + 25];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2219C8628()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 48);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219C8754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, __int128 a13, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_170();
  a27 = v28;
  a28 = v29;
  OUTLINED_FUNCTION_230();
  a26 = v27;
  a17 = *MEMORY[0x277D85DE8];
  v30 = *(v27 + 480);
  v31 = *(v27 + 400);

  if (v31)
  {
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    sub_221BB8ED4(v31, sub_2219B1AA0, v32);
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(*(*(v27 + 440) + 80) + 16);
  if ((*(*(v27 + 432) + 24))(v34, v35))
  {
    v36 = *(v27 + 472);
    a11 = *(v27 + 464);
    a12 = *(v27 + 456);
    v37 = *(v27 + 424);
    v38 = *(v27 + 432);
    v40 = *(v27 + 408);
    v39 = *(v27 + 416);
    v41 = v37[8];
    v42 = v34;
    v43 = v37[9];
    v44 = v37[10];
    *&a13 = v37[7];
    *(&a13 + 1) = v41;
    a15 = v43;
    a16 = v44;

    sub_221998178(v43, v44);

    _IntentValueConversionContext.init(origin:dispatcher:)(&a13, v39, &off_283514488, v27 + 264);
    *(v27 + 376) = &type metadata for _IntentValueConversionContext;
    *(v27 + 384) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v45 = swift_allocObject();
    *(v27 + 352) = v45;
    sub_2219EB180(v27 + 264, v45 + 16);
    sub_221B8BC18(v31, v35, v38, v40);

    sub_22199C274(v27 + 264);
    __swift_destroy_boxed_opaque_existential_0((v27 + 352));
  }

  else
  {
    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v46 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v46, qword_280FA9008);
    v47 = v31;

    v48 = sub_221BCCD68();
    v49 = sub_221BCDA78();

    if (os_log_type_enabled(v48, v49))
    {
      a12 = v34;
      v50 = *(v27 + 416);
      v51 = swift_slowAlloc();
      *&a13 = swift_slowAlloc();
      *v51 = 136315650;
      *(v51 + 4) = sub_2219A6360(*(v50 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id), *(v50 + OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id + 8), &a13);
      *(v51 + 12) = 2080;
      if (v31)
      {
        v52 = sub_2219C0E8C(v47, *(v27 + 504) & 1);
        v54 = v53;
      }

      else
      {
        v54 = 0xE300000000000000;
        v52 = 7104878;
      }

      a9 = *(v27 + 472);
      a10 = *(v27 + 464);
      a11 = *(v27 + 456);
      v57 = sub_2219A6360(v52, v54, &a13);

      *(v51 + 14) = v57;
      *(v51 + 22) = 2080;
      v58 = sub_221BCE478();
      v60 = sub_2219A6360(v58, v59, &a13);

      *(v51 + 24) = v60;
      _os_log_impl(&dword_221989000, v48, v49, "[%s] Cannot convert %s to %s", v51, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
      v56 = *(v27 + 464);
      v55 = *(v27 + 472);
    }

    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v35);
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_109();

  return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, *(&a13 + 1), a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2219C8B50()
{
  OUTLINED_FUNCTION_67();
  v1 = v0[61];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  swift_willThrow();

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_2219C8C10(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_2219B1AB0();
  }

  else
  {
    v7 = a2;

    return sub_22198B620();
  }
}

uint64_t sub_2219C8C98()
{
  OUTLINED_FUNCTION_1_5();
  v1[31] = v16;
  v1[32] = v0;
  v1[29] = v2;
  v1[30] = v3;
  v1[27] = v4;
  v1[28] = v5;
  v1[25] = v6;
  v1[26] = v7;
  v1[24] = v8;
  v1[33] = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v9);
  v1[34] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v10);
  v1[35] = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219C8D8C()
{
  v1 = *(*(v0 + 256) + 73);
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_280FA9008);
  if (qword_27CFB6CB8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 280);
  v4 = *(v0 + 256);
  v27 = *(v0 + 264);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v26 = v5;
  v9 = *(v0 + 200);
  memcpy((v0 + 16), &qword_27CFDD168, 0x59uLL);
  sub_2219EB748(v8, v0 + 112);
  v10 = swift_allocObject();
  v11 = *(v0 + 128);
  *(v10 + 24) = *(v0 + 112);
  *(v0 + 288) = v10;
  *(v10 + 16) = v1;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(v0 + 144);
  *(v10 + 64) = v9;
  *(v10 + 72) = v7;
  *(v10 + 80) = v5;
  *(v10 + 88) = v6;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 105) = v1;
  v12 = OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_signposter;
  v13 = sub_221BCCD08();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 16))(v3, v4 + v12, v13);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  v22[2] = v4;
  v22[3] = v8;
  v22[4] = v9;
  v22[5] = v7;
  v22[6] = v26;
  v22[7] = v6;
  v22[8] = v27;

  v23 = swift_task_alloc();
  *(v0 + 304) = v23;
  type metadata accessor for AppIntentFetchOptionsResult(0, v28, v29, v24);
  *v23 = v0;
  v23[1] = sub_2219C907C;
  OUTLINED_FUNCTION_232();

  return sub_221BB0014();
}

uint64_t sub_2219C907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = *(v15 + 280);
  v17 = *(v15 + 272);
  v18 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v19 = v18;
  *(v13 + 312) = v10;

  sub_2219EC58C(v17, &qword_27CFB7F58);
  sub_2219EC58C(v16, &qword_27CFB7F60);
  sub_2219EC58C(v13 + 152, qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }

  else
  {

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }
}

uint64_t sub_2219C9258()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219C92BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = 0xE000000000000000;
  sub_221BCDE68();
  v23 = 0;
  v24 = 0xE000000000000000;
  v11 = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BECE30);
  v22[3] = &type metadata for AppIntentSpecification;
  v22[4] = sub_2219EB9A8(v11, v12, v13);
  v22[0] = swift_allocObject();
  sub_2219EB748(a2, v22[0] + 16);
  __swift_project_boxed_opaque_existential_0(v22, &type metadata for AppIntentSpecification);
  a1 &= 1u;
  v21 = a1;
  v14 = sub_2219B5AFC(&v21);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_0(v22);
  MEMORY[0x223DA31F0](v14, v16);

  MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BECE50);
  v17 = sub_2219C0D58(a3, a4, a1);
  MEMORY[0x223DA31F0](v17);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECE70);
  if (a6)
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (a6)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v18, v19);

  return v23;
}

uint64_t sub_2219C946C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[46] = a7;
  v8[47] = a8;
  v8[44] = a5;
  v8[45] = a6;
  v8[42] = a3;
  v8[43] = a4;
  v8[41] = a1;
  v8[48] = *a2;

  return MEMORY[0x2822009F8](sub_2219C9534, 0, 0);
}

uint64_t sub_2219C9534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_170();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_230();
  a26 = v28;
  a17 = *MEMORY[0x277D85DE8];
  if (qword_27CFB6C98 != -1)
  {
LABEL_47:
    OUTLINED_FUNCTION_12_1(&qword_27CFB6C98);
  }

  v31 = type metadata accessor for Entitlement.Validator(0);
  OUTLINED_FUNCTION_178(v31, qword_27CFB7F40);
  Entitlement.Validator.validate()();
  if (v32)
  {
    v33 = v32;
    if (qword_27CFB7360 != -1)
    {
      OUTLINED_FUNCTION_11_3(&qword_27CFB7360);
    }

    OUTLINED_FUNCTION_223();
    if (v37 & 1) != 0 || (v38 = byte_27CFDEDA0, v40 = qword_27CFDED90, v39 = unk_27CFDED98, v41 = byte_27CFDED88, v43 = qword_27CFDED78, v42 = unk_27CFDED80, v28[27] = &type metadata for FeatureFlags.Flag, v28[28] = sub_2219EB100(v34, v35, v36), OUTLINED_FUNCTION_49(), v44 = swift_allocObject(), v28[24] = v44, *(v44 + 16) = v43, *(v44 + 24) = v42, *(v44 + 32) = v41, *(v44 + 40) = v40, *(v44 + 48) = v39, *(v44 + 56) = v38, *(v44 + 57) = 0, v45 = sub_221BCC6F8(), __swift_destroy_boxed_opaque_existential_0(v28 + 24), (v45))
    {
      swift_willThrow();
LABEL_38:
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_109();

      return v115(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
    }

    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v46 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v46, qword_280FA9008);

    v47 = v33;
    v48 = sub_221BCCD68();
    v49 = sub_221BCDA78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_103();
      swift_slowAlloc();
      v51 = OUTLINED_FUNCTION_138();
      a13 = v51;
      *v50 = 136315394;
      v52 = OUTLINED_FUNCTION_236(OBJC_IVAR____TtC18AppIntentsServices19InProcessDispatcher_id);
      *(v50 + 4) = sub_2219A6360(v52, v53, &a13);
      *(v50 + 12) = 2112;
      v54 = v33;
      v55 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v55;
      *v42 = v55;
      _os_log_impl(&dword_221989000, v48, v49, "[%s] Failed to validate entitlements: %@", v50, 0x16u);
      sub_2219EC58C(v42, &unk_27CFB7630);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      __swift_destroy_boxed_opaque_existential_0(v51);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {
    }
  }

  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98(&qword_27CFB7348);
  }

  v56 = v28[43];
  v57 = v56[4];
  __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  v58 = OUTLINED_FUNCTION_75();
  v59(v58, v57);
  v60 = a14;
  sub_2219982C4(a15, a16);
  v61 = v56[4];
  __swift_project_boxed_opaque_existential_0(v56, v56[3]);
  v62 = OUTLINED_FUNCTION_97();
  v63(v62, v61);
  v65 = v64;
  v66 = OUTLINED_FUNCTION_4();
  v69 = sub_221BB8738(v66, v67, v60, v68, v65);
  v70 = 0;
  v28[49] = v69;
  v28[50] = 0;
  v71 = v69;
  a9 = v28 + 40;
  a11 = v28[45];

  a10 = v71;
  v72 = [v71 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v73 = sub_221BCD668();

  v74 = sub_2219A69A0();
  while (1)
  {
    if (v74 == v70)
    {
      v81 = v28[44];

      v85 = sub_2219ACADC(v82, v83, v84);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v85);
      *v86 = v81;
      *(v86 + 8) = a11;
      *(v86 + 16) = 0;
      *(v86 + 24) = 0;
      *(v86 + 32) = 3;
      swift_willThrow();

      goto LABEL_38;
    }

    if ((v73 & 0xC000000000000001) != 0)
    {
      v75 = MEMORY[0x223DA3BF0](v70, v73);
    }

    else
    {
      if (v70 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v75 = *(v73 + 8 * v70 + 32);
    }

    v76 = v75;
    v28[51] = v75;
    if (__OFADD__(v70, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v77 = sub_2219ACA70(v75);
    if (!v78)
    {
      goto LABEL_27;
    }

    if (v77 == v28[44] && v78 == a11)
    {
      break;
    }

    v80 = sub_221BCE1B8();

    if (v80)
    {
      goto LABEL_31;
    }

LABEL_27:

    ++v70;
  }

LABEL_31:

  v87 = v56[4];
  __swift_project_boxed_opaque_existential_0(v28[43], v56[3]);
  v88 = OUTLINED_FUNCTION_75();
  v90 = v89(v88, v87);
  v91 = *(v90 + 16);
  if (v91)
  {
    a13 = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v92 = (v90 + 48);
    do
    {
      v93 = *v92;
      v92 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v94 = v93;

      v95 = OUTLINED_FUNCTION_92();
      sub_2219A62D8(v95, v96, v93);
      sub_221BCDEF8();
      sub_221BCDF38();
      OUTLINED_FUNCTION_221();
      sub_221BCDF48();
      sub_221BCDF08();
      --v91;
    }

    while (v91);
  }

  v97 = [objc_opt_self() policyWithActionMetadata_];
  v28[52] = v97;
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v98 = sub_221BCD658();

  v99 = [v97 actionWithParameters_];
  v28[53] = v99;

  v100 = sub_2219C52F0();
  v28[39] = 0;
  v101 = [v97 connectionWithUserIdentity:v100 error:v28 + 39];
  v28[54] = v101;

  v102 = v28[39];
  if (!v101)
  {
    v113 = v102;
    OUTLINED_FUNCTION_107();
    sub_221BCC338();

    swift_willThrow();
    goto LABEL_38;
  }

  v128 = v99;
  v103 = v28[47];
  v104 = v28[42];
  v105 = v104[7];
  v106 = v104[8];
  __swift_project_boxed_opaque_existential_0(v104 + 4, v105);
  v107 = *(v106 + 24);
  v108 = v102;
  v28[55] = v107(v105, v106);
  v28[56] = v109;
  if (v103)
  {
    v110 = v128;
    v111 = v128;
    v112 = sub_221BCD358();
  }

  else
  {
    v110 = v128;
    v123 = v128;
    v112 = 0;
  }

  v28[57] = v112;
  v124 = sub_221BCD358();
  v28[58] = v124;
  v28[2] = v28;
  v28[7] = a9;
  v28[3] = sub_2219C9DE0;
  v125 = swift_continuation_init();
  v28[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80C0, &qword_221BD29C0);
  v28[10] = MEMORY[0x277D85DD0];
  v28[11] = 1107296256;
  v28[12] = sub_2219ABFE8;
  v28[13] = &block_descriptor_138;
  v28[14] = v125;
  [v101 fetchOptionsForAction:v110 actionMetadata:a10 parameterMetadata:v76 searchTerm:v112 localeIdentifier:v124 completionHandler:v28 + 10];
  OUTLINED_FUNCTION_109();

  return MEMORY[0x282200938](v126);
}

uint64_t sub_2219C9DE0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 472) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2219C9F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_170();
  a26 = v27;
  a27 = v28;
  OUTLINED_FUNCTION_230();
  a25 = v26;
  a16 = *MEMORY[0x277D85DE8];
  v30 = *(v26 + 456);
  v29 = *(v26 + 464);
  v32 = *(v26 + 440);
  v31 = *(v26 + 448);
  v33 = *(v26 + 424);
  v34 = *(v26 + 400);
  v35 = *(v26 + 320);
  *(v26 + 480) = v35;

  OUTLINED_FUNCTION_235();
  swift_bridgeObjectRetain_n();
  sub_2219AEB50(v35, v31, v32, v31, &a12);
  if (v34)
  {
    v37 = *(v26 + 424);
    v36 = *(v26 + 432);
    v39 = *(v26 + 408);
    v38 = *(v26 + 416);

    OUTLINED_FUNCTION_235();
    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_109();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, *(&a12 + 1), a14, *(&a14 + 1), a15, a16, a17, a18, a19);
  }

  else
  {
    v49 = *(v26 + 432);
    v50 = *(v26 + 336);
    swift_bridgeObjectRelease_n();
    v51 = a12;
    v52 = a14;
    *(v26 + 488) = a12;
    *(v26 + 496) = v52;
    v53 = a15;
    v54 = [v49 bundleIdentifier];
    v55 = sub_221BCD388();
    v57 = v56;

    *&a12 = v55;
    *(&a12 + 1) = v57;
    a14 = xmmword_221BD04D0;
    swift_unknownObjectRetain();
    _IntentValueConversionContext.init(origin:dispatcher:)(&a12, v50, &off_283514488, v26 + 144);
    *(v26 + 272) = v51;
    *(v26 + 288) = v52;
    *(v26 + 304) = v53;
    *(v26 + 256) = &type metadata for _IntentValueConversionContext;
    *(v26 + 264) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v58 = swift_allocObject();
    *(v26 + 232) = v58;
    sub_2219EB180(v26 + 144, v58 + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v26 + 512) = v59;
    *v59 = v60;
    v59[1] = sub_2219CA190;
    OUTLINED_FUNCTION_109();

    return sub_2219B01E4(v61, v62, v63, v64, v65);
  }
}

uint64_t sub_2219CA190()
{
  OUTLINED_FUNCTION_14_3();
  v2 = *v1;
  OUTLINED_FUNCTION_17_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v2 + 520) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 232));
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2219CA2F0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 480);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);

  sub_22199C274(v0 + 144);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_2219CA3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v29 = *MEMORY[0x277D85DE8];
  v13 = v12[58];
  v14 = v12[57];
  v16 = v12[53];
  v15 = v12[54];
  v18 = v12[51];
  v17 = v12[52];
  v19 = v12[49];
  swift_willThrow();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, a11, a12);
}

uint64_t sub_2219CA468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v27 = *MEMORY[0x277D85DE8];
  v13 = *(v12 + 480);
  v15 = *(v12 + 424);
  v14 = *(v12 + 432);
  v16 = *(v12 + 416);
  v17 = *(v12 + 392);

  sub_22199C274(v12 + 144);
  __swift_destroy_boxed_opaque_existential_0((v12 + 232));

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, a11, a12);
}

uint64_t sub_2219CA544(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = *(a2 + 1);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219CA568()
{
  OUTLINED_FUNCTION_67();
  v7 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v5[0] = *(v0 + 24);
  v5[1] = v1;
  v6 = *(v0 + 40);
  sub_2219A9D68(v5, v2);
  OUTLINED_FUNCTION_25();

  return v3();
}

id sub_2219CA5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_221BCD358();

  v6 = [v4 initWithPersonaUniqueIdentifier:v5 accessLevel:a3];

  return v6;
}

uint64_t sub_2219CA66C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2219CA70C;

  return sub_2219CA544(a1, a2);
}

uint64_t sub_2219CA70C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219CA7EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219C8C98();
}

uint64_t sub_2219CA8E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219C298C();
}

uint64_t sub_2219CA9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_2219C5ED4(a1, a2, a3);
}

uint64_t sub_2219CAA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_2219C6DD4(a1, a2, a3);
}

uint64_t sub_2219CAB08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219C7924();
}

double sub_2219CABD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_221BD2690;
  *(v0 + 56) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 64) = &protocol witness table for Entitlement.PlatformFilter;
  v3 = sub_221BC2240(&unk_283511A68, v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = v3;
  v4[4] = 0xD000000000000027;
  v4[5] = 0x8000000221BEC0A0;
  *(v0 + 32) = sub_2219EC5F8;
  *(v0 + 40) = v4;
  *(v0 + 96) = &type metadata for Entitlement.IsTrue;
  *(v0 + 104) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 72) = 0xD000000000000018;
  *(v0 + 80) = 0x8000000221BEBDF0;
  *(v0 + 136) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 144) = &protocol witness table for Entitlement.PlatformFilter;
  v7 = sub_221BC2240(&unk_283511A90, v5, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = xmmword_221BD26A0;
  *(v8 + 40) = 0x8000000221BEC190;
  *(v0 + 112) = sub_2219EC5F8;
  *(v0 + 120) = v8;
  *(v0 + 176) = &type metadata for Entitlement.IsTrue;
  *(v0 + 184) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 152) = 0xD000000000000024;
  *(v0 + 160) = 0x8000000221BEC1C0;
  *(v0 + 216) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 224) = &protocol witness table for Entitlement.PlatformFilter;
  v11 = sub_221BC2240(&unk_283511AB8, v9, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = v11;
  v12[4] = 0xD000000000000024;
  v12[5] = 0x8000000221BEC1F0;
  *(v0 + 192) = sub_2219EC5F8;
  *(v0 + 200) = v12;
  *(v0 + 256) = &type metadata for Entitlement.Contains;
  *(v0 + 264) = &protocol witness table for Entitlement.Contains;
  *(v0 + 232) = 0xD000000000000034;
  *(v0 + 240) = 0x8000000221BEC2B0;
  *(v0 + 248) = &unk_283511AE0;
  *(v0 + 296) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 304) = &protocol witness table for Entitlement.PlatformFilter;
  v15 = sub_221BC2240(&unk_283511B40, v13, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  result = 0.0;
  *(v16 + 24) = xmmword_221BD26B0;
  *(v16 + 40) = 0x8000000221BEC2B0;
  *(v16 + 48) = &unk_283511B10;
  *(v0 + 272) = sub_2219EC5FC;
  *(v0 + 280) = v16;
  qword_27CFB7F30 = v0;
  return result;
}

uint64_t sub_2219CAE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F98, &qword_221BD2828);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_221BD26C0;
  *(v0 + 56) = &type metadata for Entitlement.IsTrue;
  *(v0 + 64) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 32) = 0xD00000000000002BLL;
  *(v0 + 40) = 0x8000000221BEBFB0;
  *(v0 + 96) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 104) = &protocol witness table for Entitlement.PlatformFilter;
  v3 = sub_221BC2240(&unk_283511B68, v1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = xmmword_221BD26D0;
  *(v4 + 40) = 0x8000000221BEC010;
  *(v0 + 72) = sub_2219EB25C;
  *(v0 + 80) = v4;
  *(v0 + 136) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 144) = &protocol witness table for Entitlement.PlatformFilter;
  v7 = sub_221BC2240(&unk_283511B90, v5, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = xmmword_221BD26E0;
  *(v8 + 40) = 0x8000000221BEC040;
  *(v0 + 112) = sub_2219EC5F8;
  *(v0 + 120) = v8;
  *(v0 + 176) = &type metadata for Entitlement.IsTrue;
  *(v0 + 184) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 152) = 0xD00000000000002FLL;
  *(v0 + 160) = 0x8000000221BEC070;
  *(v0 + 216) = &type metadata for Entitlement.IsTrue;
  *(v0 + 224) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 192) = 0xD000000000000025;
  *(v0 + 200) = 0x8000000221BEC0D0;
  *(v0 + 256) = &type metadata for Entitlement.IsTrue;
  *(v0 + 264) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 232) = 0xD000000000000024;
  *(v0 + 240) = 0x8000000221BEC100;
  *(v0 + 296) = &type metadata for Entitlement.IsTrue;
  *(v0 + 304) = &protocol witness table for Entitlement.IsTrue;
  *(v0 + 272) = 0xD000000000000020;
  *(v0 + 280) = 0x8000000221BEC130;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_221BCF7F0;
  *(v9 + 32) = 0xD00000000000003FLL;
  *(v9 + 40) = 0x8000000221BEC220;
  *(v9 + 48) = &unk_283511BB8;
  *(v9 + 56) = &type metadata for Entitlement.Contains;
  *(v9 + 96) = &type metadata for Entitlement.Contains;
  *(v9 + 104) = &protocol witness table for Entitlement.Contains;
  *(v9 + 64) = &protocol witness table for Entitlement.Contains;
  *(v9 + 72) = 0xD000000000000040;
  *(v9 + 80) = 0x8000000221BEC260;
  *(v9 + 88) = &unk_283511BE8;
  *(v0 + 336) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 344) = &protocol witness table for Entitlement.PlatformFilter;
  v12 = sub_221BC2240(&unk_283511C18, v10, v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = v12;
  v13[4] = v9;
  *(v0 + 312) = sub_2219EB270;
  *(v0 + 320) = v13;

  sub_221BC3A48(&unk_283511C70);

  *(v0 + 376) = &type metadata for Entitlement.PlatformFilter;
  *(v0 + 384) = &protocol witness table for Entitlement.PlatformFilter;
  v16 = sub_221BC2240(&unk_283511CA0, v14, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = xmmword_221BD26B0;
  *(v17 + 40) = 0x8000000221BEC2B0;
  *(v17 + 48) = &unk_283511C40;
  *(v0 + 352) = sub_2219EB27C;
  *(v0 + 360) = v17;
  *(v0 + 416) = &type metadata for Entitlement.Contains;
  *(v0 + 424) = &protocol witness table for Entitlement.Contains;

  sub_221BC3A48(&unk_283511CF8);
  *(v0 + 392) = 0xD000000000000034;
  *(v0 + 400) = 0x8000000221BEC2B0;
  *(v0 + 408) = &unk_283511CC8;

  qword_27CFB7F38 = v0;
  return result;
}

uint64_t sub_2219CB1E0()
{
  v0 = sub_221BCCD88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Entitlement.Validator(0);
  __swift_allocate_value_buffer(v4, qword_27CFB7F40);
  v5 = __swift_project_value_buffer(v4, qword_27CFB7F40);
  if (qword_280FA8FE0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280FA9008);
  (*(v1 + 16))(v3, v6, v0);
  if (qword_27CFB6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_27CFB7F30;
  v8 = qword_27CFB6C90;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_27CFB7F38;
  (*(v1 + 32))(v5, v3, v0);
  *(v5 + *(v4 + 20)) = v9;
  *(v5 + *(v4 + 24)) = v7;
}

uint64_t sub_2219CB3CC()
{
  v1 = (v0 + qword_27CFBC7A8);
  if (!*(v0 + qword_27CFBC7A8 + 8))
  {
    sub_2219CB49C(v0);
    OUTLINED_FUNCTION_183();
    *v1 = v2;
    v1[1] = v3;
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2219CB440()
{
  v3 = sub_221BCCCC8();
  sub_2219EB5B8(v3, v0, v1);
  return sub_221BCD548();
}

uint64_t sub_2219CB49C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v7 = *(a1 + 16);
    v8 = v2;

    MEMORY[0x223DA31F0](58, 0xE100000000000000);
    v2 = v7;
    v3 = v8;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x223DA31F0](v2, v3);

  v4 = sub_221BCDE88();
  MEMORY[0x223DA31F0](v4);

  MEMORY[0x223DA31F0](58, 0xE100000000000000);
  v5 = sub_2219CB440();
  MEMORY[0x223DA31F0](v5);

  MEMORY[0x223DA31F0](8285, 0xE200000000000000);
  return 91;
}

void sub_2219CB5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t), uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int16 a26, uint64_t a27, uint64_t a28, uint64_t (*a29)(uint64_t), void (*a30)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_21();
  v32 = v30;
  v156 = v33;
  v157 = v34;
  v158 = v35;
  v159 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v151 = v43;
  v147 = a28;
  v160 = a27;
  v152 = a25;
  v153 = a23;
  v154 = a24;
  v155 = a22;
  v141 = a26;
  v146 = a29;
  v44 = sub_221BCCD88();
  OUTLINED_FUNCTION_0_2();
  v46 = v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4_0();
  v137 = v49 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v51 = OUTLINED_FUNCTION_8_1(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v52);
  v149 = &v136 - v53;
  v145 = sub_221BCCCD8();
  OUTLINED_FUNCTION_0_2();
  v144 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4_0();
  v143 = v57 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v59 = OUTLINED_FUNCTION_8_1(v58);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_231();
  v140 = sub_221BCCD08();
  OUTLINED_FUNCTION_0_2();
  v142 = v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4_0();
  v65 = v64 - v63;
  *(v32 + qword_27CFBC798) = 0;
  sub_221BCDFB8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v69);
  v70 = (v32 + qword_27CFBC7A8);
  *v70 = 0;
  v70[1] = 0;
  *(v32 + 16) = v151;
  *(v32 + 24) = v42;
  *(v32 + 32) = 0;
  *(v32 + 36) = 0;
  *(v32 + 40) = *v40;
  *(v32 + 56) = *(v40 + 16);
  v148 = v46;
  v71 = v31;
  v72 = *(v46 + 16);
  v150 = v38;
  v151 = v44;
  v73 = v38;
  v74 = v153;
  v136 = v72;
  v72(v32 + qword_27CFBC758, v73, v44);
  v75 = (v32 + qword_27CFBC760);
  v76 = v158;
  v77 = v159;
  *v75 = v158;
  v75[1] = v77;
  v78 = (v32 + qword_27CFBC768);
  v79 = v157;
  *v78 = v156;
  v78[1] = v79;
  v80 = (v32 + qword_27CFBC770);
  *v80 = a21;
  v80[1] = v155;
  *(off_27CFBC778 + v32) = MEMORY[0x277D84F98];
  v81 = v32 + qword_27CFBC780;
  *(v81 + 16) = *(v40 + 40);
  *v81 = *(v40 + 24);
  sub_22198BEB8(v76, v77);
  v82 = OUTLINED_FUNCTION_140();
  v146(v82);
  v146 = a21;
  v83 = OUTLINED_FUNCTION_118();
  v84 = v152;
  sub_22198BEB8(v83, v85);
  v86 = v74;
  sub_221BB08E4(v74, &v161);
  v87 = v32 + qword_27CFBC788;
  *(v87 + 32) = v163;
  v88 = v162;
  *v87 = v161;
  *(v87 + 16) = v88;
  v89 = v32 + qword_27CFBC790;
  *v89 = *(v40 + 80);
  v90 = *(v40 + 88);
  v91 = v140;
  *(v89 + 8) = v90;
  v92 = v32 + qword_27CFDED20;
  *v92 = v154;
  *(v92 + 8) = v84;
  v93 = BYTE1(v141);
  *(v92 + 16) = v141;
  *(v92 + 17) = v93 & 1;
  sub_2219BAF0C(v160, v31, &qword_27CFB7F60, &qword_221BD6680);
  if (__swift_getEnumTagSinglePayload(v31, 1, v91) != 1)
  {
    v108 = OUTLINED_FUNCTION_179();
    v109(v108, v31, v91);

    v104 = v145;
    v105 = v149;
    goto LABEL_11;
  }

  sub_2219BAF0C(v74, &v161, qword_27CFB7A80, &unk_221BD2800);
  v94 = *(&v162 + 1);
  if (!*(&v162 + 1))
  {

    sub_2219EC58C(&v161, qword_27CFB7A80);
    v99 = v138;
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v91);
    v104 = v145;
    v105 = v149;
LABEL_7:
    v136(v137, v150, v151);
    sub_221BCCCE8();
    v113 = OUTLINED_FUNCTION_151(v99) == 1;
    v114 = v99;
    v86 = v153;
    v71 = v142;
    if (!v113)
    {
      sub_2219EC58C(v114, &qword_27CFB7F60);
    }

    goto LABEL_9;
  }

  v95 = v163;
  __swift_project_boxed_opaque_existential_0(&v161, *(&v162 + 1));
  v71 = v91;
  v96 = v31;
  v97 = *(v95 + 32);

  v98 = v95;
  v99 = v138;
  v97(v94, v98);
  v31 = v96;
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v100, v101, v102, v91);
  __swift_destroy_boxed_opaque_existential_0(&v161);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v99, 1, v91);
  v104 = v145;
  v105 = v149;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_7;
  }

  v106 = OUTLINED_FUNCTION_179();
  v107(v106, v99, v91);
  v86 = v153;
LABEL_9:
  v115 = __swift_getEnumTagSinglePayload(v31, 1, v91);
  v84 = v152;
  if (v115 != 1)
  {
    sub_2219EC58C(v31, &qword_27CFB7F60);
  }

LABEL_11:
  v116 = qword_27CFDED28;
  (*(v71 + 32))(v32 + qword_27CFDED28, v65, v91);
  v117 = v147;
  sub_2219BAF0C(v147, v105, &qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_145(v105);
  if (!v113)
  {
    v130 = OUTLINED_FUNCTION_121();
    v131(v130, v105, v104);
    goto LABEL_21;
  }

  v118 = v84;
  sub_2219BAF0C(v86, &v161, qword_27CFB7A80, &unk_221BD2800);
  if (!*(&v162 + 1))
  {
    sub_2219EC58C(&v161, qword_27CFB7A80);
    v122 = v139;
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v132, v133, v134, v104);
LABEL_17:
    sub_221BCCCF8();
    v116 = v143;
    sub_221BCCCB8();
    OUTLINED_FUNCTION_145(v122);
    v135 = v122;
    v84 = v118;
    v91 = v144;
    if (!v113)
    {
      sub_2219EC58C(v135, &qword_27CFB7F58);
    }

    goto LABEL_19;
  }

  v119 = v163;
  __swift_project_boxed_opaque_existential_0(&v161, *(&v162 + 1));
  v120 = OUTLINED_FUNCTION_75();
  v122 = v121;
  v123 = v119;
  v105 = v149;
  v124(v120, v123);
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v104);
  __swift_destroy_boxed_opaque_existential_0(&v161);
  OUTLINED_FUNCTION_145(v122);
  if (v113)
  {
    goto LABEL_17;
  }

  v128 = OUTLINED_FUNCTION_121();
  v129(v128, v122, v104);
  v84 = v118;
LABEL_19:
  OUTLINED_FUNCTION_145(v105);
  if (!v113)
  {
    sub_2219EC58C(v105, &qword_27CFB7F58);
  }

LABEL_21:
  (*(v91 + 32))(v32 + qword_27CFDED30, v116, v104);
  if (v84)
  {
    *(&v162 + 1) = MEMORY[0x277D837D0];
    *&v161 = v154;
    *(&v161 + 1) = v84;
    swift_beginAccess();
    sub_221BC5970(&v161, 0x746E65696C63, 0xE600000000000000);
    swift_endAccess();
  }

  sub_22198B60C(v146, v155);
  a30(v156, v157);
  sub_22198B60C(v158, v159);
  sub_2219EC58C(v117, &qword_27CFB7F58);
  sub_2219EC58C(v160, &qword_27CFB7F60);
  sub_2219EC58C(v86, qword_27CFB7A80);
  (*(v148 + 8))(v150, v151);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2219CBF48(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_2219CC940(v3);
  return sub_2219EC58C(v3, &qword_27CFB8090);
}

uint64_t sub_2219CBF9C(void *a1)
{
  v3[0] = a1;
  v4 = 1;
  v1 = a1;
  sub_2219CE930(v3);
  return sub_2219EC58C(v3, &qword_27CFB8000);
}

uint64_t sub_2219CC038(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7 = OUTLINED_FUNCTION_234(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_157();
  *v4 = a1;
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  a4(v4);
  v11 = OUTLINED_FUNCTION_140();
  return sub_2219EC58C(v11, v12);
}

void sub_2219CC0DC()
{
  OUTLINED_FUNCTION_21();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  v64 = &v61 - v7;
  sub_221BCCCD8();
  OUTLINED_FUNCTION_0_2();
  v65 = v9;
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  v63 = v10 - v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_163();
  v13 = *(v0 + qword_27CFBC760);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_228(v14, v15);
    v16 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_198();
    if (os_log_type_enabled(v16, v2))
    {
      v17 = OUTLINED_FUNCTION_103();
      v62 = v3;
      v18 = v17;
      v68[0] = OUTLINED_FUNCTION_105();
      v19 = OUTLINED_FUNCTION_248(4.8151e-34);
      v21 = sub_2219A6360(v19, v20, v68);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v23 = v13(v22);
      v25 = sub_2219A6360(v23, v24, v68);

      *(v18 + 14) = v25;
      OUTLINED_FUNCTION_247(&dword_221989000, v16, v2, "%s%s", v61, v62);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v3 = v62;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v26 = OUTLINED_FUNCTION_120();
      sub_22198B60C(v26, v27);
    }

    else
    {

      v39 = OUTLINED_FUNCTION_120();
      sub_22198B60C(v39, v40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_235();
    swift_retain_n();
    v28 = sub_221BCCD68();
    v29 = sub_221BCDA98();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_103();
      v68[0] = OUTLINED_FUNCTION_105();
      *v30 = 136315394;
      v31 = sub_2219CB3CC();
      sub_2219A6360(v31, v32, v68);
      OUTLINED_FUNCTION_107();

      *(v30 + 4) = v1;
      *(v30 + 12) = 2080;

      OUTLINED_FUNCTION_16();
      v33 = sub_221BCDE88();

      v34 = OUTLINED_FUNCTION_16();
      sub_2219A6360(v34, v35, v36);
      OUTLINED_FUNCTION_75();

      *(v30 + 14) = v33;
      OUTLINED_FUNCTION_240(&dword_221989000, v37, v38, "%sStarting %s");
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_235();
    }
  }

  sub_2219BAF0C(v4 + qword_27CFBC788, v68, &qword_27CFB7FD0, &qword_221BD2888);
  if (v69)
  {
    __swift_project_boxed_opaque_existential_0(v68, v69);
    v41 = OUTLINED_FUNCTION_1_0();
    v42(v41);
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  else
  {
    sub_2219EC58C(v68, &qword_27CFB7FD0);
  }

  v43 = *(v4 + qword_27CFBC780);
  v44 = *(v4 + qword_27CFBC780 + 16);
  v45 = v65;
  v46 = *(v65 + 16);
  v47 = v3;
  v48 = v3;
  v49 = v66;
  v46(v47, v4 + qword_27CFDED30, v66);
  v50 = sub_221BCCCF8();
  LODWORD(v62) = sub_221BCDBC8();
  if ((sub_221BCDC78() & 1) == 0)
  {
    goto LABEL_20;
  }

  if ((v44 & 1) == 0)
  {
    if (v43)
    {
LABEL_19:
      OUTLINED_FUNCTION_117();
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = sub_221BCCCC8();
      _os_signpost_emit_with_name_impl(&dword_221989000, v50, v62, v52, v43, "", v51, 2u);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v45 = v65;
      v49 = v66;
LABEL_20:

      v53 = OUTLINED_FUNCTION_24();
      (v46)(v53);
      sub_221BCCD48();
      swift_allocObject();
      v54 = sub_221BCCD38();
      (*(v45 + 8))(v48, v49);
      *(v4 + qword_27CFBC798) = v54;

      v55 = v64;
      sub_221BCDF88();
      sub_221BCDFB8();
      OUTLINED_FUNCTION_122();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
      v60 = qword_27CFBC7A0;
      swift_beginAccess();
      sub_2219EB60C(v55, v4 + v60);
      swift_endAccess();
      OUTLINED_FUNCTION_22();
      return;
    }

    __break(1u);
  }

  if (v43 >> 32)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v43 = &v67;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_2219CC674(uint64_t a1)
{
  sub_2219BAF0C(a1, v2, &qword_27CFB8048, &qword_221BE5700);
  v2[264] = 0;
  sub_2219CDA30(v2);
  return sub_2219EC58C(v2, &qword_27CFB8050);
}

uint64_t sub_2219CC6D4(uint64_t a1)
{
  sub_2219A1B08(a1, v2);
  v2[40] = 0;
  sub_2219CF9D0(v2);
  return sub_2219EC58C(v2, &qword_27CFB7FC0);
}

uint64_t sub_2219CC794(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v10 = OUTLINED_FUNCTION_234(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_156();
  sub_2219EC27C(a1, v5, a4);
  OUTLINED_FUNCTION_221();
  swift_storeEnumTagMultiPayload();
  a5(v5);
  return sub_2219EC58C(v5, a2);
}

uint64_t sub_2219CC84C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80F8, &qword_221BD2A10);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = sub_221BCC558();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_2219E6AB8(v4);
  return sub_2219EC58C(v4, &qword_27CFB80F8);
}

void sub_2219CC940(void *a1)
{
  v2 = v1;
  v140 = a1;
  v3 = sub_221BCCE38();
  v139 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = &v134 - v7;
  v9 = sub_221BCDFB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v134 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v134 - v17;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v135 = v3;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v19 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v19, v18, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v9);
  v137 = 0;
  v138 = 0;
  v136 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v10 + 32))(v15, v18, v9);
    sub_221BCDF88();
    v21 = sub_221BCDFA8();
    v137 = v22;
    v138 = v21;
    v23 = *(v10 + 8);
    v23(v12, v9);
    v23(v15, v9);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v24, v2);
  }

  v25 = off_27CFBC778;
  swift_beginAccess();
  v134 = v25;
  v26 = *&v25[v2];
  v27 = &unk_27CFBC000;
  if (*(v26 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, v147, &qword_27CFB7FD0, &qword_221BD2888);
    v28 = v147[3];
    if (v147[3])
    {
      v29 = v147[4];
      __swift_project_boxed_opaque_existential_0(v147, v147[3]);
      v30 = *(v29 + 32);

      v30(v31, 0x697274654D736961, 0xEA00000000007363, v28, v29);
      v27 = &unk_27CFBC000;

      __swift_destroy_boxed_opaque_existential_0(v147);
    }

    else
    {
      sub_2219EC58C(v147, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v140, v147, &qword_27CFB8090, &unk_221BD2960);
  if (v148)
  {
    v32 = v147[0];
    sub_2219BAF0C(v2 + v27[241], v146, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = v146[3];
    if (v146[3])
    {
      v34 = v146[4];
      v35 = __swift_project_boxed_opaque_existential_0(v146, v146[3]);
      v141[0] = v32;
      v36 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v143);
        v143[0] = v32;
        v37 = v32;
        v38 = sub_221BCE198();
        v140 = v35;
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v39 = swift_allocError();
          *v71 = v32;
        }

        v72 = sub_221BCC328();

        v73 = [v72 domain];
        v74 = sub_221BCD388();
        v76 = v75;

        v77 = [v72 code];
        *v5 = v74;
        v5[1] = v76;
        v5[2] = v77;
        v70 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v70 = MEMORY[0x277CD8AC0];
      }

      v78 = v139;
      v79 = v135;
      (*(v139 + 104))(v5, *v70, v135);
      (*(v34 + 24))(v5, v33, v34);
      (*(v78 + 8))(v5, v79);
      __swift_destroy_boxed_opaque_existential_0(v146);
    }

    else
    {
      sub_2219EC58C(v146, &qword_27CFB7FD0);
    }

    v80 = *(v2 + qword_27CFBC770);
    if (v80)
    {
      v81 = *(v2 + qword_27CFBC770 + 8);
      v82 = v32;

      v83 = v32;
      sub_22198BEB8(v80, v81);
      v84 = sub_221BCCD68();
      v85 = sub_221BCDA78();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v146[0] = v140;
        *v86 = 136315394;
        v87 = sub_2219CB3CC();
        v89 = sub_2219A6360(v87, v88, v146);

        *(v86 + 4) = v89;
        *(v86 + 12) = 2080;
        v143[0] = v32;
        v90 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v91 = sub_221BCE198();
        if (v91)
        {
          v92 = v91;
        }

        else
        {
          v92 = swift_allocError();
          *v117 = v32;
        }

        v118 = v80(v92);
        v139 = v81;
        v120 = v119;

        v121 = sub_2219A6360(v118, v120, v146);

        *(v86 + 14) = v121;
        _os_log_impl(&dword_221989000, v84, v85, "%s %s", v86, 0x16u);
        v122 = v140;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v122, -1, -1);
        MEMORY[0x223DA4C00](v86, -1, -1);

        v108 = v80;
        v109 = v139;
      }

      else
      {

        v108 = v80;
        v109 = v81;
      }

      sub_22198B60C(v108, v109);
      goto LABEL_51;
    }

    v93 = *(v2 + qword_27CFDED20 + 17);

    v94 = v32;
    v95 = sub_221BCCD68();
    v96 = sub_221BCDA78();

    v97 = os_log_type_enabled(v95, v96);
    if (v93)
    {
      if (v97)
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v146[0] = v99;
        *v98 = 136315395;
        v100 = sub_2219CB3CC();
        v102 = sub_2219A6360(v100, v101, v146);

        *(v98 + 4) = v102;
        *(v98 + 12) = 2085;
        v143[0] = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v103 = sub_221BCE288();
        v105 = v104;

        v106 = sub_2219A6360(v103, v105, v146);

        *(v98 + 14) = v106;
        v107 = "%sFailed with %{sensitive}s";
LABEL_45:
        _os_log_impl(&dword_221989000, v95, v96, v107, v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v99, -1, -1);
        MEMORY[0x223DA4C00](v98, -1, -1);
LABEL_47:

LABEL_51:
        goto LABEL_52;
      }
    }

    else if (v97)
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v146[0] = v99;
      *v98 = 136315395;
      v110 = sub_2219CB3CC();
      v112 = sub_2219A6360(v110, v111, v146);

      *(v98 + 4) = v112;
      *(v98 + 12) = 2081;
      v143[0] = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v113 = sub_221BCE288();
      v115 = v114;

      v116 = sub_2219A6360(v113, v115, v146);

      *(v98 + 14) = v116;
      v107 = "%sFailed with %{private}s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  memcpy(v146, v147, sizeof(v146));
  sub_2219BAF0C(v2 + v27[241], v143, &qword_27CFB7FD0, &qword_221BD2888);
  v40 = v144;
  if (v144)
  {
    v41 = v145;
    __swift_project_boxed_opaque_existential_0(v143, v144);
    v42 = v139;
    v43 = v135;
    (*(v139 + 104))(v8, *MEMORY[0x277CD8AC8], v135);
    (*(v41 + 24))(v8, v40, v41);
    (*(v42 + 8))(v8, v43);
    __swift_destroy_boxed_opaque_existential_0(v143);
  }

  else
  {
    sub_2219EC58C(v143, &qword_27CFB7FD0);
  }

  v44 = *(v2 + qword_27CFBC768);
  if (!v44)
  {
    sub_2219BAF0C(v146, v143, &qword_27CFB8048, &qword_221BE5700);

    v57 = sub_221BCCD68();
    v58 = sub_221BCDA98();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v142 = v60;
      *v59 = 136315394;
      v61 = sub_2219CB3CC();
      v63 = sub_2219A6360(v61, v62, &v142);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = *(v2 + qword_27CFDED20 + 17);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
      v141[3] = v65;
      v141[4] = sub_2219EB964(&qword_27CFB8058, &qword_27CFB8048, &qword_221BE5700, &unk_221BD1C78);
      v141[0] = swift_allocObject();
      sub_2219BAF0C(v143, v141[0] + 16, &qword_27CFB8048, &qword_221BE5700);
      __swift_project_boxed_opaque_existential_0(v141, v65);
      v66 = sub_2219C1DE8(v64);
      v68 = v67;
      sub_2219EC58C(v143, &qword_27CFB8048);
      __swift_destroy_boxed_opaque_existential_0(v141);
      v69 = sub_2219A6360(v66, v68, &v142);

      *(v59 + 14) = v69;
      _os_log_impl(&dword_221989000, v57, v58, "%sCompleted with %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v60, -1, -1);
      MEMORY[0x223DA4C00](v59, -1, -1);

      goto LABEL_31;
    }

LABEL_30:
    sub_2219EC58C(v143, &qword_27CFB8048);
    goto LABEL_31;
  }

  v45 = *(v2 + qword_27CFBC768 + 8);
  sub_2219BAF0C(v146, v143, &qword_27CFB8048, &qword_221BE5700);
  sub_22198BEB8(v44, v45);

  v46 = sub_221BCCD68();
  v47 = sub_221BCDA98();

  if (!os_log_type_enabled(v46, v47))
  {

    sub_22198B60C(v44, v45);
    goto LABEL_30;
  }

  v48 = swift_slowAlloc();
  v49 = swift_slowAlloc();
  v141[0] = v49;
  *v48 = 136315394;
  v50 = sub_2219CB3CC();
  v52 = sub_2219A6360(v50, v51, v141);

  *(v48 + 4) = v52;
  *(v48 + 12) = 2080;
  v53 = v44(v143);
  v55 = v54;
  sub_2219EC58C(v143, &qword_27CFB8048);
  v56 = sub_2219A6360(v53, v55, v141);

  *(v48 + 14) = v56;
  _os_log_impl(&dword_221989000, v46, v47, "%s%s", v48, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v49, -1, -1);
  MEMORY[0x223DA4C00](v48, -1, -1);

  sub_22198B60C(v44, v45);
LABEL_31:
  sub_2219EC58C(v146, &qword_27CFB8048);
LABEL_52:
  v124 = v137;
  v123 = v138;
  v125 = v136;
  sub_2219E7E58(v138, v137, v136 == 1);
  if (v125 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v126 = *(v2 + qword_27CFBC780);
    v139 = *(v2 + qword_27CFBC780 + 8);
    v140 = v126;
    LODWORD(v138) = *(v2 + qword_27CFBC780 + 16);
    v127 = sub_2219CB440();
    v129 = v128;
    v147[0] = 0;
    v147[1] = 0xE000000000000000;
    sub_221BCDE68();
    v130 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v130);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v131 = v147[0];
    v132 = v147[1];
    v133 = *&v134[v2];

    sub_221BB52B0(v140, v139, v138, v127, v129, v123, v124, v131, v132, 1, 1, v133);
  }
}

void sub_2219CDA30(uint64_t a1)
{
  v2 = v1;
  v116 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_221BCDFB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v110 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v110 - v15;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v113 = v6;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v17 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v17, v16, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v16, 1, v7);
  v19 = 0;
  v115 = 0;
  LODWORD(v114) = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v8 + 32))(v13, v16, v7);
    sub_221BCDF88();
    v19 = sub_221BCDFA8();
    v115 = v20;
    v21 = *(v8 + 8);
    v21(v10, v7);
    v21(v13, v7);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v22, v2);
  }

  v23 = off_27CFBC778;
  swift_beginAccess();
  v112 = v23;
  v24 = *&v23[v2];
  v25 = &unk_27CFBC000;
  if (*(v24 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, v123, &qword_27CFB7FD0, &qword_221BD2888);
    v26 = v123[3];
    if (v123[3])
    {
      v27 = v123[4];
      __swift_project_boxed_opaque_existential_0(v123, v123[3]);
      v111 = v2;
      v28 = *(v27 + 32);

      v28(v29, 0x697274654D736961, 0xEA00000000007363, v26, v27);
      v25 = &unk_27CFBC000;
      v2 = v111;

      __swift_destroy_boxed_opaque_existential_0(v123);
    }

    else
    {
      sub_2219EC58C(v123, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v116, v123, &qword_27CFB8050, &qword_221BD2920);
  if ((v124 & 1) == 0)
  {
    memcpy(v122, v123, sizeof(v122));
    sub_2219BAF0C(v2 + v25[241], v119, &qword_27CFB7FD0, &qword_221BD2888);
    v33 = v120;
    if (v120)
    {
      v34 = v121;
      __swift_project_boxed_opaque_existential_0(v119, v120);
      v35 = v113;
      (*(v4 + 104))(v113, *MEMORY[0x277CD8AC8], v3);
      (*(v34 + 24))(v35, v33, v34);
      (*(v4 + 8))(v35, v3);
      __swift_destroy_boxed_opaque_existential_0(v119);
    }

    else
    {
      sub_2219EC58C(v119, &qword_27CFB7FD0);
    }

    v51 = *(v2 + qword_27CFBC768);
    if (v51)
    {
      v52 = *(v2 + qword_27CFBC768 + 8);
      sub_2219BAF0C(v122, v119, &qword_27CFB8048, &qword_221BE5700);
      sub_22198BEB8(v51, v52);

      v53 = sub_221BCCD68();
      v54 = sub_221BCDA98();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v117[0] = v56;
        *v55 = 136315394;
        v57 = sub_2219CB3CC();
        v59 = sub_2219A6360(v57, v58, v117);
        v116 = v19;
        v60 = v59;

        *(v55 + 4) = v60;
        *(v55 + 12) = 2080;
        v61 = v51(v119);
        v63 = v62;
        sub_2219EC58C(v119, &qword_27CFB8048);
        v64 = sub_2219A6360(v61, v63, v117);

        *(v55 + 14) = v64;
        v19 = v116;
        _os_log_impl(&dword_221989000, v53, v54, "%s%s", v55, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v56, -1, -1);
        MEMORY[0x223DA4C00](v55, -1, -1);

        sub_22198B60C(v51, v52);
LABEL_41:
        sub_2219EC58C(v122, &qword_27CFB8048);
        goto LABEL_42;
      }

      sub_22198B60C(v51, v52);
    }

    else
    {
      sub_2219BAF0C(v122, v119, &qword_27CFB8048, &qword_221BE5700);

      v79 = sub_221BCCD68();
      v80 = sub_221BCDA98();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v118 = v116;
        *v81 = 136315394;
        v82 = sub_2219CB3CC();
        v84 = sub_2219A6360(v82, v83, &v118);

        *(v81 + 4) = v84;
        *(v81 + 12) = 2080;
        v85 = *(v2 + qword_27CFDED20 + 17);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
        v117[3] = v86;
        v117[4] = sub_2219EB964(&qword_27CFB8058, &qword_27CFB8048, &qword_221BE5700, &unk_221BD1C78);
        v117[0] = swift_allocObject();
        sub_2219BAF0C(v119, v117[0] + 16, &qword_27CFB8048, &qword_221BE5700);
        __swift_project_boxed_opaque_existential_0(v117, v86);
        v87 = sub_2219C1DE8(v85);
        v89 = v88;
        sub_2219EC58C(v119, &qword_27CFB8048);
        __swift_destroy_boxed_opaque_existential_0(v117);
        v90 = sub_2219A6360(v87, v89, &v118);

        *(v81 + 14) = v90;
        _os_log_impl(&dword_221989000, v79, v80, "%sCompleted with %s", v81, 0x16u);
        v91 = v116;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v91, -1, -1);
        MEMORY[0x223DA4C00](v81, -1, -1);

        goto LABEL_41;
      }
    }

    sub_2219EC58C(v119, &qword_27CFB8048);
    goto LABEL_41;
  }

  sub_2219BAF0C(v2 + v25[241], v122, &qword_27CFB7FD0, &qword_221BD2888);
  v30 = v122[3];
  if (v122[3])
  {
    v31 = v122[4];
    __swift_project_boxed_opaque_existential_0(v122, v122[3]);
    v32 = v113;
    sub_2219E7D00(v113);
    (*(v31 + 24))(v32, v30, v31);
    (*(v4 + 8))(v32, v3);
    __swift_destroy_boxed_opaque_existential_0(v122);
  }

  else
  {
    sub_2219EC58C(v122, &qword_27CFB7FD0);
  }

  v36 = *(v2 + qword_27CFBC770);
  if (v36)
  {
    v37 = *(v2 + qword_27CFBC770 + 8);

    sub_22198BEB8(v36, v37);
    v38 = sub_221BCCD68();
    v39 = sub_221BCDA78();

    if (os_log_type_enabled(v38, v39))
    {
      v116 = v19;
      v40 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v122[0] = v113;
      *v40 = 136315394;
      v41 = sub_2219CB3CC();
      v43 = sub_2219A6360(v41, v42, v122);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = sub_221BCE198();
      if (!v44)
      {
        v44 = swift_allocError();
      }

      v45 = v44;
      v46 = v36();
      v48 = v47;

      v49 = sub_2219A6360(v46, v48, v122);

      *(v40 + 14) = v49;
      _os_log_impl(&dword_221989000, v38, v39, "%s %s", v40, 0x16u);
      v50 = v113;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v50, -1, -1);
      MEMORY[0x223DA4C00](v40, -1, -1);
      sub_22198B60C(v36, v37);

      v19 = v116;
    }

    else
    {

      sub_22198B60C(v36, v37);
    }

    goto LABEL_42;
  }

  v65 = *(v2 + qword_27CFDED20 + 17);

  v66 = sub_221BCCD68();
  v67 = sub_221BCDA78();

  v68 = os_log_type_enabled(v66, v67);
  if (v65)
  {
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v122[0] = v70;
      *v69 = 136315395;
      v71 = sub_2219CB3CC();
      v73 = v19;
      v74 = sub_2219A6360(v71, v72, v122);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2085;
      v75 = sub_221BCE288();
      v77 = sub_2219A6360(v75, v76, v122);

      *(v69 + 14) = v77;
      v19 = v73;
      v78 = "%sFailed with %{sensitive}s";
LABEL_37:
      _os_log_impl(&dword_221989000, v66, v67, v78, v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v70, -1, -1);
      MEMORY[0x223DA4C00](v69, -1, -1);
    }
  }

  else if (v68)
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v122[0] = v70;
    *v69 = 136315395;
    v92 = sub_2219CB3CC();
    v94 = v19;
    v95 = sub_2219A6360(v92, v93, v122);

    *(v69 + 4) = v95;
    *(v69 + 12) = 2081;
    v96 = sub_221BCE288();
    v98 = sub_2219A6360(v96, v97, v122);

    *(v69 + 14) = v98;
    v19 = v94;
    v78 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_42:
  v99 = v115;
  v100 = v114;
  sub_2219E7E58(v19, v115, v114 == 1);
  if (v100 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v101 = *(v2 + qword_27CFBC780);
    v114 = *(v2 + qword_27CFBC780 + 8);
    v115 = v101;
    v116 = v19;
    v102 = *(v2 + qword_27CFBC780 + 16);
    v103 = sub_2219CB440();
    v105 = v104;
    v123[0] = 0;
    v123[1] = 0xE000000000000000;
    sub_221BCDE68();
    v106 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v106);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v107 = v123[0];
    v108 = v123[1];
    v109 = *&v112[v2];

    sub_221BB52B0(v115, v114, v102, v103, v105, v116, v99, v107, v108, 1, 1, v109);
  }
}

void sub_2219CE930(uint64_t a1)
{
  v2 = v1;
  v138 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = v132 - v8;
  v10 = sub_221BCDFB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v132 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v132 - v18;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v134 = v6;
  v135 = v4;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v20 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v20, v19, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v10);
  v22 = 0;
  v137 = 0;
  v136 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v11 + 32))(v16, v19, v10);
    sub_221BCDF88();
    v22 = sub_221BCDFA8();
    v137 = v23;
    v24 = *(v11 + 8);
    v24(v13, v10);
    v24(v16, v10);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v25, v2);
  }

  v26 = off_27CFBC778;
  swift_beginAccess();
  v133 = v26;
  v27 = *&v26[v2];
  v28 = &unk_27CFBC000;
  if (*(v27 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v146, &qword_27CFB7FD0, &qword_221BD2888);
    v29 = v147;
    if (v147)
    {
      v30 = v148;
      __swift_project_boxed_opaque_existential_0(&v146, v147);
      v31 = v3;
      v32 = v22;
      v33 = *(v30 + 32);

      v33(v34, 0x697274654D736961, 0xEA00000000007363, v29, v30);
      v28 = &unk_27CFBC000;
      v22 = v32;
      v3 = v31;

      __swift_destroy_boxed_opaque_existential_0(&v146);
    }

    else
    {
      sub_2219EC58C(&v146, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v138, &v146, &qword_27CFB8000, &unk_221BD28B0);
  if ((v149 & 1) == 0)
  {
    sub_22198B358(&v146, v143);
    sub_2219BAF0C(v2 + v28[241], v139, &qword_27CFB7FD0, &qword_221BD2888);
    v44 = v140;
    if (v140)
    {
      v45 = v141;
      __swift_project_boxed_opaque_existential_0(v139, v140);
      v46 = v135;
      (*(v135 + 104))(v9, *MEMORY[0x277CD8AC8], v3);
      (*(v45 + 24))(v9, v44, v45);
      (*(v46 + 8))(v9, v3);
      __swift_destroy_boxed_opaque_existential_0(v139);
    }

    else
    {
      sub_2219EC58C(v139, &qword_27CFB7FD0);
    }

    v47 = *(v2 + qword_27CFBC768);
    if (v47)
    {
      v48 = *(v2 + qword_27CFBC768 + 8);
      sub_2219A1B08(v143, v139);
      sub_22198BEB8(v47, v48);

      v49 = sub_221BCCD68();
      v50 = sub_221BCDA98();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v142 = v52;
        *v51 = 136315394;
        v53 = sub_2219CB3CC();
        v55 = sub_2219A6360(v53, v54, &v142);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v56 = v47(v139);
        v58 = v57;
        __swift_destroy_boxed_opaque_existential_0(v139);
        v59 = sub_2219A6360(v56, v58, &v142);

        *(v51 + 14) = v59;
        _os_log_impl(&dword_221989000, v49, v50, "%s%s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v52, -1, -1);
        MEMORY[0x223DA4C00](v51, -1, -1);

        sub_22198B60C(v47, v48);
LABEL_31:
        __swift_destroy_boxed_opaque_existential_0(v143);
        goto LABEL_51;
      }

      sub_22198B60C(v47, v48);
    }

    else
    {
      sub_2219A1B08(v143, v139);

      v60 = sub_221BCCD68();
      v61 = sub_221BCDA98();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v142 = v63;
        *v62 = 136315394;
        v64 = sub_2219CB3CC();
        v66 = sub_2219A6360(v64, v65, &v142);

        *(v62 + 4) = v66;
        *(v62 + 12) = 2080;
        v67 = sub_2219C0FF8(v139, *(v2 + qword_27CFDED20 + 17), &qword_27CFB7FB8, &qword_221BD2870, &qword_27CFB7FD8, &unk_221BD2890);
        v69 = v68;
        __swift_destroy_boxed_opaque_existential_0(v139);
        v70 = sub_2219A6360(v67, v69, &v142);

        *(v62 + 14) = v70;
        _os_log_impl(&dword_221989000, v60, v61, "%sCompleted with %s", v62, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v63, -1, -1);
        MEMORY[0x223DA4C00](v62, -1, -1);

        goto LABEL_31;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v139);
    goto LABEL_31;
  }

  v35 = v146;
  sub_2219BAF0C(v2 + v28[241], v143, &qword_27CFB7FD0, &qword_221BD2888);
  v36 = v144;
  if (v144)
  {
    v37 = v145;
    v38 = __swift_project_boxed_opaque_existential_0(v143, v144);
    v142 = v35;
    v39 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    if (swift_dynamicCast())
    {
      v138 = v37;
      __swift_destroy_boxed_opaque_existential_0(v139);
      v139[0] = v35;
      v40 = v35;
      v41 = sub_221BCE198();
      v132[1] = v38;
      if (v41)
      {
        v42 = v41;
        v43 = v22;
      }

      else
      {
        v43 = v22;
        v42 = swift_allocError();
        *v73 = v35;
      }

      v74 = sub_221BCC328();

      v75 = [v74 domain];
      v76 = sub_221BCD388();
      v78 = v77;

      v79 = [v74 code];
      v72 = v134;
      *v134 = v76;
      v72[1] = v78;
      v72[2] = v79;
      v71 = MEMORY[0x277CD8AB8];
      v22 = v43;
      v37 = v138;
    }

    else
    {
      v71 = MEMORY[0x277CD8AC0];
      v72 = v134;
    }

    v80 = v135;
    (*(v135 + 104))(v72, *v71, v3);
    (*(v37 + 24))(v72, v36, v37);
    (*(v80 + 8))(v72, v3);
    __swift_destroy_boxed_opaque_existential_0(v143);
  }

  else
  {
    sub_2219EC58C(v143, &qword_27CFB7FD0);
  }

  v81 = *(v2 + qword_27CFBC770);
  if (!v81)
  {
    v94 = *(v2 + qword_27CFDED20 + 17);

    v95 = v35;
    v96 = sub_221BCCD68();
    v97 = sub_221BCDA78();

    v98 = os_log_type_enabled(v96, v97);
    if (v94)
    {
      if (v98)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v143[0] = v100;
        *v99 = 136315395;
        v101 = sub_2219CB3CC();
        v103 = sub_2219A6360(v101, v102, v143);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2085;
        v139[0] = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v104 = sub_221BCE288();
        v106 = v105;

        v107 = sub_2219A6360(v104, v106, v143);

        *(v99 + 14) = v107;
        v108 = "%sFailed with %{sensitive}s";
LABEL_45:
        _os_log_impl(&dword_221989000, v96, v97, v108, v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v100, -1, -1);
        MEMORY[0x223DA4C00](v99, -1, -1);
LABEL_47:

        goto LABEL_48;
      }
    }

    else if (v98)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v143[0] = v100;
      *v99 = 136315395;
      v109 = sub_2219CB3CC();
      v111 = sub_2219A6360(v109, v110, v143);

      *(v99 + 4) = v111;
      *(v99 + 12) = 2081;
      v139[0] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v112 = sub_221BCE288();
      v114 = v113;

      v115 = sub_2219A6360(v112, v114, v143);

      *(v99 + 14) = v115;
      v108 = "%sFailed with %{private}s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  v82 = *(v2 + qword_27CFBC770 + 8);
  v83 = v35;

  v84 = v35;
  sub_22198BEB8(v81, v82);
  v85 = sub_221BCCD68();
  v86 = sub_221BCDA78();

  if (!os_log_type_enabled(v85, v86))
  {

    sub_22198B60C(v81, v82);
LABEL_48:

    goto LABEL_51;
  }

  v138 = v22;
  v87 = swift_slowAlloc();
  v135 = swift_slowAlloc();
  v143[0] = v135;
  *v87 = 136315394;
  v88 = sub_2219CB3CC();
  v90 = sub_2219A6360(v88, v89, v143);

  *(v87 + 4) = v90;
  *(v87 + 12) = 2080;
  v139[0] = v35;
  v91 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v92 = sub_221BCE198();
  if (v92)
  {
    v93 = v92;
  }

  else
  {
    v93 = swift_allocError();
    *v116 = v35;
  }

  v117 = v81(v93);
  v119 = v118;

  v120 = sub_2219A6360(v117, v119, v143);

  *(v87 + 14) = v120;
  _os_log_impl(&dword_221989000, v85, v86, "%s %s", v87, 0x16u);
  v121 = v135;
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v121, -1, -1);
  MEMORY[0x223DA4C00](v87, -1, -1);

  sub_22198B60C(v81, v82);
  v22 = v138;
LABEL_51:
  v122 = v137;
  v123 = v136;
  sub_2219E7E58(v22, v137, v136 == 1);
  if (v123 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v124 = *(v2 + qword_27CFBC780 + 8);
    v138 = *(v2 + qword_27CFBC780);
    v137 = v124;
    v125 = *(v2 + qword_27CFBC780 + 16);
    v126 = sub_2219CB440();
    v128 = v127;
    *&v146 = 0;
    *(&v146 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v129 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v129);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v130 = v146;
    v131 = *&v133[v2];

    sub_221BB52B0(v138, v137, v125, v126, v128, v22, v122, v130, *(&v130 + 1), 1, 1, v131);
  }
}

void sub_2219CF9D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_221BCCE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_221BCDFB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v110 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v110 - v16;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v113 = v4;
  v18 = a1;
  v112 = v5;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v19 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v19, v17, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v8);
  v21 = 0;
  v115 = 0;
  v114 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v9 + 32))(v14, v17, v8);
    sub_221BCDF88();
    v21 = sub_221BCDFA8();
    v115 = v22;
    v23 = *(v9 + 8);
    v23(v11, v8);
    v23(v14, v8);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v24, v2);
  }

  v25 = off_27CFBC778;
  swift_beginAccess();
  v111 = v25;
  v26 = *&v25[v2];
  v27 = &unk_27CFBC000;
  v28 = v18;
  if (*(v26 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v123, &qword_27CFB7FD0, &qword_221BD2888);
    v29 = v124;
    if (v124)
    {
      v30 = v125;
      __swift_project_boxed_opaque_existential_0(&v123, v124);
      v31 = v21;
      v32 = *(v30 + 32);

      v34 = v30;
      v27 = &unk_27CFBC000;
      v32(v33, 0x697274654D736961, 0xEA00000000007363, v29, v34);
      v28 = v18;
      v21 = v31;

      __swift_destroy_boxed_opaque_existential_0(&v123);
    }

    else
    {
      sub_2219EC58C(&v123, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v28, &v123, &qword_27CFB7FC0, &qword_221BD2878);
  if ((v126 & 1) == 0)
  {
    sub_22198B358(&v123, v120);
    sub_2219BAF0C(v2 + v27[241], v117, &qword_27CFB7FD0, &qword_221BD2888);
    v38 = v118;
    v39 = v113;
    if (v118)
    {
      v40 = v119;
      __swift_project_boxed_opaque_existential_0(v117, v118);
      v41 = v112;
      (*(v112 + 104))(v7, *MEMORY[0x277CD8AC8], v39);
      (*(v40 + 24))(v7, v38, v40);
      (*(v41 + 8))(v7, v39);
      __swift_destroy_boxed_opaque_existential_0(v117);
    }

    else
    {
      sub_2219EC58C(v117, &qword_27CFB7FD0);
    }

    v57 = *(v2 + qword_27CFBC768);
    if (v57)
    {
      v58 = *(v2 + qword_27CFBC768 + 8);
      sub_2219A1B08(v120, v117);
      sub_22198BEB8(v57, v58);

      v59 = sub_221BCCD68();
      v60 = sub_221BCDA98();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v116 = v62;
        *v61 = 136315394;
        v63 = sub_2219CB3CC();
        v65 = sub_2219A6360(v63, v64, &v116);

        *(v61 + 4) = v65;
        *(v61 + 12) = 2080;
        v66 = v57(v117);
        v68 = v67;
        __swift_destroy_boxed_opaque_existential_0(v117);
        v69 = sub_2219A6360(v66, v68, &v116);

        *(v61 + 14) = v69;
        _os_log_impl(&dword_221989000, v59, v60, "%s%s", v61, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v62, -1, -1);
        MEMORY[0x223DA4C00](v61, -1, -1);

        sub_22198B60C(v57, v58);
LABEL_41:
        __swift_destroy_boxed_opaque_existential_0(v120);
        goto LABEL_42;
      }

      sub_22198B60C(v57, v58);
    }

    else
    {
      sub_2219A1B08(v120, v117);

      v83 = sub_221BCCD68();
      v84 = sub_221BCDA98();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v116 = v86;
        *v85 = 136315394;
        v87 = sub_2219CB3CC();
        v89 = sub_2219A6360(v87, v88, &v116);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2080;
        v90 = sub_2219C0FF8(v117, *(v2 + qword_27CFDED20 + 17), &qword_27CFB7FB8, &qword_221BD2870, &qword_27CFB7FD8, &unk_221BD2890);
        v92 = v91;
        __swift_destroy_boxed_opaque_existential_0(v117);
        v93 = sub_2219A6360(v90, v92, &v116);

        *(v85 + 14) = v93;
        _os_log_impl(&dword_221989000, v83, v84, "%sCompleted with %s", v85, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v86, -1, -1);
        MEMORY[0x223DA4C00](v85, -1, -1);

        goto LABEL_41;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v117);
    goto LABEL_41;
  }

  sub_2219BAF0C(v2 + v27[241], v120, &qword_27CFB7FD0, &qword_221BD2888);
  v35 = v121;
  v36 = v113;
  if (v121)
  {
    v37 = v122;
    __swift_project_boxed_opaque_existential_0(v120, v121);
    sub_2219E7D00(v7);
    (*(v37 + 24))(v7, v35, v37);
    (*(v112 + 8))(v7, v36);
    __swift_destroy_boxed_opaque_existential_0(v120);
  }

  else
  {
    sub_2219EC58C(v120, &qword_27CFB7FD0);
  }

  v42 = *(v2 + qword_27CFBC770);
  if (v42)
  {
    v43 = *(v2 + qword_27CFBC770 + 8);

    sub_22198BEB8(v42, v43);
    v44 = sub_221BCCD68();
    v45 = sub_221BCDA78();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v120[0] = v47;
      *v46 = 136315394;
      v48 = sub_2219CB3CC();
      v50 = sub_2219A6360(v48, v49, v120);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      v51 = sub_221BCE198();
      v110 = v21;
      if (!v51)
      {
        v51 = swift_allocError();
      }

      v52 = v51;
      v53 = v42();
      v55 = v54;

      v56 = sub_2219A6360(v53, v55, v120);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_221989000, v44, v45, "%s %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v47, -1, -1);
      MEMORY[0x223DA4C00](v46, -1, -1);
      sub_22198B60C(v42, v43);

      v21 = v110;
    }

    else
    {

      sub_22198B60C(v42, v43);
    }

    goto LABEL_42;
  }

  v70 = *(v2 + qword_27CFDED20 + 17);

  v71 = sub_221BCCD68();
  v72 = sub_221BCDA78();

  v73 = os_log_type_enabled(v71, v72);
  if (v70)
  {
    if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v120[0] = v75;
      *v74 = 136315395;
      v76 = sub_2219CB3CC();
      v78 = sub_2219A6360(v76, v77, v120);

      *(v74 + 4) = v78;
      *(v74 + 12) = 2085;
      v79 = sub_221BCE288();
      v81 = sub_2219A6360(v79, v80, v120);

      *(v74 + 14) = v81;
      v82 = "%sFailed with %{sensitive}s";
LABEL_37:
      _os_log_impl(&dword_221989000, v71, v72, v82, v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v75, -1, -1);
      MEMORY[0x223DA4C00](v74, -1, -1);
    }
  }

  else if (v73)
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v120[0] = v75;
    *v74 = 136315395;
    v94 = sub_2219CB3CC();
    v96 = sub_2219A6360(v94, v95, v120);

    *(v74 + 4) = v96;
    *(v74 + 12) = 2081;
    v97 = sub_221BCE288();
    v99 = sub_2219A6360(v97, v98, v120);

    *(v74 + 14) = v99;
    v82 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_42:
  v100 = v115;
  v101 = v114;
  sub_2219E7E58(v21, v115, v114 == 1);
  if (v101 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v115 = *(v2 + qword_27CFBC780);
    v110 = v21;
    v102 = *(v2 + qword_27CFBC780 + 8);
    v103 = *(v2 + qword_27CFBC780 + 16);
    v104 = sub_2219CB440();
    v106 = v105;
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v107 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v107);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v108 = v123;
    v109 = *&v111[v2];

    sub_221BB52B0(v115, v102, v103, v104, v106, v110, v100, v108, *(&v108 + 1), 1, 1, v109);
  }
}

void sub_2219D07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v26 = v21;
  v158 = v27;
  v156 = v28;
  v29 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_5();
  v35 = (v33 - v34);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_163();
  v37 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_5();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v45);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_157();
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v47);
    return;
  }

  v155 = v35;
  OUTLINED_FUNCTION_61_0();
  v49 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v21 + qword_27CFBC7A0);
  sub_2219BAF0C(v21 + v49, v22, &qword_27CFB7FC8, &qword_221BD2880);
  v50 = OUTLINED_FUNCTION_151(v22);
  v157 = 0;
  OUTLINED_FUNCTION_175(v50, &a17);
  if (!v51)
  {
    v52 = OUTLINED_FUNCTION_90();
    v53(v52, v22, v37);
    sub_221BCDF88();
    v157 = sub_221BCDFA8();
    v22 = *(v39 + 8);
    v54 = OUTLINED_FUNCTION_118();
    (v22)(v54);
    v55 = OUTLINED_FUNCTION_16();
    (v22)(v55);
  }

  if (*(v21 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_110(v56);
  }

  v57 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a14);
  if (v58)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v57[241]);
    v43 = v160;
    if (v160)
    {
      v22 = v161;
      OUTLINED_FUNCTION_62_0(v159, v160);
      v59 = v31;
      v60 = v29;
      LOBYTE(v49) = v22 + 32;
      v61 = v22[4];

      OUTLINED_FUNCTION_3_11();
      v61();
      v57 = &unk_27CFBC000;
      v29 = v60;
      v31 = v59;

      __swift_destroy_boxed_opaque_existential_0(v159);
    }

    else
    {
      sub_2219EC58C(v159, &qword_27CFB7FD0);
    }
  }

  if ((v158 & 1) == 0)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v57[241]);
    v62 = v160;
    if (v160)
    {
      OUTLINED_FUNCTION_13_3();
      (*(v31 + 104))(v23, *MEMORY[0x277CD8AC8], v29);
      v69 = OUTLINED_FUNCTION_26_2();
      v70(v69);
      (*(v31 + 8))(v23, v29);
      __swift_destroy_boxed_opaque_existential_0(v159);
    }

    else
    {
      sub_2219EC58C(v159, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0();
    if (v62)
    {
      v71 = OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_228(v71, v72);
      v73 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_246();
      if (os_log_type_enabled(v73, v49))
      {
        v74 = OUTLINED_FUNCTION_103();
        v159[0] = OUTLINED_FUNCTION_105();
        *v74 = 136315394;
        v75 = sub_2219CB3CC();
        OUTLINED_FUNCTION_102(v75, v76);
        v77 = OUTLINED_FUNCTION_128();
        *(v74 + 4) = v22;
        *(v74 + 12) = 2080;
        v78 = v62(v77);
        OUTLINED_FUNCTION_102(v78, v79);
        OUTLINED_FUNCTION_128();
        *(v74 + 14) = v22;
        _os_log_impl(&dword_221989000, v73, v49, "%s%s", v74, 0x16u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v80 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v80, v81);

        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v62 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_188();
    if (OUTLINED_FUNCTION_211())
    {
      OUTLINED_FUNCTION_103();
      v159[0] = OUTLINED_FUNCTION_43_0();
      v82 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v82, v83);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      v84 = sub_2219C1238(*(v26 + qword_27CFDED20 + 17));
      OUTLINED_FUNCTION_102(v84, v85);
      OUTLINED_FUNCTION_128();
      *(v29 + 14) = v22;
      OUTLINED_FUNCTION_51_0(&dword_221989000, v86, v87, "%sCompleted with %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
LABEL_42:
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v57[241]);
  v62 = v160;
  if (v160)
  {
    v153 = v29;
    OUTLINED_FUNCTION_47();
    v63 = v156;
    OUTLINED_FUNCTION_244();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_135();
      v65 = sub_221BCE198();
      if (v65)
      {
        v66 = v65;
        v67 = OUTLINED_FUNCTION_119();
        sub_2219EBE10(v67, v68);
      }

      else
      {
        v66 = OUTLINED_FUNCTION_17_2(v64, MEMORY[0x277D84950]);
        *v90 = v156;
      }

      v91 = sub_221BCC328();

      v92 = [v91 domain];
      v93 = sub_221BCD388();
      v95 = v94;

      v22 = [v91 code];
      v89 = v155;
      *v155 = v93;
      v155[1] = v95;
      v155[2] = v22;
      v88 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v88 = MEMORY[0x277CD8AC0];
      v89 = v155;
    }

    v43 = v29;
    (*(v31 + 104))(v89, *v88, v29);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v96();
    v97 = *(v31 + 8);
    LOBYTE(v31) = v31 + 8;
    v97(v89, v29);
    __swift_destroy_boxed_opaque_existential_0(v159);
  }

  else
  {
    sub_2219EC58C(v159, &qword_27CFB7FD0);
    v63 = v156;
  }

  OUTLINED_FUNCTION_45_0();
  if (!v62)
  {
    OUTLINED_FUNCTION_177();

    v116 = OUTLINED_FUNCTION_119();
    sub_2219EBE04(v116, v117);
    v62 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_153_0();
    v118 = OUTLINED_FUNCTION_119();
    sub_2219EBE10(v118, v119);
    v120 = OUTLINED_FUNCTION_169();
    if (v43)
    {
      if (v120)
      {
        OUTLINED_FUNCTION_103();
        v121 = OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_146(v121);
        v122 = OUTLINED_FUNCTION_125(4.8151e-34);
        OUTLINED_FUNCTION_102(v122, v123);
        OUTLINED_FUNCTION_128();
        *(v43 + 4) = v22;
        OUTLINED_FUNCTION_116(2085);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v124 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v124, v125);
        OUTLINED_FUNCTION_128();
        *(v43 + 14) = v22;
        v128 = "%sFailed with %{sensitive}s";
LABEL_41:
        OUTLINED_FUNCTION_41_0(&dword_221989000, v126, v127, v128);
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_42;
      }
    }

    else if (v120)
    {
      OUTLINED_FUNCTION_103();
      v129 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_146(v129);
      v130 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v130, v131);
      OUTLINED_FUNCTION_128();
      *(v43 + 4) = v22;
      OUTLINED_FUNCTION_116(2081);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v132 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v132, v133);
      OUTLINED_FUNCTION_128();
      *(v43 + 14) = v22;
      v128 = "%sFailed with %{private}s";
      goto LABEL_41;
    }

LABEL_43:

    goto LABEL_48;
  }

  v99 = *(v98 + 8);

  v100 = OUTLINED_FUNCTION_119();
  sub_2219EBE04(v100, v101);
  v102 = OUTLINED_FUNCTION_1_0();
  v104 = OUTLINED_FUNCTION_207(v102, v103);
  sub_221BCDA78();
  OUTLINED_FUNCTION_209();
  v105 = OUTLINED_FUNCTION_119();
  sub_2219EBE10(v105, v106);
  if (os_log_type_enabled(v104, v31))
  {
    v107 = OUTLINED_FUNCTION_103();
    v159[0] = OUTLINED_FUNCTION_105();
    v108 = OUTLINED_FUNCTION_248(4.8151e-34);
    OUTLINED_FUNCTION_102(v108, v109);
    OUTLINED_FUNCTION_128();
    *(v107 + 4) = v22;
    OUTLINED_FUNCTION_130();
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v112 = OUTLINED_FUNCTION_208(v110, v111, MEMORY[0x277D84950]);
    if (v112)
    {
      v113 = v112;
      v114 = OUTLINED_FUNCTION_119();
      sub_2219EBE10(v114, v115);
    }

    else
    {
      v113 = OUTLINED_FUNCTION_112(0, MEMORY[0x277D84950]);
      *v134 = v63;
    }

    v62(v113);
    OUTLINED_FUNCTION_184();

    v135 = OUTLINED_FUNCTION_64();
    sub_2219A6360(v135, v63, v136);
    OUTLINED_FUNCTION_144();

    *(v107 + 14) = v99;
    OUTLINED_FUNCTION_247(&dword_221989000, v104, v31, "%s %s", v153, v154);
    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

LABEL_47:
  v137 = OUTLINED_FUNCTION_1_0();
  sub_22198B60C(v137, v138);
LABEL_48:
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_191(v157, v139, v140);
  if (v62 != 1 && (*(v26 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95(v157) & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v141 = sub_221BCE3F8();
    v142 = OUTLINED_FUNCTION_101(v141, 1000.0);
    OUTLINED_FUNCTION_100(v142, v143, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v144 = v159[1];
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v145, v146, v147, v148, v149, v150, v151, v152, v144, v154, v155);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D12F8()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v4 = v3;
  v5 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = (v10 - v9);
  v12 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_165();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  v20 = &v104 - v19;
  os_unfair_lock_lock((v0 + 32));
  if (*(v0 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v21);
    return;
  }

  LODWORD(v108) = v4;
  v106 = v7;
  OUTLINED_FUNCTION_61_0();
  v23 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v0 + qword_27CFBC7A0);
  sub_2219BAF0C(v0 + v23, v20, &qword_27CFB7FC8, &qword_221BD2880);
  v24 = OUTLINED_FUNCTION_151(v20);
  v25 = 0;
  v109 = 0;
  v107 = v24;
  if (v24 != 1)
  {
    v26 = OUTLINED_FUNCTION_90();
    v27(v26, v20, v12);
    sub_221BCDF88();
    v25 = sub_221BCDFA8();
    v109 = v28;
    v29 = *(v14 + 8);
    LOBYTE(v23) = v29;
    v30 = OUTLINED_FUNCTION_24();
    v29(v30);
    v31 = OUTLINED_FUNCTION_16();
    v29(v31);
  }

  if (*(v0 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_160(v32);
  }

  v33 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  v105 = v33;
  v34 = *&v33[v2];
  v35 = &unk_27CFBC000;
  v36 = v108;
  if (!*(v34 + 16))
  {
LABEL_12:
    if (v36)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v1 = v112;
  if (v112)
  {
    v37 = v113;
    OUTLINED_FUNCTION_62_0(&v110, v112);
    v20 = v5;
    v38 = v25;
    LOBYTE(v23) = v37 + 32;
    v39 = *(v37 + 32);

    OUTLINED_FUNCTION_3_11();
    v35 = &unk_27CFBC000;
    v39();
    v36 = v108;
    v25 = v38;
    v5 = v20;

    __swift_destroy_boxed_opaque_existential_0(&v110);
    goto LABEL_12;
  }

  sub_2219EC58C(&v110, &qword_27CFB7FD0);
  if (v36)
  {
LABEL_13:
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
    v40 = v112;
    if (v112)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2219E7D00(v11);
      OUTLINED_FUNCTION_60_0();
      OUTLINED_FUNCTION_56_0();
      v41();
      v42 = OUTLINED_FUNCTION_221();
      v43(v42);
      __swift_destroy_boxed_opaque_existential_0(&v110);
    }

    else
    {
      sub_2219EC58C(&v110, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0();
    if (v40)
    {
      v50 = *(v49 + 8);

      v51 = OUTLINED_FUNCTION_72();
      v53 = OUTLINED_FUNCTION_207(v51, v52);
      sub_221BCDA78();
      OUTLINED_FUNCTION_251();
      if (os_log_type_enabled(v53, v20))
      {
        v54 = OUTLINED_FUNCTION_103();
        v110 = OUTLINED_FUNCTION_105();
        v55 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_102(v55, v56);
        OUTLINED_FUNCTION_148();
        *(v54 + 4) = &unk_27CFBC000;
        OUTLINED_FUNCTION_173();
        v57 = sub_221BCE198();
        v104 = v25;
        if (!v57)
        {
          v57 = OUTLINED_FUNCTION_17_2(MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
        }

        v58 = v57;
        v40();
        OUTLINED_FUNCTION_143();

        v59 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v59, v25, v60);
        OUTLINED_FUNCTION_97();

        *(v54 + 14) = v50;
        OUTLINED_FUNCTION_214(&dword_221989000, v53, v20, "%s %s", v104, v105);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v61 = OUTLINED_FUNCTION_72();
        sub_22198B60C(v61, v62);

        v25 = v104;
        goto LABEL_38;
      }

LABEL_28:

      v71 = OUTLINED_FUNCTION_72();
      sub_22198B60C(v71, v72);
      goto LABEL_38;
    }

    v73 = *(v2 + qword_27CFDED20 + 17);

    v74 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_249();
    v75 = os_log_type_enabled(v74, v5);
    if (v73)
    {
      if (v75)
      {
        OUTLINED_FUNCTION_103();
        v76 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_146(v76);
        v77 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_102(v77, v78);
        OUTLINED_FUNCTION_148();
        *(v73 + 4) = &unk_27CFBC000;
        *(v73 + 12) = 2085;
        v79 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v79, v80);
        OUTLINED_FUNCTION_148();
        *(v73 + 14) = &unk_27CFBC000;
        OUTLINED_FUNCTION_154(&dword_221989000, v74, v5, "%sFailed with %{sensitive}s");
LABEL_36:
        OUTLINED_FUNCTION_197();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_37;
      }
    }

    else if (v75)
    {
      OUTLINED_FUNCTION_103();
      v86 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_146(v86);
      v87 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v87, v88);
      OUTLINED_FUNCTION_148();
      *(v73 + 4) = &unk_27CFBC000;
      *(v73 + 12) = 2081;
      v89 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v89, v90);
      OUTLINED_FUNCTION_148();
      *(v73 + 14) = &unk_27CFBC000;
      OUTLINED_FUNCTION_154(&dword_221989000, v74, v5, "%sFailed with %{private}s");
      goto LABEL_36;
    }

    goto LABEL_37;
  }

LABEL_16:
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
  v44 = v112;
  if (v112)
  {
    OUTLINED_FUNCTION_13_3();
    v45 = v106;
    (*(v106 + 104))(v11, *MEMORY[0x277CD8AC8], v5);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v46();
    v35 = (v45 + 8);
    v47 = OUTLINED_FUNCTION_221();
    v48(v47);
    __swift_destroy_boxed_opaque_existential_0(&v110);
  }

  else
  {
    sub_2219EC58C(&v110, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0();
  if (v44)
  {
    v63 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_228(v63, v64);
    v53 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_209();
    if (os_log_type_enabled(v53, v23))
    {
      OUTLINED_FUNCTION_103();
      v110 = OUTLINED_FUNCTION_43_0();
      v65 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v65, v66);
      OUTLINED_FUNCTION_148();
      *(v1 + 4) = v35;
      OUTLINED_FUNCTION_83();
      v67 = v44();
      OUTLINED_FUNCTION_102(v67, v68);
      OUTLINED_FUNCTION_148();
      *(v1 + 14) = v35;
      OUTLINED_FUNCTION_154(&dword_221989000, v53, v23, "%s%s", v104, v105);
      OUTLINED_FUNCTION_195();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v69 = OUTLINED_FUNCTION_72();
      sub_22198B60C(v69, v70);

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v74 = sub_221BCCD68();
  sub_221BCDA98();
  OUTLINED_FUNCTION_249();
  if (os_log_type_enabled(v74, v5))
  {
    OUTLINED_FUNCTION_103();
    v81 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_146(v81);
    v82 = OUTLINED_FUNCTION_134(4.8151e-34);
    OUTLINED_FUNCTION_102(v82, v83);
    OUTLINED_FUNCTION_148();
    *(v1 + 4) = v35;
    OUTLINED_FUNCTION_83();
    v84 = sub_2219C1238(*(v2 + qword_27CFDED20 + 17));
    OUTLINED_FUNCTION_102(v84, v85);
    OUTLINED_FUNCTION_148();
    *(v1 + 14) = v35;
    OUTLINED_FUNCTION_154(&dword_221989000, v74, v5, "%sCompleted with %s");
    goto LABEL_36;
  }

LABEL_37:

LABEL_38:
  v91 = v107;
  v92 = v109;
  sub_2219E7E58(v25, v109, v107 == 1);
  if (v91 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0)
  {
    OUTLINED_FUNCTION_140();
    if ((sub_221BCE408() & 1) == 0)
    {
      v108 = *(v2 + qword_27CFBC780);
      v104 = v25;
      sub_2219CB440();
      v110 = 0;
      v111 = 0xE000000000000000;
      sub_221BCDE68();
      v93 = OUTLINED_FUNCTION_63_0();
      MEMORY[0x223DA31F0](v93);

      OUTLINED_FUNCTION_28_1();
      v94 = sub_221BCE3F8();
      v95 = OUTLINED_FUNCTION_101(v94, 1000.0);
      OUTLINED_FUNCTION_100(v95, v96, 1.0e-15);
      sub_221BCD978();
      OUTLINED_FUNCTION_168();
      v97 = v110;
      v98 = v111;

      OUTLINED_FUNCTION_7_4();
      v104 = v98;
      OUTLINED_FUNCTION_217();
      sub_221BB52B0(v99, v100, v101, v102, v103, v104, v92, v97, v104, v105, SBYTE1(v105), v106);
      OUTLINED_FUNCTION_155();
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D1C88(char *a1)
{
  v2 = v1;
  v160 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v156 = (&v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v154 = &v149 - v7;
  v153 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v153);
  v157 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v155 = &v149 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v149 - v12;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80E8, &qword_221BD29F0);
  MEMORY[0x28223BE20](v159);
  v15 = (&v149 - v14);
  v16 = sub_221BCDFB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v149 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v149 - v24;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v151 = v4;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v26 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v26, v25, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v16);
  v28 = 0;
  v158 = 0;
  v152 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v17 + 32))(v22, v25, v16);
    sub_221BCDF88();
    v28 = sub_221BCDFA8();
    v158 = v29;
    v30 = *(v17 + 8);
    v30(v19, v16);
    v30(v22, v16);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v31, v2);
  }

  v32 = off_27CFBC778;
  swift_beginAccess();
  v150 = v32;
  v33 = *&v32[v2];
  v34 = &unk_27CFBC000;
  if (*(v33 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v163, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = v165;
    if (v165)
    {
      v36 = v166;
      __swift_project_boxed_opaque_existential_0(&v163, v165);
      v149 = v3;
      v37 = *(v36 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v35, v36);
      v34 = &unk_27CFBC000;
      v3 = v149;

      __swift_destroy_boxed_opaque_existential_0(&v163);
    }

    else
    {
      sub_2219EC58C(&v163, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v160, v15, &qword_27CFB80E8, &qword_221BD29F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v15;
    sub_2219BAF0C(v2 + v34[241], &v163, &qword_27CFB7FD0, &qword_221BD2888);
    v40 = v165;
    if (v165)
    {
      v41 = v166;
      __swift_project_boxed_opaque_existential_0(&v163, v165);
      v162 = v39;
      v42 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        v160 = v28;
        __swift_destroy_boxed_opaque_existential_0(v161);
        v161[0] = v39;
        v43 = v39;
        v44 = sub_221BCE198();
        if (v44)
        {
          v45 = v44;
          v46 = v3;
        }

        else
        {
          v46 = v3;
          v45 = swift_allocError();
          *v88 = v39;
        }

        v89 = sub_221BCC328();

        v90 = [v89 domain];
        v91 = sub_221BCD388();
        v93 = v92;

        v94 = [v89 code];
        v95 = v156;
        *v156 = v91;
        v95[1] = v93;
        v95[2] = v94;
        v87 = v95;
        v86 = MEMORY[0x277CD8AB8];
        v3 = v46;
        v28 = v160;
      }

      else
      {
        v86 = MEMORY[0x277CD8AC0];
        v87 = v156;
      }

      v96 = v151;
      (*(v151 + 104))(v87, *v86, v3);
      (*(v41 + 24))(v87, v40, v41);
      (*(v96 + 8))(v87, v3);
      __swift_destroy_boxed_opaque_existential_0(&v163);
    }

    else
    {
      sub_2219EC58C(&v163, &qword_27CFB7FD0);
    }

    v97 = *(v2 + qword_27CFBC770);
    if (v97)
    {
      v98 = *(v2 + qword_27CFBC770 + 8);
      v99 = v39;

      v100 = v39;
      sub_22198BEB8(v97, v98);
      v101 = sub_221BCCD68();
      v102 = sub_221BCDA78();

      if (os_log_type_enabled(v101, v102))
      {
        v160 = v28;
        v103 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v163 = v159;
        *v103 = 136315394;
        v104 = sub_2219CB3CC();
        v106 = sub_2219A6360(v104, v105, &v163);

        *(v103 + 4) = v106;
        *(v103 + 12) = 2080;
        v161[0] = v39;
        v107 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v108 = sub_221BCE198();
        if (v108)
        {
          v109 = v108;
        }

        else
        {
          v109 = swift_allocError();
          *v132 = v39;
        }

        v133 = v97(v109);
        v135 = v134;

        v136 = sub_2219A6360(v133, v135, &v163);

        *(v103 + 14) = v136;
        _os_log_impl(&dword_221989000, v101, v102, "%s %s", v103, 0x16u);
        v137 = v159;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v137, -1, -1);
        MEMORY[0x223DA4C00](v103, -1, -1);

        sub_22198B60C(v97, v98);
        v28 = v160;
        goto LABEL_50;
      }

      sub_22198B60C(v97, v98);
LABEL_47:

      goto LABEL_50;
    }

    v110 = *(v2 + qword_27CFDED20 + 17);

    v111 = v39;
    v112 = sub_221BCCD68();
    v113 = sub_221BCDA78();

    v114 = os_log_type_enabled(v112, v113);
    if (v110)
    {
      if (v114)
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v163 = v116;
        *v115 = 136315395;
        v117 = sub_2219CB3CC();
        v119 = sub_2219A6360(v117, v118, &v163);

        *(v115 + 4) = v119;
        *(v115 + 12) = 2085;
        v161[0] = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v120 = sub_221BCE288();
        v122 = v121;

        v123 = sub_2219A6360(v120, v122, &v163);

        *(v115 + 14) = v123;
        v124 = "%sFailed with %{sensitive}s";
LABEL_44:
        _os_log_impl(&dword_221989000, v112, v113, v124, v115, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v116, -1, -1);
        MEMORY[0x223DA4C00](v115, -1, -1);
LABEL_46:

        goto LABEL_47;
      }
    }

    else if (v114)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v163 = v116;
      *v115 = 136315395;
      v125 = sub_2219CB3CC();
      v127 = sub_2219A6360(v125, v126, &v163);

      *(v115 + 4) = v127;
      *(v115 + 12) = 2081;
      v161[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v128 = sub_221BCE288();
      v130 = v129;

      v131 = sub_2219A6360(v128, v130, &v163);

      *(v115 + 14) = v131;
      v124 = "%sFailed with %{private}s";
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  sub_2219EC2D8(v15, v13, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
  sub_2219BAF0C(v2 + v34[241], &v163, &qword_27CFB7FD0, &qword_221BD2888);
  v47 = v165;
  if (v165)
  {
    v48 = v166;
    __swift_project_boxed_opaque_existential_0(&v163, v165);
    v49 = v151;
    v50 = v154;
    (*(v151 + 104))(v154, *MEMORY[0x277CD8AC8], v3);
    (*(v48 + 24))(v50, v47, v48);
    (*(v49 + 8))(v50, v3);
    __swift_destroy_boxed_opaque_existential_0(&v163);
  }

  else
  {
    sub_2219EC58C(&v163, &qword_27CFB7FD0);
  }

  v51 = v157;
  v52 = *(v2 + qword_27CFBC768);
  if (v52)
  {
    v53 = *(v2 + qword_27CFBC768 + 8);
    v54 = v155;
    sub_2219EC27C(v13, v155, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
    sub_22198BEB8(v52, v53);

    v55 = v13;
    v56 = sub_221BCCD68();
    v57 = sub_221BCDA98();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v160 = v55;
      v59 = v58;
      v159 = swift_slowAlloc();
      v163 = v159;
      *v59 = 136315394;
      v60 = sub_2219CB3CC();
      v62 = sub_2219A6360(v60, v61, &v163);
      v157 = v53;
      v63 = v28;
      v64 = v62;

      *(v59 + 4) = v64;
      *(v59 + 12) = 2080;
      v65 = v52(v54);
      v67 = v66;
      sub_2219EC334(v54, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v68 = v65;
      v28 = v63;
      v69 = sub_2219A6360(v68, v67, &v163);

      *(v59 + 14) = v69;
      _os_log_impl(&dword_221989000, v56, v57, "%s%s", v59, 0x16u);
      v70 = v159;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v70, -1, -1);
      MEMORY[0x223DA4C00](v59, -1, -1);

      sub_22198B60C(v52, v157);
      v71 = v160;
    }

    else
    {

      sub_22198B60C(v52, v53);
      sub_2219EC334(v54, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v71 = v55;
    }
  }

  else
  {
    sub_2219EC27C(v13, v157, type metadata accessor for AppIntentsProtocol.PerformAction.Response);

    v72 = sub_221BCCD68();
    v73 = sub_221BCDA98();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v160 = v13;
      v76 = v75;
      v161[0] = v75;
      *v74 = 136315394;
      v77 = sub_2219CB3CC();
      v79 = sub_2219A6360(v77, v78, v161);

      *(v74 + 4) = v79;
      *(v74 + 12) = 2080;
      v80 = *(v2 + qword_27CFDED20 + 17);
      v165 = v153;
      v166 = sub_2219EBDBC(&qword_27CFB80E0, type metadata accessor for AppIntentsProtocol.PerformAction.Response, &unk_221BE2968);
      v81 = __swift_allocate_boxed_opaque_existential_1(&v163);
      sub_2219EC27C(v51, v81, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      __swift_project_boxed_opaque_existential_0(&v163, v165);
      LOBYTE(v162) = v80;
      v82 = sub_221AE7974(&v162);
      v84 = v83;
      sub_2219EC334(v51, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      __swift_destroy_boxed_opaque_existential_0(&v163);
      v85 = sub_2219A6360(v82, v84, v161);

      *(v74 + 14) = v85;
      _os_log_impl(&dword_221989000, v72, v73, "%sCompleted with %s", v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v76, -1, -1);
      MEMORY[0x223DA4C00](v74, -1, -1);

      v71 = v160;
    }

    else
    {

      sub_2219EC334(v51, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      v71 = v13;
    }
  }

  sub_2219EC334(v71, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
LABEL_50:
  v138 = v152;
  v139 = v158;
  sub_2219E7E58(v28, v158, v152 == 1);
  if (v138 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v140 = *(v2 + qword_27CFBC780);
    v159 = *(v2 + qword_27CFBC780 + 8);
    v160 = v140;
    v141 = *(v2 + qword_27CFBC780 + 16);
    v142 = sub_2219CB440();
    v144 = v143;
    v163 = 0;
    v164 = 0xE000000000000000;
    sub_221BCDE68();
    v145 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v145);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v146 = v163;
    v147 = v164;
    v148 = *&v150[v2];

    sub_221BB52B0(v160, v159, v141, v142, v144, v28, v139, v146, v147, 1, 1, v148);
  }
}

void sub_2219D2F44(uint64_t (*a1)(uint64_t a1))
{
  v2 = v1;
  v134 = a1;
  v3 = sub_221BCCE38();
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v127);
  v128 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v123 - v8;
  MEMORY[0x28223BE20](v10);
  v133 = &v123 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80D8, &qword_221BD29E8);
  MEMORY[0x28223BE20](v12);
  v14 = &v123 - v13;
  v15 = sub_221BCDFB8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v123 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v123 - v23;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v125 = v9;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v25 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v25, v24, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v15);
  v129 = 0;
  v130 = 0;
  v126 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v16 + 32))(v21, v24, v15);
    sub_221BCDF88();
    v27 = sub_221BCDFA8();
    v129 = v28;
    v130 = v27;
    v29 = *(v16 + 8);
    v29(v18, v15);
    v29(v21, v15);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v30, v2);
  }

  v31 = off_27CFBC778;
  swift_beginAccess();
  v124 = v31;
  v32 = *&v31[v2];
  v33 = &unk_27CFBC000;
  if (*(v32 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v137, &qword_27CFB7FD0, &qword_221BD2888);
    v34 = v139;
    if (v139)
    {
      v35 = v140;
      __swift_project_boxed_opaque_existential_0(&v137, v139);
      v36 = *(v35 + 32);

      v36(v37, 0x697274654D736961, 0xEA00000000007363, v34, v35);
      v33 = &unk_27CFBC000;

      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {
      sub_2219EC58C(&v137, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v134, v14, &qword_27CFB80D8, &qword_221BD29E8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v40 = v133;
    sub_2219EC2D8(v14, v133, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
    sub_2219BAF0C(v2 + v33[241], &v137, &qword_27CFB7FD0, &qword_221BD2888);
    v41 = v139;
    if (v139)
    {
      v42 = v140;
      __swift_project_boxed_opaque_existential_0(&v137, v139);
      v44 = v131;
      v43 = v132;
      (*(v131 + 104))(v5, *MEMORY[0x277CD8AC8], v132);
      (*(v42 + 24))(v5, v41, v42);
      (*(v44 + 8))(v5, v43);
      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {
      sub_2219EC58C(&v137, &qword_27CFB7FD0);
    }

    v60 = v128;
    v61 = *(v2 + qword_27CFBC768);
    if (v61)
    {
      v62 = *(v2 + qword_27CFBC768 + 8);
      v63 = v125;
      sub_2219EC27C(v40, v125, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
      sub_22198BEB8(v61, v62);

      v64 = sub_221BCCD68();
      v65 = sub_221BCDA98();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v137 = v67;
        *v66 = 136315394;
        v68 = sub_2219CB3CC();
        v70 = sub_2219A6360(v68, v69, &v137);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        v71 = v61(v63);
        v73 = v72;
        v134 = type metadata accessor for AppIntentsProtocol.PerformAction.Response;
        sub_2219EC334(v63, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        v74 = sub_2219A6360(v71, v73, &v137);

        *(v66 + 14) = v74;
        _os_log_impl(&dword_221989000, v64, v65, "%s%s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v67, -1, -1);
        MEMORY[0x223DA4C00](v66, -1, -1);

        sub_22198B60C(v61, v62);
        v75 = v133;
        v76 = v134;
LABEL_41:
        sub_2219EC334(v75, v76);
        goto LABEL_42;
      }

      sub_22198B60C(v61, v62);
      v104 = v63;
    }

    else
    {
      sub_2219EC27C(v40, v128, type metadata accessor for AppIntentsProtocol.PerformAction.Response);

      v90 = sub_221BCCD68();
      v91 = sub_221BCDA98();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v136 = v93;
        *v92 = 136315394;
        v94 = sub_2219CB3CC();
        v96 = sub_2219A6360(v94, v95, &v136);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2080;
        v97 = v40;
        v98 = *(v2 + qword_27CFDED20 + 17);
        v139 = v127;
        v140 = sub_2219EBDBC(&qword_27CFB80E0, type metadata accessor for AppIntentsProtocol.PerformAction.Response, &unk_221BE2968);
        v99 = __swift_allocate_boxed_opaque_existential_1(&v137);
        sub_2219EC27C(v60, v99, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        __swift_project_boxed_opaque_existential_0(&v137, v139);
        v135 = v98;
        v100 = sub_221AE7974(&v135);
        v102 = v101;
        sub_2219EC334(v60, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
        __swift_destroy_boxed_opaque_existential_0(&v137);
        v103 = sub_2219A6360(v100, v102, &v136);

        *(v92 + 14) = v103;
        _os_log_impl(&dword_221989000, v90, v91, "%sCompleted with %s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v93, -1, -1);
        MEMORY[0x223DA4C00](v92, -1, -1);

        v75 = v97;
        v76 = type metadata accessor for AppIntentsProtocol.PerformAction.Response;
        goto LABEL_41;
      }

      v104 = v60;
    }

    sub_2219EC334(v104, type metadata accessor for AppIntentsProtocol.PerformAction.Response);
    v75 = v40;
    v76 = type metadata accessor for AppIntentsProtocol.PerformAction.Response;
    goto LABEL_41;
  }

  sub_2219BAF0C(v2 + v33[241], &v137, &qword_27CFB7FD0, &qword_221BD2888);
  v38 = v139;
  if (v139)
  {
    v39 = v140;
    __swift_project_boxed_opaque_existential_0(&v137, v139);
    sub_2219E7D00(v5);
    (*(v39 + 24))(v5, v38, v39);
    (*(v131 + 8))(v5, v132);
    __swift_destroy_boxed_opaque_existential_0(&v137);
  }

  else
  {
    sub_2219EC58C(&v137, &qword_27CFB7FD0);
  }

  v45 = *(v2 + qword_27CFBC770);
  if (v45)
  {
    v46 = *(v2 + qword_27CFBC770 + 8);

    sub_22198BEB8(v45, v46);
    v47 = sub_221BCCD68();
    v48 = sub_221BCDA78();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v137 = v50;
      *v49 = 136315394;
      v51 = sub_2219CB3CC();
      v53 = sub_2219A6360(v51, v52, &v137);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = sub_221BCE198();
      if (!v54)
      {
        v54 = swift_allocError();
      }

      v55 = v54;
      v56 = v45();
      v58 = v57;

      v59 = sub_2219A6360(v56, v58, &v137);

      *(v49 + 14) = v59;
      _os_log_impl(&dword_221989000, v47, v48, "%s %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v50, -1, -1);
      MEMORY[0x223DA4C00](v49, -1, -1);
      sub_22198B60C(v45, v46);
    }

    else
    {

      sub_22198B60C(v45, v46);
    }

    goto LABEL_42;
  }

  v77 = *(v2 + qword_27CFDED20 + 17);

  v78 = sub_221BCCD68();
  v79 = sub_221BCDA78();

  v80 = os_log_type_enabled(v78, v79);
  if (v77)
  {
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v137 = v82;
      *v81 = 136315395;
      v83 = sub_2219CB3CC();
      v85 = sub_2219A6360(v83, v84, &v137);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2085;
      v86 = sub_221BCE288();
      v88 = sub_2219A6360(v86, v87, &v137);

      *(v81 + 14) = v88;
      v89 = "%sFailed with %{sensitive}s";
LABEL_37:
      _os_log_impl(&dword_221989000, v78, v79, v89, v81, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v82, -1, -1);
      MEMORY[0x223DA4C00](v81, -1, -1);
    }
  }

  else if (v80)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v137 = v82;
    *v81 = 136315395;
    v105 = sub_2219CB3CC();
    v107 = sub_2219A6360(v105, v106, &v137);

    *(v81 + 4) = v107;
    *(v81 + 12) = 2081;
    v108 = sub_221BCE288();
    v110 = sub_2219A6360(v108, v109, &v137);

    *(v81 + 14) = v110;
    v89 = "%sFailed with %{private}s";
    goto LABEL_37;
  }

LABEL_42:
  v111 = v126;
  v113 = v129;
  v112 = v130;
  sub_2219E7E58(v130, v129, v126 == 1);
  if (v111 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v114 = *(v2 + qword_27CFBC780);
    v133 = *(v2 + qword_27CFBC780 + 8);
    v134 = v114;
    v115 = *(v2 + qword_27CFBC780 + 16);
    v116 = sub_2219CB440();
    v118 = v117;
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_221BCDE68();
    v119 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v119);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v120 = v137;
    v121 = v138;
    v122 = *&v124[v2];

    sub_221BB52B0(v134, v133, v115, v116, v118, v112, v113, v120, v121, 1, 1, v122);
  }
}

void sub_2219D3F00(__int128 *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v134 = a1[1];
  v138 = v4;
  v133 = *(a1 + 32);
  v5 = sub_221BCCE38();
  v137 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v129 - v9;
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v129 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v129 - v19;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v131 = v7;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v21 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v21, v20, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v11);
  v136 = 0;
  v135 = 0;
  v132 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v17, v20, v11);
    sub_221BCDF88();
    v136 = sub_221BCDFA8();
    v135 = v23;
    v24 = *(v12 + 8);
    v24(v14, v11);
    v24(v17, v11);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v25, v2);
  }

  v26 = off_27CFBC778;
  swift_beginAccess();
  v130 = v26;
  v27 = *&v26[v2];
  v28 = &unk_27CFBC000;
  if (*(v27 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v143, &qword_27CFB7FD0, &qword_221BD2888);
    v29 = *(&v144 + 1);
    if (*(&v144 + 1))
    {
      v30 = v145;
      __swift_project_boxed_opaque_existential_0(&v143, *(&v144 + 1));
      v31 = v3;
      v32 = v5;
      v33 = *(v30 + 32);

      v33(v34, 0x697274654D736961, 0xEA00000000007363, v29, v30);
      v28 = &unk_27CFBC000;
      v5 = v32;
      v3 = v31;

      __swift_destroy_boxed_opaque_existential_0(&v143);
    }

    else
    {
      sub_2219EC58C(&v143, &qword_27CFB7FD0);
    }
  }

  if (*(v3 + 33))
  {
    v35 = v5;
    v36 = v138;
    sub_2219BAF0C(v2 + v28[241], &v143, &qword_27CFB7FD0, &qword_221BD2888);
    v37 = *(&v144 + 1);
    if (*(&v144 + 1))
    {
      v38 = v145;
      v39 = __swift_project_boxed_opaque_existential_0(&v143, *(&v144 + 1));
      v142 = v36;
      v40 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v139);
        *&v139 = v36;
        v41 = v36;
        v42 = sub_221BCE198();
        *&v138 = v39;
        if (v42)
        {
          v43 = v42;
          sub_2219EC58C(v3, &unk_27CFB81B0);
        }

        else
        {
          v43 = swift_allocError();
          *v74 = v36;
        }

        v75 = sub_221BCC328();

        v76 = [v75 domain];
        v77 = sub_221BCD388();
        v79 = v78;

        v80 = [v75 code];
        v71 = v131;
        *v131 = v77;
        v71[1] = v79;
        v71[2] = v80;
        v70 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v70 = MEMORY[0x277CD8AC0];
        v71 = v131;
      }

      v81 = v137;
      (*(v137 + 104))(v71, *v70, v35);
      (*(v38 + 24))(v71, v37, v38);
      (*(v81 + 8))(v71, v35);
      __swift_destroy_boxed_opaque_existential_0(&v143);
    }

    else
    {
      sub_2219EC58C(&v143, &qword_27CFB7FD0);
    }

    v82 = *(v2 + qword_27CFBC770);
    if (v82)
    {
      v83 = v36;
      v84 = *(v2 + qword_27CFBC770 + 8);

      sub_2219BAF0C(v3, &v143, &unk_27CFB81B0, &qword_221BD2B00);
      sub_22198BEB8(v82, v84);
      v85 = sub_221BCCD68();
      v86 = sub_221BCDA78();

      sub_2219EC58C(v3, &unk_27CFB81B0);
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *&v138 = swift_slowAlloc();
        *&v143 = v138;
        *v87 = 136315394;
        v88 = sub_2219CB3CC();
        v90 = sub_2219A6360(v88, v89, &v143);

        *(v87 + 4) = v90;
        *(v87 + 12) = 2080;
        *&v139 = v83;
        v91 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v92 = sub_221BCE198();
        if (v92)
        {
          v93 = v92;
          sub_2219EC58C(v3, &unk_27CFB81B0);
        }

        else
        {
          v93 = swift_allocError();
          *v112 = v83;
        }

        v113 = v82(v93);
        v115 = v114;

        v116 = sub_2219A6360(v113, v115, &v143);

        *(v87 + 14) = v116;
        _os_log_impl(&dword_221989000, v85, v86, "%s %s", v87, 0x16u);
        v117 = v138;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v117, -1, -1);
        MEMORY[0x223DA4C00](v87, -1, -1);
      }

      v72 = v82;
      v73 = v84;
      goto LABEL_47;
    }

    v94 = *(v2 + qword_27CFDED20 + 17);

    if (v94)
    {
      sub_2219BAF0C(v3, &v143, &unk_27CFB81B0, &qword_221BD2B00);
      v95 = sub_221BCCD68();
      v96 = sub_221BCDA78();

      sub_2219EC58C(v3, &unk_27CFB81B0);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v143 = v98;
        *v97 = 136315395;
        v99 = sub_2219CB3CC();
        v101 = sub_2219A6360(v99, v100, &v143);

        *(v97 + 4) = v101;
        *(v97 + 12) = 2085;
        *&v139 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v102 = sub_221BCE288();
        v104 = sub_2219A6360(v102, v103, &v143);

        *(v97 + 14) = v104;
        v105 = "%sFailed with %{sensitive}s";
LABEL_42:
        _os_log_impl(&dword_221989000, v95, v96, v105, v97, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v98, -1, -1);
        MEMORY[0x223DA4C00](v97, -1, -1);
      }
    }

    else
    {
      sub_2219BAF0C(v3, &v143, &unk_27CFB81B0, &qword_221BD2B00);
      v95 = sub_221BCCD68();
      v96 = sub_221BCDA78();

      sub_2219EC58C(v3, &unk_27CFB81B0);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v143 = v98;
        *v97 = 136315395;
        v106 = sub_2219CB3CC();
        v108 = sub_2219A6360(v106, v107, &v143);

        *(v97 + 4) = v108;
        *(v97 + 12) = 2081;
        *&v139 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v109 = sub_221BCE288();
        v111 = sub_2219A6360(v109, v110, &v143);

        *(v97 + 14) = v111;
        v105 = "%sFailed with %{private}s";
        goto LABEL_42;
      }
    }

    goto LABEL_48;
  }

  v139 = v138;
  v140 = v134;
  v141 = v133 & 1;
  sub_2219BAF0C(v2 + v28[241], &v143, &qword_27CFB7FD0, &qword_221BD2888);
  v44 = *(&v144 + 1);
  if (*(&v144 + 1))
  {
    v45 = v145;
    __swift_project_boxed_opaque_existential_0(&v143, *(&v144 + 1));
    v46 = v137;
    (*(v137 + 104))(v10, *MEMORY[0x277CD8AC8], v5);
    (*(v45 + 24))(v10, v44, v45);
    (*(v46 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(&v143);
  }

  else
  {
    sub_2219EC58C(&v143, &qword_27CFB7FD0);
  }

  v47 = *(v2 + qword_27CFBC768);
  if (!v47)
  {

    sub_2219BAF0C(v3, &v143, &unk_27CFB81B0, &qword_221BD2B00);
    v59 = sub_221BCCD68();
    v60 = sub_221BCDA98();

    sub_2219EC58C(v3, &unk_27CFB81B0);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v143 = v62;
      *v61 = 136315394;
      v63 = sub_2219CB3CC();
      v65 = sub_2219A6360(v63, v64, &v143);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2080;
      v67 = sub_2219C13A0(&v139, *(v2 + qword_27CFDED20 + 17), v66);
      v69 = sub_2219A6360(v67, v68, &v143);

      *(v61 + 14) = v69;
      _os_log_impl(&dword_221989000, v59, v60, "%sCompleted with %s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v62, -1, -1);
      MEMORY[0x223DA4C00](v61, -1, -1);
    }

    goto LABEL_48;
  }

  v48 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768), v48);

  sub_2219BAF0C(v3, &v143, &unk_27CFB81B0, &qword_221BD2B00);
  v49 = sub_221BCCD68();
  v50 = sub_221BCDA98();

  sub_2219EC58C(v3, &unk_27CFB81B0);
  if (!os_log_type_enabled(v49, v50))
  {

    v72 = v47;
    v73 = v48;
LABEL_47:
    sub_22198B60C(v72, v73);
    goto LABEL_48;
  }

  v51 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v142 = v52;
  *v51 = 136315394;
  v53 = sub_2219CB3CC();
  v55 = sub_2219A6360(v53, v54, &v142);

  *(v51 + 4) = v55;
  *(v51 + 12) = 2080;
  v143 = v139;
  v144 = v140;
  LOBYTE(v145) = v141;
  v56 = v47(&v143);
  v58 = sub_2219A6360(v56, v57, &v142);

  *(v51 + 14) = v58;
  _os_log_impl(&dword_221989000, v49, v50, "%s%s", v51, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v52, -1, -1);
  MEMORY[0x223DA4C00](v51, -1, -1);
  sub_22198B60C(v47, v48);

LABEL_48:
  v118 = v136;
  v119 = v135;
  v120 = v132;
  sub_2219E7E58(v136, v135, v132 == 1);
  if (v120 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v121 = *(v2 + qword_27CFBC780 + 8);
    *&v138 = *(v2 + qword_27CFBC780);
    v137 = v121;
    v122 = *(v2 + qword_27CFBC780 + 16);
    v123 = sub_2219CB440();
    v125 = v124;
    *&v143 = 0;
    *(&v143 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v126 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v126);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v127 = v143;
    v128 = *&v130[v2];

    sub_221BB52B0(v138, v137, v122, v123, v125, v118, v119, v127, *(&v127 + 1), 1, 1, v128);
  }
}

void sub_2219D4FC4(__int128 *a1)
{
  v2 = v1;
  v4 = *a1;
  v117 = a1[1];
  v115 = v4;
  v116 = *(a1 + 32);
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_221BCDFB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v111 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v111 - v17;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v113 = v5;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v19 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v19, v18, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v9);
  v21 = 0;
  v118 = 0;
  v114 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v10 + 32))(v15, v18, v9);
    sub_221BCDF88();
    v22 = v6;
    v23 = sub_221BCDFA8();
    v118 = v24;
    v25 = *(v10 + 8);
    v25(v12, v9);
    v25(v15, v9);
    v21 = v23;
    v6 = v22;
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v26, v2);
  }

  v27 = off_27CFBC778;
  swift_beginAccess();
  v111 = v27;
  v28 = *&v27[v2];
  v29 = &unk_27CFBC000;
  if (*(v28 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v120, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v31 = v122;
      __swift_project_boxed_opaque_existential_0(&v120, *(&v121 + 1));
      v112 = v21;
      v32 = v2;
      v33 = v8;
      v34 = v6;
      v35 = *(v31 + 32);

      v35(v36, 0x697274654D736961, 0xEA00000000007363, v30, v31);
      v29 = &unk_27CFBC000;
      v6 = v34;
      v8 = v33;
      v2 = v32;
      v21 = v112;

      __swift_destroy_boxed_opaque_existential_0(&v120);
    }

    else
    {
      sub_2219EC58C(&v120, &qword_27CFB7FD0);
    }
  }

  if (*(a1 + 33))
  {
    sub_2219BAF0C(v2 + v29[241], &v120, &qword_27CFB7FD0, &qword_221BD2888);
    v37 = *(&v121 + 1);
    if (*(&v121 + 1))
    {
      v38 = v122;
      __swift_project_boxed_opaque_existential_0(&v120, *(&v121 + 1));
      sub_2219E7D00(v8);
      (*(v38 + 24))(v8, v37, v38);
      (*(v6 + 8))(v8, v113);
      __swift_destroy_boxed_opaque_existential_0(&v120);
    }

    else
    {
      sub_2219EC58C(&v120, &qword_27CFB7FD0);
    }

    v42 = *(v2 + qword_27CFBC770);
    if (v42)
    {
      v43 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v42, v43);
      v44 = sub_221BCCD68();
      v45 = sub_221BCDA78();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v120 = v47;
        *v46 = 136315394;
        v48 = sub_2219CB3CC();
        v50 = sub_2219A6360(v48, v49, &v120);

        *(v46 + 4) = v50;
        *(v46 + 12) = 2080;
        v51 = sub_221BCE198();
        v112 = v21;
        if (!v51)
        {
          v51 = swift_allocError();
        }

        v52 = v51;
        v53 = v42();
        v55 = v54;

        v56 = sub_2219A6360(v53, v55, &v120);

        *(v46 + 14) = v56;
        _os_log_impl(&dword_221989000, v44, v45, "%s %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v47, -1, -1);
        MEMORY[0x223DA4C00](v46, -1, -1);
        sub_22198B60C(v42, v43);

        v21 = v112;
        goto LABEL_41;
      }

      v93 = v42;
      v94 = v43;
      goto LABEL_35;
    }

    v69 = *(v2 + qword_27CFDED20 + 17);

    v70 = sub_221BCCD68();
    v71 = sub_221BCDA78();

    v72 = os_log_type_enabled(v70, v71);
    if (v69)
    {
      if (v72)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v120 = v74;
        *v73 = 136315395;
        v75 = sub_2219CB3CC();
        v77 = sub_2219A6360(v75, v76, &v120);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2085;
        v78 = sub_221BCE288();
        v80 = sub_2219A6360(v78, v79, &v120);

        *(v73 + 14) = v80;
        v81 = "%sFailed with %{sensitive}s";
LABEL_38:
        _os_log_impl(&dword_221989000, v70, v71, v81, v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v74, -1, -1);
        v92 = v73;
        goto LABEL_39;
      }
    }

    else if (v72)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v120 = v74;
      *v73 = 136315395;
      v95 = sub_2219CB3CC();
      v97 = sub_2219A6360(v95, v96, &v120);

      *(v73 + 4) = v97;
      *(v73 + 12) = 2081;
      v98 = sub_221BCE288();
      v100 = sub_2219A6360(v98, v99, &v120);

      *(v73 + 14) = v100;
      v81 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_41;
  }

  v123 = v115;
  v124 = v117;
  v125 = v116 & 1;
  sub_2219BAF0C(v2 + v29[241], &v120, &qword_27CFB7FD0, &qword_221BD2888);
  v39 = *(&v121 + 1);
  if (*(&v121 + 1))
  {
    v40 = v122;
    __swift_project_boxed_opaque_existential_0(&v120, *(&v121 + 1));
    v41 = v113;
    (*(v6 + 104))(v8, *MEMORY[0x277CD8AC8], v113);
    (*(v40 + 24))(v8, v39, v40);
    (*(v6 + 8))(v8, v41);
    __swift_destroy_boxed_opaque_existential_0(&v120);
  }

  else
  {
    sub_2219EC58C(&v120, &qword_27CFB7FD0);
  }

  v57 = *(v2 + qword_27CFBC768);
  if (!v57)
  {

    sub_2219BAF0C(a1, &v120, &qword_27CFB81A0, &qword_221BD2AF8);
    v70 = sub_221BCCD68();
    v82 = sub_221BCDA98();

    sub_2219EC58C(a1, &qword_27CFB81A0);
    if (os_log_type_enabled(v70, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v120 = v84;
      *v83 = 136315394;
      v85 = sub_2219CB3CC();
      v87 = sub_2219A6360(v85, v86, &v120);

      *(v83 + 4) = v87;
      *(v83 + 12) = 2080;
      v89 = sub_2219C13A0(&v123, *(v2 + qword_27CFDED20 + 17), v88);
      v91 = sub_2219A6360(v89, v90, &v120);

      *(v83 + 14) = v91;
      _os_log_impl(&dword_221989000, v70, v82, "%sCompleted with %s", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v84, -1, -1);
      v92 = v83;
LABEL_39:
      MEMORY[0x223DA4C00](v92, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  v58 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768), v58);

  sub_2219BAF0C(a1, &v120, &qword_27CFB81A0, &qword_221BD2AF8);
  v59 = sub_221BCCD68();
  v60 = sub_221BCDA98();

  sub_2219EC58C(a1, &qword_27CFB81A0);
  if (!os_log_type_enabled(v59, v60))
  {

    v93 = v57;
    v94 = v58;
LABEL_35:
    sub_22198B60C(v93, v94);
    goto LABEL_41;
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v119 = v62;
  *v61 = 136315394;
  v63 = sub_2219CB3CC();
  v65 = sub_2219A6360(v63, v64, &v119);

  *(v61 + 4) = v65;
  *(v61 + 12) = 2080;
  v120 = v123;
  v121 = v124;
  LOBYTE(v122) = v125;
  v66 = v57(&v120);
  v68 = sub_2219A6360(v66, v67, &v119);

  *(v61 + 14) = v68;
  _os_log_impl(&dword_221989000, v59, v60, "%s%s", v61, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v62, -1, -1);
  MEMORY[0x223DA4C00](v61, -1, -1);
  sub_22198B60C(v57, v58);

LABEL_41:
  v101 = v114;
  v102 = v118;
  sub_2219E7E58(v21, v118, v114 == 1);
  if (v101 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    *&v117 = *(v2 + qword_27CFBC780);
    v112 = v21;
    v103 = *(v2 + qword_27CFBC780 + 8);
    v104 = *(v2 + qword_27CFBC780 + 16);
    v105 = sub_2219CB440();
    v107 = v106;
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v108 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v108);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v109 = v120;
    v110 = *&v111[v2];

    sub_221BB52B0(v117, v103, v104, v105, v107, v112, v102, v109, *(&v109 + 1), 1, 1, v110);
  }
}

void sub_2219D5DE4(_BYTE *a1)
{
  v2 = v1;
  v158 = a1;
  v3 = sub_221BCCE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v152 = &v146[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v151 = &v146[-v7];
  started = type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  MEMORY[0x28223BE20](started - 8);
  v153 = &v146[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v154 = &v146[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v146[-v13];
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8198, &qword_221BD2AE8);
  MEMORY[0x28223BE20](v157);
  v16 = &v146[-v15];
  v17 = sub_221BCDFB8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v146[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v146[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v146[-v25];
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v150 = v4;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v27 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v27, v26, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v17);
  v156 = 0;
  v155 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v18 + 32))(v23, v26, v17);
    sub_221BCDF88();
    v156 = sub_221BCDFA8();
    v155 = v29;
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v31, v2);
  }

  v32 = off_27CFBC778;
  swift_beginAccess();
  v148 = v32;
  v33 = *&v32[v2];
  v34 = &unk_27CFBC000;
  if (*(v33 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v160, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = v162;
    if (v162)
    {
      v36 = v163;
      __swift_project_boxed_opaque_existential_0(&v160, v162);
      v149 = v3;
      v37 = *(v36 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v35, v36);
      v34 = &unk_27CFBC000;
      v3 = v149;

      __swift_destroy_boxed_opaque_existential_0(&v160);
    }

    else
    {
      sub_2219EC58C(&v160, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v158, v16, &qword_27CFB8198, &qword_221BD2AE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v16;
    sub_2219BAF0C(v2 + v34[241], &v160, &qword_27CFB7FD0, &qword_221BD2888);
    v40 = v162;
    if (v162)
    {
      v149 = v3;
      v41 = v163;
      __swift_project_boxed_opaque_existential_0(&v160, v162);
      v159[5] = v39;
      v42 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v159);
        v159[0] = v39;
        v43 = v39;
        v44 = sub_221BCE198();
        if (v44)
        {
          v45 = v44;
        }

        else
        {
          v45 = swift_allocError();
          *v84 = v39;
        }

        v85 = sub_221BCC328();

        v86 = [v85 domain];
        v87 = sub_221BCD388();
        v89 = v88;

        v90 = [v85 code];
        v83 = v152;
        *v152 = v87;
        v83[1] = v89;
        v83[2] = v90;
        v82 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v82 = MEMORY[0x277CD8AC0];
        v83 = v152;
      }

      v91 = v150;
      v92 = v83;
      v93 = v149;
      (*(v150 + 104))(v83, *v82, v149);
      (*(v41 + 24))(v92, v40, v41);
      (*(v91 + 8))(v92, v93);
      __swift_destroy_boxed_opaque_existential_0(&v160);
    }

    else
    {
      sub_2219EC58C(&v160, &qword_27CFB7FD0);
    }

    v94 = *(v2 + qword_27CFBC770);
    if (v94)
    {
      v95 = *(v2 + qword_27CFBC770 + 8);
      v96 = v39;

      v97 = v39;
      sub_22198BEB8(v94, v95);
      v98 = sub_221BCCD68();
      v99 = sub_221BCDA78();

      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v160 = v158;
        *v100 = 136315394;
        v101 = sub_2219CB3CC();
        v103 = sub_2219A6360(v101, v102, &v160);

        *(v100 + 4) = v103;
        *(v100 + 12) = 2080;
        v159[0] = v39;
        v104 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v105 = sub_221BCE198();
        v147 = EnumTagSinglePayload;
        if (v105)
        {
          v106 = v105;
        }

        else
        {
          v106 = swift_allocError();
          *v129 = v39;
        }

        v130 = v94(v106);
        v132 = v131;

        v133 = sub_2219A6360(v130, v132, &v160);

        *(v100 + 14) = v133;
        _os_log_impl(&dword_221989000, v98, v99, "%s %s", v100, 0x16u);
        v134 = v158;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v134, -1, -1);
        MEMORY[0x223DA4C00](v100, -1, -1);

        sub_22198B60C(v94, v95);
        EnumTagSinglePayload = v147;
        goto LABEL_50;
      }

      sub_22198B60C(v94, v95);
LABEL_47:

      goto LABEL_50;
    }

    v107 = *(v2 + qword_27CFDED20 + 17);

    v108 = v39;
    v109 = sub_221BCCD68();
    v110 = sub_221BCDA78();

    v111 = os_log_type_enabled(v109, v110);
    if (v107)
    {
      if (v111)
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v160 = v113;
        *v112 = 136315395;
        v114 = sub_2219CB3CC();
        v116 = sub_2219A6360(v114, v115, &v160);

        *(v112 + 4) = v116;
        *(v112 + 12) = 2085;
        v159[0] = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v117 = sub_221BCE288();
        v119 = v118;

        v120 = sub_2219A6360(v117, v119, &v160);

        *(v112 + 14) = v120;
        v121 = "%sFailed with %{sensitive}s";
LABEL_44:
        _os_log_impl(&dword_221989000, v109, v110, v121, v112, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v113, -1, -1);
        MEMORY[0x223DA4C00](v112, -1, -1);
LABEL_46:

        goto LABEL_47;
      }
    }

    else if (v111)
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v160 = v113;
      *v112 = 136315395;
      v122 = sub_2219CB3CC();
      v124 = sub_2219A6360(v122, v123, &v160);

      *(v112 + 4) = v124;
      *(v112 + 12) = 2081;
      v159[0] = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v125 = sub_221BCE288();
      v127 = v126;

      v128 = sub_2219A6360(v125, v127, &v160);

      *(v112 + 14) = v128;
      v121 = "%sFailed with %{private}s";
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  sub_2219EC2D8(v16, v14, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
  sub_2219BAF0C(v2 + v34[241], &v160, &qword_27CFB7FD0, &qword_221BD2888);
  v46 = v162;
  if (v162)
  {
    v47 = v163;
    __swift_project_boxed_opaque_existential_0(&v160, v162);
    v48 = v150;
    v49 = v151;
    (*(v150 + 104))(v151, *MEMORY[0x277CD8AC8], v3);
    (*(v47 + 24))(v49, v46, v47);
    (*(v48 + 8))(v49, v3);
    __swift_destroy_boxed_opaque_existential_0(&v160);
  }

  else
  {
    sub_2219EC58C(&v160, &qword_27CFB7FD0);
  }

  v50 = v154;
  v51 = v153;
  v52 = *(v2 + qword_27CFBC768);
  if (v52)
  {
    v53 = *(v2 + qword_27CFBC768 + 8);
    sub_2219EC27C(v14, v154, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
    sub_22198BEB8(v52, v53);

    v54 = v14;
    v55 = sub_221BCCD68();
    v56 = sub_221BCDA98();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v158 = v54;
      v59 = v58;
      v160 = v58;
      *v57 = 136315394;
      v60 = sub_2219CB3CC();
      v62 = sub_2219A6360(v60, v61, &v160);
      v147 = EnumTagSinglePayload;
      v63 = v62;

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      v64 = v52(v50);
      v66 = v65;
      sub_2219EC334(v50, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v67 = sub_2219A6360(v64, v66, &v160);

      *(v57 + 14) = v67;
      EnumTagSinglePayload = v147;
      _os_log_impl(&dword_221989000, v55, v56, "%s%s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v59, -1, -1);
      MEMORY[0x223DA4C00](v57, -1, -1);

      sub_22198B60C(v52, v53);
      v68 = v158;
    }

    else
    {

      sub_22198B60C(v52, v53);
      sub_2219EC334(v50, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v68 = v54;
    }
  }

  else
  {
    sub_2219EC27C(v14, v153, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);

    v69 = sub_221BCCD68();
    v70 = sub_221BCDA98();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v158 = v14;
      v72 = v71;
      v73 = swift_slowAlloc();
      v160 = v73;
      *v72 = 136315394;
      v74 = sub_2219CB3CC();
      v76 = v51;
      v77 = sub_2219A6360(v74, v75, &v160);

      *(v72 + 4) = v77;
      *(v72 + 12) = 2080;
      v78 = sub_2219C1544(v76, *(v2 + qword_27CFDED20 + 17));
      v80 = v79;
      sub_2219EC334(v76, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v81 = sub_2219A6360(v78, v80, &v160);

      *(v72 + 14) = v81;
      _os_log_impl(&dword_221989000, v69, v70, "%sCompleted with %s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v73, -1, -1);
      MEMORY[0x223DA4C00](v72, -1, -1);

      v68 = v158;
    }

    else
    {

      sub_2219EC334(v51, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v68 = v14;
    }
  }

  sub_2219EC334(v68, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
LABEL_50:
  v135 = v156;
  v136 = v155;
  sub_2219E7E58(v156, v155, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v137 = *(v2 + qword_27CFBC780);
    v157 = *(v2 + qword_27CFBC780 + 8);
    v158 = v137;
    v138 = *(v2 + qword_27CFBC780 + 16);
    v139 = sub_2219CB440();
    v141 = v140;
    v160 = 0;
    v161 = 0xE000000000000000;
    sub_221BCDE68();
    v142 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v142);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v143 = v160;
    v144 = v161;
    v145 = *&v148[v2];

    sub_221BB52B0(v158, v157, v138, v139, v141, v135, v136, v143, v144, 1, 1, v145);
  }
}

void sub_2219D7018(char *a1)
{
  v2 = v1;
  v136 = a1;
  v3 = sub_221BCCE38();
  v133 = *(v3 - 8);
  v134 = v3;
  MEMORY[0x28223BE20](v3);
  v132 = (&v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  started = type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
  MEMORY[0x28223BE20](started - 8);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v125 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v125 - v12;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8188, &qword_221BD2AD8);
  MEMORY[0x28223BE20](v135);
  v15 = &v125 - v14;
  v16 = sub_221BCDFB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v125 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v125 - v24;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v129 = v7;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v26 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v26, v25, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v16);
  v28 = 0;
  v131 = 0;
  v130 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v17 + 32))(v22, v25, v16);
    sub_221BCDF88();
    v28 = sub_221BCDFA8();
    v131 = v29;
    v30 = *(v17 + 8);
    v30(v19, v16);
    v30(v22, v16);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v31, v2);
  }

  v32 = off_27CFBC778;
  swift_beginAccess();
  v128 = v32;
  v33 = *&v32[v2];
  v34 = &unk_27CFBC000;
  if (*(v33 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v137, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = v139;
    if (v139)
    {
      v36 = v140;
      __swift_project_boxed_opaque_existential_0(&v137, v139);
      v127 = v10;
      v37 = *(v36 + 32);

      v37(v38, 0x697274654D736961, 0xEA00000000007363, v35, v36);
      v34 = &unk_27CFBC000;
      v10 = v127;

      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {
      sub_2219EC58C(&v137, &qword_27CFB7FD0);
    }
  }

  sub_2219BAF0C(v136, v15, &qword_27CFB8188, &qword_221BD2AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2219BAF0C(v2 + v34[241], &v137, &qword_27CFB7FD0, &qword_221BD2888);
    v39 = v139;
    if (v139)
    {
      v40 = v140;
      __swift_project_boxed_opaque_existential_0(&v137, v139);
      v41 = v132;
      sub_2219E7D00(v132);
      (*(v40 + 24))(v41, v39, v40);
      (*(v133 + 8))(v41, v134);
      __swift_destroy_boxed_opaque_existential_0(&v137);
    }

    else
    {
      sub_2219EC58C(&v137, &qword_27CFB7FD0);
    }

    v47 = *(v2 + qword_27CFBC770);
    if (v47)
    {
      v48 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v47, v48);
      v49 = sub_221BCCD68();
      v50 = sub_221BCDA78();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v137 = v52;
        *v51 = 136315394;
        v53 = sub_2219CB3CC();
        v55 = sub_2219A6360(v53, v54, &v137);

        *(v51 + 4) = v55;
        *(v51 + 12) = 2080;
        v56 = sub_221BCE198();
        v126 = v28;
        if (!v56)
        {
          v56 = swift_allocError();
        }

        v57 = v56;
        v58 = v47();
        v60 = v59;

        v61 = sub_2219A6360(v58, v60, &v137);

        *(v51 + 14) = v61;
        _os_log_impl(&dword_221989000, v49, v50, "%s %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v52, -1, -1);
        MEMORY[0x223DA4C00](v51, -1, -1);
        sub_22198B60C(v47, v48);

        v28 = v126;
      }

      else
      {

        sub_22198B60C(v47, v48);
      }

      goto LABEL_41;
    }

    v82 = *(v2 + qword_27CFDED20 + 17);

    v83 = sub_221BCCD68();
    v84 = sub_221BCDA78();

    v85 = os_log_type_enabled(v83, v84);
    if (v82)
    {
      if (v85)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v137 = v87;
        *v86 = 136315395;
        v88 = sub_2219CB3CC();
        v90 = sub_2219A6360(v88, v89, &v137);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2085;
        v91 = sub_221BCE288();
        v93 = sub_2219A6360(v91, v92, &v137);

        *(v86 + 14) = v93;
        v94 = "%sFailed with %{sensitive}s";
LABEL_37:
        _os_log_impl(&dword_221989000, v83, v84, v94, v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v87, -1, -1);
        MEMORY[0x223DA4C00](v86, -1, -1);
      }
    }

    else if (v85)
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v137 = v87;
      *v86 = 136315395;
      v108 = sub_2219CB3CC();
      v110 = sub_2219A6360(v108, v109, &v137);

      *(v86 + 4) = v110;
      *(v86 + 12) = 2081;
      v111 = sub_221BCE288();
      v113 = sub_2219A6360(v111, v112, &v137);

      *(v86 + 14) = v113;
      v94 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  sub_2219EC2D8(v15, v13, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
  sub_2219BAF0C(v2 + v34[241], &v137, &qword_27CFB7FD0, &qword_221BD2888);
  v42 = v139;
  if (v139)
  {
    v43 = v140;
    __swift_project_boxed_opaque_existential_0(&v137, v139);
    v45 = v132;
    v44 = v133;
    v46 = v134;
    (*(v133 + 104))(v132, *MEMORY[0x277CD8AC8], v134);
    (*(v43 + 24))(v45, v42, v43);
    (*(v44 + 8))(v45, v46);
    __swift_destroy_boxed_opaque_existential_0(&v137);
  }

  else
  {
    sub_2219EC58C(&v137, &qword_27CFB7FD0);
  }

  v62 = *(v2 + qword_27CFBC768);
  if (v62)
  {
    v63 = v13;
    v64 = *(v2 + qword_27CFBC768 + 8);
    sub_2219EC27C(v13, v10, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
    sub_22198BEB8(v62, v64);

    v65 = sub_221BCCD68();
    v66 = sub_221BCDA98();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v136 = v63;
      v68 = v67;
      v135 = swift_slowAlloc();
      v137 = v135;
      *v68 = 136315394;
      v69 = sub_2219CB3CC();
      v71 = v64;
      v72 = v28;
      v73 = sub_2219A6360(v69, v70, &v137);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      v74 = v71;
      v75 = v62(v10);
      v77 = v76;
      sub_2219EC334(v10, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v78 = v75;
      v28 = v72;
      v79 = sub_2219A6360(v78, v77, &v137);

      *(v68 + 14) = v79;
      _os_log_impl(&dword_221989000, v65, v66, "%s%s", v68, 0x16u);
      v80 = v135;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v80, -1, -1);
      MEMORY[0x223DA4C00](v68, -1, -1);

      sub_22198B60C(v62, v74);
      v81 = v136;
    }

    else
    {

      sub_22198B60C(v62, v64);
      sub_2219EC334(v10, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v81 = v63;
    }
  }

  else
  {
    v95 = v129;
    sub_2219EC27C(v13, v129, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);

    v96 = sub_221BCCD68();
    v97 = sub_221BCDA98();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v136 = v13;
      v99 = v98;
      v100 = swift_slowAlloc();
      v137 = v100;
      *v99 = 136315394;
      v101 = sub_2219CB3CC();
      v103 = sub_2219A6360(v101, v102, &v137);

      *(v99 + 4) = v103;
      *(v99 + 12) = 2080;
      v104 = sub_2219C1544(v95, *(v2 + qword_27CFDED20 + 17));
      v106 = v105;
      sub_2219EC334(v95, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v107 = sub_2219A6360(v104, v106, &v137);

      *(v99 + 14) = v107;
      _os_log_impl(&dword_221989000, v96, v97, "%sCompleted with %s", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v100, -1, -1);
      MEMORY[0x223DA4C00](v99, -1, -1);

      v81 = v136;
    }

    else
    {

      sub_2219EC334(v95, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      v81 = v13;
    }
  }

  sub_2219EC334(v81, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
LABEL_41:
  v114 = v130;
  v115 = v131;
  sub_2219E7E58(v28, v131, v130 == 1);
  if (v114 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v116 = *(v2 + qword_27CFBC780);
    v135 = *(v2 + qword_27CFBC780 + 8);
    v136 = v116;
    v117 = *(v2 + qword_27CFBC780 + 16);
    v118 = sub_2219CB440();
    v120 = v119;
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_221BCDE68();
    v121 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v121);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v122 = v137;
    v123 = v138;
    v124 = *&v128[v2];

    sub_221BB52B0(v136, v135, v117, v118, v120, v28, v115, v122, v123, 1, 1, v124);
  }
}

void sub_2219D7F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21();
  a19 = v25;
  a20 = v26;
  v27 = v20;
  v143 = *(v28 + 16);
  v146 = *v28;
  v149 = v28;
  v142 = *(v28 + 32);
  v29 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_163();
  v34 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_165();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v39);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_239();
  if (*(v20 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v41);
    return;
  }

  v140 = v23;
  v141 = v31;
  OUTLINED_FUNCTION_61_0();
  v43 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v20 + qword_27CFBC7A0);
  sub_2219BAF0C(v20 + v43, v22, &qword_27CFB7FC8, &qword_221BD2880);
  v44 = OUTLINED_FUNCTION_151(v22);
  v145 = 0;
  v144 = 0;
  if (v44 != 1)
  {
    v45 = OUTLINED_FUNCTION_90();
    v46(v45, v22, v34);
    sub_221BCDF88();
    v145 = sub_221BCDFA8();
    v144 = v47;
    v22 = *(v36 + 8);
    v48 = OUTLINED_FUNCTION_24();
    (v22)(v48);
    v49 = OUTLINED_FUNCTION_16();
    (v22)(v49);
  }

  if (*(v20 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_110(v50);
  }

  v51 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a9);
  v52 = v149;
  if (v53)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v51[241]);
    v21 = *(&v155 + 1);
    if (*(&v155 + 1))
    {
      v22 = v156;
      OUTLINED_FUNCTION_62_0(&v154, *(&v155 + 1));
      v54 = v44;
      v55 = v29;
      v43 = v22 + 32;
      v56 = *(v22 + 32);

      OUTLINED_FUNCTION_3_11();
      v56();
      v51 = &unk_27CFBC000;
      v29 = v55;
      v44 = v54;
      v52 = v149;

      __swift_destroy_boxed_opaque_existential_0(&v154);
    }

    else
    {
      sub_2219EC58C(&v154, &qword_27CFB7FD0);
    }
  }

  if (*(v52 + 34))
  {
    v57 = v29;
    v58 = v146;
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v51[241]);
    v59 = *(&v155 + 1);
    if (*(&v155 + 1))
    {
      v147 = v156;
      OUTLINED_FUNCTION_62_0(&v154, *(&v155 + 1));
      OUTLINED_FUNCTION_244();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      OUTLINED_FUNCTION_57_0();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_135();
        v61 = sub_221BCE198();
        if (v61)
        {
          v62 = v61;
          sub_2219EC58C(v52, &qword_27CFB8180);
        }

        else
        {
          v62 = OUTLINED_FUNCTION_17_2(v60, MEMORY[0x277D84950]);
          *v92 = v58;
        }

        v93 = sub_221BCC328();

        v94 = [v93 domain];
        v95 = sub_221BCD388();
        v97 = v96;

        v98 = [v93 code];
        v22 = v140;
        *v140 = v95;
        v140[1] = v97;
        v140[2] = v98;
        v88 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v88 = MEMORY[0x277CD8AC0];
        v22 = v140;
      }

      (*(v141 + 104))(v22, *v88, v57);
      (*(v147 + 24))(v22, v59);
      LOBYTE(v21) = v141 + 8;
      (*(v141 + 8))(v22, v57);
      __swift_destroy_boxed_opaque_existential_0(&v154);
    }

    else
    {
      sub_2219EC58C(&v154, &qword_27CFB7FD0);
    }

    v99 = *(v27 + qword_27CFBC770);
    if (v99)
    {
      v148 = v44;
      v100 = *(v27 + qword_27CFBC770 + 8);

      sub_2219BAF0C(v52, &v154, &qword_27CFB8180, &qword_221BD2AD0);
      v101 = OUTLINED_FUNCTION_3_4();
      v103 = OUTLINED_FUNCTION_207(v101, v102);
      sub_221BCDA78();
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_74();
      sub_2219EC58C(v104, v105);
      if (os_log_type_enabled(v103, v21))
      {
        OUTLINED_FUNCTION_103();
        v106 = OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_46_0(v106);
        v107 = OUTLINED_FUNCTION_125(4.8151e-34);
        OUTLINED_FUNCTION_102(v107, v108);
        OUTLINED_FUNCTION_107();

        *(&qword_221BD2AD0 + 4) = &qword_27CFB8180;
        OUTLINED_FUNCTION_116(2080);
        v109 = v58;
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v112 = OUTLINED_FUNCTION_208(v110, v111, MEMORY[0x277D84950]);
        if (v112)
        {
          v113 = v112;
          sub_2219EC58C(v149, &qword_27CFB8180);
        }

        else
        {
          v113 = OUTLINED_FUNCTION_112(0, MEMORY[0x277D84950]);
          *v126 = v58;
        }

        v99(v113);
        OUTLINED_FUNCTION_184();

        v127 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v127, v58, v128);
        OUTLINED_FUNCTION_144();

        *(&qword_221BD2AD8 + 6) = v100;
        _os_log_impl(&dword_221989000, v103, v21, "%s %s", &qword_221BD2AD0, 0x16u);
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      v129 = OUTLINED_FUNCTION_3_4();
      sub_22198B60C(v129, v130);
      v125 = v144;
      v44 = v148;
      goto LABEL_49;
    }

    v114 = *(v27 + qword_27CFDED20 + 17);

    if (v114)
    {
      OUTLINED_FUNCTION_194();
      v69 = sub_221BCCD68();
      sub_221BCDA78();
      OUTLINED_FUNCTION_188();
      sub_2219EC58C(v58, &qword_27CFB8180);
      if (os_log_type_enabled(v69, v22))
      {
        v115 = OUTLINED_FUNCTION_103();
        *&v154 = OUTLINED_FUNCTION_105();
        v116 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_102(v116, v117);
        OUTLINED_FUNCTION_107();

        *(v115 + 4) = &qword_27CFB8180;
        *(v115 + 12) = 2085;
        *&v150 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v118 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v118, v119);
        OUTLINED_FUNCTION_107();

        *(v115 + 14) = &qword_27CFB8180;
        v120 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v69, v22, v120, v115, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }
    }

    else
    {
      OUTLINED_FUNCTION_194();
      v69 = sub_221BCCD68();
      sub_221BCDA78();
      OUTLINED_FUNCTION_188();
      sub_2219EC58C(v58, &qword_27CFB8180);
      if (os_log_type_enabled(v69, v22))
      {
        v115 = OUTLINED_FUNCTION_103();
        *&v154 = OUTLINED_FUNCTION_105();
        v121 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_102(v121, v122);
        OUTLINED_FUNCTION_107();

        *(v115 + 4) = &qword_27CFB8180;
        *(v115 + 12) = 2081;
        *&v150 = v58;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v123 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v123, v124);
        OUTLINED_FUNCTION_107();

        *(v115 + 14) = &qword_27CFB8180;
        v120 = "%sFailed with %{private}s";
        goto LABEL_43;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v150 = v146;
  v151 = v143;
  v152 = v142;
  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v51[241]);
  v63 = *(&v155 + 1);
  if (*(&v155 + 1))
  {
    OUTLINED_FUNCTION_13_3();
    (*(v141 + 104))(v24, *MEMORY[0x277CD8AC8], v29);
    v64 = OUTLINED_FUNCTION_26_2();
    v65(v64);
    v22 = v141 + 8;
    (*(v141 + 8))(v24, v29);
    __swift_destroy_boxed_opaque_existential_0(&v154);
  }

  else
  {
    sub_2219EC58C(&v154, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0();
  v66 = qword_27CFBC758;
  if (v63)
  {
    v67 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_228(v67, v68);
    sub_2219BAF0C(v52, &v154, &qword_27CFB8180, &qword_221BD2AD0);
    v69 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_198();
    if (os_log_type_enabled(v69, v52))
    {
      OUTLINED_FUNCTION_103();
      v153 = OUTLINED_FUNCTION_39_0();
      v70 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_250(v70, v71);
      OUTLINED_FUNCTION_245();
      *(v22 + 4) = v24;
      OUTLINED_FUNCTION_174();
      v154 = v150;
      v155 = v151;
      LOWORD(v156) = v152;
      v72 = v63(&v154);
      v74 = v73;
      sub_2219EC58C(v52, &qword_27CFB8180);
      v75 = sub_2219A6360(v72, v74, &v153);

      *(v22 + 14) = v75;
      _os_log_impl(&dword_221989000, v69, v52, "%s%s", v22, 0x16u);
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v76 = OUTLINED_FUNCTION_94();
      sub_22198B60C(v76, v77);
      goto LABEL_44;
    }

    v89 = OUTLINED_FUNCTION_94();
    sub_22198B60C(v89, v90);
    v91 = v52;
    goto LABEL_30;
  }

  sub_2219BAF0C(v52, &v154, &qword_27CFB8180, &qword_221BD2AD0);
  v78 = v27 + v66;
  v79 = sub_221BCCD68();
  sub_221BCDA98();
  OUTLINED_FUNCTION_188();
  if (!OUTLINED_FUNCTION_211())
  {

    v91 = v52;
LABEL_30:
    sub_2219EC58C(v91, &qword_27CFB8180);
    goto LABEL_45;
  }

  OUTLINED_FUNCTION_103();
  v80 = OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_46_0(v80);
  v81 = OUTLINED_FUNCTION_134(4.8151e-34);
  OUTLINED_FUNCTION_102(v81, v82);
  OUTLINED_FUNCTION_149();
  *(v21 + 4) = v43;
  OUTLINED_FUNCTION_83();
  sub_2219C1654(&v150, *(v27 + qword_27CFDED20 + 17));
  OUTLINED_FUNCTION_185();
  sub_2219EC58C(v52, &qword_27CFB8180);
  v83 = OUTLINED_FUNCTION_64();
  sub_2219A6360(v83, v43, v84);
  OUTLINED_FUNCTION_215();
  *(v21 + 14) = v78;
  OUTLINED_FUNCTION_51_0(&dword_221989000, v85, v86, "%sCompleted with %s");
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x223DA4C00]();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x223DA4C00]();

LABEL_45:
  v125 = v144;
LABEL_49:
  OUTLINED_FUNCTION_191(v145, v87, v44 == 1);
  if (v44 != 1 && (*(v27 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95(v145) & 1) == 0)
  {
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v131 = sub_221BCE3F8();
    v132 = OUTLINED_FUNCTION_101(v131, 1000.0);
    OUTLINED_FUNCTION_100(v132, v133, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v134 = v154;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    sub_221BB52B0(v135, v136, v137, v138, v139, v145, v125, v134, *(&v134 + 1), v140, SBYTE1(v140), v141);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D8D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v26 = v21;
  v28 = v27;
  v133 = *(v27 + 16);
  v131 = *v27;
  v132 = *(v27 + 32);
  v29 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_0();
  v35 = (v34 - v33);
  v36 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_165();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v41);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_239();
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v43);
    return;
  }

  v130 = v35;
  OUTLINED_FUNCTION_61_0();
  v45 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v21 + v45, v23, &qword_27CFB7FC8, &qword_221BD2880);
  v46 = OUTLINED_FUNCTION_151(v23);
  v47 = 0;
  v134 = 0;
  OUTLINED_FUNCTION_175(v46, &a13);
  if (!v48)
  {
    v49 = OUTLINED_FUNCTION_90();
    v50(v49, v23, v36);
    sub_221BCDF88();
    v47 = sub_221BCDFA8();
    v134 = v51;
    v52 = *(v38 + 8);
    LOBYTE(v38) = v38 + 8;
    v23 = v52;
    v53 = OUTLINED_FUNCTION_24();
    v52(v53);
    v54 = OUTLINED_FUNCTION_16();
    v52(v54);
  }

  if (*(v21 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_160(v55);
  }

  v56 = off_27CFBC778;
  swift_beginAccess();
  OUTLINED_FUNCTION_18_2(&a10);
  if (v57)
  {
    sub_2219BAF0C(v26 + v56[241], &v136, &qword_27CFB7FD0, &qword_221BD2888);
    v22 = *(&v137 + 1);
    if (*(&v137 + 1))
    {
      v23 = v138;
      OUTLINED_FUNCTION_62_0(&v136, *(&v137 + 1));
      LOBYTE(v38) = v47;
      v129 = v26;
      v58 = v28;
      v59 = v31;
      v60 = v29;
      v61 = *(v23 + 32);

      OUTLINED_FUNCTION_3_11();
      v61();
      v56 = &unk_27CFBC000;
      v29 = v60;
      v31 = v59;
      v28 = v58;
      v26 = v129;

      __swift_destroy_boxed_opaque_existential_0(&v136);
    }

    else
    {
      sub_2219EC58C(&v136, &qword_27CFB7FD0);
    }
  }

  if (*(v28 + 34))
  {
    sub_2219BAF0C(v26 + v56[241], &v136, &qword_27CFB7FD0, &qword_221BD2888);
    v62 = *(&v137 + 1);
    if (*(&v137 + 1))
    {
      OUTLINED_FUNCTION_23_2(&v136);
      v23 = v130;
      sub_2219E7D00(v130);
      v63 = OUTLINED_FUNCTION_55_0();
      v64(v63);
      (*(v31 + 8))(v130, v29);
      __swift_destroy_boxed_opaque_existential_0(&v136);
    }

    else
    {
      sub_2219EC58C(&v136, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0();
    if (v62)
    {
      v68 = *(v67 + 8);

      v69 = OUTLINED_FUNCTION_72();
      v71 = OUTLINED_FUNCTION_207(v69, v70);
      sub_221BCDA78();
      OUTLINED_FUNCTION_251();
      if (os_log_type_enabled(v71, v38))
      {
        v72 = OUTLINED_FUNCTION_103();
        *&v136 = OUTLINED_FUNCTION_105();
        v73 = OUTLINED_FUNCTION_216(4.8151e-34);
        OUTLINED_FUNCTION_150(v73, v74);
        OUTLINED_FUNCTION_148();
        *(v72 + 4) = v23;
        OUTLINED_FUNCTION_173();
        v75 = sub_221BCE198();
        if (!v75)
        {
          v75 = OUTLINED_FUNCTION_17_2(MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
        }

        v76 = v75;
        v62();
        OUTLINED_FUNCTION_143();

        v77 = OUTLINED_FUNCTION_91();
        sub_2219A6360(v77, v78, v79);
        OUTLINED_FUNCTION_97();

        *(v72 + 14) = v68;
        OUTLINED_FUNCTION_214(&dword_221989000, v71, v38, "%s %s", v127, v47);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v80 = OUTLINED_FUNCTION_72();
        sub_22198B60C(v80, v81);

        v47 = v128;
      }

      else
      {

        v108 = OUTLINED_FUNCTION_72();
        sub_22198B60C(v108, v109);
      }

      goto LABEL_42;
    }

    v95 = *(v26 + qword_27CFDED20 + 17);

    v62 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_249();
    v96 = os_log_type_enabled(v62, v28);
    if (v95)
    {
      if (v96)
      {
        OUTLINED_FUNCTION_103();
        *&v136 = OUTLINED_FUNCTION_43_0();
        v97 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_150(v97, v98);
        OUTLINED_FUNCTION_128();
        *(v95 + 4) = v47;
        *(v95 + 12) = 2085;
        v99 = sub_221BCE288();
        OUTLINED_FUNCTION_150(v99, v100);
        OUTLINED_FUNCTION_128();
        *(v95 + 14) = v47;
        v101 = "%sFailed with %{sensitive}s";
LABEL_37:
        OUTLINED_FUNCTION_154(&dword_221989000, v62, v28, v101);
        goto LABEL_38;
      }
    }

    else if (v96)
    {
      OUTLINED_FUNCTION_103();
      *&v136 = OUTLINED_FUNCTION_43_0();
      v112 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_150(v112, v113);
      OUTLINED_FUNCTION_128();
      *(v95 + 4) = v47;
      *(v95 + 12) = 2081;
      v114 = sub_221BCE288();
      OUTLINED_FUNCTION_150(v114, v115);
      OUTLINED_FUNCTION_128();
      *(v95 + 14) = v47;
      v101 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

LABEL_39:

    goto LABEL_42;
  }

  v139 = v131;
  v140 = v133;
  v141 = v132;
  sub_2219BAF0C(v26 + v56[241], &v136, &qword_27CFB7FD0, &qword_221BD2888);
  v62 = *(&v137 + 1);
  if (*(&v137 + 1))
  {
    v22 = v138;
    OUTLINED_FUNCTION_23_2(&v136);
    (*(v31 + 104))(v130, *MEMORY[0x277CD8AC8], v29);
    v65 = OUTLINED_FUNCTION_55_0();
    v66(v65);
    (*(v31 + 8))(v130, v29);
    __swift_destroy_boxed_opaque_existential_0(&v136);
  }

  else
  {
    sub_2219EC58C(&v136, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0();
  v83 = qword_27CFBC758;
  if (v62)
  {
    v84 = *(v82 + 8);
    v85 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_228(v85, v86);
    sub_2219BAF0C(v28, &v136, &qword_27CFB8170, &qword_221BD2AC0);
    v87 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_251();
    if (os_log_type_enabled(v87, v38))
    {
      OUTLINED_FUNCTION_103();
      v135 = OUTLINED_FUNCTION_43_0();
      v88 = OUTLINED_FUNCTION_134(4.8151e-34);
      sub_2219A6360(v88, v89, &v135);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      v136 = v139;
      v137 = v140;
      LOWORD(v138) = v141;
      (v62)(&v136);
      OUTLINED_FUNCTION_143();
      sub_2219EC58C(v28, &qword_27CFB8170);
      v90 = OUTLINED_FUNCTION_91();
      sub_2219A6360(v90, v91, v92);
      OUTLINED_FUNCTION_97();

      *(v22 + 14) = v84;
      OUTLINED_FUNCTION_154(&dword_221989000, v87, v38, "%s%s", v127, v47);
      OUTLINED_FUNCTION_196();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v93 = OUTLINED_FUNCTION_94();
      sub_22198B60C(v93, v94);

      goto LABEL_42;
    }

    v110 = OUTLINED_FUNCTION_94();
    sub_22198B60C(v110, v111);
  }

  else
  {

    sub_2219BAF0C(v28, &v136, &qword_27CFB8170, &qword_221BD2AC0);
    v102 = v26 + v83;
    v62 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_246();
    if (os_log_type_enabled(v62, v29))
    {
      OUTLINED_FUNCTION_103();
      *&v136 = OUTLINED_FUNCTION_43_0();
      v103 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_150(v103, v104);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      sub_2219C1654(&v139, *(v26 + qword_27CFDED20 + 17));
      OUTLINED_FUNCTION_143();
      sub_2219EC58C(v28, &qword_27CFB8170);
      v105 = OUTLINED_FUNCTION_91();
      sub_2219A6360(v105, v106, v107);
      OUTLINED_FUNCTION_97();

      *(v22 + 14) = v102;
      OUTLINED_FUNCTION_154(&dword_221989000, v62, v29, "%sCompleted with %s");
LABEL_38:
      OUTLINED_FUNCTION_196();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_39;
    }
  }

  sub_2219EC58C(v28, &qword_27CFB8170);
LABEL_42:
  OUTLINED_FUNCTION_48_0();
  sub_2219E7E58(v47, v134, v116);
  if (v62 != 1 && (*(v26 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0)
  {
    OUTLINED_FUNCTION_140();
    if ((sub_221BCE408() & 1) == 0)
    {
      sub_2219CB440();
      *&v136 = 0;
      *(&v136 + 1) = 0xE000000000000000;
      sub_221BCDE68();
      v117 = sub_2219CB3CC();
      MEMORY[0x223DA31F0](v117);

      OUTLINED_FUNCTION_28_1();
      v118 = sub_221BCE3F8();
      v119 = OUTLINED_FUNCTION_101(v118, 1000.0);
      OUTLINED_FUNCTION_100(v119, v120, 1.0e-15);
      sub_221BCD978();
      OUTLINED_FUNCTION_168();
      v121 = v136;
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_7_4();
      OUTLINED_FUNCTION_217();
      sub_221BB52B0(v122, v123, v124, v125, v126, v47, v134, v121, *(&v121 + 1), v47, SBYTE1(v47), v129);
      OUTLINED_FUNCTION_155();
    }
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219D983C(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v136 = *(a1 + 16);
  v139 = v3;
  v140 = a1;
  v135 = *(a1 + 32);
  v4 = sub_221BCCE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v132 - v9;
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v132 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v132 - v19;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v133 = v7;
  v134 = v5;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v21 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v21, v20, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v11);
  v138 = 0;
  v137 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v17, v20, v11);
    sub_221BCDF88();
    v138 = sub_221BCDFA8();
    v137 = v23;
    v24 = *(v12 + 8);
    v24(v14, v11);
    v24(v17, v11);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v25, v2);
  }

  v26 = off_27CFBC778;
  swift_beginAccess();
  v132 = v26;
  v27 = *&v26[v2];
  v28 = &unk_27CFBC000;
  v29 = v140;
  if (*(v27 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v145, &qword_27CFB7FD0, &qword_221BD2888);
    v30 = *(&v146 + 1);
    if (*(&v146 + 1))
    {
      v31 = v147;
      __swift_project_boxed_opaque_existential_0(&v145, *(&v146 + 1));
      v32 = EnumTagSinglePayload;
      v33 = v4;
      v34 = *(v31 + 32);

      v34(v35, 0x697274654D736961, 0xEA00000000007363, v30, v31);
      v28 = &unk_27CFBC000;
      v4 = v33;
      EnumTagSinglePayload = v32;
      v29 = v140;

      __swift_destroy_boxed_opaque_existential_0(&v145);
    }

    else
    {
      sub_2219EC58C(&v145, &qword_27CFB7FD0);
    }
  }

  if (*(v29 + 33))
  {
    v36 = v4;
    v37 = v139;
    sub_2219BAF0C(v2 + v28[241], &v145, &qword_27CFB7FD0, &qword_221BD2888);
    v38 = *(&v146 + 1);
    if (*(&v146 + 1))
    {
      *&v139 = v147;
      v39 = __swift_project_boxed_opaque_existential_0(&v145, *(&v146 + 1));
      v144 = v37;
      v40 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(&v141);
        *&v141 = v37;
        v41 = v37;
        v42 = sub_221BCE198();
        *&v136 = v39;
        if (v42)
        {
          v43 = v42;
          sub_2219EC58C(v29, &qword_27CFB8160);
        }

        else
        {
          v43 = swift_allocError();
          *v78 = v37;
        }

        v79 = sub_221BCC328();

        v80 = [v79 domain];
        v81 = sub_221BCD388();
        v83 = v82;

        v84 = [v79 code];
        v76 = v133;
        *v133 = v81;
        v76[1] = v83;
        v76[2] = v84;
        v75 = MEMORY[0x277CD8AB8];
      }

      else
      {
        v75 = MEMORY[0x277CD8AC0];
        v76 = v133;
      }

      v85 = v134;
      (*(v134 + 104))(v76, *v75, v36);
      (*(v139 + 24))(v76, v38);
      (*(v85 + 8))(v76, v36);
      __swift_destroy_boxed_opaque_existential_0(&v145);
    }

    else
    {
      sub_2219EC58C(&v145, &qword_27CFB7FD0);
    }

    v86 = *(v2 + qword_27CFBC770);
    if (v86)
    {
      LODWORD(v139) = EnumTagSinglePayload;
      v87 = *(v2 + qword_27CFBC770 + 8);

      sub_2219BAF0C(v29, &v145, &qword_27CFB8160, &qword_221BD2AA8);
      sub_22198BEB8(v86, v87);
      v88 = sub_221BCCD68();
      v89 = sub_221BCDA78();

      sub_2219EC58C(v29, &qword_27CFB8160);
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v145 = v91;
        *v90 = 136315394;
        v92 = sub_2219CB3CC();
        v94 = sub_2219A6360(v92, v93, &v145);

        *(v90 + 4) = v94;
        *(v90 + 12) = 2080;
        *&v141 = v37;
        v95 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v96 = sub_221BCE198();
        if (v96)
        {
          v97 = v96;
          sub_2219EC58C(v140, &qword_27CFB8160);
        }

        else
        {
          v97 = swift_allocError();
          *v119 = v37;
        }

        v120 = v86(v97);
        v122 = v121;

        v123 = sub_2219A6360(v120, v122, &v145);

        *(v90 + 14) = v123;
        _os_log_impl(&dword_221989000, v88, v89, "%s %s", v90, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v91, -1, -1);
        MEMORY[0x223DA4C00](v90, -1, -1);
      }

      sub_22198B60C(v86, v87);
      v118 = v137;
      EnumTagSinglePayload = v139;
      goto LABEL_49;
    }

    v98 = v37;
    v99 = *(v2 + qword_27CFDED20 + 17);

    if (v99)
    {
      v100 = v140;
      sub_2219BAF0C(v140, &v145, &qword_27CFB8160, &qword_221BD2AA8);
      v49 = sub_221BCCD68();
      v101 = sub_221BCDA78();

      sub_2219EC58C(v100, &qword_27CFB8160);
      if (os_log_type_enabled(v49, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v145 = v103;
        *v102 = 136315395;
        v104 = sub_2219CB3CC();
        v106 = sub_2219A6360(v104, v105, &v145);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2085;
        *&v141 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v107 = sub_221BCE288();
        v109 = sub_2219A6360(v107, v108, &v145);

        *(v102 + 14) = v109;
        v110 = "%sFailed with %{sensitive}s";
LABEL_43:
        _os_log_impl(&dword_221989000, v49, v101, v110, v102, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v103, -1, -1);
        MEMORY[0x223DA4C00](v102, -1, -1);
      }
    }

    else
    {
      v111 = v140;
      sub_2219BAF0C(v140, &v145, &qword_27CFB8160, &qword_221BD2AA8);
      v49 = sub_221BCCD68();
      v101 = sub_221BCDA78();

      sub_2219EC58C(v111, &qword_27CFB8160);
      if (os_log_type_enabled(v49, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v145 = v103;
        *v102 = 136315395;
        v112 = sub_2219CB3CC();
        v114 = sub_2219A6360(v112, v113, &v145);

        *(v102 + 4) = v114;
        *(v102 + 12) = 2081;
        *&v141 = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v115 = sub_221BCE288();
        v117 = sub_2219A6360(v115, v116, &v145);

        *(v102 + 14) = v117;
        v110 = "%sFailed with %{private}s";
        goto LABEL_43;
      }
    }

LABEL_44:

    goto LABEL_45;
  }

  v141 = v139;
  v142 = v136;
  v143 = v135;
  sub_2219BAF0C(v2 + v28[241], &v145, &qword_27CFB7FD0, &qword_221BD2888);
  v44 = *(&v146 + 1);
  if (*(&v146 + 1))
  {
    v45 = v147;
    __swift_project_boxed_opaque_existential_0(&v145, *(&v146 + 1));
    v46 = v134;
    (*(v134 + 104))(v10, *MEMORY[0x277CD8AC8], v4);
    (*(v45 + 24))(v10, v44, v45);
    (*(v46 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_0(&v145);
  }

  else
  {
    sub_2219EC58C(&v145, &qword_27CFB7FD0);
  }

  v47 = *(v2 + qword_27CFBC768);
  if (v47)
  {
    v48 = *(v2 + qword_27CFBC768 + 8);
    sub_22198BEB8(*(v2 + qword_27CFBC768), v48);

    sub_2219BAF0C(v29, &v145, &qword_27CFB8160, &qword_221BD2AA8);
    v49 = sub_221BCCD68();
    v50 = v29;
    v51 = sub_221BCDA98();

    if (os_log_type_enabled(v49, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      LODWORD(v139) = EnumTagSinglePayload;
      v54 = v53;
      v144 = v53;
      *v52 = 136315394;
      v55 = sub_2219CB3CC();
      v57 = sub_2219A6360(v55, v56, &v144);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      v145 = v141;
      v146 = v142;
      LOBYTE(v147) = v143;
      v58 = v47(&v145);
      v60 = v59;
      sub_2219EC58C(v50, &qword_27CFB8160);
      v61 = sub_2219A6360(v58, v60, &v144);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_221989000, v49, v51, "%s%s", v52, 0x16u);
      swift_arrayDestroy();
      v62 = v54;
      EnumTagSinglePayload = v139;
      MEMORY[0x223DA4C00](v62, -1, -1);
      MEMORY[0x223DA4C00](v52, -1, -1);
      sub_22198B60C(v47, v48);
      goto LABEL_44;
    }

    sub_22198B60C(v47, v48);
    v77 = v50;
    goto LABEL_30;
  }

  sub_2219BAF0C(v29, &v145, &qword_27CFB8160, &qword_221BD2AA8);
  v63 = sub_221BCCD68();
  v64 = sub_221BCDA98();

  if (!os_log_type_enabled(v63, v64))
  {

    v77 = v29;
LABEL_30:
    sub_2219EC58C(v77, &qword_27CFB8160);
    goto LABEL_45;
  }

  v65 = swift_slowAlloc();
  v66 = v29;
  v67 = swift_slowAlloc();
  *&v145 = v67;
  *v65 = 136315394;
  v68 = sub_2219CB3CC();
  v70 = sub_2219A6360(v68, v69, &v145);

  *(v65 + 4) = v70;
  *(v65 + 12) = 2080;
  v71 = sub_2219C1710(&v141, *(v2 + qword_27CFDED20 + 17));
  v73 = v72;
  sub_2219EC58C(v66, &qword_27CFB8160);
  v74 = sub_2219A6360(v71, v73, &v145);

  *(v65 + 14) = v74;
  _os_log_impl(&dword_221989000, v63, v64, "%sCompleted with %s", v65, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v67, -1, -1);
  MEMORY[0x223DA4C00](v65, -1, -1);

LABEL_45:
  v118 = v137;
LABEL_49:
  sub_2219E7E58(v138, v118, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v124 = *(v2 + qword_27CFBC780);
    v140 = *(v2 + qword_27CFBC780 + 8);
    v125 = *(v2 + qword_27CFBC780 + 16);
    v126 = sub_2219CB440();
    v128 = v127;
    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v129 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v129);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v130 = v145;
    v131 = *&v132[v2];

    sub_221BB52B0(v124, v140, v125, v126, v128, v138, v118, v130, *(&v130 + 1), 1, 1, v131);
  }
}

void sub_2219DA994(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *a1;
  v119 = *(a1 + 16);
  v117 = v4;
  v118 = *(a1 + 32);
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_221BCDFB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v111 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v111 - v17;
  os_unfair_lock_lock((v2 + 32));
  if (*(v2 + 36))
  {

    os_unfair_lock_unlock((v2 + 32));
    return;
  }

  v115 = v8;
  *(v2 + 36) = 1;
  os_unfair_lock_unlock((v2 + 32));
  v19 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v2 + v19, v18, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v9);
  v21 = 0;
  v120 = 0;
  v116 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    (*(v10 + 32))(v15, v18, v9);
    sub_221BCDF88();
    v21 = sub_221BCDFA8();
    v120 = v22;
    v23 = *(v10 + 8);
    v23(v12, v9);
    v23(v15, v9);
  }

  if (*(v2 + qword_27CFBC798))
  {

    sub_2219E7A60(v24, v2);
  }

  v25 = off_27CFBC778;
  swift_beginAccess();
  v114 = v25;
  v26 = *&v25[v2];
  v27 = &unk_27CFBC000;
  if (*(v26 + 16))
  {
    sub_2219BAF0C(v2 + qword_27CFBC788, &v122, &qword_27CFB7FD0, &qword_221BD2888);
    v28 = *(&v123 + 1);
    if (*(&v123 + 1))
    {
      v29 = v124;
      __swift_project_boxed_opaque_existential_0(&v122, *(&v123 + 1));
      v113 = v2;
      v30 = v3;
      v31 = v6;
      v32 = v5;
      v33 = *(v29 + 32);

      v33(v34, 0x697274654D736961, 0xEA00000000007363, v28, v29);
      v27 = &unk_27CFBC000;
      v5 = v32;
      v6 = v31;
      v3 = v30;
      v2 = v113;

      __swift_destroy_boxed_opaque_existential_0(&v122);
    }

    else
    {
      sub_2219EC58C(&v122, &qword_27CFB7FD0);
    }
  }

  if (*(v3 + 33))
  {
    sub_2219BAF0C(v2 + v27[241], &v122, &qword_27CFB7FD0, &qword_221BD2888);
    v35 = *(&v123 + 1);
    if (*(&v123 + 1))
    {
      v36 = v124;
      __swift_project_boxed_opaque_existential_0(&v122, *(&v123 + 1));
      v37 = v115;
      sub_2219E7D00(v115);
      (*(v36 + 24))(v37, v35, v36);
      (*(v6 + 8))(v37, v5);
      __swift_destroy_boxed_opaque_existential_0(&v122);
    }

    else
    {
      sub_2219EC58C(&v122, &qword_27CFB7FD0);
    }

    v41 = *(v2 + qword_27CFBC770);
    if (v41)
    {
      v42 = *(v2 + qword_27CFBC770 + 8);

      sub_22198BEB8(v41, v42);
      v43 = sub_221BCCD68();
      v44 = sub_221BCDA78();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v122 = v46;
        *v45 = 136315394;
        v47 = sub_2219CB3CC();
        v49 = sub_2219A6360(v47, v48, &v122);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2080;
        v50 = sub_221BCE198();
        v112 = v21;
        if (!v50)
        {
          v50 = swift_allocError();
        }

        v51 = v50;
        v52 = v41();
        v54 = v53;

        v55 = sub_2219A6360(v52, v54, &v122);

        *(v45 + 14) = v55;
        _os_log_impl(&dword_221989000, v43, v44, "%s %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v46, -1, -1);
        MEMORY[0x223DA4C00](v45, -1, -1);
        sub_22198B60C(v41, v42);

        v21 = v112;
      }

      else
      {

        sub_22198B60C(v41, v42);
      }

      goto LABEL_42;
    }

    v70 = *(v2 + qword_27CFDED20 + 17);

    v71 = sub_221BCCD68();
    v72 = sub_221BCDA78();

    v73 = os_log_type_enabled(v71, v72);
    if (v70)
    {
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v122 = v75;
        *v74 = 136315395;
        v76 = sub_2219CB3CC();
        v78 = v21;
        v79 = sub_2219A6360(v76, v77, &v122);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2085;
        v80 = sub_221BCE288();
        v82 = sub_2219A6360(v80, v81, &v122);

        *(v74 + 14) = v82;
        v21 = v78;
        v83 = "%sFailed with %{sensitive}s";
LABEL_37:
        v93 = v72;
        goto LABEL_38;
      }
    }

    else if (v73)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v122 = v75;
      *v74 = 136315395;
      v94 = sub_2219CB3CC();
      v96 = v21;
      v97 = sub_2219A6360(v94, v95, &v122);

      *(v74 + 4) = v97;
      *(v74 + 12) = 2081;
      v98 = sub_221BCE288();
      v100 = sub_2219A6360(v98, v99, &v122);

      *(v74 + 14) = v100;
      v21 = v96;
      v83 = "%sFailed with %{private}s";
      goto LABEL_37;
    }

LABEL_39:

    goto LABEL_42;
  }

  v125 = v117;
  v126 = v119;
  v127 = v118;
  sub_2219BAF0C(v2 + v27[241], &v122, &qword_27CFB7FD0, &qword_221BD2888);
  v38 = *(&v123 + 1);
  if (*(&v123 + 1))
  {
    v39 = v124;
    __swift_project_boxed_opaque_existential_0(&v122, *(&v123 + 1));
    v40 = v115;
    (*(v6 + 104))(v115, *MEMORY[0x277CD8AC8], v5);
    (*(v39 + 24))(v40, v38, v39);
    (*(v6 + 8))(v40, v5);
    __swift_destroy_boxed_opaque_existential_0(&v122);
  }

  else
  {
    sub_2219EC58C(&v122, &qword_27CFB7FD0);
  }

  v56 = *(v2 + qword_27CFBC768);
  if (!v56)
  {

    sub_2219BAF0C(v3, &v122, &qword_27CFB8150, &qword_221BD2A98);
    v71 = sub_221BCCD68();
    v84 = sub_221BCDA98();

    if (os_log_type_enabled(v71, v84))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v122 = v75;
      *v74 = 136315394;
      v85 = sub_2219CB3CC();
      v87 = v21;
      v88 = sub_2219A6360(v85, v86, &v122);

      *(v74 + 4) = v88;
      *(v74 + 12) = 2080;
      v89 = sub_2219C1710(&v125, *(v2 + qword_27CFDED20 + 17));
      v91 = v90;
      sub_2219EC58C(v3, &qword_27CFB8150);
      v92 = sub_2219A6360(v89, v91, &v122);
      v21 = v87;

      *(v74 + 14) = v92;
      v83 = "%sCompleted with %s";
      v93 = v84;
LABEL_38:
      _os_log_impl(&dword_221989000, v71, v93, v83, v74, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v75, -1, -1);
      MEMORY[0x223DA4C00](v74, -1, -1);
      goto LABEL_39;
    }

LABEL_41:
    sub_2219EC58C(v3, &qword_27CFB8150);
    goto LABEL_42;
  }

  v57 = *(v2 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v2 + qword_27CFBC768), v57);

  sub_2219BAF0C(v3, &v122, &qword_27CFB8150, &qword_221BD2A98);
  v58 = sub_221BCCD68();
  v59 = sub_221BCDA98();

  if (!os_log_type_enabled(v58, v59))
  {

    sub_22198B60C(v56, v57);
    goto LABEL_41;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v121 = v61;
  *v60 = 136315394;
  v62 = sub_2219CB3CC();
  v64 = sub_2219A6360(v62, v63, &v121);
  v112 = v21;
  v65 = v64;

  *(v60 + 4) = v65;
  *(v60 + 12) = 2080;
  v122 = v125;
  v123 = v126;
  LOBYTE(v124) = v127;
  v66 = v56(&v122);
  v68 = v67;
  sub_2219EC58C(v3, &qword_27CFB8150);
  v69 = sub_2219A6360(v66, v68, &v121);
  v21 = v112;

  *(v60 + 14) = v69;
  _os_log_impl(&dword_221989000, v58, v59, "%s%s", v60, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x223DA4C00](v61, -1, -1);
  MEMORY[0x223DA4C00](v60, -1, -1);
  sub_22198B60C(v56, v57);

LABEL_42:
  v101 = v116;
  v102 = v120;
  sub_2219E7E58(v21, v120, v116 == 1);
  if (v101 != 1 && (*(v2 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    *&v119 = *(v2 + qword_27CFBC780);
    v112 = v21;
    v103 = *(v2 + qword_27CFBC780 + 8);
    v104 = *(v2 + qword_27CFBC780 + 16);
    v105 = sub_2219CB440();
    v107 = v106;
    *&v122 = 0;
    *(&v122 + 1) = 0xE000000000000000;
    sub_221BCDE68();
    v108 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v108);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v109 = v122;
    v110 = *&v114[v2];

    sub_221BB52B0(v119, v103, v104, v105, v107, v112, v102, v109, *(&v109 + 1), 1, 1, v110);
  }
}

void sub_2219DB7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_21();
  a20 = v24;
  a21 = v25;
  v26 = v21;
  LODWORD(v186) = v27;
  v187 = v28;
  v188 = v29;
  v30 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_164();
  MEMORY[0x28223BE20](v34);
  v36 = &v181 - v35;
  v37 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_5();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_22_2();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v45);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_156();
  os_unfair_lock_lock((v21 + 32));
  if (*(v21 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v47);
    return;
  }

  v184 = v23;
  OUTLINED_FUNCTION_61_0();
  v49 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v21 + qword_27CFBC7A0);
  sub_2219BAF0C(v21 + v49, v22, &qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_151(v22);
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_175(v50, &a16);
  if (!v51)
  {
    v52 = OUTLINED_FUNCTION_90();
    v53(v52, v22, v37);
    sub_221BCDF88();
    v54 = sub_221BCDFA8();
    OUTLINED_FUNCTION_225(v54, v55);
    v22 = *(v39 + 8);
    (v22)(v43, v37);
    v56 = OUTLINED_FUNCTION_16();
    (v22)(v56);
  }

  if (*(v21 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_110(v57);
  }

  v58 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_18_2(&a13);
  if (v59)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v58[241]);
    if (v192)
    {
      v22 = v193;
      OUTLINED_FUNCTION_62_0(&v190, v192);
      v60 = v32;
      v61 = v30;
      LOBYTE(v49) = v22 + 32;
      v62 = *(v22 + 32);

      OUTLINED_FUNCTION_3_11();
      v62();
      v58 = &unk_27CFBC000;
      v30 = v61;
      v32 = v60;

      __swift_destroy_boxed_opaque_existential_0(&v190);
    }

    else
    {
      sub_2219EC58C(&v190, &qword_27CFB7FD0);
    }
  }

  if ((v186 & 1) == 0)
  {
    v68 = v32;
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v58[241]);
    v63 = v192;
    v69 = v188;
    if (v192)
    {
      OUTLINED_FUNCTION_15_3();
      (*(v68 + 104))(v36, *MEMORY[0x277CD8AC8], v30);
      OUTLINED_FUNCTION_74();
      v70();
      (*(v68 + 8))(v36, v30);
      __swift_destroy_boxed_opaque_existential_0(&v190);
    }

    else
    {
      sub_2219EC58C(&v190, &qword_27CFB7FD0);
    }

    v71 = v187;
    OUTLINED_FUNCTION_45_0();
    v73 = qword_27CFBC758;
    if (v63)
    {
      v74 = *(v72 + 8);
      v75 = OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_228(v75, v76);
      v77 = OUTLINED_FUNCTION_50_0();
      sub_2219EC098(v77, v78, v79);
      v80 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_209();
      if (os_log_type_enabled(v80, v49))
      {
        v81 = OUTLINED_FUNCTION_103();
        v187 = OUTLINED_FUNCTION_105();
        v189[0] = v187;
        v82 = OUTLINED_FUNCTION_213(4.8151e-34);
        OUTLINED_FUNCTION_150(v82, v83);
        OUTLINED_FUNCTION_149();
        *(v81 + 4) = v68;
        *(v81 + 12) = 2080;
        v190 = v71;
        v191 = v69;
        v63(&v190);
        OUTLINED_FUNCTION_185();
        v84 = OUTLINED_FUNCTION_50_0();
        sub_2219EC0A4(v84, v85, v86);
        sub_2219A6360(v74, v68, v189);
        OUTLINED_FUNCTION_215();
        *(v81 + 14) = v74;
        OUTLINED_FUNCTION_201(&dword_221989000, v87, v49, "%s%s");
        OUTLINED_FUNCTION_129();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v88 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v88, v89);

        goto LABEL_49;
      }

      v108 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v108, v109);
    }

    else
    {

      v90 = OUTLINED_FUNCTION_50_0();
      sub_2219EC098(v90, v91, v92);
      v93 = v26 + v73;
      v63 = sub_221BCCD68();
      sub_221BCDA98();
      OUTLINED_FUNCTION_188();
      if (OUTLINED_FUNCTION_211())
      {
        OUTLINED_FUNCTION_103();
        v94 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_46_0(v94);
        v95 = OUTLINED_FUNCTION_134(4.8151e-34);
        OUTLINED_FUNCTION_102(v95, v96);
        OUTLINED_FUNCTION_149();
        *(v36 + 4) = v68;
        OUTLINED_FUNCTION_83();
        OUTLINED_FUNCTION_218();
        v97 = OUTLINED_FUNCTION_86();
        sub_2219C17CC(v97, v98, v99);
        OUTLINED_FUNCTION_185();
        v100 = OUTLINED_FUNCTION_50_0();
        sub_2219EC0A4(v100, v101, v102);
        v103 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v103, v68, v104);
        OUTLINED_FUNCTION_215();
        *(v36 + 14) = v93;
        OUTLINED_FUNCTION_51_0(&dword_221989000, v105, v106, "%sCompleted with %s");
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
LABEL_44:
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_45;
      }
    }

    v110 = OUTLINED_FUNCTION_50_0();
    sub_2219EC0A4(v110, v111, v112);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v58[241]);
  v63 = v192;
  if (v192)
  {
    v182 = v30;
    v186 = OUTLINED_FUNCTION_47();
    v64 = v187;
    OUTLINED_FUNCTION_244();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
    OUTLINED_FUNCTION_57_0();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_135();
      v66 = sub_221BCE198();
      if (v66)
      {
        v67 = v66;
        sub_2219EC0A4(v64, v188, 1);
      }

      else
      {
        v67 = OUTLINED_FUNCTION_17_2(v65, MEMORY[0x277D84950]);
        *v113 = v64;
      }

      v114 = sub_221BCC328();

      v115 = [v114 domain];
      v22 = sub_221BCD388();
      v117 = v116;

      v118 = [v114 code];
      v49 = v184;
      *v184 = v22;
      *(v49 + 8) = v117;
      *(v49 + 16) = v118;
      v107 = MEMORY[0x277CD8AB8];
    }

    else
    {
      v107 = MEMORY[0x277CD8AC0];
      v49 = v184;
    }

    v30 = v182;
    (*(v32 + 104))(v49, *v107, v182);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_56_0();
    v119();
    (*(v32 + 8))(v49, v30);
    __swift_destroy_boxed_opaque_existential_0(&v190);
  }

  else
  {
    sub_2219EC58C(&v190, &qword_27CFB7FD0);
    v64 = v187;
  }

  OUTLINED_FUNCTION_45_0();
  if (v63)
  {
    v121 = *(v120 + 8);

    v122 = OUTLINED_FUNCTION_87();
    sub_2219EC098(v122, v123, v124);
    v125 = OUTLINED_FUNCTION_1_0();
    v127 = OUTLINED_FUNCTION_207(v125, v126);
    sub_221BCDA78();
    OUTLINED_FUNCTION_209();
    v128 = OUTLINED_FUNCTION_87();
    sub_2219EC0A4(v128, v129, v130);
    if (os_log_type_enabled(v127, v49))
    {
      v131 = OUTLINED_FUNCTION_103();
      v132 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_46_0(v132);
      v133 = OUTLINED_FUNCTION_248(4.8151e-34);
      OUTLINED_FUNCTION_102(v133, v134);
      OUTLINED_FUNCTION_149();
      *(v131 + 4) = v22;
      OUTLINED_FUNCTION_130();
      v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v137 = OUTLINED_FUNCTION_208(v135, v136, MEMORY[0x277D84950]);
      if (v137)
      {
        v138 = v137;
        sub_2219EC0A4(v64, v188, 1);
      }

      else
      {
        v138 = OUTLINED_FUNCTION_112(0, MEMORY[0x277D84950]);
        *v159 = v64;
      }

      v63(v138);
      OUTLINED_FUNCTION_184();

      v160 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v160, v64, v161);
      OUTLINED_FUNCTION_144();

      *(v131 + 14) = v121;
      OUTLINED_FUNCTION_247(&dword_221989000, v127, v49, "%s %s", v181, v182);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    v162 = OUTLINED_FUNCTION_1_0();
    sub_22198B60C(v162, v163);
    goto LABEL_49;
  }

  OUTLINED_FUNCTION_177();

  v139 = OUTLINED_FUNCTION_87();
  sub_2219EC098(v139, v140, v141);
  v63 = sub_221BCCD68();
  sub_221BCDA78();
  OUTLINED_FUNCTION_153_0();
  v142 = OUTLINED_FUNCTION_87();
  sub_2219EC0A4(v142, v143, v144);
  v145 = OUTLINED_FUNCTION_169();
  if (v30)
  {
    if (v145)
    {
      OUTLINED_FUNCTION_103();
      v146 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v146);
      v147 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v147, v148);
      OUTLINED_FUNCTION_149();
      *(v30 + 4) = v22;
      OUTLINED_FUNCTION_116(2085);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v149 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v149, v150);
      OUTLINED_FUNCTION_5_1();
      *(v30 + 14) = v64;
      v153 = "%sFailed with %{sensitive}s";
LABEL_43:
      OUTLINED_FUNCTION_41_0(&dword_221989000, v151, v152, v153);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_44;
    }
  }

  else if (v145)
  {
    OUTLINED_FUNCTION_103();
    v154 = OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_46_0(v154);
    v155 = OUTLINED_FUNCTION_125(4.8151e-34);
    OUTLINED_FUNCTION_102(v155, v156);
    OUTLINED_FUNCTION_149();
    *(v30 + 4) = v22;
    OUTLINED_FUNCTION_116(2081);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v157 = sub_221BCE288();
    OUTLINED_FUNCTION_102(v157, v158);
    OUTLINED_FUNCTION_5_1();
    *(v30 + 14) = v64;
    v153 = "%sFailed with %{private}s";
    goto LABEL_43;
  }

LABEL_45:

LABEL_49:
  OUTLINED_FUNCTION_48_0();
  v164 = v185;
  OUTLINED_FUNCTION_133(v185, v165, v166);
  if (v63 != 1 && (*(v26 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95(v164) & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    v187 = v167;
    v188 = v168;
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v169 = sub_221BCE3F8();
    v170 = OUTLINED_FUNCTION_101(v169, 1000.0);
    OUTLINED_FUNCTION_100(v170, v171, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v172 = v191;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_7_4();
    v181 = v172;
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219DC328()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  v132 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_221BCCE38();
  OUTLINED_FUNCTION_0_2();
  v131 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = (v12 - v11);
  v14 = sub_221BCDFB8();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_22_2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  OUTLINED_FUNCTION_8_1(v22);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_157();
  os_unfair_lock_lock((v0 + 32));
  if (*(v0 + 36))
  {
    OUTLINED_FUNCTION_81();
    OUTLINED_FUNCTION_22();

    os_unfair_lock_unlock(v24);
    return;
  }

  v128 = v7;
  v129 = v8;
  OUTLINED_FUNCTION_61_0();
  v26 = qword_27CFBC7A0;
  OUTLINED_FUNCTION_65(v0 + qword_27CFBC7A0);
  sub_2219BAF0C(v0 + v26, v1, &qword_27CFB7FC8, &qword_221BD2880);
  v27 = 0;
  v130 = OUTLINED_FUNCTION_151(v1);
  if (v130 != 1)
  {
    v28 = OUTLINED_FUNCTION_90();
    v29(v28, v1, v14);
    sub_221BCDF88();
    v27 = sub_221BCDFA8();
    v26 = *(v16 + 8);
    v30 = OUTLINED_FUNCTION_118();
    (v26)(v30);
    v31 = OUTLINED_FUNCTION_16();
    (v26)(v31);
  }

  if (*(v0 + qword_27CFBC798))
  {

    OUTLINED_FUNCTION_160(v32);
  }

  v33 = off_27CFBC778;
  OUTLINED_FUNCTION_32_1();
  v34 = *&v33[v2];
  v35 = &unk_27CFBC000;
  if (*(v34 + 16))
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, qword_27CFBC788);
    v20 = v136;
    if (v136)
    {
      v1 = v137;
      OUTLINED_FUNCTION_62_0(&v134, v136);
      v36 = v5;
      v37 = v27;
      v26 = v1 + 32;
      v38 = *(v1 + 32);

      OUTLINED_FUNCTION_3_11();
      v38();
      v35 = &unk_27CFBC000;
      v27 = v37;
      v5 = v36;

      __swift_destroy_boxed_opaque_existential_0(&v134);
    }

    else
    {
      sub_2219EC58C(&v134, &qword_27CFB7FD0);
    }
  }

  if (v132)
  {
    OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v35[241]);
    v39 = v136;
    if (v136)
    {
      OUTLINED_FUNCTION_13_3();
      sub_2219E7D00(v13);
      v40 = OUTLINED_FUNCTION_26_2();
      v41(v40);
      (*(v131 + 8))(v13, v129);
      __swift_destroy_boxed_opaque_existential_0(&v134);
    }

    else
    {
      sub_2219EC58C(&v134, &qword_27CFB7FD0);
    }

    OUTLINED_FUNCTION_45_0();
    if (v39)
    {
      v133 = v27;
      v46 = *(v45 + 8);

      v47 = OUTLINED_FUNCTION_1_0();
      v49 = OUTLINED_FUNCTION_207(v47, v48);
      sub_221BCDA78();
      OUTLINED_FUNCTION_209();
      if (os_log_type_enabled(v49, v5))
      {
        v50 = OUTLINED_FUNCTION_103();
        v134 = OUTLINED_FUNCTION_105();
        *v50 = 136315394;
        v51 = sub_2219CB3CC();
        OUTLINED_FUNCTION_102(v51, v52);
        OUTLINED_FUNCTION_148();
        *(v50 + 4) = v20;
        *(v50 + 12) = 2080;
        v53 = sub_221BCE198();
        if (!v53)
        {
          v53 = OUTLINED_FUNCTION_17_2(MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
        }

        v54 = v53;
        v39();
        OUTLINED_FUNCTION_143();

        v55 = OUTLINED_FUNCTION_64();
        sub_2219A6360(v55, v1, v56);
        OUTLINED_FUNCTION_97();

        *(v50 + 14) = v46;
        OUTLINED_FUNCTION_240(&dword_221989000, v57, v58, "%s %s");
        OUTLINED_FUNCTION_195();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v59 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v59, v60);
      }

      else
      {

        v104 = OUTLINED_FUNCTION_1_0();
        sub_22198B60C(v104, v105);
      }

      v27 = v133;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_177();

    v83 = sub_221BCCD68();
    sub_221BCDA78();
    OUTLINED_FUNCTION_153_0();
    v84 = OUTLINED_FUNCTION_169();
    if (v20)
    {
      if (v84)
      {
        OUTLINED_FUNCTION_103();
        v85 = OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_46_0(v85);
        v86 = OUTLINED_FUNCTION_125(4.8151e-34);
        OUTLINED_FUNCTION_102(v86, v87);
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_158();
        v88 = sub_221BCE288();
        OUTLINED_FUNCTION_102(v88, v89);
        OUTLINED_FUNCTION_5_1();
        *(v20 + 14) = v27;
        v92 = "%sFailed with %{sensitive}s";
LABEL_38:
        OUTLINED_FUNCTION_41_0(&dword_221989000, v90, v91, v92);
        OUTLINED_FUNCTION_49_0();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        goto LABEL_39;
      }
    }

    else if (v84)
    {
      OUTLINED_FUNCTION_103();
      v108 = OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_46_0(v108);
      v109 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_102(v109, v110);
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_159();
      v111 = sub_221BCE288();
      OUTLINED_FUNCTION_102(v111, v112);
      OUTLINED_FUNCTION_5_1();
      *(v20 + 14) = v27;
      v92 = "%sFailed with %{private}s";
      goto LABEL_38;
    }

LABEL_40:

    goto LABEL_43;
  }

  OUTLINED_FUNCTION_114(&qword_27CFB7FD0, &qword_221BD2888, v35[241]);
  v42 = v136;
  if (v136)
  {
    OUTLINED_FUNCTION_13_3();
    v20 = v129;
    (*(v131 + 104))(v13, *MEMORY[0x277CD8AC8], v129);
    v43 = OUTLINED_FUNCTION_26_2();
    v44(v43);
    v1 = v131 + 8;
    (*(v131 + 8))(v13, v129);
    __swift_destroy_boxed_opaque_existential_0(&v134);
  }

  else
  {
    sub_2219EC58C(&v134, &qword_27CFB7FD0);
  }

  OUTLINED_FUNCTION_45_0();
  v63 = qword_27CFBC758;
  if (v42)
  {
    v64 = *(v62 + 8);
    v65 = OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_228(v65, v66);
    OUTLINED_FUNCTION_220();
    sub_2219EBFA8(v67, v68, v69);
    v70 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_251();
    if (os_log_type_enabled(v70, v13))
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_39_0();
      v71 = OUTLINED_FUNCTION_125(4.8151e-34);
      OUTLINED_FUNCTION_250(v71, v72);
      OUTLINED_FUNCTION_5_1();
      *(v20 + 4) = v27;
      OUTLINED_FUNCTION_174();
      v134 = v128;
      v135 = v5;
      (v42)(&v134);
      OUTLINED_FUNCTION_184();
      OUTLINED_FUNCTION_220();
      sub_2219EC020(v73, v74, v75);
      v76 = OUTLINED_FUNCTION_92();
      sub_2219A6360(v76, v77, v78);
      OUTLINED_FUNCTION_144();

      *(v20 + 14) = v64;
      _os_log_impl(&dword_221989000, v70, v13, "%s%s", v20, 0x16u);
      OUTLINED_FUNCTION_190(v79, v80, MEMORY[0x277D84F70] + 8);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v81 = OUTLINED_FUNCTION_1_0();
      sub_22198B60C(v81, v82);

      goto LABEL_43;
    }

    v106 = OUTLINED_FUNCTION_1_0();
    sub_22198B60C(v106, v107);
  }

  else
  {

    OUTLINED_FUNCTION_220();
    sub_2219EBFA8(v93, v94, v95);
    v96 = v2 + v63;
    v83 = sub_221BCCD68();
    sub_221BCDA98();
    OUTLINED_FUNCTION_188();
    if (OUTLINED_FUNCTION_211())
    {
      OUTLINED_FUNCTION_103();
      v134 = OUTLINED_FUNCTION_43_0();
      v97 = OUTLINED_FUNCTION_134(4.8151e-34);
      OUTLINED_FUNCTION_102(v97, v98);
      OUTLINED_FUNCTION_128();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_218();
      sub_2219C17CC(v128, v5, v99);
      OUTLINED_FUNCTION_143();
      sub_2219EC020(v128, v5, 0);
      v100 = OUTLINED_FUNCTION_64();
      sub_2219A6360(v100, v1, v101);
      OUTLINED_FUNCTION_97();

      *(v26 + 14) = v96;
      OUTLINED_FUNCTION_51_0(&dword_221989000, v102, v103, "%sCompleted with %s");
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
LABEL_39:
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      goto LABEL_40;
    }
  }

  OUTLINED_FUNCTION_220();
  sub_2219EC020(v113, v114, v115);
LABEL_43:
  OUTLINED_FUNCTION_191(v27, v61, v130 == 1);
  if (v130 != 1 && (*(v2 + 56) & 1) == 0 && (OUTLINED_FUNCTION_24_1() & 1) != 0 && (OUTLINED_FUNCTION_95(v27) & 1) == 0)
  {
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_189();
    OUTLINED_FUNCTION_14_4();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_187();

    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_3_4();
    v116 = sub_221BCE3F8();
    v117 = OUTLINED_FUNCTION_101(v116, 1000.0);
    OUTLINED_FUNCTION_100(v117, v118, 1.0e-15);
    sub_221BCD978();
    OUTLINED_FUNCTION_168();
    v119 = v135;

    OUTLINED_FUNCTION_7_4();
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_147(v120, v121, v122, v123, v124, v125, v126, v127, v119, v128, v129);
    OUTLINED_FUNCTION_155();
  }

  OUTLINED_FUNCTION_22();
}

void sub_2219DCCF8(void *a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v143 = a1;
  v5 = sub_221BCCE38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v141 = &v136 - v10;
  v11 = sub_221BCDFB8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v136 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FC8, &qword_221BD2880);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v136 - v19;
  os_unfair_lock_lock((v3 + 32));
  if (*(v3 + 36))
  {

    os_unfair_lock_unlock((v3 + 32));
    return;
  }

  v138 = v8;
  v139 = v6;
  v140 = v5;
  *(v3 + 36) = 1;
  os_unfair_lock_unlock((v3 + 32));
  v21 = qword_27CFBC7A0;
  swift_beginAccess();
  sub_2219BAF0C(v3 + v21, v20, &qword_27CFB7FC8, &qword_221BD2880);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v11);
  v23 = 0;
  v142 = 0;
  if (EnumTagSinglePayload != 1)
  {
    (*(v12 + 32))(v17, v20, v11);
    sub_221BCDF88();
    v23 = sub_221BCDFA8();
    v142 = v24;
    v25 = *(v12 + 8);
    v25(v14, v11);
    v25(v17, v11);
  }

  if (*(v3 + qword_27CFBC798))
  {

    sub_2219E7A60(v26, v3);
  }

  v27 = off_27CFBC778;
  swift_beginAccess();
  v137 = v27;
  v28 = v143;
  if (!*(*&v27[v3] + 16))
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    sub_2219BAF0C(v3 + qword_27CFBC788, &v145, &qword_27CFB7FD0, &qword_221BD2888);
    v42 = v147;
    if (v147)
    {
      LODWORD(v141) = v4;
      v43 = v148;
      v44 = __swift_project_boxed_opaque_existential_0(&v145, v147);
      v144[5] = v28;
      v45 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FE0, &qword_221BE9970);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v144);
        v144[0] = v28;
        v46 = v28;
        v47 = sub_221BCE198();
        v136 = v44;
        if (v47)
        {
          v48 = v47;
          sub_2219EBF9C(v28);
        }

        else
        {
          v48 = swift_allocError();
          *v82 = v28;
        }

        v83 = sub_221BCC328();

        v84 = [v83 domain];
        v85 = sub_221BCD388();
        v87 = v86;

        v88 = [v83 code];
        v81 = v138;
        *v138 = v85;
        v81[1] = v87;
        v81[2] = v88;
        v80 = MEMORY[0x277CD8AB8];
        v28 = v143;
      }

      else
      {
        v80 = MEMORY[0x277CD8AC0];
        v81 = v138;
      }

      v89 = v139;
      v90 = v140;
      (*(v139 + 104))(v81, *v80, v140);
      (*(v43 + 24))(v81, v42, v43);
      (*(v89 + 8))(v81, v90);
      __swift_destroy_boxed_opaque_existential_0(&v145);
    }

    else
    {
      sub_2219EC58C(&v145, &qword_27CFB7FD0);
    }

    v91 = *(v3 + qword_27CFBC770);
    if (v91)
    {
      v140 = v23;
      LODWORD(v141) = EnumTagSinglePayload;
      v92 = *(v3 + qword_27CFBC770 + 8);

      sub_2219EBF90(v28);
      sub_22198BEB8(v91, v92);
      v93 = sub_221BCCD68();
      v94 = sub_221BCDA78();

      sub_2219EBF9C(v28);
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v145 = v139;
        *v95 = 136315394;
        v96 = sub_2219CB3CC();
        v98 = sub_2219A6360(v96, v97, &v145);

        *(v95 + 4) = v98;
        *(v95 + 12) = 2080;
        v144[0] = v28;
        v99 = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
        v100 = sub_221BCE198();
        if (v100)
        {
          v101 = v100;
          sub_2219EBF9C(v28);
        }

        else
        {
          v101 = swift_allocError();
          *v121 = v28;
        }

        v122 = v91(v101);
        v124 = v123;

        v125 = sub_2219A6360(v122, v124, &v145);

        *(v95 + 14) = v125;
        _os_log_impl(&dword_221989000, v93, v94, "%s %s", v95, 0x16u);
        v126 = v139;
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v126, -1, -1);
        MEMORY[0x223DA4C00](v95, -1, -1);
      }

      sub_22198B60C(v91, v92);
      EnumTagSinglePayload = v141;
      v23 = v140;
      goto LABEL_47;
    }

    v102 = *(v3 + qword_27CFDED20 + 17);

    sub_2219EBF90(v28);
    v67 = sub_221BCCD68();
    v103 = sub_221BCDA78();

    sub_2219EBF9C(v28);
    v104 = os_log_type_enabled(v67, v103);
    if (v102)
    {
      if (!v104)
      {
        goto LABEL_43;
      }

      v70 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v145 = v105;
      *v70 = 136315395;
      v106 = sub_2219CB3CC();
      v108 = v28;
      v109 = sub_2219A6360(v106, v107, &v145);

      *(v70 + 4) = v109;
      *(v70 + 12) = 2085;
      v144[0] = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v110 = sub_221BCE288();
      v112 = sub_2219A6360(v110, v111, &v145);

      *(v70 + 14) = v112;
      v113 = "%sFailed with %{sensitive}s";
    }

    else
    {
      if (!v104)
      {
        goto LABEL_43;
      }

      v70 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v145 = v105;
      *v70 = 136315395;
      v114 = sub_2219CB3CC();
      v116 = v28;
      v117 = sub_2219A6360(v114, v115, &v145);

      *(v70 + 4) = v117;
      *(v70 + 12) = 2081;
      v144[0] = v116;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      v118 = sub_221BCE288();
      v120 = sub_2219A6360(v118, v119, &v145);

      *(v70 + 14) = v120;
      v113 = "%sFailed with %{private}s";
    }

    _os_log_impl(&dword_221989000, v67, v103, v113, v70, 0x16u);
    swift_arrayDestroy();
    v79 = v105;
    goto LABEL_42;
  }

  sub_2219BAF0C(v3 + qword_27CFBC788, &v145, &qword_27CFB7FD0, &qword_221BD2888);
  v29 = v147;
  if (v147)
  {
    v30 = v148;
    __swift_project_boxed_opaque_existential_0(&v145, v147);
    v31 = v3;
    v32 = EnumTagSinglePayload;
    v33 = *(v30 + 32);

    v33(v34, 0x697274654D736961, 0xEA00000000007363, v29, v30);
    EnumTagSinglePayload = v32;
    v3 = v31;
    v28 = v143;

    __swift_destroy_boxed_opaque_existential_0(&v145);
    goto LABEL_12;
  }

  sub_2219EC58C(&v145, &qword_27CFB7FD0);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_2219BAF0C(v3 + qword_27CFBC788, &v145, &qword_27CFB7FD0, &qword_221BD2888);
  v35 = v147;
  if (v147)
  {
    v36 = v148;
    __swift_project_boxed_opaque_existential_0(&v145, v147);
    v37 = EnumTagSinglePayload;
    v38 = v23;
    v39 = v4;
    v4 = v139;
    v40 = v141;
    v41 = v140;
    (*(v139 + 104))(v141, *MEMORY[0x277CD8AC8], v140);
    (*(v36 + 24))(v40, v35, v36);
    (*(v4 + 8))(v40, v41);
    LOBYTE(v4) = v39;
    v23 = v38;
    EnumTagSinglePayload = v37;
    v28 = v143;
    __swift_destroy_boxed_opaque_existential_0(&v145);
  }

  else
  {
    sub_2219EC58C(&v145, &qword_27CFB7FD0);
  }

  v49 = *(v3 + qword_27CFBC768);
  if (!v49)
  {

    sub_2219EBF90(v28);
    v67 = sub_221BCCD68();
    v68 = v4;
    v69 = sub_221BCDA98();

    sub_2219EBF9C(v28);
    if (os_log_type_enabled(v67, v69))
    {
      v70 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v145 = v141;
      *v70 = 136315394;
      v71 = sub_2219CB3CC();
      v73 = v28;
      v74 = sub_2219A6360(v71, v72, &v145);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = sub_2219C1894(v73, v68 & 1, *(v3 + qword_27CFDED20 + 17));
      v77 = sub_2219A6360(v75, v76, &v145);

      *(v70 + 14) = v77;
      _os_log_impl(&dword_221989000, v67, v69, "%sCompleted with %s", v70, 0x16u);
      v78 = v141;
      swift_arrayDestroy();
      v79 = v78;
LABEL_42:
      MEMORY[0x223DA4C00](v79, -1, -1);
      MEMORY[0x223DA4C00](v70, -1, -1);
    }

LABEL_43:

    goto LABEL_47;
  }

  v50 = v4;
  v51 = *(v3 + qword_27CFBC768 + 8);
  sub_22198BEB8(*(v3 + qword_27CFBC768), v51);

  sub_2219EBF90(v28);
  v52 = sub_221BCCD68();
  v53 = sub_221BCDA98();

  sub_2219EBF9C(v28);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    LODWORD(v141) = EnumTagSinglePayload;
    v55 = v54;
    v56 = swift_slowAlloc();
    v140 = v23;
    v139 = v51;
    v57 = v56;
    v144[0] = v56;
    *v55 = 136315394;
    v58 = sub_2219CB3CC();
    v60 = v28;
    v61 = sub_2219A6360(v58, v59, v144);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    v145 = v60;
    LOBYTE(v146) = v50 & 1;
    v62 = v139;
    v63 = v49(&v145);
    v65 = sub_2219A6360(v63, v64, v144);

    *(v55 + 14) = v65;
    _os_log_impl(&dword_221989000, v52, v53, "%s%s", v55, 0x16u);
    swift_arrayDestroy();
    v23 = v140;
    MEMORY[0x223DA4C00](v57, -1, -1);
    v66 = v55;
    EnumTagSinglePayload = v141;
    MEMORY[0x223DA4C00](v66, -1, -1);
    sub_22198B60C(v49, v62);
  }

  else
  {

    sub_22198B60C(v49, v51);
  }

LABEL_47:
  sub_2219E7E58(v23, v142, EnumTagSinglePayload == 1);
  if (EnumTagSinglePayload != 1 && (*(v3 + 56) & 1) == 0 && (sub_221BCE408() & 1) != 0 && (sub_221BCE408() & 1) == 0)
  {
    v127 = *(v3 + qword_27CFBC780);
    v143 = *(v3 + qword_27CFBC780 + 8);
    v128 = *(v3 + qword_27CFBC780 + 16);
    v129 = sub_2219CB440();
    v131 = v130;
    v145 = 0;
    v146 = 0xE000000000000000;
    sub_221BCDE68();
    v132 = sub_2219CB3CC();
    MEMORY[0x223DA31F0](v132);

    MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BECC50);
    sub_221BCE3F8();
    sub_221BCD978();
    MEMORY[0x223DA31F0](29549, 0xE200000000000000);
    v133 = v145;
    v134 = v146;
    v135 = *&v137[v3];

    sub_221BB52B0(v127, v143, v128, v129, v131, v23, v142, v133, v134, 1, 1, v135);
  }
}