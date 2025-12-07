void SafetyController.isTextSafetyActive.getter()
{
  OUTLINED_FUNCTION_134();
  v0 = type metadata accessor for TextSanitizer(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v4 = (v3 - v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154E8, &qword_1C755D330);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C755D200;
  v8 = v7 + v6;
  if (qword_1EDD0EFB0 != -1)
  {
    OUTLINED_FUNCTION_58_3(&qword_1EDD0EFB0);
  }

  __swift_project_value_buffer(v0, &unk_1EDD28D90);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2(&qword_1EDD0AFA8);
  }

  __swift_project_value_buffer(v0, &unk_1EDD28C40);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF90 != -1)
  {
    OUTLINED_FUNCTION_56_6(&qword_1EDD0AF90);
  }

  __swift_project_value_buffer(v0, &unk_1EDD28C10);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5(&qword_1EDD0AF88);
  }

  __swift_project_value_buffer(v0, &unk_1EDD28BF8);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0(&qword_1EDD0AF80);
  }

  __swift_project_value_buffer(v0, &unk_1EDD28BE0);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  if (qword_1EDD0AF98 != -1)
  {
    OUTLINED_FUNCTION_53_4(&qword_1EDD0AF98);
  }

  __swift_project_value_buffer(v0, &unk_1EDD28C28);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  v9 = 7;
  do
  {
    if (!--v9)
    {
      break;
    }

    OUTLINED_FUNCTION_0_4();
    sub_1C6FD4C38();
    v10 = *v4;
    sub_1C6FD479C(v4, type metadata accessor for TextSanitizer);
    v8 += v5;
  }

  while ((v10 & 1) != 0);

  OUTLINED_FUNCTION_135_0();
}

void static SafetyController.prewarm()()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for TextSanitizer(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_78();
  v73 = v3 - v4;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v69 - v6;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v69 - v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v69 - v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  if (qword_1EDD0EFB0 != -1)
  {
    OUTLINED_FUNCTION_58_3(&qword_1EDD0EFB0);
  }

  __swift_project_value_buffer(v1, &unk_1EDD28D90);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  v17 = &v16[*(v1 + 20)];
  sub_1C6FD7F70();
  v18 = "ionType";
  if (v76)
  {
    OUTLINED_FUNCTION_96_1();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v20 = OUTLINED_FUNCTION_95(v19);
    OUTLINED_FUNCTION_60_1(v20, xmmword_1C755BAB0);
    v75[0] = v20;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v21 = v75[0];
  }

  else
  {
    sub_1C6FD7FC8(v75, &qword_1EC2154F0, &unk_1C7583920);
    v21 = *(v17 + 72);
    sub_1C75504FC();
  }

  v22 = *(v21 + 16);
  v74 = v1;
  if (v22)
  {
    v23 = v21 + 32;
    do
    {
      sub_1C6FB5E28(v23, v77);
      OUTLINED_FUNCTION_25_3();
      v24(0xD000000000000021, 0x80000001C7596920, "ionType", v0);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v23 += 40;
      --v22;
    }

    while (v22);

    v1 = v74;
    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v17, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2(&qword_1EDD0AFA8);
  }

  __swift_project_value_buffer(v1, &unk_1EDD28C40);
  OUTLINED_FUNCTION_0_4();
  sub_1C6FD4C38();
  v25 = &v13[*(v1 + 20)];
  sub_1C6FD7F70();
  if (v76)
  {
    OUTLINED_FUNCTION_96_1();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v27 = OUTLINED_FUNCTION_95(v26);
    OUTLINED_FUNCTION_60_1(v27, v18[171]);
    v75[0] = v27;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v28 = v75[0];
  }

  else
  {
    sub_1C6FD7FC8(v75, &qword_1EC2154F0, &unk_1C7583920);
    v28 = *(v25 + 72);
    sub_1C75504FC();
  }

  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = v28 + 32;
    do
    {
      sub_1C6FB5E28(v30, v77);
      OUTLINED_FUNCTION_25_3();
      v31(0xD00000000000001BLL, 0x80000001C7596950, v18, v0);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v30 += 40;
      --v29;
    }

    while (v29);

    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v25, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AF90 != -1)
  {
    OUTLINED_FUNCTION_56_6(&qword_1EDD0AF90);
  }

  __swift_project_value_buffer(v1, &unk_1EDD28C10);
  OUTLINED_FUNCTION_0_4();
  v32 = v70;
  sub_1C6FD4C38();
  v33 = &v32[*(v1 + 20)];
  sub_1C6FD7F70();
  if (v76)
  {
    OUTLINED_FUNCTION_96_1();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v35 = OUTLINED_FUNCTION_95(v34);
    OUTLINED_FUNCTION_60_1(v35, v18[171]);
    v75[0] = v35;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v36 = v75[0];
  }

  else
  {
    sub_1C6FD7FC8(v75, &qword_1EC2154F0, &unk_1C7583920);
    v36 = *(v33 + 72);
    sub_1C75504FC();
  }

  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = v36 + 32;
    do
    {
      sub_1C6FB5E28(v38, v77);
      OUTLINED_FUNCTION_25_3();
      v39 = OUTLINED_FUNCTION_80_2();
      v40(v39);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v38 += 40;
      --v37;
    }

    while (v37);

    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v33, type metadata accessor for SafetyBundle);
  v41 = v74;
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5(&qword_1EDD0AF88);
  }

  __swift_project_value_buffer(v41, &unk_1EDD28BF8);
  OUTLINED_FUNCTION_0_4();
  v42 = v71;
  sub_1C6FD4C38();
  v43 = &v42[*(v41 + 20)];
  sub_1C6FD7F70();
  if (v76)
  {
    OUTLINED_FUNCTION_96_1();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v45 = OUTLINED_FUNCTION_95(v44);
    OUTLINED_FUNCTION_60_1(v45, v18[171]);
    v75[0] = v45;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v46 = v75[0];
  }

  else
  {
    sub_1C6FD7FC8(v75, &qword_1EC2154F0, &unk_1C7583920);
    v46 = *(v43 + 72);
    sub_1C75504FC();
  }

  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = v46 + 32;
    do
    {
      sub_1C6FB5E28(v48, v77);
      OUTLINED_FUNCTION_25_3();
      v49 = OUTLINED_FUNCTION_80_2();
      v50(v49);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v48 += 40;
      --v47;
    }

    while (v47);

    v41 = v74;
    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v43, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0(&qword_1EDD0AF80);
  }

  __swift_project_value_buffer(v41, &unk_1EDD28BE0);
  OUTLINED_FUNCTION_0_4();
  v51 = v72;
  sub_1C6FD4C38();
  v52 = &v51[*(v41 + 20)];
  sub_1C6FD7F70();
  if (v76)
  {
    OUTLINED_FUNCTION_96_1();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v54 = OUTLINED_FUNCTION_95(v53);
    OUTLINED_FUNCTION_60_1(v54, v18[171]);
    v75[0] = v54;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v55 = v75[0];
  }

  else
  {
    sub_1C6FD7FC8(v75, &qword_1EC2154F0, &unk_1C7583920);
    v55 = *(v52 + 72);
    sub_1C75504FC();
  }

  v56 = *(v55 + 16);
  if (v56)
  {
    v57 = v55 + 32;
    do
    {
      sub_1C6FB5E28(v57, v77);
      __swift_project_boxed_opaque_existential_1(v77, v78);
      v58 = OUTLINED_FUNCTION_80_2();
      v59(v58);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v57 += 40;
      --v56;
    }

    while (v56);

    v18 = ("PHUtilityCollectionType" + 16);
  }

  else
  {
  }

  sub_1C6FD479C(v52, type metadata accessor for SafetyBundle);
  if (qword_1EDD0AF98 != -1)
  {
    OUTLINED_FUNCTION_53_4(&qword_1EDD0AF98);
  }

  __swift_project_value_buffer(v41, &unk_1EDD28C28);
  OUTLINED_FUNCTION_0_4();
  v60 = v73;
  sub_1C6FD4C38();
  v61 = v60 + *(v41 + 20);
  sub_1C6FD7F70();
  if (v76)
  {
    OUTLINED_FUNCTION_96_1();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215100, &unk_1C755C310);
    v63 = OUTLINED_FUNCTION_95(v62);
    OUTLINED_FUNCTION_60_1(v63, v18[171]);
    v75[0] = v63;
    sub_1C75504FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C6FD4210();
    __swift_destroy_boxed_opaque_existential_1(v77);
    v64 = v75[0];
  }

  else
  {
    sub_1C6FD7FC8(v75, &qword_1EC2154F0, &unk_1C7583920);
    v64 = *(v61 + 72);
    sub_1C75504FC();
  }

  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v64 + 32;
    do
    {
      sub_1C6FB5E28(v66, v77);
      v67 = v78;
      v68 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      (*(v68 + 16))(0xD000000000000021, 0x80000001C7596920, v67, v68);
      __swift_destroy_boxed_opaque_existential_1(v77);
      v66 += 40;
      --v65;
    }

    while (v65);
  }

  sub_1C6FD479C(v61, type metadata accessor for SafetyBundle);
  OUTLINED_FUNCTION_25_0();
}

void SafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v10))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_97_0(&dword_1C6F5C000, v11, v10, "Caching the LexiconLanguageIdentifier...");
    OUTLINED_FUNCTION_109();
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69ABFB0]) init];
  if (v12)
  {
    v13 = v12;
    StoryGenerationCache.cacheLexiconLanguageIdentifier(languageIdentifier:)(v12);
    v14 = sub_1C754FEEC();
    v15 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v15))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_97_0(&dword_1C6F5C000, v16, v15, "LexiconLanguageIdentifier cached.");
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    v13 = sub_1C754FEEC();
    v17 = sub_1C755119C();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = OUTLINED_FUNCTION_127();
      *v18 = 0;
      _os_log_impl(&dword_1C6F5C000, v13, v17, "LexiconLanguageIdentifier failed to be cached.", v18, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1AC();
  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_25_0();
}

PhotosIntelligence::SafetyControllerDiagnosticReport __swiftcall SafetyController.diagnosticReport()()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks;
  swift_beginAccess();
  *v2 = *(v1 + v3);
  return sub_1C75504FC();
}

void sub_1C6FD1EE8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C75506DC();
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v6 = *v3;
  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  v33[0] = v6;
  v33[1] = v7;
  v34 = v8;
  sub_1C6FD46B4();
  sub_1C754D78C();

  sub_1C75506CC();
  OUTLINED_FUNCTION_66_4();
  v12 = sub_1C75506AC();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v9 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v16))
    {
      v30 = v14;
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33[0] = v32;
      *v17 = 136446210;
      v18 = sub_1C6F765A4(v30, v15, v33);
      v31 = v9;
      v19 = v18;

      *(v17 + 4) = v19;
      v9 = v31;
      _os_log_impl(&dword_1C6F5C000, v31, v16, "Safety controller check: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
      v20 = OUTLINED_FUNCTION_66_4();
      sub_1C6FC1640(v20, v21);
    }

    else
    {
      v24 = OUTLINED_FUNCTION_66_4();
      sub_1C6FC1640(v24, v25);
    }
  }

  else
  {
    v22 = OUTLINED_FUNCTION_66_4();
    sub_1C6FC1640(v22, v23);
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v10))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_97_0(&dword_1C6F5C000, v11, v10, "Safety controller check: failed to encode the check results");
      OUTLINED_FUNCTION_109();
    }
  }

  v26 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks;
  swift_beginAccess();
  sub_1C6FD8084(v6, v7, v8);
  sub_1C6FB07A8();
  v27 = *(*(v1 + v26) + 16);
  sub_1C6FB103C();
  v28 = *(v1 + v26);
  *(v28 + 16) = v27 + 1;
  v29 = v28 + 24 * v27;
  *(v29 + 32) = v6;
  *(v29 + 40) = v7;
  *(v29 + 48) = v8;
  *(v1 + v26) = v28;
  swift_endAccess();
  OUTLINED_FUNCTION_25_0();
}

uint64_t SafetyController.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_safeTokenAnalyzer));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SafetyController.__deallocating_deinit()
{
  SafetyController.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C6FD229C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C6FD22BC, v3, 0);
}

uint64_t sub_1C6FD22BC()
{
  OUTLINED_FUNCTION_42();
  SafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)();
  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C6FD2314(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C6FD2334, v3, 0);
}

uint64_t sub_1C6FD2334()
{
  OUTLINED_FUNCTION_42();
  SafetyController.extendedTokenAnalyzer()(*(v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C6FD238C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C6FD23AC, v3, 0);
}

uint64_t sub_1C6FD23AC()
{
  OUTLINED_FUNCTION_42();
  SafetyController.diagnosticReport()();
  OUTLINED_FUNCTION_43();

  return v0();
}

void sub_1C6FD2494(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCC88(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 32 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2568(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCCA0(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2764(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCCE8(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 72 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2828(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCD18(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CC8, &unk_1C755EA70);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD298C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCDA8(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218D40, &unk_1C755EAA0);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD2A40(uint64_t a1)
{
  v10 = a1;
  v11 = OUTLINED_FUNCTION_19_7(a1);
  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDCDC0(v11, 1);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_51_6();
  sub_1C70D1F00();
  if (v13 < v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_89_2();
    if (v12)
    {
      __break(1u);
LABEL_13:
      OUTLINED_FUNCTION_87_2();
      while (1)
      {
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_31;
        }

        if (v16 >= v8)
        {
          goto LABEL_7;
        }

        v17 = *(v3 + 8 * v16);
        ++v7;
        if (v17)
        {
          v9 = (v17 - 1) & v17;
          v7 = v16;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v14;
  }

  v10 = v24;
  if (v13 != v3)
  {
LABEL_7:
    sub_1C6F61E88(v10);
    *v2 = v1;
    return;
  }

LABEL_10:
  v5 = *(v1 + 16);
  v3 = v25;
  v7 = v26;
  if (!v27)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_33_4();
  v8 = (v15 + 64) >> 6;
LABEL_18:
  OUTLINED_FUNCTION_81_2();
LABEL_19:
  OUTLINED_FUNCTION_77_2();
  v22 = v18;
  if (v18 < v19)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB2FFC();
    OUTLINED_FUNCTION_79_3();
    v22 = v21;
  }

  while (1)
  {
    if (v5 >= v22)
    {
      *(v1 + 16) = v5;
      goto LABEL_19;
    }

    v20 = v1 + 32 + 24 * v5;
    *v20 = v23;
    *(v20 + 8) = v4;
    *(v20 + 16) = v6;
    ++v5;
    if (!v9)
    {
      break;
    }

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_81_2();
  }

  while (!__OFADD__(v7, 1))
  {
    if (v7 + 1 >= v8)
    {
      *(v1 + 16) = v5;
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_107_0();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C6FD2C20(void *a1)
{
  v6 = v1;
  v7 = a1;
  v8 = sub_1C707FA7C(*a1, v7[1], *(v7 + 16), v7[3], v7[4], *(v7 + 40), v7[6]);
  if (__OFADD__(sub_1C6FB6304(), v8))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDE6EC();
  v5 = *v1;
  v2 = *v1 & 0xFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_100_1();
  v11 = v10 - v9;
  v12 = v7;
  sub_1C6FD7BA4(__src, (v2 + 8 * v9 + 32), v10 - v9);
  if (v13 < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v13 >= 1)
  {
    v14 = *(v2 + 16);
    v15 = __OFADD__(v14, v13);
    v16 = v14 + v13;
    if (v15)
    {
      __break(1u);
      goto LABEL_15;
    }

    *(v2 + 16) = v16;
  }

  if (v13 != v11)
  {
    goto LABEL_7;
  }

LABEL_10:
  v11 = *(v2 + 16);
  LODWORD(v8) = __src[4];
  v57 = __src[3];
  LODWORD(v7) = LOBYTE(__src[5]);
  v12 = __src[7];
  v3 = __src[8];
  v4 = LOBYTE(__src[9]);
  if (__src[9])
  {
    if (__src[5])
    {
      v17 = OUTLINED_FUNCTION_34_4();
      if (MEMORY[0x1CCA5DBA0](v17))
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_15:
  if (v7)
  {
    goto LABEL_65;
  }

  if (v3 != v8)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_119_1();
  if (v18)
  {
    goto LABEL_7;
  }

LABEL_18:
  v53 = __src[0];
  v55 = __src[1];
  v19 = __src[6];
  LODWORD(v51) = LOBYTE(__src[2]);
  if (v4)
  {
    if (__src[2])
    {
      v20 = OUTLINED_FUNCTION_61_0();
      if (MEMORY[0x1CCA5DB90](v20))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v7)
      {
        v21 = OUTLINED_FUNCTION_34_4();
        if (MEMORY[0x1CCA5DB90](v21))
        {
          goto LABEL_23;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_67:
      __break(1u);
      return;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (__src[2])
  {
    goto LABEL_66;
  }

  if (v3 != LODWORD(__src[1]))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v12 < __src[0])
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v7)
  {
    goto LABEL_67;
  }

  if (v3 != v8)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_119_1();
  if (v39 == v15)
  {
    goto LABEL_52;
  }

LABEL_23:
  HIDWORD(v51) = v7;
  v22 = OUTLINED_FUNCTION_61_0();
  sub_1C719D4F0(v22, v23, v4, v19);
  v25 = v24;
  sub_1C707FD18(&__src[7], v19, v26, v27, v28, v29, v30, v31, v49, v51, v53, v55, v57, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
LABEL_24:
  if (v11 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1C7550B9C();
  }

  v5 = *v6;
  v32 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v50 = *v6 & 0xFFFFFFFFFFFFFF8;
  v33 = v50 + 32;
  while (1)
  {
    if (v11 >= v32)
    {
      *(v50 + 16) = v11;
      goto LABEL_24;
    }

    *(v33 + 8 * v11) = v25;
    v34 = __src[7];
    v35 = LOBYTE(__src[9]);
    if ((__src[9] & 1) == 0)
    {
      break;
    }

    if ((v52 & 0x100000000) == 0)
    {
      goto LABEL_63;
    }

    v36 = OUTLINED_FUNCTION_34_4();
    if (MEMORY[0x1CCA5DBA0](v36))
    {
      goto LABEL_45;
    }

    if ((v52 & 1) == 0)
    {
      goto LABEL_64;
    }

    v37 = OUTLINED_FUNCTION_61_0();
    if (MEMORY[0x1CCA5DB90](v37))
    {
      goto LABEL_55;
    }

    v38 = OUTLINED_FUNCTION_34_4();
    if ((MEMORY[0x1CCA5DB90](v38) & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_43:
    v40 = OUTLINED_FUNCTION_61_0();
    sub_1C719D4F0(v40, v41, v35, v19);
    v25 = v42;
    sub_1C707FD18(&__src[7], v19, v43, v44, v45, v46, v47, v48, v50, v52, v54, v56, v58, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8]);
    ++v11;
  }

  if ((v52 & 0x100000000) != 0)
  {
    goto LABEL_63;
  }

  if (v8 != LODWORD(__src[8]))
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_119_1();
  if (!v18)
  {
    if (v52)
    {
      goto LABEL_64;
    }

    if (v8 != v56)
    {
      goto LABEL_56;
    }

    if (v34 < v54)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_119_1();
    if (v39 == v15)
    {
      goto LABEL_53;
    }

    goto LABEL_43;
  }

LABEL_45:
  *(v50 + 16) = v11 + 1;
LABEL_7:
  memcpy(__dst, __src, 0x49uLL);
  sub_1C6FD7FC8(__dst, &qword_1EC215590, &qword_1C755EA80);
  *v6 = v5;
}

void sub_1C6FD2FA8(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCDD8(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_126_1(v6);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_121_1();
  v23 = v22;
  v24 = OUTLINED_FUNCTION_19_7(v22);
  if (v25)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6FDCE08(v24, 1);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_51_6();
  v26 = sub_1C70D453C();
  if (v26 < v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v26)
  {
    OUTLINED_FUNCTION_89_2();
    if (v25)
    {
      __break(1u);
LABEL_13:
      v32 = (v28 + 64) >> 6;
      while (1)
      {
        v33 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_31;
        }

        if (v33 >= v32)
        {
          goto LABEL_7;
        }

        ++v20;
        if (*(v17 + 8 * v33))
        {
          OUTLINED_FUNCTION_29_3();
          goto LABEL_18;
        }
      }
    }

    *(v16 + 16) = v27;
  }

  v23 = a12;
  if (v26 != v17)
  {
LABEL_7:
    OUTLINED_FUNCTION_67_2();
    OUTLINED_FUNCTION_120_0();
    return;
  }

LABEL_10:
  v19 = *(v16 + 16);
  v17 = a13;
  v28 = a14;
  v20 = a15;
  if (!a16)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_33_4();
  v30 = v29 | (a15 << 6);
  v32 = (v31 + 64) >> 6;
LABEL_18:
  v34 = *(*(v23 + 56) + 8 * v30);
  sub_1C75504FC();
LABEL_19:
  v35 = *(v16 + 24) >> 1;
  if (v35 < v19 + 1)
  {
    OUTLINED_FUNCTION_52_5();
    sub_1C6FB20F8();
    v16 = v38;
    v35 = *(v38 + 24) >> 1;
  }

  while (1)
  {
    if (v19 >= v35)
    {
      *(v16 + 16) = v19;
      goto LABEL_19;
    }

    *(v16 + 32 + 8 * v19++) = v34;
    if (!v21)
    {
      break;
    }

    OUTLINED_FUNCTION_32_0();
    v34 = *(*(v23 + 56) + ((v36 << 9) | (8 * v37)));
    sub_1C75504FC();
  }

  while (!__OFADD__(v20, 1))
  {
    if (v20 + 1 >= v32)
    {
      OUTLINED_FUNCTION_76_1();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_107_0();
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1C6FD3300(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCE38(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_126_1(v6);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD33F0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCE98(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 120 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD34A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_21_9(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v7)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v9 != v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = OUTLINED_FUNCTION_20_9(v3 + v8);
  memcpy(v10, v11, v12);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v6)
  {
    *(v3 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C6FD3634(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_100_1();
  a4(v14 + 8 * v16 + 32, v15 - v16, a1);
  v18 = v17;

  if (v18 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v19 = *(v14 + 16);
  v11 = __OFADD__(v19, v18);
  v20 = v19 + v18;
  if (!v11)
  {
    *(v14 + 16) = v20;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C6FD36F8(uint64_t a1)
{
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCCD0(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 4 * v6 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD37A4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCF7C(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 112 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD3868()
{
  OUTLINED_FUNCTION_134();
  v4 = OUTLINED_FUNCTION_21_9(v3);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(v4, 1);
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  v8(0);
  if (v10 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_135_0();
    return;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD3968(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_19_7(a1);
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1C6FDCFAC(v4, 1);
  v1 = *v2;
  v6 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  v7 = sub_1C70D4538();
  if (v7 < v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7)
  {
    OUTLINED_FUNCTION_89_2();
    if (v5)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v11;
  }

  if (v7 != v6)
  {
    v7 = v29;
LABEL_8:
    sub_1C6F61E88(v7);
    *v2 = v1;
    return;
  }

LABEL_11:
  v6 = *(v1 + 16);
  v7 = v29;
  v8 = v30;
  v9 = v31;
  v10 = v32;
  if (v33)
  {
    v12 = (v33 - 1) & v33;
    v13 = __clz(__rbit64(v33)) | (v32 << 6);
    v14 = (v31 + 64) >> 6;
LABEL_19:
    v17 = *(*(v7 + 48) + v13);
LABEL_20:
    while (v17 != 20)
    {
      v18 = *(v1 + 24) >> 1;
      if (v18 < v6 + 1)
      {
        v27 = v17;
        v28 = v7;
        v25 = v9;
        v26 = v8;
        v22 = v10;
        v23 = v12;
        sub_1C6FB458C();
        v17 = v27;
        v12 = v23;
        v10 = v22;
        v9 = v25;
        v8 = v26;
        v1 = v24;
        v7 = v28;
        v18 = *(v1 + 24) >> 1;
      }

      while (1)
      {
LABEL_23:
        if (v17 == 20 || v6 >= v18)
        {
          *(v1 + 16) = v6;
          goto LABEL_20;
        }

        *(v1 + 32 + v6++) = v17;
        if (!v12)
        {
          break;
        }

        v20 = v10;
LABEL_34:
        v21 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = *(*(v7 + 48) + (v21 | (v20 << 6)));
      }

      while (1)
      {
        v20 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v20 >= v14)
        {
          v12 = 0;
          v17 = 20;
          goto LABEL_23;
        }

        v12 = *(v8 + 8 * v20);
        ++v10;
        if (v12)
        {
          v10 = v20;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_37:
      v12 = 0;
      v17 = 20;
    }

    goto LABEL_8;
  }

LABEL_14:
  v14 = (v9 + 64) >> 6;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
      goto LABEL_37;
    }

    v16 = *(v8 + 8 * v15);
    ++v10;
    if (v16)
    {
      v12 = (v16 - 1) & v16;
      v13 = __clz(__rbit64(v16)) | (v15 << 6);
      v10 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1C6FD3CF4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDCFC4(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 192 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD3D8C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v40 = v5;
  v7 = v6;
  v8 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_3_0();
  v41 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  v15 = OUTLINED_FUNCTION_76(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v36 - v21;
  v23 = v2 >> 1;
  v24 = __OFSUB__(v2 >> 1, v4);
  v25 = (v2 >> 1) - v4;
  if (v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_38_3();
  if (__OFADD__(v26, v25))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v27;
  v39 = v13;
  sub_1C6FDCE80(v26 + v25, 1);
  v13 = *v0;
  v28 = (*(*v0 + 24) >> 1) - *(*v0 + 16);
  v42 = v7;
  if (v23 == v4)
  {
    if (v25 <= 0)
    {
      v25 = 0;
      v7 = v4;
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v28 < v25)
  {
    __break(1u);
  }

  else
  {
    swift_arrayInitWithCopy();
    if (v25 <= 0)
    {
LABEL_10:
      v7 = v23;
LABEL_11:
      if (v25 != v28)
      {
        swift_unknownObjectRelease();
LABEL_13:
        *v0 = v13;
        OUTLINED_FUNCTION_25_0();
        return;
      }

LABEL_17:
      v30 = *(v13 + 16);
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v8);
      v31 = v39;
      while (1)
      {
        sub_1C6FD7F70();
        if (__swift_getEnumTagSinglePayload(v38, 1, v8) == 1)
        {
          break;
        }

        sub_1C6FD7FC8(v38, &qword_1EC2155A8, &unk_1C7570210);
        v32 = *(v13 + 24);
        v37 = v32 >> 1;
        if ((v32 >> 1) < v30 + 1)
        {
          sub_1C6FB3648(v32 > 1, v30 + 1, 1, v13);
          v13 = v35;
          v37 = *(v35 + 24) >> 1;
        }

        v36[1] = v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        while (1)
        {
          sub_1C6FD7F70();
          if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
          {
            sub_1C6FD7FC8(v18, &qword_1EC2155A8, &unk_1C7570210);
            goto LABEL_35;
          }

          sub_1C6FD8020();
          if (v30 >= v37)
          {
            break;
          }

          sub_1C6FD7FC8(v22, &qword_1EC2155A8, &unk_1C7570210);
          sub_1C6FD8020();
          if (v7 == v23)
          {
            v33 = 1;
            v7 = v23;
          }

          else
          {
            if (v7 < v4 || v7 >= v23)
            {
              goto LABEL_39;
            }

            sub_1C6FD4C38();
            v33 = 0;
            ++v7;
          }

          __swift_storeEnumTagSinglePayload(v22, v33, 1, v8);
          ++v30;
          v31 = v39;
        }

        sub_1C6FD479C(v31, type metadata accessor for PromptSuggestion);
LABEL_35:
        *(v13 + 16) = v30;
      }

      sub_1C6FD7FC8(v22, &qword_1EC2155A8, &unk_1C7570210);
      swift_unknownObjectRelease();
      sub_1C6FD7FC8(v38, &qword_1EC2155A8, &unk_1C7570210);
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_46_4();
    if (!v24)
    {
      *(v13 + 16) = v29;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

void sub_1C6FD4210()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_9(v3);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_101_0();
  v5();
  v6 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_100_1();
  if (v8 - v7 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v6;
    OUTLINED_FUNCTION_135_0();
    return;
  }

  v11 = *(v6 + 16);
  v4 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v4)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD42F4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_21_9(v3);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_101_0();
  v5();
  v6 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_100_1();
  if (v8 - v7 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_43_4();
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v6;
    OUTLINED_FUNCTION_135_0();
    return;
  }

  v11 = *(v6 + 16);
  v4 = __OFADD__(v11, v0);
  v12 = v11 + v0;
  if (!v4)
  {
    *(v6 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD43AC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C6FDD00C(v4, 1);
  OUTLINED_FUNCTION_48_5();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_6();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_20_9(v3 + 48 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_46_4();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C6FD4444(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_62_6();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1C6FD447C()
{
  result = qword_1EC215498;
  if (!qword_1EC215498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserPromptSensitiveFlags, &type metadata for UserPromptSensitiveFlags, v0, v1);
    atomic_store(result, &qword_1EC215498);
  }

  return result;
}

unint64_t sub_1C6FD44D0()
{
  result = qword_1EC2154A0;
  if (!qword_1EC2154A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.LanguageValidationCategory, &type metadata for TextSanitizer.LanguageValidationCategory, v0, v1);
    atomic_store(result, &qword_1EC2154A0);
  }

  return result;
}

uint64_t sub_1C6FD4524(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215418, &qword_1C755D290);
    a2();
    v5 = OUTLINED_FUNCTION_111();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6FD4598()
{
  result = qword_1EC2154B0;
  if (!qword_1EC2154B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.CharacterCategory, &type metadata for TextSanitizer.CharacterCategory, v0, v1);
    atomic_store(result, &qword_1EC2154B0);
  }

  return result;
}

unint64_t sub_1C6FD45EC()
{
  result = qword_1EDD077B8;
  if (!qword_1EDD077B8)
  {
    result = swift_getWitnessTable(byte_1C755E5B4, &type metadata for SafetyControllerDiagnosticReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD077B8);
  }

  return result;
}

uint64_t sub_1C6FD4640(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2154C0, &qword_1C755D318);
    a2();
    v5 = OUTLINED_FUNCTION_111();
    result = swift_getWitnessTable(v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6FD46B4()
{
  result = qword_1EDD0D308;
  if (!qword_1EDD0D308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SafetyControllerDiagnosticReport.SafetyCheck, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck, v0, v1);
    atomic_store(result, &qword_1EDD0D308);
  }

  return result;
}

unint64_t sub_1C6FD4708()
{
  result = qword_1EC2154D8;
  if (!qword_1EC2154D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SafetyControllerDiagnosticReport.SafetyCheck, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck, v0, v1);
    atomic_store(result, &qword_1EC2154D8);
  }

  return result;
}

uint64_t sub_1C6FD479C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FD47F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C6FD4870(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13, v12);
  v15 = swift_allocObject();
  (*(v8 + 16))(v10, v14, a4);
  v16 = sub_1C6FD4AF0(a1, v10, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

uint64_t sub_1C6FD49CC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = type metadata accessor for SafeTokenAnalyzer();
  v15 = &protocol witness table for SafeTokenAnalyzer;
  *&v13 = a4;
  swift_defaultActor_initialize();
  sub_1C754FEFC();
  *(a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks) = MEMORY[0x1E69E7CC0];
  *(a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_partialUserPromptTokenThreshold) = 5;
  v10 = (a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_unsafeTitleOutputForChina);
  *v10 = 0x656661736E55;
  v10[1] = 0xE600000000000000;
  v11 = a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext;
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  sub_1C6F699F8(&v13, a5 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_safeTokenAnalyzer);
  return a5;
}

uint64_t sub_1C6FD4AF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v15);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a1;
  LOWORD(a2) = *(a1 + 4);
  v11 = a1[2];
  swift_defaultActor_initialize();
  sub_1C754FEFC();
  *(a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_completedSafetyChecks) = MEMORY[0x1E69E7CC0];
  *(a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_partialUserPromptTokenThreshold) = 5;
  v12 = (a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_unsafeTitleOutputForChina);
  *v12 = 0x656661736E55;
  v12[1] = 0xE600000000000000;
  v13 = a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext;
  *v13 = v10;
  *(v13 + 8) = a2;
  *(v13 + 16) = v11;
  sub_1C6F699F8(&v15, a3 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_safeTokenAnalyzer);
  return a3;
}

uint64_t sub_1C6FD4C38()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C6FD4CC4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for SafetyError(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.cacheLexiconLanguageIdentifier(eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_2(a1, a2, a3);
  OUTLINED_FUNCTION_24();
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_41_1(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_52_3(v8);

  return v11(v5, v4, v3);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedUserPromptBeforeQU(userPrompt:includeCriticalSafety:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_85_0();

  return v3();
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedPromptSuggestion(userPrompt:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_69(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_24();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_52_3(v6);
  v8 = OUTLINED_FUNCTION_72_1();

  return v9(v8);
}

uint64_t sub_1C6FD50A8()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(v2);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedUserPrompt(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_114_0();
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_85_0();

  return v3();
}

uint64_t sub_1C6FD52B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_47();
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validateUserPromptLanguage(userPrompt:queryTokens:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_65_2(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_31_2();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_52_3(v7);
  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_83_0();

  return v9();
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.sensitiveContent(in:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_65_2(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_31_2();
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_41_1(v6);
  *v7 = v8;
  v7[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_83_0();

  return v9();
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.sensitiveContent(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_31_2();
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_41_1(v17);
  *v18 = v19;
  v18[1] = sub_1C6F738F4;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validateStoryTitle(storyTitle:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_69(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_24();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_52_3(v6);
  v8 = OUTLINED_FUNCTION_72_1();

  return v9(v8);
}

uint64_t sub_1C6FD5830()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  OUTLINED_FUNCTION_116();

  return v5(v2);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedPersonalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_40_9(v0, v1, v2, v3);
  OUTLINED_FUNCTION_31_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_22_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedGlobalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_40_9(v0, v1, v2, v3);
  OUTLINED_FUNCTION_31_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_22_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.validatedAppleMusicSongs(songs:eventRecorder:)()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_40_9(v0, v1, v2, v3);
  OUTLINED_FUNCTION_31_2();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_22_6(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.extendedTokenAnalyzer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_2(a1, a2, a3);
  OUTLINED_FUNCTION_24();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t dispatch thunk of GenerativeMemorySafetyController.diagnosticReport()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_49_2(a1, a2, a3);
  OUTLINED_FUNCTION_24();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t sub_1C6FD5E1C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF4 && *(a1 + 17))
    {
      v2 = *a1 + 243;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0xC)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C6FD5E5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C6FD5EC0(uint64_t a1)
{
  result = type metadata accessor for SafetyError.SafetyValidationFailureInfo(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6FD5F60(uint64_t a1)
{
  sub_1C6FD5FFC();
  if (v1 <= 0x3F)
  {
    sub_1C6FD604C(319);
    if (v2 <= 0x3F)
    {
      sub_1C6FD60B0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6FD5FFC()
{
  if (!qword_1EDD0D078)
  {
    v0 = sub_1C755149C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD0D078);
    }
  }
}

void sub_1C6FD604C(uint64_t a1)
{
  if (!qword_1EDD0CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219760, ":");
    v1 = sub_1C755149C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD0CCC8);
    }
  }
}

void sub_1C6FD60B0(uint64_t a1)
{
  if (!qword_1EDD0D0C8)
  {
    sub_1C754FACC();
    v1 = sub_1C755149C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD0D0C8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SafetyError.UnsupportedLanguageInfo(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C6FD61E4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1C6FD6224(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C6FD6298(uint64_t a1)
{
  result = sub_1C754FF1C();
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

uint64_t getEnumTagSinglePayload for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserPromptAmbiguityState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptBeforeQUCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t _s17CharacterCategoryOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1C6FD6798(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C6FD6874(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_71(a1);
}

_BYTE *sub_1C6FD68C0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C6FD6970()
{
  result = qword_1EC215510;
  if (!qword_1EC215510)
  {
    result = swift_getWitnessTable(asc_1C755DB7C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.SafetyErrorThrownCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215510);
  }

  return result;
}

unint64_t sub_1C6FD69C8()
{
  result = qword_1EC215518;
  if (!qword_1EC215518)
  {
    result = swift_getWitnessTable(byte_1C755DC34, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.AppleMusicSongsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215518);
  }

  return result;
}

unint64_t sub_1C6FD6A20()
{
  result = qword_1EC215520;
  if (!qword_1EC215520)
  {
    result = swift_getWitnessTable(asc_1C755DCEC, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.GlobalTraitsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215520);
  }

  return result;
}

unint64_t sub_1C6FD6A78()
{
  result = qword_1EC215528;
  if (!qword_1EC215528)
  {
    result = swift_getWitnessTable(byte_1C755DDA4, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.PersonalTraitsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215528);
  }

  return result;
}

unint64_t sub_1C6FD6AD0()
{
  result = qword_1EC215530;
  if (!qword_1EC215530)
  {
    result = swift_getWitnessTable(byte_1C755DE5C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.StoryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215530);
  }

  return result;
}

unint64_t sub_1C6FD6B28()
{
  result = qword_1EC215538;
  if (!qword_1EC215538)
  {
    result = swift_getWitnessTable(a5_11, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.SensitiveContentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215538);
  }

  return result;
}

unint64_t sub_1C6FD6B80()
{
  result = qword_1EC215540;
  if (!qword_1EC215540)
  {
    result = swift_getWitnessTable(asc_1C755DFCC, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.PartialUserPromptLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215540);
  }

  return result;
}

unint64_t sub_1C6FD6BD8()
{
  result = qword_1EC215548;
  if (!qword_1EC215548)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.FullUserPromptLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215548);
  }

  return result;
}

unint64_t sub_1C6FD6C30()
{
  result = qword_1EC215550;
  if (!qword_1EC215550)
  {
    result = swift_getWitnessTable(asc_1C755E13C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptGibberishCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215550);
  }

  return result;
}

unint64_t sub_1C6FD6C88()
{
  result = qword_1EC215558;
  if (!qword_1EC215558)
  {
    result = swift_getWitnessTable(aU_21, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptCharactersCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215558);
  }

  return result;
}

unint64_t sub_1C6FD6CE0()
{
  result = qword_1EC215560;
  if (!qword_1EC215560)
  {
    result = swift_getWitnessTable(byte_1C755E2AC, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptSafetyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215560);
  }

  return result;
}

unint64_t sub_1C6FD6D38()
{
  result = qword_1EC215568;
  if (!qword_1EC215568)
  {
    result = swift_getWitnessTable(aX_1, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptBeforeQUCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215568);
  }

  return result;
}

unint64_t sub_1C6FD6D90()
{
  result = qword_1EC215570;
  if (!qword_1EC215570)
  {
    result = swift_getWitnessTable(asc_1C755E41C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.ValidatedAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215570);
  }

  return result;
}

unint64_t sub_1C6FD6DE8()
{
  result = qword_1EC215578;
  if (!qword_1EC215578)
  {
    result = swift_getWitnessTable(aU_22, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215578);
  }

  return result;
}

unint64_t sub_1C6FD6E40()
{
  result = qword_1EC215580;
  if (!qword_1EC215580)
  {
    result = swift_getWitnessTable(byte_1C755E58C, &type metadata for SafetyControllerDiagnosticReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC215580);
  }

  return result;
}

unint64_t sub_1C6FD6E98()
{
  result = qword_1EDD077A8;
  if (!qword_1EDD077A8)
  {
    result = swift_getWitnessTable(byte_1C755E4FC, &type metadata for SafetyControllerDiagnosticReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD077A8);
  }

  return result;
}

unint64_t sub_1C6FD6EF0()
{
  result = qword_1EDD077B0;
  if (!qword_1EDD077B0)
  {
    result = swift_getWitnessTable(asc_1C755E524, &type metadata for SafetyControllerDiagnosticReport.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD077B0);
  }

  return result;
}

unint64_t sub_1C6FD6F48()
{
  result = qword_1EDD0D380;
  if (!qword_1EDD0D380)
  {
    result = swift_getWitnessTable(aE_20, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.ValidatedAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D380);
  }

  return result;
}

unint64_t sub_1C6FD6FA0()
{
  result = qword_1EDD0D388;
  if (!qword_1EDD0D388)
  {
    result = swift_getWitnessTable(asc_1C755E3B4, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.ValidatedAssetsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D388);
  }

  return result;
}

unint64_t sub_1C6FD6FF8()
{
  result = qword_1EDD0D360;
  if (!qword_1EDD0D360)
  {
    result = swift_getWitnessTable(byte_1C755E2D4, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptBeforeQUCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D360);
  }

  return result;
}

unint64_t sub_1C6FD7050()
{
  result = qword_1EDD0D368;
  if (!qword_1EDD0D368)
  {
    result = swift_getWitnessTable(a5_12, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptBeforeQUCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D368);
  }

  return result;
}

unint64_t sub_1C6FD70A8()
{
  result = qword_1EDD0D3F8;
  if (!qword_1EDD0D3F8)
  {
    result = swift_getWitnessTable(aO, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptSafetyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3F8);
  }

  return result;
}

unint64_t sub_1C6FD7100()
{
  result = qword_1EDD0D400;
  if (!qword_1EDD0D400)
  {
    result = swift_getWitnessTable(byte_1C755E244, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptSafetyCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D400);
  }

  return result;
}

unint64_t sub_1C6FD7158()
{
  result = qword_1EDD0D330;
  if (!qword_1EDD0D330)
  {
    result = swift_getWitnessTable(byte_1C755E164, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptCharactersCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D330);
  }

  return result;
}

unint64_t sub_1C6FD71B0()
{
  result = qword_1EDD0D338;
  if (!qword_1EDD0D338)
  {
    result = swift_getWitnessTable(byte_1C755E18C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptCharactersCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D338);
  }

  return result;
}

unint64_t sub_1C6FD7208()
{
  result = qword_1EDD0D348;
  if (!qword_1EDD0D348)
  {
    result = swift_getWitnessTable(aE_21, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptGibberishCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D348);
  }

  return result;
}

unint64_t sub_1C6FD7260()
{
  result = qword_1EDD0D350;
  if (!qword_1EDD0D350)
  {
    result = swift_getWitnessTable(asc_1C755E0D4, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.UserPromptGibberishCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D350);
  }

  return result;
}

unint64_t sub_1C6FD72B8()
{
  result = qword_1EDD0D320;
  if (!qword_1EDD0D320)
  {
    result = swift_getWitnessTable(byte_1C755DFF4, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.FullUserPromptLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D320);
  }

  return result;
}

unint64_t sub_1C6FD7310()
{
  result = qword_1EDD0D328;
  if (!qword_1EDD0D328)
  {
    result = swift_getWitnessTable(byte_1C755E01C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.FullUserPromptLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D328);
  }

  return result;
}

unint64_t sub_1C6FD7368()
{
  result = qword_1EDD0D310;
  if (!qword_1EDD0D310)
  {
    result = swift_getWitnessTable(byte_1C755DF3C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.PartialUserPromptLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D310);
  }

  return result;
}

unint64_t sub_1C6FD73C0()
{
  result = qword_1EDD0D318;
  if (!qword_1EDD0D318)
  {
    result = swift_getWitnessTable(asc_1C755DF64, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.PartialUserPromptLanguageCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D318);
  }

  return result;
}

unint64_t sub_1C6FD7418()
{
  result = qword_1EDD0D370;
  if (!qword_1EDD0D370)
  {
    result = swift_getWitnessTable(aM_19, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.SensitiveContentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D370);
  }

  return result;
}

unint64_t sub_1C6FD7470()
{
  result = qword_1EDD0D378;
  if (!qword_1EDD0D378)
  {
    result = swift_getWitnessTable(byte_1C755DEAC, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.SensitiveContentCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D378);
  }

  return result;
}

unint64_t sub_1C6FD74C8()
{
  result = qword_1EDD0D3C0;
  if (!qword_1EDD0D3C0)
  {
    result = swift_getWitnessTable(asc_1C755DDCC, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.StoryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3C0);
  }

  return result;
}

unint64_t sub_1C6FD7520()
{
  result = qword_1EDD0D3C8;
  if (!qword_1EDD0D3C8)
  {
    result = swift_getWitnessTable(asc_1C755DDF4, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.StoryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3C8);
  }

  return result;
}

unint64_t sub_1C6FD7578()
{
  result = qword_1EDD0D3A0;
  if (!qword_1EDD0D3A0)
  {
    result = swift_getWitnessTable(asc_1C755DD14, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.PersonalTraitsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3A0);
  }

  return result;
}

unint64_t sub_1C6FD75D0()
{
  result = qword_1EDD0D3A8;
  if (!qword_1EDD0D3A8)
  {
    result = swift_getWitnessTable(byte_1C755DD3C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.PersonalTraitsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3A8);
  }

  return result;
}

unint64_t sub_1C6FD7628()
{
  result = qword_1EDD0D3B0;
  if (!qword_1EDD0D3B0)
  {
    result = swift_getWitnessTable(byte_1C755DC5C, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.GlobalTraitsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3B0);
  }

  return result;
}

unint64_t sub_1C6FD7680()
{
  result = qword_1EDD0D3B8;
  if (!qword_1EDD0D3B8)
  {
    result = swift_getWitnessTable(byte_1C755DC84, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.GlobalTraitsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3B8);
  }

  return result;
}

unint64_t sub_1C6FD76D8()
{
  result = qword_1EDD0D390;
  if (!qword_1EDD0D390)
  {
    result = swift_getWitnessTable(aM_20, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.AppleMusicSongsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D390);
  }

  return result;
}

unint64_t sub_1C6FD7730()
{
  result = qword_1EDD0D398;
  if (!qword_1EDD0D398)
  {
    result = swift_getWitnessTable(aE_22, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.AppleMusicSongsCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D398);
  }

  return result;
}

unint64_t sub_1C6FD7788()
{
  result = qword_1EDD0D3E8;
  if (!qword_1EDD0D3E8)
  {
    result = swift_getWitnessTable(byte_1C755DAEC, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.SafetyErrorThrownCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3E8);
  }

  return result;
}

unint64_t sub_1C6FD77E0()
{
  result = qword_1EDD0D3F0;
  if (!qword_1EDD0D3F0)
  {
    result = swift_getWitnessTable(byte_1C755DB14, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.SafetyErrorThrownCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3F0);
  }

  return result;
}

unint64_t sub_1C6FD7838()
{
  result = qword_1EDD0D3D0;
  if (!qword_1EDD0D3D0)
  {
    result = swift_getWitnessTable(byte_1C755E444, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3D0);
  }

  return result;
}

unint64_t sub_1C6FD7890()
{
  result = qword_1EDD0D3D8;
  if (!qword_1EDD0D3D8)
  {
    result = swift_getWitnessTable(aU_23, &type metadata for SafetyControllerDiagnosticReport.SafetyCheck.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0D3D8);
  }

  return result;
}

uint64_t sub_1C6FD78E4(uint64_t result, void *a2, uint64_t a3)
{
  v4 = result;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (!a2)
  {
    OUTLINED_FUNCTION_63_3();
    *(v4 + 72) = v33;
    sub_1C6FD8078(v5, v6, v33 & 1);
    return 0;
  }

  v8 = a3;
  v38 = *(v3 + 16);
  if (!a3)
  {
    v32 = *(v3 + 16);
    sub_1C6FD8078(v5, v6, v7 & 1);
LABEL_29:
    OUTLINED_FUNCTION_63_3();
    *(v4 + 72) = v32;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = *(v3 + 24);
    v41 = *(v3 + 32);
    v42 = *(v3 + 40);
    v11 = *(v3 + 48);
    v12 = *(v3 + 16);
    result = sub_1C6FD8078(v5, v6, v7 & 1);
    v13 = 0;
    v40 = v5;
    v37 = v8;
    v14 = v38;
    v15 = v6;
    v39 = v6;
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if ((v14 | v42))
      {
        goto LABEL_41;
      }

      if (v15 != v41)
      {
        goto LABEL_33;
      }

      if (v5 == v10)
      {
        v34 = *(v35 + 16);
        *v36 = *v35;
        *(v36 + 16) = v34;
        *(v36 + 32) = *(v35 + 32);
        *(v36 + 48) = *(v35 + 48);
        *(v36 + 56) = v10;
        *(v36 + 64) = v15;
        v8 = v13;
        *(v36 + 72) = 0;
        return v8;
      }

      if (v12)
      {
        goto LABEL_42;
      }

      if (v5 < v40)
      {
        goto LABEL_34;
      }

      if (v41 != v6)
      {
        goto LABEL_35;
      }

      if (v5 >= v10)
      {
        goto LABEL_36;
      }

      if (v5 < 0)
      {
        goto LABEL_37;
      }

      v17 = v10;
      v18 = 1 << *(v11 + 32);
      if (v5 >= v18)
      {
        goto LABEL_37;
      }

      v19 = v5 >> 6;
      v20 = *(v11 + 56 + 8 * (v5 >> 6));
      if (((v20 >> v5) & 1) == 0)
      {
        goto LABEL_38;
      }

      if (*(v11 + 36) != v41)
      {
        goto LABEL_39;
      }

      v21 = (*(v11 + 48) + 16 * v5);
      v6 = v21[1];
      v43 = *v21;
      v22 = v20 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v5 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
        result = sub_1C75504FC();
      }

      else
      {
        v23 = v19 << 6;
        v24 = v19 + 1;
        v25 = (v11 + 64 + 8 * v19);
        while (v24 < (v18 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1C75504FC();
            v28 = OUTLINED_FUNCTION_98_1();
            result = sub_1C6F9ED50(v28, v29, 0);
            v5 = __clz(__rbit64(v26)) + v23;
            goto LABEL_24;
          }
        }

        sub_1C75504FC();
        v30 = OUTLINED_FUNCTION_98_1();
        result = sub_1C6F9ED50(v30, v31, 0);
        v5 = v18;
LABEL_24:
        v8 = v37;
        v12 = v38;
      }

      v14 = 0;
      v15 = *(v11 + 36);
      *v9 = v43;
      v9[1] = v6;
      v9 += 2;
      v13 = v16;
      LODWORD(v6) = v39;
      v10 = v17;
      if (v16 == v8)
      {
        v32 = 0;
        v4 = v36;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

void sub_1C6FD7BA4(void *result, uint64_t *a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  *(&__src[3] + 8) = *v3;
  v33 = *(&__src[3] + 8);
  v5 = *(v3 + 32);
  __src[0] = *(&__src[3] + 8);
  __src[1] = v4;
  BYTE8(__src[4]) = *(v3 + 16);
  v34 = BYTE8(__src[4]);
  __src[2] = v5;
  *&__src[3] = *(v3 + 48);
  if (a2)
  {
    v6 = a3;
    if (a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        v7 = a2;
        v8 = *(v3 + 48);
        v9 = *(v3 + 32);
        v30 = *(v3 + 24);
        v29 = *(v3 + 40);
        sub_1C6FD7F70();
        v10 = 0;
        v27 = v6;
        while (1)
        {
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v12 = *(&__src[3] + 8);
          v13 = BYTE8(__src[4]);
          if (BYTE8(__src[4]))
          {
            if ((v29 & 1) == 0)
            {
              goto LABEL_55;
            }

            if (MEMORY[0x1CCA5DBA0](*(&__src[3] + 1), *&__src[4], v30, v9))
            {
              goto LABEL_43;
            }

            if ((v34 & 1) == 0)
            {
              goto LABEL_56;
            }

            if (MEMORY[0x1CCA5DB90](v12, *(&v12 + 1), v33, *(&v33 + 1)))
            {
              goto LABEL_48;
            }

            if ((MEMORY[0x1CCA5DB90](v12, *(&v12 + 1), v30, v9) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (v29)
            {
              goto LABEL_55;
            }

            if (LODWORD(__src[4]) != v9)
            {
              goto LABEL_47;
            }

            if (*(&__src[3] + 1) == v30)
            {
              goto LABEL_43;
            }

            if (v34)
            {
              goto LABEL_56;
            }

            if (DWORD2(v33) != v9)
            {
              goto LABEL_49;
            }

            if (*(&__src[3] + 1) < v33)
            {
              goto LABEL_50;
            }

            if (*(&__src[3] + 1) >= v30)
            {
              goto LABEL_46;
            }
          }

          sub_1C719D4F0(v12, *(&v12 + 1), v13, v8);
          v15 = v14;
          if ((v8 & 0xC000000000000001) != 0)
          {
            if (!v13)
            {
              goto LABEL_57;
            }

            if (sub_1C755166C())
            {
              swift_isUniquelyReferenced_nonNull_native();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A0, &unk_1C755EA90);
            v20 = sub_1C7550FCC();
            sub_1C755172C();
            v20(v31, 0);
          }

          else
          {
            if (v13)
            {
              goto LABEL_58;
            }

            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            v16 = 1 << *(v8 + 32);
            if (v12 >= v16)
            {
              goto LABEL_51;
            }

            v17 = v12 >> 6;
            v18 = *(v8 + 56 + 8 * (v12 >> 6));
            if (((v18 >> v12) & 1) == 0)
            {
              goto LABEL_52;
            }

            if (*(v8 + 36) != DWORD2(v12))
            {
              goto LABEL_53;
            }

            v19 = v18 & (-2 << (v12 & 0x3F));
            if (v19)
            {
              v16 = __clz(__rbit64(v19)) | v12 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v21 = v17 << 6;
              v22 = v17 + 1;
              v23 = (v8 + 64 + 8 * v17);
              while (v22 < (v16 + 63) >> 6)
              {
                v25 = *v23++;
                v24 = v25;
                v21 += 64;
                ++v22;
                if (v25)
                {
                  sub_1C6F9ED50(v12, *(&v12 + 1), 0);
                  v16 = __clz(__rbit64(v24)) + v21;
                  goto LABEL_37;
                }
              }

              sub_1C6F9ED50(v12, *(&v12 + 1), 0);
LABEL_37:
              v6 = v27;
            }

            v26 = *(v8 + 36);
            *(&__src[3] + 1) = v16;
            *&__src[4] = v26;
            BYTE8(__src[4]) = 0;
          }

          *v7++ = v15;
          v10 = v11;
          if (v11 == v6)
          {
            goto LABEL_43;
          }
        }

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
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
    }

    else
    {
      sub_1C6FD7F70();
LABEL_43:
      memcpy(result, __src, 0x49uLL);
    }
  }

  else
  {
    memcpy(result, __src, 0x49uLL);
    sub_1C6FD7F70();
  }
}

uint64_t sub_1C6FD7F70()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_90();
  v4(v3);
  return v0;
}

uint64_t sub_1C6FD7FC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FD8020()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C6FD8078(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1C75504FC();
  }

  return v3;
}

uint64_t sub_1C6FD8084(uint64_t result, uint64_t a2, char a3)
{
  v3 = a3 == 3 || a3 == 7;
  if (v3 || a3 == 12)
  {
    return sub_1C75504FC();
  }

  return v4;
}

void OUTLINED_FUNCTION_50_3()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_53_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_55_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1C6FB5E28(v3 - 120, v2 + 32);
}

__n128 OUTLINED_FUNCTION_63_3()
{
  v4 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v4;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_81_2()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_91_1(uint64_t a1, uint64_t a2)
{

  return sub_1C7551C6C();
}

uint64_t OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return sub_1C6F699F8((v0 - 160), v0 - 120);
}

void OUTLINED_FUNCTION_97_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_109_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = (a10 + 16 * v11);
  *v13 = v12;
  v13[1] = v10;
}

uint64_t OUTLINED_FUNCTION_123_0()
{

  return sub_1C75504FC();
}

void *OUTLINED_FUNCTION_126_1@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v3 + 8 * a1 + 32), (v1 + 32), 8 * v2);
}

id static PHAssetCollection.persistAsAlbum(assetUUIDs:albumName:photoLibrary:preserveOrder:)(uint64_t a1, uint64_t a2, uint64_t a3, id a4, char a5)
{
  v6 = a4;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v10 = [a4 librarySpecificFetchOptions];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = sub_1C6FCA158(a1, v10, v11);

  if (!v13)
  {
    sub_1C755119C();
    sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
    v28 = sub_1C755145C();
    sub_1C754FDFC();

    return 0;
  }

  if (a5)
  {
    v14 = sub_1C6FD8844(v13, a1);

    if (v14)
    {
      v13 = v14;
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v13;
  v16[5] = v15;
  aBlock[4] = sub_1C6FD9B8C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);
  sub_1C75504FC();

  v18 = v13;

  aBlock[0] = 0;
  v19 = [v6 performChangesAndWait:v17 error:aBlock];
  _Block_release(v17);
  v20 = aBlock[0];
  if (v19)
  {
    v21 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C755BAB0;
    swift_beginAccess();
    v23 = *(v15 + 24);
    *(v22 + 32) = *(v15 + 16);
    *(v22 + 40) = v23;
    v24 = v20;
    sub_1C75504FC();
    v25 = sub_1C7550B3C();

    v26 = [v6 librarySpecificFetchOptions];
    v27 = [v21 fetchAssetCollectionsWithLocalIdentifiers:v25 options:v26];

    v6 = [v27 firstObject];
  }

  else
  {
    v29 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }

  return v6;
}

id sub_1C6FD8844(void *a1, uint64_t a2)
{
  v4 = [a1 fetchedObjects];
  if (!v4)
  {
    sub_1C755119C();
    sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
    v67 = sub_1C755145C();
    sub_1C754FDFC();

    return 0;
  }

  v5 = v4;
  v82 = a1;
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v88 = sub_1C7550B5C();

  v6 = 0;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC8];
  v9 = (a2 + 40);
  while (v7 != v6)
  {
    v11 = *(v9 - 1);
    v10 = *v9;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v92 = v8;
    v12 = sub_1C6F78124(v11, v10);
    if (__OFADD__(v8[2], (v13 & 1) == 0))
    {
      __break(1u);
LABEL_44:
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
      while (1)
      {
LABEL_50:
        sub_1C7551E4C();
        __break(1u);
LABEL_51:
        sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
      }
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
    if (sub_1C7551A2C())
    {
      v16 = sub_1C6F78124(v11, v10);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_50;
      }

      v14 = v16;
    }

    v8 = v92;
    if (v15)
    {
      *(v92[7] + 8 * v14) = v6;
    }

    else
    {
      v92[(v14 >> 6) + 8] |= 1 << v14;
      v18 = (v8[6] + 16 * v14);
      *v18 = v11;
      v18[1] = v10;
      *(v8[7] + 8 * v14) = v6;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_46;
      }

      v8[2] = v21;
    }

    v9 += 2;
    ++v6;
  }

  v22 = sub_1C6FB6304();
  v23 = 0;
  v85 = MEMORY[0x1E69E7CC8];
  while (v22 != v23)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1CCA5DDD0](v23, v88);
    }

    else
    {
      if (v23 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v24 = *(v88 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_44;
    }

    v27 = sub_1C70CAC04(v24);
    if (!v28)
    {
      goto LABEL_49;
    }

    if (v8[2])
    {
      v29 = sub_1C6F78124(v27, v28);
      v31 = v30;

      if ((v31 & 1) == 0)
      {
        goto LABEL_27;
      }

      v80 = *(v8[7] + 8 * v29);
      v32 = [v25 objectID];
      HIDWORD(v78) = swift_isUniquelyReferenced_nonNull_native();
      v92 = v85;
      v33 = v32;
      sub_1C6FC29E8();
      if (__OFADD__(*(v85 + 16), (v35 & 1) == 0))
      {
        goto LABEL_47;
      }

      v36 = v34;
      v86 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155B8, &qword_1C755EAD8);
      if (sub_1C7551A2C())
      {
        sub_1C6FC29E8();
        v39 = v86;
        if ((v86 & 1) != (v38 & 1))
        {
          goto LABEL_51;
        }

        v36 = v37;
        v40 = v80;
      }

      else
      {
        v40 = v80;
        v39 = v86;
      }

      v42 = v92;
      v85 = v92;
      if (v39)
      {
        *(v92[7] + 8 * v36) = v40;
      }

      else
      {
        v92[(v36 >> 6) + 8] |= 1 << v36;
        *(v42[6] + 8 * v36) = v33;
        *(v42[7] + 8 * v36) = v40;

        v43 = v42[2];
        v20 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v20)
        {
          goto LABEL_48;
        }

        v42[2] = v44;
      }

      v23 = v26;
    }

    else
    {

LABEL_27:
      sub_1C755119C();
      sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
      v41 = sub_1C755145C();
      sub_1C754FDFC();

      ++v23;
    }
  }

  sub_1C739BEA8(v85, v45, v46, v47, v48, v49, v50, v51, v76, v78, v80, v82, v85, v88, v90, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102);
  v92 = v52;
  sub_1C6FD9220(&v92);

  v53 = v92;
  v54 = v92[2];
  if (v54)
  {
    v92 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    v55 = 32;
    do
    {
      v56 = *(v53 + v55);
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v55 += 16;
      --v54;
    }

    while (v54);

    v66 = v92;
  }

  else
  {

    v66 = MEMORY[0x1E69E7CC0];
  }

  sub_1C71BA844(v66, v64, v65, v57, v58, v59, v60, v61, v62, v63, v77, v79, v81, v83, v87, v89, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100);
  v70 = v69;

  v71 = [v84 photoLibrary];
  v72 = sub_1C755068C();
  v74 = v73;
  v75 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  return sub_1C70E7DFC(v70, v71, v72, v74, 0, 0, 0, 0);
}

uint64_t sub_1C6FD8E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = sub_1C755065C();
  v8 = [v6 creationRequestForAssetCollectionWithTitle_];

  if ([a3 count] >= 1)
  {
    [v8 addAssets_];
  }

  v9 = [v8 placeholderForCreatedAssetCollection];
  v10 = [v9 localIdentifier];

  v11 = sub_1C755068C();
  v13 = v12;

  swift_beginAccess();
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
}

uint64_t sub_1C6FD8F68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id static PHAssetCollection.create(albums:in:preserveOrdersInAlbums:reuseFolderIfExisting:in:progressReporter:)(id a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6, uint64_t a7)
{
  v26 = a3;
  v27 = a6;
  v25 = a5;
  v23 = a4;
  v24 = a2;
  v10 = sub_1C754F2FC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v22 - v18);
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2CC();
  if (v7)
  {
    v20 = OUTLINED_FUNCTION_0_5();
    v19(v20, v10);
    v19(v19, v10);
    v19(a7, v10);
  }

  else
  {
    v22 = a1;
    sub_1C6F65BE8(0, &qword_1EC2155B0, 0x1E6978760);
    a1 = static PHCollectionList.folder(with:reuseFolderIfExisting:in:)(v24, v26, v25 & 1, v27);
    sub_1C754F2EC();
    (*(v11 + 32))(v13, v16, v10);
    PHCollectionList.add(albums:preserveOrdersInAlbums:progressReporter:)(v22, v23 & 1, v13);
    (*(v11 + 8))(a7, v10);
  }

  return a1;
}

uint64_t sub_1C6FD9220(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A74();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C6FD928C(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C6FD928C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155C0, &qword_1C755EAE0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C6FD9400(v7, v8, a1, v4);
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
    return sub_1C6FD9390(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C6FD9390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3 + 8);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *(v9 - 1))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        *v9 = *(v9 - 1);
        *(v9 - 1) = v7;
        *(v9 - 2) = v10;
        v9 -= 2;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C6FD9400(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9 + 8);
        v11 = *a3 + 16 * v7;
        v12 = 16 * v7;
        v13 = *(v11 + 8);
        v14 = (v11 + 40);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 2;
          v19 = (v10 < v13) ^ (v18 >= v16);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 16 * v6;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = v23 + v20;
                v26 = *v24;
                v27 = v24[1];
                *v24 = *(v25 - 16);
                *(v25 - 16) = v26;
                *(v25 - 8) = v27;
              }

              ++v22;
              v20 -= 16;
              v12 += 16;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9;
            v30 = v7 - v9;
            do
            {
              v31 = *(v28 + 16 * v9 + 8);
              v32 = v30;
              v33 = v29;
              do
              {
                if (v31 >= *(v33 - 1))
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_111;
                }

                v34 = *v33;
                *v33 = *(v33 - 1);
                *(v33 - 1) = v31;
                *(v33 - 2) = v34;
                v33 -= 2;
              }

              while (!__CFADD__(v32++, 1));
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v80;
      }

      v37 = v8[2];
      v36 = v8[3];
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_1C6FB17EC(v36 > 1, v37 + 1, 1, v8);
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_1C6FD9A08((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C6FD98DC(&v87, *result, a3);
LABEL_89:
}

uint64_t sub_1C6FD98DC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C6FD9A08((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C6FD9A08(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 1) >= *(v4 + 1))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 1) < *(v6 - 1))
    {
      v15 = v6 - 16;
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v15;
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

uint64_t sub_1C6FD9B98(uint64_t a1)
{
  MEMORY[0x1CCA5D040]();
  sub_1C6FB6328();

  return sub_1C7550BEC();
}

void sub_1C6FD9BF0(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = a4 + 64;
  OUTLINED_FUNCTION_11();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  sub_1C75504FC();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = __clz(__rbit64(v8)) | (v12 << 6);
      v14 = *(*(a4 + 48) + 8 * v13);
      v15 = *(a4 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v21[0] = v14;
      v21[1] = v16;
      v22 = v17;
      v18 = v14;
      sub_1C6FDE42C(v16, v17);
      a2(&v23, v21);
      if (v4)
      {
        break;
      }

      v8 &= v8 - 1;

      sub_1C6FDE438(v16, v17);
      v11 = v12;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

    sub_1C6FDE438(v16, v17);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6FD9D4C(uint64_t a1)
{
  v8 = a1;
  OUTLINED_FUNCTION_17_9();
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  if (!v4)
  {
    return v8;
  }

  while (1)
  {
    v7 = *v5;
    v2(&v8, &v7);
    if (v1)
    {
      break;
    }

    ++v5;
    if (!--v4)
    {
      return v8;
    }
  }
}

uint64_t sub_1C6FD9DD4()
{
  OUTLINED_FUNCTION_17_9();
  v2 = 0;
  v10 = v3;
  v5 = *(v4 + 16);
  v6 = v4 + 32;
  while (1)
  {
    if (v5 == v2)
    {
      return v10;
    }

    v7 = *(v6 + 8 * v2);
    v9[0] = v2;
    v9[1] = v7;
    sub_1C75504FC();
    v1(&v10, v9);

    if (v0)
    {
      break;
    }

    ++v2;
  }
}

uint64_t sub_1C6FD9E70()
{
  OUTLINED_FUNCTION_17_9();
  v8 = v2;
  v4 = v3 + 32;
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 40;
    v1(&v8);
    v4 = v6;
    if (v0)
    {
    }
  }

  return v8;
}

uint64_t sub_1C6FD9EEC(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v6 = a4 + 64;
  OUTLINED_FUNCTION_11();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  result = sub_1C75504FC();
  v13 = 0;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_6:
      v15 = __clz(__rbit64(v9)) | (v14 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v17 = v16[1];
      v18 = *(*(a4 + 56) + 8 * v15);
      v20[0] = *v16;
      v20[1] = v17;
      v20[2] = v18;
      sub_1C75504FC();
      sub_1C75504FC();
      a2(&v21, v20);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v13 = v14;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v21;
      }

      v9 = *(v6 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6FDA040()
{
  OUTLINED_FUNCTION_17_9();
  v9 = v2;
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  if (!v4)
  {
    return v9;
  }

  while (1)
  {
    v6 = *v5;
    v8[0] = *(v5 - 1);
    v8[1] = v6;
    sub_1C75504FC();
    v1(&v9, v8);
    if (v0)
    {
      break;
    }

    v5 += 2;
    if (!--v4)
    {
      return v9;
    }
  }
}

void sub_1C6FDA0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v8 = *(a1 + 16);
  if (v8)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v8, 0, a4, a5, a6, a7);
    v46 = v49;
    v10 = sub_1C70D4544();
    v12 = v11;
    v13 = 0;
    v14 = v7 + 64;
    v40 = v11;
    v41 = v8;
    v39 = v7 + 72;
    v42 = v7 + 64;
    v43 = v7;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
    {
      v15 = v10 >> 6;
      if ((*(v14 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_45;
      }

      if (*(v7 + 36) != v12)
      {
        goto LABEL_46;
      }

      v44 = v9;
      v45 = v13 + 1;
      v16 = *(*(v7 + 48) + v10);
      sub_1C75504FC();
      v17 = 0xE400000000000000;
      v18 = 1701736302;
      switch(v16)
      {
        case 1:
          v17 = 0xE600000000000000;
          v19 = 1936876912;
          goto LABEL_25;
        case 2:
          v18 = 0x67416E6F73726570;
          v21 = 0x6570795465;
          goto LABEL_16;
        case 3:
          v18 = 1702125924;
          break;
        case 4:
          v17 = 0xE900000000000079;
          v18 = 0x6144664F74726170;
          break;
        case 5:
          v17 = 0xEA00000000006B65;
          v18 = 0x6557664F74726170;
          break;
        case 6:
          v17 = 0xE600000000000000;
          v19 = 1935762803;
LABEL_25:
          v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v17 = 0xE800000000000000;
          v20 = 1633906540;
          goto LABEL_20;
        case 8:
          v18 = 0x4C636972656E6567;
          v17 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v18 = 1952540791;
          break;
        case 10:
          v18 = 0x764563696C627570;
          v17 = 0xEB00000000746E65;
          break;
        case 11:
          v18 = 0x6C616E6F73726570;
          v21 = 0x746E657645;
LABEL_16:
          v17 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v18 = 0x746954636973756DLL;
          v17 = 0xEA0000000000656CLL;
          break;
        case 13:
          v17 = 0xEB00000000747369;
          v18 = 0x747241636973756DLL;
          break;
        case 14:
          v17 = 0xEA00000000006572;
          v18 = 0x6E6547636973756DLL;
          break;
        case 15:
          v18 = 1685024621;
          break;
        case 16:
          v17 = 0xE800000000000000;
          v20 = 1634891108;
LABEL_20:
          v18 = v20 | 0x6E6F697400000000;
          break;
        case 17:
          v17 = 0xE600000000000000;
          v18 = 0x706972547369;
          break;
        case 18:
          v18 = 0x6D69546C6C417369;
          v17 = 0xE900000000000065;
          break;
        case 19:
          v17 = 0xE900000000000072;
          v18 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v47 = v18;
      v48 = v17;
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v22 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v22);

      v27 = v46;
      v29 = *(v46 + 16);
      v28 = *(v46 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v23, v24, v25, v26);
        v27 = v46;
      }

      *(v27 + 16) = v29 + 1;
      v30 = v27 + 16 * v29;
      *(v30 + 32) = v47;
      *(v30 + 40) = v48;
      v7 = v43;
      v31 = 1 << *(v43 + 32);
      if (v10 >= v31)
      {
        goto LABEL_47;
      }

      v14 = v42;
      v32 = *(v42 + 8 * v15);
      if ((v32 & (1 << v10)) == 0)
      {
        goto LABEL_48;
      }

      v46 = v27;
      if (*(v43 + 36) != v12)
      {
        goto LABEL_49;
      }

      v33 = v32 & (-2 << (v10 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = v15 << 6;
        v35 = v15 + 1;
        v36 = (v39 + 8 * v15);
        while (v35 < (v31 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            sub_1C6F9ED50(v10, v12, v44 & 1);
            v31 = __clz(__rbit64(v37)) + v34;
            goto LABEL_42;
          }
        }

        sub_1C6F9ED50(v10, v12, v44 & 1);
      }

LABEL_42:
      v9 = 0;
      v10 = v31;
      v12 = v40;
      v13 = v45;
      if (v45 == v41)
      {
        return;
      }
    }

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
  }
}

uint64_t QueryAssetsRetrievalProcessor.performWhatQueryTokenAssetsRetrieval(with:eventRecorder:diagnosticContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 744) = v4;
  *(v5 + 736) = a4;
  *(v5 + 728) = a3;
  *(v5 + 720) = a1;
  *(v5 + 752) = type metadata accessor for QueryTokenCategoryType(0);
  *(v5 + 760) = swift_task_alloc();
  v7 = sub_1C754F38C();
  *(v5 + 768) = v7;
  *(v5 + 776) = *(v7 - 8);
  *(v5 + 784) = swift_task_alloc();
  *(v5 + 792) = *(a2 + 8);
  *(v5 + 808) = *(a2 + 32);
  *(v5 + 920) = *(a2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C6FDA6B8, 0, 0);
}

void sub_1C6FDA6B8()
{
  v158 = v0;
  v1 = v0[99];
  v2 = v0[91];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  v3 = v2[3];
  v4 = v2;
  v5 = v0;
  __swift_project_boxed_opaque_existential_1(v4, v3);
  sub_1C754F15C();
  v151 = v1;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x1E69E7CC8];
  v142 = v0;
  v148 = v6;
  v8 = 0;
  if (v6)
  {
    v140 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v0[101];
    v12 = (v0[99] + 32);
    v13 = MEMORY[0x1E69E7CC8];
    v138 = (v11 != 0) & v5[115];
    v143 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v10 >= *(v151 + 16))
      {
        goto LABEL_120;
      }

      v14 = v5[95];
      memcpy(v5 + 21, v12, 0x78uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C755BAB0;
      memcpy((inited + 32), v5 + 21, 0x78uLL);
      *(swift_task_alloc() + 16) = v14;
      sub_1C6FCA6E4((v5 + 21), (v5 + 36));
      sub_1C6FCA6E4((v5 + 21), (v5 + 51));
      v16 = sub_1C707351C();
      swift_setDeallocating();
      sub_1C6FDC98C();

      sub_1C6FDD4EC(v14);
      if (v16)
      {
        break;
      }

      sub_1C6FDD548((v5 + 21));
LABEL_25:
      v10 = (v10 + 1);
      v12 += 120;
      if (v148 == v10)
      {
        v32 = v143;
        v7 = MEMORY[0x1E69E7CC8];
        v6 = v140;
        goto LABEL_28;
      }
    }

    v154 = v8;
    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    sub_1C75504FC();
    v17 = sub_1C7073450();
    if (!v138)
    {
      sub_1C6F6E5B4(v9, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v157 = v13;
      sub_1C6FC2A70();
      if (__OFADD__(*(v13 + 16), (v27 & 1) == 0))
      {
        goto LABEL_123;
      }

      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318, &unk_1C755CC10);
      v13 = v157;
      if (sub_1C7551A2C())
      {
        sub_1C6FC2A70();
        if ((v28 & 1) != (v29 & 1))
        {
LABEL_107:
          OUTLINED_FUNCTION_38_4();

          sub_1C7551E4C();
          return;
        }
      }

      if (v28)
      {
        sub_1C6FDD548((v5 + 21));
      }

      else
      {
        sub_1C6FCABD4();
      }

      v31 = v17;
      MEMORY[0x1CCA5D040]();
      OUTLINED_FUNCTION_40_10();
      sub_1C7550BEC();

      v9 = sub_1C6FC0A88;
      goto LABEL_24;
    }

    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    v18 = v17;
    v19 = sub_1C754FEEC();
    v20 = sub_1C75511BC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_41_0();
      v22 = swift_slowAlloc();
      *v21 = 138477827;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Safety enforced metadata retrieval for what token: '%{private}@'", v21, 0xCu);
      sub_1C6FC15D8(v22);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    sub_1C6F6E5B4(v140, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v157 = v143;
    sub_1C6FC2A70();
    if (__OFADD__(*(v143 + 16), (v24 & 1) == 0))
    {
      goto LABEL_122;
    }

    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215318, &unk_1C755CC10);
    v143 = v157;
    if (sub_1C7551A2C())
    {
      v5 = v142;
      sub_1C6FC2A70();
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_107;
      }

      if ((v25 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v5 = v142;
      if ((v25 & 1) == 0)
      {
LABEL_12:
        sub_1C6FCABD4();
LABEL_21:
        v30 = v18;
        MEMORY[0x1CCA5D040]();
        OUTLINED_FUNCTION_40_10();
        sub_1C7550BEC();

        v140 = sub_1C6FC0A88;
LABEL_24:
        v8 = v154;
        goto LABEL_25;
      }
    }

    sub_1C6FDD548((v5 + 21));
    goto LABEL_21;
  }

  v9 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v32 = MEMORY[0x1E69E7CC8];
LABEL_28:
  v5[105] = v32;
  v5[104] = v13;
  v5[103] = v9;
  v5[102] = v6;
  v5[89] = v7;
  v33 = sub_1C75504FC();
  sub_1C6FDE0B8(v33);
  v5[106] = v34;

  if (*(v32 + 16))
  {
    v35 = v32 + 64;
    v36 = (v5 + 81);
    OUTLINED_FUNCTION_10();
    v39 = v38 & v37;
    v41 = (63 - v40) >> 6;
    v144 = v32;
    swift_bridgeObjectRetain_n();
    v42 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v139 = v41;
    v141 = v32 + 64;
    while (1)
    {
      v5[107] = v43;
      if (!v39)
      {
        while (1)
        {
          v44 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v44 >= v41)
          {

            *(v5 + 922) = 0;
            sub_1C6FDC2F0((v5 + 71));
            v68 = swift_task_alloc();
            v5[108] = v68;
            *v68 = v5;
            v68[1] = sub_1C6FDB57C;
            goto LABEL_104;
          }

          v39 = *(v35 + 8 * v44);
          ++v42;
          if (v39)
          {
            v42 = v44;
            goto LABEL_35;
          }
        }

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

LABEL_35:
      v45 = *(*(v144 + 56) + ((v42 << 9) | (8 * __clz(__rbit64(v39)))));
      v46 = v45 >> 62;
      v152 = v45;
      v155 = v8;
      if (v45 >> 62)
      {
        v47 = sub_1C75516BC();
      }

      else
      {
        v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v48 = v43 >> 62;
      if (v43 >> 62)
      {
        v49 = sub_1C75516BC();
      }

      else
      {
        v49 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v149 = v47;
      v50 = __OFADD__(v49, v47);
      v51 = v49 + v47;
      if (v50)
      {
        goto LABEL_124;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v48)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_26_4();
      if (v52 < v51)
      {
        goto LABEL_46;
      }

LABEL_47:
      v39 &= v39 - 1;
      v54 = *(v53 + 16);
      v55 = v52 - v54;
      v56 = v53 + 8 * v54;
      v146 = v53;
      if (v46)
      {
        v58 = sub_1C75516BC();
        if (!v58)
        {
          goto LABEL_61;
        }

        v59 = v58;
        v60 = sub_1C75516BC();
        if (v55 < v60)
        {
          goto LABEL_130;
        }

        if (v59 < 1)
        {
          goto LABEL_131;
        }

        v134 = v60;
        v136 = v43;
        v61 = v56 + 32;
        sub_1C6FDE444(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0);
        for (i = 0; i != v59; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
          v63 = sub_1C6FDD09C(v36, i, v152);
          v65 = *v64;
          v63(v36, 0);
          *(v61 + 8 * i) = v65;
        }

        v43 = v136;
        v57 = v134;
LABEL_57:

        v35 = v141;
        v5 = v142;
        v8 = v155;
        v41 = v139;
        if (v57 < v149)
        {
          goto LABEL_125;
        }

        if (v57 > 0)
        {
          v66 = *(v146 + 16);
          v50 = __OFADD__(v66, v57);
          v67 = v66 + v57;
          if (v50)
          {
            goto LABEL_126;
          }

          *(v146 + 16) = v67;
        }
      }

      else
      {
        v57 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v57)
        {
          if (v55 < v57)
          {
            goto LABEL_129;
          }

          sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
          swift_arrayInitWithCopy();
          goto LABEL_57;
        }

LABEL_61:

        v35 = v141;
        v5 = v142;
        v8 = v155;
        v41 = v139;
        if (v149 > 0)
        {
          goto LABEL_125;
        }
      }
    }

    if (v48)
    {
LABEL_45:
      sub_1C75516BC();
      OUTLINED_FUNCTION_37_8();
    }

LABEL_46:
    v43 = sub_1C75518CC();
    OUTLINED_FUNCTION_26_4();
    goto LABEL_47;
  }

  v69 = v5[104];
  if (!*(v69 + 16))
  {

    v105 = v5;
    v106 = v5[89];
    if (*(v106 + 16))
    {
      v107 = *(type metadata accessor for QueryAssetsRetrievalProcessor(0) + 28);
      sub_1C75504FC();
      v108 = sub_1C754FEEC();
      v109 = sub_1C75511BC();
      v110 = OUTLINED_FUNCTION_32(v109);
      v111 = v105[100];
      if (v110)
      {
        OUTLINED_FUNCTION_41_0();
        v112 = OUTLINED_FUNCTION_17_6();
        v157 = v112;
        *v107 = 136315138;
        sub_1C6FDA0E0(v111, v113, v114, v115, v116, v117, v118);
        v120 = v119;

        v121 = MEMORY[0x1CCA5D090](v120, MEMORY[0x1E69E6158]);
        v123 = v122;

        v124 = sub_1C6F765A4(v121, v123, &v157);

        *(v107 + 4) = v124;
        OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v125, v126, "Add assets to what query tokens, scoped with %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v112);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      OUTLINED_FUNCTION_33_5();
      v128 = v142[90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
      sub_1C6FDE390();
      v129 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1Tm(v142 + 66);

      *v128 = v106;
      v128[1] = v129;
    }

    else
    {
      OUTLINED_FUNCTION_33_5();
      v127 = v105[90];
      OUTLINED_FUNCTION_29_4();

      *v127 = 0;
      v127[1] = 0;
    }

    OUTLINED_FUNCTION_19_8();
    v130 = OUTLINED_FUNCTION_15_1();
    v131(v130);
    OUTLINED_FUNCTION_35_4();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_38_4();

    __asm { BRAA            X1, X16 }
  }

  v70 = v69 + 64;
  v71 = (v5 + 85);
  OUTLINED_FUNCTION_10();
  v74 = v73 & v72;
  v76 = (63 - v75) >> 6;
  swift_bridgeObjectRetain_n();
  v77 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v145 = v76;
  v147 = v69 + 64;
  v135 = v69;
  while (1)
  {
    v5[111] = v78;
    if (!v74)
    {
      break;
    }

LABEL_73:
    v80 = *(*(v69 + 56) + ((v77 << 9) | (8 * __clz(__rbit64(v74)))));
    if (v80 >> 62)
    {
      v81 = sub_1C75516BC();
    }

    else
    {
      v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v82 = v78 >> 62;
    v156 = v8;
    if (v78 >> 62)
    {
      v83 = sub_1C75516BC();
    }

    else
    {
      v83 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v84 = v83 + v81;
    if (__OFADD__(v83, v81))
    {
      goto LABEL_127;
    }

    sub_1C75504FC();
    v153 = v81;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v82)
      {
LABEL_83:
        sub_1C75516BC();
        OUTLINED_FUNCTION_37_8();
      }

LABEL_84:
      v78 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_85;
    }

    if (v82)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_26_4();
    if (v85 < v84)
    {
      goto LABEL_84;
    }

LABEL_85:
    v74 &= v74 - 1;
    v87 = *(v86 + 16);
    v88 = v85 - v87;
    v89 = v86 + 8 * v87;
    v150 = v86;
    if (v80 >> 62)
    {
      v92 = sub_1C75516BC();
      if (!v92)
      {
        goto LABEL_99;
      }

      v93 = v92;
      v94 = sub_1C75516BC();
      if (v88 < v94)
      {
        goto LABEL_134;
      }

      if (v93 < 1)
      {
LABEL_135:
        __break(1u);
        return;
      }

      v137 = v94;
      v95 = v89 + 32;
      sub_1C6FDE444(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0);
      for (j = 0; j != v93; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
        v97 = sub_1C6FDD09C(v71, j, v80);
        v99 = OUTLINED_FUNCTION_22_7(v97, v98);
        (v78)(v71, 0);
        *(v95 + 8 * j) = v99;
      }

      v69 = v135;
      v91 = v137;
LABEL_95:

      v5 = v142;
      v76 = v145;
      v8 = v156;
      v70 = v147;
      if (v91 < v153)
      {
        goto LABEL_128;
      }

      if (v91 > 0)
      {
        v100 = *(v150 + 16);
        v50 = __OFADD__(v100, v91);
        v101 = v100 + v91;
        if (v50)
        {
          goto LABEL_132;
        }

        *(v150 + 16) = v101;
      }
    }

    else
    {
      v90 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v90)
      {
        if (v88 < v90)
        {
          goto LABEL_133;
        }

        v91 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        swift_arrayInitWithCopy();
        goto LABEL_95;
      }

LABEL_99:

      v5 = v142;
      v76 = v145;
      v8 = v156;
      v70 = v147;
      if (v153 > 0)
      {
        goto LABEL_128;
      }
    }
  }

  while (1)
  {
    v79 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      goto LABEL_121;
    }

    if (v79 >= v76)
    {
      break;
    }

    v74 = *(v70 + 8 * v79);
    ++v77;
    if (v74)
    {
      v77 = v79;
      goto LABEL_73;
    }
  }

  *(v5 + 923) = 2;
  sub_1C6FDC2F0((v5 + 76));
  v102 = swift_task_alloc();
  v5[112] = v102;
  *v102 = v5;
  OUTLINED_FUNCTION_12_9(v102);
LABEL_104:
  OUTLINED_FUNCTION_38_4();

  sub_1C71074E0();
}

uint64_t sub_1C6FDB57C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 872) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 568));
    v5 = sub_1C6FDC178;
  }

  else
  {
    *(v4 + 880) = a1;
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 568));

    v5 = sub_1C6FDB6D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C6FDB6D0()
{
  v83 = v0;
  v1 = *(v0 + 880);
  v2 = *(v0 + 840);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FD9BF0(MEMORY[0x1E69E7CC8], sub_1C6FDE358, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, (v0 + 712));

  v8 = *(v0 + 832);
  if (!*(v8 + 16))
  {

    v43 = *(v0 + 712);
    if (*(v43 + 16))
    {
      v44 = *(v0 + 744);
      type metadata accessor for QueryAssetsRetrievalProcessor(0);
      sub_1C75504FC();
      v45 = sub_1C754FEEC();
      v46 = sub_1C75511BC();
      v47 = OUTLINED_FUNCTION_32(v46);
      v48 = *(v0 + 800);
      if (v47)
      {
        OUTLINED_FUNCTION_41_0();
        v49 = OUTLINED_FUNCTION_17_6();
        v82 = v49;
        *v44 = 136315138;
        sub_1C6FDA0E0(v48, v50, v51, v52, v53, v54, v55);
        v57 = v56;

        v58 = MEMORY[0x1CCA5D090](v57, MEMORY[0x1E69E6158]);
        v60 = v59;

        v61 = sub_1C6F765A4(v58, v60, &v82);

        *(v44 + 4) = v61;
        OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v62, v63, "Add assets to what query tokens, scoped with %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v65 = *(v0 + 720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
      sub_1C6FDE390();
      v66 = sub_1C75504DC();
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 528));

      *v65 = v43;
      v65[1] = v66;
    }

    else
    {
      v64 = *(v0 + 720);
      OUTLINED_FUNCTION_29_4();

      *v64 = 0;
      v64[1] = 0;
    }

    v67 = *(v0 + 824);
    v68 = *(v0 + 816);
    v69 = *(v0 + 784);
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    __swift_project_boxed_opaque_existential_1(*(v0 + 728), *(*(v0 + 728) + 24));
    sub_1C754F1AC();
    (*(v70 + 8))(v69, v71);
    sub_1C6F6E5B4(v68, 0);
    sub_1C6F6E5B4(v67, 0);

    OUTLINED_FUNCTION_25();

    v72();
    return;
  }

  v9 = v8 + 64;
  v73 = v0 + 680;
  OUTLINED_FUNCTION_10();
  v12 = v11 & v10;
  v14 = (63 - v13) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  v77 = v8 + 64;
  v78 = v8;
  v76 = v14;
  v74 = v0;
  while (1)
  {
    *(v0 + 888) = v16;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v18 = *(*(v8 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v12)))));
    v19 = v18 >> 62;
    if (v18 >> 62)
    {
      v20 = sub_1C75516BC();
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = v16 >> 62;
    if (v16 >> 62)
    {
      v22 = sub_1C75516BC();
    }

    else
    {
      v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v22 + v20;
    if (__OFADD__(v22, v20))
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    sub_1C75504FC();
    v81 = v18;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v21)
      {
LABEL_19:
        sub_1C75516BC();
        OUTLINED_FUNCTION_37_8();
      }

LABEL_20:
      v80 = sub_1C75518CC();
      OUTLINED_FUNCTION_26_4();
      goto LABEL_21;
    }

    if (v21)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_26_4();
    if (v24 < v23)
    {
      goto LABEL_20;
    }

    v80 = v16;
LABEL_21:
    v12 &= v12 - 1;
    v26 = *(v25 + 16);
    v27 = v24 - v26;
    v28 = v25 + 8 * v26;
    v79 = v25;
    if (v19)
    {
      v31 = sub_1C75516BC();
      if (!v31)
      {
        goto LABEL_35;
      }

      v32 = v31;
      v33 = sub_1C75516BC();
      if (v27 < v33)
      {
        goto LABEL_56;
      }

      if (v32 < 1)
      {
        goto LABEL_57;
      }

      v75 = v33;
      v34 = v28 + 32;
      sub_1C6FDE444(&qword_1EC2155C8, &qword_1EC215050, &unk_1C755EAB0);
      for (i = 0; i != v32; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
        v36 = sub_1C6FDD09C(v73, i, v81);
        v38 = OUTLINED_FUNCTION_22_7(v36, v37);
        (v81)(v73, 0);
        *(v34 + 8 * i) = v38;
      }

      v0 = v74;
      v30 = v75;
LABEL_31:

      v16 = v80;
      v9 = v77;
      v8 = v78;
      v14 = v76;
      if (v30 < v20)
      {
        goto LABEL_53;
      }

      if (v30 > 0)
      {
        v39 = *(v79 + 16);
        v40 = __OFADD__(v39, v30);
        v41 = v39 + v30;
        if (v40)
        {
          goto LABEL_54;
        }

        *(v79 + 16) = v41;
      }
    }

    else
    {
      v29 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        if (v27 < v29)
        {
          goto LABEL_55;
        }

        v30 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
        swift_arrayInitWithCopy();
        goto LABEL_31;
      }

LABEL_35:

      v16 = v80;
      v9 = v77;
      v8 = v78;
      v14 = v76;
      if (v20 > 0)
      {
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v17 >= v14)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_8;
    }
  }

  *(v0 + 923) = 2;
  sub_1C6FDC2F0(v0 + 608);
  v42 = swift_task_alloc();
  *(v0 + 896) = v42;
  *v42 = v0;
  OUTLINED_FUNCTION_12_9(v42);

  sub_1C71074E0();
}

uint64_t sub_1C6FDBD64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 904) = v1;

  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 608));

    v5 = sub_1C6FDC234;
  }

  else
  {
    *(v4 + 912) = a1;
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + 608));

    v5 = sub_1C6FDBEF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C6FDBEF0()
{
  v37 = v0;
  v1 = v0[114];
  v2 = v0[104];
  v3 = v0[93];
  v4 = v0[92];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_1C6FD9BF0(MEMORY[0x1E69E7CC8], sub_1C6FDE374, v5, v1);
  v7 = v6;

  sub_1C7108C18(v2, v7, v0 + 89);

  v8 = v0[89];
  if (*(v8 + 16))
  {
    v9 = *(type metadata accessor for QueryAssetsRetrievalProcessor(0) + 28);
    sub_1C75504FC();
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    v12 = OUTLINED_FUNCTION_32(v11);
    v13 = v0[100];
    if (v12)
    {
      OUTLINED_FUNCTION_41_0();
      v14 = OUTLINED_FUNCTION_17_6();
      v36 = v14;
      *v9 = 136315138;
      sub_1C6FDA0E0(v13, v15, v16, v17, v18, v19, v20);
      v22 = v21;

      v23 = MEMORY[0x1CCA5D090](v22, MEMORY[0x1E69E6158]);
      v25 = v24;

      v26 = sub_1C6F765A4(v23, v25, &v36);

      *(v9 + 4) = v26;
      OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v27, v28, "Add assets to what query tokens, scoped with %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    OUTLINED_FUNCTION_33_5();
    v30 = v0[90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155D0, &qword_1C7580740);
    sub_1C6FDE390();
    v31 = sub_1C75504DC();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 66);

    *v30 = v8;
    v30[1] = v31;
  }

  else
  {
    OUTLINED_FUNCTION_33_5();
    v29 = v0[90];
    OUTLINED_FUNCTION_29_4();

    *v29 = 0;
    v29[1] = 0;
  }

  OUTLINED_FUNCTION_19_8();
  v32 = OUTLINED_FUNCTION_15_1();
  v33(v32);
  OUTLINED_FUNCTION_35_4();

  OUTLINED_FUNCTION_25();

  return v34();
}

uint64_t sub_1C6FDC178()
{
  v3 = *(v0 + 832);
  OUTLINED_FUNCTION_29_4();

  OUTLINED_FUNCTION_18_4();
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_34_5();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C6FDC234()
{
  v3 = *(v0 + 832);
  OUTLINED_FUNCTION_29_4();

  OUTLINED_FUNCTION_18_4();
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_34_5();

  v4 = *(v0 + 8);

  return v4();
}

void sub_1C6FDC2F0(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(a1 + 32) = &off_1F46ACFD0;
  v2 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  *a1 = 4;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3 == 0;
}

void sub_1C6FDC38C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' WHAT token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();

      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0x7420544148572027, 0xEC0000006E656B6FLL);
      sub_1C7161CDC(0xD000000000000024, 0x80000001C7597F90);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C6FDC658(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Complete retrieval failed for '%{private}@' WHAT token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();

      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0x7420544148572027, 0xEC0000006E656B6FLL);
      sub_1C7161CDC(0xD000000000000024, 0x80000001C7597F60);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

uint64_t sub_1C6FDC93C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDC98C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDC9DC()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCA2C()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCA68()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCAA8()
{
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCB94(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCC10(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_9_7();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6FDCEE0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C75516BC();
  OUTLINED_FUNCTION_37_8();
LABEL_9:
  result = sub_1C75518CC();
  *v2 = result;
  return result;
}

uint64_t sub_1C6FDD024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1C6FDD09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330();
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_27_6();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C6FDD0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330();
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_16_0();
}

void (*sub_1C6FDD164(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1C7095B0C(a3);
  sub_1C6FB6330();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1CCA5DDD0](a2, a3);
  }

  *a1 = v7;
  return sub_1C6FDE6E4;
}

uint64_t sub_1C6FDD1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330();
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_27_6();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C6FDD258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_3_8(a1, a2, a3);
  sub_1C7095B0C(v5);
  OUTLINED_FUNCTION_4_5();
  sub_1C6FB6330();
  if (v4)
  {
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1C6FDD4EC(uint64_t a1)
{
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  (*(*(TokenCategoryType - 8) + 8))(a1, TokenCategoryType);
  return a1;
}

void sub_1C6FDE0B8(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    return;
  }

  v1 = a1;
  v2 = a1 + 64;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v8 = sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v11 = MEMORY[0x1E69E7CD0];
  v31 = v8;
  if (v5)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_3:
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v12 >= v7)
    {

      return;
    }

    v5 = *(v2 + 8 * v12);
    ++v9;
  }

  while (!v5);
  v9 = v12;
  while (1)
  {
LABEL_7:
    v13 = *(*(v1 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    if ((v10 & 1) == 0)
    {
      sub_1C75504FC();
      goto LABEL_13;
    }

    v14 = v11[32];
    v15 = v14 & 0x3F;
    v16 = ((1 << v14) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = sub_1C75504FC();
    if (v15 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        swift_slowAlloc();
        sub_1C75504FC();
        sub_1C75504FC();
        OUTLINED_FUNCTION_36_3();
        v29 = sub_1C70A9074(v25, v26, v27, v28);
        v23 = v16;
        if (v16)
        {
          goto LABEL_22;
        }

        v24 = v29;

        swift_bridgeObjectRelease_n();
        OUTLINED_FUNCTION_109();
        goto LABEL_11;
      }
    }

    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C71FAC38(0, v16, &v30 - ((8 * v16 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_36_3();
    sub_1C70A9104(v18, v19, v20, v21);
    v23 = v16;
    if (v16)
    {
      break;
    }

    v24 = v22;

LABEL_11:
    v13 = v24;
    v1 = v31;
LABEL_13:
    v5 &= v5 - 1;

    v10 = 1;
    v11 = v13;
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  swift_willThrow();

  __break(1u);
LABEL_22:

  OUTLINED_FUNCTION_109();
  __break(1u);
}

unint64_t sub_1C6FDE390()
{
  result = qword_1EDD0C918;
  if (!qword_1EDD0C918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryToken, &type metadata for QueryToken, v0, v1);
    atomic_store(result, &qword_1EDD0C918);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return OUTLINED_FUNCTION_20_10(a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_1C6FDE42C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1C75504FC();
  }
}

void sub_1C6FDE438(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1C6FDE444(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C6FDE498(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = 0;
  v3 = (a1 + 32);
  v4 = MEMORY[0x1E69E7CD0];
  while (1)
  {
    v5 = *v3;
    if ((v2 & 1) == 0)
    {
      sub_1C75504FC();
      goto LABEL_8;
    }

    v6 = v4[32];
    v7 = v6 & 0x3F;
    v8 = ((1 << v6) + 63) >> 6;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = sub_1C75504FC();
    if (v7 <= 0xD)
    {
      break;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      break;
    }

    swift_slowAlloc();
    sub_1C75504FC();
    sub_1C75504FC();
    v17 = OUTLINED_FUNCTION_30_6();
    v21 = sub_1C70A9074(v17, v18, v19, v20);
    v15 = v8;
    if (v8)
    {
      goto LABEL_15;
    }

    v22 = v21;

    swift_bridgeObjectRelease_n();
    OUTLINED_FUNCTION_109();
    v5 = v22;
LABEL_8:

    ++v3;
    --v1;
    v2 = 1;
    v4 = v5;
    if (!v1)
    {
      return;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  sub_1C71FAC38(0, v8, v23 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  v10 = OUTLINED_FUNCTION_30_6();
  sub_1C70A9104(v10, v11, v12, v13);
  v15 = v8;
  if (!v8)
  {
    v16 = v14;

    v5 = v16;
    goto LABEL_8;
  }

  swift_willThrow();

  __break(1u);
LABEL_15:

  OUTLINED_FUNCTION_109();
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  sub_1C6F6E5B4(v1, 0);
  sub_1C6F6E5B4(v0, 0);
}

uint64_t OUTLINED_FUNCTION_40_10()
{

  return sub_1C6FB6328();
}

_BYTE *storeEnumTagSinglePayload for MessagesBackdrop(_BYTE *result, int a2, int a3)
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

uint64_t FreeformStoryGeneration.Montage.Curated.Story.elements.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 24), 0x130uLL);
  memcpy(a1, (v1 + 24), 0x130uLL);
  return sub_1C6FDE884(__dst, v4);
}

uint64_t FreeformStoryGeneration.Montage.Curated.Story.completion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[22];
  v7[0] = v1[21];
  v7[1] = v2;
  v4 = v1[24];
  v8 = v1[23];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C6FDE928(v7, &v6);
}

uint64_t FreeformStoryGeneration.Montage.Curated.Story.musicCuration.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  OUTLINED_FUNCTION_0_7();
  return sub_1C6FE0D68(v1 + v3, a1);
}

uint64_t FreeformStoryGeneration.Montage.Curated.Story.init(identifier:type:elements:chapters:completion:keyAsset:musicCuration:)@<X0>(void *__src@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, char *a4@<X2>, uint64_t a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *a4;
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = v14;
  memcpy((a9 + 24), __src, 0x130uLL);
  *(a9 + 328) = a5;
  v15 = a6[1];
  *(a9 + 336) = *a6;
  *(a9 + 352) = v15;
  v16 = a6[3];
  *(a9 + 368) = a6[2];
  *(a9 + 384) = v16;
  *(a9 + 400) = a7;
  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  OUTLINED_FUNCTION_0_7();
  return sub_1C6FE0EE8(a8, a9 + v17);
}

void sub_1C6FDEB00(uint64_t a1)
{
  sub_1C6FDEBCC();
  if (v1 <= 0x3F)
  {
    sub_1C6FDEC1C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for StoryMusicCuration(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C6FDEBCC()
{
  if (!qword_1EDD06B28)
  {
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06B28);
    }
  }
}

unint64_t sub_1C6FDEC1C()
{
  result = qword_1EDD0FA70;
  if (!qword_1EDD0FA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FA70);
  }

  return result;
}

uint64_t sub_1C6FDECA8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoryGenerationSession(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FreeformStoryGenerator(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C6FDED5C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC2156A0);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C6FDEDD8()
{
  OUTLINED_FUNCTION_42();
  v1[315] = v0;
  v1[314] = v2;
  v1[313] = v3;
  v1[312] = v4;
  v1[311] = v5;
  v1[316] = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  v1[317] = swift_task_alloc();
  type metadata accessor for StoryMusicCuration(0);
  v1[318] = swift_task_alloc();
  v1[319] = sub_1C754F2FC();
  OUTLINED_FUNCTION_15_3();
  v1[320] = v6;
  v1[321] = swift_task_alloc();
  v1[322] = swift_task_alloc();
  v1[323] = swift_task_alloc();
  v1[324] = swift_task_alloc();
  v1[325] = sub_1C754F38C();
  OUTLINED_FUNCTION_15_3();
  v1[326] = v7;
  v1[327] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C6FDEF74()
{
  v1 = *(v0 + 2504);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 2592);
  v39 = *(v0 + 2576);
  v41 = *(v0 + 2552);
  v3 = *(v0 + 2520);
  v35 = v3;
  v36 = *(v0 + 2560);
  v37 = *(v0 + 2496);
  __swift_project_boxed_opaque_existential_1(*(v0 + 2504), v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  *(v0 + 2272) = 5;
  *(v0 + 2280) = 0x3F9EB851EB851EB8;
  *(v0 + 2288) = xmmword_1C755EB70;
  *(v0 + 2304) = xmmword_1C755EB70;
  *(v0 + 2320) = 0x3F847AE147AE147BLL;
  v4 = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  v5 = *(v3 + *(v4 + 28));
  *(v0 + 2624) = v5;
  v6 = v5 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  *(v0 + 2448) = *v6;
  *(v0 + 2456) = v8;
  *(v0 + 2464) = v9;
  type metadata accessor for FreeformStoryKeyAssetElector(0);
  swift_allocObject();
  v10 = v7;

  *(v0 + 2632) = FreeformStoryKeyAssetElector.init(configuration:storyPhotoLibraryContext:)((v0 + 2272), (v0 + 2448));
  v11 = *(v4 + 24);
  *(v0 + 2404) = v11;
  v12 = *(v36 + 32);
  v12(v39, v2, v41);
  v13 = *(v37 + 368);
  memcpy((v0 + 16), (v37 + 24), 0x130uLL);
  memcpy((v0 + 320), (v37 + 24), 0x130uLL);
  sub_1C6FDE884(v0 + 16, v0 + 624);
  sub_1C7246CB8(v13, (v0 + 320), v35 + v11, (v0 + 2328), v39, (v0 + 2368));
  memcpy((v0 + 1232), (v0 + 320), 0x130uLL);
  sub_1C6FE0DC0(v0 + 1232);
  v23 = *(v0 + 2368);
  *(v0 + 2640) = v23;
  v24 = *(v0 + 2376);
  *(v0 + 2648) = v24;
  v25 = *(v0 + 2384);
  *(v0 + 2656) = v25;
  v26 = *(v0 + 2392);
  *(v0 + 2664) = v26;
  v27 = *(v0 + 2400);
  *(v0 + 2401) = v27;
  if (v23)
  {
    v28 = *(v0 + 2584);
    v29 = *(v0 + 2568);
    v30 = *(v0 + 2552);
    *(v0 + 2408) = v23;
    *(v0 + 2416) = v24;
    *(v0 + 2424) = v25;
    *(v0 + 2432) = v26;
    *(v0 + 2440) = v27;
    v12(v29, v28, v30);
    v31 = swift_task_alloc();
    *(v0 + 2672) = v31;
    *v31 = v0;
    v31[1] = sub_1C6FDF4B8;
    v32 = *(v0 + 2568);
    v33 = *(v0 + 2496);

    return sub_1C6FE0114(v33, v0 + 2408, v0 + 2328, v32);
  }

  else
  {
    sub_1C6FE0D14();
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 2;
    *(v34 + 24) = 12;
    swift_willThrow();
    v14 = *(v0 + 2616);
    v15 = *(v0 + 2608);
    v16 = *(v0 + 2584);
    v17 = *(v0 + 2560);
    v18 = *(v0 + 2552);
    v38 = *(v0 + 2512);
    v40 = *(v0 + 2600);
    v19 = *(v0 + 2504);

    __swift_destroy_boxed_opaque_existential_1((v0 + 2328));
    v20 = *(v17 + 8);
    v20(v16, v18);
    __swift_project_boxed_opaque_existential_1(v19, v1[3]);
    sub_1C754F1AC();
    (*(v15 + 8))(v14, v40);
    v20(v38, v18);
    OUTLINED_FUNCTION_4_6(*(v0 + 2616));

    OUTLINED_FUNCTION_43();

    return v21();
  }
}

uint64_t sub_1C6FDF4B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2680) = v4;
  *(v2 + 2688) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FDF5C0()
{
  v27 = v0;
  v1 = *(v0 + 2688);
  v2 = *(v0 + 2680);
  v3 = *(v0 + 2401);
  v4 = *(v0 + 2656);
  v25[0] = *(v0 + 2640);
  v25[1] = v4;
  v26 = v3;
  sub_1C73E6CD4(v25, v2);
  *(v0 + 2696) = v5;
  *(v0 + 2704) = v6;
  if (v1)
  {
    v19 = *(v0 + 2656);
    v20 = *(v0 + 2664);
    v7 = *(v0 + 2648);
    v8 = *(v0 + 2640);
    v9 = *(v0 + 2616);
    v10 = *(v0 + 2608);
    v11 = *(v0 + 2560);
    v23 = *(v0 + 2552);
    v21 = *(v0 + 2600);
    v22 = *(v0 + 2512);
    v12 = *(v0 + 2504);
    v13 = *(v0 + 2401);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2328));

    sub_1C6FE0E14(v8, v7, v19, v20, v13);
    OUTLINED_FUNCTION_10_3(v12);
    OUTLINED_FUNCTION_16_6();
    sub_1C754F1AC();
    (*(v10 + 8))(v9, v21);
    (*(v11 + 8))(v22, v23);

    OUTLINED_FUNCTION_43();

    return v14();
  }

  else
  {
    v16 = *(v0 + 2496);

    OUTLINED_FUNCTION_10_3((v16 + 328));
    OUTLINED_FUNCTION_15_3();
    v24 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 2712) = v18;
    *v18 = v0;
    v18[1] = sub_1C6FDF880;
    OUTLINED_FUNCTION_16_6();

    return v24();
  }
}

uint64_t sub_1C6FDF880()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 2720) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FDF984()
{
  v1 = *(v0 + 2496);
  *(v0 + 2208) = *(v0 + 2144);
  *(v0 + 2224) = *(v0 + 2160);
  *(v0 + 2240) = *(v0 + 2176);
  *(v0 + 2256) = *(v0 + 2192);
  v2 = *(v1 + 384);
  *(v0 + 2472) = *(v1 + 376);
  *(v0 + 2480) = v2;
  type metadata accessor for StoryGenerationSession(0);

  v3 = swift_task_alloc();
  *(v0 + 2728) = v3;
  *v3 = v0;
  v3[1] = sub_1C6FDFA8C;

  return sub_1C73E72EC();
}

uint64_t sub_1C6FDFA8C()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C6FDFBB0()
{
  v28 = *(v0 + 2720);
  v1 = *(v0 + 2704);
  v2 = *(v0 + 2696);
  v3 = *(v0 + 2544);
  v4 = *(v0 + 2536);
  v5 = *(v0 + 2496);
  v7 = *v5;
  v6 = v5[1];
  v8 = *(v5 + 16);
  memcpy((v0 + 1536), v5 + 3, 0x130uLL);
  OUTLINED_FUNCTION_0_7();
  sub_1C6FE0D68(v3, v4 + v9);
  *v4 = v7;
  *(v4 + 8) = v6;
  *(v4 + 16) = v8;
  memcpy((v4 + 24), (v0 + 1536), 0x130uLL);
  *(v4 + 328) = v1;
  v10 = *(v0 + 2224);
  v11 = *(v0 + 2256);
  v12 = *(v0 + 2208);
  *(v4 + 368) = *(v0 + 2240);
  *(v4 + 384) = v11;
  *(v4 + 336) = v12;
  *(v4 + 352) = v10;
  *(v4 + 400) = v2;
  sub_1C75504FC();
  sub_1C6FDE884(v0 + 1536, v0 + 1840);
  v13 = v28;
  sub_1C754F2EC();
  v14 = *(v0 + 2616);
  v27 = *(v0 + 2608);
  v29 = *(v0 + 2600);
  if (v13)
  {
    v15 = *(v0 + 2544);
    v26 = *(v0 + 2616);
    v16 = *(v0 + 2536);
    v17 = *(v0 + 2504);

    OUTLINED_FUNCTION_13_9();
    sub_1C6FE0E90(v16, type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story);
    OUTLINED_FUNCTION_2_6();
    sub_1C6FE0E90(v15, v18);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2328));
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1C754F1AC();
    (*(v27 + 8))(v26, v29);
    OUTLINED_FUNCTION_4_6(*(v0 + 2616));
  }

  else
  {
    v20 = *(v0 + 2544);
    v25 = *(v0 + 2536);
    v21 = *(v0 + 2504);
    v22 = *(v0 + 2488);

    OUTLINED_FUNCTION_13_9();
    OUTLINED_FUNCTION_2_6();
    sub_1C6FE0E90(v20, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2328));
    OUTLINED_FUNCTION_3_9();
    sub_1C6FE0EE8(v25, v22);
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_1C754F1AC();
    (*(v27 + 8))(v14, v29);
  }

  OUTLINED_FUNCTION_43();

  return v19();
}

uint64_t sub_1C6FDFEA0()
{
  OUTLINED_FUNCTION_8_8();
  v2 = v0[326];
  v3 = v0[320];
  v9 = v0[319];
  v7 = v0[325];
  v8 = v0[314];
  v4 = v0[313];

  __swift_destroy_boxed_opaque_existential_1(v0 + 291);
  OUTLINED_FUNCTION_12_10();
  OUTLINED_FUNCTION_10_3(v4);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v7);
  (*(v3 + 8))(v8, v9);
  OUTLINED_FUNCTION_4_6(v0[327]);

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C6FDFFD4()
{
  OUTLINED_FUNCTION_8_8();
  v2 = v0[326];
  v8 = v3;
  v9 = v0[325];
  v4 = v0[320];
  v10 = v0[314];
  v11 = v0[319];
  v5 = v0[313];

  OUTLINED_FUNCTION_12_10();

  __swift_destroy_boxed_opaque_existential_1(v0 + 291);
  OUTLINED_FUNCTION_10_3(v5);
  OUTLINED_FUNCTION_16_6();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v9);
  (*(v4 + 8))(v10, v11);
  OUTLINED_FUNCTION_4_6(v0[327]);

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C6FE0114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1600) = v4;
  *(v5 + 1592) = a4;
  *(v5 + 1584) = a3;
  *(v5 + 1576) = a1;
  v6 = *(a2 + 16);
  *(v5 + 1608) = *a2;
  *(v5 + 1624) = v6;
  *(v5 + 1570) = *(a2 + 32);
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C6FE0160()
{
  v1 = *(v0 + 1570);
  v2 = *(v0 + 1632);
  v3 = *(v0 + 1624);
  *(v0 + 1569) = *(*(v0 + 1576) + 16);
  type metadata accessor for FreeformStoryGenerator(0);
  *(v0 + 1536) = *(v0 + 1608);
  *(v0 + 1552) = v3;
  *(v0 + 1560) = v2;
  *(v0 + 1568) = v1;
  v4 = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  *(v0 + 1640) = v4;
  *(v0 + 1572) = *(v4 + 24);
  type metadata accessor for StoryGenerationSession(0);
  v5 = swift_task_alloc();
  *(v0 + 1648) = v5;
  *v5 = v0;
  v5[1] = sub_1C6FE0284;

  return static FreeformStoryGenerator.addCurationHints(to:storyType:from:diagnosticContext:)();
}

uint64_t sub_1C6FE0284()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1656) = v4;
  *(v2 + 1664) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C6FE038C()
{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1569);
  v3 = *(v1 + 16);
  switch(v2 >> 5)
  {
    case 1u:
      if ((v3 & 0xE0) != 0x20)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2u:
      if (v2 == 64)
      {
        if (v3 != 64)
        {
          goto LABEL_14;
        }
      }

      else if (v3 != 65)
      {
        goto LABEL_14;
      }

      goto LABEL_18;
    case 3u:
      if (v2 != 96)
      {
        if (v3 == 97)
        {
          goto LABEL_18;
        }

LABEL_14:
        v4 = *(v0 + 1592);

        sub_1C754F2FC();
        OUTLINED_FUNCTION_12();
        (*(v5 + 8))(v4);
        v6 = *(v0 + 8);
        v7 = MEMORY[0x1E69E7CC0];

        return v6(v7);
      }

      if (v3 != 96)
      {
        goto LABEL_14;
      }

LABEL_18:
      v9 = *(v1 + 352);
      v10 = *(v1 + 360);
      OUTLINED_FUNCTION_10_3((v1 + 328));
      OUTLINED_FUNCTION_15_3();
      v13 = (v11 + *v11);
      v12 = swift_task_alloc();
      *(v0 + 1672) = v12;
      *v12 = v0;
      v12[1] = sub_1C6FE05B8;

      return v13(v9, v10);
    case 4u:
      if (v3 == 128)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    default:
      if (v3 >= 0x20)
      {
        goto LABEL_14;
      }

LABEL_13:
      if ((v3 ^ v2))
      {
        goto LABEL_14;
      }

      goto LABEL_18;
  }
}

uint64_t sub_1C6FE05B8(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v5[210] = v9;
  v5[211] = v1;

  if (!v1)
  {
    v5[212] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C6FE06D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(v9 + 1572);
  v11 = *(v9 + 1600);
  v12 = *(v9 + 1576);
  memcpy((v9 + 16), (v12 + 24), 0x130uLL);
  memcpy((v9 + 320), (v12 + 24), 0x130uLL);
  sub_1C6FDE884(v9 + 16, v9 + 624);
  v13 = swift_task_alloc();
  *(v9 + 1704) = v13;
  *v13 = v9;
  v13[1] = sub_1C6FE07D8;
  v14 = *(v9 + 1696);
  v15 = *(v9 + 1680);
  v16 = *(v9 + 1656);
  v17 = *(v9 + 1584);

  return sub_1C7047DD0(v16, v12 + 328, v9 + 320, v9 + 1569, v14, v15, v11 + v10, v17, a9);
}

uint64_t sub_1C6FE07D8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v2 + 1712) = v6;
  *(v2 + 1571) = v7;
  *(v2 + 1720) = v0;

  if (v0)
  {
    memcpy((v2 + 928), (v2 + 320), 0x130uLL);
    sub_1C6FE0DC0(v2 + 928);
  }

  else
  {
    memcpy((v2 + 1232), (v2 + 320), 0x130uLL);
    sub_1C6FE0DC0(v2 + 1232);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C6FE0974()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1569);
  v2 = *(*(v0 + 1576) + 16);
  switch(v1 >> 5)
  {
    case 1u:
      if ((v2 & 0xE0) != 0x20)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    case 2u:
      if (v1 == 64)
      {
        if (v2 != 64)
        {
          goto LABEL_14;
        }
      }

      else if (v2 != 65)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    case 3u:
      if (v1 == 96)
      {
        if (v2 == 96)
        {
          goto LABEL_16;
        }

LABEL_14:
        sub_1C6F9ED74(*(v0 + 1712), *(v0 + 1571) & 1);
LABEL_17:
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_18;
      }

      if (v2 != 97)
      {
        goto LABEL_14;
      }

LABEL_16:
      if (*(v0 + 1571))
      {
        goto LABEL_17;
      }

      v3 = *(v0 + 1712);
LABEL_18:
      v4 = *(v0 + 8);

      return v4(v3);
    case 4u:
      if (v2 == 128)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    default:
      if (v2 >= 0x20)
      {
        goto LABEL_14;
      }

LABEL_13:
      if ((v2 ^ v1))
      {
        goto LABEL_14;
      }

      goto LABEL_16;
  }
}

uint64_t sub_1C6FE0A90()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1592);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C6FE0B18()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1592);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C6FE0BCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3 > 0x1F)
  {
    sub_1C6FE0D14();
    v5 = swift_allocError();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *v6 = v3;
    *(v6 + 24) = 8;
LABEL_4:
    *a2 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2156D8, &qword_1C755EBF8);
    goto LABEL_5;
  }

  type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  sub_1C7047A98(*(a1 + 328), v13);
  if (v15)
  {
    v8 = v13[0];
    v9 = v13[1];
    v10 = v13[2];
    v11 = v14;
    sub_1C6FE0D14();
    v5 = swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v9;
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_3_9();
  sub_1C6FE0D68(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2156D8, &qword_1C755EBF8);
LABEL_5:

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C6FE0D14()
{
  result = qword_1EDD09D00;
  if (!qword_1EDD09D00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryGenerator.Error, &type metadata for FreeformStoryGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EDD09D00);
  }

  return result;
}

uint64_t sub_1C6FE0D68(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

void *sub_1C6FE0E14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = a5;

    return sub_1C6FE0E78(a3, a4, v5);
  }

  return result;
}

uint64_t sub_1C6FE0E78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C6FE0E90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C6FE0EE8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C6FE0F40(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_17_3();
  }

  sub_1C6FC286C();
  if (v3)
  {
    return OUTLINED_FUNCTION_2_7(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6FE0F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_1C6F78124(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_19_9(v3);
    }
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C6FE0FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_17_3();
  }

  v3 = sub_1C6F78124(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_2_7(v3);
  }

  else
  {
    return 0;
  }
}

double sub_1C6FE1034()
{
  OUTLINED_FUNCTION_16_7();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v1 = sub_1C6FC2BC8();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v1);
  return result;
}

uint64_t sub_1C6FE1070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v4 = sub_1C6F78124(a1, a2);
    if (v5)
    {
      v6 = *(a3 + 56) + 32 * v4;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      v9 = OUTLINED_FUNCTION_90();
      sub_1C6FE369C(v9, v10, v7, v8);
    }
  }

  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C6FE10EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1C6F78124(a1, a2), (v7 & 1) != 0))
  {
    OUTLINED_FUNCTION_11_8();
    v8 = sub_1C754DF6C();
    OUTLINED_FUNCTION_12();
    (*(v9 + 16))(a4, v5 + *(v9 + 72) * v4, v8);
    v10 = OUTLINED_FUNCTION_5_13();
  }

  else
  {
    sub_1C754DF6C();
    v10 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1C6FE11A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v3);
  return sub_1C75504FC();
}

double sub_1C6FE11F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v3 = sub_1C6F78124(a1, a2);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v3);
  return result;
}

double sub_1C6FE1230()
{
  OUTLINED_FUNCTION_16_7();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v1 = sub_1C6FC2EAC();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v1);
  return result;
}

uint64_t sub_1C6FE126C()
{
  OUTLINED_FUNCTION_16_7();
  if (v3 && (sub_1C6FCABE8(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_11_8();
    type metadata accessor for PromptSuggestionPersistedBundle(v5);
    OUTLINED_FUNCTION_12();
    sub_1C6FE36F4(v2 + *(v6 + 72) * v1, v0, type metadata accessor for PromptSuggestionPersistedBundle);
    v7 = OUTLINED_FUNCTION_5_13();
  }

  else
  {
    type metadata accessor for PromptSuggestionPersistedBundle(0);
    v7 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

double sub_1C6FE1304()
{
  OUTLINED_FUNCTION_16_7();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  v1 = sub_1C6FC2F4C();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  OUTLINED_FUNCTION_10_10(v1);
  return result;
}

unint64_t sub_1C6FE1358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_1C6F78124(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_1C6FE13CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v3);
  return sub_1C75504FC();
}

uint64_t sub_1C6FE144C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a3(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v3);
  return sub_1C75504FC();
}

uint64_t sub_1C6FE149C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_1C6F78124(a1, a2), (v7 & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_11_8();
    type metadata accessor for PromptSuggestion(v8);
    OUTLINED_FUNCTION_12();
    sub_1C6FE36F4(v5 + *(v9 + 72) * v4, a4, type metadata accessor for PromptSuggestion);
    v10 = OUTLINED_FUNCTION_5_13();
  }

  else
  {
    type metadata accessor for PromptSuggestion(0);
    v10 = OUTLINED_FUNCTION_6_11();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void *sub_1C6FE1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = a4(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(*(a3 + 56) + 8 * v5);
  v8 = v7;
  return v7;
}

uint64_t sub_1C6FE159C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C6FC2A70();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v2);
  return sub_1C75504FC();
}

uint64_t sub_1C6FE15E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1C6F78124(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v3);
  return sub_1C75504FC();
}

uint64_t sub_1C6FE1634(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1C6FC2AD8(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_7(v2);
  return sub_1C75504FC();
}

uint64_t sub_1C6FE1680(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return OUTLINED_FUNCTION_17_3();
  }

  v2 = sub_1C6FC34F4(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_2_7(v2);
  }

  else
  {
    return 0;
  }
}