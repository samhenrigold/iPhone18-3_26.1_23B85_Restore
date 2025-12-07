uint64_t WidgetSessionCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionKind;
  sub_220CA0434();
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler));
  return v0;
}

uint64_t WidgetSessionCoordinator.__deallocating_deinit()
{
  WidgetSessionCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

Swift::Void __swiftcall WidgetSessionCoordinator.startSession()()
{
  v0 = sub_220C9F7D4();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_220C9F804();
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812D1768 != -1)
  {
    swift_once();
  }

  v11 = sub_220CA0A84();
  __swift_project_value_buffer(v11, qword_2812D1770);

  v12 = sub_220CA0A64();
  v13 = sub_220CA0DA4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v0;
    v15 = v14;
    v16 = swift_slowAlloc();
    v21 = v2;
    v17 = v16;
    v24 = v16;
    *v15 = 136315138;
    sub_220CA0434();
    sub_220C393B8(&qword_27CF7BDB0, MEMORY[0x277CEAE80], MEMORY[0x277CEAE88]);
    v18 = sub_220CA1134();
    v20 = sub_220BFC484(v18, v19, &v24);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_220BF4000, v12, v13, "Starting session of kind: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v2 = v21;
    OUTLINED_FUNCTION_8();
    v0 = v22;
    OUTLINED_FUNCTION_8();
  }

  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v7 + 8))(v10, v23);
  sub_220C9F7C4();
  sub_220CA00C4();

  (*(v2 + 8))(v5, v0);
}

uint64_t sub_220C35A9C()
{
  OUTLINED_FUNCTION_1_3();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_220C35B34;

  return sub_220C35C80();
}

uint64_t sub_220C35B34()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_220C35C20, 0, 0);
}

uint64_t sub_220C35C20()
{
  OUTLINED_FUNCTION_1_3();
  WidgetSessionCoordinator.startSession()();
  sub_220C35E5C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220C35C94()
{
  OUTLINED_FUNCTION_1_3();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_220C35D5C;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_220C35D5C()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_220C35E48, 0, 0);
}

uint64_t sub_220C35E5C()
{
  v0 = sub_220C9FB84();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x28223BE20](v0);
  v61 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE00, &qword_220CA5D08);
  MEMORY[0x28223BE20](v2 - 8);
  v60 = &v55 - v3;
  v59 = sub_220C9F884();
  v65 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  v57 = sub_220C9F8A4();
  v67 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE08, &qword_220CA5D10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  v15 = sub_220C9F7D4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220C9F954();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F944();
  sub_220C9F7C4();
  v23 = sub_220C9F934();
  (*(v16 + 8))(v18, v15);
  result = (*(v20 + 8))(v22, v19);
  if (v23 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 > 0x7FFFFFFF)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v66 = v23;
  sub_220C9F854();
  sub_220C9F894();
  v25 = *(v67 + 8);
  v26 = v57;
  v67 += 8;
  v25(v11, v57);
  sub_220C9F864();
  v27 = *(v65 + 8);
  v28 = v59;
  v27(v7, v59);
  v29 = sub_220C9F824();
  if (__swift_getEnumTagSinglePayload(v14, 1, v29) == 1)
  {
    sub_220C2CB7C(v14, &qword_27CF7BE08, &qword_220CA5D10);
    v55 = 0xE100000000000000;
    v65 = 45;
  }

  else
  {
    v65 = sub_220C9F814();
    v55 = v30;
    (*(*(v29 - 8) + 8))(v14, v29);
  }

  v31 = v60;
  v32 = v56;
  sub_220C9F854();
  v33 = v58;
  sub_220C9F894();
  v25(v32, v26);
  sub_220C9F874();
  v27(v33, v28);
  v34 = sub_220C9F844();
  if (__swift_getEnumTagSinglePayload(v31, 1, v34) == 1)
  {
    sub_220C2CB7C(v31, &qword_27CF7BE00, &qword_220CA5D08);
    v67 = 0xE100000000000000;
    v60 = 45;
  }

  else
  {
    v60 = sub_220C9F814();
    v67 = v35;
    (*(*(v34 - 8) + 8))(v31, v34);
  }

  v59 = 0x8000000220CB5220;
  v36 = v64;
  v37 = *(v64 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider + 24);
  v38 = *(v64 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider + 32);
  __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_cellularRadioAccessTechnologyProvider), v37);
  (*(v38 + 8))(&v68 + 1, v37, v38);
  LODWORD(v58) = BYTE1(v68);
  v39 = *(v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider + 24);
  v40 = *(v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider + 32);
  __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_locationAccessDataProvider), v39);
  (*(v40 + 8))(&v68, v39, v40);
  LODWORD(v57) = v68;
  v41 = (v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager);
  __swift_project_boxed_opaque_existential_1((v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager), *(v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_appConfigurationManager + 24));
  v42 = v61;
  sub_220C9FD94();
  v56 = sub_220C9FB34();
  v43 = v63;
  v44 = *(v62 + 8);
  v44(v42, v63);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  sub_220C9FD94();
  v62 = sub_220C9FB44();
  v44(v42, v43);
  v64 = *(v36 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  sub_220CA0104();
  v45 = swift_allocObject();
  v46 = v65;
  *(v45 + 16) = v66;
  v48 = v55;
  v47 = v56;
  *(v45 + 24) = v46;
  *(v45 + 32) = v48;
  v49 = v59;
  v50 = v60;
  v51 = v67;
  *(v45 + 40) = v60;
  *(v45 + 48) = v51;
  *(v45 + 56) = 0;
  *(v45 + 64) = 0xD000000000000018;
  *(v45 + 72) = v49;
  LOBYTE(v41) = v57;
  *(v45 + 80) = v57;
  LOBYTE(v39) = v58;
  *(v45 + 81) = v58;
  v52 = v62;
  *(v45 + 88) = v47;
  *(v45 + 96) = v52;

  sub_220CA0444();

  v53 = swift_allocObject();
  v54 = v65;
  *(v53 + 16) = v66;
  *(v53 + 24) = v54;
  *(v53 + 32) = v48;
  *(v53 + 40) = v50;
  *(v53 + 48) = v51;
  *(v53 + 56) = 0;
  *(v53 + 64) = 0xD000000000000018;
  *(v53 + 72) = v49;
  *(v53 + 80) = v41;
  *(v53 + 81) = v39;
  *(v53 + 88) = v47;
  *(v53 + 96) = v52;
  sub_220CA0094();
}

uint64_t sub_220C366B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_220C36748;

  return WidgetSessionCoordinator.restartSession()();
}

uint64_t sub_220C36748()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_2();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_220C3682C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDE0, &qword_220CA5CE0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - v2;
  v4 = sub_220CA0414();
  v6 = v5;
  v7 = sub_220CA03F4();
  v14[0] = v4;
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  sub_220C38E3C();
  sub_220C9FF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v9 = sub_220CA0054();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220CA4A70;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277CEAD10], v9);
  sub_220CA00B4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_220C36A64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDC0, &qword_220CA5CC8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v17 - v2;
  v4 = sub_220C9F704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812D1700 != -1)
  {
    swift_once();
  }

  sub_220C393B8(&qword_2812CF5F8, type metadata accessor for WidgetSessionCoordinator, &protocol conformance descriptor for WidgetSessionCoordinator);
  sub_220C9F994();
  sub_220C9F6F4();
  sub_220C38D40();
  v8 = sub_220CA0EF4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
  }

  v17[0] = v8;
  v17[1] = v10;
  sub_220C38D94();
  sub_220C9FF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v12 = sub_220CA0054();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220CA4A70;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277CEAD10], v12);
  sub_220CA00B4();

  return (*(v1 + 8))(v3, v0);
}

void sub_220C36E18()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDE8, &unk_220CA5CE8);
  v58 = *(v0 - 8);
  v59 = v0;
  MEMORY[0x28223BE20](v0);
  v57 = &v51 - v1;
  v2 = sub_220C9F8B4();
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  v67 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BC30, &qword_220CA4AE0);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = &v51 - v5;
  v70 = sub_220C9F7D4();
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v51 - v8;
  v71 = sub_220C9FB04();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v65 = sub_220C9F924();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220C9F724();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F8F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDF0, &qword_220CA5CF8);
  v17 = sub_220C9F904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_220CA4A60;
  v22 = v21 + v20;
  v23 = *(v18 + 104);
  v23(v22, *MEMORY[0x277CC9988], v17);
  v23(v22 + v19, *MEMORY[0x277CC9998], v17);
  sub_220C38E90(v21);
  v24 = *(v72 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService + 24);
  v53 = (v72 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService);
  __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService), v24);
  sub_220C9FC34();
  v25 = v64;
  sub_220C9FAF4();
  v26 = *(v9 + 8);
  v55 = v11;
  v56 = v9 + 8;
  v52 = v26;
  v26(v11, v71);
  sub_220C9F8D4();
  v27 = v66;

  v28 = *(v73 + 8);
  v29 = v25;
  v30 = v70;
  v64 = (v73 + 8);
  v54 = v28;
  v28(v29, v70);
  v31 = *(v63 + 1);
  v32 = v65;
  v31(v13, v65);
  sub_220C9F714();
  v34 = v67;
  v33 = v68;
  v35 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277CC9830], v69);
  sub_220C9F8C4();
  (*(v33 + 8))(v34, v35);
  v69 = v16;
  sub_220C9F8E4();
  v31(v13, v32);
  if (__swift_getEnumTagSinglePayload(v27, 1, v30) == 1)
  {
    (*(v61 + 8))(v69, v62);
    sub_220C2CB7C(v27, &qword_27CF7BC30, &qword_220CA4AE0);
    return;
  }

  (*(v73 + 32))(v60, v27, v30);
  sub_220C9F794();
  v37 = v36 * 1000.0;
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v38 = v37;
  v68 = v37;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  v39 = v55;
  sub_220C9FC34();
  v40 = sub_220C9FAD4();
  v66 = v41;
  v67 = v40;
  v42 = v41;
  v52(v39, v71);
  v73 = *(v72 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_sessionManager);
  v71 = sub_220CA0104();
  v74 = v40;
  v75 = v42;
  v76 = v38;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v43 = sub_220CA0054();
  v44 = *(v43 - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  v65 = xmmword_220CA4A70;
  *(v46 + 16) = xmmword_220CA4A70;
  v47 = *MEMORY[0x277CEAD10];
  v48 = *(v44 + 104);
  v48(v46 + v45, v47, v43);
  v63 = "Manager";
  sub_220C391D4();
  sub_220CA0454();

  v74 = v67;
  v75 = v66;
  v76 = v68;
  v49 = v57;
  sub_220C9FF04();
  v50 = swift_allocObject();
  *(v50 + 16) = v65;
  v48(v50 + v45, v47, v43);
  sub_220CA00B4();

  (*(v58 + 8))(v49, v59);
  v54(v60, v70);
  (*(v61 + 8))(v69, v62);
}

uint64_t sub_220C37778()
{
  v1 = v0;
  v2 = sub_220C9FB04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220CA0104();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService), *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_identityService + 24));
  sub_220C9FC34();
  v6 = sub_220C9FAE4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler), *(v1 + OBJC_IVAR____TtC16WeatherAnalytics24WidgetSessionCoordinator_privacySampler + 24));
  result = sub_220C9FBD4();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {
    v16[1] = v6;
    v16[2] = v8;
    v17 = v11;
    v18 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
    v12 = sub_220CA0054();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220CA4A70;
    (*(v13 + 104))(v15 + v14, *MEMORY[0x277CEAD10], v12);
    sub_220C39228();
    sub_220CA0454();
  }

  __break(1u);
  return result;
}

uint64_t sub_220C37A00(uint64_t a1)
{
  v21[1] = a1;
  v32 = *MEMORY[0x277D85DE8];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD8, &qword_220CA5CD8);
  v21[0] = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v2 = v21 - v1;
  if (qword_2812D1668 != -1)
  {
    swift_once();
  }

  v3 = qword_2812D1670;
  v4 = *algn_2812D1678;
  v5 = qword_2812D1680;
  v6 = unk_2812D1688;
  v7 = qword_2812D1690;
  v8 = unk_2812D1698;
  v9 = qword_2812D1670 == 5459817 && *algn_2812D1678 == 0xE300000000000000;
  v10 = 1;
  if (!v9 && (sub_220CA1154() & 1) == 0)
  {
    v10 = 3;
    if (v3 != 0x534F63616DLL || v4 != 0xE500000000000000)
    {
      if (sub_220CA1154())
      {
        v10 = 3;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  bzero(&v23, 0x500uLL);
  uname(&v23);
  v12 = sub_220CA0C74();
  v14 = v13;
  sub_220CA05E4();
  if (sub_220CA05D4())
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v24 = v12;
  v25 = v14;
  v26 = v10;
  v27 = v15;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  sub_220C38DE8();

  sub_220C9FF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v16 = sub_220CA0054();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220CA4A70;
  (*(v17 + 104))(v19 + v18, *MEMORY[0x277CEAD10], v16);
  sub_220CA01A4();

  return (*(v21[0] + 8))(v2, v22);
}

uint64_t sub_220C37D68(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v29 = a3;
  v30 = a5;
  HIDWORD(v28) = a2;
  v34 = a1;
  v32 = a8;
  v33 = a13;
  v31 = a12;
  v18 = type metadata accessor for SessionData(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_220C9FFB4())
  {
    v21 = a7;
  }

  else
  {
    a11 = 4;
    a10 = 5;
    v21 = 6;
  }

  v20[40] = 6;
  *(v20 + 32) = 1029;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
  sub_220CA02B4();
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
  sub_220CA02B4();
  *v20 = HIDWORD(v28);
  v22 = v30;
  *(v20 + 1) = v29;
  *(v20 + 2) = a4;
  *(v20 + 3) = v22;
  *(v20 + 4) = a6;
  v20[40] = v21;
  *(v20 + 6) = v32;
  *(v20 + 7) = a9;
  v20[64] = a10;
  v20[65] = a11;
  v35 = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  sub_220CA02E4();
  v35 = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  sub_220CA02E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v23 = sub_220CA0054();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220CA4A70;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x277CEAD10], v23);
  sub_220C393B8(&qword_2812D1648, type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
  sub_220C9FFC4();

  return sub_220C39400(v20);
}

uint64_t sub_220C38084(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, char a10, char a11, uint64_t a12, uint64_t a13)
{
  v35 = a2;
  v43 = a1;
  v40 = a8;
  v41 = a13;
  v38 = a5;
  v39 = a12;
  v36 = a3;
  v37 = a9;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE10, &qword_220CA5D18);
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x28223BE20](v18);
  v42 = &v34[-v19];
  v20 = type metadata accessor for SessionData(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v34[-v24];
  if (sub_220CA0194())
  {
    v26 = a7;
  }

  else
  {
    a11 = 4;
    a10 = 5;
    v26 = 6;
  }

  v25[40] = 6;
  *(v25 + 32) = 1029;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE18, &qword_220CA5D20);
  sub_220CA02B4();
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE20, &qword_220CA5D28);
  sub_220CA02B4();
  *v25 = v35;
  *(v25 + 1) = v36;
  *(v25 + 2) = a4;
  *(v25 + 3) = v38;
  *(v25 + 4) = a6;
  v25[40] = v26;
  v27 = v37;
  *(v25 + 6) = v40;
  *(v25 + 7) = v27;
  v25[64] = a10;
  v25[65] = a11;
  v46 = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE28, &qword_220CA5D30);
  sub_220CA02E4();
  v46 = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE30, &qword_220CA5D38);
  sub_220CA02E4();
  sub_220C39354(v25, v22);
  sub_220C393B8(&qword_2812D1648, type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
  v28 = v42;
  sub_220C9FF04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDD0, &qword_220CA5CD0);
  v29 = sub_220CA0054();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_220CA4A70;
  (*(v30 + 104))(v32 + v31, *MEMORY[0x277CEAD10], v29);
  sub_220CA01A4();

  (*(v44 + 8))(v28, v45);
  return sub_220C39400(v25);
}

uint64_t WidgetSessionCoordinator.identityService(_:didChangeUserIdentity:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_220CA0A84();
  OUTLINED_FUNCTION_3();
  v37 = v6;
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = sub_220C9FD34();
  OUTLINED_FUNCTION_3();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  v36 = a2;
  sub_220C9FC04();
  sub_220C9FD14();
  sub_220C393B8(&qword_27CF7BDB8, MEMORY[0x277D7AB28], MEMORY[0x277D7AB30]);
  v20 = OUTLINED_FUNCTION_6_4();
  v21 = *(v13 + 8);
  v21(v16, v11);
  v21(v19, v11);
  if (v20)
  {
    sub_220CA0A54();
    v22 = sub_220CA0A64();
    v23 = sub_220CA0DA4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34[1] = v3;
      *v24 = 0;
      OUTLINED_FUNCTION_7_3(&dword_220BF4000, v25, v26, "Received a user identity change ... pushing new identifier onto trackers");
      OUTLINED_FUNCTION_8();
    }

    (*(v37 + 8))(v10, v38);
    sub_220C36E18();
  }

  sub_220C9FC04();
  sub_220C9FD24();
  v27 = OUTLINED_FUNCTION_6_4();
  v21(v16, v11);
  result = (v21)(v19, v11);
  if (v27)
  {
    v29 = v35;
    sub_220CA0A54();
    v30 = sub_220CA0A64();
    v31 = sub_220CA0DA4();
    if (os_log_type_enabled(v30, v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_3(&dword_220BF4000, v32, v33, "Received a private user identity change ... pushing new identifier onto trackers");
      OUTLINED_FUNCTION_8();
    }

    (*(v37 + 8))(v29, v38);
    return sub_220C37778();
  }

  return result;
}

uint64_t WidgetSessionCoordinator.appConfigurationDidRefresh(_:)()
{
  swift_allocObject();
  swift_weakInit();

  sub_220CA0754();
}

uint64_t sub_220C3885C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220C35E5C();
  }

  return result;
}

uint64_t sub_220C388B8(uint64_t a1)
{
  v2 = sub_220C9F7D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  (*(v7 + 16))(&v14 - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  sub_220C9F7C4();
  sub_220CA00A4();

  return (*(v3 + 8))(v5, v2);
}

uint64_t dispatch thunk of WidgetSessionCoordinatorType.restartSession()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220C36748;

  return v7(a1, a2);
}

uint64_t type metadata accessor for WidgetSessionCoordinator(uint64_t a1)
{
  result = qword_2812CF5E8;
  if (!qword_2812CF5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220C38C68(uint64_t a1)
{
  result = sub_220CA0434();
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

unint64_t sub_220C38D40()
{
  result = qword_2812D0F88;
  if (!qword_2812D0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0F88);
  }

  return result;
}

unint64_t sub_220C38D94()
{
  result = qword_27CF7BDC8;
  if (!qword_27CF7BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BDC8);
  }

  return result;
}

unint64_t sub_220C38DE8()
{
  result = qword_2812D16B0;
  if (!qword_2812D16B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D16B0);
  }

  return result;
}

unint64_t sub_220C38E3C()
{
  result = qword_2812D1008;
  if (!qword_2812D1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1008);
  }

  return result;
}

uint64_t sub_220C38E90(uint64_t a1)
{
  v2 = sub_220C9F904();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BDF8, &qword_220CA5D00);
  result = sub_220CA0F34();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_220C393B8(&qword_2812D1738, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
    v14 = sub_220CA0BE4();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v4, *(v8 + 48) + v16 * v12, v2);
      sub_220C393B8(&qword_2812D1730, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v21 = sub_220CA0C04();
      v22 = *v11;
      (*v11)(v4, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_220C391D4()
{
  result = qword_2812D0FD8;
  if (!qword_2812D0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0FD8);
  }

  return result;
}

unint64_t sub_220C39228()
{
  result = qword_2812D1560;
  if (!qword_2812D1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D1560);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_220C39354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220C393B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220C39400(uint64_t a1)
{
  v2 = type metadata accessor for SessionData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220C39464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE38, &unk_220CA5D40);

  return sub_220C38AA4();
}

uint64_t ViewData.viewSessionID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ViewData.viewSessionID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WeatherAnalytics::ViewData __swiftcall ViewData.init(viewSessionID:viewType:viewAction:)(WeatherAnalytics::ViewData viewSessionID, WeatherAnalytics::ViewType viewType, WeatherAnalytics::ViewAction viewAction)
{
  v4 = *viewType;
  v5 = *viewAction;
  *v3 = viewSessionID.viewSessionID;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  viewSessionID.viewType = viewType;
  return viewSessionID;
}

uint64_t sub_220C395E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373655377656976 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795477656976 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974634177656976 && a2 == 0xEA00000000006E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_220CA1154();

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

uint64_t sub_220C39708(char a1)
{
  if (!a1)
  {
    return 0x7373655377656976;
  }

  if (a1 == 1)
  {
    return 0x6570795477656976;
  }

  return 0x6974634177656976;
}

uint64_t sub_220C39778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C395E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C397A0(uint64_t a1)
{
  v2 = sub_220C399E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C397DC(uint64_t a1)
{
  v2 = sub_220C399E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ViewData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE40, &qword_220CA5D50);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 16);
  v17 = *(v1 + 17);
  v18 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_220C399E0();
  sub_220CA1254();
  v23 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v14 = v17;
    v22 = v18;
    v21 = 1;
    sub_220C39A34();
    sub_220CA1104();
    v20 = v14;
    v19 = 2;
    sub_220C39A88();
    sub_220CA1104();
  }

  return (*(v5 + 8))(v8, v13);
}

unint64_t sub_220C399E0()
{
  result = qword_2812CE820;
  if (!qword_2812CE820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE820);
  }

  return result;
}

unint64_t sub_220C39A34()
{
  result = qword_2812CE7F8;
  if (!qword_2812CE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7F8);
  }

  return result;
}

unint64_t sub_220C39A88()
{
  result = qword_2812D0840;
  if (!qword_2812D0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0840);
  }

  return result;
}

uint64_t ViewData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE48, &qword_220CA5D58);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C399E0();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15[2] = 0;
  v6 = sub_220CA0FF4();
  v8 = v7;
  v15[0] = 1;
  sub_220C39CDC();
  OUTLINED_FUNCTION_2_5(&type metadata for ViewType, v15);
  v13 = v15[1];
  v14[0] = 2;
  sub_220C39D30();
  OUTLINED_FUNCTION_2_5(&type metadata for ViewAction, v14);
  v10 = OUTLINED_FUNCTION_0_10();
  v11(v10);
  v12 = v14[1];
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 17) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C39CDC()
{
  result = qword_27CF7BE50;
  if (!qword_27CF7BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE50);
  }

  return result;
}

unint64_t sub_220C39D30()
{
  result = qword_27CF7BE58;
  if (!qword_27CF7BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE58);
  }

  return result;
}

uint64_t sub_220C39DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_220C39DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C39F14()
{
  result = qword_27CF7BE60;
  if (!qword_27CF7BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE60);
  }

  return result;
}

unint64_t sub_220C39F6C()
{
  result = qword_2812CE810;
  if (!qword_2812CE810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE810);
  }

  return result;
}

unint64_t sub_220C39FC4()
{
  result = qword_2812CE818;
  if (!qword_2812CE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE818);
  }

  return result;
}

unint64_t sub_220C3A028()
{
  result = qword_27CF7BE68;
  if (!qword_27CF7BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DevicePlatform(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_220C3A1CC()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xED0000646E756F72;
      break;
    case 2:
      v0 = 0xE900000000000074;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v5 = 0x676B636142707061;
      v1 = 0xED0000646E756F72;
      break;
    case 2:
      v5 = 0x6975516563726F66;
      v1 = 0xE900000000000074;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x6873617263;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v5 = 0x6465726961706572;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3A354()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      OUTLINED_FUNCTION_26();
      break;
    case 3:
      v0 = 0xE300000000000000;
      break;
    case 4:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1953720684;
      break;
    case 2:
      v1 = 0xE800000000000000;
      OUTLINED_FUNCTION_24();
      break;
    case 3:
      v1 = 0xE300000000000000;
      v5 = 7364973;
      break;
    case 4:
      v1 = 0xE600000000000000;
      v5 = 0x6C6961746564;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3A46C()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 1936744813;
    }

    else
    {
      v5 = 0x72656469766F7270;
    }

    if (v4 == 1)
    {
      v0 = 0xE400000000000000;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1936744813;
    }

    else
    {
      v3 = 0x72656469766F7270;
    }

    if (v2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3A53C()
{
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_3_5(17);
      break;
    case 2:
      v0 = 0xEC0000006E6F6973;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_2_6();
      break;
    case 2:
      v5 = 0x73696D7265506F6ELL;
      v1 = 0xEC0000006E6F6973;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3A66C()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    case 4:
      v3 = "e";
      goto LABEL_8;
    case 5:
      v3 = "startingStopping";
LABEL_8:
      v0 = v3 | 0x8000000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v9)
  {
    case 1:
      v1 = 0xE400000000000000;
      v6 = 1701736302;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v11 = 0x697472617473;
      goto LABEL_14;
    case 3:
      v1 = 0xE800000000000000;
      v11 = 0x6970706F7473;
LABEL_14:
      v6 = v11 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      v6 = 0xD000000000000010;
      v10 = v8 - 32;
      goto LABEL_16;
    case 5:
      v6 = 0xD000000000000010;
      v10 = v7 - 32;
LABEL_16:
      v1 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v6 && v0 == v1)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8(v4, v5, v6);
  }

  return v13 & 1;
}

uint64_t sub_220C3A7D4()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xEC000000656C6261;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1768319351;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v5 = 1851881335;
      break;
    case 3:
      v5 = 0x6863616552746F6ELL;
      v1 = 0xEC000000656C6261;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3A8EC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006174614472;
  v3 = 0x6568746165576F6ELL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x697461636F4C6F6ELL;
    }

    else
    {
      v5 = 0x726568746FLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEE00617461446E6FLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6568746165576F6ELL;
    v6 = 0xED00006174614472;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x697461636F4C6F6ELL;
    }

    else
    {
      v3 = 0x726568746FLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEE00617461446E6FLL;
    }

    else
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3A9F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000006564;
  v3 = 0x6953726576726573;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6953746E65696C63;
    }

    else
    {
      v5 = 0x6568636163;
    }

    if (v4 == 1)
    {
      v6 = 0xEA00000000006564;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x6953726576726573;
    v6 = 0xEA00000000006564;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6953746E65696C63 : 0x6568636163;
    if (a2 != 1)
    {
      v2 = 0xE500000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3AAD8(char a1, char a2)
{
  if (*&aUnknown_24[8 * a1] == *&aUnknown_24[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_220CA1154();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_220C3AB40(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73776F626E696172;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x73776F626E696172;
  switch(v4)
  {
    case 1:
      v5 = 0x6E696E746867696CLL;
      v3 = 0xE900000000000067;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 6778726;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1818845544;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x656B6F6D73;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1702519144;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6E696E746867696CLL;
      v6 = 0xE900000000000067;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 6778726;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1818845544;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x656B6F6D73;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1702519144;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_220C3ACB0()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      v0 = 0xE500000000000000;
      break;
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE500000000000000;
      v5 = 0x746867696CLL;
      break;
    case 2:
      v1 = 0xE800000000000000;
      v5 = 0x6574617265646F6DLL;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x7976616568;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3ADCC()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_19_0();
      break;
    case 2:
      OUTLINED_FUNCTION_3_5(18);
      break;
    case 3:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_21();
      break;
    case 4:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_22();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_18_0();
      break;
    case 2:
      OUTLINED_FUNCTION_2_6();
      break;
    case 3:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_28();
      break;
    case 4:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_29();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3AEC4()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x657372616F63;
    }

    else
    {
      v5 = 0x65736963657270;
    }

    if (v4 == 1)
    {
      v0 = 0xE600000000000000;
    }

    else
    {
      v0 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x657372616F63;
    }

    else
    {
      v3 = 0x65736963657270;
    }

    if (v2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3AF9C(char a1, uint64_t a2)
{
  v2 = 0x72656D726177;
  if (a1)
  {
    OUTLINED_FUNCTION_15_5();
    v5 = v4 | 0x74726F7065520000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x7265646C6F63;
    }

    if (v3)
    {
      v7 = 0xEA00000000006465;
    }

    else
    {
      v7 = 0xE600000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x72656D726177;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_5();
    v10 = v9 | 0x74726F7065520000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 0x7265646C6F63;
    }

    if (v8)
    {
      v11 = 0xEA00000000006465;
    }

    else
    {
      v11 = 0xE600000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8(v6, a2, v2);
  }

  return v13 & 1;
}

uint64_t sub_220C3B080()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 2:
      v0 = 0xE800000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_10_2();
      break;
    case 2:
      v1 = 0xE800000000000000;
      v5 = 0x64656C6261736964;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x657372616F63;
      break;
    case 4:
      v5 = 0x65736963657270;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3B1B4()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_19_0();
      break;
    case 2:
      OUTLINED_FUNCTION_3_5(18);
      break;
    case 3:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_21();
      break;
    case 4:
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_22();
      break;
    case 5:
      v0 = 0xE600000000000000;
      break;
    case 6:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_18_0();
      break;
    case 2:
      OUTLINED_FUNCTION_2_6();
      break;
    case 3:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_28();
      break;
    case 4:
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_29();
      break;
    case 5:
      v1 = 0xE600000000000000;
      v5 = 0x705565636166;
      break;
    case 6:
      v1 = 0xE800000000000000;
      v5 = 0x6E776F4465636166;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3B304()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 2:
      v0 = 0xEA00000000007469;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v5 = 0x737569736C6563;
      break;
    case 2:
      v5 = 0x65686E6572686166;
      v1 = 0xEA00000000007469;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x6E69766C656BLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3B424()
{
  OUTLINED_FUNCTION_1_9();
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = v4 + 2556;
    }

    v0 = 0xE800000000000000;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = v4;
    }

    else
    {
      v3 = v4 + 2556;
    }

    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3B4DC()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE300000000000000;
      break;
    case 2:
      v0 = 0xE300000000000000;
      break;
    case 3:
      v0 = 0xEA00000000007961;
      break;
    case 4:
      OUTLINED_FUNCTION_3_5(20);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE300000000000000;
      v5 = 7562359;
      break;
    case 2:
      v1 = 0xE300000000000000;
      v5 = 6518644;
      break;
    case 3:
      v5 = 0x6C7265764F70616DLL;
      v1 = 0xEA00000000007961;
      break;
    case 4:
      OUTLINED_FUNCTION_2_6();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3B60C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_3_5(21);
      break;
    case 2:
      v5 = 0x6C41657265766573;
      v3 = 0xEB00000000747265;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_12_1();
      v3 = 0xEA00000000007974;
      break;
    case 4:
      v5 = 0x6B694C736C656566;
      v3 = 0xE900000000000065;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_2_6();
      break;
    case 2:
      v2 = 0x6C41657265766573;
      v6 = 0xEB00000000747265;
      break;
    case 3:
      OUTLINED_FUNCTION_11_5();
      v6 = 0xEA00000000007974;
      break;
    case 4:
      v2 = 0x6B694C736C656566;
      v6 = 0xE900000000000065;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_220C3B770()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x6E656E6F706D6F63;
    }

    else
    {
      v5 = 0x726F7463656C6573;
    }

    if (v4 == 1)
    {
      v0 = 0xE900000000000074;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x6E656E6F706D6F63;
    }

    else
    {
      v3 = 0x726F7463656C6573;
    }

    if (v2 == 1)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3B858()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
    case 4:
      v0 = 0xE900000000000072;
      break;
    case 3:
      v0 = 0xEA00000000007275;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE800000000000000;
      v5 = 0x6F775479426F7774;
      break;
    case 2:
      v7 = 1114601332;
      goto LABEL_9;
    case 3:
      v5 = 0x6F46794272756F66;
      v1 = 0xEA00000000007275;
      break;
    case 4:
      v7 = 1115187571;
LABEL_9:
      v5 = v7 | 0x756F467900000000;
      v1 = 0xE900000000000072;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_220C3B9A8()
{
  OUTLINED_FUNCTION_1_9();
  v1 = 0xE700000000000000;
  switch(v2)
  {
    case 1:
      v1 = 0xE900000000000065;
      break;
    case 2:
      v3 = "nfig";
      goto LABEL_6;
    case 3:
      v3 = "homeScreenPageOne";
LABEL_6:
      v1 = v3 | 0x8000000000000000;
      break;
    case 4:
      v1 = 0x8000000220CB4710;
      break;
    case 5:
      v1 = 0x8000000220CB4730;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v12)
  {
    case 1:
      v6 = 0x6761507961646F74;
      v0 = 0xE900000000000065;
      break;
    case 2:
      v13 = v11 - 32;
      goto LABEL_13;
    case 3:
      v13 = v10 - 32;
LABEL_13:
      v0 = v13 | 0x8000000000000000;
      v6 = 0xD000000000000011;
      break;
    case 4:
      v0 = (v9 - 32) | 0x8000000000000000;
      v6 = v7 + 2;
      break;
    case 5:
      v0 = (v8 - 32) | 0x8000000000000000;
      v6 = v7 + 3;
      break;
    default:
      break;
  }

  if (v4 == v6 && v1 == v0)
  {
    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_4_8(v4, v5, v6);
  }

  return v15 & 1;
}

uint64_t sub_220C3BB20()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE300000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE300000000000000;
      v5 = 5459817;
      break;
    case 2:
      v1 = 0xE600000000000000;
      v5 = 0x534F64615069;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x534F63616DLL;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v5 = 0x534F6E6F69736976;
      break;
    case 5:
      v5 = 0x534F6863746177;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3BC80()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x7261626C6F6F74;
    }

    else
    {
      v5 = 0x6E656E6F706D6F63;
    }

    if (v4 == 1)
    {
      v0 = 0xE700000000000000;
    }

    else
    {
      v0 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x7261626C6F6F74;
    }

    else
    {
      v3 = 0x6E656E6F706D6F63;
    }

    if (v2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3BD80(char a1, uint64_t a2)
{
  v2 = 1701998445;
  if (a1)
  {
    OUTLINED_FUNCTION_15_5();
    v5 = v4 | 0x74726F7065520000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1936942444;
    }

    if (v3)
    {
      v7 = 0xEA00000000006465;
    }

    else
    {
      v7 = 0xE400000000000000;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
    v6 = 1701998445;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_5();
    v10 = v9 | 0x74726F7065520000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 1936942444;
    }

    if (v8)
    {
      v11 = 0xEA00000000006465;
    }

    else
    {
      v11 = 0xE400000000000000;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8(v6, a2, v2);
  }

  return v13 & 1;
}

uint64_t sub_220C3BE5C()
{
  v0 = 0xEB000000006C6C61;
  OUTLINED_FUNCTION_17_1();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6D53000000000000;
  v5 = v4;
  v6 = "accessoryRectangular";
  v7 = "accessoryCircular";
  v8 = v3;
  v9 = 0xEB000000006C6C61;
  v10 = "systemExtraLarge";
  switch(v5)
  {
    case 1:
      v8 = 0x654D6D6574737973;
      v9 = 0xEC0000006D756964;
      break;
    case 2:
      v8 = 0x614C6D6574737973;
      v9 = 0xEB00000000656772;
      break;
    case 3:
      v8 = 0xD000000000000010;
      v9 = 0x8000000220CB4970;
      break;
    case 4:
      v9 = 0x8000000220CB4990;
      v8 = 0xD000000000000011;
      break;
    case 5:
      v8 = OUTLINED_FUNCTION_27();
      v9 = 0xEF72656E726F4379;
      break;
    case 6:
      v9 = 0x8000000220CB49C0;
      v8 = 0xD000000000000014;
      break;
    case 7:
      v8 = OUTLINED_FUNCTION_27();
      v9 = 0xEF656E696C6E4979;
      break;
    case 8:
      v9 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_17_1();
      v3 = v11 & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
      v0 = 0xEC0000006D756964;
      break;
    case 2:
      OUTLINED_FUNCTION_17_1();
      v3 = v12 & 0xFFFFFFFFFFFFLL | 0x614C000000000000;
      v0 = 0xEB00000000656772;
      break;
    case 3:
      v3 = 0xD000000000000010;
      v0 = (v10 - 32) | 0x8000000000000000;
      break;
    case 4:
      v0 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000011;
      break;
    case 5:
      OUTLINED_FUNCTION_23_0();
      v0 = 0xEF72656E726F4379;
      break;
    case 6:
      v0 = (v6 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    case 7:
      OUTLINED_FUNCTION_23_0();
      v0 = 0xEF656E696C6E4979;
      break;
    case 8:
      v0 = 0xE700000000000000;
      OUTLINED_FUNCTION_1_9();
      break;
    default:
      break;
  }

  if (v8 == v3 && v9 == v0)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_3(v8, v1, v3);
  }

  return v14 & 1;
}

uint64_t sub_220C3C0A0()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xEB00000000746567;
      break;
    case 2:
      v0 = 0xE400000000000000;
      break;
    case 3:
      v0 = 0xE400000000000000;
      break;
    case 4:
      OUTLINED_FUNCTION_3_5(17);
      break;
    case 5:
      v0 = 0xE400000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v5 = 0x6469577961646F74;
      v1 = 0xEB00000000746567;
      break;
    case 2:
      v1 = 0xE400000000000000;
      v5 = 1936744813;
      break;
    case 3:
      v1 = 0xE400000000000000;
      v5 = 1769105779;
      break;
    case 4:
      OUTLINED_FUNCTION_2_6();
      break;
    case 5:
      v1 = 0xE400000000000000;
      v5 = 1937204590;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3C1F8()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_12_1();
      v0 = 0xEA00000000007974;
      break;
    case 2:
      v3 = 0x726568746165;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_25();
      v4 = 0x796C696144;
      goto LABEL_10;
    case 4:
      OUTLINED_FUNCTION_25();
      v3 = 0x796C72756F48;
LABEL_5:
      v0 = v3 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_3_5(16);
      break;
    case 7:
      v4 = 0x7265687461;
      goto LABEL_10;
    case 8:
      v4 = 0x65676E6168;
LABEL_10:
      v0 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v8)
  {
    case 1:
      OUTLINED_FUNCTION_11_5();
      v1 = 0xEA00000000007974;
      break;
    case 2:
      v7 = 0x57746E6572727563;
      v9 = 0x726568746165;
      goto LABEL_15;
    case 3:
      OUTLINED_FUNCTION_20();
      v10 = 0x796C696144;
      goto LABEL_21;
    case 4:
      OUTLINED_FUNCTION_20();
      v9 = 0x796C72756F48;
LABEL_15:
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_2_6();
      break;
    case 6:
      v7 = 0x79726F74736968;
      break;
    case 7:
      v7 = 0x6557657265766573;
      v10 = 0x7265687461;
      goto LABEL_21;
    case 8:
      v7 = 0x4372656874616577;
      v10 = 0x65676E6168;
LABEL_21:
      v1 = v10 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v7 && v0 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_4_8(v5, v6, v7);
  }

  return v12 & 1;
}

uint64_t sub_220C3C418(char a1, uint64_t a2)
{
  v2 = 0x726574746562;
  if (a1)
  {
    OUTLINED_FUNCTION_15_5();
    v5 = v4 | 0x74726F7065520000;
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0x6573726F77;
    }

    if (v3)
    {
      v7 = 0xEA00000000006465;
    }

    else
    {
      v7 = 0xE500000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x726574746562;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_15_5();
    v10 = v9 | 0x74726F7065520000;
    if (v8)
    {
      v2 = v10;
    }

    else
    {
      v2 = 0x6573726F77;
    }

    if (v8)
    {
      v11 = 0xEA00000000006465;
    }

    else
    {
      v11 = 0xE500000000000000;
    }
  }

  else
  {
    v11 = 0xE600000000000000;
  }

  if (v6 == v2 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_4_8(v6, a2, v2);
  }

  return v13 & 1;
}

uint64_t sub_220C3C4FC()
{
  OUTLINED_FUNCTION_1_9();
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x695764656E6E6970;
    }

    else
    {
      v5 = 0x6B63617473;
    }

    if (v4 == 1)
    {
      v0 = 0xEC00000074656764;
    }

    else
    {
      v0 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_2(v1, v2, v3);
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x695764656E6E6970;
    }

    else
    {
      v3 = 0x6B63617473;
    }

    if (v2 == 1)
    {
      v6 = 0xEC00000074656764;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v5 == v3 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3C5E4()
{
  OUTLINED_FUNCTION_0_11();
  switch(v2)
  {
    case 1:
      v0 = 0xE900000000000068;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_26();
      v0 = 0xEB00000000706154;
      break;
    case 4:
      v0 = 0xEE006E6F69746167;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v5 = 0x636E75614C707061;
      v1 = 0xE900000000000068;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v5 = 0x6570697773;
      break;
    case 3:
      OUTLINED_FUNCTION_24();
      v1 = 0xEB00000000706154;
      break;
    case 4:
      v5 = 0x6976614E72657375;
      v1 = 0xEE006E6F69746167;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3C74C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006E6F697461;
  v3 = 0x7469706963657270;
  v4 = a1;
  v5 = 0x7469706963657270;
  v6 = 0xED00006E6F697461;
  switch(v4)
  {
    case 1:
      v5 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_12_1();
      v6 = 0xEA00000000007974;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684957559;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x74617265706D6574;
      v2 = 0xEB00000000657275;
      break;
    case 2:
      OUTLINED_FUNCTION_11_5();
      v2 = 0xEA00000000007974;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684957559;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3C888(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x657263536C6C7566;
  }

  else
  {
    v3 = 0x64656E6E6970;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (a2)
  {
    v5 = 0x657263536C6C7566;
  }

  else
  {
    v5 = 0x64656E6E6970;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3C934()
{
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      v0 = 0xE600000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE600000000000000;
      v7 = 1953653104;
      goto LABEL_9;
    case 2:
      v1 = 0xE600000000000000;
      v7 = 1953722221;
LABEL_9:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v5 = 0x747361637265766FLL;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_220C3CA48(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6574656C706D6F63;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x64656C696166;
    }

    else
    {
      v5 = 0x656E6F646E616261;
    }

    if (v4 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x64656C696166 : 0x656E6F646E616261;
    if (a2 == 1)
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_3(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_220C3CB2C()
{
  OUTLINED_FUNCTION_8_3();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xEA00000000006576;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    case 4:
      v0 = 0xEB00000000657669;
      break;
    case 5:
      v0 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_7_4();
  switch(v6)
  {
    case 1:
      v1 = 0xE400000000000000;
      v5 = 1869768058;
      break;
    case 2:
      v5 = 0x694679746E657774;
      v1 = 0xEA00000000006576;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x7974666966;
      break;
    case 4:
      v5 = 0x4679746E65766573;
      v1 = 0xEB00000000657669;
      break;
    case 5:
      v5 = 0x72646E7548656E6FLL;
      v1 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4_8(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_220C3CCEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_4_8(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t GeocodeTaskCompletedEvent.init(startTime:endTime:location:reverseGeocodeSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for GeocodeTaskCompletedEvent(0);
  result = (v12)(a5 + v13[5], a2, v10);
  *(a5 + v13[6]) = a3;
  *(a5 + v13[7]) = v9;
  return result;
}

uint64_t type metadata accessor for GeocodeTaskCompletedEvent(uint64_t a1)
{
  result = qword_2812D12B0;
  if (!qword_2812D12B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GeocodeTaskCompletedEvent.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t GeocodeTaskCompletedEvent.startTime.setter()
{
  OUTLINED_FUNCTION_5();
  sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t GeocodeTaskCompletedEvent.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GeocodeTaskCompletedEvent(0) + 20);
  sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GeocodeTaskCompletedEvent.endTime.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for GeocodeTaskCompletedEvent(v2) + 20);
  sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*GeocodeTaskCompletedEvent.endTime.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for GeocodeTaskCompletedEvent(v0);
  return nullsub_1;
}

id GeocodeTaskCompletedEvent.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for GeocodeTaskCompletedEvent(0) + 24));

  return v1;
}

void GeocodeTaskCompletedEvent.location.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for GeocodeTaskCompletedEvent(v2) + 24);

  *(v1 + v3) = v0;
}

void (*GeocodeTaskCompletedEvent.location.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for GeocodeTaskCompletedEvent(v0);
  return nullsub_1;
}

uint64_t GeocodeTaskCompletedEvent.reverseGeocodeSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GeocodeTaskCompletedEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t GeocodeTaskCompletedEvent.reverseGeocodeSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GeocodeTaskCompletedEvent(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

void (*GeocodeTaskCompletedEvent.reverseGeocodeSource.modify())()
{
  v0 = OUTLINED_FUNCTION_5();
  type metadata accessor for GeocodeTaskCompletedEvent(v0);
  return nullsub_1;
}

uint64_t static GeocodeTaskCompletedEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_220C9F7A4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GeocodeTaskCompletedEvent(0);
  if ((sub_220C9F7A4() & 1) == 0)
  {
    return 0;
  }

  sub_220BF9260(0, &qword_27CF7BE70, 0x277D82BB8);
  if ((sub_220CA0ED4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a2 + v5);
  v7 = *(a1 + v5);

  return sub_220C3A9F4(v7, v6);
}

uint64_t sub_220C3D2C4(uint64_t a1)
{
  result = sub_220C9F7D4();
  if (v2 <= 0x3F)
  {
    result = sub_220BF9260(319, &qword_2812D0F68, 0x277CE41F8);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t CurrentLocationUpdateTelemetryPayload.Success.init(startTime:endTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v9 = *(v5 + 32);
  v9(a2, a1, v4);
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Success(0);
  v7 = OUTLINED_FUNCTION_5_5(updated);

  return (v9)(v7);
}

uint64_t CurrentLocationUpdateTelemetryPayload.Failure.init(startTime:endTime:reason:)@<X0>(uint64_t a1@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v8 = *(v7 + 32);
  v8(a3, a1, v6);
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Failure(0);
  v10 = OUTLINED_FUNCTION_5_5(updated);
  result = (v8)(v10);
  *(a3 + *(updated + 24)) = v5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateTelemetryPayload(_BYTE *result, int a2, int a3)
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

uint64_t sub_220C3D668(uint64_t a1)
{
  result = sub_220C9F7D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220C3D6FC(uint64_t a1)
{
  result = sub_220C9F7D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220C3D778()
{
  v2 = OUTLINED_FUNCTION_5();
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Success(v2);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v5 = OUTLINED_FUNCTION_2_7();
  if (v6(v5))
  {
    sub_220C3E010(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_7_5(v7);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v8 = sub_220CA0A84();
    __swift_project_value_buffer(v8, qword_2812D1770);
    v14 = sub_220CA0A64();
    v9 = sub_220CA0D84();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v11, v12, "Skipping logging of current location update success event; not part of sample.");
      MEMORY[0x223D95B30](v10, -1, -1);
    }
  }
}

uint64_t sub_220C3D97C(uint64_t a1, uint64_t a2)
{
  v2 = sub_220C9F804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v3 + 8))(v5, v2);
  sub_220C9FF74();

  type metadata accessor for CurrentLocationUpdateEvent(0);
  sub_220C3E280(&qword_27CF7BE88, type metadata accessor for CurrentLocationUpdateEvent, &protocol conformance descriptor for CurrentLocationUpdateEvent);
  sub_220C9FF94();
  type metadata accessor for CurrentLocationUpdateTelemetryPayload.Success(0);
  sub_220C9FFA4();
  return sub_220C9FF84();
}

void sub_220C3DB04()
{
  v2 = OUTLINED_FUNCTION_5();
  updated = type metadata accessor for CurrentLocationUpdateTelemetryPayload.Failure(v2);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated - 8);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v5 = OUTLINED_FUNCTION_2_7();
  if (v6(v5))
  {
    sub_220C3E010(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_7_5(v7);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v8 = sub_220CA0A84();
    __swift_project_value_buffer(v8, qword_2812D1770);
    v14 = sub_220CA0A64();
    v9 = sub_220CA0D84();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v11, v12, "Skipping logging of current location update failure event; not part of sample.");
      MEMORY[0x223D95B30](v10, -1, -1);
    }
  }
}

uint64_t sub_220C3DD08(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v6, v3);
  sub_220C9FF74();

  type metadata accessor for CurrentLocationUpdateFailedEvent(0);
  sub_220C3E280(&qword_27CF7BE78, type metadata accessor for CurrentLocationUpdateFailedEvent, &protocol conformance descriptor for CurrentLocationUpdateFailedEvent);
  sub_220C9FF94();
  v8[15] = *(a2 + *(type metadata accessor for CurrentLocationUpdateTelemetryPayload.Failure(0) + 24));
  sub_220C3DFBC();
  sub_220C9FFC4();
  sub_220C9FFA4();
  return sub_220C9FF84();
}

uint64_t sub_220C3DEE4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_220C3DFBC()
{
  result = qword_27CF7BE80;
  if (!qword_27CF7BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BE80);
  }

  return result;
}

uint64_t sub_220C3E010(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v8 = *(v7 + 8);
  v8(v1 + v4, v6);
  v8(v1 + v4 + v2[7], v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_220C3E174(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_3_0();
  v5(v4);
  OUTLINED_FUNCTION_1();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_220C3E1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_5();
  v7 = *(v6(v5) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(v3, v8);
}

uint64_t sub_220C3E280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220C3E314(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F73616552646E65 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C3E3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C3E314(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C3E3E0(uint64_t a1)
{
  v2 = sub_220C3E598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C3E41C(uint64_t a1)
{
  v2 = sub_220C3E598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SessionEndData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE90, &qword_220CA61E0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3E598();
  sub_220CA1254();
  v12 = v9;
  sub_220C3E5EC();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C3E598()
{
  result = qword_2812D05A8;
  if (!qword_2812D05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D05A8);
  }

  return result;
}

unint64_t sub_220C3E5EC()
{
  result = qword_2812CE7E0;
  if (!qword_2812CE7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE7E0);
  }

  return result;
}

uint64_t SessionEndData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BE98, &qword_220CA61E8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3E598();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C3E7A0();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C3E7A0()
{
  result = qword_27CF7BEA0;
  if (!qword_27CF7BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionEndData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SessionEndData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C3E9A8()
{
  result = qword_27CF7BEA8;
  if (!qword_27CF7BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEA8);
  }

  return result;
}

unint64_t sub_220C3EA00()
{
  result = qword_2812D0598;
  if (!qword_2812D0598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0598);
  }

  return result;
}

unint64_t sub_220C3EA58()
{
  result = qword_2812D05A0;
  if (!qword_2812D05A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D05A0);
  }

  return result;
}

uint64_t ComponentPositionData.init(row:column:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_220C3EB1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827314 && a2 == 0xE300000000000000;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6D756C6F63 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C3EBE0(char a1)
{
  if (a1)
  {
    return 0x6E6D756C6F63;
  }

  else
  {
    return 7827314;
  }
}

uint64_t sub_220C3EC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C3EB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C3EC3C(uint64_t a1)
{
  v2 = sub_220C3EE14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C3EC78(uint64_t a1)
{
  v2 = sub_220C3EE14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ComponentPositionData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEB0, &qword_220CA63F0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  v12 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3EE14();
  sub_220CA1254();
  v14 = 0;
  sub_220CA1114();
  if (!v2)
  {
    v13 = 1;
    sub_220CA1114();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C3EE14()
{
  result = qword_2812CFC20;
  if (!qword_2812CFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC20);
  }

  return result;
}

uint64_t ComponentPositionData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEB8, &qword_220CA63F8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3EE14();
  sub_220CA1234();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_220CA1044();
    v15 = 1;
    v12 = sub_220CA1044();
    (*(v7 + 8))(v10, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for ComponentPositionData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ComponentPositionData(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ComponentPositionData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C3F178()
{
  result = qword_27CF7BEC0;
  if (!qword_27CF7BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEC0);
  }

  return result;
}

unint64_t sub_220C3F1D0()
{
  result = qword_2812CFC10;
  if (!qword_2812CFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC10);
  }

  return result;
}

unint64_t sub_220C3F228()
{
  result = qword_2812CFC18;
  if (!qword_2812CFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFC18);
  }

  return result;
}

uint64_t sub_220C3F2C8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000220CB5300 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C3F368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C3F2C8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C3F394(uint64_t a1)
{
  v2 = sub_220C3F54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C3F3D0(uint64_t a1)
{
  v2 = sub_220C3F54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEC8, &qword_220CA6630);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3F54C();
  sub_220CA1254();
  v12 = v9;
  sub_220C3F5A0();
  sub_220CA1104();
  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_220C3F54C()
{
  result = qword_2812CF468;
  if (!qword_2812CF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF468);
  }

  return result;
}

unint64_t sub_220C3F5A0()
{
  result = qword_27CF7BED0;
  if (!qword_27CF7BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BED0);
  }

  return result;
}

uint64_t ReverseGeocodingEventData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BED8, &qword_220CA6638);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C3F54C();
  sub_220CA1234();
  if (!v2)
  {
    sub_220C3F754();
    sub_220CA1034();
    (*(v7 + 8))(v10, v5);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C3F754()
{
  result = qword_27CF7BEE0;
  if (!qword_27CF7BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEE0);
  }

  return result;
}

unint64_t sub_220C3F7AC()
{
  result = qword_2812CF440;
  if (!qword_2812CF440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF440);
  }

  return result;
}

unint64_t sub_220C3F804()
{
  result = qword_2812CF448;
  if (!qword_2812CF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF448);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingEventData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingEventData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C3FA14()
{
  result = qword_27CF7BEE8;
  if (!qword_27CF7BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BEE8);
  }

  return result;
}

unint64_t sub_220C3FA6C()
{
  result = qword_2812CF458;
  if (!qword_2812CF458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF458);
  }

  return result;
}

unint64_t sub_220C3FAC4()
{
  result = qword_2812CF460;
  if (!qword_2812CF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF460);
  }

  return result;
}

uint64_t Assembly.__allocating_init()()
{
  v0 = swift_allocObject();
  Assembly.init()();
  return v0;
}

uint64_t Assembly.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t NetworkEventData.taskDuration.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t NetworkEventData.bundleIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t NetworkEventData.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t NetworkEventData.providerListData.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 104) = v2;
  return result;
}

uint64_t NetworkEventData.cdnServer.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t NetworkEventData.cdnServer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t NetworkEventData.iterationIndex.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

__n128 NetworkEventData.init(startTime:dnsDuration:connectDuration:requestDuration:responseDuration:taskDuration:responseSize:statusCode:errorCode:eventType:cellularRadioAccessTechnology:isProxyConnection:bundleIdentifier:providerListData:cdnServer:iterationIndex:wasRacingRequest:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unsigned __int8 *a12, unsigned __int8 *a13, unsigned __int8 a14, __n128 a15, unint64_t *a17, __n128 a18, unint64_t a19, char a20, unsigned __int8 a21)
{
  v20 = *a12;
  v21 = *a13;
  v22 = *a17;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7 & 1;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u8[0] = v20;
  a9[5].n128_u8[1] = v21;
  a9[5].n128_u8[2] = a14;
  *(a9 + 88) = a15;

  a9[6].n128_u64[1] = v22;
  result = a18;
  a9[7] = a18;
  a9[8].n128_u64[0] = a19;
  a9[8].n128_u8[8] = a20 & 1;
  a9[8].n128_u8[9] = a21;
  return result;
}

uint64_t sub_220C400C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461727544736E64 && a2 == 0xEB000000006E6F69;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x447463656E6E6F63 && a2 == 0xEF6E6F6974617275;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275;
        if (v8 || (sub_220CA1154() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x8000000220CB5350 == a2;
          if (v9 || (sub_220CA1154() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x617275446B736174 && a2 == 0xEC0000006E6F6974;
            if (v10 || (sub_220CA1154() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65736E6F70736572 && a2 == 0xEC000000657A6953;
              if (v11 || (sub_220CA1154() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564;
                if (v12 || (sub_220CA1154() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
                  if (v13 || (sub_220CA1154() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
                    if (v14 || (sub_220CA1154() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001DLL && 0x8000000220CB5030 == a2;
                      if (v15 || (sub_220CA1154() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x8000000220CB5370 == a2;
                        if (v16 || (sub_220CA1154() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x8000000220CB5050 == a2;
                          if (v17 || (sub_220CA1154() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x8000000220CB5390 == a2;
                            if (v18 || (sub_220CA1154() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x65767265536E6463 && a2 == 0xE900000000000072;
                              if (v19 || (sub_220CA1154() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6F69746172657469 && a2 == 0xEE007865646E496ELL;
                                if (v20 || (sub_220CA1154() & 1) != 0)
                                {

                                  return 15;
                                }

                                else if (a1 == 0xD000000000000010 && 0x8000000220CB4FF0 == a2)
                                {

                                  return 16;
                                }

                                else
                                {
                                  v22 = sub_220CA1154();

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

uint64_t sub_220C40600(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x7461727544736E64;
      break;
    case 2:
      v3 = 0x63656E6E6F63;
      goto LABEL_12;
    case 3:
      v3 = 0x736575716572;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x617275446B736174;
      break;
    case 6:
      result = 0x65736E6F70736572;
      break;
    case 7:
      result = 0x6F43737574617473;
      break;
    case 8:
      result = 0x646F43726F727265;
      break;
    case 9:
      result = 0x707954746E657665;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0x65767265536E6463;
      break;
    case 15:
      result = 0x6F69746172657469;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C407F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C400C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C40820@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220C405F8();
  *a1 = result;
  return result;
}

uint64_t sub_220C40848(uint64_t a1)
{
  v2 = sub_220C40D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C40884(uint64_t a1)
{
  v2 = sub_220C40D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkEventData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BEF8, &qword_220CA68A0);
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v41 = *(v1 + 16);
  v42 = v8;
  v40 = v9;
  v10 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v10;
  v45 = *(v1 + 48);
  v11 = *(v1 + 56);
  v35 = *(v1 + 64);
  v36 = v11;
  v34 = *(v1 + 72);
  LODWORD(v11) = *(v1 + 80);
  v32 = *(v1 + 81);
  v33 = v11;
  v31 = *(v1 + 82);
  v12 = *(v1 + 96);
  v29 = *(v1 + 88);
  v30 = v12;
  v13 = *(v1 + 104);
  v27[0] = *(v1 + 112);
  v14 = *(v1 + 128);
  v27[1] = *(v1 + 120);
  v28 = v13;
  v39 = v14;
  v15 = *(v1 + 136);
  v16 = a1[3];
  v17 = a1;
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_220C40D10();
  sub_220CA1254();
  LOBYTE(v44) = 0;
  v20 = v43;
  sub_220CA1124();
  if (v20)
  {
    v21 = *(v4 + 8);
    v22 = v7;
    v23 = v19;
  }

  else
  {
    LODWORD(v43) = v15;
    OUTLINED_FUNCTION_6_7(1);
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(2);
    v42 = v7;
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(3);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(4);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_8_5(5);
    OUTLINED_FUNCTION_5_6();
    sub_220CA10B4();
    OUTLINED_FUNCTION_6_7(6);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(7);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    OUTLINED_FUNCTION_6_7(8);
    OUTLINED_FUNCTION_2_8();
    sub_220CA1124();
    LOBYTE(v44) = v33;
    v46 = 9;
    sub_220C40D64();
    OUTLINED_FUNCTION_2_8();
    sub_220CA1104();
    LOBYTE(v44) = v32;
    v46 = 10;
    sub_220C01050();
    OUTLINED_FUNCTION_2_8();
    sub_220CA1104();
    OUTLINED_FUNCTION_6_7(11);
    OUTLINED_FUNCTION_5_6();
    sub_220CA1084();
    OUTLINED_FUNCTION_8_5(12);
    OUTLINED_FUNCTION_5_6();
    sub_220CA10C4();
    v25 = v28;
    v44 = v28;
    v46 = 13;
    v26 = sub_220C40DB8();

    OUTLINED_FUNCTION_5_6();
    sub_220CA1094();

    if (v26)
    {
      v21 = *(v4 + 8);
      v22 = v42;
    }

    else
    {
      OUTLINED_FUNCTION_8_5(14);
      OUTLINED_FUNCTION_5_6();
      sub_220CA1074();
      OUTLINED_FUNCTION_8_5(15);
      OUTLINED_FUNCTION_5_6();
      sub_220CA10B4();
      OUTLINED_FUNCTION_6_7(16);
      OUTLINED_FUNCTION_5_6();
      sub_220CA1084();
      v21 = *(v4 + 8);
      v22 = v25;
    }

    v23 = v19;
  }

  return v21(v22, v23);
}

unint64_t sub_220C40D10()
{
  result = qword_2812D0220;
  if (!qword_2812D0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0220);
  }

  return result;
}

unint64_t sub_220C40D64()
{
  result = qword_2812D01F0;
  if (!qword_2812D01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01F0);
  }

  return result;
}

unint64_t sub_220C40DB8()
{
  result = qword_2812D01C0;
  if (!qword_2812D01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01C0);
  }

  return result;
}

uint64_t NetworkEventData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF00, &qword_220CA68A8);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C40D10();
  sub_220CA1234();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v32 = a2;
    LOBYTE(v34[0]) = 0;
    OUTLINED_FUNCTION_4_9();
    v6 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(1);
    v31 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(2);
    v30 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(3);
    v29 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(4);
    v28 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(5);
    v27 = sub_220CA0FE4();
    v58 = v7 & 1;
    OUTLINED_FUNCTION_0_12(6);
    v26 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(7);
    v25 = sub_220CA1054();
    OUTLINED_FUNCTION_0_12(8);
    v24 = sub_220CA1054();
    v23 = v6;
    sub_220C41384();
    OUTLINED_FUNCTION_4_9();
    sub_220CA1034();
    sub_220C327F4();
    OUTLINED_FUNCTION_4_9();
    sub_220CA1034();
    OUTLINED_FUNCTION_1_11(11);
    v22 = sub_220CA0FB4();
    OUTLINED_FUNCTION_1_11(12);
    v21 = sub_220CA0FF4();
    v9 = v8;
    LOBYTE(v33[0]) = 13;
    sub_220C413D8();
    OUTLINED_FUNCTION_4_9();
    sub_220CA0FC4();
    v20 = v34[0];

    OUTLINED_FUNCTION_1_11(14);
    v19 = sub_220CA0FA4();
    v11 = v10;
    OUTLINED_FUNCTION_1_11(15);
    v18 = sub_220CA0FE4();
    v54 = v12 & 1;
    v53 = 16;
    OUTLINED_FUNCTION_4_9();
    v13 = sub_220CA0FB4();
    v14 = OUTLINED_FUNCTION_3_6();
    v15(v14);
    v33[0] = v23;
    v33[1] = v31;
    v33[2] = v30;
    v33[3] = v29;
    v33[4] = v28;
    v33[5] = v27;
    v17 = v58;
    LOBYTE(v33[6]) = v58;
    v33[7] = v26;
    v33[8] = v25;
    v33[9] = v24;
    LOWORD(v33[10]) = 0;
    BYTE2(v33[10]) = v22;
    v33[11] = v21;
    v33[12] = v9;
    v33[13] = v20;
    v33[14] = v19;
    v33[15] = v11;
    v33[16] = v18;
    LODWORD(v59) = v54;
    LOBYTE(v33[17]) = v54;
    BYTE1(v33[17]) = v13;
    memcpy(v32, v33, 0x8AuLL);
    sub_220C4142C(v33, v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v34[0] = v23;
    v34[1] = v31;
    v34[2] = v30;
    v34[3] = v29;
    v34[4] = v28;
    v34[5] = v27;
    v35 = v17;
    *v36 = *v57;
    *&v36[3] = *&v57[3];
    v37 = v26;
    v38 = v25;
    v39 = v24;
    v40 = 0;
    v41 = 0;
    v42 = v22;
    v44 = v56;
    v43 = v55;
    v45 = v21;
    v46 = v9;
    v47 = v20;
    v48 = v19;
    v49 = v11;
    v50 = v18;
    v51 = v59;
    v52 = v13;
    return sub_220C41464(v34);
  }
}

unint64_t sub_220C41384()
{
  result = qword_27CF7BF08;
  if (!qword_27CF7BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF08);
  }

  return result;
}

unint64_t sub_220C413D8()
{
  result = qword_27CF7BF10;
  if (!qword_27CF7BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF10);
  }

  return result;
}

unint64_t sub_220C41498()
{
  result = qword_2812D01F8;
  if (!qword_2812D01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D01F8);
  }

  return result;
}

unint64_t sub_220C414F0()
{
  result = qword_2812D0200;
  if (!qword_2812D0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0200);
  }

  return result;
}

uint64_t sub_220C4157C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 138))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
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

uint64_t sub_220C415BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 138) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 138) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComponentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NetworkEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_220C41798()
{
  result = qword_27CF7BF18;
  if (!qword_27CF7BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF18);
  }

  return result;
}

unint64_t sub_220C417F0()
{
  result = qword_2812D0210;
  if (!qword_2812D0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0210);
  }

  return result;
}

unint64_t sub_220C41848()
{
  result = qword_2812D0218;
  if (!qword_2812D0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D0218);
  }

  return result;
}

uint64_t sub_220C4189C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 224));

  return v0;
}

uint64_t sub_220C4190C()
{
  sub_220C4189C();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_220C419CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a3 + 264);
  dispatch_group_enter(v8);
  v9 = *(a3 + 16);
  sub_220CA0104();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a4;
  *(v10 + 32) = a3;
  *(v10 + 40) = v8;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;

  v11 = v8;

  sub_220CA0444();
}

uint64_t sub_220C41AA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_220C9F7D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = a7;

  v17 = a5;

  sub_220C9F7C4();
  sub_220CA00A4();

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_220C41BF8(char a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_220CA0B54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220CA0B94();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_220BFBA88();
  }

  dispatch_group_leave(a3);
  sub_220BFA50C();
  v16 = sub_220CA0DE4();
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  aBlock[4] = sub_220C41F38;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220C01EFC;
  aBlock[3] = &block_descriptor_13;
  v18 = _Block_copy(aBlock);

  sub_220CA0B64();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_220BFF484();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF30, &qword_220CA6BB0);
  sub_220BFF510();
  sub_220CA0F14();
  MEMORY[0x223D95170](0, v15, v12, v18);
  _Block_release(v18);

  (*(v10 + 8))(v12, v9);
  return (*(v13 + 8))(v15, v21);
}

uint64_t sub_220C41EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF38, &qword_220CA6BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WeatherAnalytics::MapViewOrigin_optional __swiftcall MapViewOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MapViewOrigin.rawValue.getter()
{
  v1 = 0x7261626C6F6F74;
  if (*v0 != 1)
  {
    v1 = 0x6E656E6F706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_220C42034()
{
  result = qword_27CF7BF40;
  if (!qword_27CF7BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF40);
  }

  return result;
}

uint64_t sub_220C420AC@<X0>(uint64_t *a1@<X8>)
{
  result = MapViewOrigin.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MapViewOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C42260()
{
  result = qword_27CF7BF48;
  if (!qword_27CF7BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BF48);
  }

  return result;
}

uint64_t sub_220C4237C()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7BF80);
  __swift_project_value_buffer(v0, qword_27CF7BF80);
  return sub_220CA0244();
}

uint64_t CurrentLocationUpdateEvent.timedData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t CurrentLocationUpdateEvent.timedData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t CurrentLocationUpdateEvent.privateUserData.getter()
{
  type metadata accessor for CurrentLocationUpdateEvent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_6_0();

  return v1(v0);
}

uint64_t CurrentLocationUpdateEvent.privateUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CurrentLocationUpdateEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t CurrentLocationUpdateEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B610, &qword_220CA1EB0);
  OUTLINED_FUNCTION_1();
  (*(v3 + 104))(a1, v2);
  v4 = *(type metadata accessor for CurrentLocationUpdateEvent(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B7F0, &qword_220CA3150);
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 104);

  return v6(a1 + v4, v2);
}

uint64_t CurrentLocationUpdateEvent.Model.timedData.getter()
{
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t CurrentLocationUpdateEvent.Model.privateUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CurrentLocationUpdateEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  LOBYTE(v3) = *(v3 + 20);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
}

uint64_t CurrentLocationUpdateEvent.Model.init(timedData:privateUserData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 4);
  v8 = *(a2 + 20);
  sub_220CA04D4();
  OUTLINED_FUNCTION_1();
  (*(v9 + 32))(a3, a1);
  result = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  v11 = a3 + *(result + 20);
  *v11 = v5;
  *(v11 + 8) = v6;
  *(v11 + 16) = v7;
  *(v11 + 20) = v8;
  return result;
}

uint64_t sub_220C42888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74614464656D6974 && a2 == 0xE900000000000061;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5565746176697270 && a2 == 0xEF61746144726573)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C42960(char a1)
{
  if (a1)
  {
    return 0x5565746176697270;
  }

  else
  {
    return 0x74614464656D6974;
  }
}

uint64_t sub_220C429B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C42888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C429D8(uint64_t a1)
{
  v2 = sub_220C42C28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C42A14(uint64_t a1)
{
  v2 = sub_220C42C28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrentLocationUpdateEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BF98, &qword_220CA6CE0);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C42C28();
  sub_220CA1254();
  LOBYTE(v17) = 0;
  sub_220CA04D4();
  sub_220C315AC(&qword_2812D0D80, MEMORY[0x277CEAED8]);
  sub_220CA1104();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for CurrentLocationUpdateEvent.Model(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v11 + 4);
    LOBYTE(v11) = *(v11 + 20);
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v11;
    v16[7] = 1;
    sub_220BFF788();

    sub_220CA1104();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_220C42C28()
{
  result = qword_27CF7BFA0;
  if (!qword_27CF7BFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFA0);
  }

  return result;
}

uint64_t CurrentLocationUpdateEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = sub_220CA04D4();
  OUTLINED_FUNCTION_3();
  v28 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BFA8, &qword_220CA6CE8);
  OUTLINED_FUNCTION_3();
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  updated = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C42C28();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = updated;
  v14 = v28;
  LOBYTE(v32) = 0;
  sub_220C315AC(&qword_2812D0D78, MEMORY[0x277CEAEE0]);
  v15 = v31;
  sub_220CA1034();
  v16 = *(v14 + 32);
  v25 = v13;
  v16(v13, v7, v15);
  v36 = 1;
  sub_220BFF730();
  sub_220CA1034();
  v17 = OUTLINED_FUNCTION_1_12();
  v18(v17);
  v19 = v33;
  v20 = v34;
  v21 = v35;
  v22 = v25;
  v23 = &v25[*(v26 + 20)];
  *v23 = v32;
  *(v23 + 1) = v19;
  *(v23 + 4) = v20;
  v23[20] = v21;
  sub_220C42F98(v22, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_220C42FFC(v22);
}

uint64_t sub_220C42F98(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_220C42FFC(uint64_t a1)
{
  updated = type metadata accessor for CurrentLocationUpdateEvent.Model(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

void sub_220C430C0(uint64_t a1)
{
  sub_220C05010(319);
  if (v1 <= 0x3F)
  {
    sub_220C43144(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220C43144(uint64_t a1)
{
  if (!qword_2812D0E18)
  {
    sub_220BFF730();
    sub_220BFF788();
    v1 = sub_220CA0044();
    if (!v2)
    {
      atomic_store(v1, &qword_2812D0E18);
    }
  }
}

uint64_t sub_220C431D4(uint64_t a1)
{
  result = sub_220CA04D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationUpdateEvent.Model.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C43328()
{
  result = qword_27CF7BFD0;
  if (!qword_27CF7BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFD0);
  }

  return result;
}

unint64_t sub_220C43380()
{
  result = qword_27CF7BFD8;
  if (!qword_27CF7BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFD8);
  }

  return result;
}

unint64_t sub_220C433D8()
{
  result = qword_27CF7BFE0;
  if (!qword_27CF7BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFE0);
  }

  return result;
}

uint64_t sub_220C4346C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C434F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C4346C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C43524(uint64_t a1)
{
  v2 = sub_220C436C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C43560(uint64_t a1)
{
  v2 = sub_220C436C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ZoomData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BFE8, &qword_220CA6F00);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C436C4();
  sub_220CA1254();
  sub_220CA10F4();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_220C436C4()
{
  result = qword_27CF7BFF0;
  if (!qword_27CF7BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7BFF0);
  }

  return result;
}

uint64_t ZoomData.init(from:)@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7BFF8, &qword_220CA6F08);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C436C4();
  sub_220CA1234();
  if (!v2)
  {
    sub_220CA1024();
    v12 = v11;
    (*(v7 + 8))(v10, v3);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C43868()
{
  result = qword_27CF7C000;
  if (!qword_27CF7C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C000);
  }

  return result;
}

unint64_t sub_220C438C0()
{
  result = qword_27CF7C008;
  if (!qword_27CF7C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C008);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ZoomData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C43A04()
{
  result = qword_27CF7C010;
  if (!qword_27CF7C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C010);
  }

  return result;
}

unint64_t sub_220C43A5C()
{
  result = qword_27CF7C018;
  if (!qword_27CF7C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C018);
  }

  return result;
}

unint64_t sub_220C43AB4()
{
  result = qword_27CF7C020;
  if (!qword_27CF7C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C020);
  }

  return result;
}

uint64_t ReverseGeocodingFailedEventData.errorDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReverseGeocodingFailedEventData.errorDescription.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

WeatherAnalytics::ReverseGeocodingFailedEventData __swiftcall ReverseGeocodingFailedEventData.init(errorDescription:reverseGeocodeSource:)(WeatherAnalytics::ReverseGeocodingFailedEventData errorDescription, WeatherAnalytics::ReverseGeocodeSource reverseGeocodeSource)
{
  v3 = *reverseGeocodeSource;
  *v2 = errorDescription.errorDescription;
  *(v2 + 16) = v3;
  errorDescription.reverseGeocodeSource = reverseGeocodeSource;
  return errorDescription;
}

uint64_t sub_220C43BE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000220CB54E0 == a2;
  if (v3 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000220CB5300 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

unint64_t sub_220C43CB4(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_220C43CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C43BE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C43D1C(uint64_t a1)
{
  v2 = sub_220C43F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C43D58(uint64_t a1)
{
  v2 = sub_220C43F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReverseGeocodingFailedEventData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C028, &qword_220CA7100);
  OUTLINED_FUNCTION_3();
  v11 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v12 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C43F1C();
  sub_220CA1254();
  v15 = 0;
  sub_220CA10C4();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_220C3F5A0();
    sub_220CA1104();
  }

  return (*(v11 + 8))(v8, v4);
}

unint64_t sub_220C43F1C()
{
  result = qword_2812CEC38;
  if (!qword_2812CEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC38);
  }

  return result;
}

uint64_t ReverseGeocodingFailedEventData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C030, &qword_220CA7108);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C43F1C();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_220CA0FF4();
  v8 = v7;
  sub_220C3F754();
  sub_220CA1034();
  v9 = OUTLINED_FUNCTION_0_3();
  v10(v9);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_220C4418C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_220C441CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReverseGeocodingFailedEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C442FC()
{
  result = qword_27CF7C038;
  if (!qword_27CF7C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C038);
  }

  return result;
}

unint64_t sub_220C44354()
{
  result = qword_2812CEC28;
  if (!qword_2812CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC28);
  }

  return result;
}

unint64_t sub_220C443AC()
{
  result = qword_2812CEC30;
  if (!qword_2812CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CEC30);
  }

  return result;
}

uint64_t sub_220C44440(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6176414951417369 && a2 == 0xEE00656C62616C69)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_220CA1154();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_220C444E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C44440(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_220C44514(uint64_t a1)
{
  v2 = sub_220C446B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C44550(uint64_t a1)
{
  v2 = sub_220C446B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AQIAvailabilityData.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C040, &qword_220CA7330);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C446B4();
  sub_220CA1254();
  sub_220CA10D4();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_220C446B4()
{
  result = qword_2812CFDC0;
  if (!qword_2812CFDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDC0);
  }

  return result;
}

uint64_t AQIAvailabilityData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C048, &qword_220CA7338);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C446B4();
  sub_220CA1234();
  if (!v2)
  {
    v11 = sub_220CA1004();
    (*(v7 + 8))(v10, v3);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for AQIAvailabilityData(unsigned __int8 *a1, unsigned int a2)
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
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AQIAvailabilityData(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AQIAvailabilityData.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_220C44AAC()
{
  result = qword_27CF7C050;
  if (!qword_27CF7C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C050);
  }

  return result;
}

unint64_t sub_220C44B04()
{
  result = qword_2812CFDB0;
  if (!qword_2812CFDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDB0);
  }

  return result;
}

unint64_t sub_220C44B5C()
{
  result = qword_2812CFDB8;
  if (!qword_2812CFDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CFDB8);
  }

  return result;
}

uint64_t sub_220C44BB0()
{
  v1 = sub_220C9FB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  sub_220C9FD94();
  sub_220C02C4C();
  sub_220C9FB64();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_220C44DAC()
{
  v0 = sub_220C9FD04();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C44BB0();
  sub_220C9FCD4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_220C44EFC()
{
  sub_220C9FAA4();
  sub_220C9FA94();
  v0 = sub_220C9FA84();

  return v0;
}

uint64_t sub_220C44F50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
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

uint64_t sub_220C44F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220C44FDC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_220C4508C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_220CA0A84();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t AQIData.scale.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AQIData.scale.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AQIData.init(index:category:scale:providerDataOrigination:)@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 4) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = v6;
  return result;
}

uint64_t sub_220C45260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
    if (v6 || (sub_220CA1154() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
      if (v7 || (sub_220CA1154() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x8000000220CB55B0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_220CA1154();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_220C453B8(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 0x656C616373;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_220C4543C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C45260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C45464(uint64_t a1)
{
  v2 = sub_220C456A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C454A0(uint64_t a1)
{
  v2 = sub_220C456A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AQIData.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C058, &qword_220CA7600);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v16 = *(v1 + 4);
  v10 = *(v1 + 8);
  v14 = *(v1 + 16);
  v15 = v10;
  HIDWORD(v13) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C456A8();
  sub_220CA1254();
  v21 = 0;
  OUTLINED_FUNCTION_1_2();
  sub_220CA1114();
  if (!v2)
  {
    v11 = BYTE4(v13);
    v20 = 1;
    OUTLINED_FUNCTION_1_2();
    sub_220CA1114();
    v19 = 2;
    sub_220CA10C4();
    v18 = v11;
    v17 = 3;
    sub_220C456FC();
    OUTLINED_FUNCTION_1_2();
    sub_220CA1104();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_220C456A8()
{
  result = qword_2812CE858[0];
  if (!qword_2812CE858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812CE858);
  }

  return result;
}

unint64_t sub_220C456FC()
{
  result = qword_2812CF750;
  if (!qword_2812CF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CF750);
  }

  return result;
}

uint64_t AQIData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C060, &qword_220CA7608);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C456A8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_2_9();
  v6 = sub_220CA1044();
  OUTLINED_FUNCTION_2_9();
  v7 = sub_220CA1044();
  OUTLINED_FUNCTION_2_9();
  v12 = sub_220CA0FF4();
  v13 = v8;
  sub_220C4596C();
  sub_220CA1034();
  v9 = OUTLINED_FUNCTION_0_10();
  v10(v9);
  *a2 = v6;
  *(a2 + 4) = v7;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C4596C()
{
  result = qword_27CF7C068;
  if (!qword_27CF7C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C068);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_220C45A0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_220C45A4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AQIData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C45B80()
{
  result = qword_27CF7C070;
  if (!qword_27CF7C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C070);
  }

  return result;
}

unint64_t sub_220C45BD8()
{
  result = qword_2812CE848;
  if (!qword_2812CE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE848);
  }

  return result;
}

unint64_t sub_220C45C30()
{
  result = qword_2812CE850;
  if (!qword_2812CE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CE850);
  }

  return result;
}

WeatherAnalytics::WeatherDataLoadEventConclusion_optional __swiftcall WeatherDataLoadEventConclusion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WeatherDataLoadEventConclusion.rawValue.getter()
{
  v1 = 0x64656C696166;
  if (*v0 != 1)
  {
    v1 = 0x656E6F646E616261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

unint64_t sub_220C45D48()
{
  result = qword_27CF7C078;
  if (!qword_27CF7C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C078);
  }

  return result;
}

uint64_t sub_220C45DC0@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherDataLoadEventConclusion.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataLoadEventConclusion(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C45F74()
{
  result = qword_2812D09A8;
  if (!qword_2812D09A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812D09A8);
  }

  return result;
}

WeatherAnalytics::EmbedState_optional __swiftcall EmbedState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_220CA0F84();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t EmbedState.rawValue.getter()
{
  if (*v0)
  {
    return 0x657263536C6C7566;
  }

  else
  {
    return 0x64656E6E6970;
  }
}

unint64_t sub_220C46078()
{
  result = qword_27CF7C080;
  if (!qword_27CF7C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C080);
  }

  return result;
}

uint64_t sub_220C460F0@<X0>(uint64_t *a1@<X8>)
{
  result = EmbedState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for EmbedState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C462A4()
{
  result = qword_27CF7C088;
  if (!qword_27CF7C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C088);
  }

  return result;
}

uint64_t WidgetRefreshFailedEventData.widget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t WidgetRefreshFailedEventData.widget.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

WeatherAnalytics::WidgetRefreshFailedEventData __swiftcall WidgetRefreshFailedEventData.init(widget:reason:)(WeatherAnalytics::WidgetData widget, WeatherAnalytics::WidgetRefreshFailureReason reason)
{
  v3 = *(widget.name._countAndFlagsBits + 8);
  v4 = *(widget.name._countAndFlagsBits + 16);
  v5 = *widget.name._object;
  *v2 = *widget.name._countAndFlagsBits;
  *(v2 + 8) = v3;
  *(v2 + 16) = v4;
  *(v2 + 17) = v5;
  result.widget = widget;
  result.reason = reason;
  return result;
}

uint64_t sub_220C463C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567646977 && a2 == 0xE600000000000000;
  if (v4 || (sub_220CA1154() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_220CA1154();

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

uint64_t sub_220C4648C(char a1)
{
  if (a1)
  {
    return 0x6E6F73616572;
  }

  else
  {
    return 0x746567646977;
  }
}

uint64_t sub_220C464BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_220C463C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220C464E4(uint64_t a1)
{
  v2 = sub_220C466F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220C46520(uint64_t a1)
{
  v2 = sub_220C466F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetRefreshFailedEventData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C090, &qword_220CA7A60);
  OUTLINED_FUNCTION_3();
  v14 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v18 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C466F8();

  sub_220CA1254();
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v19 = 0;
  sub_220C4674C();
  OUTLINED_FUNCTION_1_13();
  v11 = v13[1];
  sub_220CA1104();

  if (!v11)
  {
    LOBYTE(v15) = v18;
    v19 = 1;
    sub_220C467A0();
    OUTLINED_FUNCTION_1_13();
    sub_220CA1104();
  }

  return (*(v14 + 8))(v7, v3);
}

unint64_t sub_220C466F8()
{
  result = qword_27CF7C098;
  if (!qword_27CF7C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C098);
  }

  return result;
}

unint64_t sub_220C4674C()
{
  result = qword_27CF7C0A0;
  if (!qword_27CF7C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0A0);
  }

  return result;
}

unint64_t sub_220C467A0()
{
  result = qword_27CF7C0A8;
  if (!qword_27CF7C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0A8);
  }

  return result;
}

uint64_t WidgetRefreshFailedEventData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7C0B0, &qword_220CA7A68);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220C466F8();
  sub_220CA1234();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  sub_220C469B8();
  OUTLINED_FUNCTION_0_13(&type metadata for WidgetData);
  v12 = v16;
  v11 = v17;
  v19 = v18;
  v20 = 1;
  sub_220C46A0C();
  OUTLINED_FUNCTION_0_13(&type metadata for WidgetRefreshFailureReason);
  (*(v7 + 8))(v10, v5);
  v13 = v16;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v19;
  *(a2 + 17) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_220C469B8()
{
  result = qword_27CF7C0B8;
  if (!qword_27CF7C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0B8);
  }

  return result;
}

unint64_t sub_220C46A0C()
{
  result = qword_27CF7C0C0;
  if (!qword_27CF7C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0C0);
  }

  return result;
}

unint64_t sub_220C46A64()
{
  result = qword_27CF7C0C8;
  if (!qword_27CF7C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0C8);
  }

  return result;
}

unint64_t sub_220C46ABC()
{
  result = qword_27CF7C0D0;
  if (!qword_27CF7C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshFailedEventData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_220C46C30()
{
  result = qword_27CF7C0D8;
  if (!qword_27CF7C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0D8);
  }

  return result;
}

unint64_t sub_220C46C88()
{
  result = qword_27CF7C0E0;
  if (!qword_27CF7C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0E0);
  }

  return result;
}

unint64_t sub_220C46CE0()
{
  result = qword_27CF7C0E8;
  if (!qword_27CF7C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0E8);
  }

  return result;
}

void WidgetRefreshTelemetryPayload.Success.init(startTime:endTime:widgetName:widgetFamily:)()
{
  OUTLINED_FUNCTION_3_8();
  v2 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 32);
  v4(v1, v0, v2);
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Success(0);
  v6 = OUTLINED_FUNCTION_5_7(refreshed);
  (v4)(v6);
  OUTLINED_FUNCTION_4_10();
}

void WidgetRefreshTelemetryPayload.Failure.init(startTime:endTime:widgetName:widgetFamily:reason:)()
{
  OUTLINED_FUNCTION_3_8();
  v3 = *v2;
  v4 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v6 = *(v5 + 32);
  v6(v1, v0, v4);
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Failure(0);
  v8 = OUTLINED_FUNCTION_5_7(refreshed);
  (v6)(v8);
  OUTLINED_FUNCTION_4_10();
  *(v1 + *(v0 + 32)) = v3;
}

_BYTE *storeEnumTagSinglePayload for WidgetRefreshTelemetryPayload(_BYTE *result, int a2, int a3)
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

uint64_t sub_220C46FA4(uint64_t a1)
{
  result = sub_220C9F7D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5();
  v6 = sub_220C9F7D4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220C9F7D4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_220C471A4(uint64_t a1)
{
  result = sub_220C9F7D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_220C47234()
{
  v2 = OUTLINED_FUNCTION_5();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Success(v2);
  v4 = *(*(refreshed - 8) + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v5 = OUTLINED_FUNCTION_2_10();
  if (v6(v5))
  {
    sub_220C47B2C(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetRefreshTelemetryPayload.Success);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_6(v7);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v8 = sub_220CA0A84();
    __swift_project_value_buffer(v8, qword_2812D1770);
    v14 = sub_220CA0A64();
    v9 = sub_220CA0D84();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v11, v12, "Skipping logging of widget refresh success event; not part of sample.");
      MEMORY[0x223D95B30](v10, -1, -1);
    }
  }
}

uint64_t sub_220C47438(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v6, v3);
  sub_220C9FF74();

  type metadata accessor for WidgetRefreshEvent(0);
  sub_220C47DB4(&qword_27CF7C100, type metadata accessor for WidgetRefreshEvent, "q+VaԶ");
  sub_220C9FF94();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Success(0);
  v8 = (a2 + *(refreshed + 24));
  v9 = *v8;
  v10 = v8[1];
  LOBYTE(v8) = *(a2 + *(refreshed + 28));
  v12[1] = v9;
  v12[2] = v10;
  v13 = v8;
  sub_220C47DFC();

  sub_220C9FFC4();

  sub_220C9FFA4();
  return sub_220C9FF84();
}

void sub_220C47634()
{
  v2 = OUTLINED_FUNCTION_5();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Failure(v2);
  v4 = *(*(refreshed - 8) + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v5 = OUTLINED_FUNCTION_2_10();
  if (v6(v5))
  {
    sub_220C47B2C(v0, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetRefreshTelemetryPayload.Failure);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_8_6(v7);
    sub_220CA0444();
  }

  else
  {
    if (qword_2812D1768 != -1)
    {
      OUTLINED_FUNCTION_1_10(&qword_2812D1768);
    }

    v8 = sub_220CA0A84();
    __swift_project_value_buffer(v8, qword_2812D1770);
    v14 = sub_220CA0A64();
    v9 = sub_220CA0D84();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      OUTLINED_FUNCTION_8_4(&dword_220BF4000, v11, v12, "Skipping logging of widget refresh failure event; not part of sample.");
      MEMORY[0x223D95B30](v10, -1, -1);
    }
  }
}

uint64_t sub_220C47838(uint64_t a1, uint64_t a2)
{
  v3 = sub_220C9F804();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220C9F7F4();
  sub_220C9F7E4();
  (*(v4 + 8))(v6, v3);
  sub_220C9FF74();

  type metadata accessor for WidgetRefreshFailedEvent(0);
  sub_220C47DB4(&qword_27CF7C0F0, type metadata accessor for WidgetRefreshFailedEvent, &protocol conformance descriptor for WidgetRefreshFailedEvent);
  sub_220C9FF94();
  refreshed = type metadata accessor for WidgetRefreshTelemetryPayload.Failure(0);
  v8 = (a2 + refreshed[6]);
  v9 = *v8;
  v10 = v8[1];
  LOBYTE(v8) = *(a2 + refreshed[7]);
  v11 = *(a2 + refreshed[8]);
  v13[1] = v9;
  v13[2] = v10;
  v14 = v8;
  v15 = v11;
  sub_220C47AD8();

  sub_220C9FFC4();

  sub_220C9FFA4();
  return sub_220C9FF84();
}

unint64_t sub_220C47AD8()
{
  result = qword_27CF7C0F8;
  if (!qword_27CF7C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C0F8);
  }

  return result;
}

uint64_t sub_220C47B2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_220C9F7D4();
  OUTLINED_FUNCTION_1();
  v8 = *(v7 + 8);
  v8(v1 + v4, v6);
  v8(v1 + v4 + v2[7], v6);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_220C47CA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_220C47D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = OUTLINED_FUNCTION_5();
  v7 = *(v6(v5) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a3(v3, v8);
}

uint64_t sub_220C47DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_220C47DFC()
{
  result = qword_27CF7C108;
  if (!qword_27CF7C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF7C108);
  }

  return result;
}

uint64_t sub_220C47F18()
{
  v0 = sub_220CA0254();
  __swift_allocate_value_buffer(v0, qword_27CF7C140);
  __swift_project_value_buffer(v0, qword_27CF7C140);
  return sub_220CA0244();
}

uint64_t PrecipitationNotificationIncorrectEvent.eventData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1, v0);
}

uint64_t PrecipitationNotificationIncorrectEvent.eventData.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B5F0, &unk_220CA1E90);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t PrecipitationNotificationIncorrectEvent.locationData.getter()
{
  v0 = OUTLINED_FUNCTION_6();
  type metadata accessor for PrecipitationNotificationIncorrectEvent(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_6_0();

  return v2(v1);
}

uint64_t PrecipitationNotificationIncorrectEvent.locationData.setter()
{
  v2 = OUTLINED_FUNCTION_5();
  v3 = *(type metadata accessor for PrecipitationNotificationIncorrectEvent(v2) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF7B9A0, &qword_220CA3C20);
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}