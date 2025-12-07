uint64_t sub_2157E5990(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_slowAlloc();
  *(v1 + 24) = v2;
  *v2 = 0;
  return v1;
}

uint64_t sub_2157E59C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2157E59D8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E5A0C()
{

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E5A50()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2157E5AD0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E5B08()
{

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E5B3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E5B7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
  OUTLINED_FUNCTION_65();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E6460()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E6498()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E64E0()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157E6574@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = qword_28119D880;

  if (v8 != -1)
  {
    swift_once();
  }

  result = sub_215802CAC(v4, v5, v6, v7, byte_28119DA70);
  if (result)
  {
    v10 = 0;
    v11 = 0;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v11 = &off_2827B5910;
    v10 = &unk_2827B58F8;
  }

  a3[3] = v10;
  a3[4] = v11;
  return result;
}

char *sub_2157E6634(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v62 = a4;
  v56 = sub_21580B700();
  OUTLINED_FUNCTION_12();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = sub_21580B760();
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  v59 = a6;
  sub_2157EC008(a6, v61, &qword_27CA73BF8, &qword_21580CB18);
  v58 = a7;
  sub_2157EC008(a7, v60, &qword_27CA73C00, &qword_21580CB20);
  v24 = objc_allocWithZone(type metadata accessor for SASafariAssistantAssetManager());

  v25 = v62;
  swift_unknownObjectRetain();

  sub_2157EBA44(a8, a9);
  v26 = sub_2157EB2A4(a3, v25, a1, a2, v61, v60, a8, a9, v24);
  v27 = *&v26[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_activityMonitor];
  (*(v15 + 104))(v19, *MEMORY[0x277D39D88], v56);
  v28 = v26;

  sub_21580B770();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v29 = sub_215801DF0(v27, 67, v23, 0, 1);
  LOBYTE(v23) = v28[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_shouldReportAnalytics];

  if ((v23 & 1) == 0)
  {
    *(v29 + qword_28119D508) = 1;
  }

  v30 = *(v62 + 40);
  if (!v30)
  {

    *(v29 + qword_28119D500) = 82;
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v33 = sub_21580B7F0();
    __swift_project_value_buffer(v33, qword_28119DA40);
    v34 = sub_21580B7D0();
    v35 = sub_21580BAC0();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_23();
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2157E4000, v34, v35, "SafariSummarizationPrefetch - Missing countryCode, unable to subscribe to AssetProvider", v36, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    v37 = "TB,N,R,VhasMatchedPattern";
    v38 = 0xD000000000000039;
    v39 = 1;
    goto LABEL_16;
  }

  v31 = *(v62 + 32);
  v32 = *&v28[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler];

  v32(v61, v31, v30, a1, a2);

  if (!v61[3])
  {
    sub_2157EC06C(v61, &qword_27CA73C10, &qword_21580CB30);
    *(v29 + qword_28119D500) = 97;
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v38 = 0xD000000000000025;
    v40 = sub_21580B7F0();
    __swift_project_value_buffer(v40, qword_28119DA40);

    v41 = sub_21580B7D0();
    v42 = a2;
    v43 = sub_21580BAC0();

    v57 = v41;
    if (os_log_type_enabled(v41, v43))
    {
      v44 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v44 = 136643075;
      v45 = sub_215808B34(v31, v30, v61);

      *(v44 + 4) = v45;
      *(v44 + 12) = 2085;
      v46 = sub_215808B34(a1, v42, v61);

      *(v44 + 14) = v46;
      _os_log_impl(&dword_2157E4000, v57, v43, "SafariSummarizationPrefetch - Unsupported countryCode: %{sensitive}s and locale: %{sensitive}s", v44, 0x16u);
      v39 = 2;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();

      v37 = "ubscribe to AssetProvider";
    }

    else
    {

      v37 = "ubscribe to AssetProvider";
      v39 = 2;
    }

LABEL_16:
    v47 = sub_21580B890();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C08, &qword_21580CB28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    *(inited + 32) = sub_21580B890();
    *(inited + 40) = v51;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v38;
    *(inited + 56) = v37 | 0x8000000000000000;
    v52 = sub_21580B850();
    v53 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    sub_2157E8FEC(v47, v49, v39, v52);
    swift_willThrow();

    OUTLINED_FUNCTION_26();
    swift_unknownObjectRelease();
    sub_2157EC06C(v58, &qword_27CA73C00, &qword_21580CB20);
    sub_2157EC06C(v59, &qword_27CA73BF8, &qword_21580CB18);
    return v28;
  }

  sub_2157EC06C(v61, &qword_27CA73C10, &qword_21580CB30);
  *(v29 + qword_28119D500) = 81;
  sub_215802470();

  OUTLINED_FUNCTION_26();
  swift_unknownObjectRelease();
  sub_2157EC06C(v58, &qword_27CA73C00, &qword_21580CB20);
  sub_2157EC06C(v59, &qword_27CA73BF8, &qword_21580CB18);
  return v28;
}

uint64_t sub_2157E6DB0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_2157E6DC8()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext);
  v3 = *(v2 + 40);
  if (v3)
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v2 + 32);
    v7 = *(v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler);

    v7(v6, v3, v5, v4);

    if (*(v0 + 80))
    {
      v8 = sub_2157E59C0((v0 + 56), v0 + 16);
      *(v0 + 144) = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
      OUTLINED_FUNCTION_9(v8, v0 + 96);
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_11(&qword_21580CB80);
      v20 = v9;
      v10 = swift_task_alloc();
      *(v0 + 152) = v10;
      *v10 = v0;
      v11 = OUTLINED_FUNCTION_10(v10);

      return v20(v11);
    }

    sub_2157EC06C(v0 + 56, &qword_27CA73C10, &qword_21580CB30);
  }

  else
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v13 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v13, qword_28119DA40);
    v14 = sub_21580B7D0();
    v15 = sub_21580BAC0();
    if (OUTLINED_FUNCTION_24(v15))
    {
      OUTLINED_FUNCTION_23();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_25(v16);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v17, v18, "SafariSummarizationPrefetch - Missing countryCode, unable to subscribe to AssetProvider");
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }
  }

  OUTLINED_FUNCTION_6();

  return v19();
}

uint64_t sub_2157E6FE8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2157E70CC()
{
  OUTLINED_FUNCTION_3();
  v1 = (v0[17] + v0[18]);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_11(&qword_21580CB78);
  v6 = v2;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_10(v3);

  return v6(v4);
}

uint64_t sub_2157E7174()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2157E7278(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21580B890();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2157EC36C;

  return sub_2157E6DB0(v5, v7);
}

uint64_t sub_2157E734C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_21580BA60();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_21580CBA8;
  v9[5] = v8;
  sub_2157E934C(0, 0, v6, &unk_21580CBB8, v9);
}

uint64_t sub_2157E745C(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_2157E7474()
{
  v33 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext);
  v3 = *(v2 + 40);
  if (!v3)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v20 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v20, qword_28119DA40);
    v21 = sub_21580B7D0();
    v22 = sub_21580BAC0();
    if (OUTLINED_FUNCTION_24(v22))
    {
      OUTLINED_FUNCTION_23();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_25(v23);
      OUTLINED_FUNCTION_18(&dword_2157E4000, v24, v25, "SafariSummarizationPrefetch - Missing countryCode, unable to call forceDownloadAssetsIfNeeded");
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    goto LABEL_19;
  }

  v4 = *(v2 + 32);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler);

  v7(v4, v3, v6, v5);

  if (!*(v0 + 80))
  {

    sub_2157EC06C(v0 + 56, &qword_27CA73C10, &qword_21580CB30);
LABEL_19:
    OUTLINED_FUNCTION_6();

    return v30();
  }

  v8 = *(v0 + 136);
  v9 = sub_2157E59C0((v0 + 56), v0 + 16);
  v10 = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  *(v0 + 144) = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  v11 = (v8 + v10);
  OUTLINED_FUNCTION_9(v9, v0 + 96);
  v12 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
  OUTLINED_FUNCTION_20();
  if (sub_2157E9E1C(v12))
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v13 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v13, qword_28119DA40);

    v14 = sub_21580B7D0();
    v15 = sub_21580BAE0();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 120);
      v16 = *(v0 + 128);
      v18 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v18 = 136643075;
      v19 = sub_215808B34(v4, v3, &v32);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2085;
      *(v18 + 14) = sub_215808B34(v17, v16, &v32);
      _os_log_impl(&dword_2157E4000, v14, v15, "SafariSummarizationPrefetch - Asset already downloaded, skip triggering force download of asset with countryCode: %{sensitive}s, locale: %{sensitive}s", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_11(&qword_21580CB70);
  v31 = v26;
  v27 = swift_task_alloc();
  *(v0 + 152) = v27;
  *v27 = v0;
  v28 = OUTLINED_FUNCTION_10(v27);

  return v31(v28);
}

uint64_t sub_2157E7828()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2157E790C()
{
  OUTLINED_FUNCTION_3();
  v1 = (v0[17] + v0[18]);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_11(&qword_21580CB78);
  v6 = v2;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_10(v3);

  return v6(v4);
}

uint64_t sub_2157E79B4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2157E7A98()
{
  OUTLINED_FUNCTION_3();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2157E7B10(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = OUTLINED_FUNCTION_27();

  return sub_2157E734C(v11, v12);
}

uint64_t sub_2157E7B90(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_21580B890();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2157E7C64;

  return sub_2157E745C(v5, v7);
}

uint64_t sub_2157E7C64()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_6();

  return v6();
}

id sub_2157E7DAC(uint8_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C58, &dword_21580CB68);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28[-v5 - 8];
  v7 = sub_21580B4D0();
  OUTLINED_FUNCTION_12();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_9(v14, v28);
  OUTLINED_FUNCTION_4();
  v15 = sub_215805F9C(a1, a2);
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v15;
  v18 = v16;
  sub_21580B4C0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_2157EC06C(v6, &unk_27CA73C58, &dword_21580CB68);
LABEL_4:
    v19 = objc_allocWithZone(type metadata accessor for PrefilterSafariSummarizationPrefetchModel());
    v20 = OUTLINED_FUNCTION_28();
    return sub_2157E8BF0(v20, 0, 0);
  }

  (*(v9 + 32))(v13, v6, v7);
  v22 = sub_21580B480();
  v24 = 0;
  if (v22)
  {
    v23 = *(v22 + 16);

    if (v23)
    {
      v24 = 1;
    }
  }

  v25 = objc_allocWithZone(type metadata accessor for PrefilterSafariSummarizationPrefetchModel());
  v21 = sub_2157E8BF0(v17, v18, v24);
  (*(v9 + 8))(v13, v7);
  return v21;
}

uint64_t sub_2157E80A4(uint8_t *a1, uint64_t a2)
{
  v2 = [sub_2157E7DAC(a1 a2)];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = sub_21580B890();

  return v3;
}

uint64_t sub_2157E81CC()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9(v1, v0 + 16);
  OUTLINED_FUNCTION_4();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2157E8270;

  return sub_2157EF54C();
}

uint64_t sub_2157E8270()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_2157E83CC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2157E8474;

  return sub_2157E81B8();
}

uint64_t sub_2157E8474()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_6();

  return v6();
}

void sub_2157E8598(uint64_t a1)
{
  OUTLINED_FUNCTION_9(a1, v3);
  OUTLINED_FUNCTION_4();
  sub_2157EFA58();
  v2 = (v1 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_filter);
  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_215803D9C();
}

uint64_t sub_2157E8658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext);
  v5 = *(v4 + 40);
  if (!v5)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v16 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v16, qword_28119DA40);
    v17 = sub_21580B7D0();
    v18 = sub_21580BAC0();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_23();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_25(v19);
      _os_log_impl(&dword_2157E4000, v17, v18, "SafariSummarizationPrefetch - Missing countryCode, unable to get Asset Version", 0, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    return 0;
  }

  v8 = *(v4 + 32);
  v9 = *(v3 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler);

  v9(&v21, v8, v5, a1, a2);

  if (!v22)
  {
    sub_2157EC06C(&v21, &qword_27CA73C10, &qword_21580CB30);
    return 0;
  }

  v10 = sub_2157E59C0(&v21, v23);
  v11 = (v3 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider);
  OUTLINED_FUNCTION_9(v10, &v21);
  v12 = *__swift_project_boxed_opaque_existential_1(v11, v11[3]);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v13 = sub_2157EA8E8(v12);
  if (!v14)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v13 = sub_2157EABD8();
  }

  v15 = v13;
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v15;
}

uint64_t sub_2157E8904()
{
  OUTLINED_FUNCTION_17();
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAA0();
  if (OUTLINED_FUNCTION_24(v3))
  {
    OUTLINED_FUNCTION_23();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_25(v4);
    OUTLINED_FUNCTION_18(&dword_2157E4000, v5, v6, "SafariSummarizationPrefetch - Loading data for filter");
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  OUTLINED_FUNCTION_9(v7, v0 + 16);
  OUTLINED_FUNCTION_4();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_2157E8270;

  return sub_215803F20();
}

id sub_2157E8BF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC12SearchAssets41PrefilterSafariSummarizationPrefetchModel_prefilterUrl];
  *v4 = a1;
  v4[1] = a2;
  v3[OBJC_IVAR____TtC12SearchAssets41PrefilterSafariSummarizationPrefetchModel_hasMatchedPattern] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PrefilterSafariSummarizationPrefetchModel();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_2157E8C98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2157E8D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157E8D40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2157E8DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157E8DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2157E8E1C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2157E8E3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2157E8EA0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2157E8F34(char a1)
{
  *(v1 + 16) = a1;
  v2 = swift_slowAlloc();
  *(v1 + 24) = v2;
  *v2 = 0;
  return v1;
}

void *sub_2157E8F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v4 = swift_slowAlloc();
  v3[5] = v4;
  *v4 = 0;
  return v3;
}

uint64_t sub_2157E8F98(char a1)
{
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 16) = Lock.init()();
  *(v1 + 24) = a1;
  return v1;
}

id sub_2157E8FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21580B880();

  if (a4)
  {
    v8 = sub_21580B820();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_2157E909C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2157EC370;

  return v6();
}

uint64_t sub_2157E9184(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2157E926C;

  return v7();
}

uint64_t sub_2157E926C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_2157E934C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_2157EC008(a3, v22 - v10, &qword_27CA73C68, &qword_21580E930);
  v12 = sub_21580BA60();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2157EC06C(v11, &qword_27CA73C68, &qword_21580E930);
  }

  else
  {
    sub_21580BA50();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_21580BA10();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_21580B8F0() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_2157EC06C(a3, &qword_27CA73C68, &qword_21580E930);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2157EC06C(a3, &qword_27CA73C68, &qword_21580E930);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_2157E9628(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2157E9720;

  return v6(a1);
}

uint64_t sub_2157E9720()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

unint64_t sub_2157E9804(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2160721A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2160721A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2157E9890(uint64_t a1)
{
  v1[7] = a1;
  v1[5] = &unk_2827B58F8;
  v1[6] = &off_2827B5910;
  return MEMORY[0x2822009F8](sub_2157E98C4);
}

uint64_t sub_2157E98C4()
{
  OUTLINED_FUNCTION_3();
  v1 = v0[7];
  OUTLINED_FUNCTION_19(v2, &unk_2827B58F8);
  *(v1 + 96) = sub_2157F0E34();
  v3 = swift_unknownObjectRelease();
  OUTLINED_FUNCTION_19(v3, v0[5]);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2157E997C;

  return sub_2157EFE0C();
}

uint64_t sub_2157E997C()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_2157E9A64(uint64_t a1)
{
  v1[7] = a1;
  v1[5] = &unk_2827B58F8;
  v1[6] = &off_2827B5910;
  return MEMORY[0x2822009F8](sub_2157E9A98);
}

uint64_t sub_2157E9A98()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19(v1, &unk_2827B58F8);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2157E9B30;

  return sub_2157F16E8();
}

uint64_t sub_2157E9B30()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2157E9C58);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_6();

    return v6();
  }
}

uint64_t sub_2157E9C58()
{
  v10 = v0;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAC0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 72);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v6 = 136315651;
    *(v6 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v9);
    *(v6 + 12) = 2085;
    *(v6 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v9);
    *(v6 + 22) = 2085;
    *(v6 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v9);
    _os_log_impl(&dword_2157E4000, v2, v3, "SafariSummarizationPrefetch - Failed to update loadedAssets for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v6, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6();

  return v7();
}

uint64_t sub_2157E9E1C(uint64_t a1)
{
  v26 = &unk_2827B58F8;
  v27 = &off_2827B5910;
  __swift_project_boxed_opaque_existential_1(v25, &unk_2827B58F8);
  swift_beginAccess();

  sub_2158033D4();

  v1 = sub_21580A1D8();

  if (v1 && (__swift_project_boxed_opaque_existential_1(v25, v26), v2 = sub_2158036AC(v1), , v2))
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v3 = sub_21580B7F0();
    __swift_project_value_buffer(v3, qword_28119DA40);
    v4 = v2;
    v5 = sub_21580B7D0();
    v6 = sub_21580BAE0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315907;
      v9 = [v4 metadata];
      v10 = sub_21580B830();

      v11 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v10);
      v13 = v12;

      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 1701736302;
      }

      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      v16 = sub_215808B34(v14, v15, &v24);

      *(v7 + 4) = v16;
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v24);
      *(v7 + 22) = 2085;
      *(v7 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v24);
      *(v7 + 32) = 2085;
      *(v7 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v24);
      _os_log_impl(&dword_2157E4000, v5, v6, "SafariSummarizationPrefetch - Has loadedAssets version %s, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v7, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x216072190](v8, -1, -1);
      MEMORY[0x216072190](v7, -1, -1);
    }

    else
    {
    }

    v22 = 1;
  }

  else
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v17 = sub_21580B7F0();
    __swift_project_value_buffer(v17, qword_28119DA40);
    v18 = sub_21580B7D0();
    v19 = sub_21580BAE0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v20 = 136315651;
      *(v20 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v24);
      *(v20 + 12) = 2085;
      *(v20 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v24);
      *(v20 + 22) = 2085;
      *(v20 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v24);
      _os_log_impl(&dword_2157E4000, v18, v19, "SafariSummarizationPrefetch - No loadedAssets for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v21, -1, -1);
      MEMORY[0x216072190](v20, -1, -1);
    }

    v22 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v22;
}

uint64_t sub_2157EA274(void *a1)
{
  v1[12] = a1;
  v1[13] = *a1;
  v2 = sub_21580B810();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[5] = &unk_2827B58F8;
  v1[6] = &off_2827B5910;

  return MEMORY[0x2822009F8](sub_2157EA370);
}

void sub_2157EA370()
{
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v4 = 136316163;
    *(v4 + 4) = sub_215808B34(0xD000000000000011, 0x800000021580EDD0, &v16);
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_215808B34(0xD000000000000018, 0x800000021580EB20, &v16);
    *(v4 + 22) = 2085;
    *(v4 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v16);
    *(v4 + 32) = 2085;
    *(v4 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v16);
    *(v4 + 42) = 2080;
    *(v4 + 44) = sub_215808B34(0xD00000000000001DLL, 0x800000021580EDF0, &v16);
    _os_log_impl(&dword_2157E4000, v2, v3, "SafariSummarizationPrefetch - Attempting to asynchronously retrieve assets on-demand, for subscriberName: %s, subscriptionName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s, assetName: %s", v4, 0x34u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  v6 = v0[12];
  if (!*(v6 + 96))
  {
    OUTLINED_FUNCTION_19(v5, v0[5]);
    *(v6 + 96) = sub_2157F0E34();
    swift_unknownObjectRelease();
    v6 = v0[12];
  }

  v7 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v9 = v0[14];
  sub_2157EBCCC(v6 + 40, (v0 + 7));
  v11 = v0[10];
  v12 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
  sub_2157EBD30();
  (*(v7 + 104))(v8, *MEMORY[0x277D851B8], v9);
  v0[17] = sub_21580BAF0();
  (*(v7 + 8))(v8, v9);
  v13 = swift_allocObject();
  v0[18] = v13;
  *(v13 + 16) = v10;
  v15 = *(v12 + 16) + **(v12 + 16);
  v14 = swift_task_alloc();
  v0[19] = v14;
  *v14 = v0;
  v14[1] = sub_2157EA764;
  v18 = v11;
  v19 = v12;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_2157EA764()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v2 = *(v1 + 136);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2157EA87C()
{
  OUTLINED_FUNCTION_3();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2157EA8E8(uint64_t a1)
{
  v16 = &unk_2827B58F8;
  v17 = &off_2827B5910;
  __swift_project_boxed_opaque_existential_1(v15, &unk_2827B58F8);
  swift_beginAccess();

  sub_2158033D4();

  v1 = sub_21580A1D8();

  if (v1 && (__swift_project_boxed_opaque_existential_1(v15, v16), v2 = sub_2158036AC(v1), , v2))
  {
    v3 = [v2 metadata];
    v4 = sub_21580B830();

    v5 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v4);
    v7 = v6;

    if (v7)
    {
      if (qword_28119CC70 != -1)
      {
        swift_once();
      }

      v8 = sub_21580B7F0();
      __swift_project_value_buffer(v8, qword_28119DA40);

      v9 = sub_21580B7D0();
      v10 = sub_21580BAE0();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315907;
        *(v11 + 4) = sub_215808B34(v5, v7, &v14);
        *(v11 + 12) = 2080;
        *(v11 + 14) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v14);
        *(v11 + 22) = 2085;
        *(v11 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v14);
        *(v11 + 32) = 2085;
        *(v11 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v14);
        _os_log_impl(&dword_2157E4000, v9, v10, "SafariSummarizationPrefetch - Has loadedAssets version %s, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v11, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x216072190](v12, -1, -1);
        MEMORY[0x216072190](v11, -1, -1);
      }
    }

    else
    {

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v5;
}

uint64_t sub_2157EABD8()
{
  v28 = &unk_2827B58F8;
  v29 = &off_2827B5910;
  if (qword_28119D1D8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v27, &unk_2827B58F8);
  swift_beginAccess();
  v0 = sub_21580A1D8();
  if (v0)
  {
    v1 = v0;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v2 = sub_215803828(v1);
    v4 = v3;
    swift_endAccess();

    if (v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    swift_endAccess();
  }

  __swift_project_boxed_opaque_existential_1(v27, v28);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_2157F28DC(0);
  v6 = v5;
  v7 = [v6 metadata];
  v8 = sub_21580B830();

  v2 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v8);
  v10 = v9;

  if (v10)
  {
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v11 = sub_21580B7F0();
    __swift_project_value_buffer(v11, qword_28119DA40);

    v12 = sub_21580B7D0();
    v13 = sub_21580BAE0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136315907;
      *(v14 + 4) = sub_215808B34(v2, v10, v26);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v26);
      *(v14 + 22) = 2085;
      *(v14 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      *(v14 + 32) = 2085;
      *(v14 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      _os_log_impl(&dword_2157E4000, v12, v13, "SafariSummarizationPrefetch - Caching downloadedAssets version %s, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v14, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x216072190](v15, -1, -1);
      MEMORY[0x216072190](v14, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C48, &qword_21580CB60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    *(inited + 32) = v2;
    *(inited + 40) = v10;
    sub_2157EBC50();

    v17 = sub_21580B850();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = qword_28119D1E0;
    sub_2157F99C8(v17, isUniquelyReferenced_nonNull_native);
    qword_28119D1E0 = v25;
    swift_endAccess();
  }

  else
  {

    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v20 = sub_21580B7F0();
    __swift_project_value_buffer(v20, qword_28119DA40);
    v21 = sub_21580B7D0();
    v22 = sub_21580BAE0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v23 = 136315651;
      *(v23 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v26);
      *(v23 + 12) = 2085;
      *(v23 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      *(v23 + 22) = 2085;
      *(v23 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v26);
      _os_log_impl(&dword_2157E4000, v21, v22, "SafariSummarizationPrefetch - No downloadedAssets version, for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v24, -1, -1);
      MEMORY[0x216072190](v23, -1, -1);
    }

    v2 = 0;
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v2;
}

char *sub_2157EB2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9)
{
  v68 = a8;
  v67 = a7;
  v69 = a6;
  v64 = a4;
  v63 = a3;
  v12 = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_shouldReportAnalytics;
  v13 = a9;
  v14 = sub_2157E9804(0x3E8uLL);
  a9[v12] = v14 == 0;
  *&v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_activityMonitor] = a1;
  v15 = &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_deviceContext];
  *v15 = a2;
  *(v15 + 1) = &off_2827B4CD0;
  v65 = a5;
  sub_2157EC008(a5, &v75, &qword_27CA73BF8, &qword_21580CB18);
  v66 = a1;
  if (v76)
  {
    sub_2157E59C0(&v75, &v77);
  }

  else
  {
    swift_retain_n();

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C18, &qword_21580CB38);
    sub_2157EBA9C();
    sub_21580B850();
    OUTLINED_FUNCTION_28();
    v17 = type metadata accessor for SASafariAssistantAssetProvider();
    swift_allocObject();
    v18 = sub_2157EF2B8(a1, v16, v14 == 0);
    v78 = v17;
    v79 = &off_2827B4FE0;
    *&v77 = v18;
    if (v76)
    {
      sub_2157EC06C(&v75, &qword_27CA73BF8, &qword_21580CB18);
    }
  }

  v19 = OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  sub_2157E59C0(&v77, &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider]);
  v20 = v68;
  v21 = v67;
  OUTLINED_FUNCTION_13();
  v22 = swift_allocObject();
  if (v67)
  {
    *(v22 + 16) = v67;
    *(v22 + 24) = v20;
    v23 = sub_2157EBBD4;
  }

  else
  {
    *(v22 + 16) = a2;
    *(v22 + 24) = &off_2827B4CD0;

    v23 = sub_2157EBAF0;
  }

  v24 = v23;
  OUTLINED_FUNCTION_13();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v22;
  v26 = &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetSpeciferHandler];
  *v26 = sub_2157EBAF8;
  v26[1] = v25;
  sub_2157EC008(v69, &v75, &qword_27CA73C00, &qword_21580CB20);
  if (v76)
  {
    OUTLINED_FUNCTION_22();

    sub_2157E59C0(&v75, &v77);
  }

  else
  {
    v27 = *(a2 + 40);
    v61 = *(a2 + 32);
    v59[0] = v27;
    swift_beginAccess();
    sub_2157EBCCC(&v13[v19], &v77);
    v60 = a9[v12];
    __swift_mutable_project_boxed_opaque_existential_1(&v77, v78);
    v62 = v59;
    OUTLINED_FUNCTION_12();
    MEMORY[0x28223BE20](v28);
    OUTLINED_FUNCTION_7();
    v31 = (v30 - v29);
    (*(v32 + 16))(v30 - v29);
    v33 = *v31;
    v34 = type metadata accessor for SASafariAssistantAssetProvider();
    v74[3] = v34;
    v74[4] = &off_2827B4FE0;
    v74[0] = v33;
    v35 = type metadata accessor for SASafariAssistantPrefetchRequestFilter();
    v36 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v74, v34);
    v59[1] = v59;
    OUTLINED_FUNCTION_12();
    MEMORY[0x28223BE20](v37);
    OUTLINED_FUNCTION_7();
    v40 = (v39 - v38);
    (*(v41 + 16))(v39 - v38);
    v42 = *v40;
    v72 = v34;
    v73 = &off_2827B4FE0;
    *&v71 = v42;
    *(v36 + 24) = 0;
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C28, &qword_21580CB40);
    OUTLINED_FUNCTION_13();
    swift_allocObject();
    v43 = v66;

    OUTLINED_FUNCTION_22();
    v44 = v59[0];

    *(v36 + 136) = sub_2157E8F34(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C30, &qword_21580CB48);
    swift_allocObject();
    v45 = OUTLINED_FUNCTION_28();
    *(v36 + 152) = sub_2157E8F64(v45, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C38, &qword_21580CB50);
    swift_allocObject();
    *(v36 + 160) = sub_2157E8F98(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C40, &qword_21580CB58);
    OUTLINED_FUNCTION_13();
    swift_allocObject();
    v46 = OUTLINED_FUNCTION_28();
    *(v36 + 168) = sub_2157E5990(v46);
    *(v36 + 32) = v61;
    *(v36 + 40) = v44;
    v47 = v64;
    *(v36 + 48) = v63;
    *(v36 + 56) = v47;
    sub_2157E59C0(&v71, v36 + 64);
    *(v36 + 144) = 0;
    *(v36 + 128) = v60;
    *(v36 + 104) = v43;
    *(v36 + 112) = sub_2157EBAF8;
    *(v36 + 120) = v25;
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v78 = v35;
    v79 = &off_2827B59A8;

    *&v77 = v36;
    if (v76)
    {
      sub_2157EC06C(&v75, &qword_27CA73C00, &qword_21580CB20);
    }
  }

  sub_2157E59C0(&v77, &v13[OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_filter]);
  v48 = type metadata accessor for SASafariAssistantAssetManager();
  v70.receiver = v13;
  v70.super_class = v48;
  v49 = objc_msgSendSuper2(&v70, sel_init);
  v50 = v49 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_assetProvider;
  swift_beginAccess();
  v51 = *(v50 + 24);
  v52 = *(v50 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  v53 = *(v52 + 16);
  v54 = v49;
  v53(v49, &off_2827B4B08, v51, v52);
  swift_endAccess();
  v55 = v54 + OBJC_IVAR____TtC12SearchAssets29SASafariAssistantAssetManager_filter;
  swift_beginAccess();
  v56 = *(v55 + 24);
  v57 = *(v55 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  (*(v57 + 16))(v49, &off_2827B4AF8, v56, v57);
  swift_endAccess();

  sub_2157EBA8C(v21, &off_2827B4FE0);

  sub_2157EC06C(v69, &qword_27CA73C00, &qword_21580CB20);
  sub_2157EC06C(v65, &qword_27CA73BF8, &qword_21580CB18);
  return v54;
}

uint64_t sub_2157EBA44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2157EBA8C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2157EBA9C()
{
  result = qword_28119CE00;
  if (!qword_28119CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CE00);
  }

  return result;
}

uint64_t sub_2157EBAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v8[0] = a1;
  v8[1] = a2;
  v7[0] = a3;
  v7[1] = a4;
  return v5(v8, v7);
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2157EBC50()
{
  result = qword_28119CFF0;
  if (!qword_28119CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CFF0);
  }

  return result;
}

uint64_t sub_2157EBCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2157EBD30()
{
  result = qword_28119CC00;
  if (!qword_28119CC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119CC00);
  }

  return result;
}

uint64_t sub_2157EBD7C()
{
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v1[1] = sub_2157EC370;
  v3 = OUTLINED_FUNCTION_27();

  return v4(v3);
}

uint64_t sub_2157EBE44()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_16(v4);
  *v5 = v6;
  v5[1] = sub_2157EC370;

  return sub_2157E909C(v1, v2, v3);
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157EBF40(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_16(v6);
  *v7 = v8;
  v7[1] = sub_2157EC370;

  return sub_2157E9184(a1, v3, v4, v5);
}

uint64_t sub_2157EC008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_27();
  v6(v5);
  return a2;
}

uint64_t sub_2157EC06C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2157EC0CC()
{
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15(v1);

  return v4(v3);
}

uint64_t sub_2157EC164()
{
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_15(v1);

  return v4(v3);
}

uint64_t sub_2157EC1FC()
{
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t objectdestroy_93Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2157EC2D8()
{
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_14(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void *OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), a2);
  v3 = *(v2 + 40);

  return __swift_project_boxed_opaque_existential_1((v2 + 16), v3);
}

void *OUTLINED_FUNCTION_20()
{
  v2 = *(v0 + 40);

  return __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
}

uint64_t OUTLINED_FUNCTION_22()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 304);

  return sub_2157EBA44(v2, v3);
}

BOOL OUTLINED_FUNCTION_24(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_26()
{
  sub_2157EBA8C(*(v0 - 360), *(v0 - 368));
}

uint64_t sub_2157EC608(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_2827B47A8 != a1);
  return v2 & 1;
}

uint64_t sub_2157EC630(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    if (v1)
    {
      break;
    }

    v1 = 1;
  }

  while (qword_2827B4780 != a1);
  return v2 & 1;
}

void sub_2157EC660(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  switch(*(a10 + 16))
  {
    case 0:
      OUTLINED_FUNCTION_2_0();
      sub_21580B790();
      return;
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v25 = swift_allocObject();
      v15 = OUTLINED_FUNCTION_0_0(v25, xmmword_21580C9B0);
      goto LABEL_8;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v17 = swift_allocObject();
      v18 = OUTLINED_FUNCTION_0_0(v17, xmmword_21580CC30);
      sub_2157EBCCC(v18, v19);
      v15 = OUTLINED_FUNCTION_4_0();
      goto LABEL_8;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v20 = swift_allocObject();
      v21 = OUTLINED_FUNCTION_0_0(v20, xmmword_21580CC20);
      sub_2157EBCCC(v21, v22);
      v23 = OUTLINED_FUNCTION_4_0();
      sub_2157EBCCC(v23, v24);
      v15 = a10 + 112;
      v16 = &v20[7];
      goto LABEL_8;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v10 = swift_allocObject();
      v11 = OUTLINED_FUNCTION_0_0(v10, xmmword_21580CC10);
      sub_2157EBCCC(v11, v12);
      v13 = OUTLINED_FUNCTION_4_0();
      sub_2157EBCCC(v13, v14);
      sub_2157EBCCC(a10 + 112, &v10[7]);
      v15 = a10 + 152;
      v16 = &v10[9].n128_i64[1];
      goto LABEL_8;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v26 = swift_allocObject();
      v27 = OUTLINED_FUNCTION_0_0(v26, xmmword_21580CC00);
      sub_2157EBCCC(v27, v28);
      v29 = OUTLINED_FUNCTION_4_0();
      sub_2157EBCCC(v29, v30);
      sub_2157EBCCC(a10 + 112, &v26[7]);
      sub_2157EBCCC(a10 + 152, &v26[9].n128_i64[1]);
      v15 = a10 + 192;
      v16 = &v26[12];
LABEL_8:
      sub_2157EBCCC(v15, v16);
      OUTLINED_FUNCTION_2_0();
      sub_21580B790();

      break;
    default:
      return;
  }
}

uint64_t sub_2157EC970()
{
  result = sub_2157F7B84();
  byte_28119DA70 = result & 1;
  return result;
}

uint64_t sub_2157EC994()
{
  v1 = v0;
  v2 = sub_21580B6F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v6 = [objc_opt_self() currentLocale];
  sub_21580B6E0();

  v7 = sub_21580B6D0();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(v1 + 16) = v7;
  *(v1 + 24) = v9;

  v10 = [objc_opt_self() sharedConfiguration];
  if (v10)
  {
    v10 = sub_2157FC448(v10);
  }

  else
  {
    v11 = 0;
  }

  *(v1 + 32) = v10;
  *(v1 + 40) = v11;

  *(v1 + 48) = sub_21580B710();
  *(v1 + 56) = v12;

  *(v1 + 64) = sub_21580B720();
  *(v1 + 72) = v13;

  return v1;
}

void *sub_2157ECB18()
{

  return v0;
}

uint64_t sub_2157ECB50()
{
  sub_2157ECB18();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_2157ECBAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2157ECC4C()
{
  v1 = *v0;
  MEMORY[0x216072190](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_2157ECCE8()
{
  sub_2157ECC4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_2157ECDE8()
{
  v1 = [v0 response];

  return v1;
}

uint64_t sub_2157ECE20()
{
  OUTLINED_FUNCTION_3_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_1();

  OUTLINED_FUNCTION_3_1();

  return swift_unknownObjectRelease();
}

void *sub_2157ECE88(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  if ((*(v1 + *(v3 + 120)) & 1) == 0)
  {
    sub_2157ED944(v2);
  }

  v4 = sub_2157FD298();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_8_0();
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_2157ECF18(uint64_t a1)
{
  v1 = sub_2157ECE88(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_2157ECF84(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_1();
  v4 = *(v1 + *(v3 + 128));
  v5 = sub_21580BAC0();
  sub_21580B780("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_2157E4000, v4, v5, MEMORY[0x277D84F90]);
  sub_2157FD424();
  sub_21580BAC0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = OUTLINED_FUNCTION_7_0(v6);
  *(v7 + 16) = xmmword_21580C9B0;
  v8 = *(v2 + *(*v2 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D70, &qword_21580CEC8);
  v9 = sub_21580B8E0();
  v11 = v10;
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2157EDE30();
  *(v7 + 64) = v12;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_21580B780("Network task: %s", v121);

  sub_21580BAC0();
  v148 = v6;
  v13 = OUTLINED_FUNCTION_7_0(v6);
  OUTLINED_FUNCTION_4_1(v13, v14, v15, v16, v17, v18, v19, v20, v21, v122, v131, v137, v143, v148, v154, v22);
  ObjectType = swift_getObjectType();
  v132 = v8;
  v23 = v8;
  v24 = *(v8 + 16);
  v24(ObjectType, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
  v25 = sub_21580B8E0();
  v13[3].n128_u64[1] = MEMORY[0x277D837D0];
  v13[4].n128_u64[0] = v12;
  v13[2].n128_u64[0] = v25;
  v13[2].n128_u64[1] = v26;
  v155 = v4;
  sub_21580B780("Response: %s", ObjectType);

  v138 = sub_2157ED444(v27);
  if (v30)
  {
    sub_21580BAC0();
    v31 = v149;
    v32 = OUTLINED_FUNCTION_7_0(v149);
    v42 = OUTLINED_FUNCTION_4_1(v32, v33, v34, v35, v36, v37, v38, v39, v40, v124, v132, v138, v12, v149, v155, v41);
    (v24)(v125, v133, v42);
    v43 = sub_21580B8E0();
    v44 = MEMORY[0x277D837D0];
    v45 = v144;
    v32[3].n128_u64[1] = MEMORY[0x277D837D0];
    v32[4].n128_u64[0] = v144;
    v32[2].n128_u64[0] = v43;
    v32[2].n128_u64[1] = v46;
    sub_21580B780("Unsupported response: %s", v125);
    v47 = v44;
  }

  else
  {
    v48 = v28;
    v49 = v29;
    v50 = HIDWORD(v29);
    sub_21580BAC0();
    v51 = v149;
    v52 = OUTLINED_FUNCTION_7_0(v149);
    OUTLINED_FUNCTION_4_1(v52, v53, v54, v55, v56, v57, v58, v59, v60, v124, v132, v138, v12, v149, v155, v61);
    v62 = MEMORY[0x277D83C10];
    v63[7] = v64;
    v63[8] = v62;
    v63[4] = v48;
    sub_21580B780("Status: %d", v127);

    sub_21580BAC0();
    v65 = OUTLINED_FUNCTION_5_0();
    v66 = MEMORY[0x277D84CC0];
    OUTLINED_FUNCTION_4_1(v65, v67, v68, v69, v70, v71, v72, v73, v74, v128, v134, v140, v145, v151, v157, v75);
    v76 = MEMORY[0x277D84D30];
    *(v77 + 56) = v66;
    *(v77 + 64) = v76;
    *(v77 + 32) = v50;
    v31 = v51;
    OUTLINED_FUNCTION_1_1("Uploaded: %llu bytes");
    sub_21580B780(v78);

    sub_21580BAC0();
    v79 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_1(v79, v80, v81, v82, v83, v84, v85, v86, v87, v129, v135, v141, v146, v152, v158, v88);
    *(v89 + 56) = v66;
    *(v89 + 64) = v76;
    *(v89 + 32) = v49;
    OUTLINED_FUNCTION_1_1("Downloaded: %llu bytes");
    sub_21580B780(v90);

    sub_21580BAC0();
    v91 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_1(v91, v92, v93, v94, v95, v96, v97, v98, v99, v130, v136, v142, v147, v153, v159, v100);
    v101 = MEMORY[0x277D83A80];
    v102[7] = v103;
    v102[8] = v101;
    v102[4] = v139;
    OUTLINED_FUNCTION_1_1("Runtime: %f seconds");
    sub_21580B780(v104);
    v47 = MEMORY[0x277D837D0];
    v45 = v144;
  }

  sub_21580BAC0();
  v105 = OUTLINED_FUNCTION_7_0(v31);
  OUTLINED_FUNCTION_4_1(v105, v106, v107, v108, v109, v110, v111, v112, v113, v126, v133, v139, v144, v150, v156, v114);
  v115 = *(v2 + *(*v2 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D78, &unk_21580CED0);
  v116 = sub_21580B8E0();
  v105[3].n128_u64[1] = v47;
  v105[4].n128_u64[0] = v45;
  v105[2].n128_u64[0] = v116;
  v105[2].n128_u64[1] = v117;
  OUTLINED_FUNCTION_9_0("Error: %s");
  sub_21580B780(v118);

  sub_21580BAC0();
  OUTLINED_FUNCTION_9_0("}}}");
  return sub_21580B780(v119);
}

uint64_t sub_2157ED444(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  v3 = *(v1 + *(v2 + 464) + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  v6 = v5(ObjectType, v3);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_7:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v20 = OUTLINED_FUNCTION_7_0(v19);
    *(v20 + 16) = xmmword_21580C9B0;
    v60[0] = v5(ObjectType, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
    v21 = sub_21580B8E0();
    v23 = v22;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_2157EDE30();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    OUTLINED_FUNCTION_9_0("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
    sub_2157FE3C8(v24);

    sub_2157FD96C();
    *&result = 0.0;
    return result;
  }

  [v8 statusCode];
  if (!(*(v3 + 8))(ObjectType, v3))
  {

    *&result = 0.0;
    return result;
  }

  OUTLINED_FUNCTION_6_0();
  v61 = 0xD000000000000021;
  v62 = v9;
  v10 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v10, v11, v12, v13, v14);
  v15 = sub_2157EDE84(v60);
  if (v63)
  {
    OUTLINED_FUNCTION_0_1(v15, v16, v17, MEMORY[0x277D84CC0], v18);
  }

  else
  {
    sub_2157EDED8(&v61);
  }

  OUTLINED_FUNCTION_6_0();
  v61 = 0xD00000000000001DLL;
  v62 = v26;
  v27 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v27, v28, v29, v30, v31);
  v32 = sub_2157EDE84(v60);
  if (v63)
  {
    OUTLINED_FUNCTION_0_1(v32, v33, v34, MEMORY[0x277D84CC0], v35);
  }

  else
  {
    sub_2157EDED8(&v61);
  }

  OUTLINED_FUNCTION_6_0();
  v36 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v36, v37, v38, v39, v40);
  v41 = sub_2157EDE84(v60);
  if (v63)
  {
    if (OUTLINED_FUNCTION_0_1(v41, v42, v43, MEMORY[0x277D839F8], v44))
    {
      v59 = -2.31584178e77;
      goto LABEL_19;
    }
  }

  else
  {
    sub_2157EDED8(&v61);
  }

  OUTLINED_FUNCTION_6_0();
  v45 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v45, v46, v47, v48, v49);
  sub_2157EDE84(v60);
  if (!v63)
  {
    sub_2157EDED8(&v61);
    goto LABEL_23;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    goto LABEL_25;
  }

LABEL_19:
  OUTLINED_FUNCTION_6_0();
  v50 = sub_21580BBC0();
  OUTLINED_FUNCTION_2_1(v50, v51, v52, v53, v54);

  v55 = sub_2157EDE84(v60);
  if (v63)
  {
    if (OUTLINED_FUNCTION_0_1(v55, v56, v57, MEMORY[0x277D839F8], v58))
    {
      *&result = -2.31584178e77 - v59;
      return result;
    }
  }

  else
  {
    sub_2157EDED8(&v61);
  }

LABEL_25:
  *&result = 0.0;
  return result;
}

uint64_t sub_2157ED854(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC10;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x277D84CC0];
  v10 = MEMORY[0x277D84D30];
  *(v7 + 96) = MEMORY[0x277D84CC0];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x277D839F8];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x277D83A80];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_2157FE3C8("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

void sub_2157ED944(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1();
  if ((*(v1 + *(v3 + 120)) & 1) == 0)
  {
    sub_2157ED444(v2);
    if (v4)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v6 = OUTLINED_FUNCTION_7_0(v5);
      *(v6 + 16) = xmmword_21580C9B0;
      OUTLINED_FUNCTION_8_0();
      v8 = *(v1 + *(v7 + 464) + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(ObjectType, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
      v10 = sub_21580B8E0();
      v12 = v11;
      *(v6 + 56) = MEMORY[0x277D837D0];
      *(v6 + 64) = sub_2157EDE30();
      *(v6 + 32) = v10;
      *(v6 + 40) = v12;
      OUTLINED_FUNCTION_9_0("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
      sub_2157FE3C8(v13);
    }

    else
    {
      OUTLINED_FUNCTION_8_0();
      (*(v14 + 568))(v15, v16);
    }

    sub_2157FD96C();
  }
}

uint64_t sub_2157EDA9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  return sub_2157FD9BC(sub_2157EDE24, v3);
}

uint64_t sub_2157EDADC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (*(a1 + *(*a1 + 480)))
  {
    swift_unknownObjectRetain();
    if (nw_activity_is_activated())
    {
      nw_activity_complete_with_reason();
    }

    else
    {
      sub_21580BAA0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_21580C9B0;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D68, &qword_21580E0C0);
      v4 = sub_21580B8E0();
      v6 = v5;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 64) = sub_2157EDE30();
      *(v3 + 32) = v4;
      *(v3 + 40) = v6;
      sub_21580B780("Ending NetworkSpan before nw_activity (%s) was activated", v8);
    }

    a1 = swift_unknownObjectRelease();
  }

  return a2(a1);
}

uint64_t sub_2157EDC60(uint64_t a1, unint64_t a2, double a3)
{
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73D50, &qword_21580CEA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21580CC10;
  *(inited + 32) = 0x635F737574617473;
  *(inited + 40) = 0xEB0000000065646FLL;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x656D69746E7572;
  *(inited + 64) = 0xE700000000000000;
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  OUTLINED_FUNCTION_6_0();
  *(inited + 72) = v8;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v9;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  strcpy((inited + 104), "uploaded_bytes");
  *(inited + 119) = -18;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  sub_2157EDDE0();
  return sub_21580B850();
}

unint64_t sub_2157EDDE0()
{
  result = qword_28119CBB0;
  if (!qword_28119CBB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119CBB0);
  }

  return result;
}

unint64_t sub_2157EDE30()
{
  result = qword_28119CC40;
  if (!qword_28119CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CC40);
  }

  return result;
}

uint64_t sub_2157EDED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73D80, &unk_21580D0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2157EDF40(void *a1)
{
  v1 = [a1 _timingData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21580B830();

  return v3;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_215803648(v5, &v9, &v8);
}

__n128 OUTLINED_FUNCTION_4_1(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t AtomicValue.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AtomicValue.init(_:)(a1);
  return v2;
}

char *AtomicValue.init(_:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Lock();
  swift_allocObject();
  *(v1 + 2) = Lock.init()();
  OUTLINED_FUNCTION_8_0();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v4 + 96)], a1);
  return v1;
}

void AtomicValue.load()(uint64_t a1@<X8>)
{
  v3 = *v1;
  Lock.lock()();
  OUTLINED_FUNCTION_8_0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  Lock.unlock()();
}

void AtomicValue.store(_:)(uint64_t a1)
{
  v3 = *v1;
  Lock.lock()();
  OUTLINED_FUNCTION_8_0();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  Lock.unlock()();
}

void AtomicValue.store(resultOf:)(void (*a1)(_BYTE *))
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  Lock.lock()();
  OUTLINED_FUNCTION_8_0();
  v11 = *(v10 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v11, v3);
  v12 = v14;
  a1(v6);
  (*(v4 + 8))(v6, v3);
  if (!v12)
  {
    swift_beginAccess();
    (*(v4 + 40))(v1 + v11, v9, v3);
    swift_endAccess();
  }

  sub_2157EE4A4();
}

char *AtomicValue.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  return v0;
}

uint64_t AtomicValue.__deallocating_deinit()
{
  AtomicValue.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2157EE5A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_2157EE688(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v14 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v6 = [v3 newHashesArray];
  v7 = MEMORY[0x216071300](&v13, 8);
  v9 = v8;
  v10 = sub_21580B630();

  v11 = [v3 getWithHashes_];
  sub_2157EEF40(v7, v9);

  return v11;
}

uint64_t sub_2157EE7A4(uint64_t a1, unint64_t a2, size_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return -1;
  }

  v5 = sub_2157EE810(a1, a2);
  v7 = v6;
  v8 = sub_2157EE994(v5, v6, a3);
  sub_2157EEF2C(v5, v7);
  return v8;
}

uint64_t sub_2157EE810(uint64_t a1, uint64_t a2)
{
  v2 = sub_21580B8D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21580B8C0();
  v6 = sub_21580B8A0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    v9 = sub_21580BA00();
    *(v9 + 16) = 32;
    *(v9 + 32) = 0u;
    *(v9 + 48) = 0u;
    v14 = v9;
    sub_2157EEF98(v6, v8);
    sub_2157EEBE0(v6, v8, v6, v8, &v14);

    v11 = sub_2157EEE34(v10);
    sub_2157EEF2C(v6, v8);

    return v11;
  }

  return v6;
}

uint64_t sub_2157EE994(uint64_t a1, unint64_t a2, size_t a3)
{
  if (a2 >> 60 == 15)
  {
    return -1;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    v5 = sub_2157EF164(v5);
    goto LABEL_8;
  }

  v3 = a2;
  v4 = a1;
  if (a3 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = a3;
  }

  sub_2157EEF98(a1, a2);
  v5 = sub_2157EEAFC(0, v7);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v10 = sub_21580B620();
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D90, &qword_21580CF28);
  sub_2157EF178();
  sub_2157EF214(&qword_28119CC18, &qword_27CA73D90, &qword_21580CF28, MEMORY[0x277D83D30]);
  sub_21580B430();
  sub_2157EEF40(v10, v11);
  v6 = *(v5 + 32);

  if (v6 < 0)
  {
    v6 = -v6;
  }

  sub_2157EEF2C(v4, v3);
  return v6;
}

uint64_t sub_2157EEAFC(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    v4 = sub_21580BA00();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

unsigned __int8 *sub_2157EEB6C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = MEMORY[0x216071310](a3, a4);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (!(result >> 32))
    {
      sub_2157EEFF0(0);
      return CC_SHA256(a1, v8, (*a5 + 32));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2157EEBE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_2157EEF98(a3, a4);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = sub_21580B4E0();
      if (!v17)
      {
        goto LABEL_14;
      }

      v21 = sub_21580B500();
      if (__OFSUB__(a1, v21))
      {
LABEL_26:
        __break(1u);
      }

      v17 += a1 - v21;
LABEL_14:
      v20 = (a1 >> 32) - a1;
LABEL_15:
      v22 = sub_21580B4F0();
      if (v22 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v23 + v17);
      if (v17)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = v17;
      v12 = a3;
      v13 = a4;
      v14 = a5;
LABEL_22:
      sub_2157EEB6C(v11, v10, v12, v13, v14);
LABEL_23:
      sub_2157EEF40(a3, a4);
      return sub_2157EEF40(a3, a4);
    case 2uLL:
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      v17 = sub_21580B4E0();
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = sub_21580B500();
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_25;
      }

      v17 += v16 - v18;
LABEL_6:
      v19 = __OFSUB__(v15, v16);
      v20 = v15 - v16;
      if (!v19)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      sub_2157EEF98(a3, a4);
      sub_2157EF0CC(0, 0, a3, a4, a5);
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v26 = a1;
      v27 = a2;
      v28 = BYTE2(a2);
      v29 = BYTE3(a2);
      v30 = BYTE4(a2);
      v31 = BYTE5(a2);
      v10 = &v26 + BYTE6(a2);
      v11 = &v26;
      v12 = a3;
      v13 = a4;
      v14 = a5;
      goto LABEL_22;
  }
}

uint64_t sub_2157EEE34(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D98, &qword_21580CF30);
  v8 = sub_2157EF214(&qword_28119CC20, &qword_27CA73D98, &qword_21580CF30, MEMORY[0x277CC9C28]);
  v6[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_2157EF054(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t sub_2157EEF2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2157EEF40(result, a2);
  }

  return result;
}

uint64_t sub_2157EEF40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2157EEF98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *sub_2157EEFF0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    result = sub_2157F9688(result, v5, 0, v3);
    v3 = result;
  }

  *v1 = v3;
  return result;
}

uint64_t sub_2157EF054@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_21580B5F0();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2160712C0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2160712D0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2157EF0CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_2157EEB6C(&v8, &v8 + BYTE6(a2), a3, a4, a5);
  return sub_2157EEF40(a3, a4);
}

unint64_t sub_2157EF178()
{
  result = qword_28119DA20;
  if (!qword_28119DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2157EF214(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2157EF25C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE8, &qword_21580D138);
  sub_2157EBA9C();
  result = sub_21580B850();
  qword_28119D1E0 = result;
  return result;
}

void *sub_2157EF2B8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v3[4] = 0;
  swift_unknownObjectWeakInit();
  v8 = [objc_opt_self() sharedManager];
  v3[8] = sub_2157F74BC(0, &qword_28119CBD0, 0x277D779F8);
  v3[9] = &off_2827B4FA8;
  v3[5] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73C18, &qword_21580CB38);
  sub_2157EBA9C();
  v9 = sub_21580B850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DA0, &qword_21580D0D0);
  OUTLINED_FUNCTION_13();
  swift_allocObject();
  v4[11] = sub_2157EC374(v9);
  v4[12] = 0;
  v4[2] = a1;
  swift_beginAccess();

  OUTLINED_FUNCTION_13();
  swift_allocObject();
  v4[11] = sub_2157EC374(a2);
  swift_endAccess();

  *(v4 + 80) = a3;
  return v4;
}

void *sub_2157EF448()
{
  if (*(v0 + 96))
  {
    v1 = swift_unknownObjectRetain();
    sub_2157F1670(v1);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_46();
  swift_beginAccess();

  v4 = sub_2158033D4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE0, &qword_21580D130);
  OUTLINED_FUNCTION_55(v2);
  sub_2158035A0(v4);

  sub_2157E6544(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2157EF518()
{
  sub_2157EF448();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_2157EF564()
{
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_46();
  swift_beginAccess();

  v6 = sub_2158033D4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE0, &qword_21580D130);
  OUTLINED_FUNCTION_55(v2);
  sub_2158035A0(v6);

  if (*(v1 + 96))
  {
    v3 = swift_unknownObjectRetain();
    sub_2157F1670(v3);
    swift_unknownObjectRelease();
  }

  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_2157EF670;

  return sub_2157F0958();
}

uint64_t sub_2157EF670()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2157EF76C()
{
  OUTLINED_FUNCTION_17();
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v0 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v0, qword_28119DA40);
  v1 = sub_21580B7D0();
  v2 = sub_21580BAE0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_79();
    *v3 = 0;
    _os_log_impl(&dword_2157E4000, v1, v2, "SafariSummarizationPrefetch - Successfully cleaned cache", v3, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_2157EF85C()
{
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v2, qword_28119DA40);
  v3 = v1;
  v4 = sub_21580B7D0();
  v5 = sub_21580BAC0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    OUTLINED_FUNCTION_15_0();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_0();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_13_0();
    swift_slowAlloc();
    *v8 = 138412802;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    *(v8 + 12) = 2080;
    OUTLINED_FUNCTION_45();
    v12 = OUTLINED_FUNCTION_34();
    *(v8 + 14) = sub_215808B34(v12, v13, v14);
    *(v8 + 22) = 2080;
    OUTLINED_FUNCTION_45();
    *(v8 + 24) = sub_215808B34(v15, v16, v17);
    OUTLINED_FUNCTION_20_0(&dword_2157E4000, v18, v5, "SafariSummarizationPrefetch - Failed to unsubscribe with error: %@, from subscription name %s, assetSetName: %s");
    sub_2157F7220(v9, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    v19 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v19);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_6();

  return v20();
}

void sub_2157EFA58()
{
  OUTLINED_FUNCTION_46();
  swift_beginAccess();

  v5 = sub_2158033D4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DE0, &qword_21580D130);
  OUTLINED_FUNCTION_55(v0);
  sub_2158035A0(v5);

  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v1, qword_28119DA40);
  v2 = sub_21580B7D0();
  v3 = sub_21580BAE0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_79();
    *v4 = 0;
    _os_log_impl(&dword_2157E4000, v2, v3, "SafariSummarizationPrefetch - Successfully cleaned cache", v4, 2u);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }
}

void sub_2157EFB70(void *a1)
{
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v4 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v4, qword_28119DA40);
  v5 = a1;
  v6 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_37();
  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_42();
    swift_slowAlloc();
    *v1 = 134219522;
    *(v1 + 4) = [v5 downloadStatus];
    *(v1 + 12) = 2048;
    [v5 completedPercent];
    *(v1 + 14) = v8;
    *(v1 + 22) = 2048;
    *(v1 + 24) = [v5 completedBytes];
    *(v1 + 32) = 2048;
    *(v1 + 34) = [v5 totalBytes];

    *(v1 + 42) = 2080;
    OUTLINED_FUNCTION_45();
    v9 = OUTLINED_FUNCTION_34();
    *(v1 + 44) = sub_215808B34(v9, v10, v11);
    *(v1 + 52) = 2080;
    OUTLINED_FUNCTION_45();
    *(v1 + 54) = sub_215808B34(v12, v13, v14);
    *(v1 + 62) = 2080;
    OUTLINED_FUNCTION_45();
    *(v1 + 64) = sub_215808B34(v15, v16, v17);
    _os_log_impl(&dword_2157E4000, v6, v2, "SafariSummarizationPrefetch - Progress retrieving assets on-demand has downloadStatus: %lu, completedPercent: %f%%, completedBytes: %ld, totalBytes: %ld, for subscriberName: %s, subscriptionName: %s, assetName: %s", v1, 0x48u);
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    v18 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v18);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  else
  {
  }

  if ([v5 downloadStatus] == 4)
  {
    oslog = sub_21580B7D0();
    v19 = sub_21580BAE0();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = OUTLINED_FUNCTION_79();
      *v20 = 0;
      _os_log_impl(&dword_2157E4000, oslog, v19, "SafariSummarizationPrefetch - Progress retrieving assets on-demand complete. Asset downloaded (or skipped)", v20, 2u);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }
  }
}

uint64_t sub_2157EFE0C()
{
  OUTLINED_FUNCTION_3();
  v1[14] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC8, &qword_21580D118);
  OUTLINED_FUNCTION_48(v2);
  v1[15] = swift_task_alloc();
  v1[16] = sub_21580B6C0();
  OUTLINED_FUNCTION_18_0();
  v1[17] = v3;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2157EFEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = v22[19];
  v27 = v22[16];
  v26 = v22[17];
  v28 = v22[15];
  v29 = sub_21580B850();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DD0, &qword_21580D120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21580C9B0;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000021580EDB0;
  *(inited + 48) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DD8, &qword_21580D128);
  v31 = sub_21580B850();
  sub_21580B6A0();
  sub_21580B660();
  (*(v26 + 16))(v28, v25, v27);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v27);
  v32 = objc_allocWithZone(MEMORY[0x277D77A08]);
  v33 = sub_2157F64F0(0xD000000000000018, 0x800000021580EB20, v31, 0, v28);
  v22[20] = v33;
  if (v33)
  {
    v34 = v33;
    sub_2157EBCCC(v22[14] + 40, (v22 + 9));
    v35 = v22[13];
    __swift_project_boxed_opaque_existential_1(v22 + 9, v22[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DB0, &qword_21580D0E0);
    v36 = swift_allocObject();
    v22[21] = v36;
    *(v36 + 16) = xmmword_21580CF80;
    *(v36 + 32) = v34;
    v37 = *(v35 + 8);
    v38 = v34;
    v72 = v37 + *v37;
    v39 = swift_task_alloc();
    v22[22] = v39;
    *v39 = v22;
    v39[1] = sub_2157F0388;
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_44();

    return v46(v40, v41, v42, v43, v44, v45, v46, v47, v72, v35 + 8, a11, a12, a13, a14);
  }

  else
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v50 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v50, qword_28119DA40);
    v51 = sub_21580B7D0();
    v52 = sub_21580BAC0();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v22[19];
    v55 = v22[16];
    v56 = v22[17];
    if (v53)
    {
      OUTLINED_FUNCTION_53();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      a11 = swift_slowAlloc();
      *v57 = 136315907;
      OUTLINED_FUNCTION_36();
      v58 = OUTLINED_FUNCTION_34();
      v61 = sub_215808B34(v58, v59, v60);
      v62 = OUTLINED_FUNCTION_68(v61);
      *(v57 + 14) = sub_215808B34(v62, 0x800000021580EDB0, &a11);
      *(v57 + 22) = 2085;
      *(v57 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &a11);
      *(v57 + 32) = 2085;
      *(v57 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &a11);
      _os_log_impl(&dword_2157E4000, v51, v52, "SafariSummarizationPrefetch - Failed to initialize UAFAssetSetSubscription for subscription name %s, assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v57, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      v63 = OUTLINED_FUNCTION_4_2();
      MEMORY[0x216072190](v63);
    }

    (*(v56 + 8))(v54, v55);

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_44();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2157F0388()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2157F048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_74();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  __swift_destroy_boxed_opaque_existential_1(v22 + 9);
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v26 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v26, qword_28119DA40);
  v27 = sub_21580B7D0();
  sub_21580BAE0();
  OUTLINED_FUNCTION_37();
  v29 = os_log_type_enabled(v27, v28);
  v30 = v22[19];
  v31 = v22[20];
  v32 = v22[16];
  v33 = v22[17];
  if (v29)
  {
    a10 = v22[19];
    OUTLINED_FUNCTION_53();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    a11 = swift_slowAlloc();
    *v34 = 136315907;
    a9 = v32;
    v35 = OUTLINED_FUNCTION_34();
    v38 = sub_215808B34(v35, v36, v37);
    v39 = OUTLINED_FUNCTION_68(v38);
    *(v34 + 14) = sub_215808B34(v39, 0x800000021580EDB0, &a11);
    *(v34 + 22) = 2085;
    v40 = OUTLINED_FUNCTION_67();
    *(v34 + 24) = sub_215808B34(v40, v41, v42);
    *(v34 + 32) = 2085;
    v43 = OUTLINED_FUNCTION_67();
    *(v34 + 34) = sub_215808B34(v43, v44, v45);
    _os_log_impl(&dword_2157E4000, v27, v23, "SafariSummarizationPrefetch - Successfully UAFAssetSetManager.subscribed to assets with subscriberName: %s, assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v34, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    v46 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v46);

    (*(v33 + 8))(a10, v32);
  }

  else
  {

    (*(v33 + 8))(v30, v32);
  }

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_44();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2157F0698()
{
  v28 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v2, qword_28119DA40);
  v3 = v1;
  v4 = sub_21580B7D0();
  v5 = sub_21580BAC0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 184);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  if (v6)
  {
    v26 = *(v0 + 160);
    v25 = *(v0 + 128);
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_0();
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v27 = swift_slowAlloc();
    *v11 = 138413315;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    v15 = OUTLINED_FUNCTION_34();
    *(v11 + 14) = sub_215808B34(v15, v16, v17);
    *(v11 + 22) = 2080;
    v18 = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v27);
    *(v11 + 24) = v18;
    *(v11 + 32) = 2085;
    v20 = OUTLINED_FUNCTION_78(v18, v19, &v27);
    *(v11 + 34) = v20;
    *(v11 + 42) = 2085;
    *(v11 + 44) = OUTLINED_FUNCTION_78(v20, v21, &v27);
    _os_log_impl(&dword_2157E4000, v4, v5, "SafariSummarizationPrefetch - Failed to UAFAssetSetManager.subscribe error: %@, subscriberName: %s, assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v11, 0x34u);
    sub_2157F7220(v12, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    v22 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v22);

    (*(v9 + 8))(v8, v25);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  OUTLINED_FUNCTION_6();

  return v23();
}

uint64_t sub_2157F0958()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return OUTLINED_FUNCTION_22_0(sub_2157F0998);
}

uint64_t sub_2157F0998()
{
  OUTLINED_FUNCTION_17();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2157F0A84;
  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822008A0](v5);
}

uint64_t sub_2157F0A84()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2157F0BAC()
{
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_2157F0C08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-1] - v6;
  sub_2157EBCCC(a2 + 40, v14);
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  (*(v9 + 48))(0xD000000000000011, 0x800000021580EDD0, &unk_2827B4898, 0, sub_2157F7334, v11, v8, v9);

  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_2157F0DC0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
    return sub_21580BA20();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
    return sub_21580BA30();
  }
}

uint64_t sub_2157F0E34()
{
  v1 = *v0;
  sub_2157EBCCC((v0 + 5), v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = 0xD000000000000014;
  v9[1] = 0x800000021580EDB0;
  v4 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_13();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v6 = *(v3 + 24);

  v7 = v6(v9, 0, sub_2157F7218, v5, v2, v3);

  sub_2157F7220(v9, &unk_27CA73D80, &unk_21580D0F0);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v7;
}

void sub_2157F0F9C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73C68, &qword_21580E930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22[-1] - v4;
  if (qword_28119CC70 != -1)
  {
    swift_once();
  }

  v6 = sub_21580B7F0();
  __swift_project_value_buffer(v6, qword_28119DA40);
  v7 = sub_21580B7D0();
  v8 = sub_21580BAE0();
  v9 = objc_release_x22;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22[0] = v11;
    *v10 = 136315651;
    *(v10 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v22);
    *(v10 + 12) = 2085;
    *(v10 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v22);
    *(v10 + 22) = 2085;
    *(v10 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v22);
    _os_log_impl(&dword_2157E4000, v7, v8, "SafariSummarizationPrefetch - Observing referenced assetSet is updated for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x216072190](v11, -1, -1);
    v12 = v10;
    v9 = objc_release_x22;
    MEMORY[0x216072190](v12, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_21580BA60();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a2;
    sub_215803914(0, 0, v5, &unk_21580D108, v16);
  }

  else
  {
    v17 = sub_21580B7D0();
    v18 = sub_21580BAC0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = *(v9 + 307);
      *(v19 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, &v21);
      *(v19 + 12) = 2085;
      *(v19 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v21);
      *(v19 + 22) = 2085;
      *(v19 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, &v21);
      _os_log_impl(&dword_2157E4000, v17, v18, "SafariSummarizationPrefetch - Failed to update loadedAssets due to self for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v20, -1, -1);
      MEMORY[0x216072190](v19, -1, -1);
    }
  }
}

uint64_t sub_2157F1334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2157F13C4;

  return sub_2157F16E8();
}

uint64_t sub_2157F13C4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_6();

    return v8();
  }
}

uint64_t sub_2157F14DC()
{
  v21 = v0;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v2 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v2, qword_28119DA40);
  v3 = sub_21580B7D0();
  sub_21580BAC0();
  OUTLINED_FUNCTION_37();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_15_0();
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315651;
    OUTLINED_FUNCTION_36();
    *(v7 + 4) = sub_215808B34(0xD000000000000014, v8, &v20);
    *(v7 + 12) = 2085;
    v9 = OUTLINED_FUNCTION_63();
    *(v7 + 14) = sub_215808B34(v9, v10, v11);
    *(v7 + 22) = 2085;
    v12 = OUTLINED_FUNCTION_63();
    *(v7 + 24) = sub_215808B34(v12, v13, v14);
    OUTLINED_FUNCTION_20_0(&dword_2157E4000, v15, v1, "SafariSummarizationPrefetch - Failed to update loadedAssets for assetSetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s");
    OUTLINED_FUNCTION_32();
    swift_arrayDestroy();
    v16 = OUTLINED_FUNCTION_4_2();
    MEMORY[0x216072190](v16);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190](v17);
  }

  OUTLINED_FUNCTION_6();

  return v18();
}

uint64_t sub_2157F1670(uint64_t a1)
{
  sub_2157EBCCC(v1 + 40, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_2157F16E8()
{
  OUTLINED_FUNCTION_3();
  v1[10] = v0;
  v1[11] = sub_21580B5E0();
  OUTLINED_FUNCTION_18_0();
  v1[12] = v2;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = sub_21580B700();
  OUTLINED_FUNCTION_18_0();
  v1[17] = v3;
  v1[18] = swift_task_alloc();
  v4 = sub_21580B760();
  OUTLINED_FUNCTION_48(v4);
  v1[19] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2157F1830()
{
  v147 = v0;
  v2 = v0[19];
  v3 = v0[10];
  v4 = *(v3 + 16);
  (*(v0[17] + 104))(v0[18], *MEMORY[0x277D39D88], v0[16]);

  sub_21580B770();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v5 = sub_215801DF0(v4, 65, v2, 0, 1);
  v0[20] = v5;
  if ((*(v3 + 80) & 1) == 0)
  {
    *(v5 + qword_28119D508) = 1;
  }

  sub_2157F28DC(v5);
  v0[21] = v6;
  v9 = v6;
  v10 = [v6 location];
  if (!v10)
  {
    OUTLINED_FUNCTION_23_0(qword_28119D500);
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v17 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v17, qword_28119DA40);
    v18 = v9;
    v19 = sub_21580B7D0();
    v20 = sub_21580BAC0();

    v21 = OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_15_0();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_24_0();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v146[0] = swift_slowAlloc();
      v25 = OUTLINED_FUNCTION_54(5.9286e-34);
      v31 = OUTLINED_FUNCTION_12_0(v25, v26, v27, v28, v29, v30);
      *(v23 + 14) = v31;
      *(v23 + 22) = v1;
      *(v23 + 24) = OUTLINED_FUNCTION_21_0(v31, v32, v33, v34, v35, v36);
      OUTLINED_FUNCTION_20_0(&dword_2157E4000, v37, v20, "SafariSummarizationPrefetch - Failed to get asset location for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s");
      sub_2157F7220(v24, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_39();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    v38 = swift_allocError();
    OUTLINED_FUNCTION_8_1(v38, v39);
    swift_willThrow();

    goto LABEL_4;
  }

  v11 = v10;
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[11];
  v15 = v0[12];
  sub_21580B580();

  (*(v15 + 32))(v12, v13, v14);
  v16 = sub_21580B570();
  if (v16)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v40 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v40, qword_28119DA40);
    v41 = v9;
    v42 = sub_21580B7D0();
    v43 = sub_21580BAE0();

    v44 = OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v44, v45))
    {
      OUTLINED_FUNCTION_15_0();
      v46 = swift_slowAlloc();
      OUTLINED_FUNCTION_24_0();
      v47 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v146[0] = swift_slowAlloc();
      *v46 = 138740483;
      *(v46 + 4) = v41;
      *v47 = v41;
      *(v46 + 12) = 2085;
      v48 = v41;
      v54 = OUTLINED_FUNCTION_12_0(v48, v49, v50, v51, v52, v53);
      *(v46 + 14) = v54;
      *(v46 + 22) = 2085;
      v1 = MEMORY[0x277D84F70];
      *(v46 + 24) = OUTLINED_FUNCTION_21_0(v54, v55, v56, v57, v58, v59);
      OUTLINED_FUNCTION_20_0(&dword_2157E4000, v60, v43, "SafariSummarizationPrefetch - Successfully retrieved reachable asset location for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s");
      sub_2157F7220(v47, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }
  }

  v61 = [v9 metadata];
  v62 = sub_21580B830();

  v63 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v62);
  v65 = v64;

  if (!v65)
  {
    OUTLINED_FUNCTION_23_0(qword_28119D500);
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v96 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v96, qword_28119DA40);
    v97 = v9;
    v98 = sub_21580B7D0();
    v99 = sub_21580BAC0();

    v100 = OUTLINED_FUNCTION_64();
    if (os_log_type_enabled(v100, v101))
    {
      OUTLINED_FUNCTION_15_0();
      v102 = swift_slowAlloc();
      OUTLINED_FUNCTION_24_0();
      v103 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_0();
      v146[0] = swift_slowAlloc();
      v104 = OUTLINED_FUNCTION_54(5.9286e-34);
      v110 = OUTLINED_FUNCTION_12_0(v104, v105, v106, v107, v108, v109);
      *(v102 + 14) = v110;
      *(v102 + 22) = v1;
      *(v102 + 24) = OUTLINED_FUNCTION_21_0(v110, v111, v112, v113, v114, v115);
      OUTLINED_FUNCTION_20_0(&dword_2157E4000, v116, v99, "SafariSummarizationPrefetch - Failed to get asset metadata version for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s");
      sub_2157F7220(v103, &qword_27CA73DA8, &qword_21580D0D8);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_39();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    v117 = swift_allocError();
    OUTLINED_FUNCTION_8_1(v117, v118);
    swift_willThrow();

    v119 = OUTLINED_FUNCTION_43();
    v120(v119);
LABEL_4:

    OUTLINED_FUNCTION_6();
    goto LABEL_5;
  }

  v145 = v63;
  OUTLINED_FUNCTION_46();
  swift_beginAccess();

  sub_2158033D4();

  v66 = sub_21580A1D8();

  if (!v66)
  {
    goto LABEL_31;
  }

  v67 = sub_2158036AC(v66);

  if (!v67)
  {
    goto LABEL_31;
  }

  v68 = [v67 metadata];
  v69 = sub_21580B830();

  v70 = sub_2158036F4(0x6E6F6973726576, 0xE700000000000000, v69);
  v72 = v71;

  if (!v72)
  {
LABEL_30:

LABEL_31:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DB8, &qword_21580D0E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21580C9B0;
    *(inited + 32) = v9;
    sub_2157F74BC(0, &qword_28119CBA8, 0x277D779E0);
    sub_2157EBC50();
    v76 = v9;
    v77 = sub_21580B850();

    v78 = sub_2158033D4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146[0] = v78;
    sub_2157F99B4(v77, isUniquelyReferenced_nonNull_native);
    sub_2158035A0(v78);

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v80 = v0[15];
    v82 = v0[12];
    v81 = v0[13];
    v83 = v0[11];
    v84 = sub_21580B7F0();
    __swift_project_value_buffer(v84, qword_28119DA40);
    (*(v82 + 16))(v81, v80, v83);

    v85 = sub_21580B7D0();
    v86 = sub_21580BAE0();

    if (os_log_type_enabled(v85, v86))
    {
      log = v86;
      v87 = swift_slowAlloc();
      v146[0] = swift_slowAlloc();
      *v87 = 136316163;
      v88 = sub_215808B34(v145, v65, v146);

      *(v87 + 4) = v88;
      *(v87 + 12) = 2085;
      sub_2157F71C0();
      v89 = sub_21580BD10();
      v91 = v90;
      v92 = OUTLINED_FUNCTION_43();
      v93(v92);
      v94 = sub_215808B34(v89, v91, v146);

      *(v87 + 14) = v94;
      *(v87 + 22) = 2080;
      OUTLINED_FUNCTION_36();
      *(v87 + 24) = sub_215808B34(0xD00000000000001DLL, v95, v146);
      *(v87 + 32) = 2085;
      *(v87 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v146);
      *(v87 + 42) = 2085;
      *(v87 + 44) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v146);
      _os_log_impl(&dword_2157E4000, v85, log, "SafariSummarizationPrefetch - Successfully loaded the retrieved asset version: %s, assetLocation: %{sensitive}s, assetName: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v87, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {

      v121 = OUTLINED_FUNCTION_43();
      v122(v121);
    }

    OUTLINED_FUNCTION_27_0(qword_28119D500);
    sub_215802470();
    v123 = 0x28119C000uLL;
    goto LABEL_42;
  }

  if (v70 == v145 && v72 == v65)
  {
  }

  else
  {
    v74 = sub_21580BD30();

    if ((v74 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v123 = 0x28119C000uLL;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v135 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v135, qword_28119DA40);
  v136 = v9;

  v137 = sub_21580B7D0();
  v138 = sub_21580BAC0();

  if (os_log_type_enabled(v137, v138))
  {
    OUTLINED_FUNCTION_53();
    v139 = swift_slowAlloc();
    OUTLINED_FUNCTION_24_0();
    loga = v137;
    v140 = swift_slowAlloc();
    v146[0] = swift_slowAlloc();
    *v139 = 136315907;
    v141 = sub_215808B34(v145, v65, v146);

    *(v139 + 4) = v141;
    *(v139 + 12) = 2117;
    *(v139 + 14) = v136;
    *v140 = v136;
    *(v139 + 22) = 2085;
    v142 = v136;
    *(v139 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v146);
    *(v139 + 32) = 2085;
    v123 = 0x28119C000;
    *(v139 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v146);
    _os_log_impl(&dword_2157E4000, loga, v138, "SafariSummarizationPrefetch - Skipping update to loadedAssets, already updated to asset version: %s, asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s", v139, 0x2Au);
    sub_2157F7220(v140, &qword_27CA73DA8, &qword_21580D0D8);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27_0(qword_28119D500);
  sub_215802470();

LABEL_42:
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (!Strong)
  {
    if (*(v123 + 3184) != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v128 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v128, qword_28119DA40);
    v129 = sub_21580B7D0();
    v130 = sub_21580BAC0();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = OUTLINED_FUNCTION_79();
      *v131 = 0;
      _os_log_impl(&dword_2157E4000, v129, v130, "SafariSummarizationPrefetch - Failed to call didUpdateLoadedAssets since delegate is not set", v131, 2u);
      v132 = OUTLINED_FUNCTION_4_2();
      MEMORY[0x216072190](v132);
    }

    else
    {
    }

    v133 = OUTLINED_FUNCTION_33();
    v134(v133);

    OUTLINED_FUNCTION_6();
LABEL_5:
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  v125 = swift_task_alloc();
  v0[23] = v125;
  *v125 = v0;
  v125[1] = sub_2157F2744;
  OUTLINED_FUNCTION_73();

  return sub_2157E88F0();
}

uint64_t sub_2157F2744()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_21();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2157F2828()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 168);
  swift_unknownObjectRelease();

  v2 = OUTLINED_FUNCTION_33();
  v3(v2);

  OUTLINED_FUNCTION_6();

  return v4();
}

void sub_2157F28DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21580B850();
  v5 = MEMORY[0x216071B70]();
  sub_2157F29C8(v2, v4, a1, &v6, &v7);

  objc_autoreleasePoolPop(v5);
}

void sub_2157F29C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, void *a5@<X8>)
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DB0, &qword_21580D0E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21580CF80;
  sub_2157F74BC(0, &unk_28119CBD8, 0x277D46E38);
  *(v9 + 32) = sub_2157F2FCC(0xD000000000000010, 0x800000021580F300, 0xD000000000000019, 0x800000021580F320);
  v10 = objc_allocWithZone(MEMORY[0x277D46DB8]);
  v11 = sub_2157F665C(0xD000000000000020, 0x800000021580F2D0, v8, v9);
  v36[0] = 0;
  if ([v11 acquireWithError_])
  {
    v12 = v36[0];
  }

  else
  {
    v13 = v36[0];
    v14 = sub_21580B520();

    swift_willThrow();
  }

  sub_2157EBCCC(a1 + 40, v36);
  v15 = v37;
  v16 = v38;
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v17 = (*(v16 + 32))(0xD000000000000014, 0x800000021580EDB0, a2, v15, v16);
  if (v17)
  {
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v36);
    v19 = sub_21580B880();
    v20 = [v18 assetNamed_];

    if (v20)
    {

      *a5 = v20;
      [v11 invalidate];

      return;
    }

    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v28 = sub_21580B7F0();
    __swift_project_value_buffer(v28, qword_28119DA40);
    v29 = sub_21580B7D0();
    v30 = sub_21580BAC0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36[0] = v32;
      *v31 = 136315907;
      *(v31 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v36);
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_215808B34(0xD00000000000001DLL, 0x800000021580EDF0, v36);
      *(v31 + 22) = 2085;
      *(v31 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v36);
      *(v31 + 32) = 2085;
      *(v31 + 34) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v36);
      _os_log_impl(&dword_2157E4000, v29, v30, "SafariSummarizationPrefetch - Failed to retrieve AssetSet: %s, with name: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x216072190](v32, -1, -1);
      MEMORY[0x216072190](v31, -1, -1);
    }

    if (a3)
    {
      *(a3 + qword_28119D500) = 85;
      sub_215802470();
    }

    sub_2157F6704();
    v26 = swift_allocError();
    *v33 = 6;
    swift_willThrow();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
    if (qword_28119CC70 != -1)
    {
      swift_once();
    }

    v21 = sub_21580B7F0();
    __swift_project_value_buffer(v21, qword_28119DA40);
    v22 = sub_21580B7D0();
    v23 = sub_21580BAC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v36[0] = v25;
      *v24 = 136315651;
      *(v24 + 4) = sub_215808B34(0xD000000000000014, 0x800000021580EDB0, v36);
      *(v24 + 12) = 2085;
      *(v24 + 14) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v36);
      *(v24 + 22) = 2085;
      *(v24 + 24) = sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, v36);
      _os_log_impl(&dword_2157E4000, v22, v23, "SafariSummarizationPrefetch - Failed to retrieve AssetSet: %s, countryCode: %{sensitive}s, locale: %{sensitive}s. Most likely due to UAF assets not downloaded", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216072190](v25, -1, -1);
      MEMORY[0x216072190](v24, -1, -1);
    }

    if (a3)
    {
      *(a3 + qword_28119D500) = 84;
      sub_215802470();
    }

    sub_2157F6704();
    v26 = swift_allocError();
    *v27 = 6;
    swift_willThrow();
  }

  [v11 invalidate];

  *a4 = v26;
}

id sub_2157F2FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21580B880();

  v5 = sub_21580B880();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

NSObject *sub_2157F3060(uint64_t a1)
{
  v3 = v1;
  v4 = sub_21580B5E0();
  OUTLINED_FUNCTION_2_2();
  v60 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v9 = v8 - v7;
  v10 = sub_21580B700();
  OUTLINED_FUNCTION_2_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = sub_21580B760();
  v18 = OUTLINED_FUNCTION_48(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  v22 = *(v3 + 16);
  (*(v12 + 104))(v16, *MEMORY[0x277D39D88], v10);

  sub_21580B770();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v23 = sub_215801DF0(v22, 62, v21, 0, 1);
  if ((*(v3 + 80) & 1) == 0)
  {
    *(v23 + qword_28119D508) = 1;
  }

  OUTLINED_FUNCTION_46();
  swift_beginAccess();

  sub_2158033D4();

  v24 = sub_21580A1D8();

  if (v24 && (v25 = sub_2158036AC(v24), , v25))
  {
    v26 = [v25 location];
    if (v26)
    {
      v27 = v26;
      sub_21580B580();

      OUTLINED_FUNCTION_27_0(qword_28119D500);
      sub_215802470();
      (*(v60 + 16))(a1, v9, v4);
      v28 = [v25 metadata];
      v29 = sub_21580B830();

      (*(v60 + 8))(v9, v4);
    }

    else
    {
      OUTLINED_FUNCTION_23_0(qword_28119D500);
      sub_215802470();
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v43 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v43, qword_28119DA40);
      v44 = v25;
      v29 = sub_21580B7D0();
      v45 = sub_21580BAC0();

      v46 = OUTLINED_FUNCTION_64();
      if (os_log_type_enabled(v46, v47))
      {
        OUTLINED_FUNCTION_15_0();
        v48 = swift_slowAlloc();
        OUTLINED_FUNCTION_24_0();
        v49 = swift_slowAlloc();
        OUTLINED_FUNCTION_13_0();
        v61 = swift_slowAlloc();
        *v48 = 138740483;
        *(v48 + 4) = v44;
        *v49 = v25;
        *(v48 + 12) = 2085;
        v50 = v44;
        v51 = OUTLINED_FUNCTION_67();
        *(v48 + 14) = sub_215808B34(v51, v52, v53);
        *(v48 + 22) = 2085;
        v54 = OUTLINED_FUNCTION_67();
        *(v48 + 24) = sub_215808B34(v54, v55, v56);
        _os_log_impl(&dword_2157E4000, v29, v45, "SafariSummarizationPrefetch - Failed to get loaded asset location for asset: %{sensitive}@, countryCode: %{sensitive}s, locale: %{sensitive}s", v48, 0x20u);
        sub_2157F7220(v49, &qword_27CA73DA8, &qword_21580D0D8);
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_39();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
      }

      sub_2157F6704();
      OUTLINED_FUNCTION_14_0();
      v57 = swift_allocError();
      OUTLINED_FUNCTION_8_1(v57, v58);
      swift_willThrow();
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_0(qword_28119D500);
    sub_215802470();
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v30 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v30, qword_28119DA40);
    v29 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_37();
    if (os_log_type_enabled(v29, v31))
    {
      OUTLINED_FUNCTION_15_0();
      swift_slowAlloc();
      OUTLINED_FUNCTION_42();
      v61 = swift_slowAlloc();
      *v2 = 136315651;
      OUTLINED_FUNCTION_36();
      *(v2 + 4) = sub_215808B34(0xD000000000000014, v32, &v61);
      *(v2 + 12) = 2085;
      v33 = OUTLINED_FUNCTION_63();
      *(v2 + 14) = sub_215808B34(v33, v34, v35);
      *(v2 + 22) = 2085;
      v36 = OUTLINED_FUNCTION_63();
      *(v2 + 24) = sub_215808B34(v36, v37, v38);
      _os_log_impl(&dword_2157E4000, v29, v4, "SafariSummarizationPrefetch - Failed to get loaded asset for assetNamed: %s, countryCode: %{sensitive}s, locale: %{sensitive}s", v2, 0x20u);
      OUTLINED_FUNCTION_32();
      swift_arrayDestroy();
      v39 = OUTLINED_FUNCTION_4_2();
      MEMORY[0x216072190](v39);
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    v40 = swift_allocError();
    OUTLINED_FUNCTION_8_1(v40, v41);
    swift_willThrow();
  }

  return v29;
}

NSObject *sub_2157F3650@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v164 = a1;
  v165 = a2;
  v156 = a4;
  sub_21580B530();
  OUTLINED_FUNCTION_2_2();
  v158 = v10;
  v159 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v157 = v12 - v11;
  v163 = sub_21580B700();
  OUTLINED_FUNCTION_2_2();
  v161 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = sub_21580B760();
  v19 = OUTLINED_FUNCTION_48(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v162 = v21 - v20;
  v22 = sub_21580B5E0();
  OUTLINED_FUNCTION_2_2();
  v160 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v26);
  v28 = &v148 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_62();
  MEMORY[0x28223BE20](v30);
  v32 = &v148 - v31;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v33 = v4;
  v34 = v168;
  result = sub_2157F3060(v32);
  if (v34)
  {
    return result;
  }

  v149 = v6;
  v150 = v5;
  v151 = v28;
  v152 = 0;
  v153 = v7;
  v154 = v32;
  v168 = result;
  v155 = v22;
  v36 = *(v4 + 16);
  (*(v161 + 104))(v17, *MEMORY[0x277D39D88], v163);

  v37 = v162;
  sub_21580B770();
  type metadata accessor for ResourceAccessSpan(0);
  swift_allocObject();
  v38 = sub_215801DF0(v36, 63, v37, 0, 1);
  v39 = v38;
  if ((*(v33 + 80) & 1) == 0)
  {
    *(v38 + qword_28119D508) = 1;
  }

  v40 = sub_2157F74BC(0, &qword_28119CC08, 0x277D42540);
  v41 = sub_2157EE79C(v164, v165);
  v42 = v168;
  if (v41 < 0)
  {
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v7 = v41;

  v44 = sub_2157F43E0(v43);
  v46 = v45;

  if (v46)
  {
    v5 = 1;
  }

  else
  {
    v5 = v44;
  }

  if (!v5)
  {
    goto LABEL_50;
  }

  v165 = v39;
  v166 = v7 % v5;
  v47 = sub_21580BD10();
  v166 = 0xD000000000000019;
  v167 = 0x800000021580F2B0;
  MEMORY[0x216071600](v47);

  v28 = v166;
  v39 = v167;
  v48 = sub_2158036F4(v166, v167, v42);
  if (!v49)
  {
    if (qword_28119CC70 == -1)
    {
LABEL_13:
      v61 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v61, qword_28119DA40);

      v62 = sub_21580B7D0();
      v63 = sub_21580BAC0();

      if (os_log_type_enabled(v62, v63))
      {
        OUTLINED_FUNCTION_53();
        v64 = swift_slowAlloc();
        OUTLINED_FUNCTION_13_0();
        v166 = swift_slowAlloc();
        *v64 = 136315907;
        v65 = sub_215808B34(v28, v39, &v166);

        *(v64 + 4) = v65;
        *(v64 + 12) = 2053;
        *(v64 + 14) = v7;
        *(v64 + 22) = 2048;
        *(v64 + 24) = v5;
        *(v64 + 32) = 2080;
        v66 = OUTLINED_FUNCTION_1_2();
        sub_2158036F4(v66, v67, v168);
        OUTLINED_FUNCTION_38();
        v71 = v70 | 0x610000u;
        if (v72)
        {
          v68 = v71;
          v73 = 0xE300000000000000;
        }

        else
        {
          v73 = v69;
        }

        v74 = sub_215808B34(v68, v73, &v166);

        *(v64 + 34) = v74;
        _os_log_impl(&dword_2157E4000, v62, v63, "SafariSummarizationPrefetch - Failed to find %s key in metadata dictionary for hash: %{sensitive}llu, numShards: %llu, version: %s", v64, 0x2Au);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
      }

      else
      {
      }

      *(v165 + qword_28119D500) = 88;
      sub_215802470();
      sub_2157F6704();
      OUTLINED_FUNCTION_14_0();
      swift_allocError();
      *v105 = 8;
      swift_willThrow();

      (*(v160 + 8))(v154, v155);
    }

LABEL_51:
    OUTLINED_FUNCTION_0();
    swift_once();
    goto LABEL_13;
  }

  v50 = v49;
  v163 = v28;
  v164 = v39;
  v166 = v48;
  v167 = v49;
  v51 = v157;
  v52 = v158;
  v53 = v48;
  v54 = v159;
  (*(v158 + 104))(v157, *MEMORY[0x277CC91D8], v159);
  sub_2157F6758();
  v56 = v153;
  v55 = v154;
  sub_21580B5D0();
  (*(v52 + 8))(v51, v54);
  v57 = v152;
  v58 = sub_21580B560();
  if (v57)
  {

    v59 = *(v160 + 8);
    v60 = v155;
    v59(v56, v155);
    v59(v55, v60);
  }

  v161 = v53;
  v162 = v40;
  v75 = v155;
  if ((v58 & 1) == 0)
  {
    v106 = v165;

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v107 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v107, qword_28119DA40);
    v108 = v160;
    v109 = v150;
    (*(v160 + 16))(v150, v56, v75);
    v110 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_37();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_13_0();
      v166 = swift_slowAlloc();
      OUTLINED_FUNCTION_70(4.9655e-34);
      sub_21580B5A0();
      v113 = OUTLINED_FUNCTION_25_0();
      v109(v113);
      v114 = OUTLINED_FUNCTION_52();
      v116 = sub_215808B34(v114, v108, v115);

      *(v112 + 4) = v116;
      *(v112 + 12) = 2080;
      v117 = OUTLINED_FUNCTION_1_2();
      sub_2158036F4(v117, v118, v168);
      OUTLINED_FUNCTION_38();
      v121 = v120 | 0x610000u;
      if (v72)
      {
        v119 = v121;
      }

      v122 = OUTLINED_FUNCTION_59(v119);

      *(v112 + 14) = v122;
      OUTLINED_FUNCTION_76(&dword_2157E4000, v123, v124, "SafariSummarizationPrefetch - Failed to find bloom filter asset at path: %{sensitive}s, version: %s");
      OUTLINED_FUNCTION_32();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      v75 = v155;
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {

      v125 = OUTLINED_FUNCTION_47();
      v109(v125);
    }

    *(v106 + qword_28119D500) = 83;
    sub_215802470();
    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    swift_allocError();
    *v126 = 0;
    goto LABEL_46;
  }

  v76 = v55;
  v152 = 0;
  v77 = sub_21580B5A0();
  v79 = sub_2157F437C(v77, v78);
  v80 = v164;
  if (!v79)
  {
    v127 = v165;

    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v128 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v128, qword_28119DA40);
    v129 = v160;
    v109 = v149;
    (*(v160 + 16))(v149, v56, v75);
    v130 = sub_21580B7D0();
    sub_21580BAC0();
    OUTLINED_FUNCTION_37();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_13_0();
      v166 = swift_slowAlloc();
      OUTLINED_FUNCTION_70(4.9655e-34);
      sub_21580B5A0();
      v133 = OUTLINED_FUNCTION_25_0();
      v109(v133);
      v134 = OUTLINED_FUNCTION_52();
      v136 = sub_215808B34(v134, v129, v135);

      *(v132 + 4) = v136;
      *(v132 + 12) = 2080;
      v137 = OUTLINED_FUNCTION_1_2();
      sub_2158036F4(v137, v138, v168);
      OUTLINED_FUNCTION_38();
      v141 = v140 | 0x610000u;
      if (v72)
      {
        v139 = v141;
      }

      v142 = OUTLINED_FUNCTION_59(v139);

      *(v132 + 14) = v142;
      OUTLINED_FUNCTION_76(&dword_2157E4000, v143, v144, "SafariSummarizationPrefetch - Failed to deserialize installed bloom filter binary at path: %{sensitive}s, version: %s");
      OUTLINED_FUNCTION_32();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
      v75 = v155;
      OUTLINED_FUNCTION_8();
      MEMORY[0x216072190]();
    }

    else
    {

      v146 = OUTLINED_FUNCTION_47();
      v109(v146);
    }

    *(v127 + qword_28119D500) = 91;
    sub_215802470();
    sub_2157F6704();
    OUTLINED_FUNCTION_14_0();
    swift_allocError();
    *v147 = 1;
LABEL_46:
    swift_willThrow();

    (v109)(v153, v75);
    (v109)(v154, v75);
  }

  v81 = v79;
  if (qword_28119CC70 != -1)
  {
    OUTLINED_FUNCTION_0();
    swift_once();
  }

  v82 = sub_21580B7F0();
  OUTLINED_FUNCTION_29(v82, qword_28119DA40);
  v83 = v160;
  (*(v160 + 16))(v151, v56, v75);

  v84 = v75;
  v85 = sub_21580B7D0();
  v86 = sub_21580BAE0();

  if (os_log_type_enabled(v85, v86))
  {
    OUTLINED_FUNCTION_53();
    v87 = swift_slowAlloc();
    v159 = v81;
    v88 = v87;
    OUTLINED_FUNCTION_69();
    v158 = swift_slowAlloc();
    v166 = v158;
    *v88 = 136315907;
    v89 = sub_215808B34(v163, v80, &v166);

    *(v88 + 4) = v89;
    LODWORD(v164) = v86;
    *(v88 + 12) = 2080;
    v90 = sub_215808B34(v161, v50, &v166);

    *(v88 + 14) = v90;
    *(v88 + 22) = 2080;
    v91 = OUTLINED_FUNCTION_1_2();
    v92 = v151;
    sub_2158036F4(v91, v93, v168);
    OUTLINED_FUNCTION_38();
    v96 = v95 | 0x610000u;
    if (v72)
    {
      v94 = v96;
    }

    v97 = OUTLINED_FUNCTION_59(v94);

    *(v88 + 24) = v97;
    *(v88 + 32) = 2085;
    sub_21580B5A0();
    v99 = v98;
    v100 = *(v83 + 8);
    v100(v92, v155);
    v101 = OUTLINED_FUNCTION_52();
    v103 = sub_215808B34(v101, v99, v102);

    *(v88 + 34) = v103;
    _os_log_impl(&dword_2157E4000, v85, v164, "SafariSummarizationPrefetch - Successfully fetched and deserialized bloom filter shard binary: %s, file: %s, version: %s, at path: %{sensitive}s", v88, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    v81 = v159;
    v76 = v154;
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();

    v104 = v155;
  }

  else
  {

    v100 = *(v83 + 8);
    v100(v151, v84);
    v104 = v84;
  }

  *(v165 + qword_28119D500) = 81;
  sub_215802470();
  v145 = v156;
  v156[3] = v162;
  v145[4] = &off_2827B4F98;

  *v145 = v81;
  v100(v153, v104);
  v100(v76, v104);
}

id sub_2157F437C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21580B880();

  v3 = [swift_getObjCClassFromMetadata() bloomFilterWithPathToFile_];

  return v3;
}

unint64_t sub_2157F43E0(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  result = sub_2158036F4(0xD000000000000017, v3, a1);
  if (!v5)
  {
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v15 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v15, qword_28119DA40);

    v16 = sub_21580B7D0();
    v17 = sub_21580BAC0();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_90;
    }

    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v19 = swift_slowAlloc();
    v42[0] = v19;
    *v18 = 136315138;
    v20 = OUTLINED_FUNCTION_1_2();
    sub_2158036F4(v20, v21, a1);
    OUTLINED_FUNCTION_38();
    v25 = v24 | 0x610000u;
    if (v12)
    {
      v22 = v25;
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = v23;
    }

    v27 = sub_215808B34(v22, v26, v42);

    *(v18 + 4) = v27;
    v28 = "SafariSummarizationPrefetch - Failed to find num_bloom_filter_shards key in metadata dictionary, version: %s";
    goto LABEL_89;
  }

  v6 = v5;
  v7 = HIBYTE(v5) & 0xF;
  v8 = result & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_82:
    if (qword_28119CC70 != -1)
    {
      OUTLINED_FUNCTION_0();
      swift_once();
    }

    v32 = sub_21580B7F0();
    OUTLINED_FUNCTION_29(v32, qword_28119DA40);

    v16 = sub_21580B7D0();
    v17 = sub_21580BAC0();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_90;
    }

    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_0();
    v19 = swift_slowAlloc();
    v42[0] = v19;
    *v18 = 136315138;
    v33 = OUTLINED_FUNCTION_1_2();
    sub_2158036F4(v33, v34, a1);
    OUTLINED_FUNCTION_38();
    v38 = v37 | 0x610000u;
    if (v12)
    {
      v35 = v38;
      v39 = 0xE300000000000000;
    }

    else
    {
      v39 = v36;
    }

    v40 = sub_215808B34(v35, v39, v42);

    *(v18 + 4) = v40;
    v28 = "SafariSummarizationPrefetch - num_bloom_filter_shards value incorrect in metadata dictionary, version: %s";
LABEL_89:
    _os_log_impl(&dword_2157E4000, v16, v17, v28, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
    OUTLINED_FUNCTION_8();
    MEMORY[0x216072190]();
LABEL_90:

    return 0;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v1 = sub_2157F67AC(result, v6, 10);
    v31 = v41;
LABEL_81:

    if ((v31 & 1) == 0)
    {
      return v1;
    }

    goto LABEL_82;
  }

  if ((v6 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_21580BC20();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          v1 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_10_0();
              if (!v12 && v11)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_50();
              if (!v12)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_41();
              if (v11)
              {
                goto LABEL_79;
              }

              OUTLINED_FUNCTION_49();
              if (v12)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_69;
        }

        goto LABEL_79;
      }

      goto LABEL_97;
    }

    if (v10 != 45)
    {
      if (v8)
      {
        v1 = 0;
        if (result)
        {
          while (1)
          {
            v30 = *result - 48;
            if (v30 > 9)
            {
              goto LABEL_79;
            }

            if (!is_mul_ok(v1, 0xAuLL))
            {
              goto LABEL_79;
            }

            v11 = __CFADD__(10 * v1, v30);
            v1 = 10 * v1 + v30;
            if (v11)
            {
              goto LABEL_79;
            }

            ++result;
            if (!--v8)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_69;
      }

LABEL_79:
      v1 = 0;
      v14 = 1;
      goto LABEL_80;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        v1 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_10_0();
            if (!v12 && v11)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_50();
            if (!v12)
            {
              goto LABEL_79;
            }

            v11 = 10 * v1 >= v13;
            v1 = 10 * v1 - v13;
            if (!v11)
            {
              goto LABEL_79;
            }

            OUTLINED_FUNCTION_49();
            if (v12)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_69:
        v14 = 0;
LABEL_80:
        v43 = v14;
        v31 = v14;
        goto LABEL_81;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v42[0] = result;
  v42[1] = v6 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v7)
      {
        v1 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_10_0();
          if (!v12 && v11)
          {
            break;
          }

          OUTLINED_FUNCTION_50();
          if (!v12)
          {
            break;
          }

          OUTLINED_FUNCTION_41();
          if (v11)
          {
            break;
          }

          OUTLINED_FUNCTION_49();
          if (v12)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v7)
    {
      if (v7 != 1)
      {
        OUTLINED_FUNCTION_72();
        while (1)
        {
          OUTLINED_FUNCTION_10_0();
          if (!v12 && v11)
          {
            break;
          }

          OUTLINED_FUNCTION_50();
          if (!v12)
          {
            break;
          }

          v11 = 10 * v1 >= v29;
          v1 = 10 * v1 - v29;
          if (!v11)
          {
            break;
          }

          OUTLINED_FUNCTION_49();
          if (v12)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_96;
  }

  if (v7)
  {
    if (v7 != 1)
    {
      OUTLINED_FUNCTION_72();
      while (1)
      {
        OUTLINED_FUNCTION_10_0();
        if (!v12 && v11)
        {
          break;
        }

        OUTLINED_FUNCTION_50();
        if (!v12)
        {
          break;
        }

        OUTLINED_FUNCTION_41();
        if (v11)
        {
          break;
        }

        OUTLINED_FUNCTION_49();
        if (v12)
        {
          goto LABEL_80;
        }
      }
    }

    goto LABEL_79;
  }

LABEL_98:
  __break(1u);
  return result;
}

NSObject *sub_2157F4884(uint64_t a1, void *a2, uint64_t a3)
{
  v127 = a3;
  v128 = a1;
  v7 = sub_21580B530();
  OUTLINED_FUNCTION_2_2();
  v129 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v12 = v11 - v10;
  v13 = sub_21580B5E0();
  OUTLINED_FUNCTION_2_2();
  v130 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_35();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_62();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_61();
  MEMORY[0x28223BE20](v18);
  v20 = &v121 - v19;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v21 = v132;
  v22 = sub_2157F3060(v20);
  if (!v21)
  {
    v123 = v4;
    v124 = 0;
    v24 = v129;
    v25 = v7;
    v121 = v5;
    v122 = v3;
    v132 = v20;
    v125 = v22;
    v126 = v13;
    v26 = sub_2158036F4(0xD000000000000015, 0x800000021580F250, v22);
    if (v27)
    {
      v5 = v26;
      v28 = v27;
      v131[0] = v26;
      v131[1] = v27;
      (v24[13].isa)(v12, *MEMORY[0x277CC91D8], v7);
      sub_2157F6758();
      v29 = v128;
      v30 = v132;
      sub_21580B5D0();
      (v24[1].isa)(v12, v25);
      v31 = v124;
      v32 = sub_21580B570();
      if (v31)
      {

        v33 = *(v130 + 8);
        v34 = v126;
        v33(v29, v126);
        v33(v30, v34);
      }

      else
      {
        v49 = v126;
        v50 = v130;
        if (v32)
        {
          v129 = v5;
          OUTLINED_FUNCTION_36();
          v52 = sub_2158036F4(0xD000000000000015, v51, v125);
          v53 = v127;
          if (v54)
          {
            v5 = v52;
            if (qword_28119CC70 != -1)
            {
              OUTLINED_FUNCTION_0();
              swift_once();
            }

            v55 = sub_21580B7F0();
            __swift_project_value_buffer(v55, qword_28119DA40);
            OUTLINED_FUNCTION_40();
            v56(v123, v128, v49);

            v57 = v125;

            v58 = sub_21580B7D0();
            v59 = sub_21580BAE0();

            LODWORD(v128) = v59;
            if (os_log_type_enabled(v58, v59))
            {
              OUTLINED_FUNCTION_15_0();
              swift_slowAlloc();
              OUTLINED_FUNCTION_42();
              v124 = swift_slowAlloc();
              v131[0] = v124;
              *v49 = 136315651;
              v60 = sub_215808B34(v129, v28, v131);
              v129 = v58;
              v61 = v60;

              *(v49 + 4) = v61;
              *(v49 + 12) = 2080;
              v62 = OUTLINED_FUNCTION_1_2();
              v64 = sub_2158036F4(v62, v63, v57);
              v66 = v65;

              if (v66)
              {
                v67 = v64;
              }

              else
              {
                v67 = 6369134;
              }

              v68 = OUTLINED_FUNCTION_59(v67);

              *(v49 + 14) = v68;
              *(v49 + 22) = 2085;
              v69 = v123;
              sub_21580B5A0();
              v71 = v70;
              OUTLINED_FUNCTION_60();
              v28(v69, v126);
              v72 = OUTLINED_FUNCTION_52();
              v74 = sub_215808B34(v72, v71, v73);
              v75 = v126;

              *(v49 + 24) = v74;
              v76 = v129;
              _os_log_impl(&dword_2157E4000, v129, v128, "SafariSummarizationPrefetch - Successfully fetched url path filter jsonl file: %s, version: %s, at path: %{sensitive}s", v49, 0x20u);
              swift_arrayDestroy();
              v49 = v75;
              v53 = v127;
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
            }

            else
            {

              OUTLINED_FUNCTION_60();
              v28(v123, v49);
            }

            *(v53 + qword_28119D500) = 81;
            sub_215802470();
            v28(v132, v49);
          }

          else
          {

            *(v53 + qword_28119D500) = 95;
            sub_215802470();
            if (qword_28119CC70 != -1)
            {
              OUTLINED_FUNCTION_0();
              swift_once();
            }

            v99 = sub_21580B7F0();
            __swift_project_value_buffer(v99, qword_28119DA40);
            OUTLINED_FUNCTION_40();
            v100 = v121;
            v101(v121, v128, v49);
            v102 = v125;

            v103 = sub_21580B7D0();
            v104 = sub_21580BAC0();

            if (os_log_type_enabled(v103, v104))
            {
              v105 = v100;
              v106 = OUTLINED_FUNCTION_58();
              OUTLINED_FUNCTION_13_0();
              v129 = swift_slowAlloc();
              v131[0] = v129;
              OUTLINED_FUNCTION_70(4.9655e-34);
              v107 = sub_21580B5A0();
              v108 = v50;
              v110 = v109;
              v5 = *(v108 + 8);
              (v5)(v105, v126);
              v111 = sub_215808B34(v107, v110, v131);

              *(v106 + 4) = v111;
              *(v106 + 12) = 2080;
              v112 = OUTLINED_FUNCTION_1_2();
              v114 = sub_2158036F4(v112, v113, v102);
              v116 = v115;

              if (v116)
              {
                v117 = v114;
              }

              else
              {
                v117 = 6369134;
              }

              if (v116)
              {
                v118 = v116;
              }

              else
              {
                v118 = 0xE300000000000000;
              }

              v119 = sub_215808B34(v117, v118, v131);

              *(v106 + 14) = v119;
              _os_log_impl(&dword_2157E4000, v103, v104, "SafariSummarizationPrefetch - Failed to find path filter hash at path: %{sensitive}s, version: %s", v106, 0x16u);
              OUTLINED_FUNCTION_75();
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
              v49 = v126;
              OUTLINED_FUNCTION_8();
              MEMORY[0x216072190]();
            }

            else
            {

              v5 = *(v50 + 8);
              (v5)(v100, v49);
            }

            sub_2157F6704();
            OUTLINED_FUNCTION_14_0();
            swift_allocError();
            *v120 = 5;
            swift_willThrow();
            (v5)(v128, v49);
            (v5)(v132, v49);
          }
        }

        else
        {

          *(v127 + qword_28119D500) = 83;
          sub_215802470();
          if (qword_28119CC70 != -1)
          {
            OUTLINED_FUNCTION_0();
            swift_once();
          }

          v78 = sub_21580B7F0();
          __swift_project_value_buffer(v78, qword_28119DA40);
          OUTLINED_FUNCTION_40();
          v79 = v122;
          v80(v122, v29, v49);
          v81 = v125;

          v82 = sub_21580B7D0();
          v83 = sub_21580BAC0();

          if (os_log_type_enabled(v82, v83))
          {
            v84 = OUTLINED_FUNCTION_58();
            OUTLINED_FUNCTION_13_0();
            v129 = swift_slowAlloc();
            v131[0] = v129;
            OUTLINED_FUNCTION_70(4.9655e-34);
            sub_21580B5A0();
            v85 = v50;
            v87 = v86;
            v5 = *(v85 + 8);
            (v5)(v79, v126);
            v88 = OUTLINED_FUNCTION_52();
            v90 = sub_215808B34(v88, v87, v89);

            *(v84 + 4) = v90;
            *(v84 + 12) = 2080;
            v91 = OUTLINED_FUNCTION_1_2();
            v93 = sub_2158036F4(v91, v92, v81);
            v95 = v94;

            if (v95)
            {
              v96 = v93;
            }

            else
            {
              v96 = 6369134;
            }

            v97 = OUTLINED_FUNCTION_59(v96);

            *(v84 + 14) = v97;
            v29 = v128;
            _os_log_impl(&dword_2157E4000, v82, v83, "SafariSummarizationPrefetch - Failed to find path filter asset at path: %{sensitive}s, version: %s", v84, 0x16u);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_8();
            MEMORY[0x216072190]();
            v49 = v126;
            OUTLINED_FUNCTION_8();
            MEMORY[0x216072190]();
          }

          else
          {

            v5 = *(v50 + 8);
            (v5)(v79, v49);
          }

          sub_2157F6704();
          OUTLINED_FUNCTION_14_0();
          swift_allocError();
          *v98 = 3;
          swift_willThrow();
          (v5)(v29, v49);
          (v5)(v132, v49);
        }
      }
    }

    else
    {
      *(v127 + qword_28119D500) = 88;
      sub_215802470();
      if (qword_28119CC70 != -1)
      {
        OUTLINED_FUNCTION_0();
        swift_once();
      }

      v35 = sub_21580B7F0();
      OUTLINED_FUNCTION_29(v35, qword_28119DA40);
      v5 = v125;

      v36 = sub_21580B7D0();
      v37 = sub_21580BAC0();

      v38 = os_log_type_enabled(v36, v37);
      v39 = v130;
      if (v38)
      {
        v40 = OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_13_0();
        v131[0] = swift_slowAlloc();
        *v40 = 136315394;
        *(v40 + 4) = sub_215808B34(0xD000000000000015, 0x800000021580F250, v131);
        *(v40 + 12) = 2080;
        v41 = OUTLINED_FUNCTION_1_2();
        v43 = sub_2158036F4(v41, v42, v5);
        v45 = v44;

        if (v45)
        {
          v46 = v43;
        }

        else
        {
          v46 = 6369134;
        }

        if (v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0xE300000000000000;
        }

        v48 = sub_215808B34(v46, v47, v131);

        *(v40 + 14) = v48;
        _os_log_impl(&dword_2157E4000, v36, v37, "SafariSummarizationPrefetch - Failed to find path filter filename for %s in metadata, version: %s", v40, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
        OUTLINED_FUNCTION_8();
        MEMORY[0x216072190]();
      }

      else
      {
      }

      sub_2157F6704();
      OUTLINED_FUNCTION_14_0();
      swift_allocError();
      *v77 = 2;
      swift_willThrow();
      (*(v39 + 8))(v132, v126);
    }
  }

  return v5;
}

uint64_t sub_2157F5434(unsigned __int8 a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a1);
  return sub_21580BDE0();
}

uint64_t sub_2157F547C(uint64_t a1, uint64_t a2)
{
  *(*v2 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_2157F54E0(uint64_t a1)
{
  v2 = *v1;
  sub_21580BDC0();
  MEMORY[0x216071A90](v2);
  return sub_21580BDE0();
}

uint64_t sub_2157F5534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_2157F5560);
}

uint64_t sub_2157F5560()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_77();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2157F5600;
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return v7(0, 0, v5, v3, v4, v2);
}

uint64_t sub_2157F5600()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_2157F56E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v10 = sub_21580B880();
  v7[18] = v10;
  sub_2157F74BC(0, &qword_28119CBC8, 0x277D77A08);
  v11 = sub_21580B9F0();
  v7[19] = v11;
  v7[2] = v7;
  v7[3] = sub_2157F5858;
  v12 = swift_continuation_init();
  v7[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DF8, &qword_21580D158);
  v7[10] = MEMORY[0x277D85DD0];
  v7[11] = 1107296256;
  v7[12] = sub_2157F598C;
  v7[13] = &block_descriptor_71;
  v7[14] = v12;
  [v8 subscribe:v10 subscriptions:v11 queue:a6 completion:v7 + 10];

  return MEMORY[0x282200938](v7 + 2);
}

uint64_t sub_2157F5858()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_9_1();
  *v2 = v1;
  v4 = v3[19];
  v5 = v3[18];
  if (v3[6])
  {
    swift_willThrow();
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_2157F598C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_2157F59FC(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_2157F59FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E00, &unk_21580D160);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2157F5A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *v8;
  return MEMORY[0x2822009F8](sub_2157F5AA4);
}

void sub_2157F5AA4()
{
  OUTLINED_FUNCTION_3();
  v1 = OUTLINED_FUNCTION_77();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2157F5B54;

  __asm { BR              X8 }
}

uint64_t sub_2157F5B54()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_2157F5C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = v18;
  v13 = sub_21580B880();
  v9[18] = v13;
  if (a6)
  {
    a6 = sub_21580B880();
  }

  v9[19] = a6;
  if (a7)
  {
    a7 = sub_21580B9F0();
  }

  v9[20] = a7;
  if (v18)
  {
    v9[14] = v18;
    v9[15] = v19;
    v9[10] = MEMORY[0x277D85DD0];
    v9[11] = 1107296256;
    v9[12] = sub_2157F5F68;
    v9[13] = &block_descriptor_66;
    v12 = _Block_copy(v9 + 10);
  }

  v9[21] = v12;
  v9[2] = v9;
  v9[3] = sub_2157F5E38;
  v14 = swift_continuation_init();
  v9[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DF0, &qword_21580D148);
  v9[10] = MEMORY[0x277D85DD0];
  v9[11] = 1107296256;
  v9[12] = sub_2157F5FD0;
  v9[13] = &block_descriptor_63;
  v9[14] = v14;
  [v8 updateAssetsForSubscriber:v13 subscriptionName:a6 policies:a7 queue:a8 detailedProgress:v12 completion:v9 + 10];

  return MEMORY[0x282200938](v9 + 2);
}

uint64_t sub_2157F5E38()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  v2 = v1[20];
  v3 = v1[19];
  v4 = v1[18];
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  _Block_release(v7);

  OUTLINED_FUNCTION_6();

  return v8();
}

void sub_2157F5F68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2157F5FD0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

id sub_2157F602C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2157F73C4(a1, v19);
  v8 = v20;
  if (v20)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v19, v20);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_21580BD20();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    v14 = 0;
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2157F6208;
  aBlock[3] = &block_descriptor_59;
  v15 = _Block_copy(aBlock);

  v16 = [v4 observeAssetSet:v14 queue:a2 handler:v15];
  swift_unknownObjectRelease();
  _Block_release(v15);

  return v16;
}

uint64_t sub_2157F6208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_2157F6270(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21580B880();
  if (a3)
  {
    a3 = sub_21580B820();
  }

  v6 = [v3 retrieveAssetSet:v5 usages:a3];

  return v6;
}

void sub_2157F632C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (!a5)
  {
    a6 = 0;
  }

  sub_2157F637C(a1, a2, a3, a4, a5, a6);
}

void sub_2157F637C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_21580B880();
  v12 = sub_21580B9F0();
  if (a5)
  {
    v13[4] = a5;
    v13[5] = a6;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_2157F6484;
    v13[3] = &block_descriptor;
    a5 = _Block_copy(v13);
  }

  [v7 unsubscribe:v11 subscriptionNames:v12 queue:a4 completion:a5];
  _Block_release(a5);
}

void sub_2157F6484(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_2157F64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_21580B880();

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DD8, &qword_21580D128);
    v11 = sub_21580B820();

    if (a4)
    {
LABEL_3:
      v12 = sub_21580B820();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = sub_21580B6C0();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v13) != 1)
  {
    v14 = sub_21580B670();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v6 initWithName:v10 assetSets:v11 usageAliases:v12 expires:v14];

  return v15;
}

id sub_2157F665C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_21580B880();

  sub_2157F74BC(0, &qword_28119CC10, 0x277D46DD8);
  v7 = sub_21580B9F0();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

unint64_t sub_2157F6704()
{
  result = qword_28119DA18;
  if (!qword_28119DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA18);
  }

  return result;
}

unint64_t sub_2157F6758()
{
  result = qword_28119CC50;
  if (!qword_28119CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CC50);
  }

  return result;
}

unsigned __int8 *sub_2157F67AC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_21580B9C0();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2157F6D34(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21580BC20();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2157F6D34(unint64_t a1, unint64_t a2)
{
  v2 = sub_2157F6DA0(sub_2157F6D9C, 0, a1, a2);
  v6 = sub_2157F6DD4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2157F6DA0(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2157F6DD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21580BB50();
    if (!v9 || (v10 = v9, v11 = sub_215808F3C(v9, 0), v12 = sub_2157F6F34(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21580B910();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21580B910();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21580BC20();
LABEL_4:

  return sub_21580B910();
}

unint64_t sub_2157F6F34(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2157F7144(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21580B9A0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21580BC20();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2157F7144(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_21580B980();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2157F7144(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21580B9B0();
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
    v5 = MEMORY[0x216071650](15, a1 >> 16);
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

unint64_t sub_2157F71C0()
{
  result = qword_28119DA28;
  if (!qword_28119DA28)
  {
    sub_21580B5E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119DA28);
  }

  return result;
}

uint64_t sub_2157F7220(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_65();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2157F7274()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v1[1] = sub_2157EC370;

  return sub_2157F1334();
}

uint64_t sub_2157F7334(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73DC0, &qword_21580D110);
  OUTLINED_FUNCTION_48(v2);

  return sub_2157F0DC0(a1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2157F73C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73D80, &unk_21580D0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2157F7444(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2157F74BC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafariSummarizationPrefetchAssetsError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafariSummarizationPrefetchAssetsError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2157F7678()
{
  result = qword_27CA73E08;
  if (!qword_27CA73E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_215808B34(0x6E6F6D6D6F63, 0xE600000000000000, va);
}

void OUTLINED_FUNCTION_20_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x20u);
}

uint64_t OUTLINED_FUNCTION_21_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_215808B34(v6, 0xE600000000000000, va);
}

id OUTLINED_FUNCTION_54(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2085;

  return v2;
}

uint64_t OUTLINED_FUNCTION_55(uint64_t a1)
{

  return MEMORY[0x2821FB8C8](0, a1);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_59(uint64_t a1)
{

  return sub_215808B34(a1, v1, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  return v1 + 3;
}

uint64_t OUTLINED_FUNCTION_75()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_76(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_77()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_78(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_215808B34(v3, 0xE600000000000000, a3);
}

uint64_t OUTLINED_FUNCTION_79()
{

  return swift_slowAlloc();
}

uint64_t sub_2157F7B84()
{
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == sub_21580B800())
  {
    if (qword_28119D1F0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_28119D1F0);
    }

    v1 = sub_21580B7F0();
    __swift_project_value_buffer(v1, qword_28119D1F8);
    v2 = sub_21580B7D0();
    v3 = sub_21580BAB0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134218240;
      swift_beginAccess();
      *(v4 + 4) = 0;
      *(v4 + 12) = 1024;
      *(v4 + 14) = 0;
      _os_log_impl(&dword_2157E4000, v2, v3, "Read os_eligibility_get_domain_answer API: %llu. Enabled: %{BOOL}d", v4, 0x12u);
LABEL_10:
      MEMORY[0x216072190](v4, -1, -1);
    }
  }

  else
  {
    if (qword_28119D1F0 != -1)
    {
      OUTLINED_FUNCTION_0_2(&qword_28119D1F0);
    }

    v5 = sub_21580B7F0();
    __swift_project_value_buffer(v5, qword_28119D1F8);
    v2 = sub_21580B7D0();
    v6 = sub_21580BAC0();
    if (os_log_type_enabled(v2, v6))
    {
      v4 = swift_slowAlloc();
      *v4 = 67109120;
      *(v4 + 4) = domain_answer;
      _os_log_impl(&dword_2157E4000, v2, v6, "failed to read sba os eligibility with status: %d", v4, 8u);
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t sub_2157F7DA8()
{
  v0 = sub_21580B7F0();
  __swift_allocate_value_buffer(v0, qword_28119D1F8);
  __swift_project_value_buffer(v0, qword_28119D1F8);
  return sub_21580B7E0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_2(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_2157F7EB8()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_215800608();
  }

  v1 = sub_2157FF4A4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2157F7F40(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + 96);
  v4 = sub_21580BAC0();
  sub_21580B780("LEAKED NETWORK SPAN: {{{", 24, 2, &dword_2157E4000, v3, v4, MEMORY[0x277D84F90]);
  sub_2157FF5B8();
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21580C9B0;
  v6 = *(v2 + *(*v2 + 464) + 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D70, &qword_21580CEC8);
  v7 = sub_21580B8E0();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2157EDE30();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_21580B780("Network task: %s", v45);

  sub_21580BAC0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21580C9B0;
  ObjectType = swift_getObjectType();
  v52 = v6;
  v12 = v6;
  v13 = *(v6 + 16);
  v13(ObjectType, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA73F90, &qword_21580CEC0);
  v14 = sub_21580B8E0();
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v10;
  v54 = v10;
  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  v55 = v3;
  sub_21580B780("Response: %s", ObjectType);

  v53 = sub_215800060();
  if (v18)
  {
    sub_21580BAC0();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21580C9B0;
    v13(v47, v52);
    v20 = sub_21580B8E0();
    v21 = MEMORY[0x277D837D0];
    v22 = v10;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = v10;
    *(v19 + 32) = v20;
    *(v19 + 40) = v23;
    v24 = v3;
    sub_21580B780("Unsupported response: %s", v47);
    v25 = v21;
  }

  else
  {
    v26 = v16;
    v27 = v17;
    v28 = HIDWORD(v17);
    sub_21580BAC0();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D83B88];
    *(v29 + 16) = xmmword_21580C9B0;
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = v30;
    *(v29 + 64) = v31;
    *(v29 + 32) = v26;
    v24 = v55;
    sub_21580B780("Status: %d", v47);

    sub_21580BAC0();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D84CC0];
    *(v32 + 16) = xmmword_21580C9B0;
    v34 = MEMORY[0x277D84D30];
    *(v32 + 56) = v33;
    *(v32 + 64) = v34;
    *(v32 + 32) = v28;
    sub_21580B780("Uploaded: %llu bytes", v49);

    sub_21580BAC0();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_21580C9B0;
    *(v35 + 56) = v33;
    *(v35 + 64) = v34;
    *(v35 + 32) = v27;
    sub_21580B780("Downloaded: %llu bytes", v50);

    sub_21580BAC0();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D839F8];
    *(v36 + 16) = xmmword_21580C9B0;
    v38 = MEMORY[0x277D83A80];
    *(v36 + 56) = v37;
    *(v36 + 64) = v38;
    *(v36 + 32) = v53;
    sub_21580B780("Runtime: %f seconds", v51);
    v25 = MEMORY[0x277D837D0];
    v22 = v54;
  }

  sub_21580BAC0();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_21580C9B0;
  v40 = *(v2 + *(*v2 + 472));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D78, &unk_21580CED0);
  v41 = sub_21580B8E0();
  *(v39 + 56) = v25;
  *(v39 + 64) = v22;
  *(v39 + 32) = v41;
  *(v39 + 40) = v42;
  sub_21580B780("Error: %s", v48);

  v43 = sub_21580BAC0();
  return sub_21580B780("}}}", 3, 2, &dword_2157E4000, v24, v43, MEMORY[0x277D84F90]);
}

uint64_t sub_2157F8490(uint64_t a1, unint64_t a2, double a3)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21580CC10;
  v8 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v8;
  *(v7 + 32) = a1;
  v9 = MEMORY[0x277D84CC0];
  v10 = MEMORY[0x277D84D30];
  *(v7 + 96) = MEMORY[0x277D84CC0];
  *(v7 + 104) = v10;
  *(v7 + 72) = v3;
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  v11 = MEMORY[0x277D839F8];
  *(v7 + 112) = v6;
  v12 = MEMORY[0x277D83A80];
  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = a3;
  sub_2158013B8("statusCode=%{signpost.description:attribute,public}d, download=%{signpost.description:attribute}lu, upload=%{signpost.description:attribute}lu, runtime=%{signpost.description:attribute}f", 186, 2, v7);
}

uint64_t sub_2157F85D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_2157F7EAC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2157F8644()
{
  v1 = qword_27CA74CA0;
  sub_21580B760();
  OUTLINED_FUNCTION_65();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_2157F86A0()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_215800608();
  }

  v1 = sub_2157F7EB8();
  v2 = qword_27CA74CA0;
  sub_21580B760();
  OUTLINED_FUNCTION_65();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_2157F8708()
{
  v0 = sub_2157F86A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessNetworkSpan(uint64_t a1)
{
  result = qword_27CA73E10;
  if (!qword_27CA73E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2157F87A8(uint64_t a1)
{
  result = sub_21580B760();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2157F8840(uint64_t a1)
{
  v2 = *(v1 + 96);
  v3 = sub_21580BAC0();
  v4 = sub_21580B780("LEAKED RESOURCE NETWORK SPAN: {{{", 33, 2, &dword_2157E4000, v2, v3, MEMORY[0x277D84F90]);
  sub_2157F7F40(v4);
  sub_21580BAC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
  v5 = swift_allocObject();
  *(&v17 + 1) = 2;
  *(v5 + 16) = xmmword_21580C9B0;
  v6 = sub_21580B740();
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2157EDE30();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_21580B780("Client type: %s", 1);

  sub_21580BAC0();
  v11 = swift_allocObject();
  *(v11 + 16) = v17;
  v12 = sub_21580B740();
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  sub_21580B780("Identifier: %s", v17);

  v14 = sub_21580BAC0();
  v15 = MEMORY[0x277D84F90];

  return sub_21580B780("}}}", 3, 2, &dword_2157E4000, v2, v14, v15);
}

uint64_t sub_2157F8A00(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_2157EDC60(a1, a2, a3);
  sub_21580B750();
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2157F9884(v7, 0x726574706F6461, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  sub_215801468(v6);

  return sub_2157F8490(a1, a2, a3);
}

unint64_t sub_2157F8B04()
{
  result = qword_27CA73E20;
  if (!qword_27CA73E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E20);
  }

  return result;
}

unint64_t sub_2157F8B58(uint64_t a1)
{
  *(a1 + 8) = sub_2157F8B88();
  result = sub_2157F8BDC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2157F8B88()
{
  result = qword_27CA73E28;
  if (!qword_27CA73E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E28);
  }

  return result;
}

unint64_t sub_2157F8BDC()
{
  result = qword_27CA73E30;
  if (!qword_27CA73E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E30);
  }

  return result;
}

unint64_t sub_2157F8C34()
{
  result = qword_27CA73E38;
  if (!qword_27CA73E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E38);
  }

  return result;
}

unint64_t sub_2157F8C88(uint64_t a1)
{
  result = sub_2157F8CB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2157F8CB0()
{
  result = qword_27CA73E40;
  if (!qword_27CA73E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73E40);
  }

  return result;
}

uint64_t sub_2157F8D04()
{
  OUTLINED_FUNCTION_0_3();
  *(v1 + 24) = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2157F8D48()
{
  sub_2157E6544(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_2157F8D80()
{
  OUTLINED_FUNCTION_0_3();
  type metadata accessor for Locker();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v1[4] = v2;
  v1[5] = v4;
  v1[3] = v0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_2157F8DFC()
{
  v12 = MEMORY[0x277D84F90];
  v1 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v1);
  sub_2157F8F58(v0, &v12);
  os_unfair_lock_unlock(v1);

  result = swift_unknownObjectWeakLoadStrong();
  v3 = v12;
  if (result)
  {
    v4 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 24))(v3, ObjectType, v4);
    result = swift_unknownObjectRelease();
  }

  v6 = 0;
  v7 = *(v3 + 2);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      sub_2157E6544(v0 + 16);

      return v0;
    }

    if (v6 >= *(v3 + 2))
    {
      break;
    }

    ++v6;
    v9 = *i;
    v10 = swift_getObjectType();
    v11 = *(v9 + 72);
    swift_unknownObjectRetain();
    v11(v10, v9);
    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_2157F8F58(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v3 = *(a1 + 40);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*(a1 + 40) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v34 = *(a1 + 40);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v32 = xmmword_21580C9B0;
  v33 = v5;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = (*(v34 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v34 + 56) + 8 * v14);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          v21 = *(v18 + 24);
          ObjectType = swift_getObjectType();
          v23 = *(v21 + 64);

          v23(ObjectType, v21);
          v24 = *a2;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a2 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = *(v24 + 2);

            *a2 = sub_2157F9774(0, v31 + 1, 1, v24);

            v24 = *a2;
          }

          v27 = *(v24 + 2);
          v26 = *(v24 + 3);
          v5 = v33;
          if (v27 >= v26 >> 1)
          {
            v24 = sub_2157F9774((v26 > 1), v27 + 1, 1, v24);
            *a2 = v24;
          }

          *(v24 + 2) = v27 + 1;
          v28 = &(*a2)[16 * v27];
          *(v28 + 32) = v20;
          *(v28 + 40) = v21;
        }

        else
        {
          sub_2157F9C98();

          v29 = sub_21580BB20();
          sub_21580BAC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
          v30 = swift_allocObject();
          *(v30 + 16) = v32;
          *(v30 + 56) = MEMORY[0x277D837D0];
          *(v30 + 64) = sub_2157EDE30();
          *(v30 + 32) = v17;
          *(v30 + 40) = v16;

          sub_21580B780("Detected unfinished activity with destroyed span at key %s", v32);
        }

        v9 &= v9 - 1;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2157F9244()
{
  sub_2157F8DFC();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2157F92C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a1 + 24);
    swift_beginAccess();
    v11 = *(a1 + 40);

    v12 = sub_21580386C(a2, a3, v11);

    if (v12)
    {

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a4, a5, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  type metadata accessor for ActivityMonitor.WeakReference();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();
  sub_2157F8D04();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + 40);
  sub_2157F9AD8(v14, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v17;
  return swift_endAccess();
}

uint64_t sub_2157F941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(void, void))
{
  swift_beginAccess();
  sub_2158090E4(a2, a3);
  if (v10)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *(a1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E48, "RI");
    sub_21580BC30();

    type metadata accessor for ActivityMonitor.WeakReference();
    sub_21580BC50();
    *(a1 + 40) = v25;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(a4, a5, ObjectType, v12);
      swift_unknownObjectRelease();
    }

    v14 = swift_getObjectType();
    v15 = a5[4](v14, a5);
    sub_21580BAC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73D60, &unk_21580CEB0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21580CC30;
    v17 = a5[3](v14, a5);
    v19 = v18;
    v20 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v21 = sub_2157EDE30();
    *(v16 + 64) = v21;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    a5[5](v14, a5);
    v22 = sub_21580BC00();
    *(v16 + 96) = v20;
    *(v16 + 104) = v21;
    *(v16 + 72) = v22;
    *(v16 + 80) = v23;
    sub_21580B780("Activity %s.%s never started or already ended", v24, v26);
  }
}

void *sub_2157F9688(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E68, &qword_21580D4B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_215808A0C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2157F9774(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E58, &qword_21580D4A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_215808B08(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E60, &qword_21580D4A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2157F9884(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2158090E4(a2, a3);
  OUTLINED_FUNCTION_1_3();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E50, &qword_21580D498);
  if ((sub_21580BC30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_2158090E4(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_21580BD60();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_2157F9C50(v11, a2, a3, a1, v15);
  }
}

unint64_t sub_2157F99DC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  sub_21580915C();
  OUTLINED_FUNCTION_1_3();
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if ((sub_21580BC30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_21580915C();
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_21580BD60();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if ((v12 & 1) == 0)
  {
    return sub_2157F9C14(v11, a1, v15);
  }

  *(*(v15 + 56) + 8 * v11) = a1;
}

uint64_t sub_2157F9AD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2158090E4(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E48, "RI");
  if ((sub_21580BC30() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_2158090E4(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_21580BD60();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_2157F9C50(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_2157F9C14(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t sub_2157F9C50(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_2157F9C98()
{
  result = qword_28119CBA0;
  if (!qword_28119CBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119CBA0);
  }

  return result;
}

uint64_t sub_2157F9CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v8 = a4[7](a3, a4);
  v10 = v9;
  v11 = *(*(a2 + 32) + 16);
  os_unfair_lock_lock(v11);
  sub_2157F941C(a2, v8, v10, a1, a4);

  os_unfair_lock_unlock(v11);

  return sub_2157F9DA0(a2, a1, a3, a4);
}

uint64_t sub_2157F9DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, a4, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{
  *(v0 + 24) = 0;

  return swift_unknownObjectWeakInit();
}

char *sub_2157F9E68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v4 = sub_2157F8D80();
  type metadata accessor for DeviceContext();
  swift_allocObject();
  v5 = sub_2157EC994();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v6 = objc_allocWithZone(type metadata accessor for SASafariAssistantAssetManager());

  return sub_2157EB2A4(v4, v5, a1, a2, v10, v8, 0, 0, v6);
}

char *sub_2157F9F90(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for DeviceContext();
  swift_allocObject();
  v5 = sub_2157EC994();
  v6 = sub_2157FA100(a1, a2, v5);

  return v6;
}

SAAssetManagerFactory __swiftcall SAAssetManagerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_2157FA100(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ActivityMonitor();
  swift_allocObject();
  v6 = sub_2157F8D80();
  type metadata accessor for SASafariAssistantAssetManager();
  v14 = 0;
  *v12 = 0u;
  v13 = 0u;
  v11 = 0;
  *v9 = 0u;
  v10 = 0u;

  v7 = sub_2157E6634(a1, a2, v6, a3, &off_2827B4CD0, v12, v9, 0, 0);

  return v7;
}

uint64_t sub_2157FA264(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v4 = a1;
  v5 = sub_21580B880();
  v6 = [v5 _web_looksLikeIPAddress];

  if (v6)
  {
  }

  else
  {
    sub_2157F6758();
    v7 = sub_21580BB70();
    v4 = sub_2157FA340(v7, v4, a2);
  }

  return v4;
}

uint64_t sub_2157FA340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2160715C0](16);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 16 * v4 + 24;
    while (1)
    {

      if (v5)
      {
        sub_21580B960();
      }

      sub_2157FA50C();
      sub_21580B950();

      v8 = sub_21580B880();
      IsDomainTopLevel = _CFHostIsDomainTopLevel();

      v10 = IsDomainTopLevel != 0;
      if (!IsDomainTopLevel && v6)
      {
        break;
      }

      ++v5;
      v7 -= 16;
      v6 = IsDomainTopLevel != 0;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    v10 = 1;
LABEL_10:
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  if (v10)
  {
    if (v11)
    {
      v12 = sub_21580B930();
    }

    else
    {
      v12 = 0;
    }

    v13 = a2;
    v14 = sub_21580B930();
    if (v11 && v12 == v14)
    {
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v13;
}

unint64_t sub_2157FA50C()
{
  result = qword_28119CC58;
  if (!qword_28119CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CC58);
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

uint64_t sub_2157FA574(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2157FA5B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2157FA604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D616E74736F68 && a2 == 0xE800000000000000;
  if (v4 || (sub_21580BD30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265755168746170 && a2 == 0xEF676E6972747379)
  {

    return 1;
  }

  else
  {
    v7 = sub_21580BD30();

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

uint64_t sub_2157FA6DC(char a1)
{
  if (a1)
  {
    return 0x7265755168746170;
  }

  else
  {
    return 0x656D616E74736F68;
  }
}

uint64_t sub_2157FA728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2157FA604(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2157FA770@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2157FA6D4();
  *a1 = result;
  return result;
}

uint64_t sub_2157FA798(uint64_t a1)
{
  v2 = sub_2157FB0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2157FA7D4(uint64_t a1)
{
  v2 = sub_2157FB0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2157FA810(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EA0, &qword_21580D588);
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2157FB0C0();
  sub_21580BE00();
  v16 = 0;
  sub_21580BCE0();
  if (!v4)
  {
    v14[1] = v14[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E98, &qword_21580D580);
    v12 = sub_2157FB168(&qword_27CA73EA8, sub_2157FB1E0, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_1_4(v12);
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_2157FA9B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E90, &qword_21580D578);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2157FB0C0();
  sub_21580BDF0();
  if (!v1)
  {
    v4 = sub_21580BCB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73E98, &qword_21580D580);
    sub_2157FB168(&unk_28119CC30, sub_2157FB114, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_3_2();
    sub_21580BCD0();
    v6 = OUTLINED_FUNCTION_2_3();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_2157FABB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_21580BD30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261507972657571 && a2 == 0xEA00000000006D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_21580BD30();

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

uint64_t sub_2157FAC88(char a1)
{
  sub_21580BDC0();
  MEMORY[0x216071A90](a1 & 1);
  return sub_21580BDE0();
}

uint64_t sub_2157FACD0(char a1)
{
  if (a1)
  {
    return 0x7261507972657571;
  }

  else
  {
    return 1752457584;
  }
}

uint64_t sub_2157FAD04(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73ED0, &qword_21580D758);
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v9);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2157FB4D4();
  sub_21580BE00();
  v16 = 0;
  sub_21580BCF0();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC8, &qword_21580D750);
    v12 = sub_2157FB528(&qword_27CA73ED8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_1_4(v12);
  }

  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_2157FAE94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC0, &qword_21580D748);
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2157FB4D4();
  sub_21580BDF0();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_21580BCC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA73EC8, &qword_21580D750);
    v11[15] = 1;
    sub_2157FB528(&qword_28119CC28, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_3_2();
    sub_21580BCD0();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_2157FB070@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2157FA9B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2157FB0C0()
{
  result = qword_28119D010;
  if (!qword_28119D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D010);
  }

  return result;
}

unint64_t sub_2157FB114()
{
  result = qword_28119CDD0;
  if (!qword_28119CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDD0);
  }

  return result;
}

uint64_t sub_2157FB168(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA73E98, &qword_21580D580);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2157FB1E0()
{
  result = qword_27CA73EB0;
  if (!qword_27CA73EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73EB0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2157FB250(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2157FB290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2157FB2E0()
{
  result = qword_27CA73EB8;
  if (!qword_27CA73EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA73EB8);
  }

  return result;
}

uint64_t sub_2157FB33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2157FABB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2157FB364(uint64_t a1)
{
  v2 = sub_2157FB4D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2157FB3A0(uint64_t a1)
{
  v2 = sub_2157FB4D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2157FB3DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2157FAE94(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2157FB428()
{
  result = qword_28119D000;
  if (!qword_28119D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D000);
  }

  return result;
}

unint64_t sub_2157FB480()
{
  result = qword_28119D008;
  if (!qword_28119D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119D008);
  }

  return result;
}

unint64_t sub_2157FB4D4()
{
  result = qword_28119CDE8;
  if (!qword_28119CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119CDE8);
  }

  return result;
}

uint64_t sub_2157FB528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA73EC8, &qword_21580D750);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2157FB594(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2157FB61C(_BYTE *result, unsigned int a2, unsigned int a3)
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