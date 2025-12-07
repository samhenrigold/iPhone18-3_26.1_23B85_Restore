uint64_t sub_2312BDB1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 312) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312BDC20()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[34];
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  OUTLINED_FUNCTION_14();
  v3 = v0[39];

  return v2(v3);
}

uint64_t sub_2312BDC98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v26 = sub_231368570();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231368560();
  v7 = *(v6 + 16);
  if (v7)
  {
    v22[1] = v6;
    v23 = a2;
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v24 = *(v8 + 56);
    v25 = v9;
    v11 = MEMORY[0x277D84F90];
    v12 = (v8 + 16);
    do
    {
      v13 = v26;
      v14 = v8;
      v25(v5, v10, v26);
      sub_2311CF324(v27, &v28);
      v15 = type metadata accessor for ThirdPartyParameterResolver(0);
      v16 = swift_allocObject();
      (*v12)(v16 + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_resolutionParameter, v5, v13);
      sub_2311D38A8(&v28, v16 + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126E7FC(0);
        v11 = v19;
      }

      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_23126E7FC(v17 > 1);
        v11 = v20;
      }

      v29 = v15;
      v30 = sub_2312C2AC8(&qword_280F7F168, type metadata accessor for ThirdPartyParameterResolver, &unk_231373868);
      *&v28 = v16;
      *(v11 + 16) = v18 + 1;
      sub_2311D38A8(&v28, v11 + 40 * v18 + 32);
      v10 += v24;
      --v7;
      v8 = v14;
    }

    while (v7);

    a2 = v23;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  a2[3] = &type metadata for StaticResolverProvider;
  a2[4] = &off_2845F6E20;
  *a2 = v11;
  return result;
}

uint64_t sub_2312BDF14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44658, &unk_231374DC0);
  v2[4] = swift_task_alloc();
  v3 = sub_2313698C0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312BE00C, 0, 0);
}

uint64_t sub_2312BE00C(uint64_t a1)
{
  v3 = v1[6];
  v2 = v1[7];
  v4 = v1[5];
  v18 = v1[4];
  v5 = v1[3];
  sub_231369100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44660, &qword_231376F90);
  sub_231369880();
  v6 = *(v3 + 8);
  v6(v2, v4);
  sub_231369100();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
  sub_231369880();
  v6(v2, v4);
  v7 = sub_231369EE0();
  v8 = sub_23122AD4C(v7);
  v1[8] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44670, &qword_231374DD8);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v9);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  v1[9] = v10;
  *(v10 + 16) = v5;
  sub_231369EE0();
  v11 = swift_task_alloc();
  v1[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44678, &qword_231374DF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43470, &qword_23136C9A8);
  *v11 = v1;
  v11[1] = sub_2312BE298;
  v16 = v1[4];

  return MEMORY[0x2821C6B08](v8, v16, &unk_231374DE8, v10, v12, v13, v14, v15);
}

void sub_2312BE298()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_20();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v4[11] = v1;

  if (v1)
  {
  }

  else
  {
    v8 = v4[4];
    v4[12] = v0;
    sub_2312777C0(v8, &qword_27DD44658, &unk_231374DC0);

    v9 = OUTLINED_FUNCTION_1();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2312BE3DC()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_2312BD524(*(v0 + 96));

  OUTLINED_FUNCTION_14();

  return v2(v1);
}

uint64_t sub_2312BE45C(uint64_t *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44688, &unk_231374E00);
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = *(a1 + 1);

  return MEMORY[0x2822009F8](sub_2312BE508, 0, 0);
}

uint64_t sub_2312BE508()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43468, &qword_23136C9A0);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_23136B670;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44690, &qword_231374E10);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  OUTLINED_FUNCTION_54();
  v7 = swift_allocObject();
  v0[8] = v7;
  *(v7 + 16) = v3;
  sub_231369EE0();
  sub_231369EE0();
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
  *v8 = v0;
  v8[1] = sub_2312BE670;
  v12 = v0[6];
  v13 = v0[3];

  return MEMORY[0x2821C6B08](v12, v13, &unk_231374E20, v7, v9, v9, v10, v11);
}

void sub_2312BE670()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_5_20();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  if (v1)
  {
  }

  else
  {
    v8 = *(v4 + 24);
    *(v4 + 80) = v0;
    sub_2312777C0(v8, &qword_27DD44688, &unk_231374E00);

    OUTLINED_FUNCTION_13();

    MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2312BE7B0()
{
  OUTLINED_FUNCTION_8();
  *(*(v0 + 56) + 48) = *(v0 + 80);

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_2312BE81C(uint64_t a1, uint64_t a2)
{
  v2[27] = a1;
  v2[28] = a2;
  v3 = sub_2313698C0();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312BE8E8, 0, 0);
}

uint64_t sub_2312BE8E8()
{
  OUTLINED_FUNCTION_8();
  __swift_project_boxed_opaque_existential_1(v0[27], *(v0[27] + 24));
  sub_231369510();
  v0[33] = sub_2313681E0();
  if (swift_dynamicCast())
  {
    v0[34] = v0[26];
    sub_2312C2AC8(&qword_280F7C9B8, MEMORY[0x277D60DE0], MEMORY[0x277D60DE8]);
    v2 = sub_23136A260();
    v0[35] = v2;
    v0[36] = v1;

    return MEMORY[0x2822009F8](sub_2312BEA68, v2, v1);
  }

  else
  {
    v3 = v0[27];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
    v5 = OUTLINED_FUNCTION_50_1(v4);
    *(v5 + 16) = xmmword_23136B670;
    sub_2311CF324(v3, v5 + 32);

    OUTLINED_FUNCTION_14();

    return v6(v5);
  }
}

uint64_t sub_2312BEA68()
{
  OUTLINED_FUNCTION_8();
  v0[37] = sub_2313681C0();
  v0[38] = v1;
  v0[39] = sub_2313681D0();
  v0[40] = v2;
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312BEAD0()
{
  v48 = v0;
  sub_2312177CC();
  if (!*(v0 + 80))
  {

    sub_2312777C0(v0 + 56, &qword_27DD44698, &qword_231374E28);
    sub_231369100();
    sub_231369EE0();
    sub_231369EE0();
    v14 = sub_2313698A0();
    v15 = sub_23136A3B0();

    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 304);
    if (v16)
    {
      v18 = *(v0 + 296);
      v19 = *(v0 + 240);
      v44 = *(v0 + 232);
      v46 = *(v0 + 248);
      v20 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v20 = 136315394;
      v21 = sub_2311CFD58(v18, v17, &v47);

      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
      v22 = sub_231369ED0();
      v24 = sub_2311CFD58(v22, v23, &v47);

      *(v20 + 14) = v24;
      _os_log_impl(&dword_2311CB000, v14, v15, "Unable to determine resolver delegation of type: %s. Available delegations are %s", v20, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v19 + 8))(v46, v44);
    }

    else
    {
      v33 = *(v0 + 240);
      v32 = *(v0 + 248);
      v34 = *(v0 + 232);

      (*(v33 + 8))(v32, v34);
    }

    v35 = *(v0 + 216);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
    v37 = OUTLINED_FUNCTION_50_1(v36);
    *(v37 + 16) = xmmword_23136B670;
    sub_2311CF324(v35, v37 + 32);

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X2, X16 }
  }

  sub_2311D38A8((v0 + 56), v0 + 16);
  sub_231369100();
  sub_2311CF324(v0 + 16, v0 + 96);
  sub_231369EE0();
  sub_231369EE0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 320);
  if (v3)
  {
    v5 = *(v0 + 304);
    v6 = *(v0 + 296);
    v41 = *(v0 + 312);
    v42 = *(v0 + 240);
    v43 = *(v0 + 232);
    v45 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v7 = 136315650;
    sub_2311CF324(v0 + 96, v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
    v8 = sub_23136A010();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    v11 = sub_2311CFD58(v8, v10, &v47);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_2311CFD58(v6, v5, &v47);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v13 = sub_2311CFD58(v41, v4, &v47);

    *(v7 + 24) = v13;
    _os_log_impl(&dword_2311CB000, v1, v2, "Setting delegation of %s for delegationtype: %s and resolverType: %s", v7, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v42 + 8))(v45, v43);
  }

  else
  {
    v25 = *(v0 + 256);
    v26 = *(v0 + 232);
    v27 = *(v0 + 240);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
    (*(v27 + 8))(v25, v26);
  }

  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2822009F8](v28, v29, v30);
}

uint64_t sub_2312BEFB8()
{
  OUTLINED_FUNCTION_8();
  sub_2313681B0();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312BF018()
{
  OUTLINED_FUNCTION_26();
  v2 = v0[33];
  v1 = v0[34];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
  v4 = OUTLINED_FUNCTION_50_1(v3);
  *(v4 + 16) = xmmword_23136B670;
  v5 = MEMORY[0x277D60DD8];
  *(v4 + 56) = v2;
  *(v4 + 64) = v5;
  *(v4 + 32) = v1;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();

  return v6(v4);
}

uint64_t sub_2312BF0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v15 = *a6;
  v16 = *a7;
  sub_2311CF324(a1, v26);
  sub_2311CF324(a2, v25);
  sub_2311CF324(a3, v24);
  sub_2311CF324(a5, v23);
  v21 = v16;
  v22 = v15;
  sub_2311CF324(a8, v20);
  v17 = type metadata accessor for OwnerWrappedGeneratorProvider();
  swift_allocObject();
  v18 = sub_2311E6E20(v26, v25, v24, a4, v23, &v22, &v21, v20);
  a9[3] = v17;
  a9[4] = sub_2312C2AC8(&qword_280F7E858, type metadata accessor for OwnerWrappedGeneratorProvider, &unk_23136BC50);
  *a9 = v18;
  sub_231369EE0();
}

uint64_t sub_2312BF200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2311CF324(a1, v9);
  sub_2311CF324(a2, v8);
  v5 = type metadata accessor for OwnerWrappedFinalizerProvider();
  v6 = swift_allocObject();
  sub_2311D38A8(v9, v6 + 16);
  result = sub_2311D38A8(v8, v6 + 56);
  a3[3] = v5;
  a3[4] = &off_2845F7C28;
  *a3 = v6;
  return result;
}

uint64_t sub_2312BF28C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_231366690();
  OUTLINED_FUNCTION_21();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v9 - v8;
  (*(v6 + 16))(v9 - v8, a1, v4);
  v11 = type metadata accessor for BundleLoadedPipelineFactory(0);
  v12 = swift_allocObject();
  result = (*(v6 + 32))(v12 + OBJC_IVAR____TtC15SiriSuggestions27BundleLoadedPipelineFactory_baseURL, v10, v4);
  a2[3] = v11;
  a2[4] = &off_2845F5DD0;
  *a2 = v12;
  return result;
}

uint64_t sub_2312BF39C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446A0, &unk_231374E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23136B670;
  *(inited + 32) = sub_2313680D0();
  *(inited + 40) = v1;
  v2 = type metadata accessor for ProactiveResolverDelegation();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23128E4E0;
  *(v3 + 24) = 0;
  *(inited + 72) = v2;
  *(inited + 80) = sub_2312C2AC8(qword_280F7F2B8, type metadata accessor for ProactiveResolverDelegation, &unk_23137360C);
  *(inited + 48) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44668, &qword_231374DD0);
  return sub_231369EC0();
}

uint64_t sub_2312BF49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, _OWORD *a13, uint64_t a14)
{
  OUTLINED_FUNCTION_26();
  v17 = v16;
  v19 = v18;
  *(v15 + 1680) = v14;
  *(v15 + 1672) = a14;
  *(v15 + 1664) = a12;
  *(v15 + 1648) = a11;
  *(v15 + 1632) = a10;
  *(v15 + 1616) = a9;
  *(v15 + 1608) = v20;
  *(v15 + 1600) = v21;
  *(v15 + 1592) = v22;
  *(v15 + 1584) = v23;
  *(v15 + 1576) = v24;
  *(v15 + 1568) = v25;
  memcpy((v15 + 16), v20, 0x1A8uLL);
  memcpy((v15 + 1288), v19, 0x48uLL);
  *(v15 + 1688) = *v17;
  *(v15 + 1696) = *a13;
  v26 = OUTLINED_FUNCTION_1();
  return OUTLINED_FUNCTION_26_15(v26, v27, v28);
}

uint64_t sub_2312BF564(uint64_t a1)
{
  v16 = v1;
  v2 = v1[211];
  v3 = v1[201];
  v4 = v1[199];
  v5 = v1[198];
  v6 = v1[196];
  v1[214] = type metadata accessor for SuggestionPipelineFactories();
  v1[187] = &type metadata for SiriSuggestionsRuntimeConfig;
  v1[188] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v7 = swift_allocObject();
  v1[184] = v7;
  memcpy((v7 + 16), v3, 0x1A8uLL);
  v14 = v1[54];
  v15 = v2;
  sub_2312BF0CC(v6, v6 + 120, v5, v4, (v1 + 184), &v14, &v15, v6 + 208, v1 + 179);
  sub_231286BB0((v1 + 2), (v1 + 55));
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 184);
  v8 = v1[183];
  __swift_project_boxed_opaque_existential_1(v1 + 179, v1[182]);
  OUTLINED_FUNCTION_3_3();
  v13 = (v9 + *v9);
  v10 = swift_task_alloc();
  v1[215] = v10;
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_26_3(v10);

  return v13(v11, v8);
}

uint64_t sub_2312BF734()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1728) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312BF820()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[196];
  v2 = *(v1 + 160);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[217] = v3;
  *v3 = v4;
  v3[1] = sub_2312BF8CC;
  v5 = v0[208];

  return sub_2312BD800(v1 + 40, v1 + 120, v2, v5);
}

uint64_t sub_2312BF8CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1744) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312BF9B8()
{
  OUTLINED_FUNCTION_16();
  sub_2312BF200(v0[196] + 80, v0[196] + 120, v0 + 189);
  v1 = v0[193];
  __swift_project_boxed_opaque_existential_1(v0 + 189, v0[192]);
  OUTLINED_FUNCTION_3_3();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[219] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return v6(v4, v1);
}

uint64_t sub_2312BFAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  v19 = *v17;
  v20 = *v17;
  OUTLINED_FUNCTION_2();
  *v21 = v20;
  v22 = *v17;
  v31 = *(v20 + 106);
  OUTLINED_FUNCTION_9();
  *v23 = v22;
  v20[220] = a1;

  memcpy(v20 + 108, v20 + 2, 0x1A8uLL);
  memcpy(v20 + 170, v20 + 161, 0x48uLL);
  *(v20 + 97) = v31;
  v24 = swift_task_alloc();
  v20[221] = v24;
  *v24 = v22;
  v24[1] = sub_2312BFD48;
  v25 = v19[218];
  v26 = v19[202];
  v27 = v19[200];
  v28 = v19[197];
  v29 = v19[216];

  return sub_2312BFF84(v29, v25, a1, v28, (v20 + 108), (v20 + 170), v27, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_2312BFD48()
{
  OUTLINED_FUNCTION_5_20();
  v4 = v3;
  OUTLINED_FUNCTION_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v4 + 1776) = v1;

  if (!v1)
  {
    *(v4 + 1784) = v0;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312BFEB8()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 189);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 179);
  OUTLINED_FUNCTION_14();
  v2 = v0[223];

  return v1(v2);
}

uint64_t sub_2312BFF20()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1512));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 1432));
  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_2312BFF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _OWORD *a16, uint64_t a17)
{
  OUTLINED_FUNCTION_8();
  *(v17 + 2712) = a17;
  *(v17 + 2704) = a14;
  *(v17 + 2696) = a13;
  *(v17 + 2688) = a10;
  *(v17 + 2672) = a9;
  *(v17 + 2664) = v18;
  *(v17 + 2656) = v19;
  *(v17 + 2648) = v20;
  *(v17 + 2640) = v21;
  *(v17 + 2632) = v22;
  *(v17 + 2624) = v23;
  *(v17 + 2616) = v24;
  *(v17 + 2608) = v25;
  memcpy((v17 + 16), v21, 0x1A8uLL);
  *(v17 + 2720) = *a16;
  v26 = OUTLINED_FUNCTION_1();
  return OUTLINED_FUNCTION_26_15(v26, v27, v28);
}

uint64_t sub_2312C0028()
{
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  v3 = *(v0 + 2640);
  v13 = *(v0 + 2632);
  __src = *(v0 + 2648);
  v4 = *(v0 + 2616);
  v5 = *(v0 + 2608);
  type metadata accessor for ResolutionService();
  v6 = swift_allocObject();
  *(v0 + 2736) = v6;
  v6[6] = &type metadata for SiriSuggestionsRuntimeConfig;
  v6[7] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v7 = swift_allocObject();
  v6[3] = v7;
  memcpy((v7 + 16), v3, 0x1A8uLL);
  v6[2] = v4;
  sub_2311CF324(v2, v0 + 2208);
  sub_2311CF324(v1, v0 + 2248);
  type metadata accessor for GenerationService();
  v8 = swift_allocObject();
  *(v0 + 2744) = v8;
  v8[11] = &type metadata for SiriSuggestionsRuntimeConfig;
  v8[12] = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v9 = swift_allocObject();
  v8[8] = v9;
  memcpy((v9 + 16), (v0 + 16), 0x1A8uLL);
  v8[2] = v5;
  sub_2311D38A8((v0 + 2208), (v8 + 3));
  v8[13] = v13;
  sub_2311D38A8((v0 + 2248), (v8 + 14));
  v8[19] = &unk_231374DB0;
  v8[20] = 0;
  type metadata accessor for TopLevelSelector();
  memcpy((v0 + 2136), __src, 0x48uLL);
  OUTLINED_FUNCTION_22_15();
  sub_231286BB0(v0 + 16, v0 + 864);
  sub_231286BB0(v0 + 16, v0 + 1288);
  sub_231369EE0();
  sub_231369EE0();

  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 2752) = v10;
  *v10 = v11;
  v10[1] = sub_2312C0250;

  return sub_2311E086C();
}

uint64_t sub_2312C0250()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_2312C0334()
{
  v22 = *(v0 + 2728);
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2680);
  v3 = *(v0 + 2672);
  v4 = *(v0 + 2664);
  v5 = *(v0 + 2624);
  v23 = *(v0 + 2736);
  sub_2311CF324(*(v0 + 2656), v0 + 2328);
  sub_2311CF324(v0 + 2288, v0 + 2368);
  sub_2311CF324(v4, v0 + 2408);
  sub_2311CF324(v3, v0 + 2448);
  sub_2311CF324(v2, v0 + 2488);
  v6 = *(v0 + 2352);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2328, v6);
  OUTLINED_FUNCTION_21();
  v9 = v8;
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v7, v6);
  v11 = *v10;
  *(v0 + 2552) = &type metadata for SiriSuggestionsRuntimeConfig;
  *(v0 + 2560) = &protocol witness table for SiriSuggestionsRuntimeConfig;
  OUTLINED_FUNCTION_18_18();
  v12 = swift_allocObject();
  *(v0 + 2528) = v12;
  memcpy((v12 + 16), (v0 + 16), 0x1A8uLL);
  v13 = type metadata accessor for ObjectiveBasedRanker();
  *(v0 + 2592) = v13;
  *(v0 + 2600) = &off_2845F5D48;
  *(v0 + 2568) = v11;
  type metadata accessor for SuggestionPipeline();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2568, v13);
  OUTLINED_FUNCTION_21();
  v17 = v16;
  v18 = swift_task_alloc();
  (*(v17 + 16))(v18, v15, v13);
  v19 = *v18;
  v14[6].i64[1] = v13;
  v14[7].i64[0] = &off_2845F5D48;
  v14[5].i64[0] = v19;
  sub_231286BB0(v0 + 16, v0 + 1712);
  sub_231369EE0();
  sub_231369EE0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2288));
  v14[1] = vextq_s8(v23, v23, 8uLL);
  v14[2].i64[0] = v5;
  sub_2311D38A8((v0 + 2528), &v14[2].i64[1]);
  sub_2311D38A8((v0 + 2368), &v14[7].i64[1]);
  sub_2311D38A8((v0 + 2408), v14[10].i64);
  sub_2311D38A8((v0 + 2448), &v14[12].i64[1]);
  sub_2311D38A8((v0 + 2488), v14[15].i64);
  v14[17].i64[1] = v1;
  v14[18].i64[0] = v22;
  sub_231369EE0();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2568));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2328));

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_8_4();

  __asm { BRAA            X2, X16 }
}

uint64_t static SuggestionPipelineFactories.createSuggestionPool(ownerProvider:generatorProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  v3 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312C063C()
{
  OUTLINED_FUNCTION_8();
  type metadata accessor for SuggestionPoolLoader();
  v0[11] = swift_initStackObject();
  v1 = type metadata accessor for DefaultSuggestionFactory();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_2845F5C90;
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2312C0714;

  return sub_2312FCAA8();
}

uint64_t sub_2312C0714()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 16));
    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_2312C0850()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_2312C08C4()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 1280) = v0;
  *(v1 + 1272) = v25;
  *(v1 + 1256) = v23;
  *(v1 + 1240) = v22;
  *(v1 + 1224) = v21;
  *(v1 + 1208) = v20;
  *(v1 + 1192) = v19;
  *(v1 + 1184) = v8;
  *(v1 + 1176) = v9;
  *(v1 + 1168) = v10;
  *(v1 + 1160) = v11;
  *(v1 + 1152) = v12;
  *(v1 + 1288) = sub_2313698C0();
  OUTLINED_FUNCTION_3_3();
  *(v1 + 1296) = v13;
  *(v1 + 1304) = swift_task_alloc();
  memcpy((v1 + 16), v7, 0x1A8uLL);
  memcpy((v1 + 864), v5, 0x48uLL);
  *(v1 + 1312) = *v3;
  *(v1 + 1320) = *v24;
  v14 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2312C0A18(uint64_t a1)
{
  v54 = v1;
  sub_231369100();

  v2 = sub_2313698A0();
  v3 = sub_23136A390();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 1304);
  v6 = *(v1 + 1296);
  v7 = *(v1 + 1288);
  if (v4)
  {
    v52 = *(v1 + 1304);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v53 = v9;
    *v8 = 136315138;
    sub_231366690();
    sub_2312C2AC8(qword_280F85968, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v10 = sub_23136A8B0();
    v12 = sub_2311CFD58(v10, v11, &v53);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2311CB000, v2, v3, "Using root plugin location as: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v6 + 8))(v52, v7);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v51 = *(v1 + 1320);
  v50 = *(v1 + 1312);
  v46 = *(v1 + 1200);
  v47 = *(v1 + 1192);
  v48 = *(v1 + 1208);
  v13 = type metadata accessor for BundleGeneratorProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43518, &qword_23136CA58);
  sub_231366690();
  OUTLINED_FUNCTION_3_3();
  v14 = OUTLINED_FUNCTION_14_23();
  *(v14 + 16) = xmmword_23136B670;
  sub_231366610();
  v15 = sub_231209FB4(v14);
  v49 = type metadata accessor for CachedGeneratorProvider();
  v16 = OUTLINED_FUNCTION_50_1(v49);
  *(v1 + 1336) = v16;
  *(v16 + 56) = v13;
  *(v16 + 64) = sub_2312C2AC8(&qword_280F81348, type metadata accessor for BundleGeneratorProvider, &unk_23136D938);
  *(v16 + 16) = 1;
  *(v16 + 24) = MEMORY[0x277D84F90];
  *(v16 + 32) = v15;
  v17 = OUTLINED_FUNCTION_14_23();
  *(v17 + 16) = xmmword_23136B670;
  sub_231366610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44638, &qword_231374D70);
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v45 = type metadata accessor for BundleResolverProvider();
  OUTLINED_FUNCTION_54();
  v44 = swift_allocObject();
  *(v1 + 1344) = v44;
  *(v44 + 16) = v18;
  v19 = OUTLINED_FUNCTION_14_23();
  *(v19 + 16) = xmmword_23136B670;
  sub_231366610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44640, &qword_231374D78);
  OUTLINED_FUNCTION_54();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v43 = type metadata accessor for BundleFinalizerProvider();
  OUTLINED_FUNCTION_54();
  v42 = swift_allocObject();
  *(v1 + 1352) = v42;
  *(v42 + 16) = v20;
  v21 = type metadata accessor for BundleOwnerDefinitionProvider();
  v22 = OUTLINED_FUNCTION_14_23();
  *(v22 + 16) = xmmword_23136B670;
  sub_231366610();
  ObjectType = swift_getObjectType();
  sub_2311CF324(v47, v1 + 1008);
  v24 = *(v48 + 8);
  v25 = v21;
  v26 = sub_23129A5B0(v22, v46, v48, v46, v1 + 1008, v21, ObjectType, v24);
  *(v1 + 1360) = v26;
  v27 = type metadata accessor for InternalOwnerDefinitionProvider();
  sub_2311CF324(v47, v1 + 1048);
  v28 = swift_unknownObjectRetain_n();
  v29 = sub_23123B684(v28, v48, v46, (v1 + 1048), v27, ObjectType, v24);
  *(v1 + 1368) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44648, &qword_231374D80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23136C1C0;
  *(v30 + 56) = v25;
  *(v30 + 64) = &protocol witness table for BundleOwnerDefinitionProvider;
  *(v30 + 32) = v26;
  *(v30 + 96) = v27;
  *(v30 + 104) = &off_2845F43C8;
  *(v30 + 72) = v29;
  *(v1 + 1112) = v49;
  *(v1 + 1120) = sub_2312C2AC8(&qword_280F81198, type metadata accessor for CachedGeneratorProvider, &unk_231377C18);
  *(v1 + 1088) = v16;
  type metadata accessor for StaticDefinedPipelineFactory();
  v31 = swift_allocObject();
  *(v1 + 1376) = v31;
  v31[15] = v45;
  v31[16] = &off_2845F3970;
  v31[12] = v44;
  v31[20] = v43;
  v31[21] = &off_2845F57D0;
  v31[17] = v42;
  v32 = type metadata accessor for CachedOwnerDefinitionProvider();
  v33 = swift_allocObject();

  v34 = sub_2312C28E8(v30, v33);
  v31[5] = v32;
  v31[6] = &off_2845F3378;
  v31[2] = v34;
  sub_2311D38A8((v1 + 1088), (v31 + 7));
  OUTLINED_FUNCTION_22_15();
  memcpy((v1 + 936), (v1 + 864), 0x48uLL);
  *(v1 + 1144) = v50;
  *(v1 + 1128) = v51;
  v35 = swift_task_alloc();
  *(v1 + 1384) = v35;
  *v35 = v1;
  v35[1] = sub_2312C112C;
  v36 = *(v1 + 1272);
  v37 = *(v1 + 1264);
  v38 = *(v1 + 1248);
  v39 = *(v1 + 1232);
  v40 = *(v1 + 1216);
  v60 = v1 + 1128;
  v61 = v36;
  v59 = v37;
  v58 = v38;
  v57 = v39;
  v56 = v40;

  return sub_2312C1384();
}

uint64_t sub_2312C112C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 1392) = v0;

  if (!v0)
  {
    *(v5 + 1400) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312C1238()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_13_18();
  swift_setDeallocating();
  sub_2312C1D1C();
  OUTLINED_FUNCTION_16_21();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 1400);

  return v1(v2);
}

uint64_t sub_2312C12E0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_13_18();
  swift_setDeallocating();
  sub_2312C1D1C();
  OUTLINED_FUNCTION_16_21();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_2312C1384()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v5 = v4;
  *(v1 + 1464) = v0;
  *(v1 + 1456) = v21;
  *(v1 + 1448) = v19;
  *(v1 + 1432) = v18;
  *(v1 + 1416) = v17;
  *(v1 + 1400) = v16;
  *(v1 + 1392) = v6;
  *(v1 + 1384) = v7;
  *(v1 + 1376) = v8;
  *(v1 + 1368) = v9;
  *(v1 + 1360) = v10;
  memcpy((v1 + 16), v11, 0x1A8uLL);
  memcpy((v1 + 1112), v5, 0x48uLL);
  *(v1 + 1472) = *v3;
  *(v1 + 1480) = *v20;
  *(v1 + 1496) = type metadata accessor for SuggestionPipelineFactories();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 1504) = v12;
  *v12 = v13;
  v12[1] = sub_2312C14B0;

  return static SuggestionPipelineFactories.createSuggestionPool(ownerProvider:generatorProvider:)(v0 + 16, v0 + 56);
}

uint64_t sub_2312C14B0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1512) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_56_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_13();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_2312C15D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, _OWORD *a13, uint64_t a14)
{
  v15 = *(v14 + 1512);
  v39 = *(v14 + 1480);
  v40 = *(v14 + 1472);
  v16 = *(v14 + 1464);
  v17 = *(v14 + 1416);
  v18 = *(v14 + 1392);
  v38 = sub_2312BF39C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44650, &qword_231374D90);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23136C1C0;
  sub_2311CF324(v16 + 96, v19 + 32);
  *(v19 + 96) = type metadata accessor for SuggestionPool();
  *(v19 + 104) = &off_2845F44D0;
  *(v19 + 72) = v15;
  v20 = type metadata accessor for UnionResolverProvider();
  OUTLINED_FUNCTION_54();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  v22 = type metadata accessor for CachedResolverProvider();
  v23 = swift_allocObject();
  *(v14 + 1280) = v20;
  *(v14 + 1288) = &off_2845F6E40;
  *(v14 + 1256) = v21;

  swift_defaultActor_initialize();
  *(v23 + 112) = 1;
  *(v23 + 120) = 0;
  sub_2311D38A8((v14 + 1256), v23 + 128);

  *(v14 + 928) = v22;
  *(v14 + 936) = &off_2845F6E30;
  *(v14 + 904) = v23;
  sub_2311CF324(v16 + 136, v14 + 1296);
  v24 = type metadata accessor for CachedFinalizerProvider();
  swift_allocObject();
  v25 = sub_231297640((v14 + 1296));
  *(v14 + 968) = v24;
  *(v14 + 976) = &off_2845F5BF8;
  *(v14 + 944) = v25;
  sub_2311CF324(v16 + 16, v14 + 984);
  sub_2311CF324(v18, v14 + 1032);
  sub_2311CF324(v17, v14 + 1072);
  sub_2311CF324(v16 + 56, v14 + 864);
  *(v14 + 1024) = v38;
  OUTLINED_FUNCTION_22_15();
  memcpy((v14 + 1184), (v14 + 1112), 0x48uLL);
  *(v14 + 1352) = v40;
  *(v14 + 1336) = v39;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v14 + 1520) = v26;
  *v26 = v27;
  v26[1] = sub_2312C1888;
  OUTLINED_FUNCTION_8_4();

  return sub_2312BF49C(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2312C1888()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 1528) = v0;

  if (!v0)
  {
    *(v5 + 1536) = v3;
  }

  sub_2312C2954(v5 + 864);
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312C19A4()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_14();
  v2 = *(v0 + 1536);

  return v1(v2);
}

uint64_t sub_2312C1A04()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_2312C1A60()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27BundleLoadedPipelineFactory_baseURL;
  sub_231366690();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_2312C1AF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312C1C34;

  return sub_2312C08C4();
}

uint64_t sub_2312C1C34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_20();
  v3 = *v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

void *sub_2312C1D1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  return v0;
}

uint64_t sub_2312C1D54()
{
  sub_2312C1D1C();
  OUTLINED_FUNCTION_16_21();

  return swift_deallocClassInstance();
}

uint64_t sub_2312C1D80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2312C2B14;

  return sub_2312C1384();
}

uint64_t sub_2312C1EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_3_3();
  v26 = (v23 + *v23);
  v24 = swift_task_alloc();
  *(v22 + 16) = v24;
  *v24 = v22;
  v24[1] = sub_2312C2088;

  return v26(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_2312C2088()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5_20();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  OUTLINED_FUNCTION_14();

  return v4(v0);
}

uint64_t type metadata accessor for BundleLoadedPipelineFactory(uint64_t a1)
{
  result = qword_280F7F6F8;
  if (!qword_280F7F6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2312C21C0(uint64_t a1)
{
  result = sub_231366690();
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

uint64_t sub_2312C2474(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a2;
  v35 = a8;
  v33 = a1;
  v12 = *(a7 - 8);
  v32 = a9;
  MEMORY[0x28223BE20](a1);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v32 - v25;
  (*(v19 + 32))(&v32 - v25, v27, v28, v24);
  (*(v12 + 32))(v17, a4, a7);
  v29 = swift_allocObject();
  (*(v19 + 16))(v22, v26, a6);
  (*(v12 + 16))(v14, v17, a7);
  v30 = sub_2312C26E8(v33, v34, v22, v14, v29, a6, a7, v35, v32);
  (*(v12 + 8))(v17, a7);
  (*(v19 + 8))(v26, a6);
  return v30;
}

uint64_t sub_2312C26E8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a6;
  v38 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v34 = a7;
  v35 = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  sub_2311CF324(a1, &v30);
  v18 = type metadata accessor for CachedOwnerDefinitionProvider();
  v19 = swift_allocObject();
  v20 = v31;
  v21 = v32;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v30, v31);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v27 = sub_2311FDA18(v25, v19, v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v30);
  v31 = v18;
  v32 = &off_2845F3378;
  *&v30 = v27;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_2311D38A8(&v30, a5 + 16);
  sub_2311D38A8(a2, a5 + 56);
  sub_2311D38A8(&v36, a5 + 96);
  sub_2311D38A8(&v33, a5 + 136);
  return a5;
}

uint64_t sub_2312C28E8(uint64_t a1, uint64_t a2)
{
  v5 = &type metadata for OwnerDefinitionProviders.ChainedOwnerDefinitionProvider;
  v6 = &off_2845F33B0;
  *&v4 = a1;
  swift_defaultActor_initialize();
  *(a2 + 112) = 1;
  *(a2 + 120) = MEMORY[0x277D84F90];
  sub_2311D38A8(&v4, a2 + 128);
  return a2;
}

uint64_t sub_2312C29A8()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return sub_2312BE45C(v4, v2);
}

uint64_t sub_2312C2A38()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_26_3(v3);

  return sub_2312BE81C(v4, v2);
}

uint64_t sub_2312C2AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_13_18()
{
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_2312C2B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437A0, &qword_23136DB10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23136B670;
  v2 = sub_231367D20();
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_2312C3280(&qword_280F7CA60, 255, MEMORY[0x277D60B68], MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B40], v2);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v4 = sub_231368CC0();
  sub_231267780(v4);
  return v1;
}

uint64_t sub_2312C2C8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_231367D90();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C2D5C, 0, 0);
}

uint64_t sub_2312C2D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 56);
  v13 = *(v12 + 64);
  v15 = *(v12 + 40);
  v16 = *(v12 + 48);
  __swift_project_boxed_opaque_existential_1(*(v12 + 24), *(*(v12 + 24) + 24));
  sub_2313683B0();
  (*(v16 + 104))(v14, *MEMORY[0x277D60BE0], v15);
  v17 = sub_2313121E4(v13, v14);
  v18 = *(v16 + 8);
  v18(v14, v15);
  v18(v13, v15);
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v19 + 32) = sub_231369260();

    v20 = *(v12 + 8);

    return v20(v19);
  }

  else
  {
    v22 = *(v12 + 32);
    v23 = v22[5];
    v24 = v22[6];
    __swift_project_boxed_opaque_existential_1(v22 + 2, v23);
    v25 = *(v24 + 8);
    v26 = swift_task_alloc();
    *(v12 + 72) = v26;
    *v26 = v12;
    v26[1] = sub_2312C2F58;
    v32 = *(v12 + 16);
    v31 = *(v12 + 24);

    return MEMORY[0x2821C6B98](v32, v31, v23, v25, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_2312C2F58(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2312C30DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return sub_2312C2C8C(a1, a2);
}

void sub_2312C3184(uint64_t a1, uint64_t a2)
{
  sub_2312C3280(qword_280F81D98, a2, type metadata accessor for LockedSignalExtractor, &unk_231374EA8);

  JUMPOUT(0x2319284B0);
}

uint64_t sub_2312C3280(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *DefaultGeneratorProvider.__allocating_init(factories:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0xD000000000000018;
  result[4] = 0x8000000231374F10;
  result[2] = a1;
  return result;
}

uint64_t DefaultGeneratorProvider.generatorsAvailable()()
{
  v1 = sub_2313698C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v82 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v82 - v8;
  MEMORY[0x28223BE20](v10);
  sub_231369100();

  v11 = sub_2313698A0();
  v12 = sub_23136A390();

  v13 = os_log_type_enabled(v11, v12);
  v87 = v1;
  v85 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v92 = v15;
    *v14 = 136315138;
    v16 = *(v0 + 16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
    v18 = MEMORY[0x23192A860](v16, v17);
    v20 = sub_2311CFD58(v18, v19, &v92);

    *(v14 + 4) = v20;
    v1 = v87;
    _os_log_impl(&dword_2311CB000, v11, v12, "Loading generators from classes: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v21 = v85;
    v22 = OUTLINED_FUNCTION_3_27(v85);
    v23(v22);
    v25 = v21;
  }

  else
  {

    v26 = OUTLINED_FUNCTION_3_27(v2);
    v27(v26);
    v25 = v2;
  }

  v84 = v4;
  v28 = *(v0 + 16);
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + 32);
    v88 = v25 + 8;
    v31 = MEMORY[0x277D84F90];
    *&v24 = 136315138;
    v86 = v24;
    while (1)
    {
      v90 = *v30;
      sub_231369100();
      v32 = sub_2313698A0();
      v33 = sub_23136A390();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v91 = v35;
        *v34 = v86;
        v92 = v90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43770, &unk_231373CE0);
        v36 = sub_23136A010();
        v38 = sub_2311CFD58(v36, v37, &v91);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_2311CB000, v32, v33, "Loading generator type: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        v1 = v87;
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();
      }

      v89(v9, v1);
      v39 = sub_231368AA0();
      v40 = *(v39 + 16);
      v41 = *(v31 + 16);
      if (__OFADD__(v41, v40))
      {
        break;
      }

      v42 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v41 + v40 > *(v31 + 24) >> 1)
      {
        sub_23126DF2C(isUniquelyReferenced_nonNull_native);
        v31 = v44;
      }

      if (*(v42 + 16))
      {
        v45 = *(v31 + 16);
        if ((*(v31 + 24) >> 1) - v45 < v40)
        {
          goto LABEL_37;
        }

        v41 = v31 + 40 * v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
        swift_arrayInitWithCopy();

        if (v40)
        {
          v46 = *(v31 + 16);
          v47 = __OFADD__(v46, v40);
          v48 = v46 + v40;
          if (v47)
          {
            goto LABEL_38;
          }

          *(v31 + 16) = v48;
        }
      }

      else
      {

        if (v40)
        {
          goto LABEL_36;
        }
      }

      ++v30;
      if (!--v29)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v31 = MEMORY[0x277D84F90];
LABEL_21:
  v49 = v83;
  sub_231369100();
  v50 = sub_2313698A0();
  v51 = sub_23136A390();
  if (os_log_type_enabled(v50, v51))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v52, v53, "Appending InAppMiniTip Generator in DefaultGeneratorsProvider");
    OUTLINED_FUNCTION_29();
  }

  v89(v49, v1);
  v41 = type metadata accessor for InAppMiniTipGenerator();
  v40 = swift_allocObject();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_39:
    sub_23126DF2C(0);
    v31 = v77;
  }

  v55 = *(v31 + 16);
  v54 = *(v31 + 24);
  if (v55 >= v54 >> 1)
  {
    OUTLINED_FUNCTION_0_31(v54);
    v31 = v78;
  }

  v93 = v41;
  v94 = sub_2312C3EF0(qword_280F81E40, 255, type metadata accessor for InAppMiniTipGenerator, &unk_23136BE98);
  *&v92 = v40;
  *(v31 + 16) = v55 + 1;
  OUTLINED_FUNCTION_5_21(v31 + 40 * v55);
  v56 = type metadata accessor for EducationalChannelGenerator(0);
  swift_allocObject();
  v57 = EducationalChannelGenerator.init(firstUseSuggestionsEnabled:)(2u);
  v59 = *(v31 + 16);
  v58 = *(v31 + 24);
  v60 = v59 + 1;
  if (v59 >= v58 >> 1)
  {
    OUTLINED_FUNCTION_1_29(v58);
    v31 = v79;
  }

  v93 = v56;
  v94 = sub_2312C3EF0(&qword_280F7F640, 255, type metadata accessor for EducationalChannelGenerator, &protocol conformance descriptor for EducationalChannelGenerator);
  *&v92 = v57;
  *(v31 + 16) = v60;
  OUTLINED_FUNCTION_5_21(v31 + 40 * v59);
  v61 = type metadata accessor for IntentSuggestionsGenerator();
  v62 = swift_allocObject();
  v63 = *(v31 + 24);
  v64 = v59 + 2;
  if ((v59 + 2) > (v63 >> 1))
  {
    OUTLINED_FUNCTION_0_31(v63);
    v31 = v80;
  }

  v65 = v84;
  v93 = v61;
  v94 = sub_2312C3EF0(qword_280F85520, 255, type metadata accessor for IntentSuggestionsGenerator, &protocol conformance descriptor for IntentSuggestionsGenerator);
  *&v92 = v62;
  *(v31 + 16) = v64;
  OUTLINED_FUNCTION_5_21(v31 + 40 * v60);
  sub_231369100();
  v66 = sub_2313698A0();
  v67 = sub_23136A390();
  if (os_log_type_enabled(v66, v67))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_19_0(&dword_2311CB000, v68, v69, "Appending CurrentAppViewAction Generator in DefaultGeneratorsProvider");
    OUTLINED_FUNCTION_29();
  }

  v89(v65, v1);
  type metadata accessor for LinkServiceAccess();
  v70 = swift_allocObject();
  v71 = sub_2313686F0();
  v72 = sub_2313686E0();
  v93 = v71;
  v94 = MEMORY[0x277D60FF0];
  *&v92 = v72;
  v73 = sub_2312C3D64(v70, 0, 0, &v92);
  v75 = *(v31 + 16);
  v74 = *(v31 + 24);
  if (v75 >= v74 >> 1)
  {
    OUTLINED_FUNCTION_1_29(v74);
    v31 = v81;
  }

  v93 = type metadata accessor for CurrentAppViewActionsGenerator(0);
  v94 = sub_2312C3EF0(&qword_280F7E550, 255, type metadata accessor for CurrentAppViewActionsGenerator, &protocol conformance descriptor for CurrentAppViewActionsGenerator);
  *&v92 = v73;
  *(v31 + 16) = v75 + 1;
  OUTLINED_FUNCTION_5_21(v31 + 40 * v75);
  return v31;
}

void *DefaultGeneratorProvider.init(factories:)(uint64_t a1)
{
  v1[3] = 0xD000000000000018;
  v1[4] = 0x8000000231374F10;
  v1[2] = a1;
  return v1;
}

uint64_t DefaultGeneratorProvider.description.getter()
{
  v1 = *(v0 + 24);
  sub_231369EE0();
  return v1;
}

uint64_t DefaultGeneratorProvider.deinit()
{

  return v0;
}

uint64_t DefaultGeneratorProvider.__deallocating_deinit()
{
  DefaultGeneratorProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2312C3BF0()
{
  v1 = DefaultGeneratorProvider.generatorsAvailable()();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2312C3C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a5 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_linkAccessService);
  v10[3] = type metadata accessor for LinkServiceAccess();
  v10[4] = &off_2845F7900;
  *v10 = a1;
  v11 = OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_channel;
  v12 = *MEMORY[0x277D61300];
  v13 = sub_231369330();
  (*(*(v13 - 8) + 104))(a5 + v11, v12, v13);
  v14 = (a5 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_targetBundleID);
  *v14 = a2;
  v14[1] = a3;
  v15 = a5 + OBJC_IVAR____TtC15SiriSuggestions30CurrentAppViewActionsGenerator_featureFlagProvider;
  v16 = *(a4 + 16);
  *v15 = *a4;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(a4 + 32);
  return a5;
}

uint64_t sub_2312C3D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for LinkServiceAccess();
  v19 = &off_2845F7900;
  v17[0] = a1;
  type metadata accessor for CurrentAppViewActionsGenerator(0);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_2312C3C74(*v12, a2, a3, a4, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

uint64_t sub_2312C3E98(uint64_t a1, uint64_t a2)
{
  result = sub_2312C3EF0(&qword_27DD446A8, a2, type metadata accessor for DefaultGeneratorProvider, &protocol conformance descriptor for DefaultGeneratorProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312C3EF0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_21@<X0>(uint64_t a1@<X8>)
{

  return sub_2311D38A8((v1 - 128), a1 + 32);
}

uint64_t sub_2312C3FA0(uint64_t a1, unint64_t a2)
{
  v5 = sub_2313698C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  if (*(v9 + 16) && (v10 = sub_231215F6C(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2313707C0;
    *(v13 + 32) = v12;
  }

  else
  {
    sub_231369150();
    sub_231369EE0();

    v14 = sub_2313698A0();
    v15 = sub_23136A390();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v16 = 136315394;
      *(v16 + 4) = sub_2311CFD58(a1, a2, &v23);
      *(v16 + 12) = 2080;
      sub_2313692F0();
      sub_231369EE0();
      v17 = sub_231369ED0();
      v19 = v18;

      v20 = sub_2311CFD58(v17, v19, &v23);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_2311CB000, v14, v15, "Could not find app category for: %s in %s. Using fallback signal", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v6 + 8))(v8, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2313707C0;
    sub_2313692F0();
    *(v13 + 32) = sub_2313692C0();
  }

  return v13;
}

uint64_t sub_2312C4274(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2312C434C;

  return sub_2312C44DC(a1, a2);
}

uint64_t sub_2312C434C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2312C446C, 0, 0);
}

uint64_t sub_2312C446C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 16));
  *(v2 + 16) = v1;
  v3 = *(v0 + 8);
  v4 = *(v0 + 32);

  return v3(v4);
}

uint64_t sub_2312C44DC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43C08, &unk_2313708B0);
  v2[10] = swift_task_alloc();
  v3 = sub_2313698C0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C45E0, 0, 0);
}

uint64_t sub_2312C45E0()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_2312C470C;
  v5 = v0[9];

  return v7(v5, v2, v3);
}

uint64_t sub_2312C470C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_2312C4C7C;
  }

  else
  {
    v4 = sub_2312C4820;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_2312C4820()
{
  v49 = v0;
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446B0, &unk_231375020);
  result = sub_23136A770();
  v3 = result;
  v4 = 0;
  v5 = v1 + 64;
  v42 = v1;
  v6 = 1 << *(v1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v1 + 64);
  v9 = (v6 + 63) >> 6;
  v41 = *MEMORY[0x277D60B38];
  v40 = result + 8;
  v43 = result;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v45 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = v44[10];
      v15 = (*(v42 + 48) + 16 * v13);
      v16 = v15[1];
      v46 = *v15;
      sub_2313692F0();
      v17 = sub_231367D20();
      v44[5] = v17;
      v44[6] = sub_2312C4F18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44 + 2);
      (*(*(v17 - 8) + 104))(boxed_opaque_existential_1, v41, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43D60, &qword_231370690);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_2313707C0;
      sub_231369EE0();
      sub_231369EE0();
      *(v19 + 32) = sub_2313692C0();
      v20 = sub_231367B80();
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v20);
      result = sub_231369220();
      *(v40 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v3 = v43;
      v21 = (v43[6] + 16 * v13);
      *v21 = v46;
      v21[1] = v16;
      *(v43[7] + 8 * v13) = result;
      v22 = v43[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v43[2] = v24;
      v8 = v45;
      if (!v45)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v4 >= v9)
      {
        break;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v45 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    sub_231369150();
    sub_231369EE0();

    v25 = sub_2313698A0();
    v26 = sub_23136A390();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v44[14];
    v30 = v44[11];
    v29 = v44[12];
    if (v27)
    {
      v31 = v44[9];
      v32 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v32 = 136315394;
      v33 = MEMORY[0x23192A860](v31, MEMORY[0x277D837D0]);
      v47 = v28;
      v35 = sub_2311CFD58(v33, v34, &v48);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2080;
      sub_2313692F0();
      v36 = sub_231369E90();
      v38 = sub_2311CFD58(v36, v37, &v48);

      *(v32 + 14) = v38;
      _os_log_impl(&dword_2311CB000, v25, v26, "Extracted categories for appId's %s := %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      v3 = v43;
      OUTLINED_FUNCTION_29();

      (*(v29 + 8))(v47, v30);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    v39 = v44[1];

    return v39(v3);
  }

  return result;
}

uint64_t sub_2312C4C7C(uint64_t a1)
{
  v27 = v1;
  v2 = v1[17];
  sub_231369150();
  sub_231369EE0();
  v3 = v2;
  v4 = sub_2313698A0();
  v5 = sub_23136A3B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[17];
    v7 = v1[12];
    v25 = v1[13];
    v8 = v1[11];
    v9 = v1[9];
    v10 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = MEMORY[0x23192A860](v9, MEMORY[0x277D837D0]);
    v13 = sub_2311CFD58(v11, v12, &v26);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v1[7] = v6;
    v14 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    v15 = sub_23136A010();
    v17 = sub_2311CFD58(v15, v16, &v26);

    *(v10 + 14) = v17;
    _os_log_impl(&dword_2311CB000, v4, v5, "Unable to get app categories for appIds %s. error: %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v7 + 8))(v25, v8);
  }

  else
  {
    v19 = v1[12];
    v18 = v1[13];
    v20 = v1[11];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v1[17];
  sub_2313692F0();
  v22 = sub_231369EC0();

  v23 = v1[1];

  return v23(v22);
}

unint64_t sub_2312C4F18()
{
  result = qword_280F7CA60;
  if (!qword_280F7CA60)
  {
    sub_231367D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA60);
  }

  return result;
}

uint64_t sub_2312C4F70()
{
  OUTLINED_FUNCTION_17_13();
  if (v2)
  {
    sub_2311D38A8(v1, v18);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_20();
    sub_231259AD0(v3, v4, v5, v6);

    *v0 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2311D1F18(v8, v9, v10);
    v11 = OUTLINED_FUNCTION_27_13();
    sub_2312D0260(v11, v12, v13);

    OUTLINED_FUNCTION_12_18();
    return sub_2311D1F18(v14, v15, v16);
  }

  return result;
}

uint64_t sub_2312C5010()
{
  OUTLINED_FUNCTION_17_13();
  if (v2)
  {
    sub_2312250F8(v1, &v14);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *v0;
    sub_231259D04();

    *v0 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2311D1F18(v4, v5, v6);
    v7 = OUTLINED_FUNCTION_27_13();
    sub_2312D035C(v7, v8, v9);

    OUTLINED_FUNCTION_12_18();
    return sub_2311D1F18(v10, v11, v12);
  }

  return result;
}

uint64_t sub_2312C50C8()
{
  OUTLINED_FUNCTION_17_13();
  if (v2)
  {
    sub_2311D38A8(v1, v18);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_20_20();
    sub_231259FE4(v3, v4, v5, v6);

    *v0 = v17;
  }

  else
  {
    OUTLINED_FUNCTION_12_18();
    sub_2311D1F18(v8, v9, v10);
    v11 = OUTLINED_FUNCTION_27_13();
    sub_2312D0444(v11, v12, v13);

    OUTLINED_FUNCTION_12_18();
    return sub_2311D1F18(v14, v15, v16);
  }

  return result;
}

uint64_t sub_2312C5168(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E661C(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2312D079C(v9);
  *a1 = v2;
  return result;
}

void sub_2312C51D4(uint64_t *a1)
{
  v2 = *(sub_231368090() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2311E6750(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v9[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9[1] = v8;
  sub_2312D08A0(v9);
  *a1 = v3;
}

uint64_t SiriRemembersDataService.__allocating_init(storeProvider:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t SiriRemembersDataService.init(storeProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2312C52C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_1();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312C52E8()
{
  OUTLINED_FUNCTION_26();
  sub_231366A90();
  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t SiriRemembersDataService.createDataProvider(candidates:generationId:environment:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v1[36] = v4;
  v1[37] = v0;
  v5 = sub_231369050();
  v1[38] = v5;
  v1[39] = *(v5 - 8);
  v1[40] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v1[41] = v6;
  v1[42] = *(v6 - 8);
  v1[43] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[44] = v7;
  *v7 = v1;
  v7[1] = sub_2312C54E4;

  return sub_2312C64E0(v3, sub_2312C61D0, 0);
}

uint64_t sub_2312C54E4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312C55D0()
{
  v74 = v0;
  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 336);
    v65 = *(v0 + 328);
    v66 = *(v0 + 344);
    v4 = *(v0 + 312);
    v71 = MEMORY[0x277D84F90];
    sub_2311F5B10(0, v2, 0);
    v5 = v71;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v63 = *(v3 + 72);
    v64 = (v4 + 16);
    v62 = (v4 + 8);
    do
    {
      v68 = v5;
      v69 = v2;
      v7 = *(v0 + 344);
      v8 = *(v0 + 320);
      v9 = *(v0 + 304);
      v67 = v6;
      sub_2311E66F0(v6, v7, &qword_27DD43570, &qword_23136CAB0);
      v10 = *(v66 + 88);
      v11 = *(v66 + 96);
      v12 = *(v66 + 104);
      v13 = *(v66 + 112);
      v14 = v7 + *(v65 + 56);
      v15 = *v14;
      v70 = *(v14 + 8);
      (*v64)(v8, v7 + *(v65 + 64), v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23136B670;
      sub_23136A650();

      v72 = 0xD000000000000011;
      v73 = 0x800000023137DF90;
      sub_231369040();
      OUTLINED_FUNCTION_45_7();

      *(inited + 32) = 0xD000000000000011;
      *(inited + 40) = 0x800000023137DF90;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446B8, &unk_231375050);
      *(inited + 48) = v12;
      *(inited + 56) = v13;
      v17 = sub_231369EC0();
      if (v11)
      {

        sub_23136A650();

        v73 = 0x800000023137DF50;
        sub_231369040();
        OUTLINED_FUNCTION_45_7();

        *(v0 + 248) = sub_2313692F0();
        *(v0 + 224) = v11;
        sub_2312250F8((v0 + 224), (v0 + 256));
        swift_isUniquelyReferenced_nonNull_native();
        v72 = v17;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_30_13();
        if (__OFADD__(v20, v21))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v22 = v18;
        v23 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        OUTLINED_FUNCTION_28_14();
        v17 = v72;
        if (sub_23136A700())
        {
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_26_16();
          if (!v25)
          {
            goto LABEL_37;
          }

          v22 = v24;
        }

        if (v23)
        {
          v26 = (v72[7] + 32 * v22);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          sub_2312250F8((v0 + 256), v26);
        }

        else
        {
          v72[(v22 >> 6) + 8] |= 1 << v22;
          v27 = (v17[6] + 16 * v22);
          *v27 = 0xD000000000000013;
          v27[1] = 0x800000023137DF50;
          sub_2312250F8((v0 + 256), (v17[7] + 32 * v22));
          v28 = v17[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_47;
          }

          v17[2] = v30;
        }
      }

      if (v10)
      {

        sub_23136A650();

        v73 = 0xEF5F6C616E676953;
        sub_231369040();
        OUTLINED_FUNCTION_45_7();

        *(v0 + 184) = sub_2313692F0();
        *(v0 + 160) = v10;
        sub_2312250F8((v0 + 160), (v0 + 192));
        swift_isUniquelyReferenced_nonNull_native();
        v72 = v17;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_30_13();
        if (__OFADD__(v33, v34))
        {
          goto LABEL_45;
        }

        v35 = v31;
        v36 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        OUTLINED_FUNCTION_28_14();
        v17 = v72;
        if (sub_23136A700())
        {
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_26_16();
          if (!v25)
          {
            goto LABEL_37;
          }

          v35 = v37;
        }

        if (v36)
        {
          v38 = (v72[7] + 32 * v35);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
          sub_2312250F8((v0 + 192), v38);
        }

        else
        {
          OUTLINED_FUNCTION_10_22();
          sub_2312250F8((v0 + 192), v39);
          v40 = v72[2];
          v29 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v29)
          {
            goto LABEL_48;
          }

          v72[2] = v41;
        }
      }

      if ((v70 & 1) == 0)
      {
        sub_23136A650();

        v73 = 0x800000023137DF70;
        sub_231369040();
        OUTLINED_FUNCTION_45_7();

        *(v0 + 120) = MEMORY[0x277D839F8];
        *(v0 + 96) = v15;
        sub_2312250F8((v0 + 96), (v0 + 128));
        swift_isUniquelyReferenced_nonNull_native();
        v72 = v17;
        OUTLINED_FUNCTION_16_22();
        OUTLINED_FUNCTION_30_13();
        if (__OFADD__(v44, v45))
        {
          goto LABEL_46;
        }

        v46 = v42;
        v47 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
        OUTLINED_FUNCTION_28_14();
        v17 = v72;
        if (sub_23136A700())
        {
          OUTLINED_FUNCTION_16_22();
          OUTLINED_FUNCTION_26_16();
          if (!v25)
          {
LABEL_37:
            OUTLINED_FUNCTION_34_11();

            return sub_23136A970();
          }

          v46 = v48;
        }

        if (v47)
        {
          v49 = (v72[7] + 32 * v46);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          sub_2312250F8((v0 + 128), v49);
        }

        else
        {
          OUTLINED_FUNCTION_10_22();
          sub_2312250F8((v0 + 128), v50);
          v51 = v72[2];
          v29 = __OFADD__(v51, 1);
          v52 = v51 + 1;
          if (v29)
          {
            goto LABEL_49;
          }

          v72[2] = v52;
        }
      }

      (*v62)(*(v0 + 320), *(v0 + 304));
      sub_2311D1F18(*(v0 + 344), &qword_27DD43570, &qword_23136CAB0);
      v5 = v68;
      v54 = *(v68 + 16);
      v53 = *(v68 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2311F5B10(v53 > 1, v54 + 1, 1);
        v5 = v68;
      }

      *(v5 + 16) = v54 + 1;
      *(v5 + 8 * v54 + 32) = v17;
      v6 = v67 + v63;
      v2 = v69 - 1;
    }

    while (v69 != 1);
  }

  *(v0 + 368) = sub_231367730();

  v55 = sub_231369EE0();
  v72 = sub_23122AB7C(v55);
  sub_231369EE0();
  sub_2312C5168(&v72);

  if (qword_280F7C8A0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v58 = sub_2313698C0();
  __swift_project_value_buffer(v58, qword_280F8E510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
  sub_231369890();

  v59 = swift_task_alloc();
  *(v0 + 376) = v59;
  *v59 = v0;
  v59[1] = sub_2312C5E1C;
  OUTLINED_FUNCTION_34_11();

  return sub_2312C6884(v60);
}

uint64_t sub_2312C5E1C()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {

    v6 = sub_2312C6080;
  }

  else
  {

    *(v4 + 384) = v3;
    v6 = sub_2312C5F64;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2312C5F64()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[48];
  v2 = v0[46];
  v3 = v0[36];
  v4 = OUTLINED_FUNCTION_39_11();
  sub_2312C748C(v4, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  sub_231367730();
  OUTLINED_FUNCTION_38_9();

  v7 = type metadata accessor for SiriRemembersDataProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v3[3] = v7;
  v3[4] = &off_2845F5E80;
  *v3 = v8;

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t sub_2312C6080()
{
  v1 = MEMORY[0x277D837D0];
  v2 = sub_231369EC0();
  v3 = *(v0 + 368);
  v4 = *(v0 + 288);
  v5 = OUTLINED_FUNCTION_39_11();
  sub_2312C748C(v5, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23136C1C0;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  sub_231367730();
  OUTLINED_FUNCTION_38_9();

  v8 = type metadata accessor for SiriRemembersDataProvider();
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v4[3] = v8;
  v4[4] = &off_2845F5E80;
  *v4 = v9;

  OUTLINED_FUNCTION_56_0();

  return v10();
}

uint64_t sub_2312C61EC()
{
  OUTLINED_FUNCTION_8();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446C0, &qword_231375120);
  v0[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312C6280()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[4];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446C8, &qword_231375128);
  OUTLINED_FUNCTION_44_10(v3);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  type metadata accessor for RankedCandidateSuggestion(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  *v5 = v0;
  v5[1] = sub_2312C63A0;
  OUTLINED_FUNCTION_43_11();

  return MEMORY[0x2821C6B00](v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2312C63A0()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 40);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  sub_2311D1F18(v4, &qword_27DD446C0, &qword_231375120);

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_2312C64E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44700, &qword_2313751E0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C6580, 0, 0);
}

uint64_t sub_2312C6580()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[4];
  v2 = v0[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44708, &qword_2313751E8);
  OUTLINED_FUNCTION_44_10(v3);
  v4 = swift_allocObject();
  v0[6] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[7] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  *v5 = v0;
  v5[1] = sub_2312C66AC;
  OUTLINED_FUNCTION_43_11();

  return MEMORY[0x2821C6B00](v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2312C66AC()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 40);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  sub_2311D1F18(v4, &qword_27DD44700, &qword_2313751E0);

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_2312C67EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_23136C1C0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  sub_2311D1D6C(a3, v6 + 64);
  sub_231369EE0();
  return v6;
}

uint64_t sub_2312C6884(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v3 = sub_231368090();
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v4 = sub_231367D80();
  v2[37] = v4;
  v2[38] = *(v4 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v5 = sub_231366AA0();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312C6A14, 0, 0);
}

uint64_t sub_2312C6A14()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[32];
  v0[44] = sub_2312C877C(v0[31]);
  v6 = (*(v1 + 16) + **(v1 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[45] = v2;
  *v2 = v3;
  v2[1] = sub_2312C6B08;
  v4 = v0[43];

  return v6(v4);
}

uint64_t sub_2312C6B08()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {

    v7 = sub_2312C73F8;
  }

  else
  {
    v7 = sub_2312C6C10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void *sub_2312C6C10()
{
  v87 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v4 = *(v0 + 248);
  v85 = sub_231369EC0();
  v5 = sub_2312C8CCC(v3, v4, v2);
  if (v1)
  {
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

    OUTLINED_FUNCTION_56_0();

    return v13();
  }

  else
  {
    v6 = v5;
    v7 = *(v0 + 344);
    v8 = *(v0 + 248);

    sub_2312C9DA0(v6, &v85);
    v9 = *(v6 + 16);

    *(v0 + 16) = v9;
    *(v0 + 40) = MEMORY[0x277D83B88];
    sub_2312250F8((v0 + 16), (v0 + 48));
    v10 = v85;
    swift_isUniquelyReferenced_nonNull_native();
    v86[0] = v10;
    sub_231259D04();
    v85 = v86[0];
    v11 = sub_2312CA260(v8, v7);
    v12 = *(v0 + 344);
    v15 = *(v0 + 320);
    v16 = *(v0 + 304);
    v81 = *(v0 + 296);
    v83 = *(v0 + 248);
    sub_2312C9DA0(v11, &v85);

    v17 = *MEMORY[0x277D607E0];
    v18 = sub_231367020();
    OUTLINED_FUNCTION_11();
    v79 = v17;
    v77 = *(v19 + 104);
    v77(v15, v17, v18);
    v20 = *MEMORY[0x277D60BA0];
    v21 = *(v16 + 104);
    v21(v15, *MEMORY[0x277D60BA0], v81);
    v22 = sub_2312CA870(v15, v12, v83);
    v24 = v23;
    v74 = v21;
    v25 = *(*(v0 + 304) + 8);
    v25(*(v0 + 320), *(v0 + 296));
    if (v24)
    {
      v26 = v85;
    }

    else
    {
      v27 = *(v0 + 312);
      v28 = *(v0 + 296);
      v77(v27, v79, v18);
      v74(v27, v20, v28);
      sub_231254010();
      v25(v27, v28);
      *(v0 + 200) = MEMORY[0x277D83B88];
      *(v0 + 176) = v22;
      sub_2312250F8((v0 + 176), (v0 + 208));
      v29 = v85;
      swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v29;
      sub_231259D04();

      v26 = v86[0];
    }

    v30 = *(v0 + 272);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    result = sub_23136A770();
    v31 = result;
    v32 = 0;
    v33 = v26 + 64;
    v34 = 1 << *(v26 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v26 + 64);
    v37 = (v34 + 63) >> 6;
    v68 = (v30 + 8);
    v73 = result;
    v75 = result + 8;
    v71 = v37;
    v72 = v26;
    v69 = v26 + 64;
    v70 = v30;
    if (v36)
    {
      while (1)
      {
        v38 = __clz(__rbit64(v36));
        v76 = (v36 - 1) & v36;
LABEL_19:
        v41 = v38 | (v32 << 6);
        v42 = (*(v26 + 48) + 16 * v41);
        v43 = v42[1];
        v78 = *v42;
        v82 = v41;
        sub_2311D1D6C(*(v26 + 56) + 32 * v41, v0 + 80);
        sub_2311D1D6C(v0 + 80, v0 + 144);
        v80 = v43;
        sub_231369EE0();
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
        if (swift_dynamicCast())
        {
          v45 = *(v0 + 264);
          v46 = *(v0 + 240);
          v47 = *(v46 + 16);
          v48 = sub_2312D2660(&qword_280F7C9C8, MEMORY[0x277D60D90], MEMORY[0x277D60D98]);
          v49 = MEMORY[0x23192A9E0](v47, v45, v48);
          v86[0] = v49;
          v50 = *(v46 + 16);
          if (v50)
          {
            v51 = v46 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
            v84 = *(v30 + 72);
            v52 = *(v30 + 16);
            do
            {
              v53 = *(v0 + 280);
              v54 = *(v0 + 264);
              v52(*(v0 + 288), v51, v54);
              sub_23122EA10();
              (*v68)(v53, v54);
              v51 += v84;
              --v50;
            }

            while (v50);

            v55 = v86[0];
            v33 = v69;
            v30 = v70;
          }

          else
          {
            v55 = v49;
          }

          v56 = *(v55 + 16);
          if (v56)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43478, &qword_23136C9B0);
            v57 = *(v30 + 72);
            v58 = (*(v30 + 80) + 32) & ~*(v30 + 80);
            v59 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v59);
            if (!v57)
            {
              goto LABEL_44;
            }

            if ((result - v58) == 0x8000000000000000 && v57 == -1)
            {
              goto LABEL_46;
            }

            v59[2] = v56;
            v59[3] = 2 * ((result - v58) / v57);
            sub_231251A60(v86, v59 + v58, v56, v55);
            v62 = v61;
            result = sub_2311D3BBC(v86[0]);
            if (v62 != v56)
            {
              goto LABEL_45;
            }
          }

          else
          {

            v59 = MEMORY[0x277D84F90];
          }

          v26 = v72;
          v31 = v73;
          v37 = v71;
          *(v0 + 136) = v44;
          *(v0 + 112) = v59;
          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
        }

        else
        {
          sub_2312250F8((v0 + 80), (v0 + 112));
        }

        *(v75 + ((v82 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v82;
        v63 = (v31[6] + 16 * v82);
        *v63 = v78;
        v63[1] = v80;
        result = sub_2312250F8((v0 + 112), (v31[7] + 32 * v82));
        v64 = v31[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          break;
        }

        v31[2] = v66;
        v36 = v76;
        if (!v76)
        {
          goto LABEL_14;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
LABEL_14:
      v39 = v32;
      while (1)
      {
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          goto LABEL_43;
        }

        if (v32 >= v37)
        {
          break;
        }

        v40 = *(v33 + 8 * v32);
        ++v39;
        if (v40)
        {
          v38 = __clz(__rbit64(v40));
          v76 = (v40 - 1) & v40;
          goto LABEL_19;
        }
      }

      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));

      OUTLINED_FUNCTION_14();

      return v67(v31);
    }
  }

  return result;
}

uint64_t sub_2312C73F8()
{
  OUTLINED_FUNCTION_16();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

void sub_2312C748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_231368260();
  v88 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_231368090();
  v97 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231366860();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v107 = a2;
  sub_231369EE0();
  MEMORY[0x23192A730](10, 0xE100000000000000);
  MEMORY[0x23192A730](0xD000000000000045, 0x8000000231380100);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v14 setDateStyle_];
  [v14 setTimeStyle_];
  sub_231366820();
  v15 = sub_2313667F0();
  (*(v11 + 8))(v13, v10);
  v79 = v14;
  [v14 setLocale_];

  v103 = sub_231259380(a3);
  sub_2312C5168(&v103);
  v16 = v103;
  v17 = v103[2];
  if (v17)
  {
    v18 = 0;
    v81 = v103 + 4;
    v93 = v97 + 16;
    v92 = (v97 + 32);
    v86 = v88 + 32;
    v85 = (v88 + 8);
    v84 = xmmword_23136B670;
    v87 = v8;
    v77 = v103;
    v78 = v17;
    while (v18 < *(v16 + 16))
    {
      sub_2311E66F0(&v81[6 * v18], &v103, &qword_27DD43558, &qword_231374890);
      v19 = v103;
      v101[0] = v103;
      v101[1] = v104;
      v82 = v104;
      sub_2312250F8(&v105, &v102);
      sub_2311E66F0(v101, &v100, &qword_27DD43558, &qword_231374890);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
      v20 = swift_dynamicCast();
      v83 = v18;
      if (v20)
      {
        v80 = v19;
        v21 = v99;
        v22 = MEMORY[0x277D84F98];
        v100 = MEMORY[0x277D84F98];
        v98 = *(v99 + 16);
        if (v98)
        {
          v23 = 0;
          v89 = *(v97 + 80);
          v95 = (v89 + 32) & ~v89;
          v96 = v99 + v95;
          v24 = v91;
          v25 = v90;
          v94 = v99;
          do
          {
            if (v23 >= *(v21 + 16))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v26 = *(v97 + 72);
            (*(v97 + 16))(v25, v96 + v26 * v23, v24);
            sub_231368060();
            v28 = sub_231216480();
            v29 = v22[2];
            v30 = (v27 & 1) == 0;
            if (__OFADD__(v29, v30))
            {
              goto LABEL_44;
            }

            v31 = v27;
            if (v22[3] < v29 + v30)
            {
              sub_2312B4D28();
              v22 = v100;
              v32 = sub_231216480();
              if ((v31 & 1) != (v33 & 1))
              {
                sub_23136A970();
                __break(1u);

                __break(1u);
                return;
              }

              v28 = v32;
            }

            if (v31)
            {
              v34 = v6;
              (*v85)(v8, v6);
              v35 = v22[7];
              v36 = *(v35 + 8 * v28);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v35 + 8 * v28) = v36;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_23126E388(0, *(v36 + 16) + 1, 1, v36);
                v36 = v48;
                *(v35 + 8 * v28) = v48;
              }

              v39 = *(v36 + 16);
              v38 = *(v36 + 24);
              if (v39 >= v38 >> 1)
              {
                sub_23126E388(v38 > 1, v39 + 1, 1, v36);
                v36 = v49;
                *(v35 + 8 * v28) = v49;
              }

              v6 = v34;
              v21 = v94;
              *(v36 + 16) = v39 + 1;
              v25 = v90;
              v24 = v91;
              (*v92)(v36 + v95 + v39 * v26, v90, v91);
              v8 = v87;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43478, &qword_23136C9B0);
              v40 = v8;
              v41 = v6;
              v42 = v95;
              v43 = swift_allocObject();
              *(v43 + 16) = v84;
              v44 = v43 + v42;
              v6 = v41;
              v8 = v40;
              (*v92)(v44, v25, v24);
              v22[(v28 >> 6) + 8] |= 1 << v28;
              (*(v88 + 32))(v22[6] + *(v88 + 72) * v28, v40, v6);
              *(v22[7] + 8 * v28) = v43;
              v45 = v22[2];
              v46 = __OFADD__(v45, 1);
              v47 = v45 + 1;
              if (v46)
              {
                goto LABEL_45;
              }

              v22[2] = v47;
              v21 = v94;
            }

            ++v23;
          }

          while (v98 != v23);
        }

        v17 = v78;
        if (qword_280F7C8A0 != -1)
        {
          swift_once();
        }

        v55 = sub_2313698C0();
        v98 = __swift_project_value_buffer(v55, qword_280F8E510);
        v56 = v22[2];
        if (v56)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446D0, &unk_231375158);
          v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720) - 8);
          v58 = *(v57 + 72);
          v59 = (*(v57 + 80) + 32) & ~*(v57 + 80);
          v60 = swift_allocObject();
          v61 = _swift_stdlib_malloc_size(v60);
          if (!v58)
          {
            goto LABEL_47;
          }

          if (v61 - v59 == 0x8000000000000000 && v58 == -1)
          {
            goto LABEL_49;
          }

          v60[2] = v56;
          v60[3] = 2 * ((v61 - v59) / v58);
          v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720) - 8);
          sub_231251A78(&v100, v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v56, v22);
          v65 = v64;
          v66 = sub_2311D3BBC(v100);
          if (v65 != v56)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }

        MEMORY[0x28223BE20](v66);
        *(&v76 - 2) = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720);
        v52 = sub_231369870();
        v54 = v67;

        v16 = v77;
      }

      else
      {
        if (qword_280F7C8A0 != -1)
        {
          swift_once();
        }

        v50 = sub_2313698C0();
        v51 = __swift_project_value_buffer(v50, qword_280F8E510);
        MEMORY[0x28223BE20](v51);
        *(&v76 - 2) = v101;
        v52 = sub_231369870();
        v54 = v53;
      }

      v18 = v83 + 1;
      MEMORY[0x23192A730](v52, v54);

      MEMORY[0x23192A730](2570, 0xE200000000000000);
      sub_2311D1F18(v101, &qword_27DD43558, &qword_231374890);
      if (v18 == v17)
      {
        goto LABEL_38;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_38:

  if (qword_280F7C8A0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v68 = sub_2313698C0();
  __swift_project_value_buffer(v68, qword_280F8E510);
  v70 = v106;
  v69 = v107;
  sub_231369EE0();
  v71 = sub_2313698A0();
  v72 = sub_23136A390();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v103 = v74;
    *v73 = 136315138;
    v75 = sub_2311CFD58(v70, v69, &v103);

    *(v73 + 4) = v75;
    _os_log_impl(&dword_2311CB000, v71, v72, "%s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x23192B930](v74, -1, -1);
    MEMORY[0x23192B930](v73, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2312C8084(uint64_t a1, void *a2)
{
  v64 = a2;
  v63 = sub_231366750();
  v3 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_231368090();
  v65 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DC8, &unk_231370720);
  MEMORY[0x28223BE20](v6);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v52 - v10;
  v54 = v12;
  v55 = a1;
  v66 = *(a1 + *(v12 + 48));
  sub_231369EE0();
  sub_2312C51D4(&v66);
  v13 = sub_2312C8634(3, v66);
  v60 = v15;
  v17 = v16 >> 1;
  v18 = (v16 >> 1) - v14;
  if (__OFSUB__(v16 >> 1, v14))
  {
    goto LABEL_16;
  }

  v53 = v8;
  if (v18)
  {
    v19 = v14;
    v52[1] = v13;
    v66 = MEMORY[0x277D84F90];
    sub_2311F4E34(0);
    if ((v18 & 0x8000000000000000) != 0)
    {
LABEL_17:
      __break(1u);

      __break(1u);
      return result;
    }

    v52[0] = v11;
    v20 = v66;
    v57 = (v3 + 8);
    v58 = v65 + 16;
    v56 = v65 + 8;
    v21 = v59;
    while (v19 < v17)
    {
      v22 = v65;
      v23 = v61;
      (*(v65 + 16))(v21, v60 + *(v65 + 72) * v19, v61);
      sub_231368050();
      v24 = v62;
      sub_2313666D0();
      v25 = sub_231366700();
      (*v57)(v24, v63);
      v26 = [v64 stringFromDate_];

      v27 = sub_231369FD0();
      v29 = v28;

      (*(v22 + 8))(v21, v23);
      v66 = v20;
      v31 = *(v20 + 16);
      v30 = *(v20 + 24);
      v18 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_2311F4E34(v30 > 1);
        v20 = v66;
      }

      *(v20 + 16) = v18;
      v32 = v20 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      if (v17 == ++v19)
      {
        swift_unknownObjectRelease();
        v11 = v52[0];
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  v20 = MEMORY[0x277D84F90];
LABEL_11:
  v66 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
  sub_2311E5648();
  v33 = sub_231369F50();
  v35 = v34;

  sub_2311E66F0(v55, v11, &qword_27DD43DC8, &unk_231370720);
  v36 = *(*&v11[*(v54 + 48)] + 16);

  v37 = sub_231368260();
  v38 = *(v37 - 8);
  v39 = *(v38 + 8);
  v39(v11, v37);
  if (v36 <= 3)
  {
    v64 = v35;
    v65 = v33;
  }

  else
  {
    v66 = 0x202E2E2E20;
    v67 = 0xE500000000000000;
    MEMORY[0x23192A730](v33, v35);

    v64 = v67;
    v65 = v66;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D837D0];
  *(v40 + 16) = xmmword_23136D290;
  *(v40 + 56) = v41;
  *(v40 + 32) = 32;
  *(v40 + 40) = 0xE100000000000000;
  v42 = v55;
  sub_2311E66F0(v55, v11, &qword_27DD43DC8, &unk_231370720);
  v43 = v54;

  *(v40 + 88) = v37;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 64));
  (*(v38 + 32))(boxed_opaque_existential_1, v11, v37);
  v45 = v42;
  v46 = v53;
  sub_2311E66F0(v45, v53, &qword_27DD43DC8, &unk_231370720);
  v47 = *(*(v46 + *(v43 + 48)) + 16);

  v48 = MEMORY[0x277D83B88];
  *(v40 + 96) = v47;
  *(v40 + 152) = MEMORY[0x277D837D0];
  v49 = v64;
  v50 = v65;
  *(v40 + 120) = v48;
  *(v40 + 128) = v50;
  *(v40 + 136) = v49;
  v39(v46, v37);
  return v40;
}

uint64_t sub_2312C8634(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_2312F0B84(v3, -result, 0, a2);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_2312F0AC0(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2312C86CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 16) = xmmword_23136C1C0;
  *(v3 + 56) = v4;
  *(v3 + 32) = 32;
  *(v3 + 40) = 0xE100000000000000;
  sub_2311E66F0(a2, &v6, &qword_27DD43558, &qword_231374890);

  sub_2312250F8(&v7, (v3 + 64));
  return v3;
}

void *sub_2312C877C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v36 - v3;
  v46 = sub_231368180();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_231369050();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  MEMORY[0x28223BE20](v44);
  v16 = (&v36 - v15);
  v17 = MEMORY[0x277D84FA0];
  v52 = MEMORY[0x277D84FA0];
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = (v6 + 16);
    v21 = *(v14 + 72);
    v37 = v6;
    v22 = (v6 + 8);
    v42 = (v4 + 8);
    v43 = v21;
    v23 = v40;
    v50 = v20;
    v41 = v22;
    do
    {
      sub_2311E66F0(v19, v16, &qword_27DD43570, &qword_23136CAB0);
      v24 = v16 + *(v44 + 64);
      v48 = *v20;
      v48(v10, v24, v23);
      sub_23122E89C();
      v49 = *v22;
      v49(v13, v23);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_2313682A0();
      v25 = v13;
      v26 = v45;
      sub_2313676F0();
      sub_231368110();
      (*v42)(v26, v46);
      v27 = v51[3];
      sub_2311D1F18(v51, &qword_27DD43E50, &unk_2313708D8);
      if (v27)
      {
        v47 = type metadata accessor for EngagementService();
        __swift_project_boxed_opaque_existential_1(v16, v16[3]);
        sub_2313682F0();
        sub_23134AF10();

        v28 = v39;
        sub_231368FF0();
        static EngagementService.getAction(for:using:appId:)();
        v23 = v40;

        sub_2311D1F18(v28, &qword_27DD43F08, &qword_231370CD0);
        v48(v38, v25, v23);
        sub_23122E89C();

        v29 = v41;
        v30 = v49;
        v49(v10, v23);
        v30(v25, v23);
        v13 = v25;
        v22 = v29;
      }

      else
      {

        v13 = v25;
        v22 = v41;
      }

      sub_2311D1F18(v16, &qword_27DD43570, &qword_23136CAB0);
      v19 += v43;
      --v18;
      v20 = v50;
    }

    while (v18);
    v17 = v52;
    v6 = v37;
  }

  v31 = *(v17 + 16);
  if (!v31)
  {
    goto LABEL_11;
  }

  v32 = sub_231250348(*(v17 + 16), 0);
  sub_231251A48(v51, v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v31, v17);
  v34 = v33;
  sub_2311D3BBC(v51[0]);
  if (v34 != v31)
  {
    __break(1u);
LABEL_11:

    return MEMORY[0x277D84F90];
  }

  return v32;
}

uint64_t sub_2312C8CCC(uint64_t a1, uint64_t a2, void (**a3)(char *, void, uint64_t (**)(char *, uint64_t)))
{
  v125 = a3;
  v135 = a2;
  v131 = sub_2313669F0();
  v114 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_231366AE0();
  v133 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v129 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231368BC0();
  v113 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v134 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v111 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v109 - v11;
  MEMORY[0x28223BE20](v12);
  v147 = &v109 - v13;
  v14 = sub_231366A80();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v118 = &v109 - v19;
  MEMORY[0x28223BE20](v20);
  v123 = &v109 - v21;
  MEMORY[0x28223BE20](v22);
  v137 = &v109 - v23;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446F8, &qword_231375188);
  v117 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v116 = (&v109 - v24);
  v25 = sub_2313669A0();
  v139 = *(v25 - 8);
  v140 = v25;
  MEMORY[0x28223BE20](v25);
  v115 = &v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v127 = &v109 - v28;
  MEMORY[0x28223BE20](v29);
  v121 = &v109 - v30;
  v144 = sub_231369050();
  v31 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v110 = &v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v109 - v34;
  v36 = *(a1 + 16);
  v37 = MEMORY[0x277D84F90];
  v138 = v14;
  v136 = v6;
  v122 = v31;
  v120 = v15;
  v124 = v17;
  if (v36)
  {
    v112 = v8;
    v150[0] = MEMORY[0x277D84F90];
    sub_2311F4E34(0);
    v37 = v150[0];
    v38 = v31 + 16;
    v143 = *(v31 + 16);
    v39 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v142 = *(v38 + 56);
    v145 = v38;
    v40 = (v38 - 8);
    do
    {
      v41 = v37;
      v42 = v144;
      v143(v35, v39, v144);
      v43 = sub_231369040();
      v45 = v44;
      (*v40)(v35, v42);
      v37 = v41;
      v150[0] = v41;
      v46 = *(v41 + 16);
      v47 = *(v37 + 24);
      if (v46 >= v47 >> 1)
      {
        sub_2311F4E34(v47 > 1);
        v37 = v150[0];
      }

      *(v37 + 16) = v46 + 1;
      v48 = v37 + 16 * v46;
      *(v48 + 32) = v43;
      *(v48 + 40) = v45;
      v39 += v142;
      --v36;
    }

    while (v36);
    v6 = v136;
    v8 = v112;
  }

  v49 = v37;
  if (qword_280F7C8A0 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v50 = sub_2313698C0();
    __swift_project_value_buffer(v50, qword_280F8E510);
    sub_231369EE0();
    v51 = sub_2313698A0();
    v52 = sub_23136A3A0();

    v53 = os_log_type_enabled(v51, v52);
    v145 = v49;
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v150[0] = v55;
      *v54 = 136315138;
      v56 = MEMORY[0x23192A860](v49, MEMORY[0x277D837D0]);
      v58 = sub_2311CFD58(v56, v57, v150);

      *(v54 + 4) = v58;
      v6 = v136;
      _os_log_impl(&dword_2311CB000, v51, v52, "Querying Siri Remembers for logging ids: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x23192B930](v55, -1, -1);
      MEMORY[0x23192B930](v54, -1, -1);
    }

    v59 = v139;
    v60 = v128;
    v61 = v117;
    v62 = v115;
    sub_231366990();
    v128 = sub_231366DE0();
    sub_231366DB0();
    sub_231366980();

    v63 = *(v59 + 8);
    v63(v62, v140);
    v64 = v116;
    *v116 = v145;
    (*(v61 + 104))(v64, *MEMORY[0x277D5FF28], v60);
    v65 = v127;
    sub_231366970();
    (*(v61 + 8))(v64, v60);
    v143 = v63;
    v139 = v59 + 8;
    v63(v65, v140);
    v66 = v118;
    sub_231366A70();
    v67 = v123;
    sub_231366A00();
    v69 = v120 + 8;
    v68 = *(v120 + 8);
    v70 = v138;
    v68(v66, v138);
    v71 = v137;
    sub_231366A20();
    v68(v67, v70);
    v72 = v124;
    sub_231366A00();
    v73 = v126;
    sub_231366A10();
    if (v73)
    {
      break;
    }

    v145 = 0;
    v120 = v69;
    v126 = v68;
    v68(v72, v70);
    swift_getKeyPath();
    v142 = sub_231367A70();

    v75 = 0;
    v127 = *(v135 + 16);
    v125 = (v113 + 104);
    LODWORD(v124) = *MEMORY[0x277D61110];
    v123 = (v113 + 8);
    v118 = MEMORY[0x277D84F90];
    while (v127 != v75)
    {
      v76 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v77 = *(v134 + 72);
      sub_2311E66F0(v135 + v76 + v77 * v75, v147, &qword_27DD43570, &qword_23136CAB0);
      (*v125)(v8, v124, v6);
      sub_2312D2660(&qword_280F7C970, MEMORY[0x277D61128], MEMORY[0x277D61130]);
      sub_23136A140();
      sub_23136A140();
      if (v150[0] == v148 && v150[1] == v149)
      {
        v80 = v8;
        (*v123)(v8, v6);

LABEL_21:
        sub_2312D26A8(v147, v119);
        v81 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151 = v81;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2311F5AF0(0, *(v81 + 2) + 1, 1);
          v81 = v151;
        }

        v8 = v80;
        v84 = *(v81 + 2);
        v83 = *(v81 + 3);
        if (v84 >= v83 >> 1)
        {
          sub_2311F5AF0((v83 > 1), v84 + 1, 1);
          v81 = v151;
        }

        ++v75;
        *(v81 + 2) = v84 + 1;
        v118 = v81;
        sub_2312D26A8(v119, &v81[v76 + v84 * v77]);
        v6 = v136;
      }

      else
      {
        v79 = sub_23136A900();
        v80 = v8;
        (*v123)(v8, v6);

        if (v79)
        {
          goto LABEL_21;
        }

        sub_2311D1F18(v147, &qword_27DD43570, &qword_23136CAB0);
        ++v75;
        v6 = v136;
      }
    }

    v85 = v118;
    v86 = *(v118 + 2);
    if (v86)
    {
      v150[0] = MEMORY[0x277D84F90];
      sub_2311F5A98(0, v86, 0);
      v87 = v150[0];
      v88 = &v85[(*(v134 + 80) + 32) & ~*(v134 + 80)];
      v147 = *(v134 + 72);
      v89 = (v122 + 16);
      v136 = (v122 + 32);
      v90 = v111;
      v91 = v144;
      v92 = v110;
      do
      {
        sub_2311E66F0(v88, v90, &qword_27DD43570, &qword_23136CAB0);
        (*v89)(v92, v90 + *(v141 + 64), v91);
        sub_2311D1F18(v90, &qword_27DD43570, &qword_23136CAB0);
        v150[0] = v87;
        v94 = *(v87 + 16);
        v93 = *(v87 + 24);
        if (v94 >= v93 >> 1)
        {
          sub_2311F5A98(v93 > 1, v94 + 1, 1);
          v90 = v111;
          v87 = v150[0];
        }

        *(v87 + 16) = v94 + 1;
        (*(v122 + 32))(v87 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v94, v92, v91);
        v88 += v147;
        --v86;
      }

      while (v86);
      v144 = v87;
    }

    else
    {

      v144 = MEMORY[0x277D84F90];
    }

    v8 = v137;
    v95 = v138;
    v96 = 0;
    v150[0] = MEMORY[0x277D84F90];
    v49 = v143;
    v147 = *(v142 + 16);
    v141 = v133 + 16;
    v135 = v133 + 8;
    v136 = (v114 + 8);
    v97 = v140;
    v6 = v126;
    while (1)
    {
      if (v147 == v96)
      {

        (v6)(v8, v95);
        v49(v121, v97);
        return v150[0];
      }

      if (v96 >= *(v142 + 16))
      {
        break;
      }

      v98 = v133;
      v99 = v129;
      (*(v133 + 16))(v129, v142 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v96++, v146);
      sub_231366AB0();
      sub_231366DA0();
      v100 = sub_2312177D8();

      if (v100)
      {
        v101 = v100;
      }

      else
      {
        v101 = MEMORY[0x277D84F90];
      }

      v102 = v130;
      sub_231366AC0();
      sub_2313669B0();
      v103 = v102;
      v95 = v138;
      (*v136)(v103, v131);
      v6 = v126;
      sub_231366D90();
      v104 = sub_23136A0B0();

      MEMORY[0x28223BE20](v105);
      v106 = v145;
      *(&v109 - 4) = v144;
      *(&v109 - 24) = v104 & 1;
      v107 = v132;
      *(&v109 - 2) = v99;
      *(&v109 - 1) = v107;
      sub_2312E39AC(sub_2312D2718, (&v109 - 6), v101);
      v145 = v106;

      v108 = *(v98 + 8);
      v8 = v137;
      v49 = v143;
      v108(v99, v146);
      v97 = v140;
      sub_2312673FC();
    }

    __break(1u);
LABEL_42:
    swift_once();
  }

  v68(v72, v70);
  v68(v71, v70);
  return (v143)(v121, v140);
}

void sub_2312C9DA0(uint64_t a1, void *a2)
{
  v4 = sub_231368090();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v11 = &v47 - v9;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return;
  }

  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v51 = (*(v13 + 64) + 32) & ~*(v13 + 64);
  v15 = a1 + v51;
  v53 = *(v13 + 56);
  v54 = v14;
  v52 = (v13 - 8);
  v49 = v13;
  v50 = (v13 + 16);
  v48 = &v47 - v9;
  while (1)
  {
    v54(v11, v15, v4, v10);
    v16 = sub_231368080();
    *&v59 = 0x6E6F697463615F5FLL;
    *(&v59 + 1) = 0xEA00000000005F73;
    MEMORY[0x23192A730](v16);

    v17 = *a2;
    v18 = *(*a2 + 16);
    v55 = v59;
    if (v18 && (v19 = sub_231215F6C(v59, *(&v59 + 1)), (v20 & 1) != 0))
    {
      sub_2311D1D6C(*(v17 + 56) + 32 * v19, &v57);
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v56[0] = v57;
    v56[1] = v58;
    if (*(&v58 + 1))
    {
      sub_2312250F8(v56, &v59);
    }

    else
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
      *&v59 = MEMORY[0x277D84F90];
      sub_2311D1F18(v56, &qword_27DD443C0, &unk_23136E000);
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E30, &qword_231375150);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*v52)(v11, v4);

      goto LABEL_26;
    }

    v22 = v57;
    (v54)(v7, v11, v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126E388(0, *(v22 + 16) + 1, 1, v22);
      v22 = v45;
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_23126E388(v23 > 1, v24 + 1, 1, v22);
      v22 = v46;
    }

    *(v22 + 16) = v24 + 1;
    v25 = v7;
    v26 = v7;
    v27 = v4;
    (*v50)(v22 + v51 + v24 * v53, v26, v4);
    v60 = v21;
    *&v59 = v22;
    sub_2312250F8(&v59, &v57);
    swift_isUniquelyReferenced_nonNull_native();
    v28 = a2;
    *&v56[0] = *a2;
    v29 = *&v56[0];
    v30 = sub_231215F6C(v55, *(&v55 + 1));
    if (__OFADD__(*(v29 + 16), (v31 & 1) == 0))
    {
      break;
    }

    v32 = v30;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
    if (sub_23136A700())
    {
      v34 = v55;
      v35 = sub_231215F6C(v55, *(&v55 + 1));
      if ((v33 & 1) != (v36 & 1))
      {
        goto LABEL_30;
      }

      v32 = v35;
    }

    else
    {
      v34 = v55;
    }

    v37 = *&v56[0];
    if (v33)
    {
      v38 = (*(*&v56[0] + 56) + 32 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      sub_2312250F8(&v57, v38);
    }

    else
    {
      *(*&v56[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
      v39 = (v37[6] + 16 * v32);
      v40 = *(&v55 + 1);
      *v39 = v34;
      v39[1] = v40;
      sub_2312250F8(&v57, (v37[7] + 32 * v32));
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_29;
      }

      v37[2] = v43;
    }

    v44 = v48;
    (*v52)(v48, v27);
    a2 = v28;
    v4 = v27;
    *a2 = v37;
    v7 = v25;
    v11 = v44;
LABEL_26:
    v15 += v53;
    if (!--v12)
    {
      return;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_23136A970();
  __break(1u);
}

char *sub_2312CA260(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v31[0] = a2;
  v41 = sub_231367D80();
  v3 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  MEMORY[0x28223BE20](v42);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v43 = v31 - v11;
  MEMORY[0x28223BE20](v12);
  v44 = v31 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0) - 8;
  MEMORY[0x28223BE20](v14);
  v45 = (v31 - v16);
  v46 = MEMORY[0x277D84F90];
  v17 = *(a1 + 16);
  if (!v17)
  {
    return v46;
  }

  v18 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v40 = (v3 + 104);
  v19 = *(v15 + 72);
  v36 = v9;
  v37 = v19;
  v20 = *MEMORY[0x277D607E0];
  v32 = (v3 + 32);
  v34 = (v3 + 8);
  v38 = *MEMORY[0x277D60BA0];
  v39 = v20;
  while (1)
  {
    v21 = v45;
    sub_2311E66F0(v18, v45, &qword_27DD43570, &qword_23136CAB0);
    v22 = v44;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_2313682C0();
    v23 = sub_231367020();
    v24 = v43;
    (*(*(v23 - 8) + 104))(v43, v39, v23);
    v25 = v41;
    (*v40)(v24, v38, v41);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    v26 = *(v42 + 48);
    sub_2311E66F0(v22, v6, &qword_27DD42F18, &unk_23136B810);
    sub_2311E66F0(v24, &v6[v26], &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(v6, 1, v25) == 1)
    {
      break;
    }

    v27 = v36;
    sub_2311E66F0(v6, v36, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(&v6[v26], 1, v25) == 1)
    {
      sub_2311D1F18(v43, &qword_27DD42F18, &unk_23136B810);
      sub_2311D1F18(v44, &qword_27DD42F18, &unk_23136B810);
      (*v34)(v27, v25);
      goto LABEL_8;
    }

    (*v32)(v35, &v6[v26], v25);
    sub_2312D2660(&qword_280F7CA50, MEMORY[0x277D60BA8], MEMORY[0x277D60BC0]);
    v33 = sub_231369F60();
    v28 = *v34;
    (*v34)(v35, v25);
    sub_2311D1F18(v43, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v22, &qword_27DD42F18, &unk_23136B810);
    v28(v36, v25);
    sub_2311D1F18(v6, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v45, &qword_27DD43570, &qword_23136CAB0);
    if (v33)
    {
      goto LABEL_13;
    }

LABEL_10:
    v18 += v37;
    if (!--v17)
    {
      return v46;
    }
  }

  sub_2311D1F18(v24, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v44, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(&v6[v26], 1, v25) != 1)
  {
LABEL_8:
    sub_2311D1F18(v6, &qword_27DD437F0, &unk_23136DFE0);
    sub_2311D1F18(v45, &qword_27DD43570, &qword_23136CAB0);
    goto LABEL_10;
  }

  sub_2311D1F18(v6, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v45, &qword_27DD43570, &qword_23136CAB0);
LABEL_13:
  v30 = v31[2];
  result = sub_2312CC340(v31[0], 7);
  if (!v30)
  {
    sub_2312673FC();
    return v46;
  }

  return result;
}

uint64_t sub_2312CA870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = a2;
  v96 = a1;
  v86 = sub_231367D80();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446D8, &qword_231375168);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v79 - v5;
  v90 = sub_231366A80();
  v93 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v89 = &v79 - v10;
  MEMORY[0x28223BE20](v11);
  v80 = &v79 - v12;
  MEMORY[0x28223BE20](v13);
  v81 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446E0, &unk_231375170);
  MEMORY[0x28223BE20](v15 - 8);
  v95 = &v79 - v16;
  v94 = sub_231366750();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_231367C70();
  v18 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  v105 = *(v20 - 8);
  v106 = v20;
  MEMORY[0x28223BE20](v20);
  v104 = (&v79 - v21);
  v22 = 0;
  v107 = a3;
  v116 = *(a3 + 16);
  v108 = *MEMORY[0x277D60E68];
  v109 = *MEMORY[0x277D60DC0];
  v110 = *MEMORY[0x277D60E18];
  v112 = *MEMORY[0x277D60AC0];
  v111 = (v18 + 104);
  v113 = (v18 + 8);
  do
  {
    if (v116 == v22)
    {
      return 0;
    }

    v23 = v104;
    sub_2311E66F0(v107 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + v105[9] * v22, v104, &qword_27DD43570, &qword_23136CAB0);
    v119 = v22 + 1;
    v117 = *(v106 + 60);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8);
    v24 = *(v103 + 48);
    v25 = sub_231368270();
    v26 = *(v25 - 8);
    v27 = v114;
    v101 = *(v26 + 104);
    v102 = v25;
    v100 = v26 + 104;
    v101(v114, v108);
    v28 = sub_2313681A0();
    v29 = (*(v28 - 8) + 104);
    v99 = *v29;
    v99(v27, v109, v28);
    v30 = sub_231368210();
    v31 = *(v30 - 8);
    v32 = *(v31 + 104);
    v33 = v31 + 104;
    v32(&v27[v24], v110, v30);
    v34 = *v111;
    v35 = v115;
    (*v111)(v27, v112, v115);
    LODWORD(v117) = sub_231367C60();
    v36 = v27;
    v22 = v119;
    v37 = v35;
    v38 = *v113;
    (*v113)(v36, v37);
    sub_2311D1F18(v23, &qword_27DD43570, &qword_23136CAB0);
  }

  while ((v117 & 1) == 0);
  v104 = v38;
  v105 = v34;
  v106 = v33;
  v107 = v32;
  v116 = v30;
  v117 = v29;
  v119 = v28;
  v40 = v101;
  v39 = v102;
  v41 = v103;
  v42 = v95;
  v43 = v98;
  sub_2312CD614(v97, v95);
  if (!v43)
  {
    v45 = v94;
    if (__swift_getEnumTagSinglePayload(v42, 1, v94) == 1)
    {
      sub_2311D1F18(v42, &qword_27DD446E0, &unk_231375170);
      if (qword_280F7C8A0 != -1)
      {
        swift_once();
      }

      v46 = sub_2313698C0();
      __swift_project_value_buffer(v46, qword_280F8E510);
      v47 = v85;
      v48 = v82;
      v49 = v86;
      (*(v85 + 16))(v82, v96, v86);
      v50 = sub_2313698A0();
      v51 = sub_23136A3A0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v118[0] = v53;
        *v52 = 136315138;
        v54 = sub_231367D40();
        v55 = v48;
        v57 = v56;
        (*(v47 + 8))(v55, v49);
        v58 = sub_2311CFD58(v54, v57, v118);

        *(v52 + 4) = v58;
        _os_log_impl(&dword_2311CB000, v50, v51, "[getSiriInitiatedAction] No record of deliveryVehicle %s. Returning nil siriInitiatedAction count", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        MEMORY[0x23192B930](v53, -1, -1);
        MEMORY[0x23192B930](v52, -1, -1);
      }

      else
      {

        (*(v47 + 8))(v48, v49);
      }

      return 0;
    }

    else
    {
      (*(v92 + 32))(v91, v42, v45);
      v59 = v79;
      sub_231366A70();
      sub_231366A00();
      v60 = *(v93 + 8);
      v93 += 8;
      v60(v59, v90);
      v61 = v60;
      sub_231366DE0();
      v96 = sub_231366DC0();
      v98 = 0;
      v62 = *(v41 + 48);
      v63 = v114;
      v40(v114, v108, v39);
      v99(v63, v109, v119);
      v107(&v63[v62], v110, v116);
      v64 = v115;
      (v105)(v63, v112, v115);
      v65 = sub_231367C50();
      v67 = v66;
      (v104)(v63, v64);
      v118[0] = v65;
      v118[1] = v67;
      v28 = v90;
      v68 = v80;
      v69 = v89;
      sub_231366A40();

      v61(v69, v28);
      v70 = v61;
      v71 = v83;
      (*(v92 + 16))(v83, v91, v94);
      v72 = v87;
      v73 = v88;
      (*(v87 + 104))(v71, *MEMORY[0x277D5FF08], v88);
      v74 = v81;
      sub_231366A50();
      (*(v72 + 8))(v71, v73);
      v70(v68, v28);
      v75 = v84;
      sub_231366A00();
      v76 = v98;
      v77 = sub_231366A60();
      if (v76)
      {
        v70(v75, v28);
        v70(v74, v28);
        (*(v92 + 8))(v91, v94);
      }

      else
      {
        v78 = v77;
        v70(v75, v28);
        v70(v74, v28);
        (*(v92 + 8))(v91, v94);
        v28 = *(v78 + 16);
      }
    }
  }

  return v28;
}

uint64_t sub_2312CB494(uint64_t a1)
{
  v2 = sub_2313669F0();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_231366AD0();
}

uint64_t sub_2312CB59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v48 = a4;
  v49 = a6;
  v10 = sub_2313669F0();
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_231366AE0();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231366B10();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  if (sub_231218128(sub_2312D273C, v50, a2) || (a3 & 1) == 0)
  {
    sub_231366AC0();
    v36 = sub_231366AF0();
    sub_2312CBAE4(v12, v36, v37, v49);

    return (*(v46 + 8))(v12, v47);
  }

  else
  {
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v20 = sub_2313698C0();
    __swift_project_value_buffer(v20, qword_280F8E510);
    (*(v17 + 16))(v19, a1, v16);
    v22 = v44;
    v21 = v45;
    (*(v44 + 16))(v15, v48, v45);
    v23 = sub_2313698A0();
    LODWORD(v48) = sub_23136A3A0();
    if (os_log_type_enabled(v23, v48))
    {
      v24 = swift_slowAlloc();
      v43 = v6;
      v25 = v24;
      v42 = swift_slowAlloc();
      v52 = v42;
      *v25 = 136315394;
      v41 = v23;
      v26 = sub_231366AF0();
      v28 = v27;
      (*(v17 + 8))(v19, v16);
      v29 = sub_2311CFD58(v26, v28, &v52);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      sub_231366AC0();
      v30 = sub_2313669B0();
      v32 = v31;
      (*(v46 + 8))(v12, v47);
      (*(v22 + 8))(v15, v45);
      v33 = sub_2311CFD58(v30, v32, &v52);

      *(v25 + 14) = v33;
      v34 = v41;
      _os_log_impl(&dword_2311CB000, v41, v48, "Skipping fetching shadow interaction because this is a enabled suggestion (not a donotShow) %s and shadow interaction has id %s", v25, 0x16u);
      v35 = v42;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v35, -1, -1);
      MEMORY[0x23192B930](v25, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v15, v21);
      (*(v17 + 8))(v19, v16);
    }

    v39 = sub_231368090();
    return __swift_storeEnumTagSinglePayload(v49, 1, 1, v39);
  }
}

uint64_t sub_2312CBA4C(uint64_t a1)
{
  v1 = sub_231369040();
  v3 = v2;
  if (v1 == sub_231366AF0() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_23136A900();
  }

  return v6 & 1;
}

uint64_t sub_2312CBAE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a2;
  v85 = a3;
  v86 = a4;
  v5 = sub_231366750();
  v82 = *(v5 - 8);
  v83 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2313669F0();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v72 - v13;
  v14 = sub_231367D80();
  v75 = *(v14 - 8);
  v76 = v14;
  MEMORY[0x28223BE20](v14);
  v74 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_231368260();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  v23 = a1;
  v24 = sub_2313669D0();
  v26 = v25;
  sub_231366DE0();
  if (v24 == sub_231366D80() && v26 == v27)
  {

    goto LABEL_15;
  }

  v29 = sub_23136A900();

  if (v29)
  {
LABEL_15:
    v54 = MEMORY[0x277D60E38];
    goto LABEL_16;
  }

  v73 = a1;
  v89 = sub_2313669D0();
  v90 = v30;
  v87 = sub_231366D70();
  v88 = v31;
  sub_231207C1C(v87, v31, v32);
  v33 = sub_23136A520();

  if ((v33 & 1) == 0)
  {
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v57 = sub_2313698C0();
    __swift_project_value_buffer(v57, qword_280F8E510);
    v43 = v79;
    v42 = v80;
    v58 = v23;
    v45 = v81;
    (*(v80 + 16))(v79, v58, v81);
    v59 = sub_2313698A0();
    v60 = sub_23136A3B0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v89 = v62;
      *v61 = 136315138;
      v63 = sub_2313669D0();
      v65 = v64;
      (*(v42 + 8))(v43, v45);
      v66 = sub_2311CFD58(v63, v65, &v89);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_2311CB000, v59, v60, "Not able to extract ObservedActionType from SiriRemembers.Interaction.Type value: %s. Returning nil ObservedActionDTO", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x23192B930](v62, -1, -1);
      MEMORY[0x23192B930](v61, -1, -1);

      goto LABEL_24;
    }

LABEL_23:
    (*(v42 + 8))(v43, v45);
    goto LABEL_24;
  }

  v34 = v73;
  v89 = sub_2313669D0();
  v90 = v35;
  v87 = 95;
  v88 = 0xE100000000000000;
  v36 = sub_23136A4E0();

  sub_231334188(v36);
  v38 = v37;

  if (!v38)
  {
LABEL_10:
    if (qword_280F7C8A0 != -1)
    {
      swift_once();
    }

    v41 = sub_2313698C0();
    __swift_project_value_buffer(v41, qword_280F8E510);
    v42 = v80;
    v43 = v78;
    v44 = v34;
    v45 = v81;
    (*(v80 + 16))(v78, v44, v81);
    v46 = sub_2313698A0();
    v47 = sub_23136A3B0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v89 = v49;
      *v48 = 136315138;
      v50 = sub_2313669D0();
      v52 = v51;
      (*(v42 + 8))(v43, v45);
      v53 = sub_2311CFD58(v50, v52, &v89);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_2311CB000, v46, v47, "Not able to extract ObservedActionType from SiriRemembers.Interaction.Type value: %s. Returning nil ObservedActionDTO", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x23192B930](v49, -1, -1);
      MEMORY[0x23192B930](v48, -1, -1);

LABEL_24:
      v56 = 1;
      v55 = v86;
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v39 = v77;
  sub_231367D70();
  v40 = v76;
  if (__swift_getEnumTagSinglePayload(v39, 1, v76) == 1)
  {
    sub_2311D1F18(v39, &qword_27DD42F18, &unk_23136B810);
    goto LABEL_10;
  }

  v69 = v74;
  v70 = v39;
  v71 = *(v75 + 32);
  v71(v74, v70, v40);
  v71(v22, v69, v40);
  v54 = MEMORY[0x277D60E30];
LABEL_16:
  (*(v17 + 104))(v22, *v54, v16);
  sub_231369EE0();
  sub_2313669E0();
  sub_2313666E0();
  (*(v82 + 8))(v7, v83);
  (*(v17 + 16))(v19, v22, v16);
  v55 = v86;
  sub_231368070();
  (*(v17 + 8))(v22, v16);
  v56 = 0;
LABEL_25:
  v67 = sub_231368090();
  return __swift_storeEnumTagSinglePayload(v55, v56, 1, v67);
}

char *sub_2312CC340(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v167 = a1;
  v165 = sub_2313669F0();
  v135 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v164 = v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446F0, &unk_231375D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v134 - v5;
  v7 = sub_231368090();
  v156 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v163 = v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v162 = v134 - v10;
  v172 = sub_231366B10();
  v144 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v158 = v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_231366AE0();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v157 = v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v170 = v134 - v14;
  MEMORY[0x28223BE20](v15);
  v169 = v134 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446D8, &qword_231375168);
  v159 = *(v17 - 8);
  v160 = v17;
  MEMORY[0x28223BE20](v17);
  v155 = (v134 - v18);
  v153 = sub_231367D80();
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v148 = v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_231366A80();
  v140 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v154 = v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v166 = v134 - v23;
  MEMORY[0x28223BE20](v24);
  v147 = v134 - v25;
  MEMORY[0x28223BE20](v26);
  v149 = v134 - v27;
  MEMORY[0x28223BE20](v28);
  v139 = v134 - v29;
  v143 = sub_231366750();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v31 = v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = v134 - v33;
  sub_2313690A0();
  __swift_project_boxed_opaque_existential_1(v174, v174[3]);
  sub_231368F20();
  if ((a2 * 86400) >> 64 != (86400 * a2) >> 63)
  {
    goto LABEL_51;
  }

  v137 = v20;
  v171 = v7;
  v161 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v174);
  sub_2313666D0();
  if (qword_280F7C8A0 != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v35 = sub_2313698C0();
    v36 = __swift_project_value_buffer(v35, qword_280F8E510);
    v37 = v142;
    v38 = *(v142 + 16);
    v141 = v34;
    v39 = v143;
    v146 = v142 + 16;
    v145 = v38;
    (v38)(v31, v34, v143);
    v134[1] = v36;
    v40 = sub_2313698A0();
    v41 = sub_23136A3A0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v174[0] = v43;
      *v42 = 136315138;
      v44 = sub_231366730();
      v46 = v45;
      v136 = *(v37 + 8);
      v136(v31, v39);
      v47 = sub_2311CFD58(v44, v46, v174);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2311CB000, v40, v41, "Querying for SiriHintSpoken instances starting from date %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x23192B930](v43, -1, -1);
      MEMORY[0x23192B930](v42, -1, -1);
    }

    else
    {

      v136 = *(v37 + 8);
      v136(v31, v39);
    }

    v48 = v166;
    sub_231366A70();
    v49 = v147;
    sub_231366A00();
    v50 = v140 + 8;
    v138 = *(v140 + 1);
    v51 = v137;
    v138(v48, v137);
    v52 = sub_231366DE0();
    v53 = *MEMORY[0x277D607E0];
    v54 = sub_231367020();
    v55 = v148;
    (*(*(v54 - 8) + 104))(v148, v53, v54);
    v56 = v151;
    v57 = v153;
    (*(v151 + 104))(v55, *MEMORY[0x277D60BA0], v153);
    v166 = v52;
    sub_231366D60();
    (*(v56 + 8))(v55, v57);
    v58 = v149;
    sub_231366A30();

    v59 = v138;
    v138(v49, v51);
    v60 = v155;
    (v145)(v155, v141, v143);
    v61 = v50;
    v62 = v51;
    v64 = v159;
    v63 = v160;
    (*(v159 + 104))(v60, *MEMORY[0x277D5FF18], v160);
    v65 = v139;
    sub_231366A50();
    (*(v64 + 8))(v60, v63);
    v59(v58, v62);
    v66 = v154;
    sub_231366A00();
    v67 = v168;
    v68 = sub_231366A10();
    if (v67)
    {
      v59(v66, v62);
      v59(v65, v62);
      v136(v141, v143);
      return v61;
    }

    v34 = v68;
    v69 = v66;
    v70 = v62;
    v59(v69, v62);
    sub_231369EE0();
    v71 = sub_2313698A0();
    v72 = sub_23136A3A0();

    v73 = os_log_type_enabled(v71, v72);
    v149 = v34;
    v140 = v61;
    v134[0] = 0;
    if (v73)
    {
      LODWORD(v159) = v72;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = v75;
      v174[0] = v75;
      *v74 = 136315138;
      v77 = *(v34 + 2);
      v78 = MEMORY[0x277D84F90];
      if (v77)
      {
        v153 = v75;
        v154 = v74;
        v155 = v71;
        v173 = MEMORY[0x277D84F90];
        sub_2311F4E34(0);
        v78 = v173;
        v167 = *(v150 + 16);
        v79 = &v34[(*(v150 + 80) + 32) & ~*(v150 + 80)];
        v168 = *(v150 + 72);
        v160 = (v150 + 16);
        v80 = (v150 + 8);
        do
        {
          v81 = v169;
          v82 = v78;
          v83 = v152;
          v84 = v167;
          v167(v169, v79, v152);
          v84(v170, v81, v83);
          v85 = sub_23136A010();
          v87 = v86;
          (*v80)(v81, v83);
          v78 = v82;
          v173 = v82;
          v89 = *(v82 + 16);
          v88 = *(v82 + 24);
          if (v89 >= v88 >> 1)
          {
            sub_2311F4E34(v88 > 1);
            v78 = v173;
          }

          *(v78 + 16) = v89 + 1;
          v90 = v78 + 16 * v89;
          *(v90 + 32) = v85;
          *(v90 + 40) = v87;
          v79 = &v168[v79];
          --v77;
        }

        while (v77);
        v70 = v137;
        v93 = v135;
        v34 = v149;
        v71 = v155;
        v74 = v154;
        v76 = v153;
      }

      else
      {
        v93 = v135;
      }

      v173 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
      sub_2311E5648();
      v94 = sub_231369F50();
      v96 = v95;

      v97 = sub_2311CFD58(v94, v96, v174);

      *(v74 + 4) = v97;
      _os_log_impl(&dword_2311CB000, v71, v159, "Got spoken interactions as: \n%s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x23192B930](v76, -1, -1);
      MEMORY[0x23192B930](v74, -1, -1);

      v31 = v158;
      v91 = v152;
      v92 = v157;
    }

    else
    {

      v31 = v158;
      v91 = v152;
      v92 = v157;
      v93 = v135;
    }

    v148 = *(v34 + 2);
    if (!v148)
    {
      break;
    }

    v98 = 0;
    v147 = &v34[(*(v150 + 80) + 32) & ~*(v150 + 80)];
    v146 = v150 + 16;
    v167 = (v144 + 16);
    v99 = (v144 + 8);
    v160 = (v93 + 8);
    v159 = v156 + 32;
    v155 = (v156 + 16);
    v154 = (v156 + 8);
    v145 = (v150 + 8);
    v170 = MEMORY[0x277D84F90];
    while (v98 < *(v34 + 2))
    {
      v100 = *(v150 + 72);
      v153 = v98;
      (*(v150 + 16))(v92, &v147[v100 * v98], v91);
      v101 = sub_231366AB0();
      v102 = sub_231366DA0();
      if (*(v101 + 16) && (v104 = sub_231215F6C(v102, v103), (v105 & 1) != 0))
      {
        v106 = *(*(v101 + 56) + 8 * v104);
        sub_231369EE0();
      }

      else
      {
        v106 = MEMORY[0x277D84F90];
      }

      v107 = *(v106 + 16);
      if (v107)
      {
        v108 = (*(v144 + 80) + 32) & ~*(v144 + 80);
        v151 = v106;
        v109 = v106 + v108;
        v110 = *(v144 + 72);
        v168 = *(v144 + 16);
        v169 = v110;
        while (1)
        {
          (v168)(v31, v109, v172);
          v111 = sub_231366B00();
          v113 = v112;
          if (v111 == sub_231366DB0() && v113 == v114)
          {
            break;
          }

          v116 = sub_23136A900();

          if (v116)
          {
            goto LABEL_34;
          }

          (*v99)(v31, v172);
LABEL_41:
          v109 += v169;
          if (!--v107)
          {

            v91 = v152;
            goto LABEL_45;
          }
        }

LABEL_34:
        v117 = v164;
        sub_231366AC0();
        v118 = sub_231366AF0();
        v119 = v31;
        v120 = v161;
        sub_2312CBAE4(v117, v118, v121, v161);

        (*v160)(v117, v165);
        v122 = v171;
        if (__swift_getEnumTagSinglePayload(v120, 1, v171) == 1)
        {
          (*v99)(v119, v172);
          sub_2311D1F18(v120, &qword_27DD446F0, &unk_231375D70);
          v31 = v119;
        }

        else
        {
          v123 = *v159;
          v124 = v162;
          (*v159)(v162, v120, v122);
          (v155->isa)(v163, v124, v122);
          v125 = v170;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23126E388(0, *(v125 + 16) + 1, 1, v125);
            v125 = v131;
          }

          v127 = *(v125 + 16);
          v126 = *(v125 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_23126E388(v126 > 1, v127 + 1, 1, v125);
            v170 = v132;
          }

          else
          {
            v170 = v125;
          }

          v128 = v156;
          v129 = v171;
          (*(v156 + 8))(v162, v171);
          v31 = v158;
          (*v99)(v158, v172);
          v130 = v170;
          *(v170 + 2) = v127 + 1;
          v123(&v130[((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v127], v163, v129);
          v92 = v157;
        }

        goto LABEL_41;
      }

LABEL_45:
      v98 = v153 + 1;
      (*v145)(v92, v91);
      v34 = v149;
      if (v98 == v148)
      {

        v70 = v137;
        v61 = v170;
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v61 = MEMORY[0x277D84F90];
LABEL_48:
  v138(v139, v70);
  v136(v141, v143);
  return v61;
}

uint64_t sub_2312CD614@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v77 = a1;
  v69 = a2;
  v84 = sub_231366750();
  v73 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v79 = v65 - v4;
  v5 = sub_2313669F0();
  v81 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD446E8, &qword_231375180);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = v65 - v13;
  v71 = sub_231366A80();
  v14 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v76 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v65 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v65 - v20;
  MEMORY[0x28223BE20](v22);
  v70 = v65 - v23;
  sub_231366DE0();
  v24 = sub_231366D70();
  v26 = v25;
  v27 = sub_231367D40();
  v29 = v28;
  v82 = v24;
  v83 = v26;
  sub_231369EE0();
  MEMORY[0x23192A730](v27, v29);

  sub_231366A70();
  sub_231366A00();
  v32 = *(v14 + 8);
  v30 = v14 + 8;
  v31 = v32;
  v33 = v18;
  v34 = v71;
  v32(v33, v71);
  v35 = v70;
  sub_231366A30();
  v36 = v76;

  v32(v21, v34);
  sub_231366A00();
  v37 = v78;
  v38 = sub_231366A60();
  if (v37)
  {
    v31(v36, v34);
    return (v31)(v35, v34);
  }

  else
  {
    v78 = v38;
    v40 = v36;
    v41 = v73;
    v65[0] = v31;
    v65[1] = 0;
    v43 = v68;
    v42 = v69;
    v44 = v84;
    v31(v40, v34);
    v77 = *(v78 + 16);
    v65[2] = v30;
    if (v77)
    {
      v45 = v81;
      v47 = (v81 + 16);
      v46 = *(v81 + 16);
      v48 = v43;
      v74 = v78 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
      v75 = v46;
      result = (v46)(v43);
      v49 = (v41 + 8);
      v76 = v47;
      v72 = (v47 + 16);
      v73 = v47 - 8;
      for (i = 1; ; ++i)
      {
        v52 = v79;
        v51 = v80;
        if (v77 == i)
        {

          v60 = v66;
          (*v72)(v66, v48, v5);
          __swift_storeEnumTagSinglePayload(v60, 0, 1, v5);
          v61 = v69;
          v62 = v84;
          goto LABEL_13;
        }

        if (i >= *(v78 + 16))
        {
          break;
        }

        v75(v7, v74 + *(v45 + 72) * i, v5);
        sub_2313669E0();
        sub_2313669E0();
        v53 = sub_231366710();
        v54 = v51;
        v55 = v5;
        v56 = *v49;
        v57 = v84;
        (*v49)(v54, v84);
        v58 = v57;
        v45 = v81;
        v56(v52, v58);
        v59 = *(v45 + 8);
        if (v53)
        {
          v59(v48, v55);
          result = (*v72)(v48, v7, v55);
        }

        else
        {
          result = (v59)(v7, v55);
        }

        v5 = v55;
      }

      __break(1u);
    }

    else
    {

      v60 = v66;
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v5);
      v45 = v81;
      v61 = v42;
      v62 = v44;
LABEL_13:
      v63 = v67;
      sub_2311E66F0(v60, v67, &qword_27DD446E8, &qword_231375180);
      if (__swift_getEnumTagSinglePayload(v63, 1, v5) == 1)
      {
        sub_2311D1F18(v60, &qword_27DD446E8, &qword_231375180);
        (v65[0])(v70, v71);
        sub_2311D1F18(v63, &qword_27DD446E8, &qword_231375180);
        v64 = 1;
      }

      else
      {
        sub_2313669E0();
        sub_2311D1F18(v60, &qword_27DD446E8, &qword_231375180);
        (v65[0])(v70, v71);
        (*(v45 + 8))(v63, v5);
        v64 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v61, v64, 1, v62);
    }
  }

  return result;
}

uint64_t SiriRemembersDataService.__deallocating_deinit()
{

  OUTLINED_FUNCTION_24_3();

  return swift_deallocClassInstance();
}

uint64_t sub_2312CDD5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return SiriRemembersDataService.createDataProvider(candidates:generationId:environment:)();
}

double sub_2312CDE08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_231215F6C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_2311D1D6C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2312CDEB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for RankedCandidateSuggestion(0);
  v3[24] = swift_task_alloc();
  v4 = sub_231369050();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v5 = sub_231367C70();
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_231367F40();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v7 = sub_2313676B0();
  v3[35] = v7;
  v3[36] = *(v7 - 8);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v8 = sub_231368BC0();
  v3[40] = v8;
  v3[41] = *(v8 - 8);
  v3[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312CE164, 0, 0);
}

uint64_t sub_2312CE164()
{
  OUTLINED_FUNCTION_26();
  (*(v0 + 176))(*(v0 + 168));
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 344) = v1;
  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_22_7(v2);

  return sub_23132C6C8();
}

uint64_t sub_2312CE220()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 360) = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312CE324()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 368) = v1;
  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_22_7(v2);

  return sub_23132D44C();
}

uint64_t sub_2312CE3CC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 384) = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312CE4D0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[49] = v1;
  v0[50] = v2;
  ObjectType = swift_getObjectType();
  v0[51] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312CE550()
{
  OUTLINED_FUNCTION_8();
  sub_231369400();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312CE5BC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[52] = v1;
  v0[53] = v2;
  ObjectType = swift_getObjectType();
  v0[54] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312CE63C()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 136) = sub_23126C0B8(*(v0 + 432), *(v0 + 424));
  *(v0 + 144) = v1;
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312CE6AC()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  OUTLINED_FUNCTION_35_12();
  v4 = OUTLINED_FUNCTION_28_0();
  sub_2311E66F0(v4, v5, v6, v7);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v8 = *(v0 + 312);
LABEL_10:
    sub_2311D1F18(v8, &qword_27DD432D8, &unk_23136BED0);
    goto LABEL_11;
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 272);
  v11 = *(v0 + 248);
  (*(*(v0 + 288) + 32))(v9, *(v0 + 304), *(v0 + 280));
  sub_231367680();
  v12 = OUTLINED_FUNCTION_37_14();
  v13(v12);
  OUTLINED_FUNCTION_28_0();
  sub_231367F30();
  v14 = OUTLINED_FUNCTION_36_11();
  v1(v14);
  (v1)(v10, v11);
  v15 = *(v0 + 312);
  if ((v9 & 1) == 0)
  {
    v26 = OUTLINED_FUNCTION_18_19();
    v27(v26);
    v8 = v15;
    goto LABEL_10;
  }

  v16 = COERCE_DOUBLE(sub_2313676A0());
  v18 = v17;
  v19 = OUTLINED_FUNCTION_18_19();
  v20(v19);
  v21 = sub_2311D1F18(v15, &qword_27DD432D8, &unk_23136BED0);
  if ((v18 & 1) == 0)
  {
    if ((~*&v16 & 0x7FF0000000000000) != 0)
    {
      if (v16 > -1.0)
      {
        if (v16 < 1.84467441e19)
        {
          v24 = 0;
          v25 = v16;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return MEMORY[0x2821C6E58](v21, v22, v23);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  v25 = 0;
  v24 = 1;
LABEL_12:
  *(v0 + 480) = v24;
  *(v0 + 440) = v25;
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 448) = v28;
  *v28 = v29;
  v28[1] = sub_2312CE8E0;
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E58](v21, v22, v23);
}

uint64_t sub_2312CE8E0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CE9C4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v1[57] = v2;
  ObjectType = swift_getObjectType();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[58] = v4;
  *v4 = v5;
  v4[1] = sub_2312CEA80;
  v6 = v1[30];

  return MEMORY[0x2821C7790](v6, ObjectType, v0);
}

uint64_t sub_2312CEA80()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CEB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v18 + 472) = v19;
  *v19 = v20;
  v19[1] = sub_2312CEC1C;
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E60](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2312CEC1C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CED00()
{
  v2 = *(v0 + 360);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434B8, &unk_2313706C0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_33_12();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_23136B670;
  sub_2311E1984(v4, v3);
  OUTLINED_FUNCTION_40_12();
  sub_2313676D0();

  v6 = *(v0 + 384);
  if (v2)
  {
    *(v0 + 152) = *(v0 + 360);
    if (v6)
    {
      *(v0 + 160) = v6;
      sub_2313692F0();
      OUTLINED_FUNCTION_11_21();
      sub_2312D2660(v7, v8, MEMORY[0x277D612E0]);
      OUTLINED_FUNCTION_38_9();

      v35 = sub_231369F60();

      v34 = *(v0 + 384);
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }
  }

  else
  {
    v34 = *(v0 + 384);
    v35 = v6 == 0;
  }

  v32 = *(v0 + 480);
  v33 = *(v0 + 144);
  v30 = *(v0 + 440);
  v31 = *(v0 + 136);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v29 = *(v0 + 360);
  v11 = *(v0 + 320);
  v12 = *(v0 + 232);
  v27 = *(v0 + 216);
  v28 = *(v0 + 224);
  v13 = *(v0 + 208);
  v25 = *(v0 + 240);
  v26 = *(v0 + 200);
  v14 = *(v0 + 192);
  v15 = v36 + v1;
  sub_2311CF324(v0 + 56, v15 + v5[12]);
  v16 = OUTLINED_FUNCTION_21_18(v5[13]);
  v17(v16, v9, v11);
  OUTLINED_FUNCTION_21_18(v5[15]);
  OUTLINED_FUNCTION_9_23();
  v18();
  v19 = OUTLINED_FUNCTION_21_18(v5[16]);
  v20(v19, v27, v26);
  sub_2311E18C4(v14, v15);
  sub_2311D38A8((v0 + 96), v15 + v5[7]);
  *(v15 + v5[8]) = v35 & 1;
  *(v15 + v5[9]) = v34;
  *(v15 + v5[10]) = v29;
  v21 = v15 + v5[11];
  *v21 = v30;
  *(v21 + 8) = v32;
  v22 = v15 + v5[14];
  *v22 = v31;
  *(v22 + 8) = v33 & 1;
  (*(v13 + 8))(v27, v26);
  (*(v12 + 8))(v25, v28);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v10 + 8))(v9, v11);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v23(v36);
}

uint64_t sub_2312CF0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a2;
  v3[28] = a3;
  v3[26] = a1;
  v4 = sub_231369050();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = sub_231367C70();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v6 = sub_231367F40();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v7 = sub_2313676B0();
  v3[39] = v7;
  v3[40] = *(v7 - 8);
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v8 = sub_231368BC0();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312CF338, 0, 0);
}

uint64_t sub_2312CF338()
{
  OUTLINED_FUNCTION_26();
  (*(v0 + 216))(*(v0 + 208));
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 376) = v1;
  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 384) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_22_7(v2);

  return sub_23132C6C8();
}

uint64_t sub_2312CF3F4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 392) = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312CF4F8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 400) = v1;
  swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 408) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_22_7(v2);

  return sub_23132D44C();
}

uint64_t sub_2312CF5A0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 416) = v5;

  swift_unknownObjectRelease();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2312CF6A4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[53] = v1;
  v0[54] = v2;
  ObjectType = swift_getObjectType();
  v0[55] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312CF724()
{
  OUTLINED_FUNCTION_8();
  sub_231369400();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312CF790()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[56] = v1;
  v0[57] = v2;
  ObjectType = swift_getObjectType();
  v0[58] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312CF810()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 176) = sub_23126C0B8(*(v0 + 464), *(v0 + 456));
  *(v0 + 184) = v1;
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2312CF880()
{
  OUTLINED_FUNCTION_16();
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  OUTLINED_FUNCTION_35_12();
  v4 = OUTLINED_FUNCTION_28_0();
  sub_2311E66F0(v4, v5, v6, v7);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    v8 = *(v0 + 344);
LABEL_10:
    sub_2311D1F18(v8, &qword_27DD432D8, &unk_23136BED0);
    goto LABEL_11;
  }

  v9 = *(v0 + 328);
  v10 = *(v0 + 304);
  v11 = *(v0 + 280);
  (*(*(v0 + 320) + 32))(v9, *(v0 + 336), *(v0 + 312));
  sub_231367680();
  v12 = OUTLINED_FUNCTION_37_14();
  v13(v12);
  OUTLINED_FUNCTION_28_0();
  sub_231367F30();
  v14 = OUTLINED_FUNCTION_36_11();
  v1(v14);
  (v1)(v10, v11);
  v15 = *(v0 + 344);
  if ((v9 & 1) == 0)
  {
    v26 = OUTLINED_FUNCTION_18_19();
    v27(v26);
    v8 = v15;
    goto LABEL_10;
  }

  v16 = COERCE_DOUBLE(sub_2313676A0());
  v18 = v17;
  v19 = OUTLINED_FUNCTION_18_19();
  v20(v19);
  v21 = sub_2311D1F18(v15, &qword_27DD432D8, &unk_23136BED0);
  if ((v18 & 1) == 0)
  {
    if ((~*&v16 & 0x7FF0000000000000) != 0)
    {
      if (v16 > -1.0)
      {
        if (v16 < 1.84467441e19)
        {
          v24 = 0;
          v25 = v16;
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return MEMORY[0x2821C6E58](v21, v22, v23);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  v25 = 0;
  v24 = 1;
LABEL_12:
  *(v0 + 512) = v24;
  *(v0 + 472) = v25;
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 480) = v28;
  *v28 = v29;
  v28[1] = sub_2312CFAB4;
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E58](v21, v22, v23);
}

uint64_t sub_2312CFAB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CFB98()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_28_0();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v1[61] = v2;
  ObjectType = swift_getObjectType();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v1[62] = v4;
  *v4 = v5;
  v4[1] = sub_2312CFC54;
  v6 = v1[34];

  return MEMORY[0x2821C7790](v6, ObjectType, v0);
}

uint64_t sub_2312CFC54()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_9_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v18 + 504) = v19;
  *v19 = v20;
  v19[1] = sub_2312CFDF0;
  OUTLINED_FUNCTION_15_21();

  return MEMORY[0x2821C6E60](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_2312CFDF0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312CFED4()
{
  v2 = *(v0 + 392);
  v3 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43568, &qword_23136CAA8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_33_12();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_23136B670;
  sub_2311CF324(v3, v0 + 96);
  OUTLINED_FUNCTION_40_12();
  sub_2313676D0();

  v4 = *(v0 + 416);
  if (v2)
  {
    *(v0 + 192) = *(v0 + 392);
    if (v4)
    {
      *(v0 + 200) = v4;
      sub_2313692F0();
      OUTLINED_FUNCTION_11_21();
      sub_2312D2660(v5, v6, MEMORY[0x277D612E0]);
      OUTLINED_FUNCTION_38_9();

      v31 = sub_231369F60();

      v32 = *(v0 + 416);
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }
  }

  else
  {
    v32 = *(v0 + 416);
    v31 = v4 == 0;
  }

  v29 = *(v0 + 512);
  v30 = *(v0 + 184);
  v27 = *(v0 + 472);
  v28 = *(v0 + 176);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v26 = *(v0 + 392);
  v9 = *(v0 + 352);
  v10 = *(v0 + 264);
  v11 = *(v0 + 256);
  v24 = *(v0 + 272);
  v25 = *(v0 + 248);
  v12 = v34 + v1;
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  sub_2311CF324(v0 + 56, v12 + 120);
  v15 = OUTLINED_FUNCTION_21_18(v33[13]);
  v16(v15, v8, v9);
  v17 = OUTLINED_FUNCTION_21_18(v33[15]);
  v18(v17, v24, v11);
  v19 = OUTLINED_FUNCTION_21_18(v33[16]);
  v20(v19, v25, v14);
  sub_2311D38A8((v0 + 96), v12);
  sub_2311D38A8((v0 + 136), v12 + 40);
  *(v12 + 80) = v31 & 1;
  *(v12 + 88) = v32;
  *(v12 + 96) = v26;
  *(v12 + 104) = v27;
  *(v12 + 112) = v29;
  v21 = v12 + v33[14];
  *v21 = v28;
  *(v21 + 8) = v30 & 1;
  (*(v13 + 8))(v25, v14);
  (*(v10 + 8))(v24, v11);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  (*(v7 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_14();

  return v22(v34);
}

double sub_2312D0260@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_231215F6C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E90, &unk_231375140);
    sub_23136A700();

    sub_2311D38A8((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F88, &unk_23136B8B0);
    sub_23136A720();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_2312D035C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_231215F6C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43CF0, &unk_23136FD40);
    sub_23136A700();

    sub_2312250F8((*(v9 + 56) + 32 * v7), a3);
    sub_23136A720();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2312D0444@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_231215F6C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E00, &unk_231370780);
    sub_23136A700();

    sub_2311D38A8((*(v9 + 56) + 40 * v7), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    sub_23136A720();
    *v3 = v9;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2312D0588(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v12 = sub_231215F6C(a1, a2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v12;
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_23136A700();

  v15 = *(*(v17 + 56) + 8 * v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_23136A720();
  *v11 = v17;
  return v15;
}

uint64_t sub_2312D06F4()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;
  v4 = OUTLINED_FUNCTION_28_0();

  return sub_2312CDEB4(v4, v5, v2);
}

uint64_t sub_2312D079C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2312D0DBC(v7, v8, a1, v4);
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
    return sub_2312D09D0(0, v2, 1, a1);
  }

  return result;
}

void sub_2312D08A0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23136A8A0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_231368090();
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_231368090() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_2312D1498(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2312D0B24(0, v2, 1, a1);
  }
}

uint64_t sub_2312D09D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 48 * a3;
    v6 = result - a3;
    while (2)
    {
      v32 = a3;
      v7 = v6;
      v8 = v5;
      while (1)
      {
        sub_2311E66F0(v8, v31, &qword_27DD43558, &qword_231374890);
        v9 = v8 - 3;
        sub_2311E66F0((v8 - 3), v30, &qword_27DD43558, &qword_231374890);
        if (v31[0] == v30[0] && v31[1] == v30[1])
        {
          break;
        }

        v11 = sub_23136A900();
        OUTLINED_FUNCTION_12_18();
        sub_2311D1F18(v12, v13, v14);
        OUTLINED_FUNCTION_12_18();
        result = sub_2311D1F18(v15, v16, v17);
        if (v11)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          v19 = v8[1];
          v18 = v8[2];
          v20 = *v8;
          v21 = *(v8 - 2);
          *v8 = *v9;
          v8[1] = v21;
          v8[2] = *(v8 - 1);
          *v9 = v20;
          *(v8 - 2) = v19;
          v8 -= 3;
          v9[2] = v18;
          if (!__CFADD__(v7++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_12_18();
      sub_2311D1F18(v23, v24, v25);
      OUTLINED_FUNCTION_12_18();
      result = sub_2311D1F18(v26, v27, v28);
LABEL_14:
      a3 = v32 + 1;
      v5 += 48;
      --v6;
      if (v32 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2312D0B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_231368090();
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v13 + 16);
    v47 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v43 = (v13 + 32);
    v44 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v40 = v19;
      v41 = a3;
      v38 = v21;
      v39 = v20;
      v22 = v20;
      v23 = v19;
      do
      {
        v24 = v48;
        v25 = v46;
        (v46)(v48, v21, v8, v14);
        v26 = v49;
        v25(v49, v23, v8);
        sub_231368050();
        v28 = v27;
        sub_231368050();
        v30 = v29;
        v31 = *v18;
        (*v18)(v26, v8);
        v31(v24, v8);
        if (v28 >= v30)
        {
          break;
        }

        if (!v44)
        {
          __break(1u);
          return;
        }

        v32 = *v43;
        v33 = v45;
        (*v43)(v45, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v32(v23, v33, v8);
        v23 += v42;
        v21 += v42;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v41 + 1;
      v19 = &v40[v36];
      v20 = v39 - 1;
      v21 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_2312D0DBC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_106:
    v141 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v126 = v6 + 16;
      v127 = *(v6 + 2);
      while (v127 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v128 = v6;
        v129 = &v6[16 * v127];
        v6 = *v129;
        v130 = &v126[2 * v127];
        v131 = *(v130 + 1);
        v132 = v145;
        sub_2312D1E78((*a3 + 48 * *v129), (*a3 + 48 * *v130), (*a3 + 48 * v131), v141);
        v145 = v132;
        if (v132)
        {
          break;
        }

        if (v131 < v6)
        {
          goto LABEL_132;
        }

        if (v127 - 2 >= *v126)
        {
          goto LABEL_133;
        }

        *v129 = v6;
        *(v129 + 1) = v131;
        a2 = *v126 - v127;
        if (*v126 < v127)
        {
          goto LABEL_134;
        }

        v127 = *v126 - 1;
        sub_2311E6448(v130 + 16, a2, v130);
        *v126 = v127;
        v6 = v128;
      }

LABEL_116:

      return;
    }

LABEL_141:
    v6 = sub_2311E6430(v6, a2, a3, a4);
    goto LABEL_108;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_27DD43558;
  while (1)
  {
    v8 = v5;
    v9 = (v5 + 1);
    if ((v5 + 1) < v4)
    {
      v134 = v6;
      v10 = *a3;
      OUTLINED_FUNCTION_31_16(*a3 + 48 * v9, v144);
      OUTLINED_FUNCTION_31_16(v10 + 48 * v8, v143);
      OUTLINED_FUNCTION_25_14();
      v13 = v13 && v11 == v12;
      if (v13)
      {
        LODWORD(v141) = 0;
      }

      else
      {
        LODWORD(v141) = sub_23136A900();
      }

      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v14, v15, v16);
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v17, v18, v19);
      v20 = v8 + 2;
      v136 = v8;
      v21 = v10 + 48 * v8;
      v22 = 48 * v8;
      v23 = v21 + 96;
      v24 = v22 + 48;
      v25 = v9;
      do
      {
        v9 = v20;
        v26 = v25;
        v27 = v24;
        if (v20 >= v4)
        {
          break;
        }

        v6 = v4;
        OUTLINED_FUNCTION_31_16(v23, v144);
        OUTLINED_FUNCTION_31_16(v23 - 48, v143);
        OUTLINED_FUNCTION_25_14();
        v30 = v13 && v28 == v29;
        v31 = v30 ? 0 : sub_23136A900();
        OUTLINED_FUNCTION_9_23();
        sub_2311D1F18(v32, v33, v34);
        OUTLINED_FUNCTION_9_23();
        sub_2311D1F18(v35, v36, v37);
        v38 = v141 ^ v31;
        v20 = v9 + 1;
        v23 += 48;
        v25 = v26 + 1;
        v24 = v27 + 48;
        v4 = v6;
      }

      while ((v38 & 1) == 0);
      if (v141)
      {
        v39 = v136;
        if (v9 < v136)
        {
          goto LABEL_138;
        }

        if (v136 >= v9)
        {
          v6 = v134;
          v8 = v136;
          goto LABEL_31;
        }

        v6 = v134;
        do
        {
          if (v39 != v26)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_145;
            }

            v41 = (v40 + v22);
            v42 = (v40 + v27);
            v43 = *v41;
            v44 = v41[1];
            v45 = v41[2];
            v47 = v42[1];
            v46 = v42[2];
            *v41 = *v42;
            v41[1] = v47;
            v41[2] = v46;
            v42[1] = v44;
            v42[2] = v45;
            *v42 = v43;
          }

          ++v39;
          v27 -= 48;
          v22 += 48;
          v48 = v39 < v26--;
        }

        while (v48);
      }

      else
      {
        v6 = v134;
      }

      v8 = v136;
    }

LABEL_31:
    v49 = a3[1];
    if (v9 < v49)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_137;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v9 < v8)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_23126DB78();
      v6 = v124;
    }

    v79 = *(v6 + 2);
    v80 = v79 + 1;
    if (v79 >= *(v6 + 3) >> 1)
    {
      sub_23126DB78();
      v6 = v125;
    }

    *(v6 + 2) = v80;
    v81 = v6 + 32;
    v82 = &v6[16 * v79 + 32];
    *v82 = v8;
    *(v82 + 1) = v9;
    v140 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v141 = v9;
    if (v79)
    {
      while (1)
      {
        v83 = v80 - 1;
        v84 = &v81[16 * v80 - 16];
        v85 = &v6[16 * v80];
        if (v80 >= 4)
        {
          break;
        }

        if (v80 == 3)
        {
          v86 = *(v6 + 4);
          v87 = *(v6 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_74:
          if (v89)
          {
            goto LABEL_123;
          }

          v101 = *v85;
          v100 = *(v85 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_126;
          }

          v105 = *(v84 + 1);
          v106 = v105 - *v84;
          if (__OFSUB__(v105, *v84))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v103, v106))
          {
            goto LABEL_131;
          }

          if (v103 + v106 >= v88)
          {
            if (v88 < v106)
            {
              v83 = v80 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v80 < 2)
        {
          goto LABEL_125;
        }

        v108 = *v85;
        v107 = *(v85 + 1);
        v96 = __OFSUB__(v107, v108);
        v103 = v107 - v108;
        v104 = v96;
LABEL_89:
        if (v104)
        {
          goto LABEL_128;
        }

        v110 = *v84;
        v109 = *(v84 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_130;
        }

        if (v111 < v103)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v83 - 1 >= v80)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v115 = &v81[16 * v83 - 16];
        v116 = *v115;
        v117 = v83;
        v118 = &v81[16 * v83];
        v119 = *(v118 + 1);
        v120 = v145;
        sub_2312D1E78((*a3 + 48 * *v115), (*a3 + 48 * *v118), (*a3 + 48 * v119), v140);
        v145 = v120;
        if (v120)
        {
          goto LABEL_116;
        }

        if (v119 < v116)
        {
          goto LABEL_118;
        }

        v121 = v7;
        v122 = v81;
        v123 = v6;
        v6 = *(v6 + 2);
        if (v117 > v6)
        {
          goto LABEL_119;
        }

        *v115 = v116;
        *(v115 + 1) = v119;
        if (v117 >= v6)
        {
          goto LABEL_120;
        }

        v80 = (v6 - 1);
        sub_2311E6448(v118 + 16, &v6[-v117 - 1], v118);
        *(v123 + 2) = v6 - 1;
        v48 = v6 > 2;
        v6 = v123;
        v81 = v122;
        v7 = v121;
        if (!v48)
        {
          goto LABEL_103;
        }
      }

      v90 = &v81[16 * v80];
      v91 = *(v90 - 8);
      v92 = *(v90 - 7);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_121;
      }

      v95 = *(v90 - 6);
      v94 = *(v90 - 5);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_122;
      }

      v97 = *(v85 + 1);
      v98 = v97 - *v85;
      if (__OFSUB__(v97, *v85))
      {
        goto LABEL_124;
      }

      v96 = __OFADD__(v88, v98);
      v99 = v88 + v98;
      if (v96)
      {
        goto LABEL_127;
      }

      if (v99 >= v93)
      {
        v113 = *v84;
        v112 = *(v84 + 1);
        v96 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v96)
        {
          goto LABEL_135;
        }

        if (v88 < v114)
        {
          v83 = v80 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v5 = v141;
    v4 = a3[1];
    if (v141 >= v4)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_139;
  }

  if (v8 + a4 >= v49)
  {
    v50 = a3[1];
  }

  else
  {
    v50 = v8 + a4;
  }

  if (v50 < v8)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v9 == v50)
  {
    goto LABEL_54;
  }

  v51 = *a3;
  v52 = v8;
  v53 = *a3 + 48 * v9;
  v139 = v50;
  v141 = v9;
  v135 = v6;
  v137 = v52;
  v54 = v52 - v9;
LABEL_41:
  v55 = v54;
  v56 = v53;
  while (1)
  {
    OUTLINED_FUNCTION_31_16(v56, v144);
    v57 = v56 - 3;
    OUTLINED_FUNCTION_31_16((v56 - 3), v143);
    OUTLINED_FUNCTION_25_14();
    if (v13 && v58 == v59)
    {
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v73, v74, v75);
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v76, v77, v78);
LABEL_52:
      v53 += 48;
      --v54;
      if (++v141 == v139)
      {
        v9 = v139;
        v6 = v135;
        v8 = v137;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    v61 = sub_23136A900();
    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v62, v63, v64);
    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v65, v66, v67);
    if ((v61 & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v51)
    {
      break;
    }

    v69 = v56[1];
    v68 = v56[2];
    v70 = *v56;
    v71 = *(v56 - 2);
    *v56 = *v57;
    v56[1] = v71;
    v56[2] = *(v56 - 1);
    *v57 = v70;
    *(v56 - 2) = v69;
    v56 -= 3;
    v57[2] = v68;
    if (__CFADD__(v55++, 1))
    {
      goto LABEL_52;
    }
  }

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
}

void sub_2312D1498(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v131 = a1;
  v6 = sub_231368090();
  MEMORY[0x28223BE20](v6);
  v134 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v129 - v9;
  MEMORY[0x28223BE20](v10);
  v150 = &v129 - v11;
  v16 = MEMORY[0x28223BE20](v12);
  v149 = &v129 - v17;
  v139 = v15;
  v140 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_103:
    v150 = *v131;
    if (!v150)
    {
      goto LABEL_145;
    }

    a3 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v142;
    if (isUniquelyReferenced_nonNull_native)
    {
      v122 = a3;
LABEL_106:
      a3 = (v122 + 16);
      v123 = *(v122 + 2);
      while (v123 >= 2)
      {
        if (!*v140)
        {
          goto LABEL_142;
        }

        v124 = v122;
        v125 = &v122[16 * v123];
        v126 = *v125;
        v127 = a3 + 16 * v123;
        v128 = *(v127 + 8);
        sub_2312D2140(&(*v140)[*(v139 + 72) * *v125], &(*v140)[*(v139 + 72) * *v127], &(*v140)[*(v139 + 72) * v128], v150);
        if (v19)
        {
          break;
        }

        if (v128 < v126)
        {
          goto LABEL_130;
        }

        if (v123 - 2 >= *a3)
        {
          goto LABEL_131;
        }

        *v125 = v126;
        *(v125 + 1) = v128;
        v13 = *a3 - v123;
        if (*a3 < v123)
        {
          goto LABEL_132;
        }

        v123 = *a3 - 1;
        sub_2311E6448((v127 + 16), v13, v127);
        *a3 = v123;
        v122 = v124;
      }

LABEL_114:

      return;
    }

LABEL_139:
    v122 = sub_2311E6430(a3, v13, v14, v20);
    goto LABEL_106;
  }

  v129 = a4;
  v19 = 0;
  v147 = (v15 + 8);
  v148 = v15 + 16;
  v146 = (v15 + 32);
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v21 = v19++;
    if (v19 < v18)
    {
      v22 = v21;
      v23 = *(v15 + 72);
      v24 = &(*v140)[v23 * v19];
      v145 = *v140;
      v25 = v145;
      v26 = *(v15 + 16);
      v27 = v149;
      v138 = v20;
      v141 = v18;
      v26(v149, &v145[v23 * v19], v6, v16);
      v28 = &v25[v23 * v21];
      v29 = v150;
      v137 = v26;
      (v26)(v150, v28, v6);
      sub_231368050();
      v31 = v30;
      sub_231368050();
      v33 = v32;
      v34 = *(v139 + 8);
      v35 = v29;
      a3 = v147;
      v34(v35, v6);
      v136 = v34;
      v34(v27, v6);
      v36 = v141;
      v20 = v138;
      v130 = v22;
      v37 = v22 + 2;
      v143 = v23;
      v38 = &v145[v23 * (v22 + 2)];
      while (1)
      {
        v39 = v37;
        v40 = v19 + 1;
        if (v40 >= v36)
        {
          break;
        }

        LODWORD(v145) = v31 < v33;
        v41 = v149;
        v42 = v137;
        (v137)(v149, v38, v6, v20);
        v43 = v40;
        v44 = v150;
        v42(v150, v24, v6);
        sub_231368050();
        v46 = v45;
        sub_231368050();
        v48 = v47;
        v49 = v44;
        v19 = v43;
        a3 = v147;
        v50 = v136;
        (v136)(v49, v6);
        v50(v41, v6);
        v36 = v141;
        v20 = v138;
        v38 = &v143[v38];
        v24 += v143;
        v37 = v39 + 1;
        if (((v145 ^ (v46 >= v48)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v19 = v36;
LABEL_9:
      if (v31 >= v33)
      {
        v15 = v139;
      }

      else
      {
        v21 = v130;
        if (v19 < v130)
        {
          goto LABEL_136;
        }

        if (v130 >= v19)
        {
          v15 = v139;
          goto LABEL_32;
        }

        if (v36 >= v39)
        {
          v51 = v39;
        }

        else
        {
          v51 = v36;
        }

        a3 = v143 * (v51 - 1);
        v52 = v130;
        v53 = v143 * v51;
        v54 = v130 * v143;
        v55 = v19;
        do
        {
          if (v52 != --v55)
          {
            v56 = *v140;
            if (!*v140)
            {
              goto LABEL_143;
            }

            v145 = *v146;
            (v145)(v134, &v56[v54], v6, v20);
            v57 = v54 < a3 || &v56[v54] >= &v56[v53];
            if (v57)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v54 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v145)(&v56[a3], v134, v6);
          }

          ++v52;
          a3 -= v143;
          v53 -= v143;
          v54 += v143;
        }

        while (v52 < v55);
        v20 = v138;
        v15 = v139;
      }

      v21 = v130;
    }

LABEL_32:
    v58 = v140[1];
    if (v19 < v58)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_135;
      }

      if (v19 - v21 < v129)
      {
        break;
      }
    }

LABEL_48:
    if (v19 < v21)
    {
      goto LABEL_134;
    }

    v77 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v77;
    }

    else
    {
      sub_23126DB78();
      v20 = v119;
    }

    a3 = v20[2];
    v78 = a3 + 1;
    if (a3 >= v20[3] >> 1)
    {
      sub_23126DB78();
      v20 = v120;
    }

    v20[2] = v78;
    v79 = v20 + 4;
    v80 = &v20[2 * a3 + 4];
    *v80 = v21;
    v80[1] = v19;
    v145 = *v131;
    if (!v145)
    {
      goto LABEL_144;
    }

    if (a3)
    {
      v141 = v19;
      while (1)
      {
        v81 = v78 - 1;
        v82 = &v79[2 * v78 - 2];
        v83 = &v20[2 * v78];
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v84 = v20[4];
          v85 = v20[5];
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_69:
          if (v87)
          {
            goto LABEL_121;
          }

          v99 = *v83;
          v98 = v83[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_124;
          }

          v103 = v82[1];
          v104 = v103 - *v82;
          if (__OFSUB__(v103, *v82))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_129;
          }

          if (v101 + v104 >= v86)
          {
            if (v86 < v104)
            {
              v81 = v78 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v78 < 2)
        {
          goto LABEL_123;
        }

        v106 = *v83;
        v105 = v83[1];
        v94 = __OFSUB__(v105, v106);
        v101 = v105 - v106;
        v102 = v94;
LABEL_84:
        if (v102)
        {
          goto LABEL_126;
        }

        v108 = *v82;
        v107 = v82[1];
        v94 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v94)
        {
          goto LABEL_128;
        }

        if (v109 < v101)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v81 - 1 >= v78)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v140)
        {
          goto LABEL_141;
        }

        v19 = v20;
        a3 = &v79[2 * v81 - 2];
        v113 = *a3;
        v114 = v81;
        v115 = &v79[2 * v81];
        v116 = *(v115 + 1);
        v117 = v142;
        sub_2312D2140(&(*v140)[*(v139 + 72) * *a3], &(*v140)[*(v139 + 72) * *v115], &(*v140)[*(v139 + 72) * v116], v145);
        v142 = v117;
        if (v117)
        {
          goto LABEL_114;
        }

        if (v116 < v113)
        {
          goto LABEL_116;
        }

        v118 = *(v19 + 16);
        if (v114 > v118)
        {
          goto LABEL_117;
        }

        *a3 = v113;
        *(a3 + 8) = v116;
        if (v114 >= v118)
        {
          goto LABEL_118;
        }

        v78 = v118 - 1;
        sub_2311E6448(v115 + 16, v118 - 1 - v114, v115);
        v20 = v19;
        *(v19 + 16) = v118 - 1;
        v19 = v141;
        if (v118 <= 2)
        {
          goto LABEL_98;
        }
      }

      v88 = &v79[2 * v78];
      v89 = *(v88 - 8);
      v90 = *(v88 - 7);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_119;
      }

      v93 = *(v88 - 6);
      v92 = *(v88 - 5);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_120;
      }

      v95 = v83[1];
      v96 = v95 - *v83;
      if (__OFSUB__(v95, *v83))
      {
        goto LABEL_122;
      }

      v94 = __OFADD__(v86, v96);
      v97 = v86 + v96;
      if (v94)
      {
        goto LABEL_125;
      }

      if (v97 >= v91)
      {
        v111 = *v82;
        v110 = v82[1];
        v94 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v94)
        {
          goto LABEL_133;
        }

        if (v86 < v112)
        {
          v81 = v78 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v15 = v139;
    v18 = v140[1];
    if (v19 >= v18)
    {
      goto LABEL_103;
    }
  }

  v59 = v21 + v129;
  if (__OFADD__(v21, v129))
  {
    goto LABEL_137;
  }

  if (v59 >= v58)
  {
    v59 = v140[1];
  }

  if (v59 < v21)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v19 == v59)
  {
    goto LABEL_48;
  }

  v138 = v20;
  v60 = *v140;
  v61 = *(v15 + 72);
  v145 = *(v15 + 16);
  v62 = &v60[v61 * (v19 - 1)];
  v63 = -v61;
  v130 = v21;
  v64 = (v21 - v19);
  v143 = v60;
  v132 = v61;
  v65 = &v60[v19 * v61];
  v133 = v59;
LABEL_41:
  v141 = v19;
  v135 = v65;
  v136 = v64;
  v137 = v62;
  while (1)
  {
    v66 = v149;
    v67 = v145;
    (v145)(v149, v65, v6);
    v68 = v150;
    v67(v150, v62, v6);
    sub_231368050();
    v70 = v69;
    sub_231368050();
    v72 = v71;
    v73 = *v147;
    (*v147)(v68, v6);
    v74 = v66;
    a3 = v6;
    v73(v74, v6);
    if (v70 >= v72)
    {
LABEL_46:
      v19 = v141 + 1;
      v62 = &v137[v132];
      v64 = v136 - 1;
      v65 = &v135[v132];
      if (v141 + 1 == v133)
      {
        v19 = v133;
        v20 = v138;
        v21 = v130;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v143)
    {
      break;
    }

    v75 = *v146;
    v76 = v144;
    (*v146)(v144, v65, v6);
    swift_arrayInitWithTakeFrontToBack();
    v75(v62, v76, v6);
    v62 += v63;
    v65 += v63;
    v57 = __CFADD__(v64++, 1);
    if (v57)
    {
      goto LABEL_46;
    }
  }

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
}

uint64_t sub_2312D1E78(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_23126F7B0(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_31_16(v6, &v45);
      OUTLINED_FUNCTION_31_16(v4, &v43);
      v12 = v45 == v43 && v46 == v44;
      if (v12)
      {
        break;
      }

      v13 = sub_23136A900();
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v14, v15, v16);
      OUTLINED_FUNCTION_9_23();
      sub_2311D1F18(v17, v18, v19);
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }

      v20 = v6;
      v12 = v7 == v6;
      v6 += 48;
      if (!v12)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 48;
    }

    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v21, v22, v23);
    OUTLINED_FUNCTION_9_23();
    sub_2311D1F18(v24, v25, v26);
LABEL_16:
    v20 = v4;
    v12 = v7 == v4;
    v4 += 48;
    if (v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v27 = *v20;
    v28 = *(v20 + 2);
    *(v7 + 1) = *(v20 + 1);
    *(v7 + 2) = v28;
    *v7 = v27;
    goto LABEL_18;
  }

  sub_23126F7B0(a2, (a3 - a2) / 48, a4);
  v29 = &v4[48 * v9];
  v47 = v4;
LABEL_20:
  v30 = (v6 - 48);
  v5 -= 48;
  for (i = v29 - 48; ; i -= 48)
  {
    v10 = i + 48;
    if (i + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_2311E66F0(i, &v45, &qword_27DD43558, &qword_231374890);
    v33 = v30;
    sub_2311E66F0(v30, &v43, &qword_27DD43558, &qword_231374890);
    if (v45 == v43 && v46 == v44)
    {
      v35 = 0;
    }

    else
    {
      v35 = sub_23136A900();
    }

    sub_2311D1F18(&v43, &qword_27DD43558, &qword_231374890);
    sub_2311D1F18(&v45, &qword_27DD43558, &qword_231374890);
    if (v35)
    {
      v29 = i + 48;
      v12 = v5 + 48 == v6;
      v6 = v33;
      v4 = v47;
      if (!v12)
      {
        v38 = *v33;
        v39 = *(v33 + 2);
        *(v5 + 1) = *(v33 + 1);
        *(v5 + 2) = v39;
        *v5 = v38;
        v6 = v33;
      }

      goto LABEL_20;
    }

    if (v10 != v5 + 48)
    {
      v36 = *i;
      v37 = *(i + 2);
      *(v5 + 1) = *(i + 1);
      *(v5 + 2) = v37;
      *v5 = v36;
    }

    v5 -= 48;
    v30 = v33;
    v4 = v47;
  }

LABEL_39:
  v40 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v40])
  {
    memmove(v6, v4, 48 * v40);
  }

  return 1;
}

void sub_2312D2140(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v59 = a4;
  v8 = sub_231368090();
  MEMORY[0x28223BE20](v8);
  v65 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = v55 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v14;
  v68 = a1;
  v67 = v59;
  v62 = (v11 + 8);
  v63 = (v11 + 16);
  v19 = v16 / v14;
  v55[1] = v4;
  if (v18 >= v16 / v14)
  {
    v60 = a1;
    sub_23126F76C(a2, v16 / v14, v59);
    v32 = v59;
    v33 = v59 + v19 * v14;
    v34 = -v14;
    v35 = v33;
    v57 = -v14;
LABEL_37:
    v61 = a2 + v34;
    v36 = a3;
    v55[0] = v35;
    v58 = a2;
    while (1)
    {
      if (v33 <= v32)
      {
        v68 = a2;
        v66 = v35;
        goto LABEL_59;
      }

      if (a2 <= v60)
      {
        break;
      }

      v56 = v35;
      v37 = v36 + v34;
      v38 = v33 + v34;
      v39 = v64;
      v40 = *v63;
      v41 = v33;
      (*v63)(v64, v33 + v34, v8);
      v42 = v65;
      v40(v65, v61, v8);
      sub_231368050();
      v44 = v43;
      sub_231368050();
      v46 = v45;
      v47 = *v62;
      (*v62)(v42, v8);
      v47(v39, v8);
      if (v44 < v46)
      {
        v51 = v36 < v58 || v37 >= v58;
        a3 = v36 + v34;
        if (v51)
        {
          v52 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v52;
          v35 = v56;
          v34 = v57;
          v32 = v59;
          v33 = v41;
        }

        else
        {
          v53 = v56;
          v34 = v57;
          v35 = v56;
          v54 = v61;
          v32 = v59;
          v33 = v41;
          a2 = v61;
          if (v36 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
            v33 = v41;
            v32 = v59;
            a2 = v54;
            v35 = v53;
          }
        }

        goto LABEL_37;
      }

      v48 = v36 < v41 || v37 >= v41;
      v49 = v36 + v34;
      v50 = v58;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 += v34;
        v33 = v38;
        v35 = v38;
        v32 = v59;
        v34 = v57;
        a2 = v50;
      }

      else
      {
        v35 = v38;
        v15 = v41 == v36;
        v36 += v34;
        v33 = v38;
        v32 = v59;
        v34 = v57;
        a2 = v58;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v59;
          v36 = v49;
          v33 = v38;
          v35 = v38;
        }
      }
    }

    v68 = a2;
    v66 = v55[0];
  }

  else
  {
    v61 = a3;
    sub_23126F76C(a1, (a2 - a1) / v14, v59);
    v20 = v59;
    v60 = v59 + v18 * v14;
    v66 = v60;
    v21 = v65;
    while (v20 < v60 && a2 < v61)
    {
      v23 = v64;
      v24 = *v63;
      (*v63)(v64, a2, v8);
      v24(v21, v20, v8);
      sub_231368050();
      v26 = v25;
      sub_231368050();
      v28 = v27;
      v29 = *v62;
      (*v62)(v21, v8);
      v29(v23, v8);
      if (v26 >= v28)
      {
        if (a1 < v20 || a1 >= v20 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v67 = v20 + v14;
        v20 += v14;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      a1 += v14;
      v68 = a1;
    }
  }

LABEL_59:
  sub_23120C4FC(&v68, &v67, &v66);
}

uint64_t sub_2312D2660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2312D26A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312D275C()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;
  v4 = OUTLINED_FUNCTION_28_0();

  return sub_2312CF0B4(v4, v5, v2);
}

uint64_t OUTLINED_FUNCTION_44_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void sub_2312D2888(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2312D32E0(319, &qword_280F7C958, MEMORY[0x277D61250]);
    if (v2 <= 0x3F)
    {
      sub_2312D3288(319);
      if (v3 <= 0x3F)
      {
        sub_2312D3334(319, &qword_280F7C788, MEMORY[0x277D83E88]);
        if (v4 <= 0x3F)
        {
          sub_2312D32E0(319, &qword_280F7CA18, MEMORY[0x277D60C90]);
          if (v5 <= 0x3F)
          {
            sub_231368BC0();
            if (v6 <= 0x3F)
            {
              sub_2312D3334(319, &qword_280F7C800, MEMORY[0x277D839F8]);
              if (v7 <= 0x3F)
              {
                sub_231367C70();
                if (v8 <= 0x3F)
                {
                  sub_231369050();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2312D2A00(unsigned __int16 *a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  v39 = *(a3 + 16);
  v5 = *(v39 - 8);
  v6 = *(v5 + 84);
  v37 = sub_231368BC0();
  v7 = *(v37 - 8);
  v38 = *(v7 + 84);
  v40 = v6;
  if (v6 <= v38)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = v6;
  }

  v35 = sub_231367C70();
  v9 = *(v35 - 8);
  v36 = *(v9 + 84);
  if (v8 <= v36)
  {
    v8 = *(v9 + 84);
  }

  v10 = sub_231369050();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 + 64);
  v16 = *(v7 + 80);
  v17 = *(v9 + 80);
  v18 = *(v11 + 80);
  v19 = *(*(v10 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = v10;
  v21 = *(v7 + 64) + 7;
  v22 = v17 + 9;
  v23 = *(v9 + 64) + v18;
  v24 = a1;
  if (a2 <= v14)
  {
    goto LABEL_33;
  }

  v25 = ((v23 + ((v22 + ((v21 + ((v16 + ((((((v15 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & ~v18) + v19;
  v26 = 8 * v25;
  if (v25 > 3)
  {
    goto LABEL_15;
  }

  v29 = ((a2 - v14 + ~(-1 << v26)) >> v26) + 1;
  if (HIWORD(v29))
  {
    v27 = *(a1 + v25);
    if (v27)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v29 <= 0xFF)
    {
      if (v29 < 2)
      {
        goto LABEL_33;
      }

LABEL_15:
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_33;
      }

LABEL_23:
      v30 = (v27 - 1) << v26;
      if (v25 > 3)
      {
        v30 = 0;
      }

      if (v25)
      {
        if (v25 <= 3)
        {
          v31 = v25;
        }

        else
        {
          v31 = 4;
        }

        switch(v31)
        {
          case 2:
            v32 = *a1;
            break;
          case 3:
            v32 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v32 = *a1;
            break;
          default:
            v32 = *a1;
            break;
        }
      }

      else
      {
        v32 = 0;
      }

      return v14 + (v32 | v30) + 1;
    }

    v27 = *(a1 + v25);
    if (*(a1 + v25))
    {
      goto LABEL_23;
    }
  }

LABEL_33:
  if (v40 == v14)
  {
    v12 = v40;
    v20 = v39;
    goto LABEL_35;
  }

  v33 = a1 + v15;
  if ((v13 & 0x80000000) != 0)
  {
    v24 = ((v16 + ((((((v33 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v16);
    if (v38 == v14)
    {
      v12 = v38;
      v20 = v37;
    }

    else
    {
      v24 = ((v22 + ((v24 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17);
      if (v36 == v14)
      {
        v12 = v36;
        v20 = v35;
      }

      else
      {
        v24 = ((v24 + v23) & ~v18);
      }
    }

LABEL_35:

    return __swift_getEnumTagSinglePayload(v24, v12, v20);
  }

  v34 = *(((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
  if (v34 >= 0xFFFFFFFF)
  {
    LODWORD(v34) = -1;
  }

  return (v34 + 1);
}

void sub_2312D2DF0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  v40 = *(a4 + 16);
  v5 = *(v40 - 8);
  v6 = *(v5 + 84);
  v38 = sub_231368BC0();
  v7 = *(v38 - 8);
  v39 = *(v7 + 84);
  if (v6 <= v39)
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = v6;
  }

  v36 = sub_231367C70();
  v9 = *(v36 - 8);
  v37 = *(v9 + 84);
  if (v8 <= v37)
  {
    v8 = *(v9 + 84);
  }

  v10 = sub_231369050();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 + 64);
  v16 = *(v7 + 80);
  v17 = *(v7 + 64) + 7;
  v18 = *(v9 + 80);
  v19 = v18 + 9;
  v20 = *(v9 + 64);
  v21 = *(v11 + 80);
  v22 = ((v20 + v21 + ((v18 + 9 + ((v17 + ((v16 + ((((((v15 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v18)) & ~v21) + *(*(v10 - 8) + 64);
  v23 = 8 * v22;
  if (a3 <= v14)
  {
    v26 = 0;
    v24 = a1;
    v25 = a2;
  }

  else
  {
    v24 = a1;
    v25 = a2;
    if (v22 <= 3)
    {
      v30 = ((a3 - v14 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v30))
      {
        v26 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v26 = v31;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      v26 = 1;
    }
  }

  if (v14 >= v25)
  {
    v29 = ~v18;
    switch(v26)
    {
      case 1:
        v24[v22] = 0;
        if (v25)
        {
          goto LABEL_35;
        }

        return;
      case 2:
        *&v24[v22] = 0;
        if (v25)
        {
          goto LABEL_35;
        }

        return;
      case 3:
LABEL_59:
        __break(1u);
        return;
      case 4:
        *&v24[v22] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (!v25)
        {
          return;
        }

LABEL_35:
        if (v6 == v14)
        {
          v33 = v24;
          v12 = v6;
          v10 = v40;
        }

        else
        {
          v34 = &v24[v15];
          if ((v13 & 0x80000000) == 0)
          {
            v35 = (v34 + 7) & 0xFFFFFFFFFFFFFFF8;
            if ((v25 & 0x80000000) != 0)
            {
              *(v35 + 8) = 0u;
              *(v35 + 24) = 0u;
              *v35 = v25 & 0x7FFFFFFF;
            }

            else
            {
              *(v35 + 24) = (v25 - 1);
            }

            return;
          }

          v33 = (v16 + ((((((v34 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v16;
          if (v39 == v14)
          {
            v12 = v39;
            v10 = v38;
          }

          else
          {
            v33 = (v19 + ((v17 + v33) & 0xFFFFFFFFFFFFFFF8)) & v29;
            if (v37 == v14)
            {
              v12 = v37;
              v10 = v36;
            }

            else
            {
              v33 = (v20 + v21 + v33) & ~v21;
            }
          }
        }

        __swift_storeEnumTagSinglePayload(v33, v25, v12, v10);
        break;
    }
  }

  else
  {
    v27 = ~v14 + v25;
    if (v22 < 4)
    {
      v28 = (v27 >> v23) + 1;
      if (v22)
      {
        v32 = v27 & ~(-1 << v23);
        bzero(v24, v22);
        if (v22 == 3)
        {
          *v24 = v32;
          v24[2] = BYTE2(v32);
        }

        else if (v22 == 2)
        {
          *v24 = v32;
        }

        else
        {
          *v24 = v27;
        }
      }
    }

    else
    {
      bzero(v24, v22);
      *v24 = v27;
      v28 = 1;
    }

    switch(v26)
    {
      case 1:
        v24[v22] = v28;
        break;
      case 2:
        *&v24[v22] = v28;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&v24[v22] = v28;
        break;
      default:
        return;
    }
  }
}

void sub_2312D3288(uint64_t a1)
{
  if (!qword_280F7C8F8)
  {
    sub_2313692F0();
    v1 = sub_23136A4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280F7C8F8);
    }
  }
}

uint64_t sub_2312D32E0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_2312D3334(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_23136A4D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2312D3380(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD445F0, &unk_2313749D0);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_2312DB008(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_2312D3418()
{
  sub_2313678D0();
  sub_231210C60();

  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2311D1F18(v2, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_2312D350C(void *a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12);
  v16 = a2[3];
  v17 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_4();
  v21 = v20 - v19;
  (*(v22 + 16))(v20 - v19);
  v23 = a4(v14, v21, a3, v5, v10, v16, v9, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v23;
}

uint64_t ConfigurablePresentationService.getView(rankedCandidate:environment:)()
{
  OUTLINED_FUNCTION_8();
  v1[127] = v0;
  v1[126] = v2;
  v1[125] = v3;
  v1[124] = v4;
  v1[128] = *v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  OUTLINED_FUNCTION_40_0(v5);
  v1[129] = OUTLINED_FUNCTION_43();
  v6 = type metadata accessor for ViewDetails(0);
  v1[130] = v6;
  OUTLINED_FUNCTION_40_0(v6);
  v1[131] = OUTLINED_FUNCTION_43();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44710, &qword_231375250);
  OUTLINED_FUNCTION_40_0(v7);
  v1[132] = OUTLINED_FUNCTION_43();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  OUTLINED_FUNCTION_40_0(v8);
  v1[133] = OUTLINED_FUNCTION_67();
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v9 = sub_231369090();
  v1[136] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[137] = v10;
  v1[138] = OUTLINED_FUNCTION_43();
  v11 = sub_2313686B0();
  v1[139] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[140] = v12;
  v1[141] = OUTLINED_FUNCTION_67();
  v1[142] = swift_task_alloc();
  v13 = sub_2313698C0();
  v1[143] = v13;
  OUTLINED_FUNCTION_0(v13);
  v1[144] = v14;
  v1[145] = OUTLINED_FUNCTION_67();
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v15 = sub_231368180();
  v1[150] = v15;
  OUTLINED_FUNCTION_0(v15);
  v1[151] = v16;
  v1[152] = OUTLINED_FUNCTION_43();
  v17 = sub_231367C70();
  v1[153] = v17;
  OUTLINED_FUNCTION_0(v17);
  v1[154] = v18;
  v1[155] = OUTLINED_FUNCTION_43();
  v19 = sub_231366860();
  v1[156] = v19;
  OUTLINED_FUNCTION_0(v19);
  v1[157] = v20;
  v1[158] = OUTLINED_FUNCTION_43();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  OUTLINED_FUNCTION_40_0(v21);
  v1[159] = OUTLINED_FUNCTION_43();
  v22 = sub_231367D80();
  v1[160] = v22;
  OUTLINED_FUNCTION_0(v22);
  v1[161] = v23;
  v1[162] = OUTLINED_FUNCTION_67();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2312D3AA4()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 1272);
  v3 = *(v0 + 1000);
  v4 = type metadata accessor for RankedCandidateSuggestion(0);
  *(v0 + 1320) = v4;
  v5 = *(v4 + 20);
  *(v0 + 1944) = v5;
  sub_2311CF388(v3 + v5, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_54_0();
  sub_2313682C0();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_2311D1F18(*(v0 + 1272), &qword_27DD42F18, &unk_23136B810);
    sub_2313690F0();
    v6 = sub_2313698A0();
    v7 = sub_23136A390();
    if (OUTLINED_FUNCTION_40_1(v7))
    {
      v8 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v8);
      OUTLINED_FUNCTION_57(&dword_2311CB000, v9, v10, "[warning] PresentationService: candidate does not have delivery vehicle set. Returning nil SuggestionViewDetails");
      OUTLINED_FUNCTION_9_10();
    }

    v11 = *(v0 + 992);

    v12 = OUTLINED_FUNCTION_28_0();
    v13(v12);
    v14 = type metadata accessor for SuggestionViewDetails(0);
    OUTLINED_FUNCTION_106_0(v11, v15, v16, v14);
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_91_0();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  v19 = *(v0 + 1312);
  v20 = *(v0 + 1304);
  v21 = *(v0 + 1288);
  v22 = *(v0 + 1280);
  v23 = *(v0 + 1008);
  (*(v21 + 32))(v19, *(v0 + 1272), v22);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_231368320();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_231368360();
  v24 = *(v21 + 16);
  *(v0 + 1328) = v24;
  *(v0 + 1336) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v20, v19, v22);
  sub_231367910();
  swift_allocObject();
  *(v0 + 984) = sub_2313678F0();
  v25 = sub_2313672F0();
  if ((v26 & 1) == 0)
  {
    sub_2312D84B0(*&v25);
  }

  OUTLINED_FUNCTION_3_28();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v0 + 1344) = v27;
  swift_getObjectType();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 1352) = v28;
  *v28 = v29;
  v28[1] = sub_2312D3E84;
  OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2821C7790](v30, v31, v32);
}

uint64_t sub_2312D3E84()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312D3F84()
{
  v1 = *(v0 + 1208);
  sub_2312D8534((v0 + 16), (v0 + 56));
  v2 = OUTLINED_FUNCTION_28_0();
  v3(v2);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_27();
  v4 = sub_231368320();
  v6 = v5;
  *(v0 + 1360) = v4;
  *(v0 + 1368) = v5;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_2313682A0();
  sub_2313676F0();

  sub_231368140();
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v0 + 1376) = v8;
  *(v0 + 1384) = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = OUTLINED_FUNCTION_71();
  v10(v9);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2313688F0();
  if (*(v0 + 200))
  {
    sub_2311D38A8((v0 + 176), v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    v12 = swift_task_alloc();
    *(v0 + 1392) = v12;
    *v12 = v0;
    v12[1] = sub_2312D44C0;
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_33_0();

    return sub_2312DB7CC(v13, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    sub_2311D1F18(v0 + 176, &qword_27DD44718, &qword_231375258);
    *(v0 + 1416) = 0u;
    OUTLINED_FUNCTION_126();
    v22 = *MEMORY[0x277D607E0];
    *(v0 + 1948) = v22;
    *(v0 + 1432) = sub_231367020();
    OUTLINED_FUNCTION_46_0();
    *(v0 + 1440) = v23;
    v24 = OUTLINED_FUNCTION_92_0(v23);
    v26 = v25(v24);
    v27 = OUTLINED_FUNCTION_68_5(v26, *MEMORY[0x277D60BA0]);
    v28(v27);
    sub_231311D04(v6, v11);
    v29 = OUTLINED_FUNCTION_79_3();
    (v22)(v29);
    if (v6)
    {
      sub_2313690F0();
      sub_231369EE0();
      v30 = sub_2313698A0();
      v31 = sub_23136A3A0();

      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_66_5();
        OUTLINED_FUNCTION_98_0();
        v50 = OUTLINED_FUNCTION_97_0();
        v32 = OUTLINED_FUNCTION_139(4.8149e-34);

        *(v7 + 4) = v32;
        OUTLINED_FUNCTION_138(&dword_2311CB000, v33, v34, "Suggestion %s has siriHintsSpoken deliveryVehicle but does not have preambleOverride specified. Returning nil SuggestionViewDetails");
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_88_0();

        (*(v6 + 8))();
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
        v36 = v48;
        v35 = v49;
      }

      else
      {
        OUTLINED_FUNCTION_116();

        v41 = OUTLINED_FUNCTION_134();
        v42(v41);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
        v35 = OUTLINED_FUNCTION_28_0();
      }

      (v22)(v35, v36);
      OUTLINED_FUNCTION_118();
      type metadata accessor for SuggestionViewDetails(0);
      v43 = OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_106_0(v43, v44, v45, v46);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
      OUTLINED_FUNCTION_0_32();
      OUTLINED_FUNCTION_19_17();
      OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_91_0();

      OUTLINED_FUNCTION_56_0();

      return v47();
    }

    else
    {
      OUTLINED_FUNCTION_3_28();
      sub_231368300();
      OUTLINED_FUNCTION_90();
      *(v0 + 1496) = v37;
      swift_getObjectType();
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v0 + 1504) = v38;
      *v38 = v39;
      v40 = OUTLINED_FUNCTION_38_10(v38);

      return MEMORY[0x2821C77C0](v40);
    }
  }
}

uint64_t sub_2312D44C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1400) = v3;
  *(v1 + 1408) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312D45AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 136));
  v4 = *(v2 + 1408);
  v5 = *(v2 + 1400);
  *(v2 + 1424) = v4;
  *(v2 + 1416) = v5;
  OUTLINED_FUNCTION_126();
  v6 = *MEMORY[0x277D607E0];
  *(v2 + 1948) = v6;
  *(v2 + 1432) = sub_231367020();
  OUTLINED_FUNCTION_46_0();
  *(v2 + 1440) = v7;
  v8 = OUTLINED_FUNCTION_92_0(v7);
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_68_5(v10, *MEMORY[0x277D60BA0]);
  v12(v11);
  sub_231311D04(v1, v0);
  v13 = OUTLINED_FUNCTION_79_3();
  (v6)(v13);
  if ((v1 & 1) != 0 && !v4)
  {
    sub_2313690F0();
    sub_231369EE0();
    v14 = sub_2313698A0();
    v15 = sub_23136A3A0();

    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_66_5();
      OUTLINED_FUNCTION_98_0();
      v37 = OUTLINED_FUNCTION_97_0();
      v16 = OUTLINED_FUNCTION_139(4.8149e-34);

      *(v3 + 4) = v16;
      OUTLINED_FUNCTION_138(&dword_2311CB000, v17, v18, "Suggestion %s has siriHintsSpoken deliveryVehicle but does not have preambleOverride specified. Returning nil SuggestionViewDetails");
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_88_0();

      (*(v1 + 8))();
      __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
      v20 = v35;
      v19 = v36;
    }

    else
    {
      OUTLINED_FUNCTION_116();

      v26 = OUTLINED_FUNCTION_134();
      v27(v26);
      __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
      v19 = OUTLINED_FUNCTION_28_0();
    }

    (v6)(v19, v20);
    OUTLINED_FUNCTION_118();
    type metadata accessor for SuggestionViewDetails(0);
    v28 = OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_106_0(v28, v29, v30, v31);
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 96));
    OUTLINED_FUNCTION_0_32();
    OUTLINED_FUNCTION_19_17();
    OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_91_0();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_33_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_3_28();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  *(v2 + 1496) = v21;
  swift_getObjectType();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v2 + 1504) = v22;
  *v22 = v23;
  OUTLINED_FUNCTION_38_10(v22);
  OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2821C77C0](v24);
}

uint64_t sub_2312D4910()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  swift_unknownObjectRelease();
  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312D4A10()
{
  sub_2312DC674((v0 + 27), (v0 + 32), &qword_27DD44720, &qword_231375260);
  if (v0[35])
  {
    OUTLINED_FUNCTION_3_2(v0 + 32);
    OUTLINED_FUNCTION_29_13();
    sub_2313688D0();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  }

  else
  {
    sub_2311D1F18((v0 + 32), &qword_27DD44720, &qword_231375260);
  }

  OUTLINED_FUNCTION_3_2(v0 + 12);
  OUTLINED_FUNCTION_57_10();
  sub_2313688D0();
  sub_231368890();
  swift_allocObject();
  v1 = sub_231368880();
  v0[189] = v1;
  sub_2312DC674((v0 + 27), (v0 + 37), &qword_27DD44720, &qword_231375260);
  if (v0[40])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 37, v0[40]);
    sub_2313688C0();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 37);
  }

  else
  {
    sub_2311D1F18((v0 + 37), &qword_27DD44720, &qword_231375260);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_2313688C0();
  swift_allocObject();
  v0[190] = sub_231368880();

  v2 = swift_task_alloc();
  v0[191] = v2;
  *v2 = v0;
  v2[1] = sub_2312D4C4C;
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_129();

  return sub_2312DB234(v1, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_2312D4C4C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 1536) = v5;
  *(v6 + 1544) = v7;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D4D50()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 1016);

  v2 = swift_task_alloc();
  *(v0 + 1552) = v2;
  *v2 = v0;
  v2[1] = sub_2312D4E00;
  OUTLINED_FUNCTION_24_17();

  return sub_2312DB234(v6, v3, v4, v0 + 56, v5, v1 + 56, v0 + 984);
}

uint64_t sub_2312D4E00()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 1560) = v5;
  *(v6 + 1568) = v7;

  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2312D4F04()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_3_28();
  v0[197] = sub_231368300();
  v0[198] = v1;
  v0[199] = swift_getObjectType();
  OUTLINED_FUNCTION_3_28();
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[200] = v2;
  v0[201] = v3;
  v0[202] = swift_getObjectType();
  sub_23136A260();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D4FB8()
{
  OUTLINED_FUNCTION_8();
  sub_231369380();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_2312D5028()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[45];
  v2 = v0[46];
  __swift_project_boxed_opaque_existential_1(v0 + 42, v1);
  v0[50] = v1;
  v0[51] = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v0 + 47);
  OUTLINED_FUNCTION_26_0();
  (*(v3 + 16))();
  sub_23136A260();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2312D5104()
{
  OUTLINED_FUNCTION_8();
  sub_231369430();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 336));
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}