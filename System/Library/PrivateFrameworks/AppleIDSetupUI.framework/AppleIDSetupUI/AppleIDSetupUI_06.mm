uint64_t sub_2409BD968()
{
  if (qword_27E50AF78 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  v0[15] = __swift_project_value_buffer(v1, qword_27E50DD90);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User chose to connect. Updating model", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  v8 = sub_240A2BFDC();
  v10 = v9;
  v0[16] = v9;
  type metadata accessor for DiscoveredView(0);
  sub_240945D78(v5);
  v11 = sub_240A2BFCC();
  v13 = v12;
  v0[17] = v12;
  (*(v6 + 8))(v5, v7);
  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_2409BDB88;
  v15 = v0[9];
  v16 = MEMORY[0x277CEDD60];

  return MEMORY[0x28213FED0](2, v8, v10, v11, v13, v15, v16);
}

uint64_t sub_2409BDB88(uint64_t a1, char a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[19] = a1;
  *(v5 + 160) = a2;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  if (v2)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v5[13];
    v10 = v5[14];
    v11 = sub_2409BDE40;
  }

  else
  {
    (*(v7 + 8))(v4[11], v4[9]);

    v9 = v5[13];
    v10 = v5[14];
    v11 = sub_2409BDD74;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_2409BDD74()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E2C();
  sub_240A2BCFC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409BDE40()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);

  if (v1)
  {
    v3 = v2;
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2AC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      *(v0 + 16) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
      v8 = sub_240A2BF9C();
      v10 = sub_240925464(v8, v9, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2408FE000, v4, v5, "Local authentication failed due to error %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x245CCDDB0](v7, -1, -1);
      v11 = v6;
LABEL_6:
      MEMORY[0x245CCDDB0](v11, -1, -1);

      goto LABEL_10;
    }

    v21 = *(v0 + 152);

    v22 = v21;
  }

  else
  {
    v12 = v2;
    v4 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();
    v14 = os_log_type_enabled(v4, v13);
    v15 = *(v0 + 152);
    if (v14)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      *(v0 + 24) = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE58, &qword_240A35A48);
      v18 = sub_240A2BF9C();
      v20 = sub_240925464(v18, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2408FE000, v4, v13, "Current device is not capable of biometrics. Error: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      v11 = v16;
      goto LABEL_6;
    }

    v22 = v15;
  }

  sub_240963F50(v22);
LABEL_10:
  v23 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  MEMORY[0x245CCC9B0]();
  sub_240A29E4C();
  sub_240A2BCFC();
  sub_240963F50(v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for DiscoveredView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910) + 32);
  v7 = sub_240A29E6C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_240A29DBC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409BE348(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DiscoveredView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2409BE3BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2409BE404()
{
  result = qword_27E50DE68;
  if (!qword_27E50DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50DE70, &qword_240A35A50);
    sub_2409BD304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DE68);
  }

  return result;
}

uint64_t sub_2409BE490(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_240A2B00C();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v2[17] = swift_task_alloc();
  v4 = sub_240A2962C();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150);
  v2[21] = swift_task_alloc();
  v5 = sub_240A295AC();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2409BE6B0, 0, 0);
}

uint64_t sub_2409BE6B0()
{
  *(v0 + 200) = sub_240A2C21C();
  *(v0 + 208) = sub_240A2C20C();
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409BE77C, v2, v1);
}

uint64_t sub_2409BE77C()
{

  return MEMORY[0x2822009F8](sub_2409BE810, 0, 0);
}

uint64_t sub_2409BE810(uint64_t a1)
{
  *(v1 + 216) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409BE8D0, v3, v2);
}

uint64_t sub_2409BE8D0()
{

  return MEMORY[0x2822009F8](sub_2409BE964, 0, 0);
}

uint64_t sub_2409BE964()
{
  v1 = v0;
  v2 = v0[11];
  v3 = sub_240A2BF1C();
  v1[28] = v3;
  v4 = v2[3];
  v5 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v4);
  v6 = swift_task_alloc();
  v1[29] = v6;
  *v6 = v1;
  v6[1] = sub_2409BEA88;
  v7 = v1[21];

  return MEMORY[0x28213F898](v7, v3, v4, v5);
}

uint64_t sub_2409BEA88()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_2409BF344;
  }

  else
  {
    v2 = sub_2409BEBC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2409BEBC8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240919300(v3, &qword_27E50C7E0, &qword_240A33150);
    sub_240A2AE9C();
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2AC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "Missing migration URL from URL bag", v6, 2u);
      MEMORY[0x245CCDDB0](v6, -1, -1);
    }

    v7 = *(v0 + 224);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = *(v0 + 104);

    (*(v9 + 8))(v8, v10);
    sub_2409B91C4();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    goto LABEL_14;
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 136);
  v15 = *(v0 + 96);
  (*(v2 + 32))(*(v0 + 192), v3, v1);
  sub_2409BF428(v15, v14);
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_240919300(*(v0 + 136), &unk_27E50DCE0, &qword_240A32E20);
    sub_240A2AE5C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "Missing pendingDOB", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v19 = *(v0 + 224);
    v21 = *(v0 + 184);
    v20 = *(v0 + 192);
    v22 = *(v0 + 176);
    v23 = *(v0 + 128);
    v24 = *(v0 + 104);
    v25 = *(v0 + 112);

    (*(v25 + 8))(v23, v24);
    sub_240926FD4();
    swift_allocError();
    *v26 = xmmword_240A35560;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 0;
    swift_willThrow();

    (*(v21 + 8))(v20, v22);
    goto LABEL_14;
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  v27 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v28 = sub_240A2957C();
  v29 = [v27 initWithURL_];

  v30 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v31 = sub_240A2BF1C();
  [v30 setDateFormat_];

  v32 = sub_240A295EC();
  v33 = [v30 stringFromDate_];

  v34 = sub_240A2BF4C();
  v36 = v35;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DE78, &qword_240A35A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = 0x7961646874726962;
  v38 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v34;
  *(inited + 56) = v36;
  sub_2409264C8(inited);
  swift_setDeallocating();
  sub_240919300(v38, &qword_27E50DE80, qword_240A35A68);
  v39 = sub_240A2BF1C();
  [v29 setHTTPMethod_];

  v40 = sub_240A2BF1C();
  v41 = sub_240A2BF1C();
  v65 = v29;
  [v29 setValue:v40 forHTTPHeaderField:v41];

  v42 = objc_opt_self();
  v43 = sub_240A2BE9C();

  *(v0 + 80) = 0;
  v44 = [v42 dataWithJSONObject:v43 options:0 error:v0 + 80];

  v45 = *(v0 + 80);
  v46 = *(v0 + 224);
  v47 = *(v0 + 184);
  v48 = *(v0 + 192);
  v64 = *(v0 + 176);
  if (!v44)
  {
    v59 = *(v0 + 152);
    v58 = *(v0 + 160);
    v60 = *(v0 + 144);
    v61 = v45;
    sub_240A2953C();

    swift_willThrow();
    (*(v59 + 8))(v58, v60);
    (*(v47 + 8))(v48, v64);
LABEL_14:

    v62 = *(v0 + 8);

    return v62();
  }

  v49 = v30;
  v50 = *(v0 + 152);
  v51 = *(v0 + 160);
  v63 = *(v0 + 144);
  v52 = sub_240A295DC();
  v54 = v53;

  v55 = sub_240A295CC();
  sub_24092D960(v52, v54);
  [v65 setHTTPBody_];

  (*(v50 + 8))(v51, v63);
  (*(v47 + 8))(v48, v64);

  v56 = *(v0 + 8);

  return v56(v65);
}

uint64_t sub_2409BF344()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409BF428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AISFlowStepChildSetupError.__allocating_init(error:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = a1;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_240A2B0DC();
  *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v2;
}

void *AISFlowStepChildSetupError.error.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error);
  v2 = v1;
  return v1;
}

uint64_t AISFlowStepChildSetupError.init(error:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI26AISFlowStepChildSetupError_error) = a1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v9[15] = 0;
  sub_240A2B0DC();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v1;
}

uint64_t AISFlowStepChildSetupError.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AISFlowStepChildSetupError.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AISFlowStepChildSetupError(uint64_t a1)
{
  result = qword_27E50DE88;
  if (!qword_27E50DE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_2409BF8EC(uint64_t a1))()
{
  v3 = OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss;
  *a1 = v1;
  *(a1 + 8) = v3;

  sub_240A2AF2C();

  *(a1 + 16) = *(a1 + 17);
  return sub_2409BF958;
}

uint64_t sub_2409BF968(char *a1, uint64_t a2, void *a3)
{
  v3 = a1;

  sub_240A2AF2C();

  return v5;
}

uint64_t sub_2409BF9C8(void *a1)
{

  sub_240A2AF2C();

  return v2;
}

void sub_2409BFA1C(char *a1, uint64_t a2, char a3, void *a4)
{
  v4 = a1;

  sub_240A2AF3C();
}

uint64_t sub_2409BFA7C(char a1, void *a2)
{

  sub_240A2AF3C();
}

uint64_t sub_2409BFAC4@<X0>(_BYTE *a3@<X8>)
{

  sub_240A2AF2C();

  *a3 = v5;
  return result;
}

uint64_t sub_2409BFB18(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{

  sub_240A2AF3C();
}

uint64_t (*sub_2409BFB68(uint64_t a1))()
{
  v3 = OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient;
  *a1 = v1;
  *(a1 + 8) = v3;

  sub_240A2AF2C();

  *(a1 + 16) = *(a1 + 17);
  return sub_2409C45A4;
}

uint64_t sub_2409BFBD4(uint64_t a1)
{
  *(a1 + 17) = *(a1 + 16);

  sub_240A2AF3C();
}

void sub_2409BFC28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2409BFC88()
{
  v1 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2409BFCD4(uint64_t a1)
{
  v3 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SetupViewController.__allocating_init(dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:contextBuilder:reportHandler:)(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v102 = a8;
  v83 = a7;
  v103 = a6;
  v101 = a5;
  v93 = a2;
  v91 = a1;
  v14 = sub_240A2981C();
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v98 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v97 = &v77[-v17];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v18 = MEMORY[0x28223BE20](v90);
  v88 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v87 = &v77[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v21 - 8);
  v81 = &v77[-v22];
  v23 = type metadata accessor for SetupView(0);
  v24 = (v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v77[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = objc_allocWithZone(v9);
  *&v27[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v104) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  swift_allocObject();
  v28 = sub_240A2AF1C();
  *&v27[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v28;
  LOBYTE(v104) = a4;
  swift_allocObject();

  v29 = sub_240A2AF1C();
  *&v27[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v29;
  v114.receiver = v27;
  v114.super_class = v9;

  v30 = objc_msgSendSuper2(&v114, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v96 = a2;
  v31 = v30;

  v32 = v31;
  v95 = a1;
  v33 = sub_240A2C20C();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v28;
  v94 = v28;

  v36 = sub_240A2C20C();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v35;
  v37[4] = v28;
  sub_240A2BD2C();
  v86 = v111;
  v85 = v112;
  v84 = v113;

  v38 = sub_240A2C20C();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v35;
  v39[4] = v29;
  v92 = v29;

  v40 = sub_240A2C20C();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v35;
  v41[4] = v29;
  sub_240A2BD2C();
  v80 = v108;
  v79 = v109;
  v78 = v110;
  v42 = swift_allocObject();
  v89 = v32;
  swift_unknownObjectWeakInit();

  v43 = swift_allocObject();
  v82 = v42;
  v44 = v83;
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = v102;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v45 = sub_240A2B01C();
  (*(*(v45 - 8) + 56))(v81, 1, 1, v45);
  v83 = sub_240A2A1BC();
  LOBYTE(v106) = 0;
  sub_240A2BC4C();
  v46 = *(&v104 + 1);
  v26[48] = v104;
  *(v26 + 7) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v48 = v87;
  (*(*(v47 - 8) + 56))(v87, 1, 1, v47);
  sub_240919298(v48, v88, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v48, &qword_27E50C700, &unk_240A32F50);
  v49 = &v26[v24[13]];
  v106 = 0;
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v50 = v105;
  *v49 = v104;
  *(v49 + 2) = v50;
  v51 = v24[14];
  *&v26[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v52 = v24[15];
  *&v26[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v53 = v24[16];
  *&v26[v53] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = &v26[v24[17]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = &v26[v24[18]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = &v26[v24[19]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = v24[20];
  v58 = v24[21];
  v59 = &v26[v24[24]];
  LOBYTE(v106) = 1;
  sub_240A2BC4C();
  v60 = *(&v104 + 1);
  *v59 = v104;
  *(v59 + 1) = v60;
  v61 = v97;
  sub_240A2979C();
  v62 = v99;
  v63 = v100;
  (*(v99 + 16))(v98, v61, v100);
  sub_240A2BC4C();
  (*(v62 + 8))(v61, v63);
  v64 = v103;
  *v26 = v101;
  *(v26 + 1) = v64;
  *(v26 + 2) = sub_2409C13BC;
  *(v26 + 3) = v43;
  *&v26[v57] = v91;
  *&v26[v58] = v93;
  *(v26 + 4) = v83;
  v65 = &v26[v24[22]];
  v66 = v85;
  *v65 = v86;
  *(v65 + 1) = v66;
  v65[16] = v84;
  v67 = &v26[v24[23]];
  v68 = v79;
  *v67 = v80;
  *(v67 + 1) = v68;
  v67[16] = v78;
  v69 = objc_allocWithZone(sub_240A29DEC());

  *(v26 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v70 = sub_240A297AC();
  sub_240A2A04C();
  v70(&v104, 0);
  sub_240A2BC6C();

  v71 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v72 = sub_240A2B5EC();

  v73 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v74 = v89;
  swift_beginAccess();
  v75 = *&v74[v73];
  *&v74[v73] = v72;

  return v74;
}

char *SetupViewController.init(dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:contextBuilder:reportHandler:)(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v101 = a8;
  v83 = a7;
  v102 = a6;
  v100 = a5;
  v92 = a2;
  v90 = a1;
  v14 = sub_240A2981C();
  v98 = *(v14 - 8);
  v99 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v97 = &v77[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v96 = &v77[-v17];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v18 = MEMORY[0x28223BE20](v89);
  v87 = &v77[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v77[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v22 - 8);
  v81 = &v77[-v23];
  v24 = type metadata accessor for SetupView(0);
  v25 = (v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v77[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v9[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v103) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  swift_allocObject();
  v28 = sub_240A2AF1C();
  *&v9[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v28;
  LOBYTE(v103) = a4;
  swift_allocObject();

  v29 = sub_240A2AF1C();
  *&v9[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v29;
  v30 = type metadata accessor for SetupViewController();
  v113.receiver = v9;
  v113.super_class = v30;

  v31 = objc_msgSendSuper2(&v113, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v95 = a2;
  v32 = v31;

  v33 = v32;
  v94 = a1;
  v34 = sub_240A2C20C();
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D85700];
  v35[2] = v34;
  v35[3] = v36;
  v35[4] = v28;
  v93 = v28;

  v37 = sub_240A2C20C();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = v36;
  v38[4] = v28;
  sub_240A2BD2C();
  v86 = v110;
  v85 = v111;
  v84 = v112;

  v39 = sub_240A2C20C();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = v36;
  v40[4] = v29;
  v91 = v29;

  v41 = sub_240A2C20C();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = v36;
  v42[4] = v29;
  sub_240A2BD2C();
  v80 = v107;
  v79 = v108;
  v78 = v109;
  v43 = swift_allocObject();
  v88 = v33;
  swift_unknownObjectWeakInit();

  v44 = swift_allocObject();
  v82 = v43;
  v45 = v83;
  v44[2] = v43;
  v44[3] = v45;
  v44[4] = v101;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v46 = sub_240A2B01C();
  (*(*(v46 - 8) + 56))(v81, 1, 1, v46);
  v83 = sub_240A2A1BC();
  LOBYTE(v105) = 0;
  sub_240A2BC4C();
  v47 = *(&v103 + 1);
  v27[48] = v103;
  *(v27 + 7) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v48 - 8) + 56))(v21, 1, 1, v48);
  sub_240919298(v21, v87, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v21, &qword_27E50C700, &unk_240A32F50);
  v49 = &v27[v25[13]];
  v105 = 0;
  v106 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v50 = v104;
  *v49 = v103;
  *(v49 + 2) = v50;
  v51 = v25[14];
  *&v27[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v52 = v25[15];
  *&v27[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v53 = v25[16];
  *&v27[v53] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v54 = &v27[v25[17]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = &v27[v25[18]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = &v27[v25[19]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = v25[20];
  v58 = v25[21];
  v59 = &v27[v25[24]];
  LOBYTE(v105) = 1;
  sub_240A2BC4C();
  v60 = *(&v103 + 1);
  *v59 = v103;
  *(v59 + 1) = v60;
  v61 = v96;
  sub_240A2979C();
  v62 = v98;
  v63 = v99;
  (*(v98 + 16))(v97, v61, v99);
  sub_240A2BC4C();
  (*(v62 + 8))(v61, v63);
  v64 = v102;
  *v27 = v100;
  *(v27 + 1) = v64;
  *(v27 + 2) = sub_2409C45A0;
  *(v27 + 3) = v44;
  *&v27[v57] = v90;
  *&v27[v58] = v92;
  *(v27 + 4) = v83;
  v65 = &v27[v25[22]];
  v66 = v85;
  *v65 = v86;
  *(v65 + 1) = v66;
  v65[16] = v84;
  v67 = &v27[v25[23]];
  v68 = v79;
  *v67 = v80;
  *(v67 + 1) = v68;
  v67[16] = v78;
  v69 = objc_allocWithZone(sub_240A29DEC());

  *(v27 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v70 = sub_240A297AC();
  sub_240A2A04C();
  v70(&v103, 0);
  sub_240A2BC6C();

  v71 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v72 = sub_240A2B5EC();

  v73 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v74 = v88;
  swift_beginAccess();
  v75 = *&v74[v73];
  *&v74[v73] = v72;

  return v74;
}

void sub_2409C1238(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_240919298(a1, v10, &qword_27E50C6E0, &qword_240A32F18);
    v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    sub_2409974DC(v10, v14 + v13);

    sub_2409C3A54(1, sub_2409C4528, v14);
  }

  else
  {
    a3(a1);
  }
}

char *SetupViewController.__allocating_init(context:dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:reportHandler:)(void *a1, void *a2, void *a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v91 = a3;
  v105 = a2;
  v101 = sub_240A2981C();
  v98 = *(v101 - 8);
  v15 = MEMORY[0x28223BE20](v101);
  v97 = &v78[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v96 = &v78[-v17];
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v18 = MEMORY[0x28223BE20](v92);
  v90 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v88 = &v78[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v21 - 8);
  v83 = &v78[-v22];
  v23 = type metadata accessor for SetupView(0);
  v24 = (v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v78[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = objc_allocWithZone(v8);
  v104 = swift_allocObject();
  *(v104 + 16) = a1;
  v27 = swift_allocObject();
  v103 = v27;
  *(v27 + 16) = a6;
  *(v27 + 24) = a7;
  v100 = a7;
  v28 = type metadata accessor for SetupViewController();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v106) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  swift_allocObject();
  v99 = a1;

  v30 = sub_240A2AF1C();
  *&v29[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v30;
  LOBYTE(v106) = a5;
  swift_allocObject();

  v31 = sub_240A2AF1C();
  *&v29[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v31;
  v116.receiver = v29;
  v116.super_class = v28;

  v32 = objc_msgSendSuper2(&v116, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v95 = a3;
  v33 = v32;

  v34 = v33;
  v94 = v105;
  v35 = sub_240A2C20C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v30;
  v93 = v30;

  v38 = sub_240A2C20C();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v37;
  v39[4] = v30;
  sub_240A2BD2C();
  v86 = v113;
  v85 = v114;
  v84 = v115;

  v40 = sub_240A2C20C();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v37;
  v41[4] = v31;
  v89 = v31;

  v42 = sub_240A2C20C();
  v43 = swift_allocObject();
  v43[2] = v42;
  v43[3] = v37;
  v43[4] = v31;
  sub_240A2BD2C();
  v81 = v110;
  v80 = v111;
  v79 = v112;
  v44 = swift_allocObject();
  v87 = v34;
  swift_unknownObjectWeakInit();

  v45 = swift_allocObject();
  v82 = v44;
  v45[2] = v44;
  v45[3] = sub_2409C41A8;
  v45[4] = v103;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v46 = sub_240A2B01C();
  (*(*(v46 - 8) + 56))(v83, 1, 1, v46);
  v83 = sub_240A2A1BC();
  LOBYTE(v108) = 0;
  sub_240A2BC4C();
  v47 = *(&v106 + 1);
  v26[48] = v106;
  *(v26 + 7) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v49 = v88;
  (*(*(v48 - 8) + 56))(v88, 1, 1, v48);
  sub_240919298(v49, v90, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v49, &qword_27E50C700, &unk_240A32F50);
  v50 = &v26[v24[13]];
  v108 = 0;
  v109 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v51 = v107;
  *v50 = v106;
  *(v50 + 2) = v51;
  v52 = v24[14];
  *&v26[v52] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v53 = v24[15];
  *&v26[v53] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v54 = v24[16];
  *&v26[v54] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v55 = &v26[v24[17]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = &v26[v24[18]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = &v26[v24[19]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = v24[20];
  v59 = v24[21];
  v60 = &v26[v24[24]];
  LOBYTE(v108) = 1;
  sub_240A2BC4C();
  v61 = *(&v106 + 1);
  *v60 = v106;
  *(v60 + 1) = v61;
  v62 = v96;
  sub_240A2979C();
  v63 = v98;
  v64 = v101;
  (*(v98 + 16))(v97, v62, v101);
  sub_240A2BC4C();
  (*(v63 + 8))(v62, v64);
  v66 = v104;
  v65 = v105;
  *v26 = sub_2409C41A0;
  *(v26 + 1) = v66;
  *(v26 + 2) = sub_2409C45A0;
  *(v26 + 3) = v45;
  *&v26[v58] = v65;
  *&v26[v59] = v91;
  *(v26 + 4) = v83;
  v67 = &v26[v24[22]];
  v68 = v85;
  *v67 = v86;
  *(v67 + 1) = v68;
  v67[16] = v84;
  v69 = &v26[v24[23]];
  v70 = v80;
  *v69 = v81;
  *(v69 + 1) = v70;
  v69[16] = v79;
  objc_allocWithZone(sub_240A29DEC());

  *(v26 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v71 = sub_240A297AC();
  sub_240A2A04C();
  v71(&v106, 0);
  sub_240A2BC6C();

  v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v73 = sub_240A2B5EC();

  v74 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v75 = v87;
  swift_beginAccess();
  v76 = *&v75[v74];
  *&v75[v74] = v73;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v75;
}

char *SetupViewController.init(context:dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:reportHandler:)(void *a1, void *a2, void *a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v90 = a3;
  v103 = a2;
  v99 = sub_240A2981C();
  v97 = *(v99 - 8);
  v13 = MEMORY[0x28223BE20](v99);
  v96 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v95 = &v77[-v15];
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v16 = MEMORY[0x28223BE20](v91);
  v88 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v87 = &v77[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v19 - 8);
  v82 = &v77[-v20];
  v21 = type metadata accessor for SetupView(0);
  v22 = (v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v77[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = swift_allocObject();
  *(v102 + 16) = a1;
  v25 = swift_allocObject();
  v101 = v25;
  *(v25 + 16) = a6;
  *(v25 + 24) = a7;
  v100 = a7;
  v26 = type metadata accessor for SetupViewController();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR_____AISSetupViewController_hostingController] = 0;
  LOBYTE(v104) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DEB0, &unk_240A35AE0);
  swift_allocObject();
  v98 = a1;

  v28 = sub_240A2AF1C();
  *&v27[OBJC_IVAR_____AISSetupViewController___shouldAutoDismiss] = v28;
  LOBYTE(v104) = a5;
  swift_allocObject();

  v29 = sub_240A2AF1C();
  *&v27[OBJC_IVAR_____AISSetupViewController___isPreEstablishedClient] = v29;
  v114.receiver = v27;
  v114.super_class = v26;

  v30 = objc_msgSendSuper2(&v114, sel_initWithNibName_bundle_, 0, 0);
  sub_240A2C21C();
  v94 = a3;
  v31 = v30;

  v32 = v31;
  v93 = v103;
  v33 = sub_240A2C20C();
  v34 = swift_allocObject();
  v35 = MEMORY[0x277D85700];
  v34[2] = v33;
  v34[3] = v35;
  v34[4] = v28;
  v92 = v28;

  v36 = sub_240A2C20C();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = v35;
  v37[4] = v28;
  sub_240A2BD2C();
  v85 = v111;
  v84 = v112;
  v83 = v113;

  v38 = sub_240A2C20C();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v35;
  v39[4] = v29;
  v89 = v29;

  v40 = sub_240A2C20C();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v35;
  v41[4] = v29;
  sub_240A2BD2C();
  v80 = v108;
  v79 = v109;
  v78 = v110;
  v42 = swift_allocObject();
  v86 = v32;
  swift_unknownObjectWeakInit();

  v43 = swift_allocObject();
  v81 = v42;
  v43[2] = v42;
  v43[3] = sub_2409C45AC;
  v43[4] = v101;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);

  sub_240A2C32C();
  v44 = sub_240A2B01C();
  (*(*(v44 - 8) + 56))(v82, 1, 1, v44);
  v82 = sub_240A2A1BC();
  LOBYTE(v106) = 0;
  sub_240A2BC4C();
  v45 = *(&v104 + 1);
  v24[48] = v104;
  *(v24 + 7) = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v47 = v87;
  (*(*(v46 - 8) + 56))(v87, 1, 1, v46);
  sub_240919298(v47, v88, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_240919300(v47, &qword_27E50C700, &unk_240A32F50);
  v48 = &v24[v22[13]];
  v106 = 0;
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v49 = v105;
  *v48 = v104;
  *(v48 + 2) = v49;
  v50 = v22[14];
  *&v24[v50] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v51 = v22[15];
  *&v24[v51] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v52 = v22[16];
  *&v24[v52] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v53 = &v24[v22[17]];
  *v53 = swift_getKeyPath();
  v53[8] = 0;
  v54 = &v24[v22[18]];
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  v55 = &v24[v22[19]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  v56 = v22[20];
  v57 = v22[21];
  v58 = &v24[v22[24]];
  LOBYTE(v106) = 1;
  sub_240A2BC4C();
  v59 = *(&v104 + 1);
  *v58 = v104;
  *(v58 + 1) = v59;
  v60 = v95;
  sub_240A2979C();
  v61 = v97;
  v62 = v99;
  (*(v97 + 16))(v96, v60, v99);
  sub_240A2BC4C();
  (*(v61 + 8))(v60, v62);
  v64 = v102;
  v63 = v103;
  *v24 = sub_2409C459C;
  *(v24 + 1) = v64;
  *(v24 + 2) = sub_2409C45A0;
  *(v24 + 3) = v43;
  *&v24[v56] = v63;
  *&v24[v57] = v90;
  *(v24 + 4) = v82;
  v65 = &v24[v22[22]];
  v66 = v84;
  *v65 = v85;
  *(v65 + 1) = v66;
  v65[16] = v83;
  v67 = &v24[v22[23]];
  v68 = v79;
  *v67 = v80;
  *(v67 + 1) = v68;
  v67[16] = v78;
  v69 = objc_allocWithZone(sub_240A29DEC());

  *(v24 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v70 = sub_240A297AC();
  sub_240A2A04C();
  v70(&v104, 0);
  sub_240A2BC6C();

  v71 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v72 = sub_240A2B5EC();

  v73 = OBJC_IVAR_____AISSetupViewController_hostingController;
  v74 = v86;
  swift_beginAccess();
  v75 = *&v74[v73];
  *&v74[v73] = v72;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v74;
}

uint64_t sub_2409C29B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = a1;
  v4 = sub_240A29C7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = sub_240A2B00C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 16))(v16, v32, v4);
    v21 = a2;
    sub_240A29C4C();

    v22 = v4;
  }

  else
  {
    v27 = v4;
    v28 = v8;
    v29 = v11;
    v30 = v14;
    sub_240A2AE7C();
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, v23, v24, "Client passed in a nil objc context, this will be a fatal error soon in the future!!!", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    (*(v18 + 8))(v20, v17);
    v22 = v27;
    (*(v5 + 16))(v28, v32, v27);
    sub_240A29C0C();
    sub_240A29BDC();
    sub_240A29BDC();
    sub_240A29C1C();
  }

  return (*(v5 + 8))(v32, v22);
}

void sub_2409C2CC0(uint64_t a1, void (*a2)(void *, void *), uint64_t a3)
{
  v53 = a3;
  v54 = a2;
  v4 = sub_240A2B00C();
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v47 - v8;
  v55 = sub_240A29ACC();
  v9 = *(v55 - 8);
  v10 = MEMORY[0x28223BE20](v55);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  MEMORY[0x28223BE20](v18);
  v20 = (&v47 - v19);
  sub_240919298(a1, &v47 - v19, &qword_27E50C6E0, &qword_240A32F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    sub_240A2AE7C();
    v22 = v21;
    v23 = sub_240A2AFFC();
    v24 = sub_240A2C2AC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_2408FE000, v23, v24, "Returning setup error from vc: %@", v25, 0xCu);
      sub_240919300(v26, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v26, -1, -1);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }

    (*(v51 + 8))(v7, v52);
    v29 = v21;
    v54(0, v21);
  }

  else
  {
    v30 = v20;
    v31 = v55;
    (*(v9 + 32))(v17, v30, v55);
    sub_240A2AE7C();
    v32 = *(v9 + 16);
    v32(v15, v17, v31);
    v33 = sub_240A2AFFC();
    v34 = sub_240A2C28C();
    v35 = v17;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v49 = v17;
      v37 = v36;
      v48 = swift_slowAlloc();
      v56 = v48;
      *v37 = 136315138;
      v38 = v55;
      v32(v12, v15, v55);
      v39 = sub_240A2BF9C();
      v41 = v40;
      v42 = v38;
      v43 = *(v9 + 8);
      v43(v15, v42);
      v44 = sub_240925464(v39, v41, &v56);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_2408FE000, v33, v34, "Returning setup report from vc converted into objc: %s", v37, 0xCu);
      v45 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x245CCDDB0](v45, -1, -1);
      v35 = v49;
      MEMORY[0x245CCDDB0](v37, -1, -1);
    }

    else
    {

      v43 = *(v9 + 8);
      v43(v15, v55);
    }

    (*(v51 + 8))(v50, v52);
    v46 = sub_240A29ABC();
    v54(v46, 0);

    v43(v35, v55);
  }
}

void sub_2409C32A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_240A2952C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id SetupViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SetupViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR_____AISSetupViewController_hostingController) = 0;
  sub_240A2C58C();
  __break(1u);
}

void sub_2409C3404()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  MEMORY[0x28223BE20](v2 - 8);
  v63.receiver = v0;
  v63.super_class = type metadata accessor for SetupViewController();
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v3 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = sub_240A2B3BC();
  v10 = sub_240A2B5BC();
  if ((*v9 & v8) != 0)
  {
    *v9 &= ~v8;
  }

  v10(v62, 0);

  v11 = *&v1[v3];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v14 willMoveToParentViewController_];
  if (!*&v1[v3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v15;
  v17 = *&v1[v3];
  if (!v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = [v17 view];
  if (!v18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = v18;
  [v16 addSubview_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_240A318E0;
  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v24 = [v23 view];
  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v21 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 32) = v28;
  v29 = *&v1[v3];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v21 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 40) = v34;
  v35 = *&v1[v3];
  if (!v35)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v21 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v22 + 48) = v40;
  v41 = *&v1[v3];
  if (!v41)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v42 = [v41 view];
  if (!v42)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v21 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v22 + 56) = v46;
  v47 = *&v1[v3];
  if (!v47)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v48 = [v47 view];
  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v48;
  v50 = [v48 centerXAnchor];

  v51 = [v21 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v22 + 64) = v52;
  v53 = *&v1[v3];
  if (!v53)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = [v55 centerYAnchor];

  v58 = [v21 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v22 + 72) = v59;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v60 = sub_240A2C15C();

  [v56 activateConstraints_];

  v61 = *&v1[v3];
  if (v61)
  {
    [v61 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_2409C3A54(char a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_240A2B00C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;

  sub_240A2AF2C();

  if (v43 == 1)
  {
    sub_240A2AE7C();
    v17 = v3;
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C29C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v42 = a3;
      v21 = v20;
      v22 = swift_slowAlloc();
      v41 = a2;
      v23 = a1;
      v24 = v22;
      *v21 = 138412290;
      *(v21 + 4) = v17;
      *v22 = v17;
      v25 = v17;
      _os_log_impl(&dword_2408FE000, v18, v19, "Auto dismiss is enabled, dismissing view controller: %@", v21, 0xCu);
      sub_240919300(v24, &unk_27E50B730, &qword_240A30CE0);
      v26 = v24;
      a1 = v23;
      a2 = v41;
      MEMORY[0x245CCDDB0](v26, -1, -1);
      v27 = v21;
      a3 = v42;
      MEMORY[0x245CCDDB0](v27, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v28 = sub_240A2C24C();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    sub_240A2C21C();
    v29 = v17;
    sub_240964BBC(a2, a3);
    v30 = sub_240A2C20C();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D85700];
    *(v31 + 16) = v30;
    *(v31 + 24) = v32;
    *(v31 + 32) = v29;
    *(v31 + 40) = a1 & 1;
    *(v31 + 48) = a2;
    *(v31 + 56) = a3;
    sub_2409230D4(0, 0, v9, &unk_240A35C80, v31);
  }

  else
  {
    sub_240A2AE7C();
    v34 = v3;
    v35 = sub_240A2AFFC();
    v36 = sub_240A2C29C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      *(v37 + 4) = v34;
      *v38 = v34;
      v39 = v34;
      _os_log_impl(&dword_2408FE000, v35, v36, "Auto dismiss is disabled, leaving view controller up: %@", v37, 0xCu);
      sub_240919300(v38, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v38, -1, -1);
      MEMORY[0x245CCDDB0](v37, -1, -1);
    }

    result = (*(v11 + 8))(v14, v10);
    if (a2)
    {
      return a2(result);
    }
  }

  return result;
}

uint64_t sub_2409C3E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 96) = a5;
  *(v7 + 64) = a4;
  sub_240A2C21C();
  *(v7 + 88) = sub_240A2C20C();
  v9 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409C3F1C, v9, v8);
}

uint64_t sub_2409C3F1C()
{
  v1 = v0[9];

  if (v1)
  {
    v2 = v0[10];
    v0[6] = v0[9];
    v0[7] = v2;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2409EC704;
    v0[5] = &block_descriptor_16;
    v1 = _Block_copy(v0 + 2);
  }

  [v0[8] dismissViewControllerAnimated:*(v0 + 96) completion:v1];
  _Block_release(v1);
  v3 = v0[1];

  return v3();
}

id SetupViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_240A2BF1C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SetupViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SetupViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t objectdestroyTm_8(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_2409C4430(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_2409C3E7C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2409C45D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2409C461C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2409C467C()
{
  sub_2409989F4();

  return sub_240A2B53C();
}

uint64_t sub_2409C4704(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_240A2B53C();
  return v3;
}

uint64_t sub_2409C474C()
{
  sub_2409987A8();
  sub_240A2B53C();
  return v1;
}

uint64_t sub_2409C4788()
{
  sub_2409988A4();
  sub_240A2B53C();
  return v1;
}

uint64_t sub_2409C47C4()
{
  sub_2409989A0();

  return sub_240A2B53C();
}

uint64_t sub_2409C4870@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CED640];
  v3 = sub_240A29DBC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2409C48E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409C495C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2409C495C()
{
  result = qword_27E50DEB8;
  if (!qword_27E50DEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D910, qword_240A35F80);
    sub_2409C4A10(&qword_27E50DEC0, MEMORY[0x277CED668], MEMORY[0x277D85380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50DEB8);
  }

  return result;
}

uint64_t sub_2409C4A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409C4AA4()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2409C4B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v37 = a6;
  v33 = a4;
  v34 = a3;
  v40 = a7;
  v39 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v28 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v10;
  type metadata accessor for NavigationControllerReader.ReaderRepresentable(255, v10, v12, v11);
  v31 = sub_240A2B38C();
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDF900];
  v38 = MEMORY[0x277CDFAD8];
  v32 = swift_getWitnessTable();
  v36 = sub_240A2B6DC();
  v13 = sub_240A2B38C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = &v28 - v18;
  v47 = a1;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50E070, &qword_240A36110);
  sub_240A2BC5C();
  Strong = swift_unknownObjectWeakLoadStrong();

  v34(Strong);

  v43 = a1;
  v44 = a2;
  sub_240A2BC7C();
  v43 = v47;
  v44 = v48;
  v45 = v49;
  sub_240A2BACC();

  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  sub_240A2BDEC();
  v20 = v30;
  v21 = v37;
  v22 = v28;
  sub_240A2B9FC();

  (*(v39 + 8))(v22, v20);
  v23 = swift_getWitnessTable();
  v41 = v21;
  v42 = v23;
  swift_getWitnessTable();
  v24 = *(v14 + 16);
  v25 = v35;
  v24(v35, v17, v13);
  v26 = *(v14 + 8);
  v26(v17, v13);
  v24(v40, v25, v13);
  return (v26)(v25, v13);
}

id sub_2409C4F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = (v4 + qword_27E50DF58);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  v8 = type metadata accessor for NavigationControllerReader.Reader(0, *((v6 & v5) + 0x50), *((v6 & v5) + 0x58), a4);
  v10.receiver = v4;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2409C5018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v6 = [v4 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2409C50F4(void *a1)
{
  v4 = a1;
  sub_2409C5018(v4, v1, v2, v3);
}

uint64_t sub_2409C51A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  objc_msgSendSuper2(&v9, sel_didMoveToParentViewController_, a1);

  v7 = [v4 navigationController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DFE0, &qword_240A36090);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50DFE8, &qword_240A36098);
  sub_240A2BCFC();
}

void sub_2409C5308(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_2409C51A8(a3, v8, v6, v7);
}

id sub_2409C5374(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v11.receiver = v4;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);

  result = [v4 view];
  if (result)
  {
    v9 = result;
    v10 = sub_2409C5620(result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DFE0, &qword_240A36090);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50DFE8, &qword_240A36098);
    sub_240A2BCFC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2409C54F4(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v9 = a1;
  sub_2409C5374(a3, a4, v9, v8);
}

id sub_2409C5568(void *a1)
{
  v2 = [a1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [a1 nextResponder];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = sub_2409C5568(v6);

      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_2409C5620(void *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = v1;
    v3 = sub_2409C5568(v2);
    if (v3)
    {
      break;
    }

LABEL_3:
    v1 = [v2 superview];

    if (!v1)
    {
      return v1;
    }
  }

  v4 = v3;
  v1 = [v3 navigationController];

  if (!v1)
  {
    goto LABEL_3;
  }

  return v1;
}

void sub_2409C56D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_2409C5A1C();
}

id sub_2409C5748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_2409C57B8(uint64_t a1)
{
}

uint64_t sub_2409C5820()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50DFE8, &qword_240A36098);
  sub_240A2BD1C();
  return v1;
}

uint64_t sub_2409C5888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_2409C5904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2409C5980(uint64_t a1)
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_2409C5A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409C5AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2409C5B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2409C5B80(uint64_t result, int a2, int a3)
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

id sub_2409C5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for NavigationControllerReader.Reader(0, a4, a5, a4);
  v6 = sub_2409C5820();
  return sub_2409C4F8C(v6, v7, v8, objc_allocWithZone(v5));
}

id sub_2409C5C78()
{
  v1 = v0[3];
  v2 = sub_240A2BF1C();
  if (!v1)
  {
    v3 = 0;
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = sub_240A2BF1C();
  if (!v0[5])
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = sub_240A2BF1C();
LABEL_6:
  v5 = [objc_allocWithZone(type metadata accessor for OnBoardingProgressView.Coordinator()) initWithTitle:v2 detailText:v3 symbolName:v4 contentLayout:v0[6]];

  return v5;
}

void sub_2409C5D24()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v2 = OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator;
  v3 = *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator];
  *&v0[OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v5 = [v0 contentView];
  if (!*&v0[v2])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_240A308E0;
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = [v8 centerXAnchor];
  v10 = [v0 contentView];
  v11 = [v10 centerXAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v7 + 32) = v12;
  v13 = *&v0[v2];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = [v13 centerYAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v18 = [v16 centerYAnchor];

  v19 = [v14 constraintEqualToAnchor_];
  *(v7 + 40) = v19;
  sub_24092F234();
  v20 = sub_240A2C15C();

  [v17 activateConstraints_];

  v21 = *&v0[v2];
  if (v21)
  {
    [v21 startAnimating];
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_2409C5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtCV14AppleIDSetupUI22OnBoardingProgressView11Coordinator_activityIndicator] = 0;
  v11 = sub_240A2BF1C();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_240A2BF1C();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  v14 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v11, v12, v13, a7);

  return v14;
}

id sub_2409C628C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OnBoardingProgressView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2409C6304()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E100, &unk_240A36388);
  sub_240A2B81C();
  return v1;
}

id sub_2409C634C@<X0>(void *a1@<X8>)
{
  result = sub_2409C5C78();
  *a1 = result;
  return result;
}

uint64_t sub_2409C6374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409C6468();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2409C63D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409C6468();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409C643C(uint64_t a1)
{
  sub_2409C6468();
  sub_240A2B7CC();
  __break(1u);
}

unint64_t sub_2409C6468()
{
  result = qword_27E50E108;
  if (!qword_27E50E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E108);
  }

  return result;
}

uint64_t type metadata accessor for SignInView(uint64_t a1)
{
  result = qword_27E50E128;
  if (!qword_27E50E128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409C6530(uint64_t a1)
{
  sub_2409C6758(319, &qword_27E50E138, MEMORY[0x277CED500], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2409C66F4(319);
    if (v2 <= 0x3F)
    {
      sub_2409C6758(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_2409C67BC(319, &qword_27E50B600, MEMORY[0x277CED748], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2409C6758(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            sub_2409C67BC(319, &qword_27E50B5F8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2409C66F4(uint64_t a1)
{
  if (!qword_27E50F570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50F540, &unk_240A34F50);
    v1 = sub_240A2BC8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50F570);
    }
  }
}

void sub_2409C6758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2409C67BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2409C6828()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E110);
  __swift_project_value_buffer(v0, qword_27E50E110);
  return sub_240A2AE7C();
}

uint64_t sub_2409C6874@<X0>(void *a1@<X8>)
{
  v381 = a1;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v312 = *(v383 - 8);
  MEMORY[0x28223BE20](v383);
  v311 = &v306 - v2;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E140, &qword_240A36400);
  v314 = *(v382 - 8);
  MEMORY[0x28223BE20](v382);
  v313 = &v306 - v3;
  v361 = type metadata accessor for SignInView(0);
  v318 = *(v361 - 8);
  MEMORY[0x28223BE20](v361);
  v319 = v4;
  v321 = &v306 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = type metadata accessor for FamilyRepairView(0);
  MEMORY[0x28223BE20](v328);
  v323 = (&v306 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v329 = sub_240A2A46C();
  v322 = *(v329 - 8);
  v6 = MEMORY[0x28223BE20](v329);
  v320 = &v306 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v324 = &v306 - v8;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E148, &qword_240A36408);
  MEMORY[0x28223BE20](v325);
  v326 = &v306 - v9;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E150, &qword_240A36410);
  MEMORY[0x28223BE20](v359);
  v327 = &v306 - v10;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D730, &qword_240A34FD0);
  v342 = *(v362 - 8);
  MEMORY[0x28223BE20](v362);
  v341 = &v306 - v11;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E158, &qword_240A36418);
  MEMORY[0x28223BE20](v356);
  v358 = &v306 - v12;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E160, &qword_240A36420);
  MEMORY[0x28223BE20](v353);
  v354 = &v306 - v13;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E168, &qword_240A36428);
  MEMORY[0x28223BE20](v357);
  v355 = &v306 - v14;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E170, &qword_240A36430);
  MEMORY[0x28223BE20](v374);
  v360 = &v306 - v15;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E178, &qword_240A36438);
  MEMORY[0x28223BE20](v349);
  v351 = (&v306 - v16);
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E180, &qword_240A36440);
  MEMORY[0x28223BE20](v350);
  v337 = &v306 - v17;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E188, &qword_240A36448);
  MEMORY[0x28223BE20](v352);
  v364 = &v306 - v18;
  v368 = type metadata accessor for TermsView(0);
  MEMORY[0x28223BE20](v368);
  v376 = &v306 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = sub_240A2A18C();
  v363 = *(v377 - 1);
  MEMORY[0x28223BE20](v377);
  v375 = &v306 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E190, &qword_240A36450);
  MEMORY[0x28223BE20](v365);
  v366 = &v306 - v21;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E198, &qword_240A36458);
  MEMORY[0x28223BE20](v371);
  v367 = &v306 - v22;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1A0, &qword_240A36460);
  MEMORY[0x28223BE20](v378);
  v385 = &v306 - v23;
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1A8, &qword_240A36468);
  MEMORY[0x28223BE20](v384);
  v386 = &v306 - v24;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1B0, &qword_240A36470);
  MEMORY[0x28223BE20](v372);
  v370 = &v306 - v25;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1B8, &qword_240A36478);
  MEMORY[0x28223BE20](v315);
  v316 = &v306 - v26;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1C0, &qword_240A36480);
  MEMORY[0x28223BE20](v369);
  v317 = &v306 - v27;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1C8, &qword_240A36488);
  MEMORY[0x28223BE20](v373);
  v29 = &v306 - v28;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1D0, &qword_240A36490);
  MEMORY[0x28223BE20](v380);
  v379 = &v306 - v30;
  v347 = sub_240A2975C();
  v346 = *(v347 - 8);
  v31 = MEMORY[0x28223BE20](v347);
  v336 = &v306 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v330 = &v306 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v308 = &v306 - v36;
  MEMORY[0x28223BE20](v35);
  v307 = &v306 - v37;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1D8, &qword_240A36498);
  MEMORY[0x28223BE20](v338);
  v340 = (&v306 - v38);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1E0, &qword_240A364A0);
  MEMORY[0x28223BE20](v339);
  v331 = &v306 - v39;
  v345 = sub_240A2B52C();
  v344 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v343 = &v306 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E1E8, &qword_240A364A8);
  v42 = MEMORY[0x28223BE20](v41);
  v348 = &v306 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v310 = &v306 - v45;
  MEMORY[0x28223BE20](v44);
  v309 = &v306 - v46;
  v47 = sub_240A29B1C();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = (&v306 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_240A29B5C();
  v52 = *(v51 - 8);
  v53 = MEMORY[0x28223BE20](v51);
  v333 = &v306 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = &v306 - v55;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v57 = v1;
  MEMORY[0x245CCC9B0]();
  sub_240A29B2C();
  v58 = *(v52 + 8);
  v335 = v51;
  v334 = v52 + 8;
  v58(v56, v51);
  v59 = v47;
  v60 = (*(v48 + 88))(v50, v47);
  if (v60 == *MEMORY[0x277CED4F8])
  {
    (*(v48 + 96))(v50, v47);
    v61 = v363;
    v62 = v375;
    (*(v363 + 32))(v375, v50, v377);
    v63 = v376;
    sub_2409CAF20(v62, v376);
    sub_2409CC72C(v63, v366, type metadata accessor for TermsView);
    swift_storeEnumTagMultiPayload();
    sub_2409CBFC8();
    sub_2409CC53C(&qword_27E50E220, type metadata accessor for TermsView, &unk_240A39980);
    v64 = v367;
    sub_240A2B6EC();
    sub_240919298(v64, v370, &qword_27E50E198, &qword_240A36458);
    swift_storeEnumTagMultiPayload();
    sub_2409CBF44();
    sub_2409CC13C();
    sub_240A2B6EC();
    sub_240919300(v64, &qword_27E50E198, &qword_240A36458);
    sub_240919298(v29, v386, &qword_27E50E1C8, &qword_240A36488);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v65 = v379;
    sub_240A2B6EC();
    sub_240919300(v29, &qword_27E50E1C8, &qword_240A36488);
    sub_240919298(v65, v385, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v67 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    v68 = sub_24091C4F8();
    v69 = sub_24099EBA0();
    *&v401 = v383;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v66;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v67;
    *(&v403 + 1) = v68;
    v404 = v69;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v65, &qword_27E50E1D0, &qword_240A36490);
    sub_2409CC794(v376, type metadata accessor for TermsView);
    return (*(v61 + 8))(v375, v377);
  }

  v375 = v58;
  v71 = v57;
  v376 = v41;
  v377 = v29;
  v72 = v386;
  if (v60 == *MEMORY[0x277CED4C8])
  {
    (*(v48 + 8))(v50, v47);
    v73 = v361;
    v74 = v71 + *(v361 + 40);
    v75 = *v74;
    if (*(v74 + 8) == 1)
    {
      v76 = v364;
      if ((v75 & 1) == 0)
      {
LABEL_6:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
        v77 = v336;
        sub_240A2BC5C();
        v78 = v346 + 88;
        v79 = v347;
        v80 = (*(v346 + 88))(v77, v347);
        v81 = (v78 - 80);
        if (v80 == *MEMORY[0x277CED240])
        {
          (*v81)(v77, v79);
          v82 = v333;
          MEMORY[0x245CCC9B0](v332);
          v83 = sub_240A29ADC();
          v85 = v84;
          (v375)(v82, v335);
          started = type metadata accessor for SetupStartViewController();
          v87 = objc_allocWithZone(started);
          v88 = &v87[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
          *v88 = v83;
          v88[1] = v85;
          v390.receiver = v87;
          v390.super_class = started;
          v89 = objc_msgSendSuper2(&v390, sel_initWithContentView_, 0);
          LOBYTE(v391) = 1;
          sub_240A2BD3C();
          v90 = v401;
          v91 = v402;
          sub_240A2C06C();
          v92 = v89;
          v93 = sub_240A2BF1C();

          [v92 showActivityIndicatorWithStatus_];

          LOBYTE(v93) = sub_240A2B88C();
          v94 = sub_240A2B3AC();
          v399 = 0;
          v391 = v92;
          v392 = MEMORY[0x277D84F90];
          v393 = v90;
          v394 = v91;
          *v395 = *v400;
          *&v395[3] = *&v400[3];
          v396 = v94;
          v397 = v93;
          v398 = 0;
        }

        else
        {
          (*v81)(v77, v79);
          v135 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
          LOBYTE(v391) = 1;
          sub_240A2BD3C();
          v136 = v401;
          v137 = v402;
          sub_240A2C06C();
          v138 = v135;
          v139 = sub_240A2BF1C();

          [v138 showActivityIndicatorWithStatus_];

          LOBYTE(v139) = sub_240A2B88C();
          v140 = sub_240A2B3AC();
          v399 = 1;
          v391 = v138;
          v392 = MEMORY[0x277D84F90];
          v393 = v136;
          v394 = v137;
          *v395 = *v400;
          *&v395[3] = *&v400[3];
          v396 = v140;
          v397 = v139;
          v398 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
        sub_240936BEC();
        sub_240936CA4();
        sub_240A2B6EC();
        v141 = v402;
        v142 = v351;
        *v351 = v401;
        v142[1] = v141;
        v142[2] = v403;
        *(v142 + 24) = v404;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC3C8();
        sub_240936B60();
        sub_240A2B6EC();
        v125 = v383;
        goto LABEL_19;
      }
    }

    else
    {

      sub_240A2C2BC();
      v118 = sub_240A2B84C();
      sub_240A2AFEC();

      v119 = v343;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v75, 0);
      (*(v344 + 8))(v119, v345);
      v76 = v364;
      if (v401 != 1)
      {
        goto LABEL_6;
      }
    }

    v120 = v71 + *(v73 + 32);
    v121 = *v120;
    v122 = *(v120 + 8);
    LOBYTE(v401) = v121;
    *(&v401 + 1) = v122;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v123 = v337;
    sub_2409CABA0(v391);
    v124 = (v123 + *(v350 + 36));
    *v124 = sub_2409CB248;
    v124[1] = 0;
    v124[2] = 0;
    v124[3] = 0;
    sub_240919298(v123, v351, &qword_27E50E180, &qword_240A36440);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC3C8();
    sub_240936B60();
    sub_240A2B6EC();
    sub_240919300(v123, &qword_27E50E180, &qword_240A36440);
    v125 = v383;
LABEL_19:
    sub_240919298(v76, v354, &qword_27E50E188, &qword_240A36448);
    swift_storeEnumTagMultiPayload();
    sub_2409CC33C();
    v143 = MEMORY[0x277CDD7F8];
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    v144 = v355;
    sub_240A2B6EC();
    sub_240919298(v144, v358, &qword_27E50E168, &qword_240A36428);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v145 = v360;
    sub_240A2B6EC();
    sub_240919300(v144, &qword_27E50E168, &qword_240A36428);
    sub_240919298(v145, v386, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v146 = v379;
    sub_240A2B6EC();
    sub_240919300(v145, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v146, v385, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v147 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v148 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, v143);
    v149 = sub_24091C4F8();
    v150 = sub_24099EBA0();
    *&v401 = v125;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v147;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v148;
    *(&v403 + 1) = v149;
    v404 = v150;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v146, &qword_27E50E1D0, &qword_240A36490);
    v151 = v364;
    v152 = &qword_27E50E188;
    v153 = &qword_240A36448;
    return sub_240919300(v151, v152, v153);
  }

  v95 = v385;
  if (v60 == *MEMORY[0x277CED4B8])
  {
    (*(v48 + 8))(v50, v59);
    v96 = v361;
    v97 = v71 + *(v361 + 40);
    v98 = *v97;
    if (*(v97 + 8) == 1)
    {
      v99 = v72;
      if ((v98 & 1) == 0)
      {
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
        v100 = v330;
        sub_240A2BC5C();
        v101 = v346 + 88;
        v102 = v347;
        v103 = (*(v346 + 88))(v100, v347);
        v104 = (v101 - 80);
        if (v103 == *MEMORY[0x277CED240])
        {
          (*v104)(v100, v102);
          v105 = v333;
          MEMORY[0x245CCC9B0](v332);
          v106 = sub_240A29ADC();
          v108 = v107;
          (v375)(v105, v335);
          v109 = type metadata accessor for SetupStartViewController();
          v110 = objc_allocWithZone(v109);
          v111 = &v110[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
          *v111 = v106;
          v111[1] = v108;
          v389.receiver = v110;
          v389.super_class = v109;
          v112 = objc_msgSendSuper2(&v389, sel_initWithContentView_, 0);
          LOBYTE(v391) = 1;
          sub_240A2BD3C();
          v113 = v401;
          v114 = v402;
          sub_240A2C06C();
          v115 = v112;
          v116 = sub_240A2BF1C();

          [v115 showActivityIndicatorWithStatus_];

          LOBYTE(v116) = sub_240A2B88C();
          v117 = sub_240A2B3AC();
          v399 = 0;
          v391 = v115;
          v392 = MEMORY[0x277D84F90];
          v393 = v113;
          v394 = v114;
          *v395 = *v400;
          *&v395[3] = *&v400[3];
          v396 = v117;
          v397 = v116;
          v398 = 0;
        }

        else
        {
          (*v104)(v100, v102);
          v169 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
          LOBYTE(v391) = 1;
          sub_240A2BD3C();
          v170 = v401;
          v171 = v402;
          sub_240A2C06C();
          v172 = v169;
          v173 = sub_240A2BF1C();

          [v172 showActivityIndicatorWithStatus_];

          LOBYTE(v173) = sub_240A2B88C();
          v174 = sub_240A2B3AC();
          v399 = 1;
          v391 = v172;
          v392 = MEMORY[0x277D84F90];
          v393 = v170;
          v394 = v171;
          *v395 = *v400;
          *&v395[3] = *&v400[3];
          v396 = v174;
          v397 = v173;
          v398 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
        sub_240936BEC();
        sub_240936CA4();
        sub_240A2B6EC();
        v175 = v402;
        v176 = v340;
        *v340 = v401;
        v176[1] = v175;
        v176[2] = v403;
        *(v176 + 24) = v404;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC054();
        sub_240936B60();
        v160 = v348;
        sub_240A2B6EC();
        goto LABEL_26;
      }
    }

    else
    {

      sub_240A2C2BC();
      v154 = sub_240A2B84C();
      sub_240A2AFEC();

      v155 = v343;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v98, 0);
      (*(v344 + 8))(v155, v345);
      v99 = v72;
      if (v401 != 1)
      {
        goto LABEL_11;
      }
    }

    v156 = v71 + *(v96 + 32);
    v157 = *v156;
    v158 = *(v156 + 8);
    LOBYTE(v401) = v157;
    *(&v401 + 1) = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v159 = v331;
    sub_2409CABA0(v391);
    sub_240919298(v159, v340, &qword_27E50E1E0, &qword_240A364A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC054();
    sub_240936B60();
    v160 = v348;
    sub_240A2B6EC();
    sub_240919300(v159, &qword_27E50E1E0, &qword_240A364A0);
LABEL_26:
    v177 = v367;
    sub_240919298(v160, v366, &qword_27E50E1E8, &qword_240A364A8);
    swift_storeEnumTagMultiPayload();
    sub_2409CBFC8();
    sub_2409CC53C(&qword_27E50E220, type metadata accessor for TermsView, &unk_240A39980);
    sub_240A2B6EC();
    sub_240919298(v177, v370, &qword_27E50E198, &qword_240A36458);
    swift_storeEnumTagMultiPayload();
    sub_2409CBF44();
    sub_2409CC13C();
    v178 = v377;
    sub_240A2B6EC();
    sub_240919300(v177, &qword_27E50E198, &qword_240A36458);
    sub_240919298(v178, v99, &qword_27E50E1C8, &qword_240A36488);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v179 = v379;
    sub_240A2B6EC();
    sub_240919300(v178, &qword_27E50E1C8, &qword_240A36488);
    sub_240919298(v179, v385, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v180 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v181 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    v182 = sub_24091C4F8();
    v183 = sub_24099EBA0();
    *&v401 = v383;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v180;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v181;
    *(&v403 + 1) = v182;
    v404 = v183;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v179, &qword_27E50E1D0, &qword_240A36490);
    v151 = v348;
LABEL_27:
    v152 = &qword_27E50E1E8;
    v153 = &qword_240A364A8;
    return sub_240919300(v151, v152, v153);
  }

  if (v60 == *MEMORY[0x277CED4C0])
  {
    (*(v48 + 8))(v50, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v126 = v341;
    sub_240A2B21C();
    (*(v342 + 16))(v354, v126, v362);
    swift_storeEnumTagMultiPayload();
    sub_2409CC33C();
    v127 = MEMORY[0x277CDD7F8];
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    v128 = v355;
    sub_240A2B6EC();
    sub_240919298(v128, v358, &qword_27E50E168, &qword_240A36428);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v129 = v360;
    sub_240A2B6EC();
    sub_240919300(v128, &qword_27E50E168, &qword_240A36428);
    sub_240919298(v129, v72, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v130 = v379;
    sub_240A2B6EC();
    sub_240919300(v129, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v130, v95, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v132 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, v127);
    v133 = sub_24091C4F8();
    v134 = sub_24099EBA0();
    *&v401 = v383;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v131;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v132;
    *(&v403 + 1) = v133;
    v404 = v134;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v130, &qword_27E50E1D0, &qword_240A36490);
    return (*(v342 + 8))(v341, v362);
  }

  if (v60 == *MEMORY[0x277CED4D8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    v161 = v341;
    sub_240A2B21C();
    (*(v342 + 16))(v326, v161, v362);
    swift_storeEnumTagMultiPayload();
    v377 = MEMORY[0x277CDD7F8];
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    sub_2409CC53C(&qword_27E50CB28, type metadata accessor for FamilyRepairView, &unk_240A30C20);
    v162 = v327;
    sub_240A2B6EC();
    sub_240919298(v162, v358, &qword_27E50E150, &qword_240A36410);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v163 = v360;
    sub_240A2B6EC();
    sub_240919300(v162, &qword_27E50E150, &qword_240A36410);
    sub_240919298(v163, v72, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v164 = v379;
    sub_240A2B6EC();
    sub_240919300(v163, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v164, v385, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v165 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v166 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, v377);
    v167 = sub_24091C4F8();
    v168 = sub_24099EBA0();
    *&v401 = v383;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v165;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v166;
    *(&v403 + 1) = v167;
    v404 = v168;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v164, &qword_27E50E1D0, &qword_240A36490);
    (*(v342 + 8))(v341, v362);
    return (*(v48 + 8))(v50, v59);
  }

  if (v60 == *MEMORY[0x277CED4D0])
  {
    (*(v48 + 96))(v50, v59);
    v184 = v322;
    v185 = v324;
    v186 = v329;
    (*(v322 + 32))(v324, v50, v329);
    v377 = sub_240A2C06C();
    v188 = v187;
    v189 = *(v184 + 16);
    v190 = v320;
    v189(v320, v185, v186);
    v191 = v71;
    v192 = v71 + *(v361 + 32);
    v193 = *v192;
    v194 = *(v192 + 8);
    LOBYTE(v401) = v193;
    *(&v401 + 1) = v194;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v195 = v391;
    v196 = v321;
    sub_2409CC72C(v191, v321, type metadata accessor for SignInView);
    v197 = (*(v318 + 80) + 16) & ~*(v318 + 80);
    v198 = swift_allocObject();
    sub_2409CC584(v196, v198 + v197);
    KeyPath = swift_getKeyPath();
    v200 = v323;
    *v323 = KeyPath;
    *(v200 + 8) = 0;
    *(v200 + 16) = swift_getKeyPath();
    *(v200 + 24) = 0;
    *(v200 + 32) = v377;
    *(v200 + 40) = v188;
    v201 = v328;
    v202 = v329;
    v189((v200 + *(v328 + 28)), v190, v329);
    LOBYTE(v391) = v195;
    sub_240A2BC4C();
    v377 = *(v184 + 8);
    (v377)(v190, v202);
    v203 = *(&v401 + 1);
    v204 = v200 + *(v201 + 32);
    *v204 = v401;
    *(v204 + 8) = v203;
    v205 = (v200 + *(v201 + 36));
    *v205 = sub_2409CC5E8;
    v205[1] = v198;
    sub_2409CC72C(v200, v326, type metadata accessor for FamilyRepairView);
    swift_storeEnumTagMultiPayload();
    v206 = MEMORY[0x277CDD7F8];
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    sub_2409CC53C(&qword_27E50CB28, type metadata accessor for FamilyRepairView, &unk_240A30C20);
    v207 = v327;
    sub_240A2B6EC();
    sub_240919298(v207, v358, &qword_27E50E150, &qword_240A36410);
    swift_storeEnumTagMultiPayload();
    sub_2409CC284();
    sub_2409CC454();
    v208 = v360;
    sub_240A2B6EC();
    sub_240919300(v207, &qword_27E50E150, &qword_240A36410);
    sub_240919298(v208, v72, &qword_27E50E170, &qword_240A36430);
    swift_storeEnumTagMultiPayload();
    sub_2409CBEB8();
    sub_2409CC1F8();
    v209 = v379;
    sub_240A2B6EC();
    sub_240919300(v208, &qword_27E50E170, &qword_240A36430);
    sub_240919298(v209, v385, &qword_27E50E1D0, &qword_240A36490);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    v210 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    v211 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, v206);
    v212 = sub_24091C4F8();
    v213 = sub_24099EBA0();
    *&v401 = v383;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v210;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v211;
    *(&v403 + 1) = v212;
    v404 = v213;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    sub_240919300(v209, &qword_27E50E1D0, &qword_240A36490);
    sub_2409CC794(v200, type metadata accessor for FamilyRepairView);
    return (v377)(v324, v329);
  }

  v214 = v379;
  if (v60 == *MEMORY[0x277CED4E0])
  {
    v215 = v59;
    v216 = v383;
    (*(v48 + 96))(v50, v215);
    v217 = *v50;
    v218 = v50[1];
    v219 = v311;
    sub_240A2B22C();
    v391 = v217;
    v392 = v218;
    v386 = v218;
    v400[0] = 1;
    v220 = sub_240A2BD3C();
    v384 = &v306;
    v376 = *(&v401 + 1);
    v377 = v401;
    LODWORD(v379) = v402;
    v221 = MEMORY[0x28223BE20](v220);
    MEMORY[0x28223BE20](v221);
    v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
    v375 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    v222 = sub_24091C4F8();
    v305 = sub_24099EBA0();
    v223 = v313;
    sub_240A2BA9C();

    (*(v312 + 8))(v219, v216);

    v224 = v314;
    v225 = v382;
    (*(v314 + 16))(v385, v223, v382);
    swift_storeEnumTagMultiPayload();
    sub_2409CBE2C();
    *&v401 = v216;
    *(&v401 + 1) = MEMORY[0x277D837D0];
    *&v402 = v374;
    *(&v402 + 1) = MEMORY[0x277CE0BD8];
    *&v403 = v375;
    *(&v403 + 1) = v222;
    v404 = v305;
    v405 = MEMORY[0x277CE0BC8];
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return (*(v224 + 8))(v223, v225);
  }

  v226 = v71;
  if (v60 == *MEMORY[0x277CED4E8])
  {
    v227 = v361;
    v228 = v71 + *(v361 + 40);
    v229 = *v228;
    v230 = v370;
    if (*(v228 + 8) == 1)
    {
      if (v229)
      {
LABEL_45:
        v272 = v71 + *(v227 + 32);
        v273 = *v272;
        v274 = *(v272 + 8);
        LOBYTE(v401) = v273;
        *(&v401 + 1) = v274;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
        sub_240A2BC5C();
        v275 = v331;
        sub_2409CABA0(v391);
        sub_240919298(v275, v340, &qword_27E50E1E0, &qword_240A364A0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC054();
        sub_240936B60();
        v276 = v309;
        sub_240A2B6EC();
        sub_240919300(v275, &qword_27E50E1E0, &qword_240A364A0);
LABEL_52:
        sub_240919298(v276, v316, &qword_27E50E1E8, &qword_240A364A8);
        swift_storeEnumTagMultiPayload();
        sub_2409CBFC8();
        v299 = v317;
        sub_240A2B6EC();
        sub_240919298(v299, v230, &qword_27E50E1C0, &qword_240A36480);
        swift_storeEnumTagMultiPayload();
        sub_2409CBF44();
        sub_2409CC13C();
        v300 = v377;
        sub_240A2B6EC();
        sub_240919300(v299, &qword_27E50E1C0, &qword_240A36480);
        sub_240919298(v300, v386, &qword_27E50E1C8, &qword_240A36488);
        swift_storeEnumTagMultiPayload();
        sub_2409CBEB8();
        sub_2409CC1F8();
        sub_240A2B6EC();
        sub_240919300(v300, &qword_27E50E1C8, &qword_240A36488);
        sub_240919298(v214, v385, &qword_27E50E1D0, &qword_240A36490);
        swift_storeEnumTagMultiPayload();
        sub_2409CBE2C();
        v301 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
        v302 = sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
        v303 = sub_24091C4F8();
        v304 = sub_24099EBA0();
        *&v401 = v383;
        *(&v401 + 1) = MEMORY[0x277D837D0];
        *&v402 = v301;
        *(&v402 + 1) = MEMORY[0x277CE0BD8];
        *&v403 = v302;
        *(&v403 + 1) = v303;
        v404 = v304;
        v405 = MEMORY[0x277CE0BC8];
        swift_getOpaqueTypeConformance2();
        sub_240A2B6EC();
        sub_240919300(v214, &qword_27E50E1D0, &qword_240A36490);
        v151 = v276;
        goto LABEL_27;
      }
    }

    else
    {

      sub_240A2C2BC();
      v270 = sub_240A2B84C();
      sub_240A2AFEC();

      v271 = v343;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v229, 0);
      (*(v344 + 8))(v271, v345);
      if (v401 == 1)
      {
        goto LABEL_45;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v231 = v307;
    sub_240A2BC5C();
    v232 = v346 + 88;
    v233 = v347;
    v234 = (*(v346 + 88))(v231, v347);
    v235 = (v232 - 80);
    if (v234 == *MEMORY[0x277CED240])
    {
      (*v235)(v231, v233);
      v236 = v333;
      MEMORY[0x245CCC9B0](v332);
      v237 = sub_240A29ADC();
      v239 = v238;
      (v375)(v236, v335);
      v240 = type metadata accessor for SetupStartViewController();
      v241 = objc_allocWithZone(v240);
      v242 = &v241[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
      *v242 = v237;
      v242[1] = v239;
      v387.receiver = v241;
      v387.super_class = v240;
      v243 = objc_msgSendSuper2(&v387, sel_initWithContentView_, 0);
      LOBYTE(v391) = 1;
      sub_240A2BD3C();
      v244 = v401;
      v245 = v402;
      sub_240A2C06C();
      v246 = v243;
      v247 = sub_240A2BF1C();

      [v246 showActivityIndicatorWithStatus_];

      LOBYTE(v247) = sub_240A2B88C();
      v248 = sub_240A2B3AC();
      v399 = 0;
      v391 = v246;
      v392 = MEMORY[0x277D84F90];
      v393 = v244;
      v394 = v245;
      *v395 = *v400;
      *&v395[3] = *&v400[3];
      v396 = v248;
      v397 = v247;
      v398 = 0;
    }

    else
    {
      (*v235)(v231, v233);
      v283 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
      LOBYTE(v391) = 1;
      sub_240A2BD3C();
      v284 = v401;
      v285 = v402;
      sub_240A2C06C();
      v286 = v283;
      v287 = sub_240A2BF1C();

      [v286 showActivityIndicatorWithStatus_];

      LOBYTE(v287) = sub_240A2B88C();
      v288 = sub_240A2B3AC();
      v399 = 1;
      v391 = v286;
      v392 = MEMORY[0x277D84F90];
      v393 = v284;
      v394 = v285;
      *v395 = *v400;
      *&v395[3] = *&v400[3];
      v396 = v288;
      v397 = v287;
      v398 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
    sub_240936BEC();
    sub_240936CA4();
    sub_240A2B6EC();
    v289 = v402;
    v290 = v340;
    *v340 = v401;
    v290[1] = v289;
    v290[2] = v403;
    *(v290 + 24) = v404;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC054();
    sub_240936B60();
    v276 = v309;
    sub_240A2B6EC();
    goto LABEL_52;
  }

  v230 = v370;
  v249 = v361;
  if (v60 == *MEMORY[0x277CED4F0])
  {
    v250 = v226 + *(v361 + 40);
    v251 = *v250;
    if (*(v250 + 8) == 1)
    {
      if ((v251 & 1) == 0)
      {
LABEL_42:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
        v252 = v308;
        sub_240A2BC5C();
        v253 = v346 + 88;
        v254 = v347;
        v255 = (*(v346 + 88))(v252, v347);
        v256 = (v253 - 80);
        if (v255 == *MEMORY[0x277CED240])
        {
          (*v256)(v252, v254);
          v257 = v333;
          MEMORY[0x245CCC9B0](v332);
          v258 = sub_240A29ADC();
          v260 = v259;
          (v375)(v257, v335);
          v261 = type metadata accessor for SetupStartViewController();
          v262 = objc_allocWithZone(v261);
          v263 = &v262[OBJC_IVAR____TtC14AppleIDSetupUI24SetupStartViewController_deviceModel];
          *v263 = v258;
          v263[1] = v260;
          v388.receiver = v262;
          v388.super_class = v261;
          v264 = objc_msgSendSuper2(&v388, sel_initWithContentView_, 0);
          LOBYTE(v391) = 1;
          sub_240A2BD3C();
          v265 = v401;
          v266 = v402;
          sub_240A2C06C();
          v267 = v264;
          v268 = sub_240A2BF1C();

          [v267 showActivityIndicatorWithStatus_];

          LOBYTE(v268) = sub_240A2B88C();
          v269 = sub_240A2B3AC();
          v399 = 0;
          v391 = v267;
          v392 = MEMORY[0x277D84F90];
          v393 = v265;
          v394 = v266;
          *v395 = *v400;
          *&v395[3] = *&v400[3];
          v396 = v269;
          v397 = v268;
          v398 = 0;
        }

        else
        {
          (*v256)(v252, v254);
          v291 = _s14AppleIDSetupUI22ProxCardViewControllerC019newSignInSetupImageefG0ACyFZ_0();
          LOBYTE(v391) = 1;
          sub_240A2BD3C();
          v292 = v401;
          v293 = v402;
          sub_240A2C06C();
          v294 = v291;
          v295 = sub_240A2BF1C();

          [v294 showActivityIndicatorWithStatus_];

          LOBYTE(v295) = sub_240A2B88C();
          v296 = sub_240A2B3AC();
          v399 = 1;
          v391 = v294;
          v392 = MEMORY[0x277D84F90];
          v393 = v292;
          v394 = v293;
          *v395 = *v400;
          *&v395[3] = *&v400[3];
          v396 = v296;
          v397 = v295;
          v398 = 1;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7A0, &unk_240A35020);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D7C0, &unk_240A35030);
        sub_240936BEC();
        sub_240936CA4();
        sub_240A2B6EC();
        v297 = v402;
        v298 = v340;
        *v340 = v401;
        v298[1] = v297;
        v298[2] = v403;
        *(v298 + 24) = v404;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
        sub_2409CC054();
        sub_240936B60();
        v276 = v310;
        sub_240A2B6EC();
        goto LABEL_52;
      }
    }

    else
    {

      sub_240A2C2BC();
      v277 = sub_240A2B84C();
      sub_240A2AFEC();

      v278 = v343;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v251, 0);
      (*(v344 + 8))(v278, v345);
      if (v401 != 1)
      {
        goto LABEL_42;
      }
    }

    v279 = (v226 + *(v249 + 32));
    v280 = *v279;
    v281 = *(v279 + 1);
    LOBYTE(v401) = v280;
    *(&v401 + 1) = v281;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
    sub_240A2BC5C();
    v282 = v331;
    sub_2409CABA0(v391);
    sub_240919298(v282, v340, &qword_27E50E1E0, &qword_240A364A0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D790, &unk_240A38E20);
    sub_2409CC054();
    sub_240936B60();
    v276 = v310;
    sub_240A2B6EC();
    sub_240919300(v282, &qword_27E50E1E0, &qword_240A364A0);
    goto LABEL_52;
  }

  result = sub_240A2C65C();
  __break(1u);
  return result;
}

uint64_t sub_2409CABA0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B638, &qword_240A30C90);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    sub_2409CC72C(v12, v9, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    swift_storeEnumTagMultiPayload();
    sub_2409CC53C(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return sub_2409CC794(v12, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
  }

  else
  {
    v15[0] = sub_240A2C06C();
    v15[1] = v14;
    sub_24091C4F8();
    sub_240A2B24C();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_2409CC53C(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2409CAF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = type metadata accessor for SignInView(0);
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = v3;
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A2A18C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF80 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  __swift_project_value_buffer(v9, qword_27E50E110);
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C28C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, "Show terms view", v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  v13 = *(v6 + 16);
  v14 = v28;
  v13(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v5);
  sub_2409CC72C(v26, v4, type metadata accessor for SignInView);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + *(v25 + 80) + v15) & ~*(v25 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v15, v8, v5);
  sub_2409CC584(v4, v17 + v16);
  v18 = type metadata accessor for TermsDelegate();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_acceptedCompletion];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v19[OBJC_IVAR____TtC14AppleIDSetupUI13TermsDelegate_finishedCompletion];
  *v21 = sub_2409CC658;
  v21[1] = v17;
  *v20 = 0;
  *(v20 + 1) = 0;
  v30.receiver = v19;
  v30.super_class = v18;
  v22 = objc_msgSendSuper2(&v30, sel_init);
  v13(v8, v14, v5);
  return sub_240A255F0(v8, v22, v29);
}

void sub_2409CB248()
{
  if (qword_27E50AF80 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50E110);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C28C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "dimissTerms was set, but we're in Teen Setup. This should never happen.", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_2409CB330(uint64_t a1)
{
  v2 = sub_240A29B5C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_240A29B1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2A46C();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  (*(v4 + 104))(v6, *MEMORY[0x277CED4D0], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  MEMORY[0x245CCC9B0]();
  sub_240A29B3C();
  return sub_240A2BCFC();
}

uint64_t sub_2409CB4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v29 = a2;
  v32 = a6;
  v8 = type metadata accessor for SignInView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D330, &qword_240A34C68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v33 = sub_240A2C06C();
  v34 = v19;
  sub_240A2B18C();
  v20 = sub_240A2B19C();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_2409CC72C(a1, v11, type metadata accessor for SignInView);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_2409CC584(v11, v23 + v21);
  v24 = (v23 + v22);
  v25 = v30;
  *v24 = v29;
  v24[1] = a3;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v31;
  *v26 = v25;
  v26[1] = v27;
  sub_24091C4F8();

  sub_240A2BCBC();
  sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
  sub_240A2BA6C();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_2409CB800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_240A29B5C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_240A29B1C();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = a4;
  *(v12 + 3) = a5;
  v12[32] = 1;
  (*(v13 + 104))(v12, *MEMORY[0x277CED4E0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  MEMORY[0x245CCC9B0]();
  sub_240A29B3C();
  return sub_240A2BCFC();
}

uint64_t sub_2409CB988@<X0>(uint64_t a3@<X8>)
{
  sub_24091C4F8();

  result = sub_240A2B9CC();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_2409CB9F4()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3 & 1;
  sub_240A2BA6C();
  sub_240920658(v0, v2, v4);
}

uint64_t sub_2409CBAD0(char a1, uint64_t a2)
{
  v20 = a2;
  v2 = sub_240A29B5C();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_240A29B1C();
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2A18C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF80 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50E110);
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C28C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v18[1] = v4;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "Setting state to dismiss", v15, 2u);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  result = sub_240A2A17C();
  if (result)
  {
    sub_240A2A14C();
    sub_240A2A16C();
    (*(v9 + 16))(v7, v11, v8);
    (*(v19 + 104))(v7, *MEMORY[0x277CED4C8], v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
    MEMORY[0x245CCC9B0]();
    sub_240A29B3C();
    sub_240A2BCFC();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2409CBE2C()
{
  result = qword_27E50E1F0;
  if (!qword_27E50E1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1D0, &qword_240A36490);
    sub_2409CBEB8();
    sub_2409CC1F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E1F0);
  }

  return result;
}

unint64_t sub_2409CBEB8()
{
  result = qword_27E50E1F8;
  if (!qword_27E50E1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1C8, &qword_240A36488);
    sub_2409CBF44();
    sub_2409CC13C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E1F8);
  }

  return result;
}

unint64_t sub_2409CBF44()
{
  result = qword_27E50E200;
  if (!qword_27E50E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1C0, &qword_240A36480);
    sub_2409CBFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E200);
  }

  return result;
}

unint64_t sub_2409CBFC8()
{
  result = qword_27E50E208;
  if (!qword_27E50E208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1E8, &qword_240A364A8);
    sub_2409CC054();
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E208);
  }

  return result;
}

unint64_t sub_2409CC054()
{
  result = qword_27E50E210;
  if (!qword_27E50E210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E1E0, &qword_240A364A0);
    sub_2409CC53C(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E210);
  }

  return result;
}

unint64_t sub_2409CC13C()
{
  result = qword_27E50E218;
  if (!qword_27E50E218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E198, &qword_240A36458);
    sub_2409CBFC8();
    sub_2409CC53C(&qword_27E50E220, type metadata accessor for TermsView, &unk_240A39980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E218);
  }

  return result;
}

unint64_t sub_2409CC1F8()
{
  result = qword_27E50E228;
  if (!qword_27E50E228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E170, &qword_240A36430);
    sub_2409CC284();
    sub_2409CC454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E228);
  }

  return result;
}

unint64_t sub_2409CC284()
{
  result = qword_27E50E230;
  if (!qword_27E50E230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E168, &qword_240A36428);
    sub_2409CC33C();
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E230);
  }

  return result;
}

unint64_t sub_2409CC33C()
{
  result = qword_27E50E238;
  if (!qword_27E50E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E188, &qword_240A36448);
    sub_2409CC3C8();
    sub_240936B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E238);
  }

  return result;
}

unint64_t sub_2409CC3C8()
{
  result = qword_27E50E240;
  if (!qword_27E50E240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E180, &qword_240A36440);
    sub_2409CC054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E240);
  }

  return result;
}

unint64_t sub_2409CC454()
{
  result = qword_27E50E248;
  if (!qword_27E50E248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E150, &qword_240A36410);
    sub_24091CE28(&qword_27E50CAF8, &qword_27E50D730, &qword_240A34FD0, MEMORY[0x277CDD7F8]);
    sub_2409CC53C(&qword_27E50CB28, type metadata accessor for FamilyRepairView, &unk_240A30C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E248);
  }

  return result;
}

uint64_t sub_2409CC53C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409CC584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409CC5E8(uint64_t a1)
{
  type metadata accessor for SignInView(0);

  return sub_2409CB330(a1);
}

uint64_t sub_2409CC658(char a1)
{
  v3 = *(sub_240A2A18C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  type metadata accessor for SignInView(0);

  return sub_2409CBAD0(a1, v1 + v4);
}

uint64_t sub_2409CC72C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409CC794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409CC7F4()
{
  v1 = *(type metadata accessor for SignInView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_2409CB800(v0 + v2, v6, v7, v8, v9);
}

unint64_t sub_2409CC894()
{
  result = qword_27E50E250;
  if (!qword_27E50E250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E258, &qword_240A36528);
    sub_2409CBE2C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50BDD0, &unk_240A35010);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D740, &qword_240A34FE0);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_24091C4F8();
    sub_24099EBA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E250);
  }

  return result;
}

id sub_2409CC9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for SignInOptionsView(0);
  v11 = *(v10 + 28);
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  sub_240919298(a2, a3 + *(v10 + 24), &qword_27E50BC98, &qword_240A31A10);
  v12 = objc_allocWithZone(MEMORY[0x277CF0178]);

  result = [v12 init];
  if (result)
  {
    v14 = result;
    v32 = v7;
    v33 = v6;
    v34 = v10;
    v35 = a2;
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v15 = result;
      v16 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

      v17 = type metadata accessor for SignInOptionAuthenticationController(0);
      v18 = objc_allocWithZone(v17);
      *&v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
      *&v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
      v19 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
      *&v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
      v20 = &v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
      *v20 = 0;
      v20[1] = 0;
      v21 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
      v37 = 0;

      sub_240A2B0DC();
      (*(v32 + 32))(&v18[v21], v9, v33);
      v22 = *&v18[v19];
      *&v18[v19] = v14;
      v23 = v14;

      *&v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = a1;
      *&v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v16;
      v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
      v24 = *v20;
      v25 = v20[1];
      *v20 = 0;
      v20[1] = 0;

      v26 = v16;
      sub_24090C1A0(v24, v25);
      v18[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 0;
      v36.receiver = v18;
      v36.super_class = v17;
      objc_msgSendSuper2(&v36, sel_init);

      v27 = (a3 + *(v34 + 32));
      sub_2409D06C8(&qword_27E50E290, type metadata accessor for SignInOptionAuthenticationController, &unk_240A33D70);
      *v27 = sub_240A2B34C();
      v27[1] = v28;
      v29 = objc_allocWithZone(type metadata accessor for SignInOptionsCreateAccountController());
      v30 = sub_240915984(a1);

      result = sub_240919300(v35, &qword_27E50BC98, &qword_240A31A10);
      a3[1] = v30;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2409CCD80(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2409CCDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for SignInOptionsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2A0, &qword_240A36628);
  v7 = *(v6 - 8);
  v32 = v6;
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v35 = v25 - v8;
  v26 = a1;
  sub_24092FD24(a1, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + 80);
  v10 = (v9 + 16) & ~v9;
  v11 = swift_allocObject();
  sub_2409CFDC0(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DFE0, &qword_240A36090);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v43 = v12;
  sub_240A2BC4C();
  v25[1] = v37;
  v27 = v38;
  v39 = sub_2409CFE24;
  v40 = v11;
  sub_24092FD24(a1, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_2409CFDC0(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2A8, &qword_240A36630);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2B0, &unk_240A36638);
  v29 = sub_24091CE28(&qword_27E50E2B8, &qword_27E50E2A8, &qword_240A36630, &unk_240A360C0);
  v28 = sub_2409CFC80();
  v31 = sub_2409CFCD4();
  sub_240A2BA5C();

  v15 = v26;
  sub_24092FD24(v26, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240A2C21C();
  v16 = sub_240A2C20C();
  v17 = (v9 + 32) & ~v9;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  sub_2409CFDC0(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_24092FD24(v15, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_240A2C20C();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  sub_2409CFDC0(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v17);
  sub_240A2BD2C();
  v36 = v15;
  v37 = v14;
  v38 = &type metadata for SignInOption;
  v39 = v30;
  v40 = v29;
  v41 = v28;
  v42 = v31;
  swift_getOpaqueTypeConformance2();
  v22 = v32;
  v23 = v35;
  sub_240A2BA8C();

  return (*(v33 + 8))(v23, v22);
}

uint64_t sub_2409CD2A0@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v4 = type metadata accessor for SignInOptionsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2E8, &qword_240A366A8);
  MEMORY[0x28223BE20](v22);
  v11 = &v20 - v10;
  v20 = *a2;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24092FD24(a2, v9);
  v13 = *(v5 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  sub_2409CFDC0(v9, v15 + v14);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v21;
  sub_24092FD24(a2, v21);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_2409CFDC0(v17, v18 + ((v13 + 24) & ~v13));
  v25 = v20;
  v26 = sub_2409D0338;
  v27 = v15;
  v28 = sub_2409D03D4;
  v29 = v18;
  v24 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2F0, &qword_240A366B0);
  sub_2409D0440();
  sub_2409D0494();
  sub_240A2BADC();

  v11[*(v22 + 36)] = sub_240A2B87C();
  sub_2409D0710();
  sub_240A2BA7C();
  return sub_240919300(v11, &qword_27E50E2E8, &qword_240A366A8);
}

void sub_2409CD5A8(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A2B33C();
  MEMORY[0x28223BE20](v4 - 8);
  if (a1)
  {
    type metadata accessor for SignInOptionsView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    MEMORY[0x245CCC9B0]();
    sub_2409D09F4();
    sub_2409D0A48();
    sub_2409CFC80();
    sub_240A2B30C();
    sub_240A2BCFC();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_2409CD6DC(Strong);
  }
}

void sub_2409CD6DC(void *a1)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v7 = objc_allocWithZone(MEMORY[0x277CF0388]);
    v8 = a1;
    v17 = [v7 init];
    [v17 setPresentingViewController_];
    [v17 setAuthenticationType_];
    v9 = *(v1 + *(type metadata accessor for SignInOptionsView(0) + 32) + 8);
    *(v9 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled) = 0;
    v10 = *(v9 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController);
    *(v9 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController) = a1;
    v11 = v8;

    sub_240976A18(v17);
    v12 = v17;
  }

  else
  {
    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2AC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "navigationController is nil. Cannot proceed to proxSetup.", v15, 2u);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_2409CD8EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_240A2974C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  sub_240A2AE9C();
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = v8;
    v16 = v3;
    v17 = a2;
    v18 = v7;
    v19 = v15;
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "SignInOptions: Begin create an account step", v15, 2u);
    v20 = v19;
    v7 = v18;
    a2 = v17;
    v3 = v16;
    v8 = v33;
    MEMORY[0x245CCDDB0](v20, -1, -1);
  }

  v21 = *(v8 + 8);
  v21(v12, v7);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    (*(v4 + 104))(v6, *MEMORY[0x277CED200], v3);
    v24 = sub_240A2973C();
    (*(v4 + 8))(v6, v3);
    v25 = *(a2 + 8);
    swift_unknownObjectWeakAssign();
    if (v24)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CEDE88]) init];
      [v26 setSignInFlowType_];
      [v26 setForceOfferAgeRangePicker_];
      [v26 setSetupSelfFlow_];
      [v26 setSetupLaterFlow_];
      v27 = [objc_allocWithZone(AISShieldViewController) initWithShieldFlowContext_];
      [v27 setDelegate_];

      [v23 pushViewController:v27 animated:1];
    }

    else
    {
      sub_240913F28();
    }
  }

  else
  {
    v28 = v34;
    sub_240A2AE9C();
    v29 = sub_240A2AFFC();
    v30 = sub_240A2C2AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2408FE000, v29, v30, "navigationController is nil. Cannot proceed to account creation flow.", v31, 2u);
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    v21(v28, v7);
  }
}

uint64_t sub_2409CDCF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a1;
  v58 = a2;
  v52 = sub_240A2B3DC();
  v46 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E328, &qword_240A366C8);
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v43 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E340, &qword_240A366D0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v42 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E320, &qword_240A366C0);
  MEMORY[0x28223BE20](v57);
  v51 = &v42 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E348, &qword_240A366D8);
  MEMORY[0x28223BE20](v55);
  v56 = &v42 - v7;
  v8 = type metadata accessor for SignInOptionsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = sub_240A2B19C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E310, &qword_240A366B8);
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v16 = &v42 - v15;
  v17 = sub_240A2974C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 104))(v20, *MEMORY[0x277CED220], v17);
  v21 = sub_240A2973C();
  (*(v18 + 8))(v20, v17);
  if (v21)
  {
    sub_240A2B17C();
    sub_24092FD24(v53, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v23 = swift_allocObject();
    sub_2409CFDC0(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    MEMORY[0x245CCC970](v13, sub_2409D0EBC, v23);
    v24 = v54;
    (*(v14 + 16))(v56, v16, v54);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50E308, &qword_27E50E310, &qword_240A366B8, MEMORY[0x277CDF028]);
    sub_2409D054C();
    sub_240A2B6EC();
    return (*(v14 + 8))(v16, v24);
  }

  else
  {
    sub_24092FD24(v53, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v27 = swift_allocObject();
    sub_2409CFDC0(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C688, &unk_240A366E0);
    sub_24091CE28(&qword_27E50C690, &qword_27E50C688, &unk_240A366E0, MEMORY[0x277CDEFF0]);
    v28 = v43;
    sub_240A2BC9C();
    v29 = v45;
    sub_240A2B3CC();
    v53 = MEMORY[0x277CDF028];
    v30 = sub_24091CE28(&qword_27E50E330, &qword_27E50E328, &qword_240A366C8, MEMORY[0x277CDF028]);
    v31 = sub_2409D06C8(&qword_27E50C238, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v32 = v47;
    v33 = v48;
    v34 = v52;
    sub_240A2BA1C();
    (*(v46 + 8))(v29, v34);
    (*(v44 + 8))(v28, v32);
    sub_240A2B56C();
    v35 = sub_240A2B9BC();
    v37 = v36;
    v39 = v38;
    v59 = v32;
    v60 = v34;
    v61 = v30;
    v62 = v31;
    swift_getOpaqueTypeConformance2();
    v40 = v50;
    v41 = v51;
    sub_240A2BA4C();
    sub_240920658(v35, v37, v39 & 1);

    (*(v49 + 8))(v33, v40);
    sub_240908AB8(v41, v56);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50E308, &qword_27E50E310, &qword_240A366B8, v53);
    sub_2409D054C();
    sub_240A2B6EC();
    return sub_240919300(v41, &qword_27E50E320, &qword_240A366C0);
  }
}

uint64_t sub_2409CE568(uint64_t a1)
{
  v16 = sub_240A2B52C();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_240A2B2AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignInOptionsView(0);
  sub_240919298(a1 + *(v12 + 28), v7, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_240A2C2BC();
    v13 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_240A2B29C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2409CE7F0()
{
  v0 = sub_240A2B56C();

  return MEMORY[0x282130010](v0);
}

void *sub_2409CE84C@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2D0, &qword_240A36690);
  MEMORY[0x28223BE20](v6);
  v8 = v24 - v7;
  v9 = type metadata accessor for PasswordSignInView(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2D8, &qword_240A36698);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v24 - v14;
  if (*a1 == 1)
  {
    v16 = *a2;
    type metadata accessor for SignInOptionsView(0);
    v24[1] = v6;
    v24[2] = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    sub_240A2BD1C();
    *v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E2E0, &qword_240A366A0);
    sub_240A2B41C();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_240A305D0;
    sub_240A2B40C();
    v18 = sub_2409D06C8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView, &unk_240A34D5C);
    MEMORY[0x245CCC7B0](2, v17, v9, v18);

    sub_2409D02DC(v11);
    (*(v13 + 16))(v8, v15, v12);
    swift_storeEnumTagMultiPayload();
    v25 = v9;
    v26 = v18;
    swift_getOpaqueTypeConformance2();
    sub_240A2B6EC();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    sub_240A2B56C();
    *v8 = sub_240A2B9BC();
    *(v8 + 1) = v20;
    v8[16] = v21 & 1;
    *(v8 + 3) = v22;
    swift_storeEnumTagMultiPayload();
    v23 = sub_2409D06C8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView, &unk_240A34D5C);
    v25 = v9;
    v26 = v23;
    swift_getOpaqueTypeConformance2();
    return sub_240A2B6EC();
  }
}

uint64_t sub_2409CEC7C@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for SignInOptionsView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v4;
  return result;
}

uint64_t sub_2409CED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + *(type metadata accessor for SignInOptionsView(0) + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_240A2B12C();
}

uint64_t sub_2409CED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for SignInOptionsView(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_240A2BB4C();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v32 = sub_240A2C06C();
  v33 = v7;
  sub_24091C4F8();
  v8 = sub_240A2B9CC();
  v29 = v9;
  v30 = v8;
  v27 = v10;
  v28 = v11;
  v32 = sub_240A2C06C();
  v33 = v12;
  v13 = sub_240A2B9CC();
  v25[2] = v14;
  v25[3] = v13;
  v25[1] = v15;
  v32 = sub_240A2C06C();
  v33 = v16;
  v17 = sub_240A2B9CC();
  v19 = v18;
  v21 = v20;
  sub_24092FD24(a1, v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v23 = swift_allocObject();
  sub_2409CFDC0(v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_240A2BB3C();
  sub_240920658(v17, v19, v21 & 1);

  sub_240A2BB2C();
  return sub_240A2BB1C();
}

void sub_2409CF050(uint64_t a1)
{
  v2 = type metadata accessor for SignInOptionsView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = [objc_allocWithZone(MEMORY[0x277CBE010]) init];
  sub_24092FD24(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_2409CFDC0(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  aBlock[4] = sub_2409D0254;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409CCD80;
  aBlock[3] = &block_descriptor_17;
  v8 = _Block_copy(aBlock);

  [v5 setPowerState:5 completion:v8];
  _Block_release(v8);
}

void sub_2409CF1E0(void *a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  if (a1)
  {
    sub_240A2AE9C();
    v11 = a1;
    v12 = sub_240A2AFFC();
    v13 = sub_240A2C2AC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_2408FE000, v12, v13, "Failed to enable bluetooth with error - %@", v14, 0xCu);
      sub_240919300(v15, &unk_27E50B730, &qword_240A30CE0);
      MEMORY[0x245CCDDB0](v15, -1, -1);
      MEMORY[0x245CCDDB0](v14, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_240A2AE9C();
    v18 = sub_240A2AFFC();
    v19 = sub_240A2C2CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v18, v19, "Bluetooth turned on sucessfully", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    v21 = *(*(a2 + *(type metadata accessor for SignInOptionsView(0) + 32) + 8) + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController);
    v22 = v21;
    sub_2409CD6DC(v21);
  }
}

uint64_t sub_2409CF480()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
  MEMORY[0x28223BE20](v0);
  sub_240A2BD1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E298, &qword_240A36620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2A0, &qword_240A36628);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2A8, &qword_240A36630);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2B0, &unk_240A36638);
  sub_24091CE28(&qword_27E50E2B8, &qword_27E50E2A8, &qword_240A36630, &unk_240A360C0);
  sub_2409CFC80();
  sub_2409CFCD4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_240A2B39C();
}

char *sub_2409CF650()
{
  v0 = objc_allocWithZone(type metadata accessor for SignInOptionsViewController());
  v1 = sub_24099B718();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E378, &qword_240A367F0);
  sub_240A2B81C();
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI27SignInOptionsViewController_delegate + 8] = &off_285290DE8;
  swift_unknownObjectWeakAssign();

  return v1;
}

void *sub_2409CF728@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = type metadata accessor for SignInOptionsViewWrapper.Coordinator();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInSettings] = v3;
  v10 = &v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler];
  *v10 = v4;
  *(v10 + 1) = v5;
  v11 = &v9[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler];
  *v11 = v6;
  *(v11 + 1) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_2409CF7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409D0D74();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2409CF848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409D0D74();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409CF8AC(uint64_t a1)
{
  sub_2409D0D74();
  sub_240A2B7CC();
  __break(1u);
}

id sub_2409CF904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInOptionsViewWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SignInOptionsView(uint64_t a1)
{
  result = qword_27E50E278;
  if (!qword_27E50E278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409CFA38(uint64_t a1)
{
  type metadata accessor for AISSignInSettings();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SignInOptionsCreateAccountController();
    if (v2 <= 0x3F)
    {
      sub_2409CFB64(319, &qword_27E50D510, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        sub_2409CFB64(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2409CFBC8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2409CFB64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2409CFBC8(uint64_t a1)
{
  if (!qword_27E50E288)
  {
    type metadata accessor for SignInOptionAuthenticationController(255);
    sub_2409D06C8(&qword_27E50E290, type metadata accessor for SignInOptionAuthenticationController, &unk_240A33D70);
    v1 = sub_240A2B35C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50E288);
    }
  }
}

unint64_t sub_2409CFC80()
{
  result = qword_27E50E2C0;
  if (!qword_27E50E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E2C0);
  }

  return result;
}

unint64_t sub_2409CFCD4()
{
  result = qword_27E50E2C8;
  if (!qword_27E50E2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2B0, &unk_240A36638);
    type metadata accessor for PasswordSignInView(255);
    sub_2409D06C8(&qword_27E50BCC0, type metadata accessor for PasswordSignInView, &unk_240A34D5C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E2C8);
  }

  return result;
}

uint64_t sub_2409CFDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInOptionsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409CFE24@<X0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_2409CD2A0(v5, a2);
}

void *sub_2409CFEA4@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2409CE84C(a1, v6, a2);
}

uint64_t sub_2409CFF24@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SignInOptionsView(0);

  return sub_2409CEC7C(a1);
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = type metadata accessor for SignInOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v8 = sub_240A2B33C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A2B2AC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409D0148(uint64_t a1)
{
  v3 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2409CED10(a1, v4, v5, v6);
}

void sub_2409D01C4()
{
  v1 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2409CF050(v2);
}

uint64_t sub_2409D0224(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

void sub_2409D0254(void *a1)
{
  v3 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_2409CF1E0(a1, v4);
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409D02DC(uint64_t a1)
{
  v2 = type metadata accessor for PasswordSignInView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2409D0338(char a1)
{
  v3 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2409CD5A8(a1 & 1, v1 + v4, v5);
}

void sub_2409D03D4()
{
  v1 = *(type metadata accessor for SignInOptionsView(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2409CD8EC(v2, v3);
}

unint64_t sub_2409D0440()
{
  result = qword_27E50E2F8;
  if (!qword_27E50E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E2F8);
  }

  return result;
}

unint64_t sub_2409D0494()
{
  result = qword_27E50E300;
  if (!qword_27E50E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2F0, &qword_240A366B0);
    sub_24091CE28(&qword_27E50E308, &qword_27E50E310, &qword_240A366B8, MEMORY[0x277CDF028]);
    sub_2409D054C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E300);
  }

  return result;
}

unint64_t sub_2409D054C()
{
  result = qword_27E50E318;
  if (!qword_27E50E318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E320, &qword_240A366C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E328, &qword_240A366C8);
    sub_240A2B3DC();
    sub_24091CE28(&qword_27E50E330, &qword_27E50E328, &qword_240A366C8, MEMORY[0x277CDF028]);
    sub_2409D06C8(&qword_27E50C238, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_2409D06C8(&qword_27E50CBC0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E318);
  }

  return result;
}

uint64_t sub_2409D06C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2409D0710()
{
  result = qword_27E50E338;
  if (!qword_27E50E338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2E8, &qword_240A366A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E2F0, &qword_240A366B0);
    sub_2409D0440();
    sub_2409D0494();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E338);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for SignInOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v8 = sub_240A2B33C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A2B2AC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_2409D09F4()
{
  result = qword_27E50E350;
  if (!qword_27E50E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E350);
  }

  return result;
}

unint64_t sub_2409D0A48()
{
  result = qword_27E50E358;
  if (!qword_27E50E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E358);
  }

  return result;
}

uint64_t sub_2409D0A9C(char a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C29C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    if (a1)
    {
      v13 = 0x64726F7773736150;
    }

    else
    {
      v13 = 0x20797469786F7250;
    }

    if (a1)
    {
      v14 = 0xEE007972746E6520;
    }

    else
    {
      v14 = 0xED00007075746553;
    }

    v15 = sub_240925464(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2408FE000, v8, v9, "%s selected", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x245CCDDB0](v12, -1, -1);
    v16 = v11;
    v2 = v19;
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = *(v2 + OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler);

  v17(a1 & 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2409D0CD0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2409D0D18(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2409D0D74()
{
  result = qword_27E50E370;
  if (!qword_27E50E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E370);
  }

  return result;
}

uint64_t sub_2409D0DC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E378, &qword_240A367F0);
  sub_240A2B81C();
  *&v6[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInSettings] = *v0;

  sub_240A2B81C();
  v1 = v0[2];
  v2 = &v6[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_signInOptionHandler];
  *v2 = v0[1];
  *(v2 + 1) = v1;

  sub_240A2B81C();
  v3 = v0[4];
  v4 = &v6[OBJC_IVAR____TtCV14AppleIDSetupUIP33_57A1F0F949FF19643FCF1DFD00C49E5E24SignInOptionsViewWrapper11Coordinator_createAccountActionHandler];
  *v4 = v0[3];
  *(v4 + 1) = v3;
}

void *RepairView.init(contextBuilder:reportHandler:repairController:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v28 = a4;
  v29 = a5;
  v26 = a2;
  v27 = a3;
  v8 = sub_240A29A9C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for RepairView(0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_240919298(v14, v12, &qword_27E50C058, &qword_240A31F50);
  sub_240A2BC4C();
  sub_240919300(v14, &qword_27E50C058, &qword_240A31F50);
  v17 = a6 + *(v15 + 36);
  v30 = 0;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
  sub_240A2BC4C();
  v18 = v33;
  *v17 = v32;
  *(v17 + 2) = v18;
  v19 = *(v15 + 40);
  *(a6 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  sub_240A29A4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C078, &qword_240A31FA8);
  swift_allocObject();
  v30 = sub_240A29CDC();
  result = sub_240A2BC4C();
  v21 = *(&v32 + 1);
  a6[5] = v32;
  a6[6] = v21;
  v22 = v26;
  v23 = v27;
  *a6 = a1;
  a6[1] = v22;
  v25 = v28;
  v24 = v29;
  a6[2] = v23;
  a6[3] = v25;
  a6[4] = v24;
  return result;
}

uint64_t type metadata accessor for RepairView(uint64_t a1)
{
  result = qword_27E50E3D8;
  if (!qword_27E50E3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2409D1198()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E380);
  __swift_project_value_buffer(v0, qword_27E50E380);
  return sub_240A2AEAC();
}

uint64_t sub_2409D11E4@<X0>(void *a1@<X8>)
{
  v3 = sub_240A2B52C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for RepairView(0);
  sub_240919298(v1 + *(v10 + 40), v9, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A2B2AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_240A2C2BC();
    v13 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2409D13EC()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_2409D1498();
}

uint64_t sub_2409D1498()
{
  v1[9] = v0;
  v2 = sub_240A2BE4C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = sub_240A2BE6C();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  v4 = *(type metadata accessor for RepairView(0) - 8);
  v1[16] = v4;
  v1[17] = *(v4 + 64);
  v1[18] = swift_task_alloc();
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v1[19] = v5;
  v1[20] = *(v5 + 64);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = sub_240A2C21C();
  v1[24] = sub_240A2C20C();
  v7 = sub_240A2C1BC();
  v1[25] = v7;
  v1[26] = v6;

  return MEMORY[0x2822009F8](sub_2409D16C4, v7, v6);
}

uint64_t sub_2409D16C4()
{
  v1 = v0[9];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[28] = v3;
  v4 = sub_240A29B9C();
  *v3 = v0;
  v3[1] = sub_2409D1798;
  v5 = v0[22];

  return MEMORY[0x2821400E8](v5, &unk_240A36990, v2, v4);
}

uint64_t sub_2409D1798()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_2409D18DC, v3, v2);
}

uint64_t sub_2409D18DC()
{
  *(v0 + 232) = *(*(v0 + 72) + 32);
  sub_240A2A27C();
  sub_2409DB744(&qword_27E50E508, MEMORY[0x277CED930], MEMORY[0x277CED938]);
  v2 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409D199C, v2, v1);
}

uint64_t sub_2409D199C()
{
  v0[30] = sub_240A2A26C();
  v1 = v0[25];
  v2 = v0[26];

  return MEMORY[0x2822009F8](sub_2409D1A04, v1, v2);
}

uint64_t sub_2409D1A04()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v16 = v0[30];
  v17 = v0[14];
  v18 = v0[13];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[10];
  v15 = v0[11];
  sub_2409DBB30(v0[9], v5, type metadata accessor for RepairView);
  sub_240919298(v2, v1, &qword_27E50C088, &unk_240A32000);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v4 + *(v3 + 80) + v7) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_2409DB944(v5, v9 + v7, type metadata accessor for RepairView);
  sub_24093A86C(v1, v9 + v8, &qword_27E50C088, &unk_240A32000);
  v0[6] = sub_2409DB58C;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_18;
  v10 = _Block_copy(v0 + 2);
  sub_240A2BE5C();
  v0[8] = MEMORY[0x277D84F90];
  sub_2409DB744(&qword_27E50CF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24091CE28(&qword_27E50CF20, &qword_27E50EF90, &unk_240A30E50, MEMORY[0x277D83970]);
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v12, v13, v10);
  _Block_release(v10);

  (*(v15 + 8))(v13, v14);
  (*(v17 + 8))(v12, v18);

  return MEMORY[0x2822009F8](sub_2409D1CE4, 0, 0);
}

uint64_t sub_2409D1CE4(uint64_t a1)
{
  *(v1 + 248) = sub_240A2C20C();
  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409D1D70, v3, v2);
}

uint64_t sub_2409D1D70()
{

  sub_2409D1F98();
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_2409D1DDC, v1, v2);
}

uint64_t sub_2409D1DDC()
{
  v1 = *(v0 + 176);

  sub_240919300(v1, &qword_27E50C088, &unk_240A32000);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2409D1E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_240A2C21C();
  *(v4 + 24) = sub_240A2C20C();
  v6 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409D1F34, v6, v5);
}

uint64_t sub_2409D1F34()
{

  sub_2409D1F98();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409D1F98()
{
  v0 = sub_240A2B2AC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v4 = sub_240A2B00C();
  __swift_project_value_buffer(v4, qword_27E50E380);
  v5 = sub_240A2AFFC();
  v6 = sub_240A2C28C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2408FE000, v5, v6, "Dismissing repair view & invalidating repair controller", v7, 2u);
    MEMORY[0x245CCDDB0](v7, -1, -1);
  }

  sub_2409D11E4(v3);
  sub_240A2B29C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2409D212C(uint64_t a1)
{
  v1[2] = sub_240A2C21C();
  v1[3] = sub_240A2C20C();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_24097BAF4;

  return sub_2409D21EC(a1);
}

uint64_t sub_2409D21EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for RepairView(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();
  v4 = sub_240A2AC8C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_240A29D6C();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = sub_240A29D5C();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_240A2C21C();
  v2[18] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v2[19] = v8;
  v2[20] = v7;

  return MEMORY[0x2822009F8](sub_2409D2410, v8, v7);
}

uint64_t sub_2409D2410()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[9];
  v17 = v0[8];
  v6 = v0[6];
  v16 = v0[7];
  v15 = v0[4];
  v7 = v0[3];
  v8 = *v7;
  sub_240A29D4C();
  v8(v1);
  (*(v3 + 16))(v1, v2, v4);
  sub_240979B08();
  sub_240A2C32C();
  sub_2409DBB30(v7, v6, type metadata accessor for RepairView);
  v9 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v10 = swift_allocObject();
  sub_2409DB944(v6, v10 + v9, type metadata accessor for RepairView);
  sub_240A2AC7C();
  sub_240A29D1C();
  (*(v17 + 8))(v5, v16);
  sub_240A29D2C();
  v18 = (*MEMORY[0x277CED928] + MEMORY[0x277CED928]);
  v11 = swift_task_alloc();
  v0[21] = v11;
  *v11 = v0;
  v11[1] = sub_240989598;
  v12 = v0[12];
  v13 = v0[2];

  return v18(v13, v12);
}

uint64_t sub_2409D26E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_240A2BE7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_240979B08();
  *v11 = sub_240A2C32C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_240A2BE8C();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = sub_240A2BE1C();
    MEMORY[0x28223BE20](v14);
    *&v15[-32] = a1;
    *&v15[-24] = a4;
    *&v15[-16] = a2;
    *&v15[-8] = a3;
    sub_240A2B2DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2409D2874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v44 = a4;
  v45 = a2;
  v5 = sub_240A29A9C();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v18 = sub_240A2B00C();
  __swift_project_value_buffer(v18, qword_27E50E380);
  v53 = *(v12 + 16);
  v53(v17, a1, v11);
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C29C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v49 = v39;
    *v21 = 136315138;
    v53(v15, v17, v11);
    v22 = sub_240A2BF9C();
    v40 = a1;
    v24 = v23;
    (*(v12 + 8))(v17, v11);
    v25 = sub_240925464(v22, v24, &v49);
    a1 = v40;

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2408FE000, v19, v20, "RepairView updated with %s", v21, 0xCu);
    v26 = v39;
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x245CCDDB0](v26, -1, -1);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  v27 = v41;
  v53(v41, a1, v11);
  (*(v12 + 56))(v27, 0, 1, v11);
  v28 = type metadata accessor for RepairView(0);
  sub_240919298(v27, v42, &qword_27E50C058, &qword_240A31F50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
  v29 = v45;
  sub_240A2BC6C();
  sub_240919300(v27, &qword_27E50C058, &qword_240A31F50);
  v30 = v29 + *(v28 + 36);
  v31 = *(v30 + 16);
  v49 = *v30;
  v50 = v31;
  v32 = swift_allocObject();
  v33 = v44;
  *(v32 + 16) = v43;
  *(v32 + 24) = v33;
  v51 = sub_2409976C4;
  v52 = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E408, &qword_240A368D0);
  sub_240A2BC6C();
  v34 = *(v29 + 48);
  *&v49 = *(v29 + 40);
  *(&v49 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  v35 = v46;
  MEMORY[0x245CCA960](v11);
  v36 = sub_240A29CBC();
  sub_240A29A8C();
  (*(v47 + 8))(v35, v48);
  v36(&v49, 0);
}

uint64_t RepairView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for RepairView(0);
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_240A29A9C();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E398, &qword_240A36828);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A0, &qword_240A36830);
  v10 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v20 - v11;
  sub_2409D318C(v1, v9);
  v13 = *(v1 + 48);
  v25 = *(v1 + 40);
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_2409DBB30(v1, &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RepairView);
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_2409DB944(&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RepairView);
  v16 = sub_2409DA9E0();
  v17 = sub_2409DB744(&qword_27E50E3D0, MEMORY[0x277CED4A0], MEMORY[0x277CED4A8]);
  sub_240A2BAFC();

  (*(v23 + 8))(v6, v4);
  sub_240919300(v9, &qword_27E50E398, &qword_240A36828);
  v25 = v7;
  v26 = v4;
  v27 = v16;
  v28 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v22;
  sub_240A2BA7C();
  return (*(v10 + 8))(v12, v18);
}

uint64_t sub_2409D318C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v138 = sub_240A29A1C();
  v119 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E410, &qword_240A368D8);
  MEMORY[0x28223BE20](v117);
  v109 = (&v109 - v4);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E418, &qword_240A368E0);
  MEMORY[0x28223BE20](v140);
  v139 = &v109 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E420, &qword_240A368E8);
  MEMORY[0x28223BE20](v135);
  v136 = (&v109 - v6);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E428, &qword_240A368F0);
  MEMORY[0x28223BE20](v115);
  v116 = &v109 - v7;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E430, &qword_240A368F8);
  MEMORY[0x28223BE20](v120);
  v118 = &v109 - v8;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E438, &qword_240A36900);
  MEMORY[0x28223BE20](v150);
  v121 = &v109 - v9;
  v10 = type metadata accessor for RepairView(0);
  v110 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v111 = v11;
  v112 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v114);
  v113 = &v109 - v12;
  v134 = sub_240A29A5C();
  v133 = *(v134 - 1);
  MEMORY[0x28223BE20](v134);
  v132 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E440, &qword_240A36908);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v148 = &v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v147 = &v109 - v17;
  v131 = sub_240A2A8FC();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E448, &qword_240A36910);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v146 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v154 = &v109 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E450, &qword_240A36918);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v145 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v153 = &v109 - v26;
  v144 = sub_240A2A9AC();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v152 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_240A2981C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_240A29A9C();
  v122 = v32;
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v128 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v109 - v36;
  v142 = sub_240A2A10C();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v39 = &v109 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a1;
  v40 = *(a1 + 40);
  v124 = *(a1 + 48);
  *&v158 = v40;
  *(&v158 + 1) = v124;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v123 = *(v33 + 8);
  v123(v37, v32);
  v125 = v33 + 8;
  sub_240A297BC();
  v41 = *(v29 + 8);
  v151 = (v29 + 8);
  v42 = v28;
  v41(v31, v28);
  v43 = v124;
  *&v158 = v40;
  *(&v158 + 1) = v124;
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v44 = v37;
  v45 = v122;
  v46 = v123;
  v123(v44, v122);
  sub_240A2977C();
  v47 = v31;
  v48 = v127;
  v41(v47, v42);
  v151 = v39;
  sub_2409D4BCC(v153);
  v49 = v129;
  sub_240A2A90C();
  sub_2409D51F8(v49, v154);
  (*(v130 + 8))(v49, v131);
  *&v158 = v40;
  *(&v158 + 1) = v43;
  v50 = v133;
  sub_240A2BC5C();
  v51 = v128;
  sub_240A29CCC();

  v52 = v132;
  sub_240A29A6C();
  v53 = v52;
  v46(v51, v45);
  v54 = v134;
  v55 = (*(v50 + 88))(v52, v134);
  if (v55 == *MEMORY[0x277CED478])
  {
    (*(v50 + 96))(v52, v54);
    v56 = v119;
    (*(v119 + 32))(v137, v53, v138);
    sub_2409D89FC(&v158);
    v57 = v158;
    v155 = v158;
    v133 = *(&v158 + 1);
    v156 = v159;
    v157 = v160;

    v134 = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    sub_2409DAC58();
    sub_240A2B6EC();
    v58 = v160;
    v59 = v161;
    v60 = v159;
    v61 = v136;
    *v136 = v158;
    v61[1] = v60;
    *(v61 + 32) = v58;
    *(v61 + 33) = v59;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
    sub_2409DADC0();
    sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
    v62 = v121;
    sub_240A2B6EC();
    sub_240919298(v62, v139, &qword_27E50E438, &qword_240A36900);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
    sub_2409DAD08();
    sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
    v63 = v147;
    sub_240A2B6EC();

    sub_240919300(v62, &qword_27E50E438, &qword_240A36900);
    (*(v56 + 8))(v137, v138);
  }

  else
  {
    v64 = v136;
    if (v55 == *MEMORY[0x277CED488])
    {
      v65 = v113;
      sub_240A2B22C();
      v66 = v48;
      v67 = v112;
      sub_2409DBB30(v66, v112, type metadata accessor for RepairView);
      v68 = (*(v110 + 80) + 16) & ~*(v110 + 80);
      v69 = swift_allocObject();
      sub_2409DB944(v67, v69 + v68, type metadata accessor for RepairView);
      v70 = (v65 + *(v114 + 36));
      *v70 = sub_2409DB3DC;
      v70[1] = v69;
      v70[2] = 0;
      v70[3] = 0;
      sub_240919298(v65, v116, &qword_27E50CA50, &unk_240A33750);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      sub_2409DAE4C();
      v71 = v118;
      sub_240A2B6EC();
      sub_240919298(v71, v64, &qword_27E50E430, &qword_240A368F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
      sub_2409DADC0();
      sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
      v72 = v121;
      sub_240A2B6EC();
      sub_240919300(v71, &qword_27E50E430, &qword_240A368F8);
      sub_240919298(v72, v139, &qword_27E50E438, &qword_240A36900);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
      sub_2409DAD08();
      sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
      v63 = v147;
      sub_240A2B6EC();
      sub_240919300(v72, &qword_27E50E438, &qword_240A36900);
      sub_240919300(v65, &qword_27E50CA50, &unk_240A33750);
    }

    else if (v55 == *MEMORY[0x277CED470])
    {
      v73 = v109;
      sub_2409D55FC(v109);
      sub_240919298(v73, v116, &qword_27E50E410, &qword_240A368D8);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      sub_2409DAE4C();
      v74 = v118;
      sub_240A2B6EC();
      sub_240919298(v74, v64, &qword_27E50E430, &qword_240A368F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
      sub_2409DADC0();
      sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
      v75 = v121;
      sub_240A2B6EC();
      sub_240919300(v74, &qword_27E50E430, &qword_240A368F8);
      sub_240919298(v75, v139, &qword_27E50E438, &qword_240A36900);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
      sub_2409DAD08();
      sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
      v63 = v147;
      sub_240A2B6EC();
      sub_240919300(v75, &qword_27E50E438, &qword_240A36900);
      sub_240919300(v73, &qword_27E50E410, &qword_240A368D8);
    }

    else if (v55 == *MEMORY[0x277CED498])
    {
      sub_240A2A07C();
      if (sub_240A2A05C())
      {
        v76 = _s14AppleIDSetupUI22ProxCardViewControllerC026newRepairAccountInProgressefG0ACyFZ_0();
        LOBYTE(v155) = 1;
        sub_240A2BD3C();
        v78 = *(&v158 + 1);
        v77 = v158;
        v79 = v159;
        sub_240A2C06C();
        v80 = v76;
        v81 = sub_240A2BF1C();

        [v80 showActivityIndicatorWithStatus_];

        v82 = MEMORY[0x277D84F90];
      }

      else
      {
        v80 = 0;
        v82 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
      }

      v89 = v121;
      LODWORD(v137) = v79;
      v138 = v77;
      *&v155 = v80;
      *(&v155 + 1) = v82;
      *&v156 = v77;
      *(&v156 + 1) = v78;
      LOBYTE(v157) = v79;
      HIBYTE(v157) = 1;
      sub_2409DB31C(v80, v82, v77, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
      sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
      sub_2409DAC58();
      sub_240A2B6EC();
      v90 = v160;
      v91 = v161;
      v92 = v159;
      *v64 = v158;
      *(v64 + 16) = v92;
      *(v64 + 32) = v90;
      *(v64 + 33) = v91;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4F0, &qword_240A36960);
      sub_2409DADC0();
      sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
      sub_240A2B6EC();
      sub_240919298(v89, v139, &qword_27E50E438, &qword_240A36900);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
      sub_2409DAD08();
      sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
      v63 = v147;
      sub_240A2B6EC();
      sub_2409DB37C(v80, v82, v138, v78);
      sub_240919300(v89, &qword_27E50E438, &qword_240A36900);
    }

    else
    {
      v83 = v139;
      if (v55 == *MEMORY[0x277CED490])
      {
        sub_240A2A07C();
        if (sub_240A2A05C())
        {
          sub_2409D8EA0(&v158);
          v85 = *(&v158 + 1);
          v84 = v158;
          v87 = *(&v159 + 1);
          v86 = v159;
          v88 = v160;
        }

        else
        {
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
        }

        *&v155 = v84;
        *(&v155 + 1) = v85;
        *&v156 = v86;
        *(&v156 + 1) = v87;
        v157 = v88;
        sub_2409DB31C(v84, v85, v86, v87);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
        sub_2409DAC58();
        sub_240A2B6EC();
        v97 = v160;
        v98 = v161;
        v99 = v159;
        *v83 = v158;
        *(v83 + 16) = v99;
        *(v83 + 32) = v97;
        *(v83 + 33) = v98;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
        sub_2409DAD08();
        sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
        v63 = v147;
        sub_240A2B6EC();
        sub_2409DB37C(v84, v85, v86, v87);
      }

      else
      {
        v155 = 0u;
        v156 = 0u;
        v157 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E458, &qword_240A36920);
        sub_2409DAC58();
        sub_240A2B6EC();
        v93 = v160;
        v94 = v161;
        v95 = v159;
        *v83 = v158;
        *(v83 + 16) = v95;
        *(v83 + 32) = v93;
        *(v83 + 33) = v94;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E468, &qword_240A36928);
        sub_2409DAD08();
        sub_2409DB298(&qword_27E50E4F8, &qword_27E50E468, &qword_240A36928, sub_2409DAC58);
        v96 = v147;
        sub_240A2B6EC();
        (*(v50 + 8))(v53, v54);
        v63 = v96;
      }
    }
  }

  v100 = v153;
  v101 = v145;
  sub_240919298(v153, v145, &qword_27E50E450, &qword_240A36918);
  v102 = v154;
  v103 = v146;
  sub_240919298(v154, v146, &qword_27E50E448, &qword_240A36910);
  v104 = v148;
  sub_240919298(v63, v148, &qword_27E50E440, &qword_240A36908);
  v105 = v63;
  v106 = v149;
  sub_240919298(v101, v149, &qword_27E50E450, &qword_240A36918);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E500, &qword_240A36968);
  sub_240919298(v103, v106 + *(v107 + 48), &qword_27E50E448, &qword_240A36910);
  sub_240919298(v104, v106 + *(v107 + 64), &qword_27E50E440, &qword_240A36908);
  sub_240919300(v105, &qword_27E50E440, &qword_240A36908);
  sub_240919300(v102, &qword_27E50E448, &qword_240A36910);
  sub_240919300(v100, &qword_27E50E450, &qword_240A36918);
  (*(v143 + 8))(v152, v144);
  (*(v141 + 8))(v151, v142);
  sub_240919300(v104, &qword_27E50E440, &qword_240A36908);
  sub_240919300(v103, &qword_27E50E448, &qword_240A36910);
  return sub_240919300(v101, &qword_27E50E450, &qword_240A36918);
}

uint64_t sub_2409D4BCC@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = type metadata accessor for RepairView(0);
  v31[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v31[1] = v2;
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E548, &qword_240A36AE0);
  MEMORY[0x28223BE20](v38);
  v37 = v31 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v36);
  v35 = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E550, &qword_240A36AE8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = v31 - v6;
  v7 = sub_240A29EFC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A2A08C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_240A29EEC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2A09C();
  if ((*(v12 + 88))(v14, v11) != *MEMORY[0x277CED758])
  {
    (*(v12 + 8))(v14, v11);
LABEL_8:
    v22 = 1;
    v23 = v41;
    return (*(v39 + 56))(v23, v22, 1, v40);
  }

  (*(v12 + 96))(v14, v11);
  (*(v16 + 32))(v18, v14, v15);
  sub_240A29E8C();
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x277CED6B8])
  {
    (*(v16 + 8))(v18, v15);
    (*(v8 + 8))(v10, v7);
    goto LABEL_8;
  }

  (*(v8 + 8))(v10, v7);
  v19 = sub_240A29EAC();
  if (v19 == 2 || (v19 & 1) == 0)
  {
    v20 = v35;
    sub_240A2B22C();
    v24 = v32;
    sub_2409DBB30(v33, v32, type metadata accessor for RepairView);
    v25 = (*(v31[0] + 80) + 16) & ~*(v31[0] + 80);
    v26 = swift_allocObject();
    sub_2409DB944(v24, v26 + v25, type metadata accessor for RepairView);
    v27 = (v20 + *(v36 + 36));
    *v27 = sub_2409DC298;
    v27[1] = v26;
    v27[2] = 0;
    v27[3] = 0;
  }

  else
  {
    v20 = v35;
    sub_240A2B22C();
    v21 = (v20 + *(v36 + 36));
    *v21 = sub_2409DA630;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = 0;
  }

  sub_240919298(v20, v37, &qword_27E50CA50, &unk_240A33750);
  swift_storeEnumTagMultiPayload();
  sub_240972938();
  v28 = v34;
  sub_240A2B6EC();
  sub_240919300(v20, &qword_27E50CA50, &unk_240A33750);
  (*(v16 + 8))(v18, v15);
  v29 = v41;
  sub_24093A86C(v28, v41, &qword_27E50E550, &qword_240A36AE8);
  v23 = v29;
  v22 = 0;
  return (*(v39 + 56))(v23, v22, 1, v40);
}

uint64_t sub_2409D51F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for RepairView(0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v28 - v6;
  v8 = sub_240A2A8FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_240A2A57C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) != *MEMORY[0x277CEDC60])
  {
    (*(v9 + 8))(v11, v8);
LABEL_7:
    v26 = 1;
    v24 = v32;
    v25 = v33;
    return (*(v5 + 56))(v25, v26, 1, v24);
  }

  v16 = v31;
  (*(v9 + 96))(v11, v8);
  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_240A2A56C();
  if (v17 == 2 || (v17 & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    goto LABEL_7;
  }

  sub_240A2B22C();
  (*(v13 + 8))(v15, v12);
  v18 = v30;
  sub_2409DBB30(v16, v30, type metadata accessor for RepairView);
  v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v20 = swift_allocObject();
  sub_2409DB944(v18, v20 + v19, type metadata accessor for RepairView);
  v21 = v32;
  v22 = &v7[*(v32 + 36)];
  *v22 = sub_2409DBFFC;
  v22[1] = v20;
  v22[2] = 0;
  v22[3] = 0;
  v23 = v33;
  sub_24093A86C(v7, v33, &qword_27E50CA50, &unk_240A33750);
  v24 = v21;
  v25 = v23;
  v26 = 0;
  return (*(v5 + 56))(v25, v26, 1, v24);
}

uint64_t sub_2409D55FC@<X0>(void *a1@<X8>)
{
  v353 = a1;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E510, &qword_240A369A0);
  MEMORY[0x28223BE20](v282);
  v283 = &v268 - v2;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4E0, &qword_240A36958);
  MEMORY[0x28223BE20](v325);
  v284 = &v268 - v3;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CA50, &unk_240A33750);
  MEMORY[0x28223BE20](v281);
  v285 = &v268 - v4;
  v269 = sub_240A29A1C();
  v316 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v315 = &v268 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E518, &qword_240A369A8);
  MEMORY[0x28223BE20](v270);
  v314 = &v268 - v6;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  MEMORY[0x28223BE20](v272);
  v313 = &v268 - v7;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4D0, &qword_240A36950);
  MEMORY[0x28223BE20](v303);
  v271 = &v268 - v8;
  v9 = sub_240A2976C();
  v10 = *(v9 - 1);
  v354 = v9;
  v355 = v10;
  v11 = MEMORY[0x28223BE20](v9);
  v312 = &v268 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v330 = (&v268 - v13);
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E520, &qword_240A369B0);
  MEMORY[0x28223BE20](v320);
  v323 = &v268 - v14;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E528, &qword_240A369B8);
  MEMORY[0x28223BE20](v298);
  v300 = (&v268 - v15);
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4C0, &qword_240A36948);
  MEMORY[0x28223BE20](v322);
  v304 = &v268 - v16;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4B0, &qword_240A36940);
  MEMORY[0x28223BE20](v352);
  v324 = &v268 - v17;
  v309 = type metadata accessor for SignInView(0);
  v18 = MEMORY[0x28223BE20](v309);
  v287 = &v268 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v288 = &v268 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v301 = &v268 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v321 = &v268 - v24;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D220, &qword_240A34A48);
  MEMORY[0x28223BE20](v306);
  v307 = &v268 - v25;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D0E0, &qword_240A34960);
  MEMORY[0x28223BE20](v339);
  v308 = &v268 - v26;
  v334 = sub_240A2A10C();
  v310 = *(v334 - 8);
  v27 = MEMORY[0x28223BE20](v334);
  v278 = &v268 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v277 = &v268 - v30;
  MEMORY[0x28223BE20](v29);
  v302 = &v268 - v31;
  v305 = type metadata accessor for AuthenticationView(0);
  MEMORY[0x28223BE20](v305);
  v286 = &v268 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v297 = &v268 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v299 = &v268 - v36;
  v328 = sub_240A2975C();
  v327 = *(v328 - 8);
  v37 = MEMORY[0x28223BE20](v328);
  v326 = &v268 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v347 = &v268 - v39;
  v296 = type metadata accessor for DiscoveryView(0);
  MEMORY[0x28223BE20](v296);
  v280 = &v268 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v319 = &v268 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v279 = &v268 - v44;
  v45 = type metadata accessor for RepairView(0);
  v340 = *(v45 - 8);
  MEMORY[0x28223BE20](v45 - 8);
  v341 = v46;
  v342 = &v268 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  MEMORY[0x28223BE20](v47 - 8);
  v295 = &v268 - v48;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E530, &qword_240A369C0);
  MEMORY[0x28223BE20](v349);
  v351 = &v268 - v49;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E538, &qword_240A369C8);
  MEMORY[0x28223BE20](v335);
  v337 = &v268 - v50;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E540, &qword_240A369D0);
  MEMORY[0x28223BE20](v290);
  v292 = &v268 - v51;
  v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E4A0, &qword_240A36938);
  MEMORY[0x28223BE20](v336);
  v294 = &v268 - v52;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E490, &qword_240A36930);
  MEMORY[0x28223BE20](v350);
  v338 = &v268 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v311 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v56 = &v268 - v55;
  v289 = sub_240A297DC();
  MEMORY[0x28223BE20](v289);
  v58 = &v268 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_240A2981C();
  v60 = *(v59 - 8);
  v61 = MEMORY[0x28223BE20](v59);
  v275 = &v268 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v61);
  v276 = &v268 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v293 = &v268 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v329 = &v268 - v68;
  MEMORY[0x28223BE20](v67);
  v70 = &v268 - v69;
  v71 = sub_240A29A9C();
  v72 = *(v71 - 8);
  v73 = MEMORY[0x28223BE20](v71);
  v273 = &v268 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v274 = &v268 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v291 = &v268 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v317 = &v268 - v80;
  MEMORY[0x28223BE20](v79);
  v82 = &v268 - v81;
  v84 = v1[5];
  v83 = v1[6];
  v348 = v1;
  v343 = v84;
  *&v358 = v84;
  *(&v358 + 1) = v83;
  v331 = v83;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v85 = *(v72 + 8);
  v86 = v82;
  v87 = v355;
  v318 = v71;
  v345 = v72 + 8;
  v332 = v85;
  v85(v86, v71);
  sub_240A297EC();
  v88 = v354;
  v89 = *(v60 + 8);
  v333 = v59;
  v346 = v60 + 8;
  (v89)(v70, v59);
  v90 = v87[6](v58, 6, v88);
  if (v90 > 2)
  {
    if (v90 > 4)
    {
      if (v90 == 5)
      {
        sub_2409D8EA0(&v358);
        v153 = v358;
        v154 = v359;
        v155 = v360;
        v156 = v361;
        v157 = v300;
        *v300 = v358;
        *(v157 + 2) = v154;
        *(v157 + 3) = v155;
        *(v157 + 32) = v156;
        swift_storeEnumTagMultiPayload();

        v158 = v153;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
        sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
        sub_2409DB1E0();
        v159 = v304;
        sub_240A2B6EC();
        sub_240919298(v159, v323, &qword_27E50E4C0, &qword_240A36948);
        swift_storeEnumTagMultiPayload();
        sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
        sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
        v160 = v324;
        sub_240A2B6EC();
        sub_240919300(v159, &qword_27E50E4C0, &qword_240A36948);
        sub_240919298(v160, v351, &qword_27E50E4B0, &qword_240A36940);
        swift_storeEnumTagMultiPayload();
        sub_2409DAED8();
        sub_2409DB04C();
        sub_240A2B6EC();

        v138 = v160;
        v139 = &qword_27E50E4B0;
        v140 = &qword_240A36940;
        return sub_240919300(v138, v139, v140);
      }

      v225 = v285;
      sub_240A2B22C();
      v226 = v342;
      sub_2409DBB30(v348, v342, type metadata accessor for RepairView);
      v227 = (*(v340 + 80) + 16) & ~*(v340 + 80);
      v228 = swift_allocObject();
      sub_2409DB944(v226, v228 + v227, type metadata accessor for RepairView);
      v229 = (v225 + *(v281 + 36));
      *v229 = sub_2409DB724;
      v229[1] = v228;
      v229[2] = 0;
      v229[3] = 0;
      v230 = &unk_240A33750;
      sub_240919298(v225, v283, &qword_27E50CA50, &unk_240A33750);
      swift_storeEnumTagMultiPayload();
      sub_240972938();
      v231 = v284;
      sub_240A2B6EC();
      sub_240919298(v231, v323, &qword_27E50E4E0, &qword_240A36958);
      swift_storeEnumTagMultiPayload();
      sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
      sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
      v232 = v324;
      sub_240A2B6EC();
      sub_240919300(v231, &qword_27E50E4E0, &qword_240A36958);
      sub_240919298(v232, v351, &qword_27E50E4B0, &qword_240A36940);
      swift_storeEnumTagMultiPayload();
      sub_2409DAED8();
      sub_2409DB04C();
      sub_240A2B6EC();
      sub_240919300(v232, &qword_27E50E4B0, &qword_240A36940);
      v138 = v225;
      v139 = &qword_27E50CA50;
    }

    else
    {
      v355 = v89;
      if (v90 == 3)
      {
        v91 = v348;
        v92 = v342;
        sub_2409DBB30(v348, v342, type metadata accessor for RepairView);
        sub_240A2C21C();
        v93 = sub_240A2C20C();
        v94 = (*(v340 + 80) + 32) & ~*(v340 + 80);
        v95 = swift_allocObject();
        v96 = MEMORY[0x277D85700];
        *(v95 + 16) = v93;
        *(v95 + 24) = v96;
        sub_2409DB944(v92, v95 + v94, type metadata accessor for RepairView);
        sub_2409DBB30(v91, v92, type metadata accessor for RepairView);
        v97 = sub_240A2C20C();
        v98 = swift_allocObject();
        *(v98 + 16) = v97;
        *(v98 + 24) = v96;
        sub_2409DB944(v92, v98 + v94, type metadata accessor for RepairView);
        sub_240A2A9AC();
        v99 = v299;
        sub_240A2BD2C();
        sub_240919298(v99, v297, &qword_27E50D700, &qword_240A34A50);
        *&v358 = v343;
        v100 = v343;
        v101 = v331;
        *(&v358 + 1) = v331;
        sub_240A2BC5C();
        v102 = v317;
        sub_240A29CCC();

        v103 = v329;
        sub_240A29A3C();
        v104 = v102;
        v105 = v318;
        v106 = v332;
        v332(v104, v318);
        sub_240A297CC();
        v107 = v333;
        v108 = v355;
        (v355)(v103, v333);
        *&v358 = v100;
        *(&v358 + 1) = v101;
        sub_240A2BC5C();
        v109 = v291;
        sub_240A29CCC();

        v110 = v293;
        sub_240A29A3C();
        v106(v109, v105);
        v111 = v302;
        sub_240A297BC();
        (v108)(v110, v107);
        LODWORD(v354) = sub_240A2A07C();
        v112 = *(v310 + 8);
        v113 = v111;
        v114 = v334;
        v112(v113, v334);
        *&v358 = v343;
        *(&v358 + 1) = v101;
        sub_240A2BC5C();
        v115 = v274;
        sub_240A29CCC();

        v116 = v276;
        sub_240A29A3C();
        v106(v115, v105);
        v117 = v277;
        sub_240A297BC();
        (v108)(v116, v333);
        v118 = sub_240A29DFC();
        v120 = v119;
        v112(v117, v114);
        v121 = v305;
        v122 = *(v305 + 28);
        v356 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
        sub_240A2BC4C();
        v123 = v286;
        *&v286[v122] = v358;
        v124 = v121[8];
        v356 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D6F0, &qword_240A34B08);
        sub_240A2BC4C();
        *(v123 + v124) = v358;
        v125 = v121[9];
        v356 = 0;
        sub_240A2BC4C();
        *(v123 + v125) = v358;
        v126 = v123 + v121[12];
        *v126 = swift_getKeyPath();
        v126[8] = 0;
        v127 = v123 + v121[13];
        *v127 = swift_getKeyPath();
        v127[8] = 0;
        v128 = v121[14];
        *&v358 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D248, &unk_240A34FB0);
        swift_allocObject();
        *(v123 + v128) = sub_240A2AF1C();
        v129 = v297;
        sub_240919298(v297, v123 + v121[5], &qword_27E50D700, &qword_240A34A50);
        v130 = (v123 + v121[6]);
        *v130 = v118;
        v130[1] = v120;
        *v123 = 0;
        LOBYTE(v356) = v354 & 1;
        sub_240A2BC4C();
        v131 = *(&v358 + 1);
        v132 = v123 + v121[10];
        *v132 = v358;
        *(v132 + 1) = v131;
        v133 = v327;
        v134 = v347;
        v135 = v328;
        (*(v327 + 16))(v326, v347, v328);
        sub_240A2BC4C();
        (*(v133 + 8))(v134, v135);
        sub_240919300(v129, &qword_27E50D700, &qword_240A34A50);
        sub_2409DBB30(v123, v307, type metadata accessor for AuthenticationView);
        swift_storeEnumTagMultiPayload();
        sub_2409DB744(&qword_27E50D0E8, type metadata accessor for AuthenticationView, &protocol conformance descriptor for AuthenticationView);
        sub_2409DB744(&qword_27E50D0F0, type metadata accessor for SignInView, &unk_240A363B0);
        v136 = v308;
        sub_240A2B6EC();
        sub_240919298(v136, v337, &qword_27E50D0E0, &qword_240A34960);
        swift_storeEnumTagMultiPayload();
        sub_2409DAF64();
        sub_240995A38();
        v137 = v338;
        sub_240A2B6EC();
        sub_240919300(v136, &qword_27E50D0E0, &qword_240A34960);
        sub_240919298(v137, v351, &qword_27E50E490, &qword_240A36930);
        swift_storeEnumTagMultiPayload();
        sub_2409DAED8();
        sub_2409DB04C();
        sub_240A2B6EC();
        sub_240919300(v137, &qword_27E50E490, &qword_240A36930);
        sub_2409DBAD0(v123, type metadata accessor for AuthenticationView);
        v138 = v299;
        v139 = &qword_27E50D700;
        v140 = &qword_240A34A50;
        return sub_240919300(v138, v139, v140);
      }

      v200 = v348;
      v201 = v342;
      v330 = type metadata accessor for RepairView;
      sub_2409DBB30(v348, v342, type metadata accessor for RepairView);
      sub_240A2C21C();
      v202 = sub_240A2C20C();
      v203 = (*(v340 + 80) + 32) & ~*(v340 + 80);
      v204 = swift_allocObject();
      v205 = MEMORY[0x277D85700];
      *(v204 + 16) = v202;
      *(v204 + 24) = v205;
      v354 = type metadata accessor for RepairView;
      sub_2409DB944(v201, v204 + v203, type metadata accessor for RepairView);
      sub_2409DBB30(v200, v201, type metadata accessor for RepairView);
      v206 = sub_240A2C20C();
      v207 = swift_allocObject();
      *(v207 + 16) = v206;
      *(v207 + 24) = MEMORY[0x277D85700];
      sub_2409DB944(v201, v207 + v203, type metadata accessor for RepairView);
      sub_240A29B5C();
      sub_240A2BD2C();
      v208 = v330;
      sub_2409DBB30(v200, v201, v330);
      v209 = sub_240A2C20C();
      v210 = swift_allocObject();
      *(v210 + 16) = v209;
      v211 = MEMORY[0x277D85700];
      *(v210 + 24) = MEMORY[0x277D85700];
      v212 = v354;
      sub_2409DB944(v201, v210 + v203, v354);
      sub_2409DBB30(v200, v201, v208);
      v213 = sub_240A2C20C();
      v214 = swift_allocObject();
      *(v214 + 16) = v213;
      *(v214 + 24) = v211;
      sub_2409DB944(v201, v214 + v203, v212);
      sub_240A2BD2C();
      sub_240919298(v321, v301, &qword_27E50D218, &qword_240A34A40);
      *&v358 = v343;
      *(&v358 + 1) = v331;
      sub_240A2BC5C();
      v215 = v273;
      sub_240A29CCC();

      v216 = v275;
      sub_240A29A3C();
      v217 = v318;
      v332(v215, v318);
      v218 = v278;
      sub_240A297BC();
      v219 = v216;
      v220 = v333;
      (v355)(v219, v333);
      v221 = sub_240A2A0FC();
      if (v221 == 1)
      {
        v223 = v220;
        v240 = sub_240932DE0();
        v241 = *(v310 + 8);
        v342 = (v310 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v348 = v241;
        v241(v218, v334);
        if (v240)
        {
          v242 = 1;
        }

        else
        {
          v242 = 2;
        }

        LODWORD(v354) = v242;
        v243 = v329;
        v222 = v317;
      }

      else
      {
        v222 = v317;
        v223 = v220;
        v224 = *(v310 + 8);
        v342 = (v310 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v348 = v224;
        if (v221)
        {
          v224(v218, v334);
          LODWORD(v354) = 2;
        }

        else
        {
          v224(v218, v334);
          LODWORD(v354) = 0;
        }

        v243 = v329;
      }

      v244 = v343;
      v245 = v331;
      *&v358 = v343;
      *(&v358 + 1) = v331;
      sub_240A2BC5C();
      sub_240A29CCC();

      sub_240A29A3C();
      v246 = v222;
      v247 = v332;
      v332(v246, v217);
      sub_240A297CC();
      v248 = v243;
      v249 = v355;
      (v355)(v248, v223);
      *&v358 = v244;
      *(&v358 + 1) = v245;
      sub_240A2BC5C();
      v250 = v291;
      sub_240A29CCC();

      v251 = v293;
      sub_240A29A3C();
      v247(v250, v217);
      v252 = v302;
      sub_240A297BC();
      (v249)(v251, v223);
      LOBYTE(v251) = sub_240A2A07C();
      v348(v252, v334);
      v253 = v309;
      v254 = v287;
      sub_240919298(v319, &v287[*(v309 + 36)], &qword_27E50BD20, &qword_240A31BC0);
      v255 = v253[5];
      v356 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50F540, &unk_240A34F50);
      sub_240A2BC4C();
      *(v254 + v255) = v358;
      v256 = v254 + v253[10];
      *v256 = swift_getKeyPath();
      *(v256 + 8) = 0;
      v257 = v301;
      sub_240919298(v301, v254, &qword_27E50D218, &qword_240A34A40);
      *(v254 + v253[6]) = v354;
      v258 = v327;
      v259 = v347;
      v260 = v328;
      (*(v327 + 16))(v326, v347, v328);
      sub_240A2BC4C();
      LOBYTE(v356) = v251 & 1;
      sub_240A2BC4C();
      (*(v258 + 8))(v259, v260);
      v261 = v257;
      v230 = &qword_240A34A40;
      sub_240919300(v261, &qword_27E50D218, &qword_240A34A40);
      v262 = *(&v358 + 1);
      v263 = v254 + v253[8];
      *v263 = v358;
      *(v263 + 8) = v262;
      v264 = v254;
      v265 = v288;
      sub_2409DB944(v264, v288, type metadata accessor for SignInView);
      sub_2409DBB30(v265, v307, type metadata accessor for SignInView);
      swift_storeEnumTagMultiPayload();
      sub_2409DB744(&qword_27E50D0E8, type metadata accessor for AuthenticationView, &protocol conformance descriptor for AuthenticationView);
      sub_2409DB744(&qword_27E50D0F0, type metadata accessor for SignInView, &unk_240A363B0);
      v266 = v308;
      sub_240A2B6EC();
      sub_240919298(v266, v337, &qword_27E50D0E0, &qword_240A34960);
      swift_storeEnumTagMultiPayload();
      sub_2409DAF64();
      sub_240995A38();
      v267 = v338;
      sub_240A2B6EC();
      sub_240919300(v266, &qword_27E50D0E0, &qword_240A34960);
      sub_240919298(v267, v351, &qword_27E50E490, &qword_240A36930);
      swift_storeEnumTagMultiPayload();
      sub_2409DAED8();
      sub_2409DB04C();
      sub_240A2B6EC();
      sub_240919300(v267, &qword_27E50E490, &qword_240A36930);
      sub_2409DBAD0(v265, type metadata accessor for SignInView);
      sub_240919300(v319, &qword_27E50BD20, &qword_240A31BC0);
      v138 = v321;
      v139 = &qword_27E50D218;
    }

    v140 = v230;
    return sub_240919300(v138, v139, v140);
  }

  v141 = v56;
  v142 = v311;
  v321 = v54;
  v143 = v312;
  v144 = v313;
  v145 = v315;
  v146 = v316;
  v147 = v314;
  if (v90)
  {
    if (v90 == 1)
    {
      v148 = v141;
      sub_240A2B22C();
      v149 = v321;
      (*(v142 + 16))(v292, v148, v321);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
      sub_2409DB744(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
      v150 = v294;
      sub_240A2B6EC();
      sub_240919298(v150, v337, &qword_27E50E4A0, &qword_240A36938);
      swift_storeEnumTagMultiPayload();
      sub_2409DAF64();
      sub_240995A38();
      v151 = v338;
      sub_240A2B6EC();
      sub_240919300(v150, &qword_27E50E4A0, &qword_240A36938);
      sub_240919298(v151, v351, &qword_27E50E490, &qword_240A36930);
      swift_storeEnumTagMultiPayload();
      sub_2409DAED8();
      sub_2409DB04C();
      sub_240A2B6EC();
      sub_240919300(v151, &qword_27E50E490, &qword_240A36930);
      return (*(v142 + 8))(v148, v149);
    }

    v354 = type metadata accessor for RepairView;
    v355 = v89;
    v169 = v348;
    v170 = v342;
    sub_2409DBB30(v348, v342, type metadata accessor for RepairView);
    sub_240A2C21C();
    v171 = sub_240A2C20C();
    v172 = (*(v340 + 80) + 32) & ~*(v340 + 80);
    v173 = swift_allocObject();
    v174 = MEMORY[0x277D85700];
    *(v173 + 16) = v171;
    *(v173 + 24) = v174;
    sub_2409DB944(v170, v173 + v172, type metadata accessor for RepairView);
    sub_2409DBB30(v169, v170, type metadata accessor for RepairView);
    v175 = sub_240A2C20C();
    v176 = swift_allocObject();
    *(v176 + 16) = v175;
    *(v176 + 24) = MEMORY[0x277D85700];
    sub_2409DB944(v170, v176 + v172, type metadata accessor for RepairView);
    sub_240A2BD2C();
    v177 = v354;
    sub_2409DBB30(v169, v170, v354);
    v178 = sub_240A2C20C();
    v179 = swift_allocObject();
    *(v179 + 16) = v178;
    v180 = MEMORY[0x277D85700];
    *(v179 + 24) = MEMORY[0x277D85700];
    sub_2409DB944(v170, v179 + v172, type metadata accessor for RepairView);
    sub_2409DBB30(v169, v170, v177);
    v181 = sub_240A2C20C();
    v182 = swift_allocObject();
    *(v182 + 16) = v181;
    *(v182 + 24) = v180;
    sub_2409DB944(v170, v182 + v172, type metadata accessor for RepairView);
    v183 = v279;
    sub_240A2BD2C();
    v184 = v295;
    v185 = v280;
    sub_240919298(v295, v280, &qword_27E50BD18, &qword_240A33940);
    v186 = v296;
    sub_240919298(v183, v185 + *(v296 + 32), &qword_27E50BD20, &qword_240A31BC0);
    *&v358 = v343;
    *(&v358 + 1) = v331;
    sub_240A2BC5C();
    v187 = v317;
    sub_240A29CCC();

    v188 = v329;
    sub_240A29A3C();
    v332(v187, v318);
    v189 = v347;
    sub_240A297CC();
    (v355)(v188, v333);
    v190 = v185 + v186[5];
    v356 = 0;
    v357 = 0xE000000000000000;
    sub_240A2BC4C();
    v191 = v359;
    *v190 = v358;
    *(v190 + 16) = v191;
    *(v185 + v186[6]) = 0;
    *(v185 + v186[7]) = 0;
    v192 = v327;
    v193 = v328;
    (*(v327 + 16))(v326, v189, v328);
    sub_240A2BC4C();
    (*(v192 + 8))(v189, v193);
    v194 = v186[10];
    *(v185 + v194) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    v195 = v186[11];
    *(v185 + v195) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v196 = v185 + v186[12];
    *v196 = swift_getKeyPath();
    *(v196 + 8) = 0;
    v197 = v185 + v186[13];
    *v197 = swift_getKeyPath();
    *(v197 + 8) = 0;
    sub_2409DBB30(v185, v292, type metadata accessor for DiscoveryView);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_2409DB744(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
    v198 = v294;
    sub_240A2B6EC();
    sub_240919298(v198, v337, &qword_27E50E4A0, &qword_240A36938);
    swift_storeEnumTagMultiPayload();
    sub_2409DAF64();
    sub_240995A38();
    v199 = v338;
    sub_240A2B6EC();
    sub_240919300(v198, &qword_27E50E4A0, &qword_240A36938);
    sub_240919298(v199, v351, &qword_27E50E490, &qword_240A36930);
    swift_storeEnumTagMultiPayload();
    sub_2409DAED8();
    sub_2409DB04C();
    sub_240A2B6EC();
    sub_240919300(v199, &qword_27E50E490, &qword_240A36930);
    sub_2409DBAD0(v185, type metadata accessor for DiscoveryView);
    sub_240919300(v183, &qword_27E50BD20, &qword_240A31BC0);
    v138 = v184;
    v139 = &qword_27E50BD18;
    v140 = &qword_240A33940;
    return sub_240919300(v138, v139, v140);
  }

  v161 = v330;
  v87[4](v330, v58, v88);
  v87[2](v143, v161, v88);
  v162 = (v87[11])(v143, v88);
  if (v162 == *MEMORY[0x277CED2D8] || v162 == *MEMORY[0x277CED270] || v162 == *MEMORY[0x277CED268])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
    sub_240974954();
    sub_240A2B21C();
    v233 = v342;
    sub_2409DBB30(v348, v342, type metadata accessor for RepairView);
    v234 = (*(v340 + 80) + 16) & ~*(v340 + 80);
    v235 = swift_allocObject();
    sub_2409DB944(v233, v235 + v234, type metadata accessor for RepairView);
    v236 = (v144 + *(v272 + 36));
    *v236 = sub_2409DB78C;
    v236[1] = v235;
    v236[2] = 0;
    v236[3] = 0;
    sub_240919298(v144, v147, &unk_27E50D720, &unk_240A337B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    sub_240972F80();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    v166 = v271;
    sub_240A2B6EC();
    v237 = v144;
    v168 = v354;
    sub_240919300(v237, &unk_27E50D720, &unk_240A337B0);
    v167 = v355;
  }

  else
  {
    sub_2409DB744(&qword_27E50C518, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    sub_240A2C6DC();
    sub_2409D89FC(&v358);
    v163 = v359;
    v164 = v360;
    v165 = v361;
    *v147 = v358;
    *(v147 + 16) = v163;
    *(v147 + 24) = v164;
    *(v147 + 32) = v165;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
    sub_240972F80();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    v166 = v271;
    sub_240A2B6EC();
    (*(v146 + 8))(v145, v269);
    v167 = v355;
    v168 = v354;
    (v355[1])(v143, v354);
  }

  sub_240919298(v166, v300, &qword_27E50E4D0, &qword_240A36950);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D7D0, &qword_240A38E40);
  sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
  sub_2409DB1E0();
  v238 = v304;
  sub_240A2B6EC();
  sub_240919298(v238, v323, &qword_27E50E4C0, &qword_240A36948);
  swift_storeEnumTagMultiPayload();
  sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
  sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
  v239 = v324;
  sub_240A2B6EC();
  sub_240919300(v238, &qword_27E50E4C0, &qword_240A36948);
  sub_240919298(v239, v351, &qword_27E50E4B0, &qword_240A36940);
  swift_storeEnumTagMultiPayload();
  sub_2409DAED8();
  sub_2409DB04C();
  sub_240A2B6EC();
  sub_240919300(v239, &qword_27E50E4B0, &qword_240A36940);
  sub_240919300(v166, &qword_27E50E4D0, &qword_240A36950);
  return v167[1](v330, v168);
}

void sub_2409D89FC(void *a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for RepairView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = v4;
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s14AppleIDSetupUI22ProxCardViewControllerC022newRepairAccountFailedefG0ACyFZ_0();
  v42 = 1;
  sub_240A2BD3C();
  v33 = v37;
  v34 = aBlock;
  v32 = v38;
  sub_240A2C06C();
  v30 = type metadata accessor for RepairView;
  sub_2409DBB30(v1, v5, type metadata accessor for RepairView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v28 = type metadata accessor for RepairView;
  sub_2409DB944(v5, v8 + v7, type metadata accessor for RepairView);
  v9 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v10 = swift_allocObject();
  v10[2] = sub_2409DBEA4;
  v10[3] = v8;
  v10[4] = v9;
  v11 = v6;

  v12 = sub_240A2BF1C();

  v40 = sub_2409977DC;
  v41 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v27 = &v38;
  v38 = sub_2409DFF20;
  v39 = &block_descriptor_107;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = [v11 addAction_];

  sub_2409DBB30(v31, v5, v30);
  v17 = swift_allocObject();
  sub_2409DB944(v5, v17 + v7, v28);
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = sub_2409DBEA8;
  v19[3] = v17;
  v19[4] = v18;
  v20 = v11;

  v21 = sub_240A2BF1C();
  v40 = sub_24093A3B8;
  v41 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_2409DFF20;
  v39 = &block_descriptor_117;
  v22 = _Block_copy(&aBlock);
  v23 = [v14 actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  [v20 setDismissButtonAction_];

  v24 = MEMORY[0x277D84F90];
  v25 = v35;
  *v35 = v20;
  v25[1] = v24;
  v26 = v33;
  v25[2] = v34;
  v25[3] = v26;
  *(v25 + 32) = v32;
}

void sub_2409D8EA0(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RepairView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = _s14AppleIDSetupUI22ProxCardViewControllerC024newRepairAccountCompleteefG0ACyFZ_0();
  v27 = 1;
  sub_240A2BD3C();
  v7 = v22;
  v20 = aBlock;
  v19 = v23;
  sub_240A2C06C();
  sub_2409DBB30(v1, &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RepairView);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_2409DB944(&v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for RepairView);
  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v11 = swift_allocObject();
  v11[2] = sub_2409DC2D4;
  v11[3] = v9;
  v11[4] = v10;
  v12 = v6;

  v13 = sub_240A2BF1C();

  v25 = sub_240998A78;
  v26 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v22 = 1107296256;
  v23 = sub_2409DFF20;
  v24 = &block_descriptor_134;
  v14 = _Block_copy(&aBlock);
  v15 = [objc_opt_self() actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v16 = [v12 addAction_];

  v17 = MEMORY[0x277D84F90];
  *a1 = v12;
  *(a1 + 8) = v17;
  *(a1 + 16) = v20;
  *(a1 + 24) = v7;
  *(a1 + 32) = v19;
}

void sub_2409D919C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v80 = a3;
  v72 = a2;
  v3 = type metadata accessor for RepairView(0);
  v4 = MEMORY[0x28223BE20](v3);
  v78 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v77 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v69 - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C058, &qword_240A31F50);
  v11 = MEMORY[0x28223BE20](v75);
  v74 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E400, &qword_240A368C8);
  v73 = *(v79 - 8);
  v15 = MEMORY[0x28223BE20](v79);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v71 = &v69 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  MEMORY[0x28223BE20](v19);
  v76 = &v69 - v22;
  v23 = sub_240A2BE7C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = (&v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_240979B08();
  *v26 = sub_240A2C32C();
  (*(v24 + 104))(v26, *MEMORY[0x277D85200], v23);
  v27 = sub_240A2BE8C();
  v29 = *(v24 + 8);
  v28 = v24 + 8;
  v29(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
LABEL_5:
    v30 = sub_240A2B00C();
    __swift_project_value_buffer(v30, qword_27E50E380);
    sub_2409DBB30(v26, v14, type metadata accessor for RepairView);
    sub_2409DBB30(v26, v28, type metadata accessor for RepairView);
    v31 = sub_240A2AFFC();
    v32 = sub_240A2C2AC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v84 = v34;
      *v33 = 136315394;
      sub_240A2BC5C();
      v35 = sub_240A2BF9C();
      v37 = v36;
      sub_2409DBAD0(v14, type metadata accessor for RepairView);
      v38 = sub_240925464(v35, v37, &v84);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2080;
      v39 = v28 + *(v8 + 36);
      v40 = *(v39 + 16);
      v82 = *v39;
      v83 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E408, &qword_240A368D0);
      sub_240A2BC5C();
      v82 = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C070, &qword_240A31F68);
      v41 = sub_240A2BF9C();
      v43 = v42;
      sub_2409DBAD0(v28, type metadata accessor for RepairView);
      v44 = sub_240925464(v41, v43, &v84);

      *(v33 + 14) = v44;
      _os_log_impl(&dword_2408FE000, v31, v32, "[onChange] Unable to send response, no modelSender available: %s %s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CCDDB0](v34, -1, -1);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    else
    {

      sub_2409DBAD0(v14, type metadata accessor for RepairView);
      sub_2409DBAD0(v28, type metadata accessor for RepairView);
    }

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
  v26 = v80;
  sub_240A2BC5C();
  if ((*(v8 + 48))(v14, 1, v7))
  {
    v8 = v3;
    sub_240919300(v14, &qword_27E50C058, &qword_240A31F50);
    goto LABEL_4;
  }

  (*(v8 + 16))(v10, v14, v7);
  sub_240919300(v14, &qword_27E50C058, &qword_240A31F50);
  sub_240A29CAC();
  (*(v8 + 8))(v10, v7);
  v45 = v73;
  v46 = v76;
  v47 = v21;
  v48 = v79;
  (*(v73 + 32))(v76, v47, v79);
  v49 = v26 + *(v3 + 36);
  v50 = *(v49 + 2);
  v82 = *v49;
  v83 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E408, &qword_240A368D0);
  sub_240A2BC5C();
  v51 = v81;
  if (!v81)
  {
    v8 = v3;
    (*(v45 + 8))(v46, v48);
LABEL_4:
    v14 = v77;
    v28 = v78;
    if (qword_27E50AF88 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v52 = *(&v81 + 1);
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v53 = sub_240A2B00C();
  __swift_project_value_buffer(v53, qword_27E50E380);
  v54 = *(v45 + 16);
  v55 = v71;
  v54(v71, v46, v48);
  v56 = sub_240A2AFFC();
  v57 = sub_240A2C29C();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v80 = v52;
    v60 = v59;
    *&v82 = v59;
    *v58 = 136315138;
    v54(v70, v55, v79);
    v61 = sub_240A2BF9C();
    v63 = v62;
    v64 = *(v45 + 8);
    v64(v55, v79);
    v65 = sub_240925464(v61, v63, &v82);

    *(v58 + 4) = v65;
    _os_log_impl(&dword_2408FE000, v56, v57, "[onChange] Sending response: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    v66 = v60;
    v52 = v80;
    MEMORY[0x245CCDDB0](v66, -1, -1);
    v67 = v58;
    v48 = v79;
    MEMORY[0x245CCDDB0](v67, -1, -1);
  }

  else
  {

    v64 = *(v45 + 8);
    v64(v55, v48);
  }

  v68 = v76;
  v51(v76);
  sub_24090C1A0(v51, v52);
  v64(v68, v48);
}

uint64_t sub_2409D9AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v9 = (a5)(0, a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = *(a4 + 48);
  v18[0] = *(a4 + 40);
  v18[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  (*(v10 + 16))(v12, a1, v9);
  v14 = sub_240A29CBC();
  v15 = sub_240A29A2C();
  a6(v12);
  v15(v17, 0);
  v14(v18, 0);
}

uint64_t sub_2409D9C4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_240A2981C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_240A29A9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 48);
  v17[2] = *(a3 + 40);
  v17[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_240A29CCC();

  sub_240A29A3C();
  v15 = (*(v11 + 8))(v13, v10);
  a4(v15);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2409D9E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_240A297DC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 48);
  v14[0] = *(a4 + 40);
  v14[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  sub_2409DBB30(a1, v8, MEMORY[0x277CED338]);
  v10 = sub_240A29CBC();
  v11 = sub_240A29A2C();
  sub_240A297FC();
  v11(v13, 0);
  v10(v14, 0);
}

uint64_t sub_2409D9F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RepairView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_240A2C24C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_2409DBB30(a1, &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RepairView);
  sub_240A2C21C();
  v12 = sub_240A2C20C();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_2409DB944(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RepairView);
  sub_2409230D4(0, 0, v10, a3, v14);
}

uint64_t sub_2409DA128()
{
  sub_240A2C06C();
  sub_24091C4F8();
  v0 = sub_240A2B9CC();
  v2 = v1;
  v4 = v3 & 1;
  sub_240A2BA6C();
  sub_240920658(v0, v2, v4);
}

uint64_t sub_2409DA204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_240A29A5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 48);
  v12[0] = *(a3 + 40);
  v12[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  (*(v5 + 104))(v7, *MEMORY[0x277CED480], v4);
  v9 = sub_240A29CBC();
  sub_240A29A7C();
  v9(v12, 0);
}

void sub_2409DA340(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RepairView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2409DBB30(a3, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RepairView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_2409DB944(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RepairView);
  aBlock[4] = sub_2409DBF28;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_123;
  v10 = _Block_copy(aBlock);

  [a1 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_2409DA4DC(uint64_t a1)
{
  v2 = sub_240A297DC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 48);
  v11[0] = *(a1 + 40);
  v11[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  v6 = sub_240A2976C();
  (*(*(v6 - 8) + 56))(v4, 6, 6, v6);
  v7 = sub_240A29CBC();
  v8 = sub_240A29A2C();
  sub_240A297FC();
  v8(v10, 0);
  v7(v11, 0);
}

void sub_2409DA630()
{
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50E380);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C29C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "Observed pairing cancelled, user selected manual sign in", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_2409DA718(uint64_t a1, const char *a2, unsigned int *a3)
{
  v6 = sub_240A297DC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E50AF88 != -1)
  {
    swift_once();
  }

  v9 = sub_240A2B00C();
  __swift_project_value_buffer(v9, qword_27E50E380);
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2408FE000, v10, v11, a2, v12, 2u);
    MEMORY[0x245CCDDB0](v12, -1, -1);
  }

  v13 = *(a1 + 48);
  v21[0] = *(a1 + 40);
  v21[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3A8, &qword_240A36838);
  sub_240A2BC5C();
  v14 = *a3;
  v15 = sub_240A2976C();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 6, v15);
  v17 = sub_240A29CBC();
  v18 = sub_240A29A2C();
  sub_240A297FC();
  v18(v20, 0);
  v17(v21, 0);
}

void sub_2409DA960(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RepairView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_2409D919C(a1, a2, v6);
}

unint64_t sub_2409DA9E0()
{
  result = qword_27E50E3B8;
  if (!qword_27E50E3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E398, &qword_240A36828);
    sub_24091CE28(&qword_27E50E3C0, &qword_27E50E3C8, &qword_240A36848, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E3B8);
  }

  return result;
}

void sub_2409DAAD4(uint64_t a1)
{
  sub_240919DC0();
  if (v1 <= 0x3F)
  {
    sub_240A2A27C();
    if (v2 <= 0x3F)
    {
      sub_24099673C(319, &qword_27E50E3E8, &qword_27E50C078, &qword_240A31FA8);
      if (v3 <= 0x3F)
      {
        sub_24099673C(319, &qword_27E50E3F0, &qword_27E50C058, &qword_240A31F50);
        if (v4 <= 0x3F)
        {
          sub_24099673C(319, &qword_27E50E3F8, &qword_27E50C070, &qword_240A31F68);
          if (v5 <= 0x3F)
          {
            sub_2409DAC00(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2409DAC00(uint64_t a1)
{
  if (!qword_27E50C9F8)
  {
    sub_240A2B2AC();
    v1 = sub_240A2B1DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50C9F8);
    }
  }
}

unint64_t sub_2409DAC58()
{
  result = qword_27E50E460;
  if (!qword_27E50E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E458, &qword_240A36920);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E460);
  }

  return result;
}

unint64_t sub_2409DAD08()
{
  result = qword_27E50E470;
  if (!qword_27E50E470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E438, &qword_240A36900);
    sub_2409DADC0();
    sub_2409DB130(&qword_27E50E4E8, &qword_27E50E4F0, &qword_240A36960, sub_2409DAC58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E470);
  }

  return result;
}

unint64_t sub_2409DADC0()
{
  result = qword_27E50E478;
  if (!qword_27E50E478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E430, &qword_240A368F8);
    sub_240972938();
    sub_2409DAE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E478);
  }

  return result;
}

unint64_t sub_2409DAE4C()
{
  result = qword_27E50E480;
  if (!qword_27E50E480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E410, &qword_240A368D8);
    sub_2409DAED8();
    sub_2409DB04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E480);
  }

  return result;
}

unint64_t sub_2409DAED8()
{
  result = qword_27E50E488;
  if (!qword_27E50E488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E490, &qword_240A36930);
    sub_2409DAF64();
    sub_240995A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E488);
  }

  return result;
}

unint64_t sub_2409DAF64()
{
  result = qword_27E50E498;
  if (!qword_27E50E498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E4A0, &qword_240A36938);
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_2409DB744(&qword_27E50CA58, type metadata accessor for DiscoveryView, &unk_240A31C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E498);
  }

  return result;
}

unint64_t sub_2409DB04C()
{
  result = qword_27E50E4A8;
  if (!qword_27E50E4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E4B0, &qword_240A36940);
    sub_2409DB130(&qword_27E50E4B8, &qword_27E50E4C0, &qword_240A36948, sub_2409DB1E0);
    sub_2409DB298(&qword_27E50E4D8, &qword_27E50E4E0, &qword_240A36958, sub_240972938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E4A8);
  }

  return result;
}

uint64_t sub_2409DB130(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2409DB1E0()
{
  result = qword_27E50E4C8;
  if (!qword_27E50E4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E4D0, &qword_240A36950);
    sub_240972F80();
    sub_24091CE28(&unk_27E50BEE0, &qword_27E50D7D0, &qword_240A38E40, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E4C8);
  }

  return result;
}

uint64_t sub_2409DB298(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2409DB31C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;

    v5 = v4;
  }

  return result;
}

void *sub_2409DB37C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2409DB3FC()
{
  type metadata accessor for RepairView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240915E50;

  return sub_2409D13EC();
}

uint64_t sub_2409DB4EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return sub_2409D212C(a1);
}

uint64_t sub_2409DB58C()
{
  v1 = *(type metadata accessor for RepairView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  return (*(v0 + v2 + 16))(v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409DB67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for RepairView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2409D26E0(a1, a2, a3, v8);
}

uint64_t sub_2409DB744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409DB944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409DBAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409DBB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409DBB98(uint64_t a1)
{
  v4 = *(type metadata accessor for RepairView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_240916360;

  return sub_2409D1E9C(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for RepairView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);

  if (*(v5 + v1[9]))
  {
  }

  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A2B2AC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2409DBEA8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RepairView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2409DA340(a1, a2, v6);
}

uint64_t sub_2409DBF28()
{
  v1 = *(type metadata accessor for RepairView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2409DA4DC(v2);
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for RepairView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);

  if (*(v5 + v1[9]))
  {
  }

  v9 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A2B2AC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409DC2D8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v2[12] = swift_task_alloc();
  sub_240A2C21C();
  v2[13] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x2822009F8](sub_2409DC3A8, v4, v3);
}

id sub_2409DC3A8()
{
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v2 = result;
    v4 = v0[11];
    v3 = v0[12];
    v5 = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v6 = MEMORY[0x277CEDE68];
    v0[5] = v5;
    v0[6] = v6;
    v0[2] = v2;
    v7 = *(*(v4 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings) + 16);
    v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
    swift_beginAccess();
    sub_2409BF428(v7 + v8, v3);
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_2409DC4F0;
    v10 = v0[12];

    return sub_2409BE490((v0 + 2), v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2409DC4F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    sub_2409DDB3C(v4[12]);
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_2409DC6B8;
  }

  else
  {
    v8 = v4[12];
    v4[18] = a1;
    sub_2409DDB3C(v8);
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_2409DC62C;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_2409DC62C()
{
  v1 = *(v0 + 144);

  sub_240A2944C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2409DC6B8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AISFlowStepChildMigration.__allocating_init(guardianAuthResponse:settings:remoteUIPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AISFlowStepChildMigration.init(guardianAuthResponse:settings:remoteUIPresenter:)(a1, a2, a3);
  return v6;
}

id AISFlowStepChildMigration.guardianAuthResults.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_guardianAuthResults;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AISFlowStepChildMigration.init(guardianAuthResponse:settings:remoteUIPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_guardianAuthResults) = a1;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings) = a2;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_remoteUIPresenter) = a3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v13[15] = 0;
  sub_240A2B0DC();
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v3;
}

uint64_t AISFlowStepChildMigration.nextStep()()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error);
  if (v11)
  {
    v12 = v11;
LABEL_3:
    swift_willThrow();
    return v0;
  }

  v13 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults);
  if (!v13)
  {
    sub_240A2AE9C();
    v32 = sub_240A2AFFC();
    v0 = sub_240A2C2AC();
    if (os_log_type_enabled(v32, v0))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2408FE000, v32, v0, "AISFlowStepChildMigration: Missing child auth results", v33, 2u);
      MEMORY[0x245CCDDB0](v33, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    sub_2409B91C4();
    swift_allocError();
    *v34 = 2;
    goto LABEL_3;
  }

  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_240A2C21C();
  v36 = v13;

  v15 = v0;
  v16 = sub_240A2C20C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  sub_2409230D4(0, 0, v10, &unk_240A36AF8, v17);

  sub_240A2AE9C();
  v19 = sub_240A2AFFC();
  v20 = sub_240A2C2CC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2408FE000, v19, v20, "AISFlowStepChildMigration: Migration successful. Starting repair step.", v21, 2u);
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  (*(v2 + 8))(v7, v1);
  v22 = OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_guardianAuthResults;
  swift_beginAccess();
  v23 = *(v15 + v22);
  v24 = *(v15 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings);
  v25 = objc_allocWithZone(sub_240A2983C());
  v26 = v23;

  v27 = [v25 init];
  v28 = sub_240A2A12C();
  v29 = sub_240A2A11C();
  type metadata accessor for AISFlowStepChildAccountRepair(0);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_error) = 0;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_guardianAuthResponse) = v26;
  v37[4] = MEMORY[0x277CED7C0];
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_childAuthResults) = v36;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_locationServicesEnabled) = 0;
  v37[3] = v28;
  v37[0] = v29;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_settings) = v24;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_stepLoadTask) = v27;
  sub_240919A14(v37, v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_featureManager);
  v30 = (v0 + OBJC_IVAR____TtC14AppleIDSetupUI29AISFlowStepChildAccountRepair_currentDeviceInfoProvider);
  *v30 = sub_24097B004;
  v30[1] = 0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v38 = 0;
  sub_240A2B0DC();
  __swift_destroy_boxed_opaque_existential_0(v37);
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v0;
}

uint64_t sub_2409DCE48()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24094DBBC;

  return sub_2409DDBA4();
}

uint64_t AISFlowStepChildMigration.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_240A2999C();

  v4 = sub_240A2A4AC();
  v8 = *(v4 - 8);
  v5 = MEMORY[0x277CEDAD0];
  if (v3 != 1)
  {
    v5 = MEMORY[0x277CEDAC8];
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

void sub_2409DCFE8()
{

  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_remoteUIPresenter);
}

uint64_t AISFlowStepChildMigration.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AISFlowStepChildMigration.__deallocating_deinit()
{
  AISFlowStepChildMigration.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t AISFlowStepChildMigrationError.description.getter()
{
  result = 0xD000000000000019;
  v2 = *v0;
  if (*v0 == 1)
  {
    return 0xD00000000000001DLL;
  }

  if (v2 != 2)
  {
    sub_240A2C47C();
    MEMORY[0x245CCCD90](0xD000000000000038, 0x8000000240A3E500);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0;
  }

  return result;
}

uint64_t sub_2409DD298()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_240915E50;

  return sub_2409DCE48();
}

uint64_t type metadata accessor for AISFlowStepChildMigration(uint64_t a1)
{
  result = qword_27E50E560;
  if (!qword_27E50E560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI30AISFlowStepChildMigrationErrorO(unint64_t *a1)
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

uint64_t sub_2409DD454(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2409DD4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2409DD518(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v60 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  if (a1)
  {
    v65 = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    if (swift_dynamicCast())
    {
      v15 = v61;
      v16 = v62;
      v17 = v63;
      if (*(&v61 + 1) == 1)
      {
        v60 = v64;
        sub_240A2AE9C();
        v18 = sub_240A2AFFC();
        v19 = sub_240A2C2AC();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_2408FE000, v18, v19, "User cancelled. Tearing down flow migration flow.", v20, 2u);
          MEMORY[0x245CCDDB0](v20, -1, -1);
        }

        (*(v5 + 8))(v13, v4);
        v21 = *(*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_settings) + 24);
        sub_240926FD4();
        v22 = swift_allocError();
        *v23 = v15;
        v23[1] = 1;
        v23[2] = v16;
        v23[3] = v17;
        v23[4] = v60;

        v21(v22, 1);

        return sub_2409F4D6C();
      }

      sub_240964124(v61, *(&v61 + 1), v62, v63, v64);
    }

    sub_2409B91C4();
    v24 = swift_allocError();
    *v25 = a1;
  }

  else
  {
    v24 = 0;
  }

  v26 = OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error;
  v27 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error);
  *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_error) = v24;
  v28 = a1;

  sub_240A2AE9C();
  v29 = sub_240A2AFFC();
  v30 = sub_240A2C2AC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_2408FE000, v29, v30, "AISFlowStepChildMigration: Constructing auth results", v31, 2u);
    MEMORY[0x245CCDDB0](v31, -1, -1);
  }

  v32 = *(v5 + 8);
  v32(v11, v4);
  v33 = objc_opt_self();
  v34 = [v33 sharedInstance];
  v35 = [v34 primaryAuthKitAccount];

  if (v35)
  {
    v36 = [v33 sharedInstance];
    v37 = [v36 DSIDForAccount_];

    v38 = [v33 sharedInstance];
    v39 = [v38 altDSIDForAccount_];

    if (v39)
    {
      v40 = sub_240A2BF4C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_240A32540;
    *(inited + 32) = sub_240A2AC1C();
    v51 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    if (v42)
    {
      v52 = v40;
    }

    else
    {
      v52 = 0;
    }

    if (v42)
    {
      v53 = v42;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    *(inited + 40) = v50;
    *(inited + 48) = v52;
    *(inited + 56) = v53;
    *(inited + 80) = sub_240A2BF4C();
    *(inited + 88) = v54;
    if (v37)
    {
      v63 = sub_2409194E8(0, &unk_27E50C960, 0x277CCABB0);
      *&v61 = v37;
      sub_24091C780(&v61, (inited + 96));
    }

    else
    {
      *(inited + 120) = v51;
      *(inited + 96) = 0;
      *(inited + 104) = 0xE000000000000000;
    }

    v55 = v37;
    sub_240926374(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
    swift_arrayDestroy();
    v56 = objc_allocWithZone(sub_240A2AC6C());
    v57 = sub_240A2ABDC();

    v58 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults);
    *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI25AISFlowStepChildMigration_childAuthResults) = v57;
  }

  else
  {
    sub_240A2AE9C();
    v43 = sub_240A2AFFC();
    v44 = sub_240A2C2AC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2408FE000, v43, v44, "AISFlowStepChildMigration: No primary account or DSID found", v45, 2u);
      MEMORY[0x245CCDDB0](v45, -1, -1);
    }

    v32(v8, v4);
    sub_2409B91C4();
    v46 = swift_allocError();
    *v47 = 2;
    v48 = *(v2 + v26);
    *(v2 + v26) = v46;
  }

  return sub_2409F4D6C();
}

uint64_t sub_2409DDB3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2409DDBA4()
{
  v1 = sub_240A2B00C();
  v0[39] = v1;
  v0[40] = *(v1 - 8);
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v0[43] = swift_task_alloc();
  v0[44] = swift_task_alloc();
  sub_240A2C21C();
  v0[45] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v0[46] = v3;
  v0[47] = v2;

  return MEMORY[0x2822009F8](sub_2409DDCB8, v3, v2);
}

uint64_t sub_2409DDCB8(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Clearing pending dob as IdMS migration flow succeeded", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[44];
  v6 = v1[39];
  v7 = v1[40];

  v8 = *(v7 + 8);
  v1[48] = v8;
  v8(v5, v6);
  v9 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v1[49] = v9;
  v1[2] = v1;
  v1[7] = v1 + 37;
  v1[3] = sub_2409DDE98;
  v10 = swift_continuation_init();
  v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6A8, qword_240A36C50);
  v1[18] = MEMORY[0x277D85DD0];
  v1[19] = 1107296256;
  v1[20] = sub_240964C08;
  v1[21] = &block_descriptor_19;
  v1[22] = v10;
  [v9 aa:v1 + 18 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2409DDE98()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_2409DE4A4;
  }

  else
  {
    v5 = sub_2409DDFC8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409DDFC8()
{
  v1 = v0[37];
  v0[51] = v1;
  if (v1)
  {
    v2 = v0[49];
    [v1 aa:0 setPendingDOB:?];
    v0[10] = v0;
    v0[15] = v0 + 53;
    v0[11] = sub_2409DE220;
    v3 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C6B0, &unk_240A32ED0);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_240A13784;
    v0[29] = &block_descriptor_8;
    v0[30] = v3;
    [v2 saveVerifiedAccount:v1 withCompletionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    sub_240A2AE9C();
    v4 = sub_240A2AFFC();
    v5 = sub_240A2C2CC();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[48];
    v8 = v0[49];
    v9 = v0[42];
    v10 = v0[39];
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2408FE000, v4, v5, "No primary account available.", v11, 2u);
      MEMORY[0x245CCDDB0](v11, -1, -1);
    }

    v7(v9, v10);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_2409DE220()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 416) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_2409DE5FC;
  }

  else
  {
    v5 = sub_2409DE350;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409DE350()
{
  v1 = v0[51];

  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[43];
  v9 = v0[39];
  if (v4)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "Successfully cleared pending DOB", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  v6(v8, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2409DE4A4()
{
  v1 = v0[50];

  swift_willThrow();

  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[48];
  v6 = v0[49];
  v7 = v0[42];
  v8 = v0[39];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "No primary account available.", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  v5(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2409DE5FC()
{
  v25 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);

  swift_willThrow();

  sub_240A2AE9C();
  v3 = v2;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 416);
    v7 = *(v0 + 392);
    v23 = *(v0 + 384);
    v21 = *(v0 + 408);
    v22 = *(v0 + 328);
    v20 = *(v0 + 312);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_240A2C6CC();
    v12 = sub_240925464(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2408FE000, v4, v5, "Failed to save account: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x245CCDDB0](v9, -1, -1);
    MEMORY[0x245CCDDB0](v8, -1, -1);

    v23(v22, v20);
  }

  else
  {
    v14 = *(v0 + 408);
    v13 = *(v0 + 416);
    v15 = *(v0 + 384);
    v16 = *(v0 + 328);
    v17 = *(v0 + 312);

    v15(v16, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2409DEE08(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2409DEEB4;

  return sub_2409DFAFC();
}

uint64_t sub_2409DEEB4(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *v1;

  if (v4)
  {
    v6 = *(v3 + 16);
    (v6)[2](v6, a1);

    _Block_release(v6);
  }

  else
  {
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_2409DEFF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240915E50;

  return sub_2409DEE08(v2, v3);
}

uint64_t sub_2409DF0AC()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider contextDidPresentLoginAlertController", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF230()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider contextWillDismissLoginAlertController", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF3B4()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider contextDidDismissLoginAlertController", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 24))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF538()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider contextWillBeginPresentingSecondaryUI", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF6BC()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider contextDidEndPresentingSecondaryUI", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2409DF840()
{
  v0 = sub_240A2B00C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C2CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2408FE000, v4, v5, "AISAppleIDAuthContextProvider remoteUIStyle", v6, 2u);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2409DF978()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v6 = sub_240A2AFFC();
  v7 = sub_240A2C2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2408FE000, v6, v7, "AISAppleIDAuthContextProvider willPresentModalNavigationController", v8, 2u);
    MEMORY[0x245CCDDB0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = v1 + OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 48))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}