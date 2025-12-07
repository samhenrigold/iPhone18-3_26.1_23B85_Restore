uint64_t sub_23127C7E8(uint64_t a1)
{
  v2 = sub_231366920();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44130, &unk_231371788);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_2311EB398(a1, v10 - v7, &qword_27DD44130, &unk_231371788);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44120, &qword_231371778);
    return sub_23136A270();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44120, &qword_231371778);
    return sub_23136A280();
  }
}

uint64_t CATDialogService.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_templateDirectory;
  sub_231366690();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_catOption;
  sub_231366D50();
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v0 + v3);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_execution));
  return v0;
}

uint64_t CATDialogService.__deallocating_deinit()
{
  CATDialogService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_23127CA84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23127CB44;

  return CATDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)();
}

uint64_t sub_23127CB44()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_65();
  }

  return v5(v4);
}

uint64_t sub_23127CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_231366CC0();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v10 = swift_allocObject();
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;

  sub_231366CB0();

  return sub_2312777C0(v12, &qword_27DD44128, &qword_231371780);
}

uint64_t sub_23127CD38(uint64_t (*a1)(void))
{
  a1();

  return sub_23136AA70();
}

uint64_t sub_23127CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_231366690();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DialogEngineCATExecution();
  v18 = &off_2845F4978;
  *&v16 = a3;
  static CATDialogService.createPlatformSafePath(templatesUrl:)(v11);
  (*(v9 + 8))(a1, v8);
  (*(v9 + 32))(a4 + OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_templateDirectory, v11, v8);
  v12 = OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_catOption;
  v13 = sub_231366D50();
  (*(*(v13 - 8) + 32))(a4 + v12, a2, v13);
  sub_2311D38A8(&v16, a4 + OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_execution);
  return a4;
}

uint64_t sub_23127CEF4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = *a3;
  v16 = &off_2845F4978;
  v14[0] = a3;
  type metadata accessor for CATDialogService(0);
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v14[-1] - v8);
  (*(v10 + 16))(&v14[-1] - v8, v7);
  v11 = sub_23127CD74(a1, a2, *v9, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v11;
}

void *sub_23127D034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  v21 = sub_23127D214(v19, v14, v20, a4, a5, a6, v24);
  (*(v12 + 8))(a2, a5);
  (*(v16 + 8))(a1, a4);
  return v21;
}

void *sub_23127D214(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[5] = a4;
  a3[6] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  a3[10] = a5;
  a3[11] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1(a3 + 7);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  return a3;
}

unint64_t sub_23127D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD440E0;
  if (!qword_27DD440E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD440E0);
  }

  return result;
}

unint64_t sub_23127D34C()
{
  result = qword_280F7C790;
  if (!qword_280F7C790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C790);
  }

  return result;
}

uint64_t sub_23127D390()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  v2 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_20_14(v3);

  return sub_23127ABFC(v5, v6, v2);
}

uint64_t sub_23127D428()
{
  OUTLINED_FUNCTION_38_1();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_20_14(v5);

  return sub_2312796E8(v7, v8, v2, v3, v4);
}

uint64_t type metadata accessor for CATDialogService(uint64_t a1)
{
  result = qword_280F841C8;
  if (!qword_280F841C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23127D57C(uint64_t a1)
{
  result = sub_231366690();
  if (v2 <= 0x3F)
  {
    result = sub_231366D50();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATErrors(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for CATErrors(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_23127D748(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_23127D760(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_23127D7A0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44120, &qword_231371778) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23127C3EC(a1, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_18_12(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OSUpdateTracker.__allocating_init(userDefaultsProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t OSUpdateTracker.init(userDefaultsProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t OSUpdateTracker.recordOSUpdate(osInfo:clockTime:)(uint64_t a1, void *a2)
{
  v5 = sub_231367050();
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v51 = v12;
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v49 = v18;
  v19 = a1;
  v20 = sub_231368640();
  sub_231210E78(v19, v20);
  if (v21)
  {
    v47 = v14;
    v50 = v5;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v22 = v50;
    sub_231368F20();
    v24 = v23;
    sub_2313690F0();
    v25 = *(v7 + 16);
    v46 = v19;
    v25(v10, v19, v22);
    v26 = sub_2313698A0();
    v27 = sub_23136A3A0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v53 = v45;
      *v28 = 136315394;
      sub_23127DE68(&qword_27DD44160, MEMORY[0x277D60810]);
      v29 = sub_23136A8B0();
      v31 = v30;
      (*(v7 + 8))(v10, v50);
      v32 = sub_2311CFD58(v29, v31, &v53);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v24;
      _os_log_impl(&dword_2311CB000, v26, v27, "New OS update information %s added with time as %f", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      (*(v7 + 8))(v10, v22);
    }

    v33 = v51;
    (*(v51 + 8))(v17, v52);
    swift_isUniquelyReferenced_nonNull_native();
    v53 = v20;
    sub_23125A420(v46, v24);
    sub_231369EE0();
    sub_231368650();
    v14 = v47;
  }

  else
  {
    v33 = v51;
  }

  sub_2313690F0();
  v34 = sub_2313698A0();
  v35 = sub_23136A3A0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v14;
    v38 = swift_slowAlloc();
    v53 = v38;
    *v36 = 136315138;
    sub_23127DE68(&qword_280F7CB18, MEMORY[0x277D60800]);
    sub_231369EE0();
    v39 = sub_231369E90();
    v41 = v40;

    v42 = sub_2311CFD58(v39, v41, &v53);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_2311CB000, v34, v35, "Timestamp of each minor OS update: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    (*(v33 + 8))(v37, v52);
  }

  else
  {

    (*(v33 + 8))(v14, v52);
  }
}

uint64_t OSUpdateTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_23127DE30(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_23127DE68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_231367050();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23127DF4C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_34_1();
    v5 = sub_23136A790();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;
  v6 = sub_231369EE0();
  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_23127E03C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_34_1();
    v6 = sub_23136A790();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

void static SiriSuggestions.loadRuntimeConfig(configUrl:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v50 = sub_2313698C0();
  OUTLINED_FUNCTION_0_0();
  v49 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231366690();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v51 = v11;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v12);
  v52 = v45 - v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  v16 = v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v45 - v18;
  sub_231366620();
  sub_231369100();
  v46 = *(v9 + 16);
  v46(v16, v19, v7);
  v47 = v6;
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45[0] = v19;
    v23 = v22;
    v24 = swift_slowAlloc();
    v45[1] = v2;
    v25 = v24;
    *&v56 = v24;
    *v23 = 136315138;
    v26 = sub_2313665A0();
    v45[2] = v0;
    v28 = v27;
    v29 = OUTLINED_FUNCTION_30_10();
    v30(v29);
    v31 = sub_2311CFD58(v26, v28, &v56);

    *(v23 + 4) = v31;
    _os_log_impl(&dword_2311CB000, v20, v21, "loading runtime config from path: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x23192B930](v25, -1, -1);
    v32 = v23;
    v19 = v45[0];
    MEMORY[0x23192B930](v32, -1, -1);
  }

  else
  {

    v33 = OUTLINED_FUNCTION_30_10();
    v34(v33);
  }

  (*(v49 + 8))(v47, v50);
  v35 = v52;
  v36 = v46;
  v46(v52, v19, v7);
  v37 = type metadata accessor for JsonSerializer();
  v38 = swift_allocObject();
  v57 = v37;
  v58 = &protocol witness table for JsonSerializer;
  *&v56 = v38;
  v39 = v51;
  v36(v51, v35, v7);
  v40 = type metadata accessor for FileBasedConfigBackingStore(0);
  v41 = swift_allocObject();
  (*(v9 + 32))(v41 + OBJC_IVAR____TtC15SiriSuggestions27FileBasedConfigBackingStore_dataFileLocation, v39, v7);
  v54 = v40;
  v55 = sub_23128850C(&qword_280F85B48);
  *&v53 = v41;
  v42 = v35;
  v43 = v48;
  v48(v42, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44168, &qword_231371800);
  inited = swift_initStackObject();
  sub_2311D38A8(&v53, inited + 16);
  sub_2311D38A8(&v56, inited + 56);
  sub_23127E584();
  v43(v19, v7);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 56));
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_23127E584()
{
  sub_2311CF324((v0 + 7), v13);
  v2 = v14;
  v3 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v6 = (*(v5 + 16))(v4, v5);
  if (!v1)
  {
    v9 = v6;
    v10 = v7;
    v16 = *(v3 + 8);
    v11 = sub_2312885F4(v6, v7, v8);
    v16(&type metadata for SiriSuggestionsRuntimeConfig, v9, v10, &type metadata for SiriSuggestionsRuntimeConfig, v11, v2, v3);
    sub_231225224(v9, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

void sub_23127E69C()
{
  OUTLINED_FUNCTION_70_4();
  v13 = v1;
  v14 = v2;
  OUTLINED_FUNCTION_49_7(v2, v3);
  v4 = OUTLINED_FUNCTION_10_17(v12);
  v5(v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_60_4();
    sub_2312885A0(v6, v7, v8);
    OUTLINED_FUNCTION_26_13();
    v9();
    v10 = OUTLINED_FUNCTION_53_3();
    sub_231225224(v10, v11);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_71_3();
}

void sub_23127E748()
{
  OUTLINED_FUNCTION_70_4();
  v10 = v1;
  v11 = v2;
  OUTLINED_FUNCTION_49_7(v2, v3);
  v4 = OUTLINED_FUNCTION_10_17(v9);
  v5(v4);
  if (!v0)
  {
    sub_2313689A0();
    OUTLINED_FUNCTION_60_4();
    sub_23128850C(&unk_27DD44358);
    OUTLINED_FUNCTION_26_13();
    v6();
    v7 = OUTLINED_FUNCTION_53_3();
    sub_231225224(v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_71_3();
}

void sub_23127E82C()
{
  OUTLINED_FUNCTION_70_4();
  v13 = v1;
  v14 = v2;
  OUTLINED_FUNCTION_49_7(v2, v3);
  v4 = OUTLINED_FUNCTION_10_17(v12);
  v5(v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_60_4();
    sub_23128854C(v6, v7, v8);
    OUTLINED_FUNCTION_26_13();
    v9();
    v10 = OUTLINED_FUNCTION_53_3();
    sub_231225224(v10, v11);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_71_3();
}

uint64_t SiriSuggestionsRuntimeConfig.discoverabilityScorer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  return sub_231369EE0();
}

uint64_t SiriSuggestionsRuntimeConfig.engagementScorer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 104), sizeof(__dst));
  memcpy(a1, (v1 + 104), 0x60uLL);
  return sub_231284BEC(__dst, &v4);
}

uint64_t SiriSuggestionsRuntimeConfig.siriHelp.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 200), sizeof(__dst));
  memcpy(a1, (v1 + 200), 0x48uLL);
  return sub_2311E6694(__dst, &v4);
}

__n128 SiriSuggestionsRuntimeConfig.siriHints.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[17].n128_u64[1];
  v3 = v1[19].n128_u64[0];
  a1->n128_u64[0] = v1[17].n128_u64[0];
  a1->n128_u64[1] = v2;
  result = v1[18];
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  return result;
}

double SiriSuggestionsRuntimeConfig.assistantSuggestions.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 328);
  result = *(v1 + 336);
  v4 = *(v1 + 344);
  *a1 = *(v1 + 312);
  *(a1 + 16) = v2;
  *(a1 + 24) = result;
  *(a1 + 32) = v4;
  return result;
}

uint64_t SiriSuggestionsRuntimeConfig.intelligence.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 376);
  v3 = *(v1 + 384);
  *a1 = *(v1 + 360);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return sub_231369EE0();
}

uint64_t SiriSuggestionsRuntimeConfig.assistantInitiatedSuggestions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  *a1 = *(v1 + 392);
  *(a1 + 16) = v2;
  return sub_231369EE0();
}

void __swiftcall SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.init(maxNumberOfSuggestionsPerSignal:betaHalflifeInDays:gamma:actionTypeCoefficients:amountOfShuffle:)(SiriSuggestions::SiriSuggestionsRuntimeConfig::SiriSuggestionsDiscoverabilityConfig *__return_ptr retstr, Swift::UInt maxNumberOfSuggestionsPerSignal, Swift::UInt betaHalflifeInDays, Swift::Double gamma, Swift::OpaquePointer actionTypeCoefficients, Swift::Double amountOfShuffle)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44170, &qword_231371808);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_1();
  v57 = v13;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v14);
  v56 = &v49 - v15;
  v16 = *(actionTypeCoefficients._rawValue + 2);
  if (v16)
  {
    v49 = maxNumberOfSuggestionsPerSignal;
    v50 = betaHalflifeInDays;
    v51 = retstr;
    v62 = MEMORY[0x277D84F90];
    sub_2311F5EC8(0, v16, 0);
    v61 = v62;
    v19 = sub_231236CA8();
    v20 = 0;
    v21 = actionTypeCoefficients._rawValue + 64;
    v53 = v17;
    v54 = v16;
    v52 = actionTypeCoefficients._rawValue + 72;
    v55 = actionTypeCoefficients._rawValue + 64;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(actionTypeCoefficients._rawValue + 32))
    {
      v22 = v19 >> 6;
      if ((*&v21[8 * (v19 >> 6)] & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      if (*(actionTypeCoefficients._rawValue + 9) != v17)
      {
        goto LABEL_25;
      }

      v60 = v17;
      v59 = v18;
      v23 = *(actionTypeCoefficients._rawValue + 6);
      v24 = sub_231368260();
      OUTLINED_FUNCTION_0_0();
      v26 = v25;
      v28 = v23 + *(v27 + 72) * v19;
      v29 = v56;
      (*(v27 + 16))(v56, v28, v24);
      v30 = *(*(actionTypeCoefficients._rawValue + 7) + 8 * v19);
      v31 = v57;
      (*(v26 + 32))(v57, v29, v24);
      *(v31 + *(v58 + 48)) = v30;
      v32 = sub_231368230();
      v34 = v33;
      sub_2311D1F18(v31, &qword_27DD44170, &qword_231371808);
      v35 = v61;
      v62 = v61;
      v37 = v61[2];
      v36 = v61[3];
      if (v37 >= v36 >> 1)
      {
        sub_2311F5EC8(v36 > 1, v37 + 1, 1);
        v35 = v62;
      }

      v35[2] = v37 + 1;
      v38 = &v35[3 * v37];
      v38[4] = v32;
      v38[5] = v34;
      v38[6] = v30;
      v39 = 1 << *(actionTypeCoefficients._rawValue + 32);
      if (v19 >= v39)
      {
        goto LABEL_26;
      }

      v21 = v55;
      v40 = *&v55[8 * v22];
      if ((v40 & (1 << v19)) == 0)
      {
        goto LABEL_27;
      }

      v61 = v35;
      if (*(actionTypeCoefficients._rawValue + 9) != v60)
      {
        goto LABEL_28;
      }

      v41 = v40 & (-2 << (v19 & 0x3F));
      if (v41)
      {
        v39 = __clz(__rbit64(v41)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v42 = v54;
      }

      else
      {
        v43 = v22 << 6;
        v44 = v22 + 1;
        v45 = &v52[8 * v22];
        v42 = v54;
        while (v44 < (v39 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            sub_2311F0490(v19, v60, v59 & 1);
            v39 = __clz(__rbit64(v46)) + v43;
            goto LABEL_19;
          }
        }

        sub_2311F0490(v19, v60, v59 & 1);
      }

LABEL_19:
      v18 = 0;
      ++v20;
      v19 = v39;
      v17 = v53;
      if (v20 == v42)
      {

        betaHalflifeInDays = v50;
        retstr = v51;
        maxNumberOfSuggestionsPerSignal = v49;
        v48 = v61;
        goto LABEL_22;
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
LABEL_28:
    __break(1u);
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
LABEL_22:
    retstr->maxNumberOfSuggestionsPerSignal = maxNumberOfSuggestionsPerSignal;
    retstr->betaHalflifeInDays = betaHalflifeInDays;
    retstr->gamma = gamma;
    retstr->actionTypeCoefficients._rawValue = v48;
    retstr->amountOfShuffle = amountOfShuffle;
  }
}

void __swiftcall SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig.init(engagementBetaHalfLifeHours:impressionBetaHalfLifeHours:impressionWeight:engagementWeight:engagementEstimatorScoreWeight:relevanceScoreWeight:interactionHistoryScoreWeight:minimumEngagementEstimatorScore:engagementScorerModelName:smartSupressionModelName:)(SiriSuggestions::SiriSuggestionsRuntimeConfig::SiriSuggestionsEngagementConfig *__return_ptr retstr, Swift::Int engagementBetaHalfLifeHours, Swift::Int impressionBetaHalfLifeHours, Swift::Double impressionWeight, Swift::Double engagementWeight, Swift::Double engagementEstimatorScoreWeight, Swift::Double relevanceScoreWeight, Swift::Double interactionHistoryScoreWeight, Swift::Double minimumEngagementEstimatorScore, Swift::String engagementScorerModelName, Swift::String smartSupressionModelName)
{
  retstr->engagementBetaHalfLifeHours = engagementBetaHalfLifeHours;
  retstr->impressionBetaHalfLifeHours = impressionBetaHalfLifeHours;
  retstr->impressionWeight = impressionWeight;
  retstr->engagementWeight = engagementWeight;
  retstr->engagementEstimatorScoreWeight = engagementEstimatorScoreWeight;
  retstr->relevanceScoreWeight = relevanceScoreWeight;
  retstr->interactionHistoryScoreWeight = interactionHistoryScoreWeight;
  retstr->minimumEngagementEstimatorScore = minimumEngagementEstimatorScore;
  retstr->engagementScorerModelName = engagementScorerModelName;
  retstr->smartSupressionModelName = smartSupressionModelName;
}

void __swiftcall SiriHelpConfig.init(totalMaxSuggestions:maxGroupPriorToFilter:beforeTheFold:appLastSeenPeriod:sessionLength:)(SiriSuggestions::SiriHelpConfig *__return_ptr retstr, Swift::Int totalMaxSuggestions, Swift::Int maxGroupPriorToFilter, SiriSuggestions::BeforeTheFoldConfig *beforeTheFold, Swift::Double appLastSeenPeriod, Swift::Double sessionLength)
{
  maxSuggestions = beforeTheFold->maxSuggestions;
  addFallbacks = beforeTheFold->addFallbacks;
  rawValue = beforeTheFold->distinctSuggestionIdOwners._rawValue;
  distinctOwnership = beforeTheFold->distinctOwnership;
  v10 = beforeTheFold->distinctSuggestionGroups._rawValue;
  retstr->totalMaxSuggestions = totalMaxSuggestions;
  retstr->maxGroupPriorToFilter = maxGroupPriorToFilter;
  retstr->beforeTheFold.maxSuggestions = maxSuggestions;
  retstr->beforeTheFold.addFallbacks = addFallbacks;
  retstr->beforeTheFold.distinctSuggestionIdOwners._rawValue = rawValue;
  retstr->beforeTheFold.distinctOwnership = distinctOwnership;
  retstr->beforeTheFold.distinctSuggestionGroups._rawValue = v10;
  retstr->appLastSeenPeriod = appLastSeenPeriod;
  retstr->sessionLength = sessionLength;
}

void __swiftcall SiriHintsPolicyConfig.init(maxNumberOfExposures:uiDisplayTimeout:suppressionWindowHours:observationPeriodInDays:smartSuppressionThreshold:)(SiriSuggestions::SiriHintsPolicyConfig *__return_ptr retstr, Swift::Int maxNumberOfExposures, Swift::Double uiDisplayTimeout, Swift::Int suppressionWindowHours, Swift::Int observationPeriodInDays, Swift::Double smartSuppressionThreshold)
{
  retstr->maxNumberOfExposures = maxNumberOfExposures;
  retstr->uiDisplayTimeout = uiDisplayTimeout;
  retstr->observationPeriodInDays = observationPeriodInDays;
  retstr->suppressionWindowHours = suppressionWindowHours;
  retstr->smartSuppressionThreshold = smartSuppressionThreshold;
}

void __swiftcall AssistantSuggestionsPolicyConfig.init(maxNumberOfExposures:suppressionWindowHours:maxShownSuggestions:smartSuppressionThreshold:coolOffHoursAfterEngagement:)(SiriSuggestions::AssistantSuggestionsPolicyConfig *__return_ptr retstr, Swift::Int maxNumberOfExposures, Swift::Int suppressionWindowHours, Swift::Int maxShownSuggestions, Swift::Double smartSuppressionThreshold, Swift::Int coolOffHoursAfterEngagement)
{
  retstr->maxNumberOfExposures = maxNumberOfExposures;
  retstr->suppressionWindowHours = suppressionWindowHours;
  retstr->maxShownSuggestions = maxShownSuggestions;
  retstr->smartSuppressionThreshold = smartSuppressionThreshold;
  retstr->coolOffHoursAfterEngagement = coolOffHoursAfterEngagement;
}

SiriSuggestions::SiriSuggestionsRuntimeConfig::SiriSuggestionsEventConfig __swiftcall SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig.init(eventBufferSize:relevanceTimeWindowSecs:)(Swift::Int eventBufferSize, Swift::Double relevanceTimeWindowSecs)
{
  *v2 = eventBufferSize;
  *(v2 + 8) = relevanceTimeWindowSecs;
  result.relevanceTimeWindowSecs = relevanceTimeWindowSecs;
  result.eventBufferSize = eventBufferSize;
  return result;
}

SiriSuggestions::SiriSuggestionsRuntimeConfig::IntelligenceConfig __swiftcall SiriSuggestionsRuntimeConfig.IntelligenceConfig.init(featureExtraction:)(SiriSuggestions::SiriSuggestionsRuntimeConfig::IntelligenceConfig featureExtraction)
{
  v2 = *(featureExtraction.featureExtraction.maxNumOfAppIdFeatures + 16);
  v3 = *(featureExtraction.featureExtraction.maxNumOfAppIdFeatures + 24);
  *v1 = *featureExtraction.featureExtraction.maxNumOfAppIdFeatures;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return featureExtraction;
}

uint64_t AssistantInitiatedSuggestionPolicyConfig.init(maxNumberOfExposures:suppressionWindowHours:suppressionWindowHoursSinceLastDeliveryVehicle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 SiriSuggestionsRuntimeConfig.init(resolverTimeout:generatorTimeout:interactionPropertiesWaitTime:canInvokeSuggestions:showDescriptions:platformRootLocation:showIconAssets:minimumAppSaliencyScore:discoverabilityScorer:engagementScorer:siriHelp:siriHints:assistantSuggestions:events:includeCategoryFallbacks:intelligence:assistantInitiatedSuggestions:signalGenerator:)@<Q0>(void *__src@<X6>, char a2@<W0>, char a3@<W1>, uint64_t a4@<X2>, uint64_t a5@<X3>, char a6@<W4>, uint64_t a7@<X5>, const void *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, __n128 *a19, uint64_t *a20)
{
  v22 = *(a7 + 16);
  v23 = a9 + 312;
  v24 = *(a7 + 24);
  v25 = *(a7 + 32);
  v26 = *a14;
  v27 = a14[1];
  v28 = a14[4];
  v29 = *(a15 + 16);
  v30 = *(a15 + 24);
  v31 = *(a15 + 32);
  v32 = *(a18 + 16);
  v36 = a19[1].n128_u64[0];
  v34 = *(a18 + 24);
  v35 = *a20;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 24) = a2;
  *(a9 + 25) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a13;
  *(a9 + 64) = *a7;
  *(a9 + 80) = v22;
  *(a9 + 88) = v24;
  *(a9 + 96) = v25;
  memcpy((a9 + 104), __src, 0x60uLL);
  memcpy((a9 + 200), a8, 0x48uLL);
  *(a9 + 272) = v26;
  *(a9 + 280) = v27;
  *(a9 + 288) = *(a14 + 1);
  *(a9 + 304) = v28;
  *v23 = *a15;
  *(a9 + 328) = v29;
  *(a9 + 336) = v30;
  *(a9 + 344) = v31;
  *(a9 + 352) = a17;
  *(v23 + 48) = *a18;
  *(a9 + 376) = v32;
  *(a9 + 384) = v34;
  result = *a19;
  *(v23 + 80) = *a19;
  *(a9 + 16) = a12;
  *(a9 + 408) = v36;
  *(a9 + 416) = v35;
  return result;
}

uint64_t sub_23127F054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6963696666656F63 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_23127F128(char a1)
{
  if (a1)
  {
    return 0x6963696666656F63;
  }

  else
  {
    return 0x79546E6F69746361;
  }
}

uint64_t sub_23127F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23127F054(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23127F19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312863F8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23127F1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312863F8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.Coefficient.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43_9();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44178, &qword_231371810);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_13();
  v5 = OUTLINED_FUNCTION_56(v3, v3[3]);
  sub_2312863F8(v5, v6, v7);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  sub_23136A840();
  if (!v1)
  {
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
  }

  v8 = OUTLINED_FUNCTION_50_2();
  v9(v8);
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_41_10();
}

void SiriSuggestionsRuntimeConfig.Coefficient.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_22_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44180, &qword_231371818);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_1_23();
  v8 = sub_2312863F8(v5, v6, v7);
  OUTLINED_FUNCTION_8_14(&type metadata for SiriSuggestionsRuntimeConfig.Coefficient.CodingKeys, v9, v8);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  else
  {
    OUTLINED_FUNCTION_11_14();
    v10 = sub_23136A7D0();
    v12 = v11;
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_11_14();
    sub_23136A7F0();
    v14 = v13;
    v15 = OUTLINED_FUNCTION_4_14();
    v16(v15);
    *v3 = v10;
    v3[1] = v12;
    v3[2] = v14;
    sub_231369EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v1);
  }

  OUTLINED_FUNCTION_41_10();
}

uint64_t SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.observedActionTypeCoefficients.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44188, &unk_231371820);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_13();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DD8, &unk_231370740);
  OUTLINED_FUNCTION_0_0();
  v22 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v23 = v5;
  OUTLINED_FUNCTION_36();
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = 0;
  v10 = *(v0 + 24);
  v11 = *(v10 + 16);
  v12 = (v10 + 48);
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v9)
    {
      return sub_23127E03C(v13, &qword_27DD44370, &qword_231373030, sub_2312857F8);
    }

    if (v9 >= *(v10 + 16))
    {
      break;
    }

    v14 = *v12;
    v15 = *(v12 - 1);
    v25[0] = *(v12 - 2);
    v25[1] = v15;
    v25[2] = v14;
    sub_231369EE0();
    sub_23127F7A0(v25, v1);

    if (__swift_getEnumTagSinglePayload(v1, 1, v24) == 1)
    {
      sub_2311D1F18(v1, &qword_27DD44188, &unk_231371820);
    }

    else
    {
      sub_23123E9F8(v1, v8, &qword_27DD43DD8, &unk_231370740);
      sub_23123E9F8(v8, v23, &qword_27DD43DD8, &unk_231370740);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23126EFC0(0, *(v13 + 16) + 1, 1, v13);
        v13 = v18;
      }

      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23126EFC0(v16 > 1, v17 + 1, 1, v13);
        v13 = v19;
      }

      *(v13 + 16) = v17 + 1;
      sub_23123E9F8(v23, v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17, &qword_27DD43DD8, &unk_231370740);
    }

    v12 += 3;
    ++v9;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23127F7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_2313698C0();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231368260();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - v10;
  v11 = *a1;
  v39 = a1[1];
  v12 = a1[2];
  result = sub_231368250();
  v14 = result;
  v15 = 0;
  v40 = *(result + 16);
  v38 = v6 + 16;
  while (v40 != v15)
  {
    if (v15 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v6 + 16))(v8, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v5);
    if (sub_231368230() == v11 && v16 == v39)
    {

LABEL_14:

      v28 = *(v6 + 32);
      v29 = v36;
      v28(v36, v8, v5);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DD8, &unk_231370740);
      v31 = *(v30 + 48);
      v32 = v37;
      v28(v37, v29, v5);
      *(v32 + v31) = v12;
      return __swift_storeEnumTagSinglePayload(v32, 0, 1, v30);
    }

    v18 = v11;
    v19 = sub_23136A900();

    if (v19)
    {
      goto LABEL_14;
    }

    result = (*(v6 + 8))(v8, v5);
    ++v15;
    v11 = v18;
  }

  v20 = v35;
  sub_2313690F0();
  v21 = v39;
  sub_231369EE0();
  v22 = sub_2313698A0();
  v23 = sub_23136A3B0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2311CFD58(v11, v21, &v41);
    _os_log_impl(&dword_2311CB000, v22, v23, "Unknown action type %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x23192B930](v25, -1, -1);
    MEMORY[0x23192B930](v24, -1, -1);
  }

  (*(v33 + 8))(v20, v34);
  v26 = v37;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DD8, &unk_231370740);
  return __swift_storeEnumTagSinglePayload(v26, 1, 1, v27);
}

uint64_t sub_23127FB9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001FLL && 0x800000023137E7E0 == a2;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000023137E800 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616D6D6167 && a2 == 0xE500000000000000;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023137E820 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x664F746E756F6D61 && a2 == 0xEF656C6666756853)
        {

          return 4;
        }

        else
        {
          v10 = sub_23136A900();

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

unint64_t sub_23127FD58(char a1)
{
  result = 0x616D6D6167;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x664F746E756F6D61;
      break;
    default:
      result = 0xD00000000000001FLL;
      break;
  }

  return result;
}

uint64_t sub_23127FE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23127FB9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23127FE44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23127FD50();
  *a1 = result;
  return result;
}

uint64_t sub_23127FE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23128644C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23127FEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23128644C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.encode(to:)()
{
  OUTLINED_FUNCTION_40_9();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44190, &qword_231371830);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_13();
  v8 = OUTLINED_FUNCTION_56(v3, v3[3]);
  sub_23128644C(v8, v9, v10);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_12_12();
  sub_23136A880();
  if (!v0)
  {
    OUTLINED_FUNCTION_35_10();
    OUTLINED_FUNCTION_12_12();
    sub_23136A880();
    OUTLINED_FUNCTION_27_10();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
    OUTLINED_FUNCTION_61_4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44198, &qword_231371838);
    sub_2312864F4(&unk_27DD441A0);
    OUTLINED_FUNCTION_12_12();
    sub_23136A890();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_42_10();
}

void SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_34_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441B0, &qword_231371840);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  v27 = OUTLINED_FUNCTION_1_23();
  v30 = sub_23128644C(v27, v28, v29);
  OUTLINED_FUNCTION_16_16(&type metadata for SiriSuggestionsRuntimeConfig.SiriSuggestionsDiscoverabilityConfig.CodingKeys, v31, v30);
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_5_14();
    v32 = sub_23136A810();
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_5_14();
    v33 = sub_23136A810();
    OUTLINED_FUNCTION_27_10();
    OUTLINED_FUNCTION_5_14();
    sub_23136A7F0();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44198, &qword_231371838);
    OUTLINED_FUNCTION_61_4();
    sub_2312864F4(&unk_280F7C850);
    OUTLINED_FUNCTION_18_13();
    sub_23136A820();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_5_14();
    sub_23136A7F0();
    v37 = v36;
    v38 = OUTLINED_FUNCTION_4_14();
    v39(v38);
    *v25 = v32;
    v25[1] = v33;
    v25[2] = v35;
    v25[3] = v40;
    v25[4] = v37;
    sub_231369EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  OUTLINED_FUNCTION_42_10();
}

uint64_t sub_2312803BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x800000023137E840 == a2;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001BLL && 0x800000023137E860 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000023137E880 == a2;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x800000023137E8A0 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ELL && 0x800000023137E8C0 == a2;
          if (v9 || (sub_23136A900() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023137E8E0 == a2;
            if (v10 || (sub_23136A900() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x800000023137E900 == a2;
              if (v11 || (sub_23136A900() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x800000023137E920 == a2;
                if (v12 || (sub_23136A900() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x800000023137E940 == a2;
                  if (v13 || (sub_23136A900() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000018 && 0x800000023137E960 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_23136A900();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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
}

unint64_t sub_2312806C4(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001BLL;
      break;
    case 2:
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2312807C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312803BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2312807EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2312806BC();
  *a1 = result;
  return result;
}

uint64_t sub_231280814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312865BC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231280850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312865BC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig.encode(to:)()
{
  OUTLINED_FUNCTION_70_4();
  v29 = v2;
  v30 = v3;
  v22 = v1;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441B8, &qword_231371848);
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v9);
  v11 = v21 - v10;
  v12 = v0[1];
  v13 = v0[9];
  v21[2] = v0[8];
  v21[3] = v12;
  v14 = v0[11];
  v21[0] = v0[10];
  v21[1] = v13;
  v15 = OUTLINED_FUNCTION_9_17(v5);
  sub_2312865BC(v15, v16, v17);
  sub_23136AA40();
  OUTLINED_FUNCTION_62_6();
  v18 = v22;
  sub_23136A870();
  if (!v18)
  {
    v22 = v14;
    OUTLINED_FUNCTION_35_10();
    sub_23136A870();
    v19 = OUTLINED_FUNCTION_27_10();
    OUTLINED_FUNCTION_31_13(v19);
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_31_13(&v28);
    v20 = OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_31_13(v20);
    v27[0] = 5;
    OUTLINED_FUNCTION_31_13(v27);
    v26 = 6;
    OUTLINED_FUNCTION_31_13(&v26);
    v25 = 7;
    OUTLINED_FUNCTION_31_13(&v25);
    v24 = 8;
    sub_23136A840();
    v23 = 9;
    sub_23136A840();
  }

  (*(v8 + 8))(v11, v6);
  OUTLINED_FUNCTION_71_3();
}

void SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig.init(from:)()
{
  OUTLINED_FUNCTION_70_4();
  v36 = v1;
  v37 = v2;
  v4 = v3;
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441C0, &qword_231371850);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_6();
  v8 = OUTLINED_FUNCTION_1_23();
  sub_2312865BC(v8, v9, v10);
  OUTLINED_FUNCTION_19_12();
  sub_23136AA20();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    v11 = sub_23136A800();
    OUTLINED_FUNCTION_2_13(1);
    v12 = sub_23136A800();
    OUTLINED_FUNCTION_2_13(2);
    sub_23136A7F0();
    v14 = v13;
    OUTLINED_FUNCTION_2_13(3);
    sub_23136A7F0();
    v16 = v15;
    OUTLINED_FUNCTION_2_13(4);
    sub_23136A7F0();
    v18 = v17;
    OUTLINED_FUNCTION_2_13(5);
    sub_23136A7F0();
    v20 = v19;
    OUTLINED_FUNCTION_2_13(6);
    sub_23136A7F0();
    v22 = v21;
    OUTLINED_FUNCTION_2_13(7);
    sub_23136A7F0();
    v31 = v23;
    OUTLINED_FUNCTION_2_13(8);
    v30 = sub_23136A7D0();
    v32 = v24;
    v35[0] = 9;
    v29 = sub_23136A7D0();
    v26 = v25;
    v27 = OUTLINED_FUNCTION_39_8();
    v28(v27);
    v33[0] = v11;
    v33[1] = v12;
    v33[2] = v14;
    v33[3] = v16;
    v33[4] = v18;
    v33[5] = v20;
    v33[6] = v22;
    v33[7] = v31;
    v33[8] = v30;
    v33[9] = v32;
    v33[10] = v29;
    v33[11] = v26;
    memcpy(v6, v33, 0x60uLL);
    sub_231284BEC(v33, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    v34[0] = v11;
    v34[1] = v12;
    v34[2] = v14;
    v34[3] = v16;
    v34[4] = v18;
    v34[5] = v20;
    v34[6] = v22;
    v34[7] = v31;
    v34[8] = v30;
    v34[9] = v32;
    v34[10] = v29;
    v34[11] = v26;
    sub_231286610(v34);
  }

  OUTLINED_FUNCTION_71_3();
}

uint64_t sub_231280E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x667542746E657665 && a2 == 0xEF657A6953726566;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023137E980 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_23136A900();

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

uint64_t sub_231280F24(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x667542746E657665;
  }
}

uint64_t sub_231280F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231280E4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231280F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286640(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231280FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286640(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43_9();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441C8, &qword_231371858);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_13();
  v5 = OUTLINED_FUNCTION_9_17(v3);
  sub_231286640(v5, v6, v7);
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  OUTLINED_FUNCTION_12_12();
  sub_23136A870();
  if (!v1)
  {
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
  }

  v8 = OUTLINED_FUNCTION_50_2();
  v9(v8);
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_41_10();
}

void SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43_9();
  OUTLINED_FUNCTION_22_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441D0, &qword_231371860);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_1_23();
  v7 = sub_231286640(v4, v5, v6);
  OUTLINED_FUNCTION_8_14(&type metadata for SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig.CodingKeys, v8, v7);
  if (!v1)
  {
    OUTLINED_FUNCTION_11_14();
    v9 = sub_23136A800();
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_11_14();
    sub_23136A7F0();
    v11 = v10;
    v12 = OUTLINED_FUNCTION_4_14();
    v13(v12);
    *v2 = v9;
    v2[1] = v11;
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_41_10();
}

uint64_t SiriSuggestionsRuntimeConfig.IntelligenceConfig.featureExtraction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return sub_231369EE0();
}

SiriSuggestions::SiriSuggestionsRuntimeConfig::FeatureExtractionConfig __swiftcall SiriSuggestionsRuntimeConfig.FeatureExtractionConfig.init(maxNumOfAppIdFeatures:appUsageOrderBy:nowPlayingLookbackBufferSeconds:)(Swift::Int maxNumOfAppIdFeatures, Swift::String appUsageOrderBy, Swift::Int nowPlayingLookbackBufferSeconds)
{
  *v3 = maxNumOfAppIdFeatures;
  *(v3 + 8) = appUsageOrderBy;
  *(v3 + 24) = nowPlayingLookbackBufferSeconds;
  result.appUsageOrderBy = appUsageOrderBy;
  result.nowPlayingLookbackBufferSeconds = nowPlayingLookbackBufferSeconds;
  result.maxNumOfAppIdFeatures = maxNumOfAppIdFeatures;
  return result;
}

uint64_t sub_2312812B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000023137E9A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_231281330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312812B0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_23128135C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D6BD8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231281398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D6BD8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.IntelligenceConfig.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441D8, &qword_231371868);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v10 = *v0;
  v9 = v0[1];
  v11 = v0[2];
  v18 = v0[3];
  v19 = v9;
  v12 = OUTLINED_FUNCTION_9_17(v2);
  sub_2311D6BD8(v12, v13, v14);
  sub_231369EE0();
  OUTLINED_FUNCTION_19_12();
  v15 = sub_23136AA40();
  v20 = v10;
  v21 = v19;
  v22 = v11;
  v23 = v18;
  sub_231286694(v15, v16, v17);
  sub_23136A890();

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_23128156C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000023137E9C0 == a2;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617355707061 && a2 == 0xEF7942726564724FLL;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001FLL && 0x800000023137E9E0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_23136A900();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_231281690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23128156C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2312816B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231224108();
  *a1 = result;
  return result;
}

uint64_t sub_2312816E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D70E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23128171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D70E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.FeatureExtractionConfig.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441E8, &qword_231371878);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_13();
  v4 = OUTLINED_FUNCTION_56(v2, v2[3]);
  sub_2311D70E4(v4, v5, v6);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_12_12();
  sub_23136A870();
  if (!v0)
  {
    OUTLINED_FUNCTION_35_10();
    OUTLINED_FUNCTION_12_12();
    sub_23136A840();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
  }

  v7 = OUTLINED_FUNCTION_50_2();
  v8(v7);
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_2312818AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766C6F736572 && a2 == 0xEF74756F656D6954;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000023137EA00 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001DLL && 0x800000023137EA20 == a2;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x800000023137EA40 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x800000023137EA60 == a2;
          if (v9 || (sub_23136A900() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000023137EA80 == a2;
            if (v10 || (sub_23136A900() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F6349776F6873 && a2 == 0xEE00737465737341;
              if (v11 || (sub_23136A900() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x800000023137EAA0 == a2;
                if (v12 || (sub_23136A900() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x800000023137EAC0 == a2;
                  if (v13 || (sub_23136A900() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x800000023137EAE0 == a2;
                    if (v14 || (sub_23136A900() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x706C654869726973 && a2 == 0xE800000000000000;
                      if (v15 || (sub_23136A900() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x746E694869726973 && a2 == 0xE900000000000073;
                        if (v16 || (sub_23136A900() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x800000023137EB00 == a2;
                          if (v17 || (sub_23136A900() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000018 && 0x800000023137EB20 == a2;
                            if (v18 || (sub_23136A900() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x67696C6C65746E69 && a2 == 0xEC00000065636E65;
                              if (v19 || (sub_23136A900() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD00000000000001DLL && 0x800000023137EB40 == a2;
                                if (v20 || (sub_23136A900() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0x65476C616E676973 && a2 == 0xEF726F746172656ELL)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_23136A900();

                                  if (v22)
                                  {
                                    return 16;
                                  }

                                  else
                                  {
                                    return 17;
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
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_231281DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312818AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231281E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_231281DD0();
  *a1 = result;
  return result;
}

uint64_t sub_231281E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312866E8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231281E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2312866E8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriSuggestionsRuntimeConfig.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_78_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD441F8, &qword_231371888);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_59_6();
  v46 = v1[8];
  v47 = v1[9];
  v8 = v1[10];
  v48 = v1[11];
  v9 = v1[12];
  memcpy(v53, v1 + 13, sizeof(v53));
  memcpy(v54, v1 + 25, 0x48uLL);
  v45 = v1[51];
  v10 = OUTLINED_FUNCTION_53_3();
  v12 = OUTLINED_FUNCTION_56(v10, v11);
  sub_2312866E8(v12, v13, v14);
  sub_23136AA40();
  LOBYTE(v52[0]) = 0;
  sub_23136A860();
  if (v2)
  {
    v15 = *(v6 + 8);
    v16 = v3;
    v17 = v4;
  }

  else
  {
    sub_23136A860();
    sub_23136A860();
    OUTLINED_FUNCTION_20_15();
    sub_23136A850();
    OUTLINED_FUNCTION_20_15();
    sub_23136A850();
    OUTLINED_FUNCTION_28_11();
    sub_23136A840();
    OUTLINED_FUNCTION_20_15();
    sub_23136A850();
    OUTLINED_FUNCTION_28_11();
    v18 = sub_23136A860();
    v52[0] = v46;
    v52[1] = v47;
    v52[2] = v8;
    v52[3] = v48;
    v52[4] = v9;
    v51[0] = 8;
    v21 = sub_23128673C(v18, v19, v20);
    sub_231369EE0();
    OUTLINED_FUNCTION_28_11();
    sub_23136A890();
    if (v21)
    {

      (*(v6 + 8))(v3, v4);
      goto LABEL_5;
    }

    memcpy(v52, v53, sizeof(v52));
    v51[103] = 9;
    v22 = sub_231284BEC(v53, v51);
    sub_231286790(v22, v23, v24);
    OUTLINED_FUNCTION_20_15();
    sub_23136A890();
    memcpy(v51, v52, 0x60uLL);
    sub_231286610(v51);
    memcpy(v50, v54, sizeof(v50));
    v49[79] = 10;
    v25 = sub_2311E6694(v54, v49);
    sub_2312867E4(v25, v26, v27);
    OUTLINED_FUNCTION_20_15();
    sub_23136A890();
    memcpy(v49, v50, 0x48uLL);
    v28 = sub_231286838(v49);
    sub_231286868(v28, v29, v30);
    OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_28_11();
    v31 = sub_23136A890();
    sub_2312868BC(v31, v32, v33);
    OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_28_11();
    sub_23136A890();
    OUTLINED_FUNCTION_28_11();
    v34 = sub_23136A850();
    v37 = sub_2311F4F54(v34, v35, v36);
    sub_231369EE0();
    OUTLINED_FUNCTION_21_14();
    OUTLINED_FUNCTION_28_11();
    sub_23136A890();
    if (v37 || (v38 = , v41 = sub_231286910(v38, v39, v40), sub_231369EE0(), OUTLINED_FUNCTION_21_14(), OUTLINED_FUNCTION_28_11(), sub_23136A890(), v41))
    {

      v15 = *(v6 + 8);
      v16 = v3;
    }

    else
    {

      sub_231286964(v42, v43, v44);
      OUTLINED_FUNCTION_21_14();
      OUTLINED_FUNCTION_28_11();
      sub_23136A890();
      v15 = *(v6 + 8);
      v16 = v45;
    }

    v17 = v4;
  }

  v15(v16, v17);
LABEL_5:
  OUTLINED_FUNCTION_77_1();
}

uint64_t SiriHintsPolicyConfig.invocationObservationPeriodInDays.getter()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20);
  OUTLINED_FUNCTION_0_0();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_13();
  v16 = *(v0 + 16);
  v5 = sub_231367F50();
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2311F5F14(0, v6, 0);
    v7 = v18;
    v15 = sub_231367C70();
    v8 = *(v15 - 8);
    v9 = *(v8 + 16);
    v10 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v11 = *(v8 + 72);
    do
    {
      v9(v1, v10, v15);
      *(v1 + *(v17 + 48)) = v16;
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2311F5F14((v12 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      sub_23123E9F8(v1, v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, &qword_27DD435E0, &qword_23136CB20);
      v10 += v11;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  return sub_23127E03C(v7, &qword_27DD44360, &qword_231373020, sub_231285C70);
}

uint64_t sub_231282708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000023137EB60 == a2;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000023137EB80 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000023137EBA0 == a2;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x800000023137EBC0 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000019 && 0x800000023137EBE0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_23136A900();

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

unint64_t sub_2312828AC(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23128294C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231282708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231282974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286BE8(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2312829B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286BE8(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriHintsPolicyConfig.encode(to:)()
{
  OUTLINED_FUNCTION_40_9();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44240, &qword_2313718A0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_13();
  v4 = OUTLINED_FUNCTION_56(v2, v2[3]);
  sub_231286BE8(v4, v5, v6);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_12_12();
  sub_23136A870();
  if (!v0)
  {
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
  }

  v7 = OUTLINED_FUNCTION_50_2();
  v8(v7);
  OUTLINED_FUNCTION_42_10();
}

void SiriHintsPolicyConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_40_9();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44248, &qword_2313718A8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v27);
  v28 = OUTLINED_FUNCTION_1_23();
  v31 = sub_231286BE8(v28, v29, v30);
  OUTLINED_FUNCTION_8_14(&type metadata for SiriHintsPolicyConfig.CodingKeys, v32, v31);
  if (!v23)
  {
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_7_12();
    v33 = sub_23136A800();
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_7_12();
    sub_23136A7F0();
    v35 = v34;
    OUTLINED_FUNCTION_27_10();
    OUTLINED_FUNCTION_7_12();
    v36 = sub_23136A800();
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_7_12();
    v41 = sub_23136A800();
    OUTLINED_FUNCTION_23_10();
    OUTLINED_FUNCTION_7_12();
    sub_23136A7F0();
    v38 = v37;
    v39 = OUTLINED_FUNCTION_14_16();
    v40(v39, v26);
    *v25 = v33;
    v25[1] = v35;
    v25[2] = v36;
    v25[3] = v41;
    v25[4] = v38;
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_42_10();
}

uint64_t sub_231282D6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000023137EB60 == a2;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000023137EBC0 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x800000023137EC00 == a2;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x800000023137EBE0 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD00000000000001BLL && 0x800000023137EC20 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_23136A900();

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

unint64_t sub_231282F0C(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231282FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231282D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231282FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286C3C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231283010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286C3C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void AssistantSuggestionsPolicyConfig.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43_9();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44250, &qword_2313718B0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_6_13();
  v5 = OUTLINED_FUNCTION_56(v3, v3[3]);
  sub_231286C3C(v5, v6, v7);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  OUTLINED_FUNCTION_12_12();
  sub_23136A870();
  if (!v1)
  {
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
    OUTLINED_FUNCTION_12_12();
    sub_23136A860();
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
  }

  v8 = OUTLINED_FUNCTION_50_2();
  v9(v8);
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_41_10();
}

void AssistantSuggestionsPolicyConfig.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_43_9();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44258, &qword_2313718B8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_1_23();
  v9 = sub_231286C3C(v6, v7, v8);
  OUTLINED_FUNCTION_8_14(&type metadata for AssistantSuggestionsPolicyConfig.CodingKeys, v10, v9);
  if (!v1)
  {
    OUTLINED_FUNCTION_7_12();
    v11 = sub_23136A800();
    OUTLINED_FUNCTION_25_11();
    OUTLINED_FUNCTION_7_12();
    v12 = sub_23136A800();
    OUTLINED_FUNCTION_7_12();
    v18 = sub_23136A800();
    OUTLINED_FUNCTION_7_12();
    sub_23136A7F0();
    v14 = v13;
    OUTLINED_FUNCTION_7_12();
    v15 = sub_23136A800();
    v16 = OUTLINED_FUNCTION_14_16();
    v17(v16, v4);
    *v3 = v11;
    v3[1] = v12;
    v3[2] = v18;
    v3[3] = v14;
    v3[4] = v15;
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_41_10();
}

uint64_t sub_2312833EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000023137EB60 == a2;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x800000023137EBC0 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000002ELL && 0x800000023137EC40 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_23136A900();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_231283504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312833EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23128352C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D7920(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231283568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2311D7920(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void AssistantInitiatedSuggestionPolicyConfig.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44260, &qword_2313718C0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_13();
  v4 = OUTLINED_FUNCTION_56(v2, v2[3]);
  sub_2311D7920(v4, v5, v6);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  OUTLINED_FUNCTION_62_6();
  OUTLINED_FUNCTION_12_12();
  sub_23136A870();
  if (!v0)
  {
    OUTLINED_FUNCTION_35_10();
    OUTLINED_FUNCTION_12_12();
    sub_23136A870();
    OUTLINED_FUNCTION_36_9();
    sub_231369EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44268, &qword_2313718C8);
    sub_2311D79D4(&unk_27DD44270);
    OUTLINED_FUNCTION_12_12();
    sub_23136A890();
  }

  v7 = OUTLINED_FUNCTION_50_2();
  v8(v7);
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_231283754(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000023137EC70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_23136A900();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_23128380C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231283754(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_231283838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286C90(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231283874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286C90(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SignalGeneratorConfig.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44280, &qword_2313718D8);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_59_6();
  v3 = OUTLINED_FUNCTION_9_17(v1);
  sub_231286C90(v3, v4, v5);
  OUTLINED_FUNCTION_19_12();
  sub_23136AA40();
  sub_23136A870();
  v6 = OUTLINED_FUNCTION_39_8();
  v7(v6);
  OUTLINED_FUNCTION_22_0();
}

void SignalGeneratorConfig.init(from:)()
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_22_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44288, &qword_2313718E0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_1_23();
  v6 = sub_231286C90(v3, v4, v5);
  OUTLINED_FUNCTION_8_14(&type metadata for SignalGeneratorConfig.CodingKeys, v7, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_11_14();
    v8 = sub_23136A800();
    v9 = OUTLINED_FUNCTION_4_14();
    v10(v9);
    *v1 = v8;
  }

  OUTLINED_FUNCTION_48_6();
  OUTLINED_FUNCTION_22_0();
}

uint64_t SiriHelpConfig.beforeTheFold.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  sub_231369EE0();

  return sub_231369EE0();
}

void __swiftcall BeforeTheFoldConfig.init(maxSuggestions:addFallbacks:distinctSuggestionIdOwners:distinctOwnership:distinctSuggestionGroups:)(SiriSuggestions::BeforeTheFoldConfig *__return_ptr retstr, Swift::Int maxSuggestions, Swift::Bool addFallbacks, Swift::OpaquePointer distinctSuggestionIdOwners, Swift::Bool distinctOwnership, Swift::OpaquePointer distinctSuggestionGroups)
{
  retstr->maxSuggestions = maxSuggestions;
  retstr->addFallbacks = addFallbacks;
  retstr->distinctSuggestionIdOwners = distinctSuggestionIdOwners;
  retstr->distinctOwnership = distinctOwnership;
  retstr->distinctSuggestionGroups = distinctSuggestionGroups;
}

uint64_t sub_231283B54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000023137EC70 == a2;
  if (v3 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x800000023137EC90 == a2;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x685465726F666562 && a2 == 0xED0000646C6F4665;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000023137ECB0 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4C6E6F6973736573 && a2 == 0xED00006874676E65)
        {

          return 4;
        }

        else
        {
          v10 = sub_23136A900();

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

unint64_t sub_231283D10(char a1)
{
  result = 0x685465726F666562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x4C6E6F6973736573;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_231283DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_231283B54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231283E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286CE4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_231283E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286CE4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void SiriHelpConfig.encode(to:)()
{
  OUTLINED_FUNCTION_40_9();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44290, &qword_2313718E8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_13();
  v8 = OUTLINED_FUNCTION_56(v3, v3[3]);
  sub_231286CE4(v8, v9, v10);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  sub_23136A870();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_12();
    v11 = sub_23136A870();
    v14 = sub_231286D38(v11, v12, v13);
    sub_231369EE0();
    sub_231369EE0();
    OUTLINED_FUNCTION_12_12();
    sub_23136A890();

    if (!v14)
    {
      OUTLINED_FUNCTION_12_12();
      sub_23136A860();
      OUTLINED_FUNCTION_12_12();
      sub_23136A860();
    }
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_42_10();
}

void SiriHelpConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, __int16 a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_34_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD442A0, &qword_2313718F0);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v29);
  v30 = OUTLINED_FUNCTION_1_23();
  v33 = sub_231286CE4(v30, v31, v32);
  OUTLINED_FUNCTION_16_16(&type metadata for SiriHelpConfig.CodingKeys, v34, v33);
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v35 = sub_23136A800();
    LOBYTE(v52) = 1;
    OUTLINED_FUNCTION_5_14();
    v36 = sub_23136A800();
    LOBYTE(v51[0]) = 2;
    sub_231286D8C(v36, v37, v38);
    OUTLINED_FUNCTION_18_13();
    sub_23136A820();
    v49 = v36;
    v50 = v35;
    v48 = v52;
    v47 = v53;
    v39 = v54;
    v61 = v55;
    v40 = v56;
    LOBYTE(v52) = 3;
    OUTLINED_FUNCTION_5_14();
    sub_23136A7F0();
    v42 = v41;
    OUTLINED_FUNCTION_5_14();
    sub_23136A7F0();
    v44 = v43;
    v45 = OUTLINED_FUNCTION_4_14();
    v46(v45);
    v51[0] = v50;
    v51[1] = v49;
    v51[2] = v48;
    LOBYTE(v51[3]) = v47;
    v51[4] = v39;
    LOBYTE(v51[5]) = v61;
    v51[6] = v40;
    v51[7] = v42;
    v51[8] = v44;
    memcpy(v28, v51, 0x48uLL);
    sub_2311E6694(v51, &v52);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v52 = v50;
    v53 = v49;
    v54 = v48;
    v55 = v47;
    v56 = v39;
    v57 = v61;
    v58 = v40;
    v59 = v42;
    v60 = v44;
    sub_231286838(&v52);
  }

  OUTLINED_FUNCTION_42_10();
}

uint64_t sub_2312843C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656767755378616DLL && a2 == 0xEE00736E6F697473;
  if (v4 || (sub_23136A900() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x626C6C6146646461 && a2 == 0xEC000000736B6361;
    if (v6 || (sub_23136A900() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ALL && 0x800000023137ECD0 == a2;
      if (v7 || (sub_23136A900() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x800000023137ECF0 == a2;
        if (v8 || (sub_23136A900() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x800000023137ED10 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_23136A900();

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

unint64_t sub_231284574(char a1)
{
  result = 0x656767755378616DLL;
  switch(a1)
  {
    case 1:
      result = 0x626C6C6146646461;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_231284640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2312843C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_231284668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286DE0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2312846A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231286DE0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void BeforeTheFoldConfig.encode(to:)()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD442A8, &unk_2313718F8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_13();
  v8 = OUTLINED_FUNCTION_56(v3, v3[3]);
  sub_231286DE0(v8, v9, v10);
  OUTLINED_FUNCTION_37_10();
  sub_23136AA40();
  OUTLINED_FUNCTION_12_12();
  sub_23136A870();
  if (!v0)
  {
    OUTLINED_FUNCTION_12_12();
    sub_23136A850();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    sub_231286E34(&unk_27DD442B0);
    OUTLINED_FUNCTION_12_12();
    sub_23136A890();
    OUTLINED_FUNCTION_12_12();
    sub_23136A850();
    OUTLINED_FUNCTION_12_12();
    sub_23136A890();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_54_7();
  OUTLINED_FUNCTION_22_0();
}

void BeforeTheFoldConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_34_9();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD442B8, &qword_231371908);
  OUTLINED_FUNCTION_0_0();
  v25 = v24;
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v26);
  v28 = v40 - v27;
  v29 = OUTLINED_FUNCTION_1_23();
  v32 = sub_231286DE0(v29, v30, v31);
  OUTLINED_FUNCTION_16_16(&type metadata for BeforeTheFoldConfig.CodingKeys, v33, v32);
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    OUTLINED_FUNCTION_5_14();
    v34 = sub_23136A800();
    LOBYTE(a10) = 1;
    OUTLINED_FUNCTION_5_14();
    v42 = sub_23136A7E0();
    v41 = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD42F68, &qword_23136B890);
    v43 = 2;
    v36 = sub_231286E34(&unk_280F7C810);
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_18_13();
    sub_23136A820();
    v40[0] = v36;
    v40[1] = v35;
    v37 = a10;
    LOBYTE(a10) = 3;
    OUTLINED_FUNCTION_5_14();
    LOBYTE(v36) = sub_23136A7E0();
    v43 = 4;
    OUTLINED_FUNCTION_18_13();
    sub_23136A820();
    v38 = (v25 + 8);
    v39 = v42 & 1;
    (*v38)(v28, v23);
    *v22 = v41;
    *(v22 + 8) = v39;
    *(v22 + 16) = v37;
    *(v22 + 24) = v36 & 1;
    *(v22 + 32) = a10;
    sub_231369EE0();
    sub_231369EE0();
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  OUTLINED_FUNCTION_22_0();
}

void sub_231284C24(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v23 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v23 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2313692F0();
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;

    sub_231369EE0();
    v11 = sub_2312161B0(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44330, &unk_231372FE0);
      sub_23136A710();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v17[6] + 8 * v11) = v8;
    *(v17[7] + 8 * v11) = v7;
    v18 = v17[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_20;
    }

    v17[2] = v20;
    ++v5;
    a2 = 1;
  }

  sub_2312B40EC();
  v15 = sub_2312161B0(v8);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v21 = swift_allocError();
  swift_willThrow();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_2313692F0();
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_231284EF8(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v6 = sub_231369990();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338);
  MEMORY[0x28223BE20](v10);
  v46 = (v38 - v13);
  v45 = *(a1 + 16);
  if (!v45)
  {
LABEL_13:

    return;
  }

  v38[1] = v3;
  v39 = a1;
  v14 = 0;
  v44 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v15 = *(v11 + 48);
  v42 = v7;
  v43 = v15;
  v47 = (v7 + 32);
  v40 = v9;
  v41 = v6;
  while (1)
  {
    if (v14 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    v16 = v12;
    v17 = v46;
    sub_23123EA8C(v44 + *(v12 + 72) * v14, v46, &qword_27DD43398, &qword_23136C338);
    v19 = v17[1];
    v51 = *v17;
    v18 = v51;
    v52 = v19;
    v20 = *v47;
    (*v47)(v9, v17 + v43, v6);
    v21 = *v48;
    v23 = sub_231215F6C(v18, v19);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_19;
    }

    v27 = v22;
    if (v21[3] < v26)
    {
      break;
    }

    if (a2)
    {
      if (v22)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44340, &unk_231373000);
      sub_23136A710();
      if (v27)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v30 = *v48;
    *(*v48 + 8 * (v23 >> 6) + 64) |= 1 << v23;
    v31 = (v30[6] + 16 * v23);
    *v31 = v18;
    v31[1] = v19;
    v6 = v41;
    v32 = v30[7] + *(v42 + 72) * v23;
    v9 = v40;
    v20(v32, v40, v41);
    v33 = v30[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_20;
    }

    ++v14;
    v30[2] = v35;
    a2 = 1;
    a1 = v39;
    v12 = v16;
    if (v45 == v14)
    {
      goto LABEL_13;
    }
  }

  sub_2312B4340(v26, a2 & 1);
  v28 = sub_231215F6C(v18, v19);
  if ((v27 & 1) != (v29 & 1))
  {
    goto LABEL_21;
  }

  v23 = v28;
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v36 = swift_allocError();
  swift_willThrow();
  v53 = v36;
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v42 + 8))(v40, v41);

    return;
  }

LABEL_22:
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_231285384(uint64_t a1, char a2, void *a3)
{
  v46 = a3;
  v6 = sub_231369330();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v44 = *(a1 + 16);
  if (v44)
  {
    v37[1] = v3;
    v38 = v11;
    v14 = 0;
    v43 = &v13[*(v10 + 48)];
    v15 = *(v11 + 80);
    v41 = v7;
    v42 = a1 + ((v15 + 32) & ~v15);
    v45 = (v7 + 32);
    v39 = a1;
    v40 = v6;
    while (1)
    {
      if (v14 >= *(a1 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        sub_23136A970();
        __break(1u);
        goto LABEL_21;
      }

      sub_23123EA8C(v42 + *(v11 + 72) * v14, v13, &qword_27DD43508, &qword_231373010);
      v16 = *v45;
      v17 = v13;
      (*v45)(v47, v13, v6);
      v19 = *v43;
      v18 = *(v43 + 1);
      v20 = *v46;
      v22 = sub_2312165D8();
      v23 = v20[2];
      v24 = (v21 & 1) == 0;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_18;
      }

      v25 = v21;
      if (v20[3] >= v23 + v24)
      {
        if ((a2 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44350, &qword_231373018);
          sub_23136A710();
        }
      }

      else
      {
        sub_2312B551C();
        v26 = sub_2312165D8();
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_20;
        }

        v22 = v26;
      }

      v28 = v41;
      if (v25)
      {
        break;
      }

      v29 = v47;
      v30 = *v46;
      *(*v46 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v6 = v40;
      v16((v30[6] + *(v28 + 72) * v22), v29, v40);
      v31 = (v30[7] + 16 * v22);
      *v31 = v19;
      v31[1] = v18;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_19;
      }

      ++v14;
      v30[2] = v34;
      a2 = 1;
      v11 = v38;
      a1 = v39;
      v13 = v17;
      if (v44 == v14)
      {
        goto LABEL_13;
      }
    }

    v35 = swift_allocError();
    swift_willThrow();

    v50 = v35;
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v28 + 8))(v47, v40);

      return;
    }

LABEL_21:
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_23136A650();
    MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
    sub_23136A6F0();
    MEMORY[0x23192A730](39, 0xE100000000000000);
    sub_23136A750();
    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

void sub_2312857F8(uint64_t a1, char a2, void *a3)
{
  v41 = a3;
  v6 = sub_231368260();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43DD8, &unk_231370740);
  MEMORY[0x28223BE20](v9);
  v39 = &v34 - v12;
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_13:

    return;
  }

  v34 = v3;
  v35 = v7;
  v13 = 0;
  v37 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v36 = *(v10 + 48);
  v40 = (v7 + 32);
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    v14 = v11;
    v15 = v39;
    sub_23123EA8C(v37 + *(v11 + 72) * v13, v39, &qword_27DD43DD8, &unk_231370740);
    v16 = *v40;
    v17 = v6;
    (*v40)(v42, v15, v6);
    v18 = *(v15 + v36);
    v19 = *v41;
    v21 = sub_231216480();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v24 = v20;
    if (v19[3] < v22 + v23)
    {
      break;
    }

    if (a2)
    {
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44378, &qword_231373038);
      sub_23136A710();
      if (v24)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v27 = v42;
    v28 = *v41;
    *(*v41 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v6 = v17;
    v16((v28[6] + *(v35 + 72) * v21), v27, v17);
    *(v28[7] + 8 * v21) = v18;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    ++v13;
    v28[2] = v31;
    a2 = 1;
    v11 = v14;
    if (v38 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_2312B5E4C();
  v25 = sub_231216480();
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_21;
  }

  v21 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v32 = swift_allocError();
  swift_willThrow();

  v45 = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v35 + 8))(v42, v17);

    return;
  }

LABEL_22:
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_231285C70(uint64_t a1, char a2, void *a3)
{
  v42 = a3;
  v6 = sub_231367C70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20);
  MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v39 = *(a1 + 16);
  if (!v39)
  {
LABEL_13:

    return;
  }

  v34 = v3;
  v35 = v6;
  v13 = 0;
  v38 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v14 = *(v10 + 48);
  v36 = v7;
  v37 = v14;
  v41 = (v7 + 32);
  while (1)
  {
    if (v13 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    v15 = v11;
    v16 = v40;
    sub_23123EA8C(v38 + *(v11 + 72) * v13, v40, &qword_27DD435E0, &qword_23136CB20);
    v17 = *v41;
    (*v41)(v43, v16, v6);
    v18 = *(v16 + v37);
    v19 = *v42;
    v21 = sub_2312167DC();
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_19;
    }

    v24 = v20;
    if (v19[3] < v22 + v23)
    {
      break;
    }

    if (a2)
    {
      if (v20)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44368, &qword_231373028);
      sub_23136A710();
      if (v24)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v27 = v43;
    v28 = *v42;
    *(*v42 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v6 = v35;
    v17((v28[6] + *(v36 + 72) * v21), v27, v35);
    *(v28[7] + 8 * v21) = v18;
    v29 = v28[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_20;
    }

    ++v13;
    v28[2] = v31;
    a2 = 1;
    v11 = v15;
    if (v39 == v13)
    {
      goto LABEL_13;
    }
  }

  sub_2312B60F8();
  v25 = sub_2312167DC();
  if ((v24 & 1) != (v26 & 1))
  {
    goto LABEL_21;
  }

  v21 = v25;
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v32 = swift_allocError();
  swift_willThrow();

  v46 = v32;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v36 + 8))(v43, v35);

    return;
  }

LABEL_22:
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_2312860D4(uint64_t a1, char a2, void *a3)
{
  v36 = *(a1 + 16);
  v37 = a3;
  if (!v36)
  {

    return;
  }

  v35 = v3;
  v6 = 0;
  for (i = a1 + 32; ; i += 48)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_23136A970();
      __break(1u);
      goto LABEL_22;
    }

    sub_23123EA8C(i, &v43, &qword_27DD44048, &unk_231370F00);
    v8 = v43;
    v42 = v43;
    v40 = v44;
    v41 = v45;
    v9 = *v37;
    v17 = sub_231215F6C(v43, *(&v43 + 1));
    v18 = v9[2];
    v19 = (v10 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v10;
    if (v9[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44388, &unk_231373050);
      sub_23136A710();
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v24 = *v37;
    *(*v37 + 8 * (v17 >> 6) + 64) |= 1 << v17;
    *(v24[6] + 16 * v17) = v8;
    v25 = (v24[7] + 32 * v17);
    v26 = v41;
    *v25 = v40;
    v25[1] = v26;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_20;
    }

    ++v6;
    v24[2] = v29;
    a2 = 1;
    if (v36 == v6)
    {

      return;
    }
  }

  sub_2312B656C(v20, a2 & 1, v11, v12, v13, v14, v15, v16, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, *(&v41 + 1), v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, v49, v50, v51, v52, v53);
  v22 = sub_231215F6C(v8, *(&v8 + 1));
  if ((v21 & 1) != (v23 & 1))
  {
    goto LABEL_21;
  }

  v17 = v22;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v30 = swift_allocError();
  swift_willThrow();

  v47 = v30;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2311D1F18(&v40, &qword_27DD443C0, &unk_23136E000);

    return;
  }

LABEL_22:
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

unint64_t sub_2312863F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85058;
  if (!qword_280F85058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85058);
  }

  return result;
}

unint64_t sub_23128644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850A8;
  if (!qword_280F850A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850A8);
  }

  return result;
}

unint64_t sub_2312864A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD441A8;
  if (!qword_27DD441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD441A8);
  }

  return result;
}

unint64_t sub_2312864F4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD44198, &qword_231371838);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_231286568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85040;
  if (!qword_280F85040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85040);
  }

  return result;
}

unint64_t sub_2312865BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850C8;
  if (!qword_280F850C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850C8);
  }

  return result;
}

unint64_t sub_231286640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85088;
  if (!qword_280F85088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85088);
  }

  return result;
}

unint64_t sub_231286694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850D0;
  if (!qword_280F850D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850D0);
  }

  return result;
}

unint64_t sub_2312866E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85070;
  if (!qword_280F85070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85070);
  }

  return result;
}

unint64_t sub_23128673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44200;
  if (!qword_27DD44200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44200);
  }

  return result;
}

unint64_t sub_231286790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44208;
  if (!qword_27DD44208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44208);
  }

  return result;
}

unint64_t sub_2312867E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44210;
  if (!qword_27DD44210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44210);
  }

  return result;
}

unint64_t sub_231286868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44218;
  if (!qword_27DD44218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44218);
  }

  return result;
}

unint64_t sub_2312868BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44220;
  if (!qword_27DD44220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44220);
  }

  return result;
}

unint64_t sub_231286910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44228;
  if (!qword_27DD44228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44228);
  }

  return result;
}

unint64_t sub_231286964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44230;
  if (!qword_27DD44230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44230);
  }

  return result;
}

unint64_t sub_2312869B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85090;
  if (!qword_280F85090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85090);
  }

  return result;
}

unint64_t sub_231286A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850B0;
  if (!qword_280F850B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850B0);
  }

  return result;
}

unint64_t sub_231286A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85398;
  if (!qword_280F85398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85398);
  }

  return result;
}

unint64_t sub_231286AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85370;
  if (!qword_280F85370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85370);
  }

  return result;
}

unint64_t sub_231286B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85458;
  if (!qword_280F85458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85458);
  }

  return result;
}

unint64_t sub_231286B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F81B80;
  if (!qword_280F81B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81B80);
  }

  return result;
}

unint64_t sub_231286BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85390;
  if (!qword_280F85390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85390);
  }

  return result;
}

unint64_t sub_231286C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85478[0];
  if (!qword_280F85478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F85478);
  }

  return result;
}

unint64_t sub_231286C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F81B98[0];
  if (!qword_280F81B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F81B98);
  }

  return result;
}

unint64_t sub_231286CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F853B0;
  if (!qword_280F853B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F853B0);
  }

  return result;
}

unint64_t sub_231286D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44298;
  if (!qword_27DD44298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44298);
  }

  return result;
}

unint64_t sub_231286D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F82E68;
  if (!qword_280F82E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E68);
  }

  return result;
}

unint64_t sub_231286DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F82E80;
  if (!qword_280F82E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E80);
  }

  return result;
}

unint64_t sub_231286E34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD42F68, &qword_23136B890);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_231286EA4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 424))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_231286EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
    *(result + 376) = 0u;
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
      *(result + 424) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231286FBC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_231286FFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.SiriSuggestionsEventConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2312870CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_23128710C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231287170(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2312871B0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SignalGeneratorConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SignalGeneratorConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_231287258(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_231287298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2312872F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_231287334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestionsRuntimeConfig.SiriSuggestionsEngagementConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231287504(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53_7(-1);
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 5);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_53_7(v8);
}

_BYTE *sub_231287588(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_65_4(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_64_5(result, v6);
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
          result = OUTLINED_FUNCTION_51_6(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_231287654(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_53_7(-1);
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
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_53_7((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_53_7(v8);
}

_BYTE *sub_2312876D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_65_4(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_63_5(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_64_5(result, v6);
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
          result = OUTLINED_FUNCTION_51_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2312877A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442C0;
  if (!qword_27DD442C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442C0);
  }

  return result;
}

unint64_t sub_231287800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442C8;
  if (!qword_27DD442C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442C8);
  }

  return result;
}

unint64_t sub_231287858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442D0;
  if (!qword_27DD442D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442D0);
  }

  return result;
}

unint64_t sub_2312878B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442D8;
  if (!qword_27DD442D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442D8);
  }

  return result;
}

unint64_t sub_231287908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442E0;
  if (!qword_27DD442E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442E0);
  }

  return result;
}

unint64_t sub_231287960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442E8;
  if (!qword_27DD442E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442E8);
  }

  return result;
}

unint64_t sub_2312879B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442F0;
  if (!qword_27DD442F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442F0);
  }

  return result;
}

unint64_t sub_231287A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD442F8;
  if (!qword_27DD442F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD442F8);
  }

  return result;
}

unint64_t sub_231287A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44300;
  if (!qword_27DD44300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44300);
  }

  return result;
}

unint64_t sub_231287AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44308;
  if (!qword_27DD44308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44308);
  }

  return result;
}

unint64_t sub_231287B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44310;
  if (!qword_27DD44310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44310);
  }

  return result;
}

unint64_t sub_231287B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44318;
  if (!qword_27DD44318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44318);
  }

  return result;
}

unint64_t sub_231287BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DD44320;
  if (!qword_27DD44320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD44320);
  }

  return result;
}

unint64_t sub_231287C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F82E70;
  if (!qword_280F82E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E70);
  }

  return result;
}

unint64_t sub_231287C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F82E78;
  if (!qword_280F82E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F82E78);
  }

  return result;
}

unint64_t sub_231287CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F853A0;
  if (!qword_280F853A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F853A0);
  }

  return result;
}

unint64_t sub_231287D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F853A8;
  if (!qword_280F853A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F853A8);
  }

  return result;
}

unint64_t sub_231287D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F81B88;
  if (!qword_280F81B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81B88);
  }

  return result;
}

unint64_t sub_231287DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F81B90;
  if (!qword_280F81B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F81B90);
  }

  return result;
}

unint64_t sub_231287E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7CE80;
  if (!qword_280F7CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE80);
  }

  return result;
}

unint64_t sub_231287E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F7CE88;
  if (!qword_280F7CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CE88);
  }

  return result;
}

unint64_t sub_231287EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85468;
  if (!qword_280F85468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85468);
  }

  return result;
}

unint64_t sub_231287F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85470;
  if (!qword_280F85470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85470);
  }

  return result;
}

unint64_t sub_231287F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85380;
  if (!qword_280F85380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85380);
  }

  return result;
}

unint64_t sub_231287FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85388;
  if (!qword_280F85388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85388);
  }

  return result;
}

unint64_t sub_231288040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85060;
  if (!qword_280F85060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85060);
  }

  return result;
}

unint64_t sub_231288098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85068;
  if (!qword_280F85068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85068);
  }

  return result;
}

unint64_t sub_2312880F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85CF8;
  if (!qword_280F85CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85CF8);
  }

  return result;
}

unint64_t sub_231288148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85A30;
  if (!qword_280F85A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A30);
  }

  return result;
}

unint64_t sub_2312881A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85D00;
  if (!qword_280F85D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85D00);
  }

  return result;
}

unint64_t sub_2312881F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85A50;
  if (!qword_280F85A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A50);
  }

  return result;
}

unint64_t sub_231288250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85078;
  if (!qword_280F85078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85078);
  }

  return result;
}

unint64_t sub_2312882A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85080;
  if (!qword_280F85080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85080);
  }

  return result;
}

unint64_t sub_231288300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850B8;
  if (!qword_280F850B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850B8);
  }

  return result;
}

unint64_t sub_231288358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850C0;
  if (!qword_280F850C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850C0);
  }

  return result;
}

unint64_t sub_2312883B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85098;
  if (!qword_280F85098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85098);
  }

  return result;
}

unint64_t sub_231288408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F850A0;
  if (!qword_280F850A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F850A0);
  }

  return result;
}

unint64_t sub_231288460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85048;
  if (!qword_280F85048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85048);
  }

  return result;
}

unint64_t sub_2312884B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85050;
  if (!qword_280F85050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85050);
  }

  return result;
}

unint64_t sub_23128850C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_75_3(a1);
  if (!result)
  {
    v3(255);
    OUTLINED_FUNCTION_34_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_23128854C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F84FC8;
  if (!qword_280F84FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F84FC8);
  }

  return result;
}

unint64_t sub_2312885A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85A80;
  if (!qword_280F85A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85A80);
  }

  return result;
}

unint64_t sub_2312885F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280F85038;
  if (!qword_280F85038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F85038);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_79_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_23136A820();
}

uint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FEBD8](v2, a2, 22, 1, 490);
}

void *AppIntentUpdateRefresher.__allocating_init(refreshableService:interestedIntentNames:intentDiscoverer:)()
{
  OUTLINED_FUNCTION_14_17();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  sub_2311D38A8(v0, (v4 + 5));
  return v4;
}

void *AppIntentUpdateRefresher.init(refreshableService:interestedIntentNames:intentDiscoverer:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_2311D38A8(a4, (v4 + 5));
  return v4;
}

BOOL sub_231288938(uint64_t a1)
{
  sub_2313698C0();
  OUTLINED_FUNCTION_21();
  v51 = v3;
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v48 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439E0, &unk_23136EDD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  v11 = sub_231368480();
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v49 = v5;
  v50 = a1;
  if (v15)
  {
    v53 = (v12 + 8);
    v54 = (v12 + 32);
    v16 = a1 + 40;
    v56 = MEMORY[0x277D84FA0];
    do
    {
      __swift_project_boxed_opaque_existential_1(v55 + 5, v55[8]);
      sub_231369EE0();
      sub_231368A80();

      if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
      {
        sub_231228E9C(v10, &qword_27DD439E0, &unk_23136EDD0);
      }

      else
      {
        (*v54)(v14, v10, v11);
        v17 = v56;
        sub_231369EE0();
        v18 = sub_231368460();
        v19 = sub_231288F74(v18, v17);
        (*v53)(v14, v11);

        v56 = v19;
      }

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  else
  {
    v56 = MEMORY[0x277D84FA0];
  }

  v20 = v56;
  v21 = v55[4];
  sub_231369EE0();
  v22 = sub_231289078(v21, v20);

  if ((v22 & 1) == 0)
  {
    v23 = v48;
    sub_2313690F0();
    v36 = v50;
    sub_231369EE0();

    v25 = sub_2313698A0();
    v37 = sub_23136A390();

    if (os_log_type_enabled(v25, v37))
    {
      v38 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v38 = 136315650;
      LODWORD(v55) = v22;
      v39 = MEMORY[0x23192A860](v36);
      sub_2311CFD58(v39, v40, &v57);

      OUTLINED_FUNCTION_11_15();
      v41 = sub_23136A320();
      v43 = v42;

      sub_2311CFD58(v41, v43, &v57);

      OUTLINED_FUNCTION_12_13();
      LOBYTE(v22) = v55;
      v44 = sub_23136A320();
      v46 = sub_2311CFD58(v44, v45, &v57);

      *(v38 + 24) = v46;
      _os_log_impl(&dword_2311CB000, v25, v37, "%s have intents: %s that intersect our interestedIntentNames: %s. Refreshing service", v38, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v51 + 8))(v48, v52);
      goto LABEL_15;
    }

LABEL_14:

    (*(v51 + 8))(v23, v52);
    goto LABEL_15;
  }

  v23 = v49;
  sub_2313690F0();
  v24 = v50;
  sub_231369EE0();

  v25 = sub_2313698A0();
  v26 = sub_23136A390();

  if (!os_log_type_enabled(v25, v26))
  {
    goto LABEL_14;
  }

  v27 = swift_slowAlloc();
  v57 = swift_slowAlloc();
  *v27 = 136315650;
  v28 = MEMORY[0x23192A860](v24, MEMORY[0x277D837D0]);
  sub_2311CFD58(v28, v29, &v57);

  OUTLINED_FUNCTION_11_15();
  v30 = sub_23136A320();
  v32 = v31;

  sub_2311CFD58(v30, v32, &v57);

  OUTLINED_FUNCTION_12_13();
  v33 = sub_23136A320();
  v35 = sub_2311CFD58(v33, v34, &v57);

  *(v27 + 24) = v35;
  _os_log_impl(&dword_2311CB000, v25, v26, "%s does NOT have intents: %s that we are interested in: %s", v27, 0x20u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_29();

  (*(v51 + 8))(v49, v52);
LABEL_15:

  return (v22 & 1) == 0;
}

uint64_t sub_231289078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_231369EE0();
  result = sub_231369EE0();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_23136A9D0();
      sub_231369EE0();
      sub_23136A060();
      v18 = sub_23136AA00();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_23136A900();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231289250()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312892F4()
{
  if (sub_231288938(v0[2]))
  {
    v1 = v0[3];
    v2 = *(v1 + 16);
    v0[7] = v2;
    if (v2)
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_34_0(v5);

      return MEMORY[0x2821C6518](ObjectType, v3);
    }

    sub_2313690F0();
    v6 = sub_2313698A0();
    v7 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_18_0(v7))
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_16_17(&dword_2311CB000, v8, v9, "refreshableService not set for AppIntentUpdateRefresher");
      OUTLINED_FUNCTION_29();
    }

    v10 = OUTLINED_FUNCTION_4_15();
    v11(v10);
  }

  OUTLINED_FUNCTION_56_0();

  return v12();
}

uint64_t sub_231289474()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231289558()
{
  OUTLINED_FUNCTION_8();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_2312895B8()
{
  OUTLINED_FUNCTION_8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2313698C0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23128965C()
{
  if (sub_231288938(v0[2]))
  {
    v1 = v0[3];
    v2 = *(v1 + 16);
    v0[7] = v2;
    if (v2)
    {
      v3 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_34_0(v5);

      return MEMORY[0x2821C6518](ObjectType, v3);
    }

    sub_2313690F0();
    v6 = sub_2313698A0();
    v7 = sub_23136A3B0();
    if (OUTLINED_FUNCTION_18_0(v7))
    {
      *OUTLINED_FUNCTION_63() = 0;
      OUTLINED_FUNCTION_16_17(&dword_2311CB000, v8, v9, "refreshableService not set for AppIntentUpdateRefresher");
      OUTLINED_FUNCTION_29();
    }

    v10 = OUTLINED_FUNCTION_4_15();
    v11(v10);
  }

  OUTLINED_FUNCTION_56_0();

  return v12();
}

uint64_t sub_2312897DC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t AppIntentUpdateRefresher.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  return v0;
}

uint64_t AppIntentUpdateRefresher.__deallocating_deinit()
{
  AppIntentUpdateRefresher.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_231289924()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231289250();
}

uint64_t sub_2312899BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_2312895B8();
}

uint64_t AppInstallUpdater.__allocating_init(intentDiscoverer:refreshableService:bookkeepingXPCClient:)()
{
  OUTLINED_FUNCTION_14_17();
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_21();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  ObjectType = swift_getObjectType();
  v14 = sub_23128A92C(v11, v3, v0, v1, v6, ObjectType, v7, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v14;
}

uint64_t AppInstallUpdater.start(container:)()
{
  OUTLINED_FUNCTION_8();
  v1[26] = v2;
  v1[27] = v0;
  v1[25] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078);
  v1[28] = OUTLINED_FUNCTION_43();
  v4 = sub_2313698C0();
  v1[29] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[30] = v5;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v6 = sub_2313680F0();
  v1[33] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[34] = v7;
  v1[35] = OUTLINED_FUNCTION_43();
  v8 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231289C90()
{
  sub_2311CF324(*(v0 + 216) + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_bookkeepingXPCClient, v0 + 16);
  v1 = type metadata accessor for AutoCompleteIndexUpdater();
  swift_allocObject();
  v2 = sub_2312A425C((v0 + 16));
  sub_23126EFE8(0);
  v4 = v3;
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    sub_23126EFE8(v5 > 1);
    v4 = v9;
  }

  *(v0 + 288) = v4;
  *(v0 + 80) = v1;
  *(v0 + 88) = sub_23128AB5C(qword_280F80CC8, 255, type metadata accessor for AutoCompleteIndexUpdater, &unk_2313742D8);
  *(v0 + 56) = v2;
  *(v4 + 16) = v6 + 1;
  sub_2311D38A8((v0 + 56), v4 + 40 * v6 + 32);
  swift_getObjectType();
  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_231289E3C;
  v8 = *(v0 + 264);

  return MEMORY[0x2821C72A8](v8);
}

uint64_t sub_231289E3C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *(v4 + 304) = v3;

  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231289F3C()
{
  v57 = v0;
  v1 = *(v0 + 304);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = *(v0 + 272);
      v5 = *(v3 + 16);
      v4 = v3 + 16;
      v53 = v5;
      updated = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v0 = *(v4 + 56);
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        v8 = *(v55 + 280);
        v9 = *(v55 + 264);
        v53(v8, updated, v9);
        v10 = sub_2313680E0();
        (*(v4 - 8))(v8, v9);
        v12 = *(v10 + 16);
        v13 = *(v7 + 16);
        v14 = v12 + v13;
        if (__OFADD__(v13, v12))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v14 > *(v7 + 24) >> 1)
        {
          sub_23126DC90();
          v7 = v15;
        }

        if (*(v10 + 16))
        {
          v11 = *(v7 + 16);
          if (((*(v7 + 24) >> 1) - v11) < v12)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          if (v12)
          {
            v16 = *(v7 + 16);
            v17 = __OFADD__(v16, v12);
            v11 = v12 + v16;
            if (v17)
            {
              goto LABEL_30;
            }

            *(v7 + 16) = v11;
          }
        }

        else
        {

          if (v12)
          {
            goto LABEL_28;
          }
        }

        updated += v0;
        if (!--v2)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
LABEL_18:
      v0 = v55;
      v18 = *(v55 + 288);
      v19 = *(v55 + 216);

      v20 = *(v19 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService);
      v21 = *(v19 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService + 8);
      swift_unknownObjectRetain();
      v22 = sub_231369EE0();
      v23 = sub_231255354(v22);
      sub_2311CF324(v19 + 112, v55 + 96);
      updated = type metadata accessor for AppIntentUpdateRefresher();
      v12 = swift_allocObject();
      v12[2] = v20;
      v12[3] = v21;
      v12[4] = v23;
      sub_2311D38A8((v55 + 96), (v12 + 5));
      v13 = *(v18 + 16);
      v11 = *(v18 + 24);
      v14 = (v13 + 1);
      v25 = *(v55 + 288);
      if (v13 < v11 >> 1)
      {
        goto LABEL_19;
      }
    }

    sub_23126EFE8(v11 > 1);
    v25 = v51;
LABEL_19:
    *(v0 + 160) = updated;
    *(v0 + 168) = sub_23128AB5C(qword_280F80D98, v24, type metadata accessor for AppIntentUpdateRefresher, &protocol conformance descriptor for AppIntentUpdateRefresher);
    *(v0 + 136) = v12;
    *(v25 + 16) = v14;
    sub_2311D38A8((v0 + 136), v25 + 40 * v13 + 32);
    sub_231369100();
    sub_231369EE0();
    v26 = sub_2313698A0();
    v27 = sub_23136A390();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 256);
    v31 = *(v0 + 232);
    v30 = *(v0 + 240);
    if (v28)
    {
      v54 = *(v0 + 232);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136315138;
      v34 = MEMORY[0x23192A860](v7, MEMORY[0x277D837D0]);
      v52 = v29;
      v36 = v35;

      v0 = v55;
      v37 = sub_2311CFD58(v34, v36, &v56);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_2311CB000, v26, v27, "Starting the AppIntentUpdater listener with registered intent names: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v30 + 8))(v52, v54);
    }

    else
    {

      (*(v30 + 8))(v29, v31);
    }
  }

  v39 = *(v0 + 216);
  v38 = *(v0 + 224);
  __swift_project_boxed_opaque_existential_1((v39 + 152), *(v39 + 176));
  sub_231368D30();

  v40 = sub_2313681F0();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v40);
  v41 = OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken;
  swift_beginAccess();
  sub_23128AAC8(v38, v39 + v41);
  swift_endAccess();
  sub_2313690F0();
  v42 = sub_2313698A0();
  v43 = sub_23136A390();
  if (OUTLINED_FUNCTION_18_0(v43))
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v44, v45, "Registered observer with app registration notification to update third party suggestions and build autocomplete index when apps are installed/un-installed");
    OUTLINED_FUNCTION_29();
  }

  v46 = *(v0 + 248);
  v47 = *(v0 + 232);
  v48 = *(v0 + 240);

  (*(v48 + 8))(v46, v47);

  OUTLINED_FUNCTION_56_0();

  return v49();
}

uint64_t AppInstallUpdater.destroy()()
{
  OUTLINED_FUNCTION_8();
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078);
  v1[6] = OUTLINED_FUNCTION_43();
  v2 = sub_2313681F0();
  v1[7] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[8] = v3;
  v1[9] = OUTLINED_FUNCTION_43();
  v4 = sub_2313698C0();
  v1[10] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23128A57C(uint64_t a1)
{
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_18_0(v3))
  {
    *OUTLINED_FUNCTION_63() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "destroying AppIntentUpdater");
    OUTLINED_FUNCTION_29();
  }

  v7 = v1[6];
  v6 = v1[7];
  v8 = v1[5];

  v9 = OUTLINED_FUNCTION_4_15();
  v10(v9);
  v11 = OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken;
  swift_beginAccess();
  sub_23128ABA4(v8 + v11, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v6) == 1)
  {
    sub_231228E9C(v1[6], &qword_27DD44390, &qword_231373078);
  }

  else
  {
    v12 = v1[5];
    (*(v1[8] + 32))(v1[9], v1[6], v1[7]);
    __swift_project_boxed_opaque_existential_1((v12 + 152), *(v12 + 176));
    sub_231368D20();
    v13 = OUTLINED_FUNCTION_4_15();
    v14(v13);
  }

  OUTLINED_FUNCTION_56_0();

  return v15();
}

uint64_t AppInstallUpdater.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  sub_231228E9C(v0 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken, &qword_27DD44390, &qword_231373078);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_bookkeepingXPCClient));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AppInstallUpdater.__deallocating_deinit()
{
  AppInstallUpdater.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23128A7F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return AppInstallUpdater.start(container:)();
}

uint64_t sub_23128A89C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return AppInstallUpdater.destroy()();
}

uint64_t sub_23128A92C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_21();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v26 - v21;
  (*(v15 + 32))(&v26 - v21, v20);
  v23 = [objc_opt_self() defaultCenter];
  sub_2311CF324(a3, v27);
  (*(v15 + 16))(v18, v22, a5);
  v24 = sub_23128AFF0(v18, v23, a2, v27, a5, a6, a7, a8);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v15 + 8))(v22, a5);
  return v24;
}

uint64_t sub_23128AAC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23128AB5C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23128ABA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44390, &qword_231373078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of AppIntentUpdateRefresher.appInstalled(bundleIds:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  OUTLINED_FUNCTION_34_0(v4);

  return v6(a1);
}

uint64_t dispatch thunk of AppIntentUpdateRefresher.appUnInstalled(bundleIds:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  OUTLINED_FUNCTION_34_0(v4);

  return v6(a1);
}

uint64_t type metadata accessor for AppInstallUpdater(uint64_t a1)
{
  result = qword_280F83BD8;
  if (!qword_280F83BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23128AECC(uint64_t a1)
{
  sub_23128AF98(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23128AF98(uint64_t a1)
{
  if (!qword_280F7C9B0)
  {
    sub_2313681F0();
    v1 = sub_23136A4D0();
    if (!v2)
    {
      atomic_store(v1, &qword_280F7C9B0);
    }
  }
}

uint64_t sub_23128AFF0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v23);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  type metadata accessor for AppInstallUpdater(0);
  v15 = swift_allocObject();
  v21 = sub_23128B114();
  v22 = MEMORY[0x277D613B8];
  *&v20 = a2;
  swift_defaultActor_initialize();
  v16 = OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_appRegistrationEventObserverToken;
  v17 = sub_2313681F0();
  __swift_storeEnumTagSinglePayload(v15 + v16, 1, 1, v17);
  sub_2311D38A8(&v23, v15 + 112);
  sub_2311D38A8(&v20, v15 + 152);
  v18 = (v15 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_refreshableService);
  *v18 = a3;
  v18[1] = a8;
  sub_2311D38A8(a4, v15 + OBJC_IVAR____TtC15SiriSuggestions17AppInstallUpdater_bookkeepingXPCClient);
  return v15;
}

unint64_t sub_23128B114()
{
  result = qword_280F7C798;
  if (!qword_280F7C798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F7C798);
  }

  return result;
}

uint64_t dispatch thunk of DataService.createDataProvider(candidates:generationId:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_231209C08;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23128B2F0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for NoOpDataProvider();
  v3 = swift_allocObject();
  v1[3] = v2;
  v1[4] = &off_2845F57A8;
  *v1 = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23128B394(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209C08;

  return sub_23128B2D0(a1);
}

double sub_23128B42C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_23128B4B4()
{
  v0 = sub_2312981F0();
  type metadata accessor for DefaultFinalizerProvider();
  *(swift_initStackObject() + 16) = v0;
  v1 = sub_2312E8768();

  return v1;
}

uint64_t sub_23128B534()
{
  v1 = sub_23128B4B4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23128B594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_3(a6);
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_23128B6D0;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23128B6D0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_24();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v4.n128_f64[0] = OUTLINED_FUNCTION_3_21();

  return v3(v4);
}

uint64_t sub_23128B7B0@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  sub_2311CF324(a1, v21);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v21, v21[3]);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v20[3] = &type metadata for SiriSuggestionsRuntimeConfig;
  v20[4] = &off_2845F6CC8;
  v20[0] = swift_allocObject();
  memcpy((v20[0] + 16), v6, 0x1A8uLL);
  v8 = type metadata accessor for DiscoverabilityScorer(0);
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for SiriSuggestionsRuntimeConfig);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  *(v9 + 40) = &type metadata for SiriSuggestionsRuntimeConfig;
  *(v9 + 48) = &off_2845F6CC8;
  v15 = swift_allocObject();
  *(v9 + 16) = v15;
  memcpy((v15 + 16), v13, 0x1A8uLL);
  v16 = OBJC_IVAR____TtC15SiriSuggestions21DiscoverabilityScorer_objective;
  v17 = *MEMORY[0x277D61380];
  sub_2313694E0();
  OUTLINED_FUNCTION_11();
  (*(v18 + 104))(v9 + v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v21);
  a2[3] = v8;
  a2[4] = &off_2845F6680;
  *a2 = v9;
  return result;
}

double sub_23128BA58()
{
  swift_beginAccess();
  sub_2311ED450(0.0, 1.0);
  v1 = v0;
  swift_endAccess();
  return v1;
}

uint64_t sub_23128BAC0()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions12RandomScorer_randomNumber;
  sub_231369500();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23128BB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *v4;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_23128BBB4, v6, 0);
}

uint64_t sub_23128BBB4()
{
  OUTLINED_FUNCTION_8();
  v1.n128_f64[0] = sub_23128BA58();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23128BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23128BC38, 0, 0);
}

uint64_t sub_23128BC38()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  OUTLINED_FUNCTION_3(v3);
  v11 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_23128BD60;
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8, v6, v7, v2, v3);
}

uint64_t sub_23128BD60()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_24();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v4.n128_f64[0] = OUTLINED_FUNCTION_3_21();

  return v3(v4);
}

uint64_t sub_23128BE40()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC15SiriSuggestions22DefaultObjectiveScorer_objective;
  sub_2313694E0();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);

  return swift_deallocClassInstance();
}

uint64_t sub_23128BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23128BFBC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15SiriSuggestions22DefaultObjectiveScorer_objective;
  v5 = sub_2313694E0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_23128C038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23128B6D0;

  return sub_23128BC10(a1, a2, a3, a4);
}

uint64_t sub_23128C0F8(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {
      return 0;
    }

    v7 = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
    result = sub_23128D18C(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, a2);
    if (v2)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v5;
  }

  return v5;
}

void sub_23128C1D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443B0, &qword_2313734C0);
  MEMORY[0x28223BE20](v7);
  v28 = (&v26 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443B8, qword_2313734C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = 0;
  v29 = a1;
  v16 = *(a1 + 16);
  while (2)
  {
    v27 = a2;
    while (1)
    {
      if (v15 == v16)
      {
        v17 = 1;
        v15 = v16;
      }

      else
      {
        if (v15 >= v16)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v18 = *(type metadata accessor for RankedCandidateSuggestion(0) - 8);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_18;
        }

        v19 = v28;
        v20 = v29 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15;
        v21 = *(v7 + 48);
        *v28 = v15;
        sub_2311E1984(v20, v19 + v21);
        sub_2311F0440(v19, v11, &qword_27DD443B0, &qword_2313734C0);
        v17 = 0;
        ++v15;
      }

      __swift_storeEnumTagSinglePayload(v11, v17, 1, v7);
      sub_2311F0440(v11, v14, &qword_27DD443B8, qword_2313734C8);
      if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
      {
        return;
      }

      v22 = &v14[*(v7 + 48)];
      v23 = type metadata accessor for RankedCandidateSuggestion(0);
      sub_2311F03B0(v22 + *(v23 + 24), v6, &qword_27DD42F20, &qword_23136D410);
      sub_2311E1928(v22);
      v24 = sub_231366E80();
      if (__swift_getEnumTagSinglePayload(v6, 1, v24) == 1)
      {
        break;
      }

      v25 = sub_231366E60();
      (*(*(v24 - 8) + 8))(v6, v24);
      if (v25)
      {
        goto LABEL_13;
      }
    }

    sub_2311D1F18(v6, &qword_27DD42F20, &qword_23136D410);
LABEL_13:
    a2 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_19:
      __break(1u);
      return;
    }

    if (v27 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_23128C514(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43780, &qword_231377300);
  v3[5] = swift_task_alloc();
  v4 = sub_231367300();
  v3[6] = v4;
  OUTLINED_FUNCTION_0(v4);
  v3[7] = v5;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for RankedCandidateSuggestion(0);
  v3[11] = v6;
  OUTLINED_FUNCTION_0(v6);
  v3[12] = v7;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v8 = sub_2313698C0();
  v3[17] = v8;
  OUTLINED_FUNCTION_0(v8);
  v3[18] = v9;
  v3[19] = swift_task_alloc();
  v10 = sub_231367C70();
  v3[20] = v10;
  OUTLINED_FUNCTION_0(v10);
  v3[21] = v11;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128C740, 0, 0);
}

void *sub_23128C740()
{
  v109 = v0;
  v1 = v0[3];
  v107 = &unk_2845F0F48;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_2313677D0();
  v2 = OUTLINED_FUNCTION_26_1();
  v4 = v3(v2);
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[20];
  v103 = v0;
  if (v4 == *MEMORY[0x277D60AC0])
  {
    (*(v5 + 96))(v6, v7);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
    v9 = sub_2313681A0();
    if ((*(*(v9 - 8) + 88))(v6, v9) == *MEMORY[0x277D60DC0])
    {
      v10 = OUTLINED_FUNCTION_26_1();
      v11(v10);
      sub_231368270();
      v12 = OUTLINED_FUNCTION_26_1();
      v14 = v13(v12);
      v15 = *MEMORY[0x277D60E60];
      v16 = OUTLINED_FUNCTION_26_1();
      v17(v16);
      sub_231368210();
      OUTLINED_FUNCTION_11();
      (*(v18 + 8))(v6 + v8);
      if (v14 == v15)
      {
        __swift_project_boxed_opaque_existential_1(v0[3], v1[3]);
        v19 = sub_2313677F0();
        if (v19 != 2 && (v19 & 1) != 0)
        {
          sub_2312672E0(&unk_2845F0F78);
        }
      }
    }

    else
    {
      sub_231368210();
      OUTLINED_FUNCTION_11();
      (*(v20 + 8))(v6 + v8);
      v21 = OUTLINED_FUNCTION_26_1();
      v22(v21);
    }
  }

  else
  {
    (*(v5 + 8))(v6, v7);
  }

  v23 = sub_23128C0F8(v0[2], &v107);
  if ((v24 & 1) == 0)
  {
    v25 = v23;
    sub_23128C1D8(v0[2], *(v0[4] + 16));
    v28 = (v27 & 1) != 0 ? *(v0[2] + 16) - 1 : v26;
    if (v28 != v25)
    {
      v30 = v0;
      sub_2313690F0();
      sub_231369EE0();
      v31 = sub_2313698A0();
      v32 = sub_23136A3A0();

      v101 = v28;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        result = swift_slowAlloc();
        v108 = result;
        *v33 = 136315650;
        if (v25 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v35 = v0[2];
        if (v25 >= *(v35 + 16))
        {
LABEL_59:
          __break(1u);
          return result;
        }

        v36 = result;
        v37 = v0[18];
        v105 = v0[19];
        v38 = v0[17];
        v39 = (v35 + ((*(v0[12] + 80) + 32) & ~*(v0[12] + 80)) + *(v0[12] + 72) * v25 + *(v0[11] + 20));
        __swift_project_boxed_opaque_existential_1(v39, v39[3]);
        v40 = sub_231368320();
        v42 = sub_2311CFD58(v40, v41, &v108);

        *(v33 + 4) = v42;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v25;
        *(v33 + 22) = 2048;
        v28 = v101;
        *(v33 + 24) = v101;
        _os_log_impl(&dword_2311CB000, v31, v32, "Moving %s from position %ld into position %ld", v33, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x23192B930](v36, -1, -1);
        MEMORY[0x23192B930](v33, -1, -1);

        v43 = *(v37 + 8);
        v30 = (v37 + 8);
        v43(v105, v38);
        v44 = v0;
      }

      else
      {
        v46 = v0[18];
        v45 = *(v30 + 19);
        v47 = *(v30 + 17);

        (*(v46 + 8))(v45, v47);
        v44 = v30;
        if (v25 < 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      v48 = v44[2];
      if (v25 < *(v48 + 16))
      {
        v49 = v44[12];
        v98 = v44[11];
        v30 = v44[7];
        v50 = *(v49 + 72);
        v102 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        sub_2311E1984(v102 + v50 * v25 + v48, v44[16]);
        v51 = 1;
        if (v25 >= v28)
        {
          v51 = -1;
        }

        v100 = v51;
        v52 = (v30 + 16);
        v53 = v30 + 8;
        v54 = v44[2];
        sub_231369EE0();
        v55 = v100;
        v99 = v50;
        v95 = v100 * v50;
        v96 = v25;
        v56 = v102 + v50 * v25;
        v57 = v25;
        v97 = (v30 + 16);
        while (1)
        {
          v58 = v28 >= v57;
          if (v25 < v28)
          {
            v58 = v57 >= v28;
          }

          if (v58)
          {
            break;
          }

          v59 = v57 + v55;
          if (__OFADD__(v57, v55))
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          if ((v59 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v30 = *(v54 + 16);
          if (v59 >= v30)
          {
            goto LABEL_47;
          }

          v106 = v57;
          v60 = v44[10];
          v61 = v44[6];
          v62 = v54 + v102 + v59 * v99;
          sub_2311E1984(v62, v44[14]);
          v63 = *v52;
          (*v52)(v60, v62, v61);
          if (v106 >= v30)
          {
            goto LABEL_48;
          }

          v64 = v44[9];
          v66 = v44[5];
          v65 = v44[6];
          v63(v64, v54 + v56, v65);
          sub_2313672D0();
          v30 = *v53;
          (*v53)(v64, v65);
          v67 = sub_231367290();
          __swift_storeEnumTagSinglePayload(v66, 0, 1, v67);
          if (v106 >= *(v54 + 16))
          {
            goto LABEL_49;
          }

          v68 = v44[14];
          v69 = v44[15];
          v70 = v44[8];
          v71 = v56;
          v72 = v53;
          v73 = v44[6];
          v104 = v71;
          v63(v70, v54 + v71, v73);
          sub_2313672C0();
          v74 = v73;
          v53 = v72;
          (v30)(v70, v74);
          sub_2313672A0();
          sub_2311CF324(v68 + v98[5], v69 + v98[5]);
          sub_2311F03B0(v68 + v98[6], v69 + v98[6], &qword_27DD42F20, &qword_23136D410);
          v75 = v98[7];
          sub_231369050();
          OUTLINED_FUNCTION_11();
          (*(v76 + 16))(v69 + v75, v68 + v75);
          sub_2311E1928(v68);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23128D81C(v54);
            v54 = v77;
          }

          v28 = v101;
          v25 = v96;
          v52 = v97;
          v44 = v103;
          if (v106 >= *(v54 + 16))
          {
            goto LABEL_50;
          }

          sub_23128D830(v103[15], v54 + v104);
          v55 = v100;
          v57 = v106 + v100;
          v56 = v104 + v95;
        }

        v30 = v53;
        v78 = v44[16];
        v79 = v44[10];
        v80 = v44[6];
        sub_2311E1984(v78, v44[14]);
        v81 = *v52;
        (*v52)(v79, v78, v80);
        if (v28 < 0)
        {
          goto LABEL_53;
        }

        if (v28 < *(v54 + 16))
        {
          v82 = v44[9];
          v84 = v44[5];
          v83 = v44[6];
          v81(v82, v54 + v102 + v99 * v28, v83);
          sub_2313672D0();
          v85 = *v30;
          (*v30)(v82, v83);
          v86 = sub_231367290();
          __swift_storeEnumTagSinglePayload(v84, 0, 1, v86);
          if (v28 >= *(v54 + 16))
          {
            goto LABEL_55;
          }

          v88 = v44[13];
          v87 = v44[14];
          v89 = v44[8];
          v90 = v44[6];
          v100 = v99 * v28;
          v81(v89, v54 + v102 + v99 * v28, v90);
          sub_2313672C0();
          v85(v89, v90);
          sub_2313672A0();
          sub_2311CF324(v87 + v98[5], v88 + v98[5]);
          sub_2311F03B0(v87 + v98[6], v88 + v98[6], &qword_27DD42F20, &qword_23136D410);
          v91 = v98[7];
          sub_231369050();
          OUTLINED_FUNCTION_11();
          (*(v92 + 16))(v88 + v91, v87 + v91);
          sub_2311E1928(v87);
          v30 = v54;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_40;
          }

          goto LABEL_56;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        sub_23128D81C(v30);
        v30 = v94;
LABEL_40:
        v0 = v103;
        result = sub_2311E1928(v103[16]);
        if (v101 < *(v30 + 2))
        {
          sub_23128D830(v103[13], &v30[v102 + v100]);
          v29 = v30;
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_58;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  v29 = v0[2];
  sub_231369EE0();
LABEL_42:

  v93 = v0[1];

  return v93(v29);
}

uint64_t sub_23128D18C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v33[-v5];
  v6 = sub_231367D80();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  MEMORY[0x28223BE20](v11 - 8);
  v39 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v33[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v33[-v17];
  v19 = *a2;
  v36 = type metadata accessor for RankedCandidateSuggestion(0);
  v37 = a1;
  v20 = (a1 + *(v36 + 20));
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_231369EE0();
  v43[0] = sub_231368320();
  v43[1] = v21;
  v42 = v43;
  v22 = v44;
  LOBYTE(a2) = sub_231217FE8(sub_23128D8E8, v41, v19);
  v44 = v22;

  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_2313682C0();
  v23 = v40;
  (*(v40 + 104))(v15, *MEMORY[0x277D60B78], v6);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v6);
  v24 = *(v8 + 48);
  sub_2311F03B0(v18, v10, &qword_27DD42F18, &unk_23136B810);
  sub_2311F03B0(v15, &v10[v24], &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(v10, 1, v6) == 1)
  {
    sub_2311D1F18(v15, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v18, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(&v10[v24], 1, v6) == 1)
    {
      sub_2311D1F18(v10, &qword_27DD42F18, &unk_23136B810);
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v25 = v39;
  sub_2311F03B0(v10, v39, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(&v10[v24], 1, v6) == 1)
  {
    sub_2311D1F18(v15, &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v18, &qword_27DD42F18, &unk_23136B810);
    (*(v23 + 8))(v25, v6);
LABEL_7:
    sub_2311D1F18(v10, &qword_27DD437F0, &unk_23136DFE0);
LABEL_8:
    v26 = 0;
    return v26 & 1;
  }

  v28 = &v10[v24];
  v29 = v35;
  (*(v23 + 32))(v35, v28, v6);
  sub_23128D908();
  v34 = sub_231369F60();
  v30 = *(v23 + 8);
  v30(v29, v6);
  sub_2311D1F18(v15, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v18, &qword_27DD42F18, &unk_23136B810);
  v30(v25, v6);
  sub_2311D1F18(v10, &qword_27DD42F18, &unk_23136B810);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v31 = v38;
  sub_2311F03B0(v37 + *(v36 + 24), v38, &qword_27DD42F20, &qword_23136D410);
  v32 = sub_231366E80();
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    sub_2311D1F18(v31, &qword_27DD42F20, &qword_23136D410);
    v26 = 1;
  }

  else
  {
    v26 = sub_231366E60();
    (*(*(v32 - 8) + 8))(v31, v32);
  }

  return v26 & 1;
}

uint64_t sub_23128D760(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23120B320;

  return sub_23128C514(a1, a2);
}

uint64_t sub_23128D830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedCandidateSuggestion(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23128D908()
{
  result = qword_280F7CA50;
  if (!qword_280F7CA50)
  {
    sub_231367D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA50);
  }

  return result;
}

uint64_t sub_23128D960(uint64_t a1)
{
  v1[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128DA08, 0, 0);
}

uint64_t sub_23128DA08()
{
  sub_23128DC20(v0[7], (v0 + 2));
  if (v0[5])
  {
    v2 = v0[8];
    v1 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_2313682C0();
    sub_23128DCF8(v1, v2);
    v3 = sub_231367D80();
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
    {
      v4 = 0xF000000000000007;
    }

    else
    {
      v5 = v0[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43008, &unk_23136B8E0);
      v6 = swift_allocBox();
      (*(*(v3 - 8) + 32))(v7, v5, v3);
      v4 = v6 | 0x8000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  }

  else
  {
    sub_23128DC90((v0 + 2));
    v4 = 0xF000000000000007;
  }

  v8 = v0[1];

  return v8(v4);
}

uint64_t sub_23128DB8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23120B320;

  return sub_23128D960(a1);
}

uint64_t sub_23128DC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F50, &qword_23136D440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23128DC90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F50, &qword_23136D440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23128DCF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SimpleDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_2313698C0();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128DE40, 0, 0);
}

uint64_t sub_23128DE40()
{
  v28 = v0;
  sub_2311CF324(*(v0 + 136), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F8, &qword_23136EDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440C8, &qword_231371550);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 144);
    sub_2311E6A28((v0 + 96), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = (*(v3 + 16))(v1, v2, v3);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

    v7 = *(v0 + 8);

    return v7(v4, v6);
  }

  else
  {
    v9 = *(v0 + 136);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_23128E1A0(v0 + 96);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    swift_getDynamicType();
    sub_231369120();
    v10 = sub_2313698A0();
    v11 = sub_23136A3B0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = sub_23136AA70();
      v20 = sub_2311CFD58(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2311CB000, v10, v11, "Unknown property provider type: '%s'", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x23192B930](v17, -1, -1);
      MEMORY[0x23192B930](v16, -1, -1);

      (*(v13 + 8))(v14, v15);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }

    v26 = 0;
    v27 = 0xE000000000000000;
    sub_23136A650();

    v26 = 0xD000000000000025;
    v27 = 0x800000023137EFF0;
    v21 = sub_23136AA70();
    MEMORY[0x23192A730](v21);

    v23 = v26;
    v22 = v27;
    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_23128E3CC(v23, v22, 0, 0);
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_23128E1A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440D0, &unk_231371558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23128E220(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23128E2BC;

  return SimpleDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)(a1, a2);
}

uint64_t sub_23128E2BC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

id sub_23128E3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_231369FA0();

  if (a4)
  {
    v8 = sub_231369E70();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

void *sub_23128E4E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEB7D8]) initWithConsumerSubType_];
  v1 = [v0 suggestionLayoutFromCache];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 allSuggestionsInLayout];

    sub_231207BDC(0, &unk_27DD443E0, 0x277D42068);
    v2 = sub_23136A1A0();
  }

  return v2;
}

void sub_23128E594()
{
  v1 = sub_2313698C0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v128 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v128 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v128 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v128 - v18;
  sub_2313680B0();
  sub_231210C60();

  if (v152)
  {
    v20 = swift_dynamicCast();
    v21 = *&v155[0];
    if (!v20)
    {
      v21 = 0;
    }

    v136 = v21;
    if (v20)
    {
      v22 = *(&v155[0] + 1);
    }

    else
    {
      v22 = 0;
    }

    v140 = v22;
  }

  else
  {
    sub_23128F7CC(&v151);
    v136 = 0;
    v140 = 0;
  }

  sub_2313680C0();
  sub_231210C60();

  if (v152)
  {
    v23 = swift_dynamicCast();
    v24 = *&v155[0];
    if (!v23)
    {
      v24 = 0;
    }

    v134 = v24;
    if (v23)
    {
      v25 = *(&v155[0] + 1);
    }

    else
    {
      v25 = 0;
    }

    v138 = v25;
  }

  else
  {
    sub_23128F7CC(&v151);
    v134 = 0;
    v138 = 0;
  }

  v26 = (*(v0 + 16))();
  sub_231369170();
  sub_231369EE0();
  v27 = sub_2313698A0();
  v28 = sub_23136A390();
  v29 = os_log_type_enabled(v27, v28);
  v142 = v1;
  v149 = v4;
  if (v29)
  {
    v30 = -1;
    v31 = OUTLINED_FUNCTION_60();
    *v31 = 134217984;
    if (v26)
    {
      v30 = sub_23125D7A0();
    }

    *(v31 + 4) = v30;

    _os_log_impl(&dword_2311CB000, v27, v28, "got %ld suggestions from proactive cache", v31, 0xCu);
    OUTLINED_FUNCTION_29();

    v1 = v142;
  }

  else
  {
  }

  v33 = *(v2 + 8);
  v32 = v2 + 8;
  v150 = v33;
  v33(v19, v1);
  if (v26)
  {
    v34 = v26;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v147 = sub_23125D7A0();
  if (!v147)
  {
LABEL_102:

    return;
  }

  v135 = v12;
  v133 = v7;
  v36 = 0;
  v146 = v34 & 0xC000000000000001;
  v139 = v34 & 0xFFFFFFFFFFFFFF8;
  v137 = MEMORY[0x277D84F90];
  *&v35 = 136315138;
  v141 = v35;
  v37 = &off_278908000;
  *&v35 = 136315394;
  v132 = v35;
  v148 = v32;
  v144 = v16;
  v145 = v34;
  while (1)
  {
    if (v146)
    {
      v38 = MEMORY[0x23192AD10](v36, v34);
    }

    else
    {
      if (v36 >= *(v139 + 16))
      {
        goto LABEL_104;
      }

      v38 = *(v34 + 8 * v36 + 32);
    }

    v39 = v38;
    v40 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    sub_231369160();
    v41 = v39;
    v42 = sub_2313698A0();
    v43 = sub_23136A390();

    if (os_log_type_enabled(v42, v43))
    {
      v1 = OUTLINED_FUNCTION_60();
      v44 = OUTLINED_FUNCTION_29_0();
      *v1 = OUTLINED_FUNCTION_3_22(v44).n128_u32[0];
      v45 = [v41 v37[213]];
      v143 = v36;
      v46 = [v45 executableType];

      *&v155[0] = v46;
      type metadata accessor for ATXSuggestionExecutableType(0);
      v47 = sub_23136A010();
      v49 = sub_2311CFD58(v47, v48, &v151);
      v37 = &off_278908000;

      *(v1 + 4) = v49;
      _os_log_impl(&dword_2311CB000, v42, v43, "Received proactive suggestion: %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_0_23();

      v36 = v143;
    }

    else
    {
    }

    OUTLINED_FUNCTION_7_13();
    v50();
    v51 = [v41 v37[213]];
    v52 = [v51 executableType];

    if (v52 == 1)
    {
      if (v140)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_11_16();
      v77 = sub_2313698A0();
      v78 = sub_23136A3A0();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_2311CB000, v77, v78, "Found app prediction", v79, 2u);
        OUTLINED_FUNCTION_9_10();
      }

      OUTLINED_FUNCTION_7_13();
      v80();
      v81 = [v41 executableSpecification];
      v82 = [v81 executableObject];

      if (v82)
      {
        *&v155[0] = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C8, &qword_231373648);
        if (swift_dynamicCast())
        {
          v83 = v151;
          v84 = [v41 scoreSpecification];
          v85 = [v84 suggestedConfidenceCategory];

          if (v85 == 4 || (v86 = [v41 scoreSpecification], v87 = objc_msgSend(v86, sel_suggestedConfidenceCategory), v86, v87 == 3))
          {
            v88 = v133;
            sub_231369160();
            sub_231369EE0();
            v89 = sub_2313698A0();
            v90 = sub_23136A3A0();

            if (os_log_type_enabled(v89, v90))
            {
              v91 = OUTLINED_FUNCTION_60();
              v1 = OUTLINED_FUNCTION_29_0();
              *v91 = OUTLINED_FUNCTION_3_22(v1).n128_u32[0];
              *(v91 + 4) = sub_2311CFD58(v83, *(&v83 + 1), &v151);
              _os_log_impl(&dword_2311CB000, v89, v90, "app prediction for %s received with enough confidence", v91, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v1);
              OUTLINED_FUNCTION_0_23();
              OUTLINED_FUNCTION_9_10();

              v92 = v133;
            }

            else
            {

              v92 = v88;
            }

            v150(v92, v1);
            v105 = [v41 scoreSpecification];
            [v105 rawScore];

            v152 = sub_231368840();
            __swift_allocate_boxed_opaque_existential_1(&v151);
            sub_231368830();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_14();
            }

            OUTLINED_FUNCTION_8_15();
            if (v106)
            {
              OUTLINED_FUNCTION_1_25();
            }

            OUTLINED_FUNCTION_4_16();
            sub_2312250F8(&v151, (v107 + 32));
            goto LABEL_100;
          }
        }
      }

      goto LABEL_96;
    }

    if (v52 != 2 || !v140)
    {
LABEL_49:
      sub_231369160();
      v67 = v41;
      v68 = sub_2313698A0();
      v69 = sub_23136A390();

      v37 = &off_278908000;
      if (os_log_type_enabled(v68, v69))
      {
        v1 = OUTLINED_FUNCTION_60();
        v70 = OUTLINED_FUNCTION_29_0();
        *v1 = OUTLINED_FUNCTION_3_22(v70).n128_u32[0];
        v71 = [v67 executableSpecification];
        v72 = [v71 executableType];

        *&v155[0] = v72;
        type metadata accessor for ATXSuggestionExecutableType(0);
        v73 = sub_23136A010();
        v75 = sub_2311CFD58(v73, v74, &v151);
        v37 = &off_278908000;

        *(v1 + 4) = v75;
        _os_log_impl(&dword_2311CB000, v68, v69, "[warning] Unknown executable type: %s", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_0_23();
      }

      else
      {
      }

      OUTLINED_FUNCTION_7_13();
      v76();
      goto LABEL_101;
    }

    OUTLINED_FUNCTION_11_16();
    v53 = sub_2313698A0();
    v54 = sub_23136A3A0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2311CB000, v53, v54, "Found a proactive action suggestion", v55, 2u);
      OUTLINED_FUNCTION_9_10();
    }

    OUTLINED_FUNCTION_7_13();
    v56();
    v37 = &off_278908000;
    v57 = [v41 executableSpecification];
    v58 = [v57 executableObject];

    if (v58)
    {
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (v59)
      {
        v60 = v59;
        v61 = [v59 bundleId];
        v62 = sub_231369FD0();
        v64 = v63;

        if (v62 == v136 && v140 == v64)
        {
        }

        else
        {
          v66 = sub_23136A900();

          if ((v66 & 1) == 0)
          {
            swift_unknownObjectRelease();
LABEL_96:

            goto LABEL_100;
          }
        }

        OUTLINED_FUNCTION_11_16();
        swift_unknownObjectRetain();
        v93 = sub_2313698A0();
        v94 = sub_23136A3A0();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v93, v94))
        {
          v130 = v94;
          v143 = v93;
          v95 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *&v151 = v129;
          *v95 = v132;
          v96 = [v60 bundleId];
          v97 = sub_231369FD0();
          v99 = v98;

          v100 = sub_2311CFD58(v97, v99, &v151);

          *(v95 + 4) = v100;
          v131 = v95;
          *(v95 + 12) = 2080;
          v101 = [v60 intent];
          v102 = v101;
          if (v101)
          {
            v103 = [v101 _dictionaryRepresentation];

            v102 = sub_231369E80();
          }

          *&v155[0] = v102;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443D8, &unk_231373650);
          v108 = sub_23136A010();
          v110 = sub_2311CFD58(v108, v109, &v151);

          v111 = v131;
          *(v131 + 14) = v110;
          v112 = v143;
          _os_log_impl(&dword_2311CB000, v143, v130, "%s with intent: %s", v111, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_9_10();
          OUTLINED_FUNCTION_29();

          v104 = v135;
          v1 = v142;
        }

        else
        {

          v104 = v64;
        }

        v150(v104, v1);
        v113 = v138;
        v37 = &off_278908000;
        if (v138)
        {
          sub_231369EE0();
          v114 = [v60 intent];
          if (v114)
          {
            v115 = v114;
            v116 = [v114 _dictionaryRepresentation];

            sub_231369E80();
            *&v153 = v134;
            *(&v153 + 1) = v113;
            sub_231369EE0();
            sub_23136A5F0();
            sub_231210E90();

            sub_2311E57D4(&v151);
          }

          else
          {
            memset(v155, 0, sizeof(v155));
          }

          sub_23128F834(v155, &v153);
          if (v154)
          {

            sub_2312250F8(&v153, &v151);
            sub_2311D1D6C(&v151, &v153);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_2_14();
            }

            OUTLINED_FUNCTION_8_15();
            if (v106)
            {
              OUTLINED_FUNCTION_1_25();
            }

            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1Tm(&v151);
            sub_23128F7CC(v155);
            OUTLINED_FUNCTION_4_16();
            v120 = &v153;
            goto LABEL_92;
          }

          sub_23128F7CC(&v153);
          OUTLINED_FUNCTION_11_16();
          v121 = v138;
          sub_231369EE0();
          v122 = sub_2313698A0();
          v123 = sub_23136A390();
          v138 = v121;

          LODWORD(v131) = v123;
          v143 = v122;
          if (os_log_type_enabled(v122, v123))
          {
            v124 = OUTLINED_FUNCTION_60();
            v1 = OUTLINED_FUNCTION_29_0();
            *v124 = OUTLINED_FUNCTION_3_22(v1).n128_u32[0];
            v125 = sub_2311CFD58(v134, v138, &v151);

            *(v124 + 4) = v125;
            v126 = v143;
            _os_log_impl(&dword_2311CB000, v143, v131, "[warning] Unable to find entityId: %s in intent. Ignoring", v124, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v1);
            OUTLINED_FUNCTION_0_23();
            OUTLINED_FUNCTION_9_10();

            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease();
          }

          OUTLINED_FUNCTION_7_13();
          v127();
          sub_23128F7CC(v155);
LABEL_100:
          v37 = &off_278908000;
          goto LABEL_101;
        }

        v117 = [v60 intent];
        if (v117)
        {
          v118 = v117;
          v152 = sub_231207BDC(0, &qword_27DD443D0, 0x277CD3D30);
          *&v151 = v118;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_2_14();
          }

          OUTLINED_FUNCTION_8_15();
          if (v106)
          {
            OUTLINED_FUNCTION_1_25();
          }

          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_4_16();
          v120 = &v151;
LABEL_92:
          sub_2312250F8(v120, (v119 + 32));
          goto LABEL_100;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

LABEL_101:
    v36 = v36 + 1;
    v34 = v145;
    if (v40 == v147)
    {
      goto LABEL_102;
    }
  }

  __break(1u);
LABEL_104:
  __break(1u);
}

uint64_t sub_23128F74C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23128F7CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23128F834(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23128F8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25[-1] - v12;
  v26[0] = a4;
  v26[1] = a5;
  sub_231277750(a3, &v25[-1] - v12);
  v14 = sub_23136A2C0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_231290C88(v13);
  }

  else
  {
    sub_23136A2B0();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23136A260();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23136A030();
      sub_231290878(v20 + 32, v26, a6, v25);

      v21 = v25[0];
      sub_231290C88(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_231290C88(a3);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a4;
  v22[4] = a5;
  if (v19 | v17)
  {
    v25[1] = 0;
    v25[2] = 0;
    v25[3] = v17;
    v25[4] = v19;
  }

  return swift_task_create();
}

uint64_t RequestsDebouncer.__allocating_init(clock:config:requestName:)(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RequestsDebouncer.init(clock:config:requestName:)(a1, a2, a3, a4);
  return v8;
}

double sub_23128FB68()
{
  result = 1.0;
  xmmword_280F85A10 = xmmword_231373660;
  qword_280F85A20 = 0x4010000000000000;
  return result;
}

double static DebouncerConfig.defaultConfig.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_280F85BD8 != -1)
  {
    swift_once();
  }

  result = *&qword_280F85A20;
  *a1 = xmmword_280F85A10;
  *(a1 + 16) = result;
  return result;
}

uint64_t RequestsDebouncer.init(clock:config:requestName:)(void *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 2);
  swift_defaultActor_initialize();
  *(v5 + 208) = 0;
  sub_2311CF324(a1, v5 + 112);
  *(v5 + 152) = v9;
  *(v5 + 160) = v10;
  *(v5 + 168) = v11;
  *(v5 + 176) = a3;
  *(v5 + 184) = a4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231368F20();
  *(v5 + 192) = v10;
  *(v5 + 200) = v12 - v10;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t sub_23128FCD4()
{
  OUTLINED_FUNCTION_8();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *v0;
  v5 = sub_2313698C0();
  v1[7] = v5;
  v1[8] = *(v5 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23128FDC8, v0, 0);
}

uint64_t sub_23128FDC8()
{
  v42 = v0;
  v1 = v0[5];
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_231368F20();
  v3 = v2;
  v4 = *(v1 + 200);
  if (v2 < v4 && (v5 = sub_23128FC10(), v0[11] = v5, v4 = *(v1 + 200), v5))
  {
    v6 = v5;
    sub_231369100();

    v7 = sub_2313698A0();
    v8 = sub_23136A3A0();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[10];
    v11 = v0[7];
    v12 = v0[8];
    if (v9)
    {
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_2311CFD58(*(v13 + 176), *(v13 + 184), &v41);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v4 - v3;
      _os_log_impl(&dword_2311CB000, v7, v8, "%s request is already scheduled in %f seconds. Skipping this one.", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v12 + 8))(v10, v11);
    v16 = v0[6];
    v17 = swift_task_alloc();
    v0[12] = v17;
    v18 = *(v16 + 80);
    *v17 = v0;
    v17[1] = sub_231290178;
    v19 = v0[2];
    v20 = v6;
  }

  else
  {
    v21 = v0[5];
    v22 = v3 - v4;
    v23 = v21[24];
    if (v23 >= v22)
    {
      v24 = v23 * v21[21];
    }

    else
    {
      v23 = v21[19];
      v24 = v21[20];
    }

    v21[24] = v24;
    sub_2313690F0();

    v25 = sub_2313698A0();
    v26 = sub_23136A3A0();

    v27 = os_log_type_enabled(v25, v26);
    v29 = v0[8];
    v28 = v0[9];
    v30 = v0[7];
    if (v27)
    {
      v31 = v0[5];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_2311CFD58(*(v31 + 176), *(v31 + 184), &v41);
      *(v32 + 12) = 2048;
      *(v32 + 14) = v23;
      _os_log_impl(&dword_2311CB000, v25, v26, "Scheduling %s in %f seconds.", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v29 + 8))(v28, v30);
    v34 = v0[4];
    v35 = v0[3];
    *(v1 + 200) = v3 + v23;
    v36 = sub_231290428(v35, v34, v1 + 112, v3 + v23);
    sub_23128FC18(v36);
    v19 = sub_23128FC10();
    v0[13] = v19;
    if (!v19)
    {
      __break(1u);
      return MEMORY[0x282200460](v19, v20, v18);
    }

    v37 = v19;
    v38 = v0[6];
    v39 = swift_task_alloc();
    v0[14] = v39;
    v18 = *(v38 + 80);
    *v39 = v0;
    v39[1] = sub_2312902E0;
    v19 = v0[2];
    v20 = v37;
  }

  return MEMORY[0x282200460](v19, v20, v18);
}

uint64_t sub_231290178()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_231290278, v2, 0);
}

uint64_t sub_231290278()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_2312902E0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_231290428(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  sub_2311CF324(a3, v18);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = *(v9 + 80);
  *(v14 + 32) = v15;
  *(v14 + 40) = a4;
  sub_2311D38A8(v18, v14 + 48);
  *(v14 + 88) = a1;
  *(v14 + 96) = a2;

  return sub_23128F8B0(0, 0, v12, &unk_2313737C8, v14, v15);
}

uint64_t sub_231290568(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a2;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_231290594, 0, 0);
}

uint64_t sub_231290594()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_231368F20();
  v3 = v1 - v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_231290658;
  v5.n128_f64[0] = v3;

  return MEMORY[0x2821C7898](v4, v5);
}

uint64_t sub_231290658()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  if (v0)
  {
  }

  v9 = (v3[5] + *v3[5]);
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v4;
  v6[1] = sub_231275BCC;
  v7 = v3[2];

  return v9(v7);
}

uint64_t RequestsDebouncer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RequestsDebouncer.__deallocating_deinit()
{
  RequestsDebouncer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231290878@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DebouncerConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DebouncerConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t dispatch thunk of RequestsDebouncer.waitAndRun(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = (*(*v3 + 224) + **(*v3 + 224));
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_33(v7);
  *v8 = v9;
  v8[1] = sub_2311D05C8;

  return v11(a1, a2, a3);
}

uint64_t sub_231290BB4(uint64_t a1)
{
  v3 = *(v1 + 3);
  v4 = *(v1 + 2);
  v5 = v1[5];
  v6 = *(v1 + 11);
  v7 = *(v1 + 12);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_33(v8);
  *v9 = v10;
  v9[1] = sub_231209AAC;

  return sub_231290568(a1, v5, v4, v3, (v1 + 6), v6, v7);
}

uint64_t sub_231290C88(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231290CF0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_15(v1);

  return v4(v3);
}

uint64_t sub_231290D94()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_15(v1);

  return v4(v3);
}

uint64_t sub_231290E64()
{
  OUTLINED_FUNCTION_8();
  v1[24] = v2;
  v1[25] = v0;
  v3 = sub_231368570();
  v1[26] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[27] = v4;
  v1[28] = swift_task_alloc();
  v5 = sub_2313698C0();
  v1[29] = v5;
  OUTLINED_FUNCTION_0(v5);
  v1[30] = v6;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v7 = sub_231367D80();
  v1[34] = v7;
  OUTLINED_FUNCTION_0(v7);
  v1[35] = v8;
  v1[36] = swift_task_alloc();
  v1[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD437F0, &unk_23136DFE0);
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F18, &unk_23136B810);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23129105C()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v6 = v0[34];
  v5 = v0[35];
  v36 = v0[24];
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_2313682C0();
  (*(v5 + 104))(v2, *MEMORY[0x277D60B80], v6);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v6);
  v7 = *(v4 + 48);
  sub_2311E66F0(v1, v3, &qword_27DD42F18, &unk_23136B810);
  sub_2311E66F0(v2, v3 + v7, &qword_27DD42F18, &unk_23136B810);
  if (__swift_getEnumTagSinglePayload(v3, 1, v6) == 1)
  {
    v8 = v0[41];
    v9 = v0[34];
    sub_2311D1F18(v0[40], &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v8, &qword_27DD42F18, &unk_23136B810);
    if (__swift_getEnumTagSinglePayload(v3 + v7, 1, v9) == 1)
    {
      sub_2311D1F18(v0[38], &qword_27DD42F18, &unk_23136B810);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v10 = v0[34];
  sub_2311E66F0(v0[38], v0[39], &qword_27DD42F18, &unk_23136B810);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3 + v7, 1, v10);
  v13 = v0[40];
  v12 = v0[41];
  v14 = v0[39];
  if (EnumTagSinglePayload == 1)
  {
    v16 = v0[34];
    v15 = v0[35];
    sub_2311D1F18(v0[40], &qword_27DD42F18, &unk_23136B810);
    sub_2311D1F18(v12, &qword_27DD42F18, &unk_23136B810);
    (*(v15 + 8))(v14, v16);
LABEL_6:
    sub_2311D1F18(v0[38], &qword_27DD437F0, &unk_23136DFE0);
    goto LABEL_7;
  }

  v35 = v0[38];
  v22 = v0[35];
  v23 = v0[36];
  v24 = v0[34];
  (*(v22 + 32))(v23, v3 + v7, v24);
  sub_2312921C4(&qword_280F7CA50, MEMORY[0x277D60BA8], MEMORY[0x277D60BC0]);
  v25 = sub_231369F60();
  v26 = *(v22 + 8);
  v26(v23, v24);
  sub_2311D1F18(v13, &qword_27DD42F18, &unk_23136B810);
  sub_2311D1F18(v12, &qword_27DD42F18, &unk_23136B810);
  v26(v14, v24);
  sub_2311D1F18(v35, &qword_27DD42F18, &unk_23136B810);
  if (v25)
  {
LABEL_11:
    sub_231369160();
    v27 = sub_2313698A0();
    v28 = sub_23136A3A0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2311CB000, v27, v28, "Not running ThirdPartyParameter resolver for siriAutoComplete deliveryVehicle.", v29, 2u);
      OUTLINED_FUNCTION_29();
    }

    v30 = OUTLINED_FUNCTION_28_0();
    v31(v30);
    OUTLINED_FUNCTION_5_15();

    OUTLINED_FUNCTION_7();

    __asm { BRAA            X2, X16 }
  }

LABEL_7:
  __swift_project_boxed_opaque_existential_1(v0[24], v36[3]);
  v0[42] = sub_231368300();
  v0[43] = v17;
  v0[44] = swift_getObjectType();
  sub_23136A260();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2312914DC()
{
  v1 = sub_2313693C0();
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 360) = v1;
  *(v0 + 368) = v3;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23129155C(uint64_t a1)
{
  v37 = v1;
  v2 = *(v1 + 368);
  if (v2)
  {
    sub_231369160();
    sub_231369EE0();
    v3 = sub_2313698A0();
    v4 = sub_23136A3A0();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v1 + 360);
      v6 = *(v1 + 256);
      v7 = *(v1 + 232);
      v8 = *(v1 + 240);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2311CFD58(v5, v2, &v36);
      _os_log_impl(&dword_2311CB000, v3, v4, "Found thirdPartyAppId in context '%s'", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v8 + 8))(v6, v7);
    }

    else
    {
      v18 = *(v1 + 256);
      v19 = *(v1 + 232);
      v20 = *(v1 + 240);

      (*(v20 + 8))(v18, v19);
    }

    v22 = *(v1 + 216);
    v21 = *(v1 + 224);
    v23 = *(v1 + 208);
    (*(v22 + 16))(v21, *(v1 + 200) + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_resolutionParameter, v23);
    v24 = (*(v22 + 88))(v21, v23);
    if (v24 == *MEMORY[0x277D60FB0])
    {
      v25 = *(v1 + 360);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_23136B670;
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 32) = v25;
      *(v26 + 40) = v2;
      OUTLINED_FUNCTION_6_14();

      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_40();

      __asm { BRAA            X2, X16 }
    }

    if (v24 == *MEMORY[0x277D60FB8])
    {
      __swift_project_boxed_opaque_existential_1((*(v1 + 200) + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils), *(*(v1 + 200) + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils + 24));
      sub_2313694D0();

      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      v29 = swift_task_alloc();
      *(v1 + 376) = v29;
      *v29 = v1;
      v29[1] = sub_231291958;
      OUTLINED_FUNCTION_40();

      return MEMORY[0x2821C6CC0](v30, v31, v32);
    }

    else
    {
      OUTLINED_FUNCTION_40();

      return MEMORY[0x2821FDEB8]();
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(*(v1 + 192), *(*(v1 + 192) + 24));
    OUTLINED_FUNCTION_28_0();
    v11 = sub_231368300();
    v13 = v12;
    *(v1 + 384) = v11;
    *(v1 + 392) = swift_getObjectType();
    *(v1 + 400) = *(v13 + 8);
    sub_23136A260();
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2822009F8](v14, v15, v16);
  }
}

uint64_t sub_231291958()
{
  OUTLINED_FUNCTION_8();

  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_231291A48()
{
  v4 = v0;
  sub_2311E66F0(v0 + 56, v0 + 96, &qword_27DD43830, &unk_23136E070);
  if (*(v0 + 120))
  {
    sub_2311E6A28((v0 + 96), v0 + 136);
    sub_231291DF4((v0 + 136), &v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
    sub_2311D1F18(v0 + 56, &qword_27DD43830, &unk_23136E070);
  }

  else
  {
    sub_2311D1F18(v0 + 56, &qword_27DD43830, &unk_23136E070);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_6_14();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231291BA8()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_231367740();
  v3 = v2;
  v0[22] = v1;
  v0[23] = v2;
  swift_unknownObjectRelease();
  v0[51] = v3;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_231291C1C(uint64_t a1)
{
  sub_231369160();
  sub_231369EE0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 408);
  if (v4)
  {
    v6 = *(v1 + 176);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_2311CFD58(v6, v5, &v16);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_2311CB000, v2, v3, "No thirdPartyAppId in suggestion's context %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v10 = OUTLINED_FUNCTION_28_0();
    v11(v10);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_28_0();
    v13(v12);
  }

  OUTLINED_FUNCTION_5_15();

  OUTLINED_FUNCTION_40();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_231291DF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231367630();
  v5 = v10;
  v6 = __swift_project_boxed_opaque_existential_1(v9, v10);
  *(v4 + 56) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v6, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  *a2 = v4;
  return result;
}

uint64_t sub_231291EE8()
{
  v1 = OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_resolutionParameter;
  sub_231368570();
  OUTLINED_FUNCTION_11();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC15SiriSuggestions27ThirdPartyParameterResolver_appUtils));

  return swift_deallocClassInstance();
}