id QOSConfig.init(appTarget:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___QOSConfigInternal_issuesUrl];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR___QOSConfigInternal_locationUrl];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v3[OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs];
  *v8 = 0;
  v8[8] = 1;
  *&v3[OBJC_IVAR___QOSConfigInternal_appTarget] = a1;
  v9 = &v3[OBJC_IVAR___QOSConfigInternal_locale];
  *v9 = a2;
  *(v9 + 1) = a3;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for QOSConfig();
  return objc_msgSendSuper2(&v11, sel_init);
}

void *sub_26144095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for QOSConfig();
  v42[3] = v14;
  v42[4] = &off_2873CC728;
  v42[0] = a1;
  type metadata accessor for MusicPlaybackErrorMessage();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v42, v14);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (&v39[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v41[3] = v14;
  v41[4] = &off_2873CC728;
  v41[0] = v20;
  v15[18] = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_261440F08(v41, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = a4;
  v15[10] = a5;
  v15[11] = a6;
  v15[12] = a7;
  v21 = objc_opt_self();

  v22 = [v21 defaultSessionConfiguration];
  v23 = [objc_opt_self() sessionWithConfiguration_];

  type metadata accessor for Network();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a2;
  v24[4] = a3;
  sub_261440F08(v41, v39);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x28223BE20](v25, v25);
  v27 = (&v39[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  swift_retain_n();

  v30 = sub_261440F90(v29, v24, a2, a3);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_261440F08(v41, v39);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  MEMORY[0x28223BE20](v31, v31);
  v33 = (&v39[-1] - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;

  v36 = sub_261441264(v35, v24, v30, a2, a3);

  __swift_destroy_boxed_opaque_existential_1(v39);
  v15[16] = type metadata accessor for MusicIssuesService();
  v15[17] = &off_281EB2578;

  v15[13] = v36;
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v15;
}

uint64_t static QOSErrorMessage.getSwiftInstance(config:logger:metricsRecorder:defaultAlert:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v15 = *&a1[OBJC_IVAR___QOSConfigInternal_appTarget];
  if (v15 == 1)
  {
    v16 = a1;

    v17 = sub_26144095C(v16, a2, a3, a4, a5, a6, a7);
    result = type metadata accessor for MusicPlaybackErrorMessage();
    v19 = &off_2873CCBE8;
LABEL_5:
    a8[3] = result;
    a8[4] = v19;
    *a8 = v17;
    return result;
  }

  if (!v15)
  {
    v20 = a1;

    v17 = sub_2614569A8(v20, a2, a3, a4, a5, a6, a7);
    result = type metadata accessor for TVPlaybackErrorMessage();
    v19 = &off_2873CD2F0;
    goto LABEL_5;
  }

  result = sub_261464DB0();
  __break(1u);
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

uint64_t sub_261440F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261440F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for QOSConfig();
  v32[3] = v8;
  v32[4] = &off_2873CC728;
  v32[0] = a1;
  v9 = type metadata accessor for Network();
  v30 = v9;
  v31 = &off_2873CC4F0;
  v29[0] = a2;
  type metadata accessor for LocationService();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v32, v8);
  MEMORY[0x28223BE20](v11, v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v15, v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v13;
  v20 = *v17;
  v27 = v8;
  v28 = &off_2873CC728;
  v25 = &off_2873CC4F0;
  *&v26 = v19;
  v24 = v9;
  *&v23 = v20;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  sub_2614411B0(&v26, v10 + 16);
  sub_2614411B0(&v23, v10 + 56);
  *(v10 + 96) = a3;
  *(v10 + 104) = a4;
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v10;
}

uint64_t sub_2614411B0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

void *sub_261441264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v30[-1] - v11;
  v13 = type metadata accessor for QOSConfig();
  v35[3] = v13;
  v35[4] = &off_2873CC728;
  v35[0] = a1;
  v14 = type metadata accessor for Network();
  v33 = v14;
  v34 = &off_2873CC4F0;
  v32[0] = a2;
  type metadata accessor for MusicIssuesService();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (&v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v20, v20);
  v22 = (&v30[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v18;
  v25 = *v22;
  v31[3] = v13;
  v31[4] = &off_2873CC728;
  v30[4] = &off_2873CC4F0;
  v31[0] = v24;
  v30[3] = v14;
  v30[0] = v25;
  v15[14] = 0;
  v15[16] = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_261440F08(v31, (v15 + 2));
  sub_261440F08(v30, (v15 + 7));
  v15[12] = v29;
  v15[13] = a5;
  v15[15] = a3;
  v26 = sub_261464B40();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v15;

  sub_261456364(0, 0, v12, &unk_2614672A0, v27);

  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v15;
}

uint64_t sub_2614415D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261444408;

  return sub_261441690(a1, v4);
}

uint64_t sub_261441690(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261444500;

  return v6(a1);
}

uint64_t sub_261441788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261444408;

  return sub_26144183C(a1, v4, v5, v6);
}

uint64_t sub_26144185C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 16), *(*(v0 + 16) + 40));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_261442C94;

  return sub_261441AB4();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_261441940()
{
  v1 = v0[3];
  v0[4] = sub_261441AD4();
  v2 = *(v1 + OBJC_IVAR___QOSConfigInternal_appTarget);
  if (v2 == 1)
  {
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_2614420B0;
    v5 = 0x8000000261468BD0;
    v4 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_26144CBB8;
    v4 = 0xD000000000000021;
    v5 = 0x8000000261468CA0;
LABEL_5:

    return sub_261441BAC(v4, v5);
  }

  v0[2] = v2;

  return sub_261464DB0();
}

id sub_261441AD4()
{
  if (*(v0 + OBJC_IVAR___QOSConfigInternal_appTarget) > 1uLL)
  {
    result = sub_261464DB0();
    __break(1u);
  }

  else
  {
    v1 = sub_261464920();
    v2 = sub_261464920();
    v3 = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

    return v3;
  }

  return result;
}

uint64_t sub_261441BAC(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_261441BD0, 0, 0);
}

uint64_t sub_261441BD0()
{
  v1 = v0[22];
  v2 = sub_261464920();
  v0[23] = v2;
  v3 = [v1 stringForKey_];
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_261441F18;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FEAF850, &unk_2614672F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_261441EF4;
  v0[13] = &block_descriptor_3;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_261441D1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261441D84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261441E14(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF848, &qword_261467AB0);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a2)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      *(v12 + 8) = a3;
      v13 = a2;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_261441F18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_261457264;
  }

  else
  {
    v2 = sub_261442028;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261442028()
{
  v1 = *(v0 + 184);

  v2 = sub_261464970();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_2614420B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x2822009F8](sub_2614421B0, 0, 0);
}

uint64_t sub_2614421B0()
{
  *(*(v0 + 24) + OBJC_IVAR___QOSConfigInternal_issuesUrl) = *(v0 + 72);

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_261442278;

  return sub_261441BAC(0xD000000000000018, 0x8000000261468BF0);
}

uint64_t sub_261442278(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;

  return MEMORY[0x2822009F8](sub_261442378, 0, 0);
}

uint64_t sub_261442378()
{
  *(*(v0 + 24) + OBJC_IVAR___QOSConfigInternal_locationUrl) = *(v0 + 96);

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_261442750;

  return sub_261442440(0xD00000000000002BLL, 0x8000000261468C10);
}

uint64_t sub_261442440(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_261442464, 0, 0);
}

uint64_t sub_261442464()
{
  v1 = v0[22];
  v2 = sub_261464920();
  v0[23] = v2;
  v3 = [v1 integerForKey_];
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2614425B0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF840, &qword_2614672E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_261441EF4;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2614425B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_2614572F4;
  }

  else
  {
    v2 = sub_2614426C0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2614426C0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = sub_261464B60();
  v4 = *(v0 + 200) != 0;
  v5 = *(v0 + 8);

  return v5(v3, v4);
}

uint64_t sub_261442750(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 160) = a2;

  return MEMORY[0x2822009F8](sub_261442854, 0, 0);
}

uint64_t sub_261442854()
{
  v1 = 1800;
  if ((*(v0 + 160) & 1) == 0)
  {
    v1 = *(v0 + 120);
  }

  v2 = *(v0 + 24) + OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs;
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_261442928;

  return sub_261442440(0xD00000000000002ELL, 0x8000000261468C40);
}

uint64_t sub_261442928(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 161) = a2;

  return MEMORY[0x2822009F8](sub_261442A2C, 0, 0);
}

uint64_t sub_261442A2C()
{
  v1 = 3600;
  if ((*(v0 + 161) & 1) == 0)
  {
    v1 = *(v0 + 136);
  }

  v2 = *(v0 + 24) + OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs;
  *v2 = v1;
  *(v2 + 8) = 0;
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_261442B00;

  return sub_261442440(0xD00000000000002BLL, 0x8000000261468C70);
}

uint64_t sub_261442B00(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 162) = a2;

  return MEMORY[0x2822009F8](sub_261442C04, 0, 0);
}

uint64_t sub_261442C04()
{
  v1 = *(v0 + 162);
  v2 = *(v0 + 152);
  v3 = *(v0 + 24);

  v4 = 180;
  if ((v1 & 1) == 0)
  {
    v4 = v2;
  }

  v5 = v3 + OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs;
  *v5 = v4;
  *(v5 + 8) = 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_261442C94()
{

  return MEMORY[0x2822009F8](sub_261442D90, 0, 0);
}

uint64_t sub_261442D90()
{
  v1 = *(v0 + 16);
  *(v1 + 112) = sub_261442E04();

  sub_261443D8C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261442E04()
{
  v38 = sub_261464620();
  v1 = *(v38 - 8);
  v3 = MEMORY[0x28223BE20](v38, v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v35 - v7;
  v9 = (*__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_locationUrl);
  v10 = v9[1];
  if (v10)
  {
    v11 = *v9;
    v12 = (*__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_issuesUrl);
    v13 = v12[1];
    if (v13)
    {
      v35 = *v12;
      v36 = v5;

      sub_261443120(1uLL, v11, v10, v8);

      v14 = v0[12];

      v15 = sub_261443828(v8, v14);
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = *(v1 + 8);
      v23 = v8;
      v24 = v38;
      v37 = v1 + 8;
      v22(v23, v38);
      v25 = v22;

      if (v17)
      {
        v26 = sub_26145F584(v15, v17, v19, v21);

        v27 = v36;
        sub_261463188(1uLL, v35, v13, v26, v36);

        if (sub_26145FFF0(v27))
        {
          v28 = v0[12];

          v29 = sub_26145EFE8(v27, v28);
          v25(v27, v24);

          return v29;
        }

        v31 = [objc_opt_self() sharedSession];
        v32 = [v31 configuration];

        v33 = [v32 URLCache];
        if (v33)
        {
          v34 = sub_261464600();
          [v33 removeCachedResponseForRequest_];
        }

        v25(v27, v24);
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_261443120@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v27 = a4;
  v31 = sub_261464620();
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA30, &qword_261468480);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_261464740();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v28 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v27 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAFA38, &qword_261468488);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v27 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF960, &qword_261467AA8);
  sub_2614646B0();
  *(swift_allocObject() + 16) = xmmword_261467150;
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_10;
    }

    a1 = 0xE500000000000000;
  }

  else
  {
    a1 = 0xE200000000000000;
  }

  sub_2614646A0();

  sub_2614435C4(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_261463954(v12);
    (*(v5 + 56))(v24, 1, 1, v31);
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    (*(v14 + 16))(v28, v20, v13);
    sub_261464610();
    sub_2614645F0();
    (*(v14 + 8))(v20, v13);
    v25 = v31;
    (*(v5 + 16))(v24, v8, v31);
    (*(v5 + 56))(v24, 0, 1, v25);
    (*(v5 + 8))(v8, v25);
    if ((*(v5 + 48))(v24, 1, v25) != 1)
    {
      return (*(v5 + 32))(v27, v24, v25);
    }
  }

  __break(1u);
LABEL_10:
  v32 = a1;
  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t sub_2614435C4@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_2614646F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF8D8, &unk_261467340);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v17 - v12;
  sub_2614646E0();
  v14 = *(v6 + 48);
  if (!v14(v13, 1, v5))
  {

    sub_2614646C0();
  }

  if (v14(v13, 1, v5))
  {
    v15 = sub_261464740();
    (*(*(v15 - 8) + 56))(a4, 1, 1, v15);
  }

  else
  {
    (*(v6 + 16))(v9, v13, v5);
    sub_2614646D0();
    (*(v6 + 8))(v9, v5);
  }

  return sub_2614437C0(v13);
}

uint64_t sub_2614437C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF8D8, &unk_261467340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261443828(uint64_t a1, void (*a2)(uint64_t, unint64_t, unint64_t))
{
  v3 = sub_26144396C(a1, a2);
  if (v3)
  {
    v4 = v3;
    sub_261464650();
    swift_allocObject();
    sub_261464640();
    v5 = [v4 data];
    v6 = sub_261464760();
    v8 = v7;

    sub_2614606AC();
    sub_261464630();

    sub_261457D50(v6, v8);

    return v10;
  }

  else
  {
    a2(1, 0xD000000000000017, 0x80000002614694C0);
    return 0;
  }
}

id sub_26144396C(uint64_t a1, void (*a2)(void, unint64_t, unint64_t))
{
  v3 = [objc_opt_self() sharedSession];
  v4 = [v3 configuration];

  v5 = [v4 URLCache];
  if (!v5 || (v6 = sub_261464600(), v7 = [v5 cachedResponseForRequest_], v5, v6, (result = v7) == 0))
  {
    sub_261464CF0();

    sub_261464620();
    sub_261443ADC();
    v9 = sub_261464D90();
    MEMORY[0x266702930](v9);

    a2(0, 0xD000000000000017, 0x8000000261468A80);

    return 0;
  }

  return result;
}

unint64_t sub_261443ADC()
{
  result = qword_2811AE990;
  if (!qword_2811AE990)
  {
    sub_261464620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE990);
  }

  return result;
}

uint64_t sub_261443B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_2811AE950 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v5 = qword_2811AE958;
  if (a1 == 1)
  {
    v6 = sub_261464BB0();
  }

  else
  {
    if (a1)
    {
      result = sub_261464DB0();
      __break(1u);
      return result;
    }

    v6 = sub_261464BA0();
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF838, &qword_2614672C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261467150;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_261443D38();
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;

  sub_261464860("%{public}@", 10, 2, &dword_26143F000, v5, v7, v8);
}

uint64_t sub_261443C80()
{
  sub_261443CEC();
  result = sub_261464BF0();
  qword_2811AE958 = result;
  return result;
}

unint64_t sub_261443CEC()
{
  result = qword_2811AE740;
  if (!qword_2811AE740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AE740);
  }

  return result;
}

unint64_t sub_261443D38()
{
  result = qword_2811AE758;
  if (!qword_2811AE758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE758);
  }

  return result;
}

void *sub_261443D8C()
{
  v1 = sub_261464870();
  v35 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261464890();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2614648B0();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v28 - v16;
  v18 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs;
  if (*(v18 + 8) & 1) != 0 || (v19 = *v18, v20 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]) + OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs, (*(v20 + 8)) || (v33 = *v20, result = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]), v22 = *result + OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs, (*(v22 + 8)))
  {
    v23 = v0[12];

    v23(1, 0xD000000000000026, 0x80000002614693D0);
  }

  else
  {
    v32 = v0;
    if (v19 < 0)
    {
      __break(1u);
    }

    else
    {
      v29 = *v22;
      sub_261444284(v19 + 1);
      sub_261444310();
      v30 = sub_261464BE0();
      sub_2614648A0();
      sub_2614648C0();
      v31 = *(v10 + 8);
      v31(v14, v9);
      v24 = swift_allocObject();
      v25 = v33;
      v24[2] = v32;
      v24[3] = v25;
      v24[4] = v29;
      aBlock[4] = sub_26144467C;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_261444638;
      aBlock[3] = &block_descriptor_1;
      v26 = _Block_copy(aBlock);

      sub_261464880();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_26144435C(qword_2811AE9A8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF980, &qword_261467BC8);
      sub_2614443A4();
      sub_261464CB0();
      v27 = v30;
      MEMORY[0x266702AC0](v17, v8, v4, v26);
      _Block_release(v26);

      (*(v35 + 8))(v4, v1);
      (*(v34 + 8))(v8, v5);
      return (v31)(v17, v9);
    }
  }

  return result;
}

uint64_t sub_26144424C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_261444284(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x2667032B0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x2667032B0](&v3, 8);
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

unint64_t sub_261444310()
{
  result = qword_2811AE998;
  if (!qword_2811AE998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811AE998);
  }

  return result;
}

uint64_t sub_26144435C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2614443A4()
{
  result = qword_2811AE9A0;
  if (!qword_2811AE9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF980, &qword_261467BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE9A0);
  }

  return result;
}

uint64_t sub_26144440C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261444500()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261444638(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_261444688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  v7 = objc_opt_self();
  v21 = sub_261444968;
  v22 = v6;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261444900;
  v20 = &block_descriptor_13;
  v8 = _Block_copy(&v17);
  swift_retain_n();

  v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:v8 block:0.0];
  _Block_release(v8);

  v10 = *(a1 + 120);
  v11 = a2;
  v21 = sub_261460580;
  v22 = v10;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261444900;
  v20 = &block_descriptor_16;
  v12 = _Block_copy(&v17);
  swift_retain_n();

  v13 = [v7 scheduledTimerWithTimeInterval:1 repeats:v12 block:v11];
  _Block_release(v12);

  v14 = a3;
  v21 = sub_261460588;
  v22 = a1;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_261444900;
  v20 = &block_descriptor_19;
  v15 = _Block_copy(&v17);

  v16 = [v7 scheduledTimerWithTimeInterval:1 repeats:v15 block:v14];
  _Block_release(v15);
}

void sub_261444900(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_261444970(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF830, &qword_261467BD0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  v8 = sub_261464B40();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;

  sub_261456364(0, 0, v7, &unk_261467C68, v9);

  return [a1 invalidate];
}

uint64_t sub_261444A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_261444408;

  return sub_261444B4C(a1, v4, v5, v6);
}

uint64_t sub_261444B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_26146070C;

  return sub_261444BE0();
}

uint64_t sub_261444BE0()
{
  v1[7] = v0;
  v2 = sub_261464620();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261444CA0, 0, 0);
}

uint64_t sub_261444CA0()
{
  v1 = (*__swift_project_boxed_opaque_existential_1((v0[7] + 16), *(v0[7] + 40)) + OBJC_IVAR___QOSConfigInternal_locationUrl);
  v2 = v1[1];
  if (v2)
  {
    v3 = v0[10];
    v4 = *v1;
    sub_261440F08(v0[7] + 56, (v0 + 2));
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

    sub_261443120(1uLL, v4, v2, v3);

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_261460810;
    v6 = v0[10];

    return sub_261444E60(v6);
  }

  else
  {
    v8 = *(v0[7] + 96);

    v8(1, 0xD000000000000025, 0x8000000261469520);

    v9 = v0[1];

    return v9(0, 0, 0, 0);
  }
}

uint64_t sub_261444E60(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return MEMORY[0x2822009F8](sub_261444E80, 0, 0);
}

uint64_t sub_261444E80()
{
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_26145EB50;
  v2 = *(v0 + 72);

  return MEMORY[0x28211ECF8](v2, 0);
}

unint64_t *sub_261444F6C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit16TVDeviceCriteriaVSg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26144503C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261445074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2614450F0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261445144()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261445184()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261445A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_26144440C;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_261445BE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261445E40(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_261445C28()
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_261445C8C(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_261445CD8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_261464D60();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_261445D58@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_261464D60();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_261445DC8(uint64_t a1)
{
  v2 = sub_261446024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261445E04(uint64_t a1)
{
  v2 = sub_261446024();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_261445E40(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF588, &qword_261465770);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261446024();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF590, &qword_261465778);
    sub_261446078();
    sub_261464D80();
    v8 = v10[1];
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
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

unint64_t sub_261446024()
{
  result = qword_2811AE978;
  if (!qword_2811AE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE978);
  }

  return result;
}

unint64_t sub_261446078()
{
  result = qword_2811AE750;
  if (!qword_2811AE750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF590, &qword_261465778);
    sub_261446144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE750);
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

unint64_t sub_261446144()
{
  result = qword_2811AE980;
  if (!qword_2811AE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicIssues.CodingKeys(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MusicIssues.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_26144628C()
{
  result = qword_27FEAF598;
  if (!qword_27FEAF598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF598);
  }

  return result;
}

unint64_t sub_2614462E4()
{
  result = qword_2811AE968;
  if (!qword_2811AE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE968);
  }

  return result;
}

unint64_t sub_26144633C()
{
  result = qword_2811AE970;
  if (!qword_2811AE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE970);
  }

  return result;
}

uint64_t sub_261446390(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x636973756DLL;
  }

  else
  {
    v2 = 0x6F65646976;
  }

  if (*a2)
  {
    v3 = 0x636973756DLL;
  }

  else
  {
    v3 = 0x6F65646976;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_261464DA0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_261446410()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261446480(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_2614464D4(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_261446540@<X0>(char *a2@<X8>)
{
  v3 = sub_261464D60();

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

  *a2 = v5;
  return result;
}

void sub_2614465A0(uint64_t *a1@<X8>)
{
  v2 = 0x6F65646976;
  if (*v1)
  {
    v2 = 0x636973756DLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_2614465DC()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_2614466B0(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_261446770(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_261446840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261446E80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_261446870(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1735290739;
  v5 = 0xE500000000000000;
  v6 = 0x6D75626C61;
  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974617473;
  if (v2 != 3)
  {
    v8 = 0x7473696C79616C70;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6F65646976;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_261446900(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_27FEAF580 == -1)
      {
        return sub_261464720();
      }
    }

    else if (a1 == 3)
    {
      if (qword_27FEAF580 == -1)
      {
        return sub_261464720();
      }
    }

    else if (qword_27FEAF580 == -1)
    {
      return sub_261464720();
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    if (qword_27FEAF580 == -1)
    {
      return sub_261464720();
    }

    goto LABEL_15;
  }

  if (qword_27FEAF580 != -1)
  {
LABEL_15:
    swift_once();
  }

  return sub_261464720();
}

unint64_t LogLevel.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_261446BF8()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t sub_261446C40(uint64_t a1)
{
  v2 = *v1;
  sub_261464E10();
  MEMORY[0x266702D10](v2);
  return sub_261464E30();
}

uint64_t AppTarget.id.getter(uint64_t a1)
{
  if (!a1)
  {
    return 30324;
  }

  if (a1 == 1)
  {
    return 0x636973756DLL;
  }

  result = sub_261464DB0();
  __break(1u);
  return result;
}

uint64_t sub_261446CE4@<X0>(uint64_t *a2@<X8>)
{
  if (!*v2)
  {
    v3 = 0xE200000000000000;
    v4 = 30324;
LABEL_5:
    *a2 = v4;
    a2[1] = v3;
    return v5;
  }

  if (*v2 == 1)
  {
    v3 = 0xE500000000000000;
    v4 = 0x636973756DLL;
    goto LABEL_5;
  }

  v5 = sub_261464DB0();
  __break(1u);
  return v5;
}

unint64_t sub_261446D68()
{
  result = qword_27FEAF5A0;
  if (!qword_27FEAF5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5A0);
  }

  return result;
}

unint64_t sub_261446DC0()
{
  result = qword_27FEAF5A8;
  if (!qword_27FEAF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5A8);
  }

  return result;
}

unint64_t sub_261446E80(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for CriteriaType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CriteriaType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261447188()
{
  result = qword_27FEAF5B0;
  if (!qword_27FEAF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5B0);
  }

  return result;
}

unint64_t sub_2614471E0()
{
  result = qword_27FEAF5B8;
  if (!qword_27FEAF5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5B8);
  }

  return result;
}

double sub_261447258@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2614479E4(a2, v11);
  if (!v2)
  {
    v5 = v19;
    a1[8] = v18;
    a1[9] = v5;
    v6 = v21;
    a1[10] = v20;
    a1[11] = v6;
    v7 = v15;
    a1[4] = v14;
    a1[5] = v7;
    v8 = v17;
    a1[6] = v16;
    a1[7] = v8;
    v9 = v11[1];
    *a1 = v11[0];
    a1[1] = v9;
    result = *&v12;
    v10 = v13;
    a1[2] = v12;
    a1[3] = v10;
  }

  return result;
}

uint64_t sub_2614472BC()
{
  sub_261464E10();
  sub_2614649E0();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_261447324(uint64_t a1)
{
  sub_2614649E0();

  return sub_2614649E0();
}

uint64_t sub_261447374(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();
  sub_2614649E0();
  return sub_261464E30();
}

uint64_t sub_2614473D8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_261464DA0();
  }
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit17TVContentCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit10TVCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_261447484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2614474CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261447550()
{
  result = qword_27FEAF5C0;
  if (!qword_27FEAF5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5C0);
  }

  return result;
}

uint64_t sub_2614475B0()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144767C(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_261447734(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_2614477FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261448000(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26144782C(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x746954726F727265;
  v4 = 0xE600000000000000;
  v5 = 0x656C61636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x6169726574697263;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x73654D726F727265;
    v2 = 0xEC00000065676173;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2614478B4()
{
  v1 = 0x746954726F727265;
  v2 = 0x656C61636F6CLL;
  if (*v0 != 2)
  {
    v2 = 0x6169726574697263;
  }

  if (*v0)
  {
    v1 = 0x73654D726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_261447938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261448000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26144796C(uint64_t a1)
{
  v2 = sub_261447CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2614479A8(uint64_t a1)
{
  v2 = sub_261447CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2614479E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF5C8, &qword_261465E08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261447CDC();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v29;
  v28 = v5;
  LOBYTE(v39) = 0;
  v11 = v8;
  v12 = sub_261464D70();
  v27 = v13;
  v14 = v10;
  LOBYTE(v39) = 1;
  v15 = sub_261464D70();
  v26 = v16;
  v29 = v15;
  LOBYTE(v39) = 2;
  v17 = sub_261464D70();
  v19 = v18;
  v57 = 3;
  sub_261447D30();
  sub_261464D80();
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v32 = v41;
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v30 = v39;
  v31 = v40;
  nullsub_1();
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v50 = v32;
  v51 = v33;
  v52 = v34;
  v53 = v35;
  v48 = v30;
  v49 = v31;
  (*(v28 + 8))(v11, v4, v31);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v20 = v27;
  *v14 = v12;
  *(v14 + 8) = v20;
  v21 = v26;
  *(v14 + 16) = v29;
  *(v14 + 24) = v21;
  *(v14 + 32) = v17;
  *(v14 + 40) = v19;
  v22 = v55;
  *(v14 + 144) = v54;
  *(v14 + 160) = v22;
  *(v14 + 176) = v56;
  v23 = v51;
  *(v14 + 80) = v50;
  *(v14 + 96) = v23;
  v24 = v53;
  *(v14 + 112) = v52;
  *(v14 + 128) = v24;
  v25 = v49;
  *(v14 + 48) = v48;
  *(v14 + 64) = v25;
  return result;
}

unint64_t sub_261447CDC()
{
  result = qword_27FEAF5D0;
  if (!qword_27FEAF5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5D0);
  }

  return result;
}

unint64_t sub_261447D30()
{
  result = qword_27FEAF5D8;
  if (!qword_27FEAF5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5D8);
  }

  return result;
}

double sub_261447D84(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_261465C00;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for TVIssue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TVIssue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_261447EFC()
{
  result = qword_27FEAF5E0;
  if (!qword_27FEAF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5E0);
  }

  return result;
}

unint64_t sub_261447F54()
{
  result = qword_27FEAF5E8;
  if (!qword_27FEAF5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5E8);
  }

  return result;
}

unint64_t sub_261447FAC()
{
  result = qword_27FEAF5F0;
  if (!qword_27FEAF5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5F0);
  }

  return result;
}

unint64_t sub_261448000(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_261448058()
{

  return swift_deallocClassInstance();
}

uint64_t sub_261448098(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000656CLL;
  v3 = 0x746954726F727265;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656C61636F6CLL;
    }

    else
    {
      v5 = 0x6169726574697263;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x73654D726F727265;
    }

    else
    {
      v5 = 0x746954726F727265;
    }

    if (v4)
    {
      v6 = 0xEC00000065676173;
    }

    else
    {
      v6 = 0xEA0000000000656CLL;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C61636F6CLL;
  if (a2 != 2)
  {
    v8 = 0x6169726574697263;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v3 = 0x73654D726F727265;
    v2 = 0xEC00000065676173;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261464DA0();
  }

  return v11 & 1;
}

uint64_t sub_2614481E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000796C696DLL;
  v3 = 0x6146656369766564;
  v4 = a1;
  v5 = 0x6973726556707061;
  v6 = 0xEA00000000006E6FLL;
  v7 = 0x6F6973726556736FLL;
  v8 = 0xE90000000000006ELL;
  if (a1 != 4)
  {
    v7 = 29551;
    v8 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x614E656369766564;
  v10 = 0xEA0000000000656DLL;
  if (a1 != 1)
  {
    v9 = 0x6F4D656369766564;
    v10 = 0xEB000000006C6564;
  }

  if (!a1)
  {
    v9 = 0x6146656369766564;
    v10 = 0xEC000000796C696DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006E6FLL;
      if (v11 != 0x6973726556707061)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE90000000000006ELL;
      if (v11 != 0x6F6973726556736FLL)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE200000000000000;
      if (v11 != 29551)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000656DLL;
        if (v11 != 0x614E656369766564)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6F4D656369766564;
      v2 = 0xEB000000006C6564;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_261464DA0();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_2614483D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E65746E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x736449646E617262;
    }

    else
    {
      v5 = 0x54746E65746E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x4965636976726573;
    v6 = 0xEA00000000007364;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x7364496D616461;
    }

    else
    {
      v5 = 0x6B63616279616C70;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xED00007365646F4DLL;
    }
  }

  v7 = 0x4965636976726573;
  v8 = 0xEA00000000007364;
  v9 = 0xE700000000000000;
  v10 = 0x7364496D616461;
  if (a2 != 3)
  {
    v10 = 0x6B63616279616C70;
    v9 = 0xED00007365646F4DLL;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x736449646E617262;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_261464DA0();
  }

  return v13 & 1;
}

uint64_t sub_261448580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000796C696DLL;
  v3 = 0x6146656369766564;
  v4 = a1;
  v5 = 0x6F6973726556736FLL;
  v6 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v5 = 29551;
    v6 = 0xE200000000000000;
  }

  v7 = 0x726556736A736C68;
  v8 = 0xEC0000006E6F6973;
  if (a1 != 4)
  {
    v7 = 0x657261776D726966;
    v8 = 0xEF6E6F6973726556;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6F4D656369766564;
  v10 = 0xEB000000006C6564;
  if (a1 != 2)
  {
    v9 = 0x6973726556707061;
    v10 = 0xEA00000000006E6FLL;
  }

  v11 = 0x614E656369766564;
  v12 = 0xEA0000000000656DLL;
  if (!a1)
  {
    v11 = 0x6146656369766564;
    v12 = 0xEC000000796C696DLL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE90000000000006ELL;
        if (v13 != 0x6F6973726556736FLL)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE200000000000000;
        if (v13 != 29551)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEC0000006E6F6973;
      if (v13 != 0x726556736A736C68)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xEF6E6F6973726556;
      if (v13 != 0x657261776D726966)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB000000006C6564;
        if (v13 != 0x6F4D656369766564)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x6973726556707061;
      v2 = 0xEA00000000006E6FLL;
    }

    else if (a2)
    {
      v2 = 0xEA0000000000656DLL;
      if (v13 != 0x614E656369766564)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_261464DA0();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_26144882C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F65646976;
    }

    else
    {
      v4 = 1735290739;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6D75626C61;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E6F6974617473;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x7473696C79616C70;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6F65646976;
    }

    else
    {
      v9 = 1735290739;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6E6F6974617473;
    if (a2 != 3)
    {
      v6 = 0x7473696C79616C70;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6D75626C61;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_261464DA0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_2614489A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657079546D657469;
    }

    else
    {
      v4 = 0x656C61636F6CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 2036625250;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x657079546D657469;
  if (a2 != 2)
  {
    v8 = 0x656C61636F6CLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 2036625250;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261464DA0();
  }

  return v11 & 1;
}

uint64_t sub_261448AC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x746E65746E6F63;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x656369766564;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1668508013;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x656369766564;
    if (a2 != 3)
    {
      v6 = 1668508013;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x746E65746E6F63;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_261464DA0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_261448C34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6169726574697263;
    }

    else
    {
      v5 = 0x736567617373656DLL;
    }

    v6 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v5 = 0x656D6954646E65;
    }

    else
    {
      v5 = 0x6D69547472617473;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  v7 = 0x6169726574697263;
  if (a2 != 2)
  {
    v7 = 0x736567617373656DLL;
  }

  if (a2)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v5 == v8 && v6 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_261464DA0();
  }

  return v10 & 1;
}

uint64_t sub_261448DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  v6 = (a1 + 40);
  v7 = v2 + 1;
  v18 = a2 + 32;
  do
  {
    v8 = (v5 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    ++v4;

    v11 = v7;
    v12 = v6;
    v13 = v6;
    while (--v7)
    {
      v14 = v13 + 2;
      v16 = *(v13 - 1);
      v15 = *v13;

      LOBYTE(v16) = sub_261449730(v16, v15, v10, v9);

      v13 = v14;
      if (v16)
      {

        return 1;
      }
    }

    result = 0;
    v5 = v18;
    v6 = v12;
    v7 = v11;
  }

  while (v4 != v3);
  return result;
}

void sub_261448EBC()
{
  v1 = v0[1];
  if ((v1 & 0x2000000000000000) == 0)
  {
    if ((*v0 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v1 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return;
  }

LABEL_5:
  sub_261464A00();

  sub_261464A50();
}

uint64_t sub_261448F24(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_261464AF0();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_261448F6C(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{

  sub_261464C30();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_261464C30();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v17 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v17) = 1;
  }

  v18 = 4 << v17;
  v19 = a1;
  if ((a1 & 0xC) == 4 << v17)
  {
    result = sub_2614492CC(a1, a5, a6);
    v19 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v20 = v19 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v21 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v22 = (v21 << 16) | 7;
    LOBYTE(v23) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v21 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 < v19 >> 16)
  {
    goto LABEL_42;
  }

  v20 = sub_261464AA0();
  v27 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v27 = 7;
  }

  v22 = v27 | (v21 << 16);
  v23 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  result = a2;
  if ((a2 & 0xC) == 4 << v23)
  {
    v28 = v22;
    result = sub_2614492CC(a2, a5, a6);
    v22 = v28;
  }

  if ((v22 & 0xC) == v18)
  {
    v29 = result;
    v22 = sub_2614492CC(v22, a5, a6);
    result = v29;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      result = (v22 >> 16) - (result >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v21 < result >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v21 >= v22 >> 16)
  {
    result = sub_261464AA0();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(a4) & 0xF;
        v26 = __OFADD__(v20, v25);
        v24 = v20 + v25;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v24 = v20 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v20, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v30 = result;
    v31 = sub_261464A70();
    result = v30;
    v26 = __OFADD__(v20, v31);
    v24 = v20 + v31;
    if (!v26)
    {
LABEL_21:
      v26 = __OFADD__(v24, result);
      result += v24;
      if (!v26)
      {
        MEMORY[0x2667028B0](result);
LABEL_23:
        sub_261464B10();
        sub_26144A050();
        sub_261464A20();

        sub_261464A20();
        sub_261449280(a2, a5, a6);
        sub_261464A20();

        return 0;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_261449280(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_261464B10();
  }

  __break(1u);
  return result;
}

unint64_t sub_2614492CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_261464AC0();
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
    v5 = MEMORY[0x266702980](15, a1 >> 16);
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

uint64_t sub_261449348(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_261464A10();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_2614649B0();
}

uint64_t sub_2614493D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_26144A0A4();
  if ((sub_261464CA0() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (sub_2614649F0() == 1)
  {
    v6 = 1;
    return v6 & 1;
  }

  v16 = a1;
  v17 = a2;

  result = sub_261464AD0();
  v15 = result;
  if ((result & 1) == 0)
  {
LABEL_16:
    v11 = sub_261464AE0();
    if (v11)
    {
      sub_261448EBC();

      v13 = v16;
      v12 = v17;
      for (result = sub_261464AE0(); (result & 1) != 0; result = sub_261464AE0())
      {
        if ((v12 & 0x2000000000000000) != 0)
        {
          if ((v12 & 0xF00000000000000) == 0)
          {
            goto LABEL_37;
          }
        }

        else if ((v13 & 0xFFFFFFFFFFFFLL) == 0)
        {
          __break(1u);
          break;
        }

        sub_261464A00();
        sub_261464A50();

        v13 = v16;
        v12 = v17;
      }
    }

    if (sub_261464CA0())
    {
      goto LABEL_25;
    }

    if (v15)
    {
      if (v11)
      {
        v14 = sub_261464CA0();
      }

      else
      {
        v14 = sub_261464AE0();
      }
    }

    else
    {
      if ((v11 & 1) == 0)
      {
LABEL_25:

LABEL_26:
        v6 = 0;
        return v6 & 1;
      }

      v14 = sub_261464AD0();
    }

    v6 = v14;

    return v6 & 1;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_38;
  }

  result = sub_261448F24(a1, a2);
  if (v9)
  {

    sub_261449348(1);
    result = sub_261464AD0();
    if (result)
    {
      while (1)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          if ((a2 & 0xF00000000000000) == 0)
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        else if ((a1 & 0xFFFFFFFFFFFFLL) == 0)
        {
          goto LABEL_36;
        }

        sub_261464AF0();

        result = sub_261464A10();
        if (v10)
        {
          goto LABEL_39;
        }

        sub_2614649B0();
        a1 = v16;
        a2 = v17;
        result = sub_261464AD0();
        if ((result & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_261449730(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v50 = &v49 - v9;
  v10 = sub_261464690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v52 = a2;
  sub_261464680();
  v15 = sub_26144A0A4();
  v16 = sub_261464C60();
  v18 = v17;
  v19 = *(v11 + 8);
  v19(v14, v10);
  v51 = a3;
  v52 = v49;
  sub_261464680();
  v49 = v15;
  v20 = sub_261464C60();
  v22 = v21;
  v19(v14, v10);
  v23 = 0xE000000000000000;
  v55 = 0;
  v56 = 0xE000000000000000;
  v24 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v24 = v16 & 0xFFFFFFFFFFFFLL;
  }

  v51 = v16;
  v52 = v18;
  v53 = 0;
  v54 = v24;
  v25 = sub_261464A60();
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    do
    {
      if ((sub_261464900() & 1) == 0)
      {
        MEMORY[0x266702920](v27, v28);
      }

      v27 = sub_261464A60();
      v28 = v29;
    }

    while (v29);
    v31 = v55;
    v30 = v56;
  }

  else
  {
    v31 = 0;
    v30 = 0xE000000000000000;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  v32 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v32 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v51 = v20;
  v52 = v22;
  v53 = 0;
  v54 = v32;
  v33 = sub_261464A60();
  v35 = v34;
  if (v34)
  {
    v36 = v33;
    do
    {
      if ((sub_261464900() & 1) == 0)
      {
        MEMORY[0x266702920](v36, v35);
      }

      v36 = sub_261464A60();
      v35 = v37;
    }

    while (v37);
    v35 = v55;
    v23 = v56;
  }

  v51 = v31;
  v52 = v30;
  v55 = v35;
  v56 = v23;
  v38 = sub_261464810();
  v39 = 1;
  v40 = v50;
  (*(*(v38 - 8) + 56))(v50, 1, 1, v38);
  v41 = sub_261464C90();
  sub_26144A15C(v40);
  if (v41)
  {
    v42 = sub_261464990();
    v44 = v43;

    v45 = sub_261464990();
    v47 = v46;

    v39 = sub_2614493D0(v42, v44, v45, v47);
  }

  return v39 & 1;
}

uint64_t sub_261449AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, void *a5@<X8>)
{
  v44 = a5;
  v9 = sub_261464690();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a2;
  v60 = a3;
  sub_261464670();
  v14 = sub_26144A0A4();
  v15 = sub_261464C40();
  (*(v10 + 8))(v13, v9);
  v16 = 0;
  v17 = *(v15 + 16);
  v48 = v15;
  v46 = v17;
  v47 = v15 + 32;
  v45 = (a1 + 80);
  v50 = *(a1 + 16);
  v51 = a4;
  v52 = v14;
  while (1)
  {
    v18 = *(v48 + 16);
    v49 = v16;
    v19 = v18 >= v16;
    v20 = v18 - v16;
    if (!v19)
    {
      v20 = 0;
    }

    v59 = v48;
    v60 = v47;
    v61 = 0;
    v62 = (2 * v20) | 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF600, &qword_261465FA8);
    sub_26144A0F8();
    v55 = sub_261464910();
    v56 = v21;
    swift_unknownObjectRelease();
    if (v50)
    {
      break;
    }

LABEL_2:

    v16 = v49 + 1;
    if (v49 == v46)
    {

      v41 = 0;
      v26 = 0;
      v42 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      goto LABEL_45;
    }
  }

  v22 = v45;
  v23 = v50;
  while (1)
  {
    v25 = *(v22 - 6);
    v26 = *(v22 - 5);
    v27 = *(v22 - 3);
    v53 = *(v22 - 4);
    v54 = v25;
    v28 = *(v22 - 16);
    v29 = *(v22 - 1);
    v30 = *v22;
    v59 = v29;
    v60 = v30;
    v57 = v55;
    v58 = v56;

    if (sub_261464C80())
    {
      goto LABEL_8;
    }

    if (v28 <= 2)
    {
      v31 = 0x6F65646976;
      if (v28 == 1)
      {
        v32 = 0x6F65646976;
      }

      else
      {
        v32 = 0x6D75626C61;
      }

      if (v28)
      {
        v33 = v32;
      }

      else
      {
        v33 = 1735290739;
      }

      if (v28)
      {
        v34 = 0xE500000000000000;
      }

      else
      {
        v34 = 0xE400000000000000;
      }

      goto LABEL_24;
    }

    v31 = 0x6F65646976;
    if (v28 == 3)
    {
      v34 = 0xE700000000000000;
      v33 = 0x6E6F6974617473;
      goto LABEL_24;
    }

    if (v28 != 4)
    {
      break;
    }

    v34 = 0xE800000000000000;
    v33 = 0x7473696C79616C70;
LABEL_24:
    v35 = 0x7473696C79616C70;
    if (v51 == 3)
    {
      v35 = 0x6E6F6974617473;
    }

    v36 = 0xE700000000000000;
    if (v51 != 3)
    {
      v36 = 0xE800000000000000;
    }

    if (v51 == 2)
    {
      v35 = 0x6D75626C61;
      v36 = 0xE500000000000000;
    }

    if (v51)
    {
      v37 = 0xE500000000000000;
    }

    else
    {
      v31 = 1735290739;
      v37 = 0xE400000000000000;
    }

    if (v51 <= 1)
    {
      v38 = v31;
    }

    else
    {
      v38 = v35;
    }

    if (v51 <= 1)
    {
      v39 = v37;
    }

    else
    {
      v39 = v36;
    }

    if (v33 == v38 && v34 == v39)
    {

LABEL_43:

      goto LABEL_44;
    }

    v24 = sub_261464DA0();

    if (v24)
    {

      goto LABEL_43;
    }

LABEL_8:
    v22 += 7;

    if (!--v23)
    {
      goto LABEL_2;
    }
  }

  v28 = 5;
LABEL_44:
  v42 = v53;
  v41 = v54;
LABEL_45:
  v43 = v44;
  *v44 = v41;
  v43[1] = v26;
  v43[2] = v42;
  v43[3] = v27;
  v43[4] = v28;
  v43[5] = v29;
  v43[6] = v30;
  return result;
}

unint64_t sub_261449F28(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_261449FFC();
  v8 = sub_261464B80();
  if (v8[2])
  {
    v9 = v8[4];
    v10 = v8[5];

    return sub_261448F6C(v9, v10, a3, a4, a1, a2);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_261449FFC()
{
  result = qword_2811AE768;
  if (!qword_2811AE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE768);
  }

  return result;
}

unint64_t sub_26144A050()
{
  result = qword_27FEAF5F8;
  if (!qword_27FEAF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF5F8);
  }

  return result;
}

unint64_t sub_26144A0A4()
{
  result = qword_2811AE760;
  if (!qword_2811AE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811AE760);
  }

  return result;
}

unint64_t sub_26144A0F8()
{
  result = qword_27FEAF608;
  if (!qword_27FEAF608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF600, &qword_261465FA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF608);
  }

  return result;
}

uint64_t sub_26144A15C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26144A1C8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26144A7CC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_26144A218(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_261464DA0() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_261464DA0() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 5)
  {
    if (v9 != 5)
    {
      return 0;
    }
  }

  else if (v9 == 5 || (sub_26144882C(v4, v9) & 1) == 0)
  {
    return 0;
  }

  if (v5 == v10 && v6 == v11)
  {
    return 1;
  }

  return sub_261464DA0();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26144A36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26144A3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26144A41C()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144A4D0(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_26144A570(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_26144A620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26144ABF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26144A650(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x657079546D657469;
  if (*v1 != 2)
  {
    v5 = 0x656C61636F6CLL;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 2036625250;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_26144A6C0()
{
  v1 = 0x656C746974;
  v2 = 0x657079546D657469;
  if (*v0 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 2036625250;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26144A72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26144ABF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26144A754(uint64_t a1)
{
  v2 = sub_26144AA8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144A790(uint64_t a1)
{
  v2 = sub_26144AA8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26144A7CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF618, &qword_261466048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26144AA8C();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = 0;
  v11 = sub_261464D70();
  v29 = v6;
  v12 = v11;
  v28 = v13;
  v33 = 1;
  v14 = sub_261464D70();
  v16 = v15;
  v27 = v14;
  v32 = 2;
  sub_261464D70();
  v26 = v12;
  v17 = sub_261464990();
  v19 = v18;

  v20 = sub_261446E80(v17, v19);
  v21 = v26;
  v30 = v20;
  v31 = 3;
  v22 = sub_261464D70();
  v24 = v23;
  (*(v29 + 8))(v9, v5);
  v25 = v28;

  __swift_destroy_boxed_opaque_existential_1(a1);

  *a2 = v21;
  *(a2 + 8) = v25;
  *(a2 + 16) = v27;
  *(a2 + 24) = v16;
  *(a2 + 32) = v30;
  *(a2 + 40) = v22;
  *(a2 + 48) = v24;
  return result;
}

unint64_t sub_26144AA8C()
{
  result = qword_27FEAF620;
  if (!qword_27FEAF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF620);
  }

  return result;
}

unint64_t sub_26144AAF4()
{
  result = qword_27FEAF628;
  if (!qword_27FEAF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF628);
  }

  return result;
}

unint64_t sub_26144AB4C()
{
  result = qword_27FEAF630;
  if (!qword_27FEAF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF630);
  }

  return result;
}

unint64_t sub_26144ABA4()
{
  result = qword_27FEAF638;
  if (!qword_27FEAF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF638);
  }

  return result;
}

unint64_t sub_26144ABF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

Swift::String __swiftcall String.noBreakingSpaced()()
{
  sub_26144A0A4();
  v0 = sub_261464C70();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_26144ACBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_261464690();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = a2;
  v33 = 44;
  v34 = 0xE100000000000000;
  sub_26144A0A4();
  v7 = sub_261464C50();
  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v7 + 40);
    while (v10 < *(v8 + 16))
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v35 = v12;
      v36 = v13;
      v33 = 0x6567612D78616DLL;
      v34 = 0xE700000000000000;

      if (sub_261464CA0())
      {

        v35 = v12;
        v36 = v13;
        v21 = v30;
        sub_261464680();
        v22 = sub_261464C60();
        v24 = v23;
        (*(v31 + 8))(v21, v32);

        v35 = v22;
        v36 = v24;
        v33 = 0x3D6567612D78616DLL;
        v34 = 0xE800000000000000;
        sub_261449FFC();
        sub_261464B70();

        v14 = v37;
        v16 = v38;
        v18 = v39;
        v20 = v40;
        goto LABEL_8;
      }

      ++v10;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_6:

  v14 = sub_261464C20();
  v16 = v15;
  v18 = v17;
  v20 = v19;
LABEL_8:
  if (!((v16 ^ v14) >> 14))
  {
LABEL_16:

    return 0;
  }

  v25 = sub_26144B998(v14, v16, v18, v20, 10);
  if ((v26 & 0x100) != 0)
  {
    v25 = sub_26144AF94(v14, v16, v18, v20, 10);
  }

  v27 = v25;
  v28 = v26;

  if (v28)
  {
    return 0;
  }

  else
  {
    return v27;
  }
}

unsigned __int8 *sub_26144AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_26144A050();

  result = sub_261464B00();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_26144B52C(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_261464D00();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26144B52C(uint64_t a1, unint64_t a2)
{
  v2 = sub_261464B10();
  v6 = sub_26144B5AC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26144B5AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_261464C10();
    if (!v9 || (v10 = v9, v11 = sub_26144B704(v9, 0), v12 = sub_26144B778(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2614649D0();

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
      return sub_2614649D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_261464D00();
LABEL_4:

  return sub_2614649D0();
}

void *sub_26144B704(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF640, &unk_2614661A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_26144B778(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2614492CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_261464AB0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_261464D00();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2614492CC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_261464A80();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_26144B998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_261464D00();
  }

  result = sub_26144BA68(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_26144BA68(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2614492CC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_261464AA0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2614492CC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2614492CC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_261464AA0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
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

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26144BEE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26144BF3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26144BF9C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26144C404(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_26144BFC8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (!v6 || (sub_26145288C(v4, v6) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v7 && (sub_26145288C(v5, v7) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v7)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_26144C03C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574617473;
  }

  else
  {
    v3 = 0x7972746E756F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574617473;
  }

  else
  {
    v5 = 0x7972746E756F63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261464DA0();
  }

  return v8 & 1;
}

uint64_t sub_26144C0E0()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144C160(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_26144C1CC(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144C248@<X0>(char *a2@<X8>)
{
  v3 = sub_261464D60();

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

  *a2 = v5;
  return result;
}

void sub_26144C2A8(uint64_t *a1@<X8>)
{
  v2 = 0x7972746E756F63;
  if (*v1)
  {
    v2 = 0x6574617473;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26144C2E4()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x7972746E756F63;
  }
}

uint64_t sub_26144C31C@<X0>(char *a3@<X8>)
{
  v4 = sub_261464D60();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_26144C38C(uint64_t a1)
{
  v2 = sub_26144C600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144C3C8(uint64_t a1)
{
  v2 = sub_26144C600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26144C404(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF648, &qword_261466258);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_26144C600();
  sub_261464E40();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF658, &qword_261466260);
    v11 = 0;
    sub_26144C654();
    sub_261464D80();
    v8 = v12;
    v11 = 1;
    sub_261464D80();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_26144C600()
{
  result = qword_27FEAF650;
  if (!qword_27FEAF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF650);
  }

  return result;
}

unint64_t sub_26144C654()
{
  result = qword_27FEAF660;
  if (!qword_27FEAF660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF658, &qword_261466260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF660);
  }

  return result;
}

unint64_t sub_26144C6E4()
{
  result = qword_27FEAF668;
  if (!qword_27FEAF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF668);
  }

  return result;
}

unint64_t sub_26144C73C()
{
  result = qword_27FEAF670;
  if (!qword_27FEAF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF670);
  }

  return result;
}

unint64_t sub_26144C794()
{
  result = qword_27FEAF678;
  if (!qword_27FEAF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF678);
  }

  return result;
}

uint64_t QOSConfig.locale.getter()
{
  v1 = *(v0 + OBJC_IVAR___QOSConfigInternal_locale);

  return v1;
}

id QOSConfig.__allocating_init(appTarget:locale:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___QOSConfigInternal_issuesUrl];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v7[OBJC_IVAR___QOSConfigInternal_locationUrl];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v7[OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v7[OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v7[OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs];
  *v12 = 0;
  v12[8] = 1;
  *&v7[OBJC_IVAR___QOSConfigInternal_appTarget] = a1;
  v13 = &v7[OBJC_IVAR___QOSConfigInternal_locale];
  *v13 = a2;
  *(v13 + 1) = a3;
  v15.receiver = v7;
  v15.super_class = v3;
  return objc_msgSendSuper2(&v15, sel_init);
}

id QOSConfig.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id QOSConfig.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QOSConfig();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26144CBB8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  return MEMORY[0x2822009F8](sub_26144CCB8, 0, 0);
}

uint64_t sub_26144CCB8()
{
  v1 = *(v0 + 24);
  v4 = *(v0 + 48);

  *(v1 + OBJC_IVAR___QOSConfigInternal_issuesUrl) = v4;

  v2 = *(v0 + 8);

  return v2();
}

__n128 sub_26144CD3C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_26144DBB4(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v9[10];
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_26144CDA0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return sub_26144D288(v13, v14) & 1;
}

uint64_t sub_26144CE40()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144CF10(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_26144CFCC(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_26144D098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26144E284(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26144D0C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xE700000000000000;
  v6 = 0x746E65746E6F63;
  v7 = 0xE600000000000000;
  v8 = 0x656369766564;
  if (v2 != 3)
  {
    v8 = 1668508013;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F697461636F6CLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26144D154()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x746E65746E6F63;
  v4 = 0x656369766564;
  if (v1 != 3)
  {
    v4 = 1668508013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26144D1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26144E284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26144D210(uint64_t a1)
{
  v2 = sub_26144DFC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144D24C(uint64_t a1)
{
  v2 = sub_26144DFC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26144D288(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v3 == 2)
    {
      goto LABEL_47;
    }

    v4 = a2;
    v5 = a1;
    if (v2)
    {
      v6 = 0x636973756DLL;
    }

    else
    {
      v6 = 0x6F65646976;
    }

    if (v3)
    {
      v7 = 0x636973756DLL;
    }

    else
    {
      v7 = 0x6F65646976;
    }

    if (v6 == v7)
    {
      swift_bridgeObjectRelease_n();
      a1 = v5;
      a2 = v4;
    }

    else
    {
      v8 = sub_261464DA0();
      swift_bridgeObjectRelease_n();
      a1 = v5;
      a2 = v4;
      if ((v8 & 1) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  v9 = *(a1 + 1);
  v10 = *(a2 + 1);
  if (v9 == 1)
  {
    if (v10 != 1)
    {
      goto LABEL_47;
    }

LABEL_16:
    v11 = *(a1 + 3);
    v12 = *(a1 + 4);
    v14 = *(a1 + 5);
    v13 = *(a1 + 6);
    v16 = *(a1 + 7);
    v15 = *(a1 + 8);
    v18 = *(a2 + 3);
    v17 = *(a2 + 4);
    v20 = *(a2 + 5);
    v19 = *(a2 + 6);
    v22 = *(a2 + 7);
    v21 = *(a2 + 8);
    if (v11 == 1)
    {
      if (v18 == 1)
      {
LABEL_32:
        v37 = *(a1 + 9);
        v38 = *(a2 + 9);
        if (v37 == 1)
        {
          if (v38 != 1)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v38 == 1)
          {
            goto LABEL_47;
          }

          if (v37)
          {
            if (!v38)
            {
              goto LABEL_47;
            }

            v48 = a1;
            v49 = a2;
            v50 = sub_26145288C(*(a1 + 9), *(a2 + 9));
            a2 = v49;
            v51 = v50;
            a1 = v48;
            if ((v51 & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          else if (v38)
          {
            goto LABEL_47;
          }
        }

        v39 = *(a1 + 8);
        v86[2] = *(a1 + 7);
        v86[3] = v39;
        v40 = *(a1 + 10);
        v86[4] = *(a1 + 9);
        v86[5] = v40;
        v41 = *(a1 + 6);
        v86[0] = *(a1 + 5);
        v86[1] = v41;
        v42 = *(a2 + 8);
        v85[2] = *(a2 + 7);
        v85[3] = v42;
        v43 = *(a2 + 10);
        v85[4] = *(a2 + 9);
        v85[5] = v43;
        v44 = *(a2 + 6);
        v85[0] = *(a2 + 5);
        v85[1] = v44;
        v45 = *&v86[0];
        if (*&v86[0] == 1)
        {
          if (*&v85[0] == 1)
          {
            LOBYTE(v24) = 1;
            *&v77[40] = *(a1 + 120);
            *&v77[56] = *(a1 + 136);
            *&v77[72] = *(a1 + 152);
            v46 = *(a1 + 21);
            *v77 = 1;
            *&v77[88] = v46;
            *&v77[8] = *(a1 + 88);
            *&v77[24] = *(a1 + 104);
            sub_26144D974(v86, &v87);
            sub_26144D974(v85, &v87);
            v47 = v77;
LABEL_50:
            sub_26144D9E4(v47, &qword_27FEAF6B8, &qword_2614663F8);
            return v24 & 1;
          }
        }

        else if (*&v85[0] != 1)
        {
          *v69 = *&v85[0];
          *&v69[8] = *(a2 + 88);
          *&v69[24] = *(a2 + 104);
          *&v69[88] = *(a2 + 21);
          *&v69[72] = *(a2 + 152);
          *&v69[56] = *(a2 + 136);
          *&v69[40] = *(a2 + 120);
          *v77 = *v69;
          *&v77[16] = *&v69[16];
          *&v77[64] = *&v69[64];
          *&v77[80] = *&v69[80];
          *&v77[32] = *&v69[32];
          *&v77[48] = *&v69[48];
          v57 = *(a1 + 88);
          v89 = *(a1 + 104);
          v88 = v57;
          v58 = *(a1 + 120);
          v59 = *(a1 + 136);
          v60 = *(a1 + 21);
          v92 = *(a1 + 152);
          v91 = v59;
          v90 = v58;
          v93 = v60;
          v87 = *&v86[0];
          v61 = a1;
          LOBYTE(v24) = sub_26145924C(&v87, v77);
          sub_26144D974(v86, &v70);
          sub_26144D974(v85, &v70);
          sub_26144D9E4(v69, &qword_27FEAF6B8, &qword_2614663F8);
          v70 = v45;
          v73 = *(v61 + 120);
          v74 = *(v61 + 136);
          v75 = *(v61 + 152);
          v76 = *(v61 + 21);
          v71 = *(v61 + 88);
          v72 = *(v61 + 104);
          v47 = &v70;
          goto LABEL_50;
        }

        *&v77[40] = *(a1 + 120);
        *&v77[56] = *(a1 + 136);
        *&v77[72] = *(a1 + 152);
        v52 = *(a1 + 21);
        *v77 = *&v86[0];
        *&v77[88] = v52;
        v78 = *&v85[0];
        *&v77[8] = *(a1 + 88);
        *&v77[24] = *(a1 + 104);
        v80 = *(a2 + 104);
        v79 = *(a2 + 88);
        v53 = *(a2 + 120);
        v54 = *(a2 + 136);
        v55 = *(a2 + 152);
        v84 = *(a2 + 21);
        v83 = v55;
        v82 = v54;
        v81 = v53;
        sub_26144D974(v86, &v87);
        sub_26144D974(v85, &v87);
        sub_26144D9E4(v77, &qword_27FEAF6C0, &qword_261466400);
LABEL_47:
        LOBYTE(v24) = 0;
        return v24 & 1;
      }
    }

    else if (v18 != 1)
    {
      v95[0] = *(a2 + 3);
      v95[1] = v17;
      v95[2] = v20;
      v95[3] = v19;
      v95[4] = v22;
      v95[5] = v21;
      v94[0] = v11;
      v94[1] = v12;
      v94[2] = v14;
      v94[3] = v13;
      v94[4] = v16;
      v94[5] = v15;
      v64 = a2;
      v65 = a1;
      v62 = v15;
      v66 = v16;
      v35 = v11;
      v36 = v17;
      v63 = sub_261461F0C(v94, v95);
      sub_26144D868(v18, v36, v20, v19, v22, v21);
      sub_26144D868(v35, v12, v14, v13, v66, v62);

      sub_26144D8F0(v35, v12, v14, v13, v66, v62);
      a2 = v64;
      a1 = v65;
      if ((v63 & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_32;
    }

    v67 = *(a2 + 6);
    v68 = *(a2 + 4);
    v34 = *(a1 + 3);
    sub_26144D868(*(a2 + 3), v68, v20, v67, v22, v21);
    sub_26144D868(v34, v12, v14, v13, v16, v15);
    sub_26144D8F0(v34, v12, v14, v13, v16, v15);
    sub_26144D8F0(v18, v68, v20, v67, v22, v21);
    goto LABEL_47;
  }

  if (v10 == 1)
  {
    goto LABEL_47;
  }

  v23 = *(a1 + 2);
  v24 = *(a2 + 2);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_23;
    }

LABEL_30:
    sub_26144DA44(v10, v24);

    goto LABEL_47;
  }

  if (!v10)
  {
    goto LABEL_47;
  }

  v25 = a1;
  v26 = a2;
  v27 = sub_26145288C(*(a1 + 1), *(a2 + 1));
  a2 = v26;
  v28 = v27;
  a1 = v25;
  if ((v28 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  if (!v23)
  {
    if (v24)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  if (v24)
  {
    v29 = a1;
    v30 = v23;
    v31 = a2;
    v32 = sub_26145288C(v30, v24);
    a2 = v31;
    v33 = v32;
    a1 = v29;
    if ((v33 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_16;
  }

  return v24 & 1;
}

uint64_t sub_26144D868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26144D8F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26144D974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF6B8, &qword_2614663F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26144D9E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26144DA44(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_26144DAC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 176))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_26144DB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 168) = 0;
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
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26144DBB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF6C8, &qword_2614665B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26144DFC8();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  sub_261464D70();
  v11 = sub_261464D60();

  if (v11 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v11)
  {
    v12 = 0;
  }

  v40 = v12;
  LOBYTE(v30) = 1;
  sub_26144E01C();
  sub_261464D80();
  v28 = *(&v34 + 1);
  v29 = v34;
  LOBYTE(v30) = 2;
  sub_26144E070();
  sub_261464D80();
  v26 = v35;
  v27 = v34;
  v24 = v37;
  v25 = v36;
  v22 = v39;
  v23 = v38;
  v41 = 3;
  sub_26144E0C4();
  sub_261464D80();
  v20 = v31;
  v21 = v30;
  v14 = v32;
  v13 = v33;
  v41 = 4;
  sub_26144E118();
  sub_261464D80();
  v15 = v30;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v40;
  v16 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v16;
  *(a2 + 40) = v20;
  *(a2 + 24) = v21;
  *(a2 + 56) = v14;
  *(a2 + 64) = v13;
  *(a2 + 72) = v15;
  v17 = v26;
  *(a2 + 80) = v27;
  *(a2 + 96) = v17;
  v18 = v24;
  *(a2 + 112) = v25;
  *(a2 + 128) = v18;
  v19 = v22;
  *(a2 + 144) = v23;
  *(a2 + 160) = v19;
  return result;
}

unint64_t sub_26144DFC8()
{
  result = qword_27FEAF6D0;
  if (!qword_27FEAF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6D0);
  }

  return result;
}

unint64_t sub_26144E01C()
{
  result = qword_27FEAF6D8;
  if (!qword_27FEAF6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6D8);
  }

  return result;
}

unint64_t sub_26144E070()
{
  result = qword_27FEAF6E0;
  if (!qword_27FEAF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6E0);
  }

  return result;
}

unint64_t sub_26144E0C4()
{
  result = qword_27FEAF6E8;
  if (!qword_27FEAF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6E8);
  }

  return result;
}

unint64_t sub_26144E118()
{
  result = qword_27FEAF6F0;
  if (!qword_27FEAF6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6F0);
  }

  return result;
}

unint64_t sub_26144E180()
{
  result = qword_27FEAF6F8;
  if (!qword_27FEAF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF6F8);
  }

  return result;
}

unint64_t sub_26144E1D8()
{
  result = qword_27FEAF700;
  if (!qword_27FEAF700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF700);
  }

  return result;
}

unint64_t sub_26144E230()
{
  result = qword_27FEAF708;
  if (!qword_27FEAF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF708);
  }

  return result;
}

unint64_t sub_26144E284(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26144E31C()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1);
  return sub_261464E30();
}

uint64_t sub_26144E364(uint64_t a1)
{
  v2 = *v1;
  sub_261464E10();
  MEMORY[0x266702D10](v2);
  return sub_261464E30();
}

uint64_t QOSItem.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x266702D10](v1 >> 7);
  return MEMORY[0x266702D10](v1 & 0x7F);
}

uint64_t QOSItem.hashValue.getter()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1 >> 7);
  MEMORY[0x266702D10](v1 & 0x7F);
  return sub_261464E30();
}

uint64_t sub_26144E43C()
{
  v1 = *v0;
  sub_261464E10();
  MEMORY[0x266702D10](v1 >> 7);
  MEMORY[0x266702D10](v1 & 0x7F);
  return sub_261464E30();
}

uint64_t sub_26144E490()
{
  v1 = *v0;
  MEMORY[0x266702D10](v1 >> 7);
  return MEMORY[0x266702D10](v1 & 0x7F);
}

uint64_t sub_26144E4D0(uint64_t a1)
{
  v2 = *v1;
  sub_261464E10();
  MEMORY[0x266702D10](v2 >> 7);
  MEMORY[0x266702D10](v2 & 0x7F);
  return sub_261464E30();
}

unint64_t QOSItem.id.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    result = 0x657079546D657469;
    switch(v1 & 0x7F)
    {
      case 1:
        result = 0x7364497465737361;
        break;
      case 2:
        result = 0x5465636976726573;
        break;
      case 3:
        result = 0x707954616964656DLL;
        break;
      case 4:
        result = 0x6570795479616C70;
        break;
      case 5:
        result = 0x6574614379616C70;
        break;
      case 6:
        result = 0x726F466F69647561;
        break;
      case 7:
        result = 0x6E65526F69647561;
        break;
      case 8:
        result = 0x614C64726F636572;
        break;
      case 9:
        result = 0x546E6F6974617473;
        break;
      case 0xA:
        result = 0xD000000000000014;
        break;
      case 0xB:
        result = 0xD000000000000016;
        break;
      case 0xC:
        result = 0x656C61636F6CLL;
        break;
      default:
        return result;
    }
  }

  else
  {
    v2 = 0x54746E65746E6F63;
    v3 = 0x656449616964656DLL;
    v4 = 0x656C61636F6CLL;
    if (v1 != 3)
    {
      v4 = 0x6B63616279616C70;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6449646E617262;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t QOSItem.QOSTVItem.id.getter()
{
  v1 = *v0;
  v2 = 0x54746E65746E6F63;
  v3 = 0x656449616964656DLL;
  v4 = 0x656C61636F6CLL;
  if (v1 != 3)
  {
    v4 = 0x6B63616279616C70;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6449646E617262;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t QOSItem.QOSMusicItem.id.getter()
{
  result = 0x657079546D657469;
  switch(*v0)
  {
    case 1:
      result = 0x7364497465737361;
      break;
    case 2:
      result = 0x5465636976726573;
      break;
    case 3:
      result = 0x707954616964656DLL;
      break;
    case 4:
      result = 0x6570795479616C70;
      break;
    case 5:
      result = 0x6574614379616C70;
      break;
    case 6:
      result = 0x726F466F69647561;
      break;
    case 7:
      result = 0x6E65526F69647561;
      break;
    case 8:
      result = 0x614C64726F636572;
      break;
    case 9:
      result = 0x546E6F6974617473;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0xD000000000000016;
      break;
    case 0xC:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26144E9B4()
{
  result = qword_27FEAF710;
  if (!qword_27FEAF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF710);
  }

  return result;
}

unint64_t sub_26144EA0C()
{
  result = qword_27FEAF718;
  if (!qword_27FEAF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF718);
  }

  return result;
}

unint64_t sub_26144EA64()
{
  result = qword_27FEAF720;
  if (!qword_27FEAF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF720);
  }

  return result;
}

unint64_t sub_26144EAB8@<X0>(unint64_t *a1@<X8>)
{
  result = QOSItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_26144EAE0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x54746E65746E6F63;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x656449616964656DLL;
  v7 = 0xE600000000000000;
  v8 = 0x656C61636F6CLL;
  if (v2 != 3)
  {
    v8 = 0x6B63616279616C70;
    v7 = 0xEC00000065646F4DLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6449646E617262;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_26144EB98@<X0>(unint64_t *a1@<X8>)
{
  result = QOSItem.QOSMusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for QOSItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for QOSItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QOSItem.QOSMusicItem(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QOSItem.QOSMusicItem(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26144EEE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006C6F72746ELL;
  v4 = 0x6F432D6568636143;
  v5 = 0xE400000000000000;
  v6 = 1702125892;
  v7 = 0xED00006465696669;
  v8 = 0x646F4D2D7473614CLL;
  if (v2 != 4)
  {
    v8 = 0xD000000000000011;
    v7 = 0x8000000261468CD0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE006874676E654CLL;
  if (v2 != 1)
  {
    v9 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = 0x2D746E65746E6F43;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for HTTPHeaderField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPHeaderField(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26144F120()
{
  result = qword_27FEAF728;
  if (!qword_27FEAF728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF728);
  }

  return result;
}

void *sub_26144F174(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF610, &qword_261466E10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF730, &qword_261467C00);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v25 - v14;
  sub_26144F420(a2, &v25 - v14, &qword_27FEAF730, &qword_261467C00);
  v16 = sub_261464850();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v18 = sub_261464830();
    (*(v17 + 8))(v15, v16);
  }

  [v4 setTimeZone_];

  sub_26144F420(a3, v11, &qword_27FEAF610, &qword_261466E10);
  v19 = sub_261464810();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v11, 1, v19) != 1)
  {
    v21 = sub_2614647F0();
    (*(v20 + 8))(v11, v19);
  }

  [v4 setLocale_];

  v22 = sub_261464920();
  if (a1)
  {
    v23 = &selRef_setLocalizedDateFormatFromTemplate_;
  }

  else
  {
    v23 = &selRef_setDateFormat_;
  }

  [v4 *v23];

  return v4;
}

uint64_t sub_26144F420(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_26144F488@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2614500E4(a2, v11);
  if (!v2)
  {
    v5 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v12;
    v6 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v6;
    v7 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v7;
    v8 = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = v8;
    v9 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
  }

  return result;
}

uint64_t sub_26144F514(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return sub_26144FAE0(v15, v17) & 1;
}

uint64_t sub_26144F5D4()
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

uint64_t sub_26144F69C(uint64_t a1)
{
  sub_2614649E0();
}

uint64_t sub_26144F750(uint64_t a1)
{
  sub_261464E10();
  sub_2614649E0();

  return sub_261464E30();
}

unint64_t sub_26144F814@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_261450838(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26144F844(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D69547472617473;
  v4 = 0x6169726574697263;
  if (*v1 != 2)
  {
    v4 = 0x736567617373656DLL;
  }

  if (*v1)
  {
    v3 = 0x656D6954646E65;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_26144F8C8()
{
  v1 = 0x6D69547472617473;
  v2 = 0x6169726574697263;
  if (*v0 != 2)
  {
    v2 = 0x736567617373656DLL;
  }

  if (*v0)
  {
    v1 = 0x656D6954646E65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26144F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_261450838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26144F970(uint64_t a1)
{
  v2 = sub_2614504F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26144F9AC(uint64_t a1)
{
  v2 = sub_2614504F8();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL sub_26144F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_261464CE0();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_26144FAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_18;
    }
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_18;
    }
  }

  v5 = *(a1 + 144);
  v6 = *(a1 + 176);
  v105 = *(a1 + 160);
  v106 = v6;
  v7 = *(a1 + 176);
  v107 = *(a1 + 192);
  v8 = *(a1 + 80);
  v9 = *(a1 + 112);
  v101 = *(a1 + 96);
  v102 = v9;
  v10 = *(a1 + 112);
  v11 = *(a1 + 128);
  v12 = v11;
  v104 = *(a1 + 144);
  v103 = v11;
  v13 = *(a1 + 48);
  v100[0] = *(a1 + 32);
  v100[1] = v13;
  v14 = *(a1 + 64);
  v15 = *(a1 + 32);
  v16 = *(a1 + 48);
  v17 = v14;
  v100[3] = *(a1 + 80);
  v100[2] = v14;
  v18 = *(a2 + 144);
  v19 = *(a2 + 176);
  v97 = *(a2 + 160);
  v98 = v19;
  v20 = *(a2 + 176);
  v99 = *(a2 + 192);
  v21 = *(a2 + 80);
  v22 = *(a2 + 112);
  v93 = *(a2 + 96);
  v94 = v22;
  v24 = *(a2 + 112);
  v23 = *(a2 + 128);
  v25 = v23;
  v96 = *(a2 + 144);
  v95 = v23;
  v26 = *(a2 + 48);
  v92[0] = *(a2 + 32);
  v92[1] = v26;
  v27 = *(a2 + 64);
  v29 = *(a2 + 32);
  v28 = *(a2 + 48);
  v30 = v27;
  v92[3] = *(a2 + 80);
  v92[2] = v27;
  v31 = *(a1 + 144);
  v32 = *(a1 + 176);
  __src[8] = *(a1 + 160);
  __src[9] = v32;
  v33 = *(a1 + 80);
  v34 = *(a1 + 112);
  __src[4] = *(a1 + 96);
  __src[5] = v34;
  __src[6] = *(a1 + 128);
  __src[7] = v31;
  v35 = *(a1 + 48);
  __src[0] = *(a1 + 32);
  __src[1] = v35;
  __src[2] = *(a1 + 64);
  __src[3] = v33;
  __src[18] = v18;
  __src[19] = v97;
  v36 = *(a2 + 192);
  __src[20] = v20;
  __src[21] = v36;
  __src[14] = v21;
  __src[15] = v93;
  __src[16] = v24;
  __src[17] = v25;
  __src[10] = *(a1 + 192);
  __src[11] = v29;
  __src[12] = v28;
  __src[13] = v30;
  v91[8] = v105;
  v91[9] = v7;
  v91[10] = *(a1 + 192);
  v91[4] = v101;
  v91[5] = v10;
  v91[7] = v5;
  v91[6] = v12;
  v91[0] = v15;
  v91[1] = v16;
  v91[3] = v8;
  v91[2] = v17;
  if (sub_26144FF1C(v91) == 1)
  {
    v38 = *(a2 + 176);
    __dst[8] = *(a2 + 160);
    __dst[9] = v38;
    __dst[10] = *(a2 + 192);
    v39 = *(a2 + 112);
    __dst[4] = *(a2 + 96);
    __dst[5] = v39;
    v40 = *(a2 + 144);
    __dst[6] = *(a2 + 128);
    __dst[7] = v40;
    v41 = *(a2 + 48);
    __dst[0] = *(a2 + 32);
    __dst[1] = v41;
    v42 = *(a2 + 80);
    __dst[2] = *(a2 + 64);
    __dst[3] = v42;
    if (sub_26144FF1C(__dst) == 1)
    {
      v43 = *(a1 + 176);
      v116 = *(a1 + 160);
      v117 = v43;
      v118 = *(a1 + 192);
      v44 = *(a1 + 112);
      v112 = *(a1 + 96);
      v113 = v44;
      v45 = *(a1 + 144);
      v114 = *(a1 + 128);
      v115 = v45;
      v46 = *(a1 + 48);
      v108 = *(a1 + 32);
      v109 = v46;
      v47 = *(a1 + 80);
      v110 = *(a1 + 64);
      v111 = v47;
      sub_26144FF40(v100, v88);
      sub_26144FF40(v92, v88);
      sub_26144D9E4(&v108, &qword_27FEAF738, &unk_261466E30);
LABEL_21:
      v53 = sub_26145291C(*(a1 + 208), *(a2 + 208));
      return v53 & 1;
    }

    goto LABEL_17;
  }

  v48 = *(a2 + 176);
  v88[8] = *(a2 + 160);
  v88[9] = v48;
  v88[10] = *(a2 + 192);
  v49 = *(a2 + 112);
  v88[4] = *(a2 + 96);
  v88[5] = v49;
  v50 = *(a2 + 144);
  v88[6] = *(a2 + 128);
  v88[7] = v50;
  v51 = *(a2 + 48);
  v88[0] = *(a2 + 32);
  v88[1] = v51;
  v52 = *(a2 + 80);
  v88[2] = *(a2 + 64);
  v88[3] = v52;
  if (sub_26144FF1C(v88) == 1)
  {
LABEL_17:
    memcpy(__dst, __src, sizeof(__dst));
    sub_26144FF40(v100, &v108);
    sub_26144FF40(v92, &v108);
    sub_26144D9E4(__dst, &qword_27FEAF740, &qword_261466A30);
    goto LABEL_18;
  }

  v55 = *(a2 + 144);
  v56 = *(a2 + 176);
  v84 = *(a2 + 160);
  v85 = v56;
  v57 = *(a2 + 176);
  v86 = *(a2 + 192);
  v58 = *(a2 + 80);
  v59 = *(a2 + 112);
  v80 = *(a2 + 96);
  v81 = v59;
  v60 = *(a2 + 112);
  v61 = *(a2 + 144);
  v82 = *(a2 + 128);
  v83 = v61;
  v62 = *(a2 + 48);
  v77[0] = *(a2 + 32);
  v77[1] = v62;
  v63 = *(a2 + 80);
  v65 = *(a2 + 32);
  v64 = *(a2 + 48);
  v78 = *(a2 + 64);
  v79 = v63;
  __dst[8] = v84;
  __dst[9] = v57;
  __dst[10] = *(a2 + 192);
  __dst[4] = v80;
  __dst[5] = v60;
  __dst[6] = v82;
  __dst[7] = v55;
  __dst[0] = v65;
  __dst[1] = v64;
  __dst[2] = v78;
  __dst[3] = v58;
  v66 = *(a1 + 176);
  v116 = *(a1 + 160);
  v117 = v66;
  v118 = *(a1 + 192);
  v67 = *(a1 + 112);
  v112 = *(a1 + 96);
  v113 = v67;
  v68 = *(a1 + 144);
  v114 = *(a1 + 128);
  v115 = v68;
  v69 = *(a1 + 48);
  v108 = *(a1 + 32);
  v109 = v69;
  v70 = *(a1 + 80);
  v110 = *(a1 + 64);
  v111 = v70;
  sub_26144FF40(v100, v87);
  sub_26144FF40(v92, v87);
  v71 = sub_26144D288(&v108, __dst);
  sub_26144D9E4(v77, &qword_27FEAF738, &unk_261466E30);
  v72 = *(a1 + 176);
  v87[8] = *(a1 + 160);
  v87[9] = v72;
  v87[10] = *(a1 + 192);
  v73 = *(a1 + 112);
  v87[4] = *(a1 + 96);
  v87[5] = v73;
  v74 = *(a1 + 144);
  v87[6] = *(a1 + 128);
  v87[7] = v74;
  v75 = *(a1 + 48);
  v87[0] = *(a1 + 32);
  v87[1] = v75;
  v76 = *(a1 + 80);
  v87[2] = *(a1 + 64);
  v87[3] = v76;
  sub_26144D9E4(v87, &qword_27FEAF738, &unk_261466E30);
  if (v71)
  {
    goto LABEL_21;
  }

LABEL_18:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_26144FF1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26144FF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF738, &unk_261466E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10QOSToolkit13MusicCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_261450018(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 208);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261450060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 208) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2614500E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF748, &qword_261466C08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2614504F8();
  sub_261464E40();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v61;
  v33 = v5;
  LOBYTE(v57[0]) = 0;
  v11 = v8;
  v12 = sub_261464D70();
  v31 = a1;
  *&v57[0] = 0;
  v14 = sub_26144F9E8(v12, v13, v57);

  v15 = *&v57[0];
  if (!v14)
  {
    v15 = 0;
  }

  v32 = v15;
  v16 = v10;
  v60 = !v14;
  LOBYTE(v57[0]) = 1;
  v17 = sub_261464D70();
  *&v57[0] = 0;
  v19 = sub_26144F9E8(v17, v18, v57);

  if (v19)
  {
    v20 = *&v57[0];
  }

  else
  {
    v20 = 0;
  }

  v59 = !v19;
  v45 = 2;
  sub_26145054C();
  sub_261464D80();
  v42 = v54;
  v43 = v55;
  v44 = v56;
  v38 = v50;
  v39 = v51;
  v40 = v52;
  v41 = v53;
  v34 = v46;
  v35 = v47;
  v36 = v48;
  v37 = v49;
  nullsub_1();
  v57[8] = v42;
  v57[9] = v43;
  v57[10] = v44;
  v57[4] = v38;
  v57[5] = v39;
  v57[6] = v40;
  v57[7] = v41;
  v57[0] = v34;
  v57[1] = v35;
  v57[2] = v36;
  v57[3] = v37;
  *&v58[119] = v41;
  *&v58[135] = v42;
  *&v58[151] = v43;
  *&v58[167] = v44;
  *&v58[55] = v37;
  *&v58[71] = v38;
  *&v58[87] = v39;
  *&v58[103] = v40;
  *&v58[7] = v34;
  *&v58[23] = v35;
  *&v58[39] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF760, &qword_261466C10);
  LOBYTE(v34) = 3;
  sub_2614505C8();
  sub_261464D80();
  v21 = v46;
  (*(v33 + 8))(v11, v4);
  v22 = v60;
  v23 = v59;
  result = __swift_destroy_boxed_opaque_existential_1(v31);
  v24 = *&v58[144];
  *(v16 + 153) = *&v58[128];
  *(v16 + 169) = v24;
  *(v16 + 185) = *&v58[160];
  v25 = *&v58[80];
  *(v16 + 89) = *&v58[64];
  *(v16 + 105) = v25;
  v26 = *&v58[112];
  *(v16 + 121) = *&v58[96];
  *(v16 + 137) = v26;
  v27 = *&v58[16];
  *(v16 + 25) = *v58;
  *(v16 + 41) = v27;
  v28 = *&v58[48];
  *(v16 + 57) = *&v58[32];
  *v16 = v32;
  *(v16 + 8) = v22;
  *(v16 + 16) = v20;
  *(v16 + 24) = v23;
  v29 = *&v58[175];
  *(v16 + 73) = v28;
  *(v16 + 200) = v29;
  *(v16 + 208) = v21;
  return result;
}

unint64_t sub_2614504F8()
{
  result = qword_27FEAF750;
  if (!qword_27FEAF750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF750);
  }

  return result;
}

unint64_t sub_26145054C()
{
  result = qword_27FEAF758;
  if (!qword_27FEAF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF758);
  }

  return result;
}

double sub_2614505A0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_261465C00;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

unint64_t sub_2614505C8()
{
  result = qword_27FEAF768;
  if (!qword_27FEAF768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEAF760, &qword_261466C10);
    sub_26145064C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF768);
  }

  return result;
}

unint64_t sub_26145064C()
{
  result = qword_27FEAF770;
  if (!qword_27FEAF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF770);
  }

  return result;
}

_BYTE *sub_2614506A0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_261450734()
{
  result = qword_27FEAF778;
  if (!qword_27FEAF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF778);
  }

  return result;
}

unint64_t sub_26145078C()
{
  result = qword_27FEAF780;
  if (!qword_27FEAF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF780);
  }

  return result;
}

unint64_t sub_2614507E4()
{
  result = qword_27FEAF788;
  if (!qword_27FEAF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEAF788);
  }

  return result;
}

unint64_t sub_261450838(uint64_t a1, uint64_t a2)
{
  v2 = sub_261464D60();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

id sub_261450884(uint64_t a1, void *a2)
{
  v3 = v2;
  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

  v6 = sub_261452D4C(128);
  if ((v7 & 1) == 0 || !*(*(*(a1 + 56) + 8 * v6) + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_261464990();
  v10 = v9;

  v11 = sub_261446E80(v8, v10);
  if (v11 == 5)
  {

LABEL_6:
    (*(v2 + 56))(0, 0xD00000000000001BLL, 0x8000000261468DC0);
LABEL_7:
    v12 = *(v2 + 72);
    sub_261451F2C(&v115);
    v128 = *&v116[144];
    v129 = *&v116[160];
    v130 = *&v116[176];
    v131 = v117;
    v124 = *&v116[80];
    v125 = *&v116[96];
    v126 = *&v116[112];
    v127 = *&v116[128];
    v120 = *&v116[16];
    v121 = *&v116[32];
    v122 = *&v116[48];
    v123 = *&v116[64];
    v118 = v115;
    v119 = *v116;
    sub_261453E70(a1, &v118, [a2 code], 1);
    v12();

    return (*(v2 + 88))(v13);
  }

  if (!*(a1 + 16) || (v15 = v11, v16 = sub_261452D4C(140), (v17 & 1) == 0) || (v18 = *(*(a1 + 56) + 8 * v16), !v18[2]))
  {

    (*(v2 + 56))(0, 0xD000000000000012, 0x8000000261468DE0);
    goto LABEL_7;
  }

  v47 = v18[4];
  v19 = qword_27FEAF580;
  v55 = v18[5];

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_261464720();
  v50 = v21;
  v53 = v20;
  v48 = sub_261446900(v15);
  v23 = v22;
  v24 = type metadata accessor for QOSAlertMessage();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR___QOSAlertMessageInternal_title];
  *v26 = v53;
  *(v26 + 1) = v50;
  v27 = &v25[OBJC_IVAR___QOSAlertMessageInternal_body];
  *v27 = v48;
  v27[1] = v23;
  v90.receiver = v25;
  v51 = v24;
  v90.super_class = v24;
  v54 = objc_msgSendSuper2(&v90, sel_init, 0xEE00656E696C6461);
  sub_261440F08(v3 + 104, &v118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEAF798, &qword_261466DF0);
  type metadata accessor for MusicIssuesService();
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v28 = *(v115 + 112);

  if (!v28)
  {
    goto LABEL_21;
  }

  if (!*(v28 + 16))
  {

LABEL_21:

    (*(v3 + 56))(0, 0xD000000000000012, 0x8000000261468E40);
    v30 = *(v3 + 72);
    sub_261451F2C(&v115);
    v128 = *&v116[144];
    v129 = *&v116[160];
    v130 = *&v116[176];
    v131 = v117;
    v124 = *&v116[80];
    v125 = *&v116[96];
    v126 = *&v116[112];
    v127 = *&v116[128];
    v120 = *&v116[16];
    v121 = *&v116[32];
    v122 = *&v116[48];
    v123 = *&v116[64];
    v118 = v115;
    v119 = *v116;
    v31 = sub_261453E70(a1, &v118, [a2 code], 1);
    v30(v31);
    goto LABEL_22;
  }

  sub_261451314(v28, a1, a2, &v91);
  v86 = v101;
  v87 = v102;
  v88 = v103;
  v89 = v104;
  v82 = v97;
  v83 = v98;
  v84 = v99;
  v85 = v100;
  v78 = v93;
  v79 = v94;
  v80 = v95;
  v81 = v96;
  v76 = v91;
  v77 = v92;

  *&v116[144] = v101;
  *&v116[160] = v102;
  *&v116[176] = v103;
  v117 = v104;
  *&v116[80] = v97;
  *&v116[96] = v98;
  *&v116[112] = v99;
  *&v116[128] = v100;
  *&v116[16] = v93;
  *&v116[32] = v94;
  *&v116[48] = v95;
  *&v116[64] = v96;
  v115 = v91;
  *v116 = v92;
  if (sub_2614546E0(&v115) == 1)
  {

    (*(v3 + 56))(0, 0xD000000000000017, 0x8000000261468E60);
    v29 = *(v3 + 72);
    sub_261453E70(a1, &v91, [a2 code], 1);
    v29();
LABEL_22:

    return v54;
  }

  v75 = v115;
  v49 = *v116;
  *v74 = *&v116[169];
  *&v74[15] = *&v116[184];
  v46 = v116[8];
  v72 = *&v116[137];
  v73 = *&v116[153];
  v68 = *&v116[73];
  v69 = *&v116[89];
  v70 = *&v116[105];
  v71 = *&v116[121];
  v64 = *&v116[9];
  v65 = *&v116[25];
  v66 = *&v116[41];
  v67 = *&v116[57];
  v45 = v117;
  sub_261449AE0(v117, v47, v55, v15, &v105);
  if (!v106)
  {
    v52 = *(v3 + 56);
    *&v118 = 0;
    *(&v118 + 1) = 0xE000000000000000;
    sub_261464CF0();

    *&v118 = 0xD00000000000001FLL;
    *(&v118 + 1) = 0x8000000261468E80;
    MEMORY[0x266702930](v47, v55);

    MEMORY[0x266702930](544370464, 0xE400000000000000);
    MEMORY[0x266702930](v8, v10);

    (v52)(0, v118, *(&v118 + 1));

    v61 = v75;
    *&v62[137] = v72;
    *&v62[153] = v73;
    *&v62[169] = *v74;
    *&v62[73] = v68;
    *&v62[89] = v69;
    *&v62[105] = v70;
    *&v62[121] = v71;
    *&v62[9] = v64;
    *&v62[25] = v65;
    *&v62[41] = v66;
    v43 = *(v3 + 72);
    *v62 = v49;
    v62[8] = v46;
    *&v62[57] = v67;
    *&v62[184] = *&v74[15];
    nullsub_1();
    v128 = *&v62[144];
    v129 = *&v62[160];
    v130 = *&v62[176];
    v131 = v45;
    v124 = *&v62[80];
    v125 = *&v62[96];
    v126 = *&v62[112];
    v127 = *&v62[128];
    v120 = *&v62[16];
    v121 = *&v62[32];
    v122 = *&v62[48];
    v123 = *&v62[64];
    v118 = v75;
    v119 = *v62;
    v44 = sub_261453E70(a1, &v118, [a2 code], 1);
    sub_26144D9E4(&v91, &qword_27FEAF7A0, &qword_261466DF8);
    v43(v44);
    goto LABEL_22;
  }

  v110 = v105;
  v111 = v106;
  v112 = v107;
  v113 = v108;
  v114 = v109;

  v58 = v75;
  *&v59[137] = v72;
  *&v59[153] = v73;
  *&v59[169] = *v74;
  *&v59[73] = v68;
  *&v59[89] = v69;
  *&v59[105] = v70;
  *&v59[121] = v71;
  *&v59[9] = v64;
  *&v59[25] = v65;
  *&v59[41] = v66;
  v32 = *(v3 + 72);
  *v59 = v49;
  v59[8] = v46;
  *&v59[57] = v67;
  *&v59[184] = *&v74[15];
  v60 = v45;
  nullsub_1();
  v128 = *&v59[144];
  v129 = *&v59[160];
  v130 = *&v59[176];
  v131 = v45;
  v124 = *&v59[80];
  v125 = *&v59[96];
  v126 = *&v59[112];
  v127 = *&v59[128];
  v120 = *&v59[16];
  v121 = *&v59[32];
  v122 = *&v59[48];
  v123 = *&v59[64];
  v118 = v75;
  v119 = *v59;
  *&v62[144] = v86;
  *&v62[160] = v87;
  *&v62[176] = v88;
  v63 = v89;
  *&v62[80] = v82;
  *&v62[96] = v83;
  *&v62[112] = v84;
  *&v62[128] = v85;
  *&v62[16] = v78;
  *&v62[32] = v79;
  *&v62[48] = v80;
  *&v62[64] = v81;
  v61 = v76;
  *v62 = v77;
  sub_2614546F8(&v61, v57);
  v33 = sub_261453E70(a1, &v118, [a2 code], 0);
  sub_26144D9E4(&v91, &qword_27FEAF7A0, &qword_261466DF8);
  v32(v33);

  v34 = sub_2614519A8(&v110, v47, v55, v49, v46 & 1);
  v36 = v35;

  sub_26144D9E4(&v91, &qword_27FEAF7A0, &qword_261466DF8);
  v37 = v110;
  v38 = v111;
  v39 = objc_allocWithZone(v51);
  v40 = &v39[OBJC_IVAR___QOSAlertMessageInternal_title];
  *v40 = v37;
  *(v40 + 1) = v38;
  v41 = &v39[OBJC_IVAR___QOSAlertMessageInternal_body];
  *v41 = v34;
  v41[1] = v36;
  v56.receiver = v39;
  v56.super_class = v51;

  v42 = objc_msgSendSuper2(&v56, sel_init);

  sub_26144D9E4(&v105, &qword_27FEAF7A8, &unk_261466E00);
  return v42;
}