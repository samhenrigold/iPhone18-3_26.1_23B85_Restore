uint64_t sub_2696B85A0()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_269854E44();

  return v2;
}

id sub_2696B85F8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_269854A64();
  v5 = [v3 featureValueForName_];

  return v5;
}

id sub_2696B8660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_269854A94();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_2696B86DC(uint64_t a1)
{
  *(v1 + 32) = 1;
  *(v1 + 40) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_2696B86F4()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2696B871C()
{
  sub_2696B86F4();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_2696B8774(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v25[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FB0, &unk_2698667F0);
    v7 = sub_269855364();
  }

  else
  {

    sub_269855594();
    v7 = a1;
  }

  sub_26969329C(0, &qword_280322FB8, 0x277CBFEB0);
  v8 = sub_2697E3918(v7);
  v9 = *(v4 + 16);
  v25[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v25];
  v11 = v25[0];
  if (v10)
  {
    v12 = v10;
    v25[0] = MEMORY[0x277D84F90];
    v13 = sub_26975004C();
    v14 = v11;
    sub_26980E09C(v13, 0);
    v11 = v25[0];
    v15 = [v12 count];
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v16 = v15;
    if (v15)
    {
      v23 = v8;
      v24 = v3;
      v17 = 0;
      do
      {
        v18 = [v12 featuresAtIndex_];
        type metadata accessor for PlayMediaAppSelectionOutput();
        v19 = swift_allocObject();
        *(v19 + 32) = 1;
        *(v19 + 40) = 0;
        *(v19 + 16) = v18;
        *(v19 + 24) = 0;
        swift_unknownObjectRetain();

        MEMORY[0x26D645B90](v20);
        if (*((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_269854CD4();
        }

        ++v17;
        sub_269854CF4();

        swift_unknownObjectRelease();
      }

      while (v16 != v17);
      v11 = v25[0];
      v8 = v23;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v21 = v25[0];
    sub_269851BD4();

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_2696B8A0C()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269855584();
}

id sub_2696B8B00()
{
  type metadata accessor for BaseDialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280322FD0 = result;
  return result;
}

uint64_t sub_2696B8B54()
{
  OUTLINED_FUNCTION_2_7();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_2698543C4();
  v0[10] = v4;
  v0[11] = *(v4 - 8);
  v0[12] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2696B8C10()
{
  sub_2698543A4();
  if (qword_280322430 != -1)
  {
    swift_once();
  }

  v1 = qword_280322FD0;
  sub_269854354();
  v2 = sub_269854344();
  *(v0 + 104) = v2;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  sub_2698543B4();
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_2696B8D48;
  v4 = *(v0 + 96);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  return MEMORY[0x2821B8050](v1, v7, v5, v6, v2, v0 + 16, v4);
}

uint64_t sub_2696B8D48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  v7 = v4[13];
  v8 = *v2;
  *v6 = *v2;
  v5[15] = v1;

  (*(v4[11] + 8))(v4[12], v4[10]);
  sub_2696B9D80((v5 + 2), &qword_280322FE8, &qword_2698590A0);
  if (v1)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {

    v10 = v8[1];

    return v10(a1);
  }
}

uint64_t sub_2696B8F1C()
{
  OUTLINED_FUNCTION_2_7();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2696B8F78()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v0;
  v1[6] = v3;
  v1[7] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v1[3] = v6;
  v7 = sub_2698548D4();
  v1[8] = v7;
  v1[9] = *(v7 - 8);
  v1[10] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2696B905C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v1;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  sub_2698532A4();
  *v5 = v0;
  v5[1] = sub_2696B9164;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822008A0](v6);
}

uint64_t sub_2696B9164()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v2 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v6);
  }

  else
  {

    OUTLINED_FUNCTION_7_7();

    return v7();
  }
}

uint64_t sub_2696B9290()
{
  v25 = v0;

  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2698548B4();
  v8 = sub_269854F24();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v0[2] = v9;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v16 = sub_269854AE4();
    v18 = sub_26974F520(v16, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_269684000, v7, v8, "Error while executing dialog: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D647170](v14, -1, -1);
    MEMORY[0x26D647170](v13, -1, -1);

    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];

    (*(v20 + 8))(v19, v21);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();

  return v22();
}

uint64_t sub_2696B94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v16 = a1;
  v17 = a2;
  v20 = sub_2698543C4();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_269854384();
  if (qword_280322430 != -1)
  {
    swift_once();
  }

  sub_269854354();
  v11 = sub_269854344();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  (*(v8 + 16))(v10, v16, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v10, v7);
  sub_2698543B4();
  sub_269854364();

  (*(v4 + 8))(v6, v20);
  return sub_2696B9D80(v21, &qword_280322FE8, &qword_2698590A0);
}

uint64_t sub_2696B975C(uint64_t a1)
{
  v2 = sub_2698532A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FF0, &qword_2698590A8);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_2696B9DD4(a1, v10 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);
    return sub_269854D44();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);
    return sub_269854D54();
  }
}

uint64_t sub_2696B98F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696B9908()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_6(v1);

  return MEMORY[0x2821BB3C8](v2);
}

uint64_t sub_2696B99A0()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v2 + 80) = v0;

  sub_2696B9D80(v2 + 16, &qword_280322FD8, &qword_269859088);
  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v6);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v7();
  }
}

uint64_t sub_2696B9AD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696B9AE4()
{
  OUTLINED_FUNCTION_2_7();
  sub_2696A73F8(*(v0 + 64), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_4_6(v1);

  return MEMORY[0x2821BAEE8](v2);
}

uint64_t sub_2696B9B80()
{
  OUTLINED_FUNCTION_2_7();
  v2 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v2 + 80) = v0;

  sub_2696B9D80(v2 + 16, &qword_280322FD8, &qword_269859088);
  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v6);
  }

  else
  {
    OUTLINED_FUNCTION_7_7();

    return v7();
  }
}

uint64_t sub_2696B9D04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FE0, &qword_269859098);

  return sub_2696B975C(a1);
}

uint64_t sub_2696B9D80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_7();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2696B9DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322FF0, &qword_2698590A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2696B9F2C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_2696B9F80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 424) = v13;
  *(v8 + 432) = v14;
  *(v8 + 408) = a7;
  *(v8 + 416) = a8;
  *(v8 + 392) = a5;
  *(v8 + 400) = a6;
  *(v8 + 361) = a4;
  *(v8 + 376) = a2;
  *(v8 + 384) = a3;
  *(v8 + 368) = a1;
  v9 = sub_2698548D4();
  *(v8 + 440) = v9;
  *(v8 + 448) = *(v9 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  *(v8 + 480) = OUTLINED_FUNCTION_4_7();
  v10 = sub_2698532A4();
  *(v8 + 488) = v10;
  *(v8 + 496) = *(v10 - 8);
  *(v8 + 504) = OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](sub_2696BA0F8);
}

uint64_t sub_2696BA0F8()
{
  v1 = *(v0 + 400);
  if (v1)
  {
    v29 = *(v0 + 408);
    v30 = *(v0 + 416);
    v28 = *(v0 + 361);
    v27 = *(v0 + 392);
    sub_2696A73F8(*(v0 + 384), v0 + 128);
    v2 = *(v0 + 152);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 128, v2);
    v3 = *(v2 - 8);
    v4 = OUTLINED_FUNCTION_4_7();
    *(v0 + 512) = v4;
    (*(v3 + 16))();
    v5 = *v4;
    v6 = type metadata accessor for BaseDialogProvider();
    *(v0 + 192) = v6;
    *(v0 + 200) = &off_287A3DBA0;
    *(v0 + 168) = v5;
    type metadata accessor for VideoLiveTuneInDialogProvider();
    inited = swift_initStackObject();
    *(v0 + 520) = inited;
    v8 = *(v0 + 192);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 168, v8);
    v10 = *(v8 - 8);
    v11 = OUTLINED_FUNCTION_4_7();
    (*(v10 + 16))(v11, v9, v8);
    v12 = *v11;
    inited[5] = v6;
    inited[6] = &off_287A3DBA0;
    inited[2] = v12;
    __swift_destroy_boxed_opaque_existential_0((v0 + 168));

    __swift_destroy_boxed_opaque_existential_0((v0 + 128));
    *(v0 + 328) = v27;
    *(v0 + 336) = v1;
    *(v0 + 344) = v29;
    *(v0 + 352) = v30;
    *(v0 + 360) = v28;
    v13 = swift_task_alloc();
    *(v0 + 528) = v13;
    *v13 = v0;
    v13[1] = sub_2696BA4B0;
    v14 = *(v0 + 504);

    return sub_2696C3DCC(v14, v0 + 328);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(*(v0 + 440), qword_28033D910);
    v16 = OUTLINED_FUNCTION_2_8();
    v17(v16);
    v18 = sub_2698548B4();
    v19 = sub_269854F24();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_269684000, v18, v19, "createInstallAppViews missing appName", v20, 2u);
      MEMORY[0x26D647170](v20, -1, -1);
    }

    v22 = *(v0 + 448);
    v21 = *(v0 + 456);
    v23 = *(v0 + 440);

    (*(v22 + 8))(v21, v23);
    sub_2696BAE9C();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_3_7(v24, v25, xmmword_2698590B0);

    OUTLINED_FUNCTION_7_7();

    return v26();
  }
}

uint64_t sub_2696BA4B0()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_2696BAC44;
  }

  else
  {
    v2 = sub_2696BA5C4;
  }

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2696BA5C4()
{
  if (*(v0 + 361) == 1)
  {
    v2 = *(v0 + 496);
    v1 = *(v0 + 504);
    v3 = *(v0 + 480);
    v52 = *(v0 + 488);
    v4 = *(v0 + 368);
    __swift_project_boxed_opaque_existential_1(*(v0 + 376), *(*(v0 + 376) + 24));
    sub_269852CA4();
    v5 = sub_269853234();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = sub_2698538F4();
    *(v0 + 288) = 0u;
    *(v0 + 304) = 0u;
    *(v0 + 320) = 0;
    v7 = MEMORY[0x277D5C1D8];
    v4[3] = v6;
    v4[4] = v7;
    __swift_allocate_boxed_opaque_existential_1(v4);
    sub_2698530B4();

    sub_269698048(v0 + 288, &qword_280323028, qword_26985AD20);
    sub_269698048(v3, &qword_280323010, &unk_26985B640);
    (*(v2 + 8))(v1, v52);
  }

  else if (*(v0 + 432))
  {
    sub_2696A73F8(*(v0 + 376), v0 + 208);
    type metadata accessor for LocUtil();
    inited = swift_initStackObject();
    sub_26968E5D4((v0 + 208), inited + 16);
    sub_269830114();
    if (v10)
    {
      v50 = *(v0 + 504);
      v11 = *(v0 + 480);
      v51 = *(v0 + 496);
      v53 = *(v0 + 488);
      v13 = *(v0 + 368);
      v12 = *(v0 + 376);
      v14 = sub_2696BACFC(*(v0 + 424), *(v0 + 432), v9, v10);

      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_269852CA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2698590C0;
      *(v15 + 32) = v14;
      v16 = sub_269853234();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
      v17 = sub_2698538F4();
      *(v0 + 248) = 0u;
      *(v0 + 264) = 0u;
      *(v0 + 280) = 0;
      v18 = MEMORY[0x277D5C1D8];
      v13[3] = v17;
      v13[4] = v18;
      __swift_allocate_boxed_opaque_existential_1(v13);
      v19 = v14;
      sub_2698530B4();

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 16));

      sub_269698048(v0 + 248, &qword_280323028, qword_26985AD20);
      sub_269698048(v11, &qword_280323010, &unk_26985B640);
      (*(v51 + 8))(v50, v53);
    }

    else
    {
      if (qword_2803226E0 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2803226E0);
      }

      v34 = *(v0 + 472);
      v35 = *(v0 + 440);
      v36 = *(v0 + 448);
      v37 = __swift_project_value_buffer(v35, qword_28033D910);
      (*(v36 + 16))(v34, v37, v35);
      v38 = sub_2698548B4();
      v39 = sub_269854F24();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269684000, v38, v39, "createInstallAppViews error localizing string APP_STORE_PUNCHOUT_BUTTON_TEXT", v40, 2u);
        MEMORY[0x26D647170](v40, -1, -1);
      }

      v41 = *(v0 + 520);
      v54 = *(v0 + 504);
      v42 = *(v0 + 488);
      v43 = *(v0 + 496);
      v44 = *(v0 + 472);
      v46 = *(v0 + 440);
      v45 = *(v0 + 448);

      (*(v45 + 8))(v44, v46);
      sub_2696BAE9C();
      swift_allocError();
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *v47 = 7;
      *(v47 + 24) = 3;
      swift_willThrow();
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((v41 + 16));
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 16));
      (*(v43 + 8))(v54, v42);
    }
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(*(v0 + 440), qword_28033D910);
    v20 = OUTLINED_FUNCTION_2_8();
    v21(v20);
    v22 = sub_2698548B4();
    v23 = sub_269854F24();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_269684000, v22, v23, "createInstallAppViews missing appStoreUrl", v24, 2u);
      MEMORY[0x26D647170](v24, -1, -1);
    }

    v25 = *(v0 + 520);
    v26 = *(v0 + 504);
    v27 = *(v0 + 488);
    v28 = *(v0 + 496);
    v29 = *(v0 + 464);
    v30 = *(v0 + 440);
    v31 = *(v0 + 448);

    (*(v31 + 8))(v29, v30);
    sub_2696BAE9C();
    v32 = swift_allocError();
    OUTLINED_FUNCTION_3_7(v32, v33, xmmword_2698590D0);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((v25 + 16));
    (*(v28 + 8))(v26, v27);
  }

  OUTLINED_FUNCTION_7_7();

  return v48();
}

uint64_t sub_2696BAC44()
{
  v1 = *(v0 + 520);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v1 + 16));

  OUTLINED_FUNCTION_7_7();

  return v2();
}

id sub_2696BACFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_2696BAEF0();
  v9 = sub_2696CD66C(1);
  sub_269851C64();
  v10 = sub_269851C74();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    v11 = sub_269851C24();
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  [v9 setPunchOutUri_];

  v12 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  sub_2696BAF34(a3, a4, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2698590C0;
  *(v13 + 32) = v9;
  sub_2696BAF8C(v13, v12);
  return v12;
}

unint64_t sub_2696BAE9C()
{
  result = qword_280323018;
  if (!qword_280323018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323018);
  }

  return result;
}

unint64_t sub_2696BAEF0()
{
  result = qword_280323038;
  if (!qword_280323038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323038);
  }

  return result;
}

void sub_2696BAF34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setText_];
}

void sub_2696BAF8C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803230A0, qword_2698590F0);
  v3 = sub_269854CA4();

  [a2 setCommands_];
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_7(uint64_t a1, __n128 *a2, __n128 a3)
{
  *a2 = a3;
  a2[1].n128_u64[0] = 0;
  a2[1].n128_u8[8] = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_task_alloc();
}

uint64_t sub_2696BB094()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8_4(v5);
  v1[23] = v6;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BB148);
}

uint64_t sub_2696BB148()
{
  v41 = v0;
  if (sub_269688478([*(v0 + 160) code], &unk_287A391A0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2698580D0;
    OUTLINED_FUNCTION_0_11();
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    v5 = sub_2696CB408();
    v6 = MEMORY[0x277D837D0];
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_4_8(v8);
    v9 = INSearchForMediaIntentResponseCodeGetName();
    v10 = sub_269854A94();
    v12 = v11;

    *(inited + 120) = v6;
    *(inited + 96) = v10;
    *(inited + 104) = v12;
    v13 = sub_269854A04();
    OUTLINED_FUNCTION_12_3(v13);
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_3_8(v14);
    OUTLINED_FUNCTION_7_8();

    return sub_2696B8F78();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    __swift_project_value_buffer(*(v0 + 176), qword_281571B38);
    v17 = OUTLINED_FUNCTION_11_4();
    v18(v17);
    v19 = sub_2698548B4();
    v20 = sub_269854F24();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v24 = *(v0 + 176);
    if (v21)
    {
      swift_slowAlloc();
      v25 = OUTLINED_FUNCTION_13_1();
      v40 = v25;
      *v24 = 136315138;
      v26 = INSearchForMediaIntentResponseCodeGetName();
      v27 = sub_269854A94();
      v39 = v22;
      v29 = v28;

      v30 = sub_26974F520(v27, v29, &v40);

      *(v24 + 4) = v30;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v31, v32, "INSearchForMedia.HandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called with unexpected response code %s");
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v23 + 8))(v39);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    sub_26969329C(0, &qword_2815718C8, 0x277CD4030);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_2696BBEF8(ObjCClassFromMetadata);
    if (v34)
    {
      sub_2696BAE9C();
      v35 = swift_allocError();
      OUTLINED_FUNCTION_6_8(v35, v36);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2696BB484(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return MEMORY[0x2822009F8](sub_2696BB4A8);
}

uint64_t sub_2696BB4A8()
{
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  *(inited + 32) = 1651664246;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1684957542;
  *(inited + 56) = 0xE400000000000000;
  OUTLINED_FUNCTION_0_11();
  *(v3 + 64) = v4;
  *(v3 + 72) = v5;
  v6 = sub_2696CB408();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(inited + 80) = v8;
  *(inited + 88) = v9;
  v10 = sub_269854A04();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v0[17] = sub_2697D1A74(v10);

  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  v11[1] = sub_2696BB618;

  return sub_2696B8F78();
}

uint64_t sub_2696BB618()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2696BB718()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBFF8;

  return sub_2696BB094();
}

uint64_t sub_2696BB7D4(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = type metadata accessor for BaseDialogProvider();
  result = swift_allocObject();
  *a2 = v7;
  *a3 = &off_287A3DBA0;
  *a4 = result;
  return result;
}

uint64_t sub_2696BB830()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_8_4(v5);
  v1[23] = v6;
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BB8E4);
}

uint64_t sub_2696BB8E4()
{
  v41 = v0;
  if (sub_269688478([*(v0 + 160) code], &unk_287A391D8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2698580D0;
    OUTLINED_FUNCTION_0_11();
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    v5 = sub_2696CB408();
    v6 = MEMORY[0x277D837D0];
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }

    OUTLINED_FUNCTION_4_8(v8);
    v9 = INPlayMediaIntentResponseCodeGetName();
    v10 = sub_269854A94();
    v12 = v11;

    *(inited + 120) = v6;
    *(inited + 96) = v10;
    *(inited + 104) = v12;
    v13 = sub_269854A04();
    OUTLINED_FUNCTION_12_3(v13);
    v14 = swift_task_alloc();
    *(v0 + 208) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_3_8(v14);
    OUTLINED_FUNCTION_7_8();

    return sub_2696B8F78();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    __swift_project_value_buffer(*(v0 + 176), qword_281571B38);
    v17 = OUTLINED_FUNCTION_11_4();
    v18(v17);
    v19 = sub_2698548B4();
    v20 = sub_269854F24();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 184);
    v22 = *(v0 + 192);
    v24 = *(v0 + 176);
    if (v21)
    {
      swift_slowAlloc();
      v25 = OUTLINED_FUNCTION_13_1();
      v40 = v25;
      *v24 = 136315138;
      v26 = INPlayMediaIntentResponseCodeGetName();
      v27 = sub_269854A94();
      v39 = v22;
      v29 = v28;

      v30 = sub_26974F520(v27, v29, &v40);

      *(v24 + 4) = v30;
      OUTLINED_FUNCTION_14_2(&dword_269684000, v31, v32, "INPlayMedia.HandleIntentFlowStrategy.makeFailureHandlingIntentResponse() called with unexpected response code %s");
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v23 + 8))(v39);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    sub_26969329C(0, &qword_2815718F0, 0x277CD3EC0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_2696BBEF8(ObjCClassFromMetadata);
    if (v34)
    {
      sub_2696BAE9C();
      v35 = swift_allocError();
      OUTLINED_FUNCTION_6_8(v35, v36);

      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_7_8();

      __asm { BRAA            X1, X16 }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2696BBC20()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2696BBD64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696BBE14;

  return sub_2696BB830();
}

uint64_t sub_2696BBE14()
{
  OUTLINED_FUNCTION_2_7();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  OUTLINED_FUNCTION_7_7();

  return v3();
}

uint64_t sub_2696BBEF8(void *a1)
{
  v1 = [a1 typeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_2696BBF5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2696BBF9C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_4_8@<X0>(uint64_t a1@<X8>)
{
  v4[6] = a1;
  v4[7] = v1;
  v4[9] = v3;
  v4[10] = 1701080931;
  v4[11] = 0xE400000000000000;
  return v2;
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2)
{
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v2;
  *(a2 + 24) = 2;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_12_3(uint64_t a1)
{
  *(v2 + 200) = a1;
  v4 = v1[3];

  return __swift_project_boxed_opaque_existential_1(v1, v4);
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_14_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_2696BC148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_2698548D4();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BC210);
}

uint64_t sub_2696BC210()
{
  v2 = v0[20];
  v1 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_2698580D0);
  v4 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_7_9();
  v7 = 0xE000000000000000;
  if (!v8)
  {
    v7 = v5;
  }

  inited[3].n128_u64[0] = v6;
  inited[3].n128_u64[1] = v7;
  inited[4].n128_u64[1] = v4;
  inited[5].n128_u64[0] = 0x6574656D61726170;
  inited[7].n128_u64[1] = v4;
  inited[5].n128_u64[1] = 0xE900000000000072;
  inited[6].n128_u64[0] = v2;
  inited[6].n128_u64[1] = v1;

  v0[26] = sub_269854A04();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v0[23], qword_281571B38);
  v9 = OUTLINED_FUNCTION_11_4();
  v10(v9);
  v11 = sub_2698548B4();
  v12 = sub_269854F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    OUTLINED_FUNCTION_15_2(&dword_269684000, v14, v15, "executing dialog VideoThirdParty#UnsupportedParameterValue");
    MEMORY[0x26D647170](v13, -1, -1);
  }

  v17 = v0[24];
  v16 = v0[25];
  v19 = v0[22];
  v18 = v0[23];

  (*(v17 + 8))(v16, v18);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v20 = swift_task_alloc();
  v0[27] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_14_3(v20);

  return sub_2696B8F78();
}

uint64_t sub_2696BC43C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2696BC564(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC57C()
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v5 = 0xE000000000000000;
  if (!v6)
  {
    v5 = v2;
  }

  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_11_5(v1, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_3_9();
  v7 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_10(v9);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BC678(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC690()
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v5 = 0xE000000000000000;
  if (!v6)
  {
    v5 = v2;
  }

  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_11_5(v1, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_3_9();
  v7 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_10(v9);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BC78C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC7A4()
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v5 = 0xE000000000000000;
  if (!v6)
  {
    v5 = v2;
  }

  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_11_5(v1, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_3_9();
  v7 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_10(v9);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BC8A0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2696BC9A8(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BC9C0()
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v5 = 0xE000000000000000;
  if (!v6)
  {
    v5 = v2;
  }

  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_11_5(v1, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_3_9();
  v7 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_10(v9);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BCABC(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BCAD4()
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v5 = 0xE000000000000000;
  if (!v6)
  {
    v5 = v2;
  }

  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_11_5(v1, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_3_9();
  v7 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_10(v9);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BCBD0(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BCBE8()
{
  OUTLINED_FUNCTION_8_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_269857710);
  OUTLINED_FUNCTION_7_9();
  v5 = 0xE000000000000000;
  if (!v6)
  {
    v5 = v2;
  }

  inited[3].n128_u64[0] = v4;
  inited[3].n128_u64[1] = v5;
  OUTLINED_FUNCTION_11_5(v1, MEMORY[0x277D837D0], v3, MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_3_9();
  v7 = OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_5_8(v7);
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_4_9(v8);
  *v9 = v10;
  OUTLINED_FUNCTION_2_10(v9);
  OUTLINED_FUNCTION_9_5();

  return sub_2696B8F78();
}

uint64_t sub_2696BCCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_2698548D4();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696BCDA8);
}

uint64_t sub_2696BCDA8()
{
  v1 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_1_7(inited, xmmword_2698580D0);
  v3 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_7_9();
  v6 = 0xE000000000000000;
  if (!v7)
  {
    v6 = v4;
  }

  inited[3].n128_u64[0] = v5;
  inited[3].n128_u64[1] = v6;
  inited[4].n128_u64[1] = v3;
  inited[5].n128_u64[0] = 0x707954616964656DLL;
  inited[5].n128_u64[1] = 0xE900000000000065;
  type metadata accessor for INMediaItemType(0);
  inited[7].n128_u64[1] = v8;
  inited[6].n128_u64[0] = v1;
  v0[25] = sub_269854A04();
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  __swift_project_value_buffer(v0[22], qword_281571B38);
  v9 = OUTLINED_FUNCTION_11_4();
  v10(v9);
  v11 = sub_2698548B4();
  v12 = sub_269854F14();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    OUTLINED_FUNCTION_15_2(&dword_269684000, v14, v15, "executing dialog VideoThirdParty#UnsupportedMediaItemsUnsupportedMediaType");
    MEMORY[0x26D647170](v13, -1, -1);
  }

  v17 = v0[23];
  v16 = v0[24];
  v19 = v0[21];
  v18 = v0[22];

  (*(v17 + 8))(v16, v18);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v20 = swift_task_alloc();
  v0[26] = v20;
  *v20 = v0;
  OUTLINED_FUNCTION_14_3(v20);

  return sub_2696B8F78();
}

uint64_t sub_2696BCFD0()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t OUTLINED_FUNCTION_1_7(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x656D614E707061;
  a1[2].n128_u64[1] = 0xE700000000000000;

  return sub_2696CB408();
}

uint64_t OUTLINED_FUNCTION_5_8(uint64_t a1)
{
  *(v1 + 104) = a1;
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_269854A04();
}

unint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_2697D1A74(v0);
}

void OUTLINED_FUNCTION_15_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2696BD220(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BD234()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_16_3(*(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x73656369766564;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  *(inited + 48) = v1;

  *(v0 + 112) = sub_269854A04();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_2696BD374;
  OUTLINED_FUNCTION_24_0();

  return sub_2696B8B54();
}

uint64_t sub_2696BD374()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2696BD488(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2696BD510()
{
  sub_269855674();
  MEMORY[0x26D646580](0);
  return sub_2698556C4();
}

uint64_t sub_2696BD584(uint64_t a1)
{
  sub_269855674();
  MEMORY[0x26D646580](0);
  return sub_2698556C4();
}

uint64_t sub_2696BD5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BD488(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2696BD610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696BD508();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2696BD63C(uint64_t a1)
{
  v2 = sub_2696C2768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696BD678(uint64_t a1)
{
  v2 = sub_2696C2768();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2696BD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_43();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323158, &qword_2698596D0);
  OUTLINED_FUNCTION_8();
  v26 = v25;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2696C2768();
  sub_2698556F4();
  sub_2698554C4();
  (*(v26 + 8))(v29, v24);
  OUTLINED_FUNCTION_44();
}

void sub_2696BD7D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323168, &qword_2698596D8);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C2768();
  sub_2698556E4();
  if (!v1)
  {
    sub_269855414();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  OUTLINED_FUNCTION_50();
}

void sub_2696BD91C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2696BD7D4(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_2696BD964()
{
  OUTLINED_FUNCTION_2_7();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2696BD9F0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_16_3(*(v0 + 96));
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  sub_2696C221C();
  v3 = sub_269851AB4();
  v5 = v4;
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  v6 = sub_269851C84();
  *(v0 + 64) = 0;
  v7 = OUTLINED_FUNCTION_41(v6, sel_JSONObjectWithData_options_error_);

  v8 = *(v0 + 64);
  if (v7)
  {
    v9 = v8;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_42())
    {
      sub_2696C1F3C(v3, v5);
      v7 = *(v0 + 72);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = v8;
    v11 = sub_269851BD4();

    v7 = v11;
    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_8:
  *(v0 + 104) = v7;
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  OUTLINED_FUNCTION_37(v14);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(23);

  return sub_2696B8B54();
}

uint64_t sub_2696BDC68(uint64_t a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();

  OUTLINED_FUNCTION_35();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2696BDDBC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696BDDD4(uint64_t a1)
{
  OUTLINED_FUNCTION_34();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  OUTLINED_FUNCTION_16_3(*(v1 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0x656D614E707061;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  *(v1 + 120) = sub_269854A04();
  v5 = swift_task_alloc();
  *(v1 + 128) = v5;
  *v5 = v1;
  v5[1] = sub_2696BDF10;
  OUTLINED_FUNCTION_24_0();

  return sub_2696B8B54();
}

uint64_t sub_2696BDF10()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2696BE024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656D61536E497369 && a2 == 0xEC0000006D6F6F52;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6563697665447369 && a2 == 0xEE007065656C7341)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2696BE220(char a1)
{
  result = 0x54746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73616573;
      break;
    case 2:
      result = 0x65646F73697065;
      break;
    case 3:
      v3 = 0x614E6D6F6F72;
      goto LABEL_6;
    case 4:
      v3 = 0x61536E497369;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 5:
      result = 0x6563697665447369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2696BE2E8()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323138, &qword_2698596C0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_2696C26C0();
  OUTLINED_FUNCTION_20_1(&type metadata for VideoDialogProvider.PlayContentOnRemoteParams.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_5_9();
  sub_2698554E4();
  if (!v0)
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_5_9();
    sub_2698554E4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_5_9();
    sub_2698554E4();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_5_9();
    sub_2698554E4();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  v5(v4);
  OUTLINED_FUNCTION_50();
}

void sub_2696BE474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_43();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323178, &qword_2698596E8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2696C26C0();
  sub_2698556E4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    LOBYTE(v51[0]) = 0;
    v30 = sub_269855464();
    v49 = v31;
    OUTLINED_FUNCTION_6_9(1);
    v32 = sub_269855464();
    v34 = v33;
    v47 = v32;
    v48 = v28;
    OUTLINED_FUNCTION_6_9(2);
    v35 = sub_269855464();
    v37 = v36;
    v45 = v35;
    v46 = v30;
    OUTLINED_FUNCTION_6_9(3);
    v38 = sub_269855464();
    v40 = v39;
    v44 = v38;
    OUTLINED_FUNCTION_6_9(4);
    v54 = sub_269855474();
    v41 = sub_269855474();
    v54 &= 1u;
    v42 = OUTLINED_FUNCTION_12_5();
    v43(v42);
    v50[0] = v46;
    v50[1] = v49;
    v50[2] = v47;
    v50[3] = v34;
    v50[4] = v45;
    v50[5] = v37;
    v50[6] = v44;
    v50[7] = v40;
    LOBYTE(v50[8]) = v54;
    BYTE1(v50[8]) = v41 & 1;
    sub_2696C2824(v50, v51);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v51[0] = v46;
    v51[1] = v49;
    v51[2] = v47;
    v51[3] = v34;
    v51[4] = v45;
    v51[5] = v37;
    v51[6] = v44;
    v51[7] = v40;
    v52 = v54;
    v53 = v41 & 1;
    sub_2696C285C(v51);
    memcpy(v48, v50, 0x42uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696BE7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BE024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696BE7FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696BE218();
  *a1 = result;
  return result;
}

uint64_t sub_2696BE824(uint64_t a1)
{
  v2 = sub_2696C26C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696BE860(uint64_t a1)
{
  v2 = sub_2696C26C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2696BE89C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_2696BE474(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD1(__src[0]), SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x42uLL);
  }
}

uint64_t sub_2696BE900()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696BE988()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v1 + 136);
  OUTLINED_FUNCTION_16_3(*(v1 + 144));
  memcpy((v1 + 16), v2, 0x42uLL);
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C2174();
  OUTLINED_FUNCTION_53(v3, &unk_287A3DF70, v3);
  if (v0)
  {

    v4 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v5 = sub_269851C84();
  *(v1 + 120) = 0;
  v4 = OUTLINED_FUNCTION_38(v5, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 120);
  if (v4)
  {
    v7 = v6;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v8 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v8, v9);
      v4 = *(v1 + 128);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    OUTLINED_FUNCTION_22_1();
    v11 = sub_269851BD4();

    v4 = v11;
    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  *(v1 + 152) = v4;
  v14 = swift_task_alloc();
  *(v1 + 160) = v14;
  *v14 = v1;
  OUTLINED_FUNCTION_37(v14);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(25);

  return sub_2696B8B54();
}

uint64_t sub_2696BEBE4(uint64_t a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();

  OUTLINED_FUNCTION_35();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2696BED38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEC000000656C7469;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

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

uint64_t sub_2696BEEA0(char a1)
{
  result = 0x54746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73616573;
      break;
    case 2:
      result = 0x65646F73697065;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2696BEF28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323128, &qword_2698596B8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_2696C266C();
  OUTLINED_FUNCTION_20_1(&type metadata for VideoDialogProvider.PlayContentParams.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_17_3();
  sub_2698554E4();
  if (!v0)
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_17_3();
    sub_2698554E4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_17_3();
    sub_2698554E4();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_17_3();
    sub_2698554C4();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  return v5(v4);
}

void sub_2696BF088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_43();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323180, &qword_2698596F0);
  OUTLINED_FUNCTION_8();
  v30 = v29;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v46 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2696C266C();
  sub_2698556E4();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    LOBYTE(v53[0]) = 0;
    OUTLINED_FUNCTION_29_0();
    v34 = sub_269855464();
    v36 = v35;
    LOBYTE(v53[0]) = 1;
    OUTLINED_FUNCTION_29_0();
    *&v48 = sub_269855464();
    *(&v48 + 1) = v37;
    LOBYTE(v53[0]) = 2;
    OUTLINED_FUNCTION_29_0();
    *&v47 = sub_269855464();
    *(&v47 + 1) = v38;
    OUTLINED_FUNCTION_29_0();
    v39 = sub_269855414();
    v40 = v33;
    v42 = v41;
    (*(v30 + 8))(v40, v28);
    *&v49 = v34;
    *(&v49 + 1) = v36;
    v43 = v48;
    v50 = v48;
    v51 = v47;
    *&v52 = v39;
    *(&v52 + 1) = v42;
    sub_2696C288C(&v49, v53);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v53[0] = v34;
    v53[1] = v36;
    v54 = v43;
    v55 = v47;
    v56 = v39;
    v57 = v42;
    sub_2696C28C4(v53);
    v44 = v50;
    *v27 = v49;
    v27[1] = v44;
    v45 = v52;
    v27[2] = v51;
    v27[3] = v45;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696BF314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BED38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696BF33C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696BEE98();
  *a1 = result;
  return result;
}

uint64_t sub_2696BF364(uint64_t a1)
{
  v2 = sub_2696C266C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696BF3A0(uint64_t a1)
{
  v2 = sub_2696C266C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696BF3DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_2696BF088(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14), v15, v17, v18, v20, v21, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    result = *&v19;
    a9[2] = v19;
    a9[3] = v22;
  }

  return result;
}

uint64_t sub_2696BF438()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696BF4C0()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v1 + 128);
  OUTLINED_FUNCTION_16_3(*(v1 + 136));
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v1 + 48) = v2[2];
  *(v1 + 64) = v3;
  *(v1 + 16) = v5;
  *(v1 + 32) = v4;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v6 = sub_2696C2120();
  OUTLINED_FUNCTION_53(v6, &unk_287A3E000, v6);
  if (v0)
  {

    v7 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v8 = sub_269851C84();
  *(v1 + 112) = 0;
  v7 = OUTLINED_FUNCTION_38(v8, sel_JSONObjectWithData_options_error_);

  v9 = *(v1 + 112);
  if (v7)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v11 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v11, v12);
      v7 = *(v1 + 120);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v9;
    OUTLINED_FUNCTION_22_1();
    v14 = sub_269851BD4();

    v7 = v14;
    swift_willThrow();
  }

  sub_269854A04();
  v15 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v15, v16);
LABEL_10:
  *(v1 + 144) = v7;
  v17 = swift_task_alloc();
  *(v1 + 152) = v17;
  *v17 = v1;
  OUTLINED_FUNCTION_37(v17);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(17);

  return sub_2696B8B54();
}

uint64_t sub_2696BF71C(uint64_t a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();

  OUTLINED_FUNCTION_35();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2696BF870(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x59657361656C6572 && a2 == 0xEB00000000726165;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000026987C8F0 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E69746152736168 && a2 == 0xE900000000000067;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x776F68537369 && a2 == 0xE600000000000000;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6843776F68537369 && a2 == 0xEB00000000646C69)
          {

            return 5;
          }

          else
          {
            v11 = sub_269855584();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_2696BFA70(char a1)
{
  result = 0x59657361656C6572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x754E6E6F73616573;
      break;
    case 3:
      result = 0x6E69746152736168;
      break;
    case 4:
      result = 0x776F68537369;
      break;
    case 5:
      result = 0x6843776F68537369;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2696BFB40()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323148, &qword_2698596C8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_2696C2714();
  OUTLINED_FUNCTION_20_1(&type metadata for VideoDialogProvider.MetadataParams.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_5_9();
  sub_2698554D4();
  if (!v0)
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_5_9();
    sub_2698554D4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_5_9();
    sub_2698554C4();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  v5(v4);
  OUTLINED_FUNCTION_50();
}

void sub_2696BFCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_43();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323170, &qword_2698596E0);
  OUTLINED_FUNCTION_8();
  v16 = v15;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v17);
  v51 = 1;
  v18 = v12[3];
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v18);
  sub_2696C2714();
  sub_2698556E4();
  if (v10)
  {
    OUTLINED_FUNCTION_26_0();
    __swift_destroy_boxed_opaque_existential_0(v12);
    v39 = 0;
    v40 = 1;
    *v41 = *(&a10 + 1);
    *&v41[3] = HIDWORD(a10);
    v42 = 0;
    v43 = v51;
    *v44 = *v50;
    *&v44[3] = *&v50[3];
    v45 = v16;
    v46 = v14;
    v47 = v18;
    v48 = v19;
    v49 = 0;
    sub_2696C27BC(&v39);
  }

  else
  {
    LOBYTE(v39) = 0;
    v34 = sub_269855444();
    v52 = v20 & 1;
    OUTLINED_FUNCTION_7_10(1);
    v33 = sub_269855444();
    v32 = v14;
    v51 = v21 & 1;
    OUTLINED_FUNCTION_7_10(2);
    v22 = sub_269855414();
    v24 = v23;
    OUTLINED_FUNCTION_7_10(3);
    v25 = sub_269855474() & 1;
    OUTLINED_FUNCTION_7_10(4);
    v26 = sub_269855474() & 1;
    v38 = 5;
    v27 = sub_269855474();
    v28 = OUTLINED_FUNCTION_8_6();
    v29(v28);
    *&v35 = v34;
    BYTE8(v35) = v52;
    *&v36 = v33;
    v30 = v51;
    BYTE8(v36) = v51;
    *v37 = v22;
    *&v37[8] = v24;
    v37[16] = v25;
    v37[17] = v26;
    v37[18] = v27 & 1;
    sub_2696C27EC(&v35, &v39);
    __swift_destroy_boxed_opaque_existential_0(v12);
    v39 = v34;
    v40 = v52;
    v42 = v33;
    v43 = v30;
    v45 = v22;
    v46 = v24;
    v47 = v25;
    v48 = v26;
    v49 = v27 & 1;
    sub_2696C27BC(&v39);
    v31 = v36;
    *v32 = v35;
    *(v32 + 16) = v31;
    *(v32 + 32) = *v37;
    *(v32 + 47) = *&v37[15];
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696C005C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696BF870(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C0084(uint64_t a1)
{
  v2 = sub_2696C2714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C00C0(uint64_t a1)
{
  v2 = sub_2696C2714();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C00FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2696BFCD8(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13);
  if (!v9)
  {
    *a9 = v13;
    *(a9 + 16) = v14;
    result = *v15;
    *(a9 + 32) = *v15;
    *(a9 + 47) = *&v15[15];
  }

  return result;
}

uint64_t sub_2696C0164()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C01EC()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v1 + 120);
  OUTLINED_FUNCTION_16_3(*(v1 + 128));
  v4 = v2[1];
  v3 = v2[2];
  v5 = *v2;
  *(v1 + 63) = *(v2 + 47);
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  *(v1 + 16) = v5;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v6 = sub_2696C21C8();
  OUTLINED_FUNCTION_53(v6, &unk_287A3DEE0, v6);
  if (v0)
  {

    v7 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v8 = sub_269851C84();
  *(v1 + 104) = 0;
  v7 = OUTLINED_FUNCTION_38(v8, sel_JSONObjectWithData_options_error_);

  v9 = *(v1 + 104);
  if (v7)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v11 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v11, v12);
      v7 = *(v1 + 112);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v9;
    OUTLINED_FUNCTION_22_1();
    v14 = sub_269851BD4();

    v7 = v14;
    swift_willThrow();
  }

  sub_269854A04();
  v15 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v15, v16);
LABEL_10:
  *(v1 + 136) = v7;
  v17 = swift_task_alloc();
  *(v1 + 144) = v17;
  *v17 = v1;
  OUTLINED_FUNCTION_37(v17);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(25);

  return sub_2696B8B54();
}

uint64_t sub_2696C0450(uint64_t a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();

  OUTLINED_FUNCTION_35();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2696C05A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x800000026987C850 == a2;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000026987C870 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000026987C890 == a2;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001BLL && 0x800000026987C8B0 == a2;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x800000026987C8D0 == a2;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1701667182 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_269855584();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2696C07E0(unsigned __int8 a1)
{
  sub_269855674();
  MEMORY[0x26D646580](a1);
  return sub_2698556C4();
}

unint64_t sub_2696C0828(char a1)
{
  result = 0x656D614E6D6F6F72;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      return result;
    case 6:
      result = 1701667182;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

void sub_2696C0904()
{
  OUTLINED_FUNCTION_39();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323118, &qword_2698596B0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_21_2();
  v2 = sub_2696C2618();
  OUTLINED_FUNCTION_20_1(&type metadata for VideoDialogProvider.RemoteDeviceNotFoundParams.CodingKeys, v3, v2);
  OUTLINED_FUNCTION_15_3();
  sub_2698554F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_47();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_15_3();
    sub_2698554F4();
    OUTLINED_FUNCTION_5_9();
    sub_2698554C4();
    OUTLINED_FUNCTION_5_9();
    sub_2698554C4();
  }

  v4 = OUTLINED_FUNCTION_27_0();
  v5(v4);
  OUTLINED_FUNCTION_50();
}

void sub_2696C0ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_43();
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323188, &qword_2698596F8);
  OUTLINED_FUNCTION_8();
  v28 = v27;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  v30 = v23[3];
  v31 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v30);
  sub_2696C2618();
  sub_2698556E4();
  if (v21)
  {
    OUTLINED_FUNCTION_14_4();
    __swift_destroy_boxed_opaque_existential_0(v23);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = v28;
    v53 = v25;
    v54 = *(&a11 + 1);
    v55 = HIBYTE(a11);
    v56 = v31;
    v57 = v30;
    v58 = 0;
    v59 = 0;
    sub_2696C28F4(&v49);
  }

  else
  {
    v49 = 0;
    v60 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(1);
    v45 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(2);
    v44 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(3);
    v32 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(4);
    v43 = v25;
    v33 = sub_269855474() & 1;
    OUTLINED_FUNCTION_2_11(5);
    v34 = sub_269855414();
    v36 = v35;
    v37 = sub_269855414();
    v38 = OUTLINED_FUNCTION_23_0();
    v40 = v39;
    v41(v38, v26);
    LOBYTE(v46) = v60;
    BYTE1(v46) = v45;
    BYTE2(v46) = v44;
    BYTE3(v46) = v32;
    BYTE4(v46) = v33;
    *(&v46 + 1) = v34;
    *&v47 = v36;
    *(&v47 + 1) = v37;
    v48 = v40;
    sub_2696C2924(&v46, &v49);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v49 = v60;
    v50 = v45;
    v51 = v44;
    v52 = v32;
    v53 = v33;
    v56 = v34;
    v57 = v36;
    v58 = v37;
    v59 = v40;
    sub_2696C28F4(&v49);
    v42 = v47;
    *v43 = v46;
    *(v43 + 16) = v42;
    *(v43 + 32) = v48;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2696C0E40(uint64_t a1)
{
  v2 = *v1;
  sub_269855674();
  MEMORY[0x26D646580](v2);
  return sub_2698556C4();
}

uint64_t sub_2696C0E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C05A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C0EB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696C07D8();
  *a1 = result;
  return result;
}

uint64_t sub_2696C0EDC(uint64_t a1)
{
  v2 = sub_2696C2618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C0F18(uint64_t a1)
{
  v2 = sub_2696C2618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2696C0FB4()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C103C()
{
  OUTLINED_FUNCTION_49();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_16_3(*(v1 + 112));
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v1 + 16) = *v2;
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v5 = sub_2696C13EC();
  OUTLINED_FUNCTION_53(v5, &unk_287A3E088, v5);
  if (v0)
  {

    v6 = sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_45();
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v7 = sub_269851C84();
  *(v1 + 88) = 0;
  v6 = OUTLINED_FUNCTION_38(v7, sel_JSONObjectWithData_options_error_);

  v8 = *(v1 + 88);
  if (v6)
  {
    v9 = v8;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_52())
    {
      v10 = OUTLINED_FUNCTION_18_3();
      sub_2696C1F3C(v10, v11);
      v6 = *(v1 + 96);
      goto LABEL_10;
    }
  }

  else
  {
    v12 = v8;
    OUTLINED_FUNCTION_22_1();
    v13 = sub_269851BD4();

    v6 = v13;
    swift_willThrow();
  }

  sub_269854A04();
  v14 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v14, v15);
LABEL_10:
  *(v1 + 120) = v6;
  v16 = swift_task_alloc();
  *(v1 + 128) = v16;
  *v16 = v1;
  OUTLINED_FUNCTION_37(v16);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(26);

  return sub_2696B8B54();
}

uint64_t sub_2696C1298(uint64_t a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();

  OUTLINED_FUNCTION_35();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_2696C13EC()
{
  result = qword_2803230B0;
  if (!qword_2803230B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230B0);
  }

  return result;
}

uint64_t sub_2696C1440()
{
  OUTLINED_FUNCTION_2_7();
  v1[18] = v2;
  v1[19] = v0;
  v1[17] = v3;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2696C14CC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_16_3(*(v0 + 152));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C0, &unk_269859340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  strcpy((inited + 32), "contentTitle");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = v2;
  *(inited + 56) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322EA0, &unk_2698577C0);
  *(v0 + 112) = sub_269854A04();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230C8, &qword_269859350);
  v5 = sub_2696C1F94();
  v6 = OUTLINED_FUNCTION_51(v5);
  if (v4)
  {

    v8 = sub_269854A04();
    goto LABEL_10;
  }

  v9 = v6;
  v10 = v7;

  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  v11 = sub_269851C84();
  *(v0 + 120) = 0;
  v8 = OUTLINED_FUNCTION_41(v11, sel_JSONObjectWithData_options_error_);

  v12 = *(v0 + 120);
  if (v8)
  {
    v13 = v12;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_42())
    {
      sub_2696C1F3C(v9, v10);
      v8 = *(v0 + 128);
      goto LABEL_10;
    }
  }

  else
  {
    v14 = v12;
    v15 = sub_269851BD4();

    v8 = v15;
    swift_willThrow();
  }

  sub_269854A04();
  v16 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v16, v17);
LABEL_10:
  *(v0 + 160) = v8;
  v18 = swift_task_alloc();
  *(v0 + 168) = v18;
  *v18 = v0;
  OUTLINED_FUNCTION_37(v18);
  OUTLINED_FUNCTION_11_6();
  OUTLINED_FUNCTION_32(23);

  return sub_2696B8B54();
}

uint64_t sub_2696C17E4(uint64_t a1)
{
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  OUTLINED_FUNCTION_36();

  OUTLINED_FUNCTION_35();
  if (!v1)
  {
    OUTLINED_FUNCTION_10_5();
  }

  OUTLINED_FUNCTION_56();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2696C1938()
{
  OUTLINED_FUNCTION_2_7();
  *(v1 + 128) = v0;
  *(v1 + 152) = v2;
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C19C4()
{
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_16_3(*(v0 + 128));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230E0, &qword_269859360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000026987C720;
  *(inited + 48) = v1;
  *(v0 + 104) = sub_269854A04();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230E8, &qword_269859368);
  v4 = sub_2696C209C();
  v5 = OUTLINED_FUNCTION_51(v4);
  if (v3)
  {

    v7 = sub_269854A04();
    goto LABEL_10;
  }

  v8 = v5;
  v9 = v6;

  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  v10 = sub_269851C84();
  *(v0 + 112) = 0;
  v7 = OUTLINED_FUNCTION_41(v10, sel_JSONObjectWithData_options_error_);

  v11 = *(v0 + 112);
  if (v7)
  {
    v12 = v11;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_42())
    {
      sub_2696C1F3C(v8, v9);
      v7 = *(v0 + 120);
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v11;
    v14 = sub_269851BD4();

    v7 = v14;
    swift_willThrow();
  }

  sub_269854A04();
  v15 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v15, v16);
LABEL_10:
  *(v0 + 136) = v7;
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  *v17 = v0;
  v17[1] = sub_2696C33DC;

  return sub_2696B8B54();
}

uint64_t sub_2696C1CD0(char a1)
{
  *(v2 + 96) = v1;
  *(v2 + 120) = a1;
  return OUTLINED_FUNCTION_0_9();
}

uint64_t sub_2696C1CE8()
{
  OUTLINED_FUNCTION_8_5();
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x800000026987C720;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(v0 + 104) = sub_269854A04();
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_2696C1E28;

  return sub_2696B8B54();
}

uint64_t sub_2696C1E28()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_28_0();
  v3 = *v2;
  OUTLINED_FUNCTION_1_6();
  *v4 = v3;

  v6 = *(v3 + 8);
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_2696C1F3C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_2696C1F94()
{
  result = qword_2803230D0;
  if (!qword_2803230D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803230C8, &qword_269859350);
    sub_2696C2020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230D0);
  }

  return result;
}

unint64_t sub_2696C2020()
{
  result = qword_2803230D8;
  if (!qword_2803230D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322EA0, &unk_2698577C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230D8);
  }

  return result;
}

unint64_t sub_2696C209C()
{
  result = qword_2803230F0;
  if (!qword_2803230F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803230E8, &qword_269859368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230F0);
  }

  return result;
}

unint64_t sub_2696C2120()
{
  result = qword_2803230F8;
  if (!qword_2803230F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803230F8);
  }

  return result;
}

unint64_t sub_2696C2174()
{
  result = qword_280323100;
  if (!qword_280323100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323100);
  }

  return result;
}

unint64_t sub_2696C21C8()
{
  result = qword_280323108;
  if (!qword_280323108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323108);
  }

  return result;
}

unint64_t sub_2696C221C()
{
  result = qword_280323110;
  if (!qword_280323110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323110);
  }

  return result;
}

uint64_t sub_2696C2270(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2696C22C4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2696C233C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 51))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2696C2390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_2696C240C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_2696C244C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t sub_2696C24C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2696C2500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2696C255C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2696C25B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2696C2618()
{
  result = qword_280323120;
  if (!qword_280323120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323120);
  }

  return result;
}

unint64_t sub_2696C266C()
{
  result = qword_280323130;
  if (!qword_280323130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323130);
  }

  return result;
}

unint64_t sub_2696C26C0()
{
  result = qword_280323140;
  if (!qword_280323140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323140);
  }

  return result;
}

unint64_t sub_2696C2714()
{
  result = qword_280323150;
  if (!qword_280323150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323150);
  }

  return result;
}

unint64_t sub_2696C2768()
{
  result = qword_280323160;
  if (!qword_280323160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323160);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoDialogProvider.ConfirmRemotePlayParams.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for VideoDialogProvider.ConfirmRemotePlayParams.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DeviceSelectionInteractionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2696C2B08(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VideoDialogProvider.PlayContentParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoDialogProvider.PlayContentParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for VideoDialogProvider.RemoteDeviceNotFoundParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoDialogProvider.RemoteDeviceNotFoundParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2696C2EB0()
{
  result = qword_280323190;
  if (!qword_280323190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323190);
  }

  return result;
}

unint64_t sub_2696C2F08()
{
  result = qword_280323198;
  if (!qword_280323198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323198);
  }

  return result;
}

unint64_t sub_2696C2F60()
{
  result = qword_2803231A0;
  if (!qword_2803231A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231A0);
  }

  return result;
}

unint64_t sub_2696C2FB8()
{
  result = qword_2803231A8;
  if (!qword_2803231A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231A8);
  }

  return result;
}

unint64_t sub_2696C3010()
{
  result = qword_2803231B0;
  if (!qword_2803231B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231B0);
  }

  return result;
}

unint64_t sub_2696C3068()
{
  result = qword_2803231B8;
  if (!qword_2803231B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231B8);
  }

  return result;
}

unint64_t sub_2696C30C0()
{
  result = qword_2803231C0;
  if (!qword_2803231C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231C0);
  }

  return result;
}

unint64_t sub_2696C3118()
{
  result = qword_2803231C8;
  if (!qword_2803231C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231C8);
  }

  return result;
}

unint64_t sub_2696C3170()
{
  result = qword_2803231D0;
  if (!qword_2803231D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231D0);
  }

  return result;
}

unint64_t sub_2696C31C8()
{
  result = qword_2803231D8;
  if (!qword_2803231D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231D8);
  }

  return result;
}

unint64_t sub_2696C3220()
{
  result = qword_2803231E0;
  if (!qword_2803231E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231E0);
  }

  return result;
}

unint64_t sub_2696C3278()
{
  result = qword_2803231E8;
  if (!qword_2803231E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231E8);
  }

  return result;
}

unint64_t sub_2696C32D0()
{
  result = qword_2803231F0;
  if (!qword_2803231F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231F0);
  }

  return result;
}

unint64_t sub_2696C3328()
{
  result = qword_2803231F8;
  if (!qword_2803231F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803231F8);
  }

  return result;
}

unint64_t sub_2696C3380()
{
  result = qword_280323200;
  if (!qword_280323200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323200);
  }

  return result;
}

uint64_t sub_2696C33DC()
{
  OUTLINED_FUNCTION_2_7();

  return sub_2696C0450(v0);
}

uint64_t OUTLINED_FUNCTION_0_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2698556F4();
}

id OUTLINED_FUNCTION_38(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_41(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_51(uint64_t a1)
{

  return sub_269851AB4();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269851AB4();
}

uint64_t sub_2696C3804(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65746F6D65527369 && a2 == 0xEF74736575716552)
    {

      return 2;
    }

    else
    {
      v8 = sub_269855584();

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

uint64_t sub_2696C3928(char a1)
{
  if (!a1)
  {
    return 0x656D614E707061;
  }

  if (a1 == 1)
  {
    return 0x4E65636976726573;
  }

  return 0x65746F6D65527369;
}

uint64_t sub_2696C3994(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323228, &qword_269859DD8);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_2696C4FC0();
  OUTLINED_FUNCTION_20_1(&type metadata for VideoLiveTuneInDialogProvider.AppNotFoundParams.CodingKeys, v10, v9);
  v12[15] = 0;
  OUTLINED_FUNCTION_1_8();
  sub_2698554E4();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_1_8();
    sub_2698554C4();
    OUTLINED_FUNCTION_7_11();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2696C3AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323238, &qword_269859DE0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = sub_2696C4FC0();
  OUTLINED_FUNCTION_10_6(&type metadata for VideoLiveTuneInDialogProvider.AppNotFoundParams.CodingKeys, v9, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_8_7();
  sub_269855464();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_8_7();
  v10 = sub_269855414();
  OUTLINED_FUNCTION_12_6(v10, v11);
  OUTLINED_FUNCTION_8_7();
  v12 = sub_269855474();
  v13 = OUTLINED_FUNCTION_3_11();
  v14(v13);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v12 & 1;
  return result;
}

uint64_t sub_2696C3CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C3804(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C3CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696C3920();
  *a1 = result;
  return result;
}

uint64_t sub_2696C3CF4(uint64_t a1)
{
  v2 = sub_2696C4FC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C3D30(uint64_t a1)
{
  v2 = sub_2696C4FC0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C3D6C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2696C3AD4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2696C3DCC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;

  return MEMORY[0x2822009F8](sub_2696C3E60);
}

uint64_t sub_2696C3E60()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((*(v0 + 120) + 16), *(*(v0 + 120) + 40));
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  sub_2696C4DC8();
  v4 = sub_269851AB4();
  v6 = v5;
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v7 = sub_269851C84();
  *(v0 + 88) = 0;
  v8 = OUTLINED_FUNCTION_15_4(v7, sel_JSONObjectWithData_options_error_);

  v9 = *(v0 + 88);
  if (v8)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_13_3())
    {
      sub_2696C1F3C(v4, v6);
      v8 = *(v0 + 96);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v9;
    v12 = sub_269851BD4();

    v8 = v12;
    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v13, v14);
LABEL_8:
  *(v0 + 128) = v8;
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_2696C40EC;

  return sub_2696B8F78();
}

uint64_t sub_2696C40EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2696C4258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D61536E497369 && a2 == 0xEC0000006D6F6F52;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6563697665447369 && a2 == 0xEE007065656C7341)
      {

        return 3;
      }

      else
      {
        v9 = sub_269855584();

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

uint64_t sub_2696C43C0(char a1)
{
  result = 0x4E65636976726573;
  switch(a1)
  {
    case 1:
      v3 = 0x614E6D6F6F72;
      goto LABEL_4;
    case 2:
      v3 = 0x61536E497369;
LABEL_4:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 3:
      result = 0x6563697665447369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2696C445C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323218, &qword_269859DD0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_2696C4F6C();
  OUTLINED_FUNCTION_20_1(&type metadata for VideoLiveTuneInDialogProvider.PlayServiceOnRemoteParams.CodingKeys, v10, v9);
  v12[15] = 0;
  OUTLINED_FUNCTION_1_8();
  sub_2698554E4();
  if (!v1)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_1_8();
    sub_2698554E4();
    OUTLINED_FUNCTION_7_11();
    v12[12] = 3;
    sub_2698554F4();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_2696C45C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323240, &qword_269859DE8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = sub_2696C4F6C();
  OUTLINED_FUNCTION_10_6(&type metadata for VideoLiveTuneInDialogProvider.PlayServiceOnRemoteParams.CodingKeys, v9, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_4_10();
  sub_269855464();
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_4_10();
  v10 = sub_269855464();
  OUTLINED_FUNCTION_12_6(v10, v11);
  OUTLINED_FUNCTION_4_10();
  v18 = sub_269855474();
  OUTLINED_FUNCTION_4_10();
  v12 = sub_269855474();
  v13 = OUTLINED_FUNCTION_2_12();
  v14(v13);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18 & 1;
  *(a2 + 33) = v12 & 1;
  return result;
}

uint64_t sub_2696C47C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C4258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2696C47E8(uint64_t a1)
{
  v2 = sub_2696C4F6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C4824(uint64_t a1)
{
  v2 = sub_2696C4F6C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2696C4860@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2696C45C4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_2696C48C0(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;

  return MEMORY[0x2822009F8](sub_2696C4950);
}

uint64_t sub_2696C4950()
{
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((*(v0 + 112) + 16), *(*(v0 + 112) + 40));
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  sub_2696C4D74();
  v4 = sub_269851AB4();
  v6 = v5;
  objc_opt_self();
  OUTLINED_FUNCTION_9_6();
  v7 = sub_269851C84();
  *(v0 + 88) = 0;
  v8 = OUTLINED_FUNCTION_15_4(v7, sel_JSONObjectWithData_options_error_);

  v9 = *(v0 + 88);
  if (v8)
  {
    v10 = v9;
    sub_269855154();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_13_3())
    {
      sub_2696C1F3C(v4, v6);
      v8 = *(v0 + 96);
      goto LABEL_8;
    }
  }

  else
  {
    v11 = v9;
    v12 = sub_269851BD4();

    v8 = v12;
    swift_willThrow();
  }

  sub_269854A04();
  v13 = OUTLINED_FUNCTION_9_6();
  sub_2696C1F3C(v13, v14);
LABEL_8:
  *(v0 + 120) = v8;
  v15 = swift_task_alloc();
  *(v0 + 128) = v15;
  *v15 = v0;
  v15[1] = sub_2696C4BD4;

  return sub_2696B8B54();
}

uint64_t sub_2696C4BD4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_2696C4D74()
{
  result = qword_280323208;
  if (!qword_280323208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323208);
  }

  return result;
}

unint64_t sub_2696C4DC8()
{
  result = qword_280323210;
  if (!qword_280323210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323210);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2696C4E30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2696C4E70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2696C4ED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2696C4F18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2696C4F6C()
{
  result = qword_280323220;
  if (!qword_280323220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323220);
  }

  return result;
}

unint64_t sub_2696C4FC0()
{
  result = qword_280323230;
  if (!qword_280323230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoLiveTuneInDialogProvider.AppNotFoundParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for VideoLiveTuneInDialogProvider.AppNotFoundParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VideoLiveTuneInDialogProvider.PlayServiceOnRemoteParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2696C5258()
{
  result = qword_280323248;
  if (!qword_280323248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323248);
  }

  return result;
}

unint64_t sub_2696C52B0()
{
  result = qword_280323250;
  if (!qword_280323250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323250);
  }

  return result;
}

unint64_t sub_2696C5308()
{
  result = qword_280323258;
  if (!qword_280323258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323258);
  }

  return result;
}

unint64_t sub_2696C5360()
{
  result = qword_280323260;
  if (!qword_280323260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323260);
  }

  return result;
}

unint64_t sub_2696C53B8()
{
  result = qword_280323268;
  if (!qword_280323268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323268);
  }

  return result;
}

unint64_t sub_2696C5410()
{
  result = qword_280323270;
  if (!qword_280323270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
  *(v0 - 67) = 2;

  return sub_2698554F4();
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2698556E4();
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  *(v2 - 67) = 2;
  return v2 - 67;
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_15_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2696C5590(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_269855584();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2696C5618(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323280, &qword_26985A198);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C6DA4();
  sub_2698556F4();
  sub_2698554C4();
  return (*(v6 + 8))(v9, v4);
}

void *sub_2696C574C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323290, &qword_26985A1A0);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2696C6DA4();
  sub_2698556E4();
  if (!v1)
  {
    v9 = sub_269855414();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2696C58A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2696C5590(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2696C58CC(uint64_t a1)
{
  v2 = sub_2696C6DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2696C5908(uint64_t a1)
{
  v2 = sub_2696C6DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2696C5944@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2696C574C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2696C598C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_10(v0, v1, v2);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C5A10()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2(v3, &type metadata for VideoWatchListDialogProvider.WatchListParams, v3);
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_12(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5_10(v15);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C5C2C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_10(v0, v1, v2);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C5CB0()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2(v3, &type metadata for VideoWatchListDialogProvider.WatchListParams, v3);
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_12(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5_10(v15);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C5ECC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_10(v0, v1, v2);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C5F50()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2(v3, &type metadata for VideoWatchListDialogProvider.WatchListParams, v3);
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_12(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5_10(v15);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C616C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_10(v0, v1, v2);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C61F0()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2(v3, &type metadata for VideoWatchListDialogProvider.WatchListParams, v3);
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_12(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5_10(v15);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C640C()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_10(v0, v1, v2);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C6490()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2(v3, &type metadata for VideoWatchListDialogProvider.WatchListParams, v3);
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_12(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5_10(v15);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

uint64_t sub_2696C66AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2696C6818()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_10(v0, v1, v2);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2696C689C()
{
  OUTLINED_FUNCTION_17_4();
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_1_9();
  if (qword_280322438 != -1)
  {
    OUTLINED_FUNCTION_0_13(&qword_280322438);
  }

  v3 = sub_2696C6AB8();
  OUTLINED_FUNCTION_19_2(v3, &type metadata for VideoWatchListDialogProvider.WatchListParams, v3);
  if (v0)
  {

    sub_269854A04();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_11_7();
  objc_opt_self();
  OUTLINED_FUNCTION_13_2();
  sub_269851C84();
  OUTLINED_FUNCTION_13_4();
  v5 = OUTLINED_FUNCTION_7_12(v4, sel_JSONObjectWithData_options_error_);

  v6 = *(v1 + 16);
  if (v5)
  {
    v7 = v6;
    OUTLINED_FUNCTION_21_3();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803230B8, &qword_269859330);
    if (OUTLINED_FUNCTION_8_8())
    {
      v8 = OUTLINED_FUNCTION_9_8();
      sub_2696C1F3C(v8, v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    v11 = OUTLINED_FUNCTION_20_2();

    swift_willThrow();
  }

  sub_269854A04();
  v12 = OUTLINED_FUNCTION_13_2();
  sub_2696C1F3C(v12, v13);
LABEL_10:
  OUTLINED_FUNCTION_14_5();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_3_12(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_5_10(v15);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_9_5();
  OUTLINED_FUNCTION_18_4();

  return sub_2696B8F78();
}

unint64_t sub_2696C6AB8()
{
  result = qword_280323278;
  if (!qword_280323278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323278);
  }

  return result;
}

uint64_t sub_2696C6B0C(uint64_t a1, char a2)
{
  *(v3 + 128) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  OUTLINED_FUNCTION_6_7();
  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2696C6B3C()
{
  v1 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D60, &unk_269858160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269857710;
  strcpy((inited + 32), "showInAppleTV");
  *(inited + 46) = -4864;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  *(v0 + 112) = sub_269854A04();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_12(v3);
  *v4 = v5;
  v4[1] = sub_2696C6C88;

  return sub_2696B8F78();
}

uint64_t sub_2696C6C88()
{
  OUTLINED_FUNCTION_2_7();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2696C6DA4()
{
  result = qword_280323288;
  if (!qword_280323288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323288);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoWatchListDialogProvider.WatchListParams.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2696C6EA8()
{
  result = qword_280323298;
  if (!qword_280323298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323298);
  }

  return result;
}

unint64_t sub_2696C6F00()
{
  result = qword_2803232A0;
  if (!qword_2803232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803232A0);
  }

  return result;
}

unint64_t sub_2696C6F58()
{
  result = qword_2803232A8;
  if (!qword_2803232A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803232A8);
  }

  return result;
}

uint64_t sub_2696C6FAC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_16_4();

  return sub_2696C66AC();
}

void *OUTLINED_FUNCTION_1_9()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  result = __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(*(v0 + 104) + 24));
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = result;
  v4[11] = a2;
  return result;
}

id OUTLINED_FUNCTION_7_12(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_8_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_269851AB4();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_269851BD4();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return sub_269855154();
}

uint64_t sub_2696C7188(uint64_t a1)
{
  v3 = sub_2698542D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v39 = v6;
    v31[1] = v1;
    v44 = MEMORY[0x277D84F90];
    sub_269815018(0, v7, 0);
    v8 = v44;
    result = sub_269811248();
    v12 = result;
    v13 = 0;
    v42 = a1 + 56;
    v37 = *MEMORY[0x277D5FFE8];
    v38 = v4;
    v35 = v4 + 32;
    v36 = (v4 + 104);
    v14 = v8;
    v32 = a1 + 64;
    v33 = v7;
    v34 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(a1 + 32))
      {
        v15 = v12 >> 6;
        if ((*(v42 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_28;
        }

        LODWORD(v41) = v11;
        v40 = v10;
        v43 = *(*(a1 + 48) + v12);
        v16 = sub_269855544();
        v17 = v39;
        *v39 = 0x7463617265746E69;
        v17[1] = 0xEF657079546E6F69;
        v17[2] = v16;
        v17[3] = v18;
        (*v36)(v17, v37, v3);
        v44 = v14;
        v19 = v3;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_269815018(v20 > 1, v21 + 1, 1);
          v17 = v39;
          v14 = v44;
        }

        *(v14 + 16) = v21 + 1;
        result = (*(v38 + 32))(v14 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v21, v17, v19);
        if (v41)
        {
          goto LABEL_32;
        }

        v3 = v19;
        a1 = v34;
        v22 = 1 << *(v34 + 32);
        if (v12 >= v22)
        {
          goto LABEL_29;
        }

        v23 = *(v42 + 8 * v15);
        if ((v23 & (1 << v12)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v34 + 36) != v40)
        {
          goto LABEL_31;
        }

        v24 = v23 & (-2 << (v12 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
          v25 = v33;
        }

        else
        {
          v41 = v14;
          v26 = v15 << 6;
          v27 = v15 + 1;
          v25 = v33;
          v28 = (v32 + 8 * v15);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              result = sub_26968E5C8(v12, v40, 0);
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_19;
            }
          }

          result = sub_26968E5C8(v12, v40, 0);
LABEL_19:
          v14 = v41;
        }

        if (++v13 == v25)
        {
          return v14;
        }

        v11 = 0;
        v10 = *(a1 + 36);
        v12 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2696C7520(char a1)
{
  result = 0x6564695679616C70;
  switch(a1)
  {
    case 1:
      result = 0x65646956646E6966;
      break;
    case 2:
      result = 0x7461576F54646461;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6576694C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2696C75E0(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6769626D61736964;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x656C65536F747561;
      break;
    case 4:
      result = 0x656A65526F747561;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2696C76B4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_2696C76DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2696C76B4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2696C7708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2696C75D8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2696C7734()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v1 = OUTLINED_FUNCTION_8_9(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_12();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = v14 - v6 + 16;
  sub_269854294();
  v8 = sub_2698542A4();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_2696C96F0(v7, v4);
  v14[3] = &type metadata for SiriRemembersProvider;
  v14[4] = &off_287A41D70;
  type metadata accessor for DeviceSelectionDonationProvider(0);
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for SiriRemembersProvider);
  *(v9 + 40) = &type metadata for SiriRemembersProvider;
  *(v9 + 48) = &off_287A41D70;
  v10 = OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore;
  __swift_storeEnumTagSinglePayload(v9 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore, 1, 1, v8);
  swift_beginAccess();
  sub_2696C9A50(v4, v9 + v10);
  swift_endAccess();
  v11 = (v9 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_nowProvider);
  *v11 = sub_2696C78D8;
  v11[1] = 0;
  sub_269698048(v7, &qword_280322D70, &qword_2698582E8);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v9;
}

uint64_t sub_2696C78DC(void *a1, char a2, char a3)
{
  v7 = *v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v9 = OUTLINED_FUNCTION_8_9(v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_269854D94();
  v12 = sub_269854DB4();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 41) = a3;
  *(v13 + 48) = v3;
  *(v13 + 56) = v7;
  v14 = a1;

  sub_26983AA20();
}

uint64_t sub_2696C7A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 121) = a6;
  *(v7 + 120) = a5;
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  v8 = sub_269851D34();
  *(v7 + 32) = v8;
  *(v7 + 40) = *(v8 - 8);
  *(v7 + 48) = swift_task_alloc();
  v9 = sub_269851E84();
  *(v7 + 56) = v9;
  *(v7 + 64) = *(v9 - 8);
  *(v7 + 72) = swift_task_alloc();
  v10 = sub_269851B94();
  *(v7 + 80) = v10;
  *(v7 + 88) = *(v10 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696C7B98);
}

uint64_t sub_2696C7B98()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 121);
  v3 = [objc_allocWithZone(MEMORY[0x277D61FD0]) init];
  *(v0 + 104) = v3;
  v4 = v3;
  v5 = sub_269854A64();
  [v4 _setLaunchId_];

  v6 = sub_269854604();
  sub_2696C97B8(v6, v7, v4, &selRef_setRemoteDeviceID_);
  v8 = sub_2696C7520(v1);
  sub_2696C97B8(v8, v9, v4, &selRef_setIntentType_);
  [v4 setInteractionType_];
  sub_269854644();
  if (v10)
  {
    v11 = sub_269854A64();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 48);
  v29 = *(v0 + 64);
  v30 = *(v0 + 56);
  v13 = *(v0 + 40);
  v28 = *(v0 + 32);
  v26 = *(v0 + 72);
  v27 = *(v0 + 24);
  [v4 setRoomName_];

  sub_269851E54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232E8, &unk_26985A3A0);
  v14 = sub_269851E64();
  OUTLINED_FUNCTION_8();
  v16 = v15;
  v18 = *(v17 + 72);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_269858BB0;
  v21 = v20 + v19;
  v22 = *(v16 + 104);
  v22(v21, *MEMORY[0x277CC9988], v14);
  v22(v21 + v18, *MEMORY[0x277CC9998], v14);
  v22(v21 + 2 * v18, *MEMORY[0x277CC9968], v14);
  v22(v21 + 3 * v18, *MEMORY[0x277CC9980], v14);
  v22(v21 + 4 * v18, *MEMORY[0x277CC99A0], v14);
  v22(v21 + 5 * v18, *MEMORY[0x277CC99A8], v14);
  sub_2698318AC();
  (*(v27 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_nowProvider))();
  sub_269851E34();

  (*(v13 + 8))(v12, v28);
  (*(v29 + 8))(v26, v30);
  v23 = sub_269851B74();
  [v4 setRequestTime_];

  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *v24 = v0;
  v24[1] = sub_2696C7F60;

  return sub_2696C8468(v4);
}

uint64_t sub_2696C7F60()
{

  return MEMORY[0x2822009F8](sub_2696C805C);
}

uint64_t sub_2696C805C()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2696C8108@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v43 = a2;
  HIDWORD(v42) = a1;
  v44 = a3;
  v3 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v11 = OUTLINED_FUNCTION_8_9(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = sub_269854204();
  OUTLINED_FUNCTION_8();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  v21 = sub_269854644();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_269854604();
    v26 = v43;
    sub_2696C84FC(v25, v27, v23, v24, SHIDWORD(v42), v43, v13);

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      (*(v16 + 32))(v20, v13, v14);
      v35 = type metadata accessor for DeviceSelectionDonationAggregations(0);

      v36 = v44;
      sub_2698541F4();
      sub_2696C93B4(v20);
      v38 = v37;
      sub_2696C93AC(v20);
      v40 = v39;
      (*(v16 + 8))(v20, v14);
      *v36 = v26;
      *(v36 + *(v35 + 24)) = v38;
      *(v36 + *(v35 + 28)) = v40;
      v33 = v36;
      v34 = 0;
      v32 = v35;
      return __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
    }

    sub_269698048(v13, &qword_280322D78, &unk_26985A370);
  }

  else
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(v3, qword_28033D910);
    OUTLINED_FUNCTION_6_11();
    v28(v9);
    v29 = sub_2698548B4();
    v30 = sub_269854F24();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_269684000, v29, v30, "Room Name should not be empty for querying donation selections store. Returning.", v31, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v5 + 8))(v9, v3);
  }

  v32 = type metadata accessor for DeviceSelectionDonationAggregations(0);
  v33 = v44;
  v34 = 1;
  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v32);
}

uint64_t sub_2696C8468(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2696C8488);
}

uint64_t sub_2696C8488()
{
  v1 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[3] + 16), *(v0[3] + 40));
  sub_2697B752C(v1, 1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2696C84FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  LODWORD(v156) = a5;
  v155 = a4;
  v158 = a1;
  v159 = a3;
  v161 = a2;
  v157 = a7;
  v138 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v137 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v11 - v10);
  v162 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v160 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  v166 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_13();
  v142 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D78, &unk_26985A370);
  v19 = OUTLINED_FUNCTION_8_9(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_1(&v133 - v20);
  v167 = sub_269854204();
  OUTLINED_FUNCTION_8();
  v140 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_13();
  v141 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  v27 = OUTLINED_FUNCTION_8_9(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_15_1(v29);
  v165 = sub_2698542A4();
  OUTLINED_FUNCTION_8();
  v148 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_15_1(v33 - v32);
  v171 = sub_269854284();
  OUTLINED_FUNCTION_8();
  v164 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_13();
  v172 = v38;
  v39 = sub_2698542D4();
  v40 = *(v39 - 8);
  v41 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_1();
  v44 = (v43 - v42);
  v45 = sub_2698541D4();
  v170 = v45;
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_12();
  v49 = v47 - v48;
  v51 = MEMORY[0x28223BE20](v50);
  v151 = &v133 - v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_7_13();
  v169 = v53;
  v150 = sub_2696C7188(a6);
  v145 = 0;
  sub_2698541C4();
  sub_2698541B4();
  v168 = *(v46 + 8);
  v168(v49, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803232D8, &unk_26985A380);
  v54 = *(v40 + 72);
  v149 = v40;
  v55 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_26985A2C0;
  v57 = (v56 + v55);
  v58 = sub_2696C7520(v156);
  *v57 = 0x7954746E65746E69;
  *(v57 + 1) = 0xEA00000000006570;
  v134 = v58;
  *(v57 + 2) = v58;
  *(v57 + 3) = v59;
  v135 = v59;
  v60 = *(v41 + 104);
  (v60)(v57, *MEMORY[0x277D5FFE8], v39);
  v61 = &v57[v54];
  strcpy(&v57[v54], "remoteDeviceID");
  v61[15] = -18;
  v62 = v161;
  *(v61 + 2) = v158;
  *(v61 + 3) = v62;
  v60();
  v63 = &v57[2 * v54];
  *v63 = 0x656D614E6D6F6F72;
  *(v63 + 1) = 0xE800000000000000;
  v64 = v155;
  *(v63 + 2) = v159;
  *(v63 + 3) = v64;
  v65 = v64;
  v60();
  *&v57[3 * v54] = v150;
  (v60)(&v57[3 * v54], *MEMORY[0x277D5FFE0], v39);
  *v44 = v56;
  (v60)(v44, *MEMORY[0x277D5FFD8], v39);
  v66 = v164;

  v67 = v151;
  sub_2698541A4();
  v68 = v171;
  (*(v149 + 8))(v44, v39);
  v156 = v46 + 8;
  v168(v67, v170);
  v69 = v163;
  v70 = v153;
  sub_269854274();
  v71 = v152;
  sub_269854244();
  v74 = *(v66 + 8);
  v72 = v66 + 8;
  v73 = v74;
  v74(v70, v68);
  sub_269854254();
  v75 = v154;
  v76 = v68;
  v77 = v165;
  v74(v71, v76);
  v78 = OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore;
  swift_beginAccess();
  sub_2696C96F0(v69 + v78, v75);
  if (__swift_getEnumTagSinglePayload(v75, 1, v77) == 1)
  {
    sub_269698048(v75, &qword_280322D70, &qword_2698582E8);
    v79 = v167;
    v80 = v162;
    v81 = v160;
LABEL_5:
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_10(&qword_2803226E0);
    }

    __swift_project_value_buffer(v80, qword_28033D910);
    OUTLINED_FUNCTION_6_11();
    v87(v166);

    v88 = sub_2698548B4();
    v89 = sub_269854F24();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = v73;
      v91 = v69;
      v92 = swift_slowAlloc();
      *v92 = 67109120;
      v93 = v144;
      sub_2696C96F0(v91 + v78, v144);
      v94 = __swift_getEnumTagSinglePayload(v93, 1, v165) == 1;
      sub_269698048(v93, &qword_280322D70, &qword_2698582E8);
      *(v92 + 4) = v94;
      v73 = v90;
      v79 = v167;

      _os_log_impl(&dword_269684000, v88, v89, "Error while getting the history stats. Is Interaction store nil: %{BOOL}d. Returning.", v92, 8u);
      OUTLINED_FUNCTION_10();
    }

    else
    {
    }

    (*(v81 + 8))(v166, v80);
    v73(v172, v171);
    v95 = OUTLINED_FUNCTION_9_9();
    v96(v95);
    v97 = 1;
    v98 = v157;
    return __swift_storeEnumTagSinglePayload(v98, v97, 1, v79);
  }

  v153 = v73;
  v82 = v148;
  v83 = v147;
  (*(v148 + 32))(v147, v75, v77);
  v84 = v77;
  v85 = v146;
  v86 = v145;
  sub_269854234();
  if (v86)
  {

    (*(v82 + 8))(v83, v84);
    v79 = v167;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v167);
    sub_269698048(v85, &qword_280322D78, &unk_26985A370);
    v80 = v162;
    v69 = v163;
    v81 = v160;
    v73 = v153;
    goto LABEL_5;
  }

  v100 = v85;
  v101 = v65;
  v164 = v72;
  v79 = v167;
  __swift_storeEnumTagSinglePayload(v100, 0, 1, v167);
  v102 = v140;
  v103 = *(v140 + 32);
  v104 = v141;
  v166 = v140 + 32;
  v163 = v103;
  v103(v141, v100, v79);
  v105 = v162;
  v106 = v160;
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2803226E0);
  }

  __swift_project_value_buffer(v105, qword_28033D910);
  OUTLINED_FUNCTION_6_11();
  v107 = v142;
  v108(v142);
  v109 = *(v102 + 16);
  v110 = v139;
  v109();
  (v109)(v143, v104, v79);
  v111 = v101;

  v113 = sub_2698548B4();
  v114 = sub_269854F14();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v173 = v154;
    *v115 = 136316162;
    *(v115 + 4) = sub_26974F520(v158, v112, &v173);
    *(v115 + 12) = 2080;
    *(v115 + 14) = sub_26974F520(v159, v111, &v173);
    *(v115 + 22) = 2080;
    v116 = v114;
    v117 = sub_26974F520(v134, v135, &v173);

    *(v115 + 24) = v117;
    *(v115 + 32) = 2080;
    v118 = v136;
    sub_2698541F4();
    sub_2696C9760();
    v119 = v138;
    v120 = sub_269855544();
    v122 = v121;
    (*(v137 + 8))(v118, v119);
    v123 = *(v102 + 8);
    v123(v110, v167);
    v124 = sub_26974F520(v120, v122, &v173);

    *(v115 + 34) = v124;
    *(v115 + 42) = 2080;
    v125 = v143;
    sub_2698541E4();
    v126 = MEMORY[0x26D645BC0]();
    v128 = v127;

    v123(v125, v167);
    v104 = v141;
    v129 = sub_26974F520(v126, v128, &v173);

    *(v115 + 44) = v129;
    _os_log_impl(&dword_269684000, v113, v116, "For remoteDeviceID: %s, roomName: %s intentType: %s, stats are - recency: %s, frequencies %s", v115, 0x34u);
    swift_arrayDestroy();
    v79 = v167;
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    (*(v160 + 8))(v142, v162);
  }

  else
  {

    v130 = *(v102 + 8);
    v130(v143, v79);
    v130(v110, v79);
    (*(v106 + 8))(v107, v162);
  }

  (*(v148 + 8))(v147, v165);
  v153(v172, v171);
  v131 = OUTLINED_FUNCTION_9_9();
  v132(v131);
  v98 = v157;
  v163(v157, v104, v79);
  v97 = 0;
  return __swift_storeEnumTagSinglePayload(v98, v97, 1, v79);
}

void sub_2696C93BC(uint64_t a1)
{
  sub_2698541E4();
  sub_26977E488();
  v4 = v3 >> 1;
  v5 = (v3 >> 1) - v2;
  if (__OFSUB__(v3 >> 1, v2))
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
LABEL_11:
    v12 = *(v8 + 16);
    if (!v12)
    {
LABEL_15:

      return;
    }

    v13 = 0;
    v14 = (v8 + 32);
    while (1)
    {
      v15 = *v14++;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        goto LABEL_17;
      }

      if (!--v12)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = v1;
  v7 = v2;
  v17 = MEMORY[0x277D84F90];
  sub_269814EA8(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = v17;
    while (v7 < v4)
    {
      v9 = *(v6 + 2 * v7);
      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_269814EA8(v10 > 1, v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      *(v17 + 8 * v11 + 32) = v9;
      if (v4 == ++v7)
      {
        swift_unknownObjectRelease();
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2696C951C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_269698048(v0 + OBJC_IVAR____TtC16SiriVideoIntents31DeviceSelectionDonationProvider_interactionStore, &qword_280322D70, &qword_2698582E8);

  return v0;
}

uint64_t sub_2696C9570()
{
  sub_2696C951C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_2696C95F0(uint64_t a1)
{
  sub_2696C9698(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2696C9698(uint64_t a1)
{
  if (!qword_2803232D0)
  {
    sub_2698542A4();
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2803232D0);
    }
  }
}

uint64_t sub_2696C96F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2696C9760()
{
  result = qword_2803232E0;
  if (!qword_2803232E0)
  {
    sub_269851D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803232E0);
  }

  return result;
}

void sub_2696C97B8(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_269854A64();

  [a3 *a4];
}

uint64_t sub_2696C9844(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2696C987C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 41);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2696C995C;

  return sub_2696C7A18(a1, v4, v5, v6, v9, v8, v7);
}

uint64_t sub_2696C995C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2696C9A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322D70, &qword_2698582E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for DeviceSelectionInteractionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2696C9BC4(uint64_t a1)
{
  sub_2696C9C58(319);
  if (v1 <= 0x3F)
  {
    sub_269851D34();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2696C9C58(uint64_t a1)
{
  if (!qword_280323300)
  {
    sub_2696C9CB4();
    v1 = sub_269854E74();
    if (!v2)
    {
      atomic_store(v1, &qword_280323300);
    }
  }
}

unint64_t sub_2696C9CB4()
{
  result = qword_280323308;
  if (!qword_280323308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323308);
  }

  return result;
}

unint64_t sub_2696C9D0C()
{
  result = qword_280323310;
  if (!qword_280323310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323310);
  }

  return result;
}

uint64_t sub_2696C9DAC()
{
  v0 = sub_269851D34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269851D24();
  sub_269851CB4();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = round(v5 * 1000.0);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2696C9ED8(uint64_t a1, __int128 *a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_26980C0F4(v8, v19, v20, v21);
      v26 = *a2;
      sub_2696A8078(&v26);
      v25 = *(a2 + 2);
      sub_2696CA0B8(&v25);
      v24 = *(a2 + 24);
      sub_2696A8078(&v24);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v5)))));
        v11 = *v10;
        v12 = v10[1];
        if (*v10 == *a2 && v12 == *(a2 + 1))
        {
          v14 = 1;
        }

        else
        {
          v14 = sub_269855584() & 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26977C2D8();
          v8 = v17;
        }

        v15 = *(v8 + 16);
        if (v15 >= *(v8 + 24) >> 1)
        {
          sub_26977C2D8();
          v8 = v18;
        }

        v5 &= v5 - 1;
        *(v8 + 16) = v15 + 1;
        v16 = (v8 + 24 * v15);
        v16[4] = v11;
        v16[5] = v12;
        v16[6] = v14;
      }

      while (v5);
    }
  }

  __break(1u);
}

uint64_t sub_2696CA0B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696CA120()
{
  v0 = sub_269851D84() >> 56;
  v1 = (sub_269851D84() >> 40) & 0xFF00 | v0;
  v2 = (sub_269851D84() >> 24) & 0xFF0000;
  v3 = v1 | v2 | (sub_269851D84() >> 8) & 0xFF000000;
  v4 = v3 & 0xFFFFFF00FFFFFFFFLL | ((sub_269851D84() >> 24) << 32);
  v5 = v4 & 0xFFFF00FFFFFFFFFFLL | ((sub_269851D84() >> 16) << 40);
  v6 = v5 & 0xFF00FFFFFFFFFFFFLL | ((sub_269851D84() >> 8) << 48);
  v7 = v6 | (sub_269851D84() << 56);
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  sub_269851D84();
  return v7;
}

unint64_t sub_2696CA210()
{
  sub_2696CA608();
  v0 = OUTLINED_FUNCTION_0_14();
  MEMORY[0x26D645A60](v0);

  v1 = sub_2696CA65C(0x10uLL, 0xD000000000000010, 0x800000026987CBB0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_0_14();
  MEMORY[0x26D645A60](v8);

  v9 = sub_2696CA65C(0x10uLL, 0xD000000000000010, 0x800000026987CBB0);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = sub_269771A6C(8uLL, v1, v3, v5, v7);
  v84 = v18;
  v85 = v17;
  v20 = v19;
  result = sub_2698550B4();
  if (v22)
  {
    goto LABEL_11;
  }

  if (v3 >> 14 < result >> 14)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v82 = v16;
  v83 = v20;
  v23 = sub_2698550D4();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = sub_269771A6C(4uLL, v23, v25, v27, v29);
  v80 = v32;
  v81 = v31;
  v34 = v33;
  result = sub_2698550B4();
  if (v35)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v25 >> 14 < result >> 14)
  {
    goto LABEL_9;
  }

  v79 = v30;
  v36 = sub_2698550D4();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v43 = sub_269771A6C(4uLL, v36, v38, v40, v42);
  v45 = v44;
  v76 = v46;
  v48 = v47;

  v49 = sub_269771A6C(4uLL, v9, v11, v13, v15);
  v77 = v51;
  v78 = v50;
  v53 = v52;
  result = sub_2698550B4();
  if ((v54 & 1) == 0)
  {
    if (v11 >> 14 >= result >> 14)
    {
      v55 = sub_2698550D4();
      v74 = v56;
      v75 = v55;
      v73 = v57;
      v59 = v58;

      MEMORY[0x26D645A10](v82, v85, v84, v83);
      v60 = v49;

      OUTLINED_FUNCTION_1_10();
      v61 = MEMORY[0x26D645A10](v79, v81, v80, v34);
      v63 = v62;

      MEMORY[0x26D645A60](v61, v63);

      OUTLINED_FUNCTION_1_10();
      v64 = MEMORY[0x26D645A10](v43, v45, v76, v48);
      v66 = v65;

      MEMORY[0x26D645A60](v64, v66);

      OUTLINED_FUNCTION_1_10();
      v67 = MEMORY[0x26D645A10](v60, v78, v77, v53);
      v69 = v68;

      MEMORY[0x26D645A60](v67, v69);

      OUTLINED_FUNCTION_1_10();
      v70 = MEMORY[0x26D645A10](v75, v74, v73, v59);
      v72 = v71;

      MEMORY[0x26D645A60](v70, v72);

      sub_269851D44();
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_2696CA608()
{
  result = qword_280323318;
  if (!qword_280323318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323318);
  }

  return result;
}

unint64_t sub_2696CA65C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_269854B54();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_269854C04();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_14()
{

  return MEMORY[0x2821FBF60](v2 - 96, 16, 0, v1, v0);
}

void OUTLINED_FUNCTION_1_10()
{

  JUMPOUT(0x26D645A60);
}

uint64_t sub_2696CA770@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v2);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v19[-v4 - 8];
  v6 = sub_269853D94();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_269853F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323348, qword_26985A4E8);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_4_12(v5, 1);
    v14 = &qword_280323330;
    v15 = qword_26985B080;
    v16 = v5;
LABEL_6:
    sub_2696CB05C(v16, v14, v15);
    v13 = a1;
    v12 = 1;
    return OUTLINED_FUNCTION_4_12(v13, v12);
  }

  OUTLINED_FUNCTION_4_12(v5, 0);
  (*(v8 + 32))(v11, v5, v6);
  sub_2696CB0DC(0x6E6F69746361, 0xE600000000000000, v19);
  (*(v8 + 8))(v11, v6);
  if (!v20)
  {
    v14 = &unk_280323340;
    v15 = &unk_26985A4E0;
    v16 = v19;
    goto LABEL_6;
  }

  v12 = swift_dynamicCast() ^ 1;
  v13 = a1;
  return OUTLINED_FUNCTION_4_12(v13, v12);
}

uint64_t sub_2696CA970@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v2);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  sub_2696CA770(&v11 - v4);
  v6 = sub_269853D94();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2696CB05C(v5, &qword_280323330, qword_26985B080);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
LABEL_5:
    sub_2696CB05C(&v11, &qword_280323340, &qword_26985A4E0);
    v9 = a1;
    v8 = 1;
    return OUTLINED_FUNCTION_4_12(v9, v8);
  }

  sub_2696CB0DC(0x646E616D6D6F63, 0xE700000000000000, &v11);
  OUTLINED_FUNCTION_3_14();
  (*(v7 + 8))(v5, v6);
  if (!*(&v12 + 1))
  {
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323348, qword_26985A4E8);
  v8 = swift_dynamicCast() ^ 1;
  v9 = a1;
  return OUTLINED_FUNCTION_4_12(v9, v8);
}

uint64_t sub_2696CAAE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323320, &qword_26985A4C8);
  OUTLINED_FUNCTION_8_9(v0);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v1);
  v3 = &v42 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323328, &qword_26985A4D0);
  OUTLINED_FUNCTION_8_9(v4);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  sub_269853CC4();
  OUTLINED_FUNCTION_8();
  v44 = v9;
  v45 = v8;
  v10 = MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323330, qword_26985B080);
  OUTLINED_FUNCTION_8_9(v14);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323338, &qword_26985A4D8);
  OUTLINED_FUNCTION_8_9(v18);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v22 = sub_269853D14();
  OUTLINED_FUNCTION_8();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2696CA970(v17);
  v28 = sub_269853D94();
  if (__swift_getEnumTagSinglePayload(v17, 1, v28) == 1)
  {
    sub_2696CB05C(v17, &qword_280323330, qword_26985B080);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
LABEL_7:
    sub_2696CB05C(&v46, &qword_280323340, &qword_26985A4E0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
    goto LABEL_8;
  }

  sub_2696CB0DC(0xD000000000000016, 0x800000026987CBD0, &v46);
  OUTLINED_FUNCTION_3_14();
  (*(v29 + 8))(v17, v28);
  if (!*(&v47 + 1))
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323348, qword_26985A4E8);
  v30 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v21, v30 ^ 1u, 1, v22);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
LABEL_8:
    v33 = &qword_280323338;
    v34 = &qword_26985A4D8;
    v35 = v21;
LABEL_9:
    sub_2696CB05C(v35, v33, v34);
    return 0;
  }

  (*(v24 + 32))(v27, v21, v22);
  v31 = sub_269853D04();
  sub_2697ACD18(v31, v3);

  v32 = sub_269853CE4();
  if (__swift_getEnumTagSinglePayload(v3, 1, v32) == 1)
  {
    (*(v24 + 8))(v27, v22);
    sub_2696CB05C(v3, &qword_280323320, &qword_26985A4C8);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v45);
LABEL_12:
    v33 = &qword_280323328;
    v34 = &qword_26985A4D0;
    v35 = v7;
    goto LABEL_9;
  }

  sub_269853CD4();
  (*(v24 + 8))(v27, v22);
  OUTLINED_FUNCTION_3_14();
  (*(v37 + 8))(v3, v32);
  v38 = v45;
  if (__swift_getEnumTagSinglePayload(v7, 1, v45) == 1)
  {
    goto LABEL_12;
  }

  v39 = v44;
  v40 = *(v44 + 32);
  v40(v13, v7, v38);
  v41 = v43;
  v40(v43, v13, v38);
  if ((*(v39 + 88))(v41, v38) != *MEMORY[0x277D5E5C8])
  {
    (*(v39 + 8))(v41, v38);
    return 0;
  }

  (*(v39 + 96))(v41, v38);
  return *v41;
}

uint64_t sub_2696CB05C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3_14();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_2696CB0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_269853D84();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  for (i = result + 32; ; i += 40)
  {
    if (v9 == v8)
    {

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    sub_2696A73F8(i, &v14);
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    if (sub_269853BD4() == a1 && v11 == a2)
    {

LABEL_12:

      return sub_26968E5D4(&v14, a3);
    }

    v13 = sub_269855584();

    if (v13)
    {
      goto LABEL_12;
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v14);
    ++v8;
  }

  __break(1u);
  return result;
}

uint64_t static TerminalElement.SemanticValue.fromIntentNodeValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_269853CC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D5E5D8])
  {
    (*(v5 + 96))(v7, v4);
    v8 = sub_269853CB4();
    (*(*(v8 - 8) + 32))(a2, v7, v8);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v11 = sub_269853CB4();
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

unint64_t sub_2696CB3AC()
{
  result = qword_280323350;
  if (!qword_280323350)
  {
    sub_269853CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323350);
  }

  return result;
}

uint64_t sub_2696CB408()
{
  v0 = sub_2698543F4();
  v2 = v1;
  if (v1)
  {
    sub_2696CB4B8();
    v3 = sub_2696CB4FC(v0, v2);
    v4 = [v3 localizedName];

    v0 = sub_269854A94();
  }

  return v0;
}

unint64_t sub_2696CB4B8()
{
  result = qword_280323358;
  if (!qword_280323358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280323358);
  }

  return result;
}

id sub_2696CB4FC(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_269854A64();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_269851BD4();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2696CB5D4(uint64_t a1, uint64_t a2)
{
  if (sub_269852CD4() & 1) != 0 || (sub_269852CB4())
  {
    return 1;
  }

  return MEMORY[0x2821BABA8](a1, a2);
}

uint64_t sub_2696CB644@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_269853874();
  OUTLINED_FUNCTION_8();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  v17 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3_1();
  v23 = (v22 - v21);
  (*(v19 + 16))(v22 - v21, v2, v17);
  v24 = OUTLINED_FUNCTION_5_11();
  v26 = v25(v24);
  if (v26 == *MEMORY[0x277D5C140])
  {
    v27 = OUTLINED_FUNCTION_5_11();
    v28(v27);
    (*(v12 + 32))(v16, v23, v10);
    sub_269853864();
    sub_2696D3C74();
    (*(v5 + 8))(v9, v3);
    return (*(v12 + 8))(v16, v10);
  }

  else if (v26 == *MEMORY[0x277D5C148])
  {
    v30 = OUTLINED_FUNCTION_5_11();
    v31(v30);
    v32 = *v23;
    sub_2696D6C54();
    if (v33)
    {
      v34 = v33;
      sub_269854544();

      v35 = sub_269852474();
      v36 = a1;
      v37 = 0;
    }

    else
    {

      v35 = sub_269852474();
      v36 = a1;
      v37 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v36, v37, 1, v35);
  }

  else
  {
    v38 = sub_269852474();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v38);
    v39 = OUTLINED_FUNCTION_5_11();
    return v40(v39);
  }
}

id sub_2696CB944()
{
  v112[5] = *MEMORY[0x277D85DE8];
  sub_2698538A4();
  OUTLINED_FUNCTION_8();
  v106 = v1;
  v107 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3_1();
  v108 = v3 - v2;
  OUTLINED_FUNCTION_2_13();
  v105 = sub_269852474();
  OUTLINED_FUNCTION_8();
  v95 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v92 = v7 - v6;
  OUTLINED_FUNCTION_2_13();
  v97 = sub_2698523C4();
  OUTLINED_FUNCTION_8();
  v96 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v94 = v11 - v10;
  OUTLINED_FUNCTION_2_13();
  sub_269851EF4();
  OUTLINED_FUNCTION_8();
  v101 = v13;
  v102 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  v98 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v92 - v17;
  OUTLINED_FUNCTION_2_13();
  sub_269853874();
  OUTLINED_FUNCTION_8();
  v103 = v19;
  v104 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_1();
  v99 = v21 - v20;
  v22 = OUTLINED_FUNCTION_2_13();
  v23 = type metadata accessor for MediaNLIntent(v22);
  MEMORY[0x28223BE20](v23 - 8);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  sub_269853F44();
  OUTLINED_FUNCTION_8();
  v109 = v28;
  v110 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v31 = v30 - v29;
  v32 = sub_2698538B4();
  OUTLINED_FUNCTION_8();
  v34 = v33;
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36);
  v93 = (&v92 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v92 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v92 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v92 - v47;
  v49 = *(v34 + 16);
  v49(&v92 - v47, v111, v32);
  v50 = (*(v34 + 88))(v48, v32);
  if (v50 == *MEMORY[0x277D5C128])
  {
    v49(v46, v48, v32);
    OUTLINED_FUNCTION_4_13();
    v51(v46, v32);
    v53 = v109;
    v52 = v110;
    (*(v109 + 32))(v31, v46, v110);
    (*(v53 + 16))(v26, v31, v52);
    v54 = sub_2697A6488();
    sub_2696CC460(v26);
    (*(v53 + 8))(v31, v52);
LABEL_3:
    v55 = v48;
    goto LABEL_27;
  }

  if (v50 != *MEMORY[0x277D5C150])
  {
    if (v50 == *MEMORY[0x277D5C140])
    {
      v55 = v48;
      v49(v43, v48, v32);
      OUTLINED_FUNCTION_4_13();
      v63(v43, v32);
      v65 = v103;
      v64 = v104;
      v66 = v99;
      (*(v103 + 32))(v99, v43, v104);
      v67 = v98;
      sub_269853864();
      v68 = v100;
      sub_2696D3C74();
      (*(v101 + 8))(v67, v102);
      v69 = v105;
      if (__swift_getEnumTagSinglePayload(v68, 1, v105) != 1)
      {
        v86 = v94;
        sub_269852424();
        OUTLINED_FUNCTION_3_15();
        v87(v68, v69);
        v54 = sub_269851FD4();
        OUTLINED_FUNCTION_3_15();
        v88(v86, v97);
        (*(v65 + 8))(v66, v64);
        goto LABEL_27;
      }

      (*(v65 + 8))(v66, v64);
      sub_2696CC3F8(v68);
    }

    else
    {
      v55 = v48;
      if (v50 == *MEMORY[0x277D5C148])
      {
        v77 = v93;
        v49(v93, v48, v32);
        OUTLINED_FUNCTION_4_13();
        v78(v77, v32);
        v79 = *v77;
        sub_2696D6C54();
        if (v80)
        {
          v81 = v80;
          v82 = v92;
          sub_269854544();

          v83 = v94;
          sub_269852424();
          OUTLINED_FUNCTION_3_15();
          v84(v82, v105);
          v54 = sub_269851FD4();

          OUTLINED_FUNCTION_3_15();
          v85(v83, v97);
          goto LABEL_27;
        }
      }
    }

LABEL_26:
    v54 = 0;
    goto LABEL_27;
  }

  v49(v38, v48, v32);
  OUTLINED_FUNCTION_4_13();
  v56(v38, v32);
  v58 = v106;
  v57 = v107;
  v59 = v108;
  (*(v106 + 32))(v108, v38, v107);
  if (sub_269853884() == 0xD00000000000002DLL && 0x800000026987A0A0 == v60)
  {
  }

  else
  {
    v62 = sub_269855584();

    if ((v62 & 1) == 0)
    {
      (*(v58 + 8))(v59, v57);
      v54 = 0;
      goto LABEL_3;
    }
  }

  v55 = v48;
  if (!sub_269853894())
  {
LABEL_25:
    (*(v58 + 8))(v59, v57);
    goto LABEL_26;
  }

  v70 = objc_opt_self();
  v71 = sub_2698549D4();
  v112[0] = 0;
  v72 = [v70 dataWithJSONObject:v71 options:0 error:v112];

  v73 = v112[0];
  if (!v72)
  {
    v89 = v73;
    v90 = sub_269851BD4();

    swift_willThrow();

    goto LABEL_25;
  }

  v74 = sub_269851C94();
  v76 = v75;

  if (qword_280322440 != -1)
  {
    swift_once();
  }

  sub_2696CC3A4();
  sub_269851A84();
  sub_2696C1F3C(v74, v76);

  (*(v58 + 8))(v108, v57);
  if (v112[1])
  {
    v54 = v112[0];
  }

  else
  {
    v54 = 0;
  }

LABEL_27:
  (*(v34 + 8))(v55, v32);
  return v54;
}

unint64_t sub_2696CC3A4()
{
  result = qword_280323368;
  if (!qword_280323368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323368);
  }

  return result;
}

uint64_t sub_2696CC3F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323360, &unk_26985AB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696CC460(uint64_t a1)
{
  v2 = type metadata accessor for MediaNLIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2696CC4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = [objc_allocWithZone(MEMORY[0x277D4BFE0]) init];
  sub_2696BAF34(a1, a2, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277D4C168]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2698590C0;
  *(v12 + 32) = v10;
  v13 = v10;
  sub_2696CC814(v12, v11, &qword_280323370, 0x277D4BFE0, &selRef_setFormatted_text_);
  if (a4)
  {

    MEMORY[0x26D645A60](32, 0xE100000000000000);

    sub_2696CC898(a1, a2, v13);
    v14 = [objc_allocWithZone(MEMORY[0x277D4BFE0]) init];
    sub_2696CC898(a3, a4, v14);
    v15 = [objc_allocWithZone(MEMORY[0x277D4C170]) init];
    [v15 setStyle_];
    [v14 setText:v15 encapsulation:?];
    v24 = sub_2696CC8FC(v11);
    if (v24)
    {
      v16 = v14;
      MEMORY[0x26D645B90]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_269854CD4();
      }

      sub_269854CF4();
      sub_26969329C(0, &qword_280323370, 0x277D4BFE0);
      v17 = sub_269854CA4();

      [v11 setFormatted:v17 text:?];
    }

    else
    {
      [v11 setFormatted:0 text:?];
    }
  }

  else
  {
  }

  if ((a6 & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v11 setLine:v18 limit:?];
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2698590C0;
  *(v20 + 32) = v11;
  sub_2696CC814(v20, v19, &qword_280323378, 0x277D4C168, &selRef_setText_elements_);

  return v19;
}

void sub_2696CC814(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_26969329C(0, a3, a4);
  v7 = sub_269854CA4();

  [a2 *a5];
}

void sub_2696CC898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setText_];
}

uint64_t sub_2696CC8FC(void *a1)
{
  v1 = [a1 formatted_text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_26969329C(0, &qword_280323370, 0x277D4BFE0);
  v3 = sub_269854CB4();

  return v3;
}

id sub_2696CC96C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D4C180]) init];
  sub_2696CCBC4(a1, a2, v6);
  if (a3)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D4BF60]) init];
    sub_26969329C(0, &qword_2815718C0, 0x277CCABB0);
    v8 = sub_269855044();
    [v7 setWidth_];

    v9 = sub_269855044();
    [v7 setHeight_];

    [v6 setAspect:v7 ratio:?];
    [v6 setSizing:2 mode:?];
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D4BFF8]) init];
  [v10 setUrl_];
  v11 = [objc_allocWithZone(MEMORY[0x277D4BFF0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2698590C0;
  *(v12 + 32) = v10;
  v13 = v10;
  sub_2696CC814(v12, v11, &qword_280323388, 0x277D4BFF8, &selRef_setSources_);
  v14 = [objc_allocWithZone(MEMORY[0x277D4C188]) init];
  [v14 setImage:v11 element:?];
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2698590C0;
  *(v16 + 32) = v14;
  sub_2696CC814(v16, v15, &qword_280323380, 0x277D4C188, &selRef_setVisual_elements_);

  return v15;
}

void sub_2696CCBC4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setUrl_];
}

uint64_t sub_2696CCC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  v4[9] = a4;
  v4[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2696CCCC8);
}

uint64_t sub_2696CCCC8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = [objc_allocWithZone(MEMORY[0x277D4C130]) init];
  *(v0 + 88) = v3;
  sub_26977E46C(v2);
  *(v0 + 96) = sub_26969329C(0, &qword_280323390, 0x277D4C178);
  OUTLINED_FUNCTION_0_15();
  v8 = sub_2696CC4EC(v4, v5, v6, v7, 0, 1);
  [v3 setText:v8 1:?];

  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *v9 = v0;
  v9[1] = sub_2696CCE14;

  return sub_2696CE508(v0 + 16, v1);
}

uint64_t sub_2696CCE14(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;

  sub_2696CD4FC(v3 + 16);

  return MEMORY[0x2822009F8](sub_2696CCF1C);
}

uint64_t sub_2696CCF1C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = sub_269831FBC(*(v0 + 56));
    v4 = *(v0 + 112);
    if (v3)
    {
      v5 = v2;
      v6 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2698590C0;
      v8 = v4;
      v9 = v1;
      v10 = v5;
      v11 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_2698590C0;
      OUTLINED_FUNCTION_0_15();
    }

    *(v7 + 32) = sub_2696CC4EC(v8, v9, v10, v11, 0, 1);
    sub_2696CD5DC(v7, *(v0 + 88));
  }

  sub_2696CEF80();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    v16 = *(v0 + 88);
    sub_26969329C(0, &qword_2803233A8, 0x277D4C190);
    v17 = sub_2696CC96C(v14, v15, 1);
    [v16 setThumbnail_];
  }

  sub_2696CD57C(*(v0 + 56), &selRef_entityExperienceUrl);
  if (v18)
  {
    v19 = *(v0 + 56);
    v20 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    sub_26977E46C(v19);
    if (v21)
    {
      v22 = sub_269854A64();
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v0 + 80);
    [v20 setTitle_];

    sub_269851C64();

    v24 = sub_269851C74();
    v25 = 0;
    if (__swift_getEnumTagSinglePayload(v23, 1, v24) != 1)
    {
      v26 = *(v0 + 80);
      v25 = sub_269851C24();
      (*(*(v24 - 8) + 8))(v26, v24);
    }

    v27 = *(v0 + 88);
    [v20 setUrlValue_];

    [v20 setSource_];
    [v20 setType_];
    v28 = [objc_allocWithZone(MEMORY[0x277D4C648]) init];
    [v28 setCard_];
    [v27 setCommand_];
  }

  v29 = *(v0 + 56);
  v30 = [objc_allocWithZone(MEMORY[0x277D4C700]) init];
  sub_26977E470(v29);
  if (v31)
  {
    v32 = sub_269854A64();
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v0 + 56);
  [v30 setWatchListIdentifier_];

  if ([v33 type] == 4)
  {
    v34 = 4;
  }

  else
  {
    if ([*(v0 + 56) type] != 1)
    {
      goto LABEL_23;
    }

    v34 = 3;
  }

  [v30 setType_];
LABEL_23:
  v35 = *(v0 + 88);
  v36 = *(v0 + 56);
  v37 = [objc_allocWithZone(MEMORY[0x277D4C708]) init];
  [v37 setWatchListItem_];
  v38 = v37;
  sub_2696C97B8(0x775F6F745F776F68, 0xEC00000068637461, v38, &selRef_setCardSectionDetail_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_26985A540;
  *(v39 + 32) = v35;
  *(v39 + 40) = v38;
  v56 = v39;
  v40 = v35;
  sub_2696CD57C(v36, &selRef_summary);
  if (v41)
  {
    v42 = [objc_allocWithZone(MEMORY[0x277D4C000]) init];
    OUTLINED_FUNCTION_0_15();
    v47 = sub_2696CC4EC(v43, v44, v45, v46, 4, 0);
    [v42 setText:v47 1:?];

    MEMORY[0x26D645B90]();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
  }

  v48 = *(v0 + 88);
  sub_26969329C(0, &qword_2803233A0, 0x277D47200);
  OUTLINED_FUNCTION_0_15();
  v49 = sub_269854EF4();

  v50 = sub_269854A94();
  v52 = v51;
  v53 = v49;
  sub_2696C97B8(v50, v52, v53, &selRef_setItemType_);
  sub_2696C97B8(0xD000000000000019, 0x800000026987AF00, v53, &selRef_setResponseViewId_);

  v54 = *(v0 + 8);

  return v54(v53);
}

uint64_t sub_2696CD4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323398, &unk_26985BAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2696CD57C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_269854A94();

  return v4;
}

void sub_2696CD5DC(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_280323390, 0x277D4C178);
  v3 = sub_269854CA4();

  [a2 setText:v3 2:?];
}

id sub_2696CD66C(char a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322F90, &qword_269858E10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2698580D0;
    v4 = sub_269854A94();
    v5 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    v7 = sub_269854A94();
    *(v3 + 88) = v5;
    *(v3 + 64) = v7;
    *(v3 + 72) = v8;
    sub_2696CD72C(v3, v2);
  }

  return v2;
}

void sub_2696CD72C(uint64_t a1, void *a2)
{
  v3 = sub_269854CA4();

  [a2 setLaunchOptions_];
}

void sub_2696CD79C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_2697C6B44(a1);
  if (v6)
  {
    v7 = v6;
    v8 = sub_26975004C();
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        return;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D646120](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if ([v10 type] == 2)
      {
        break;
      }
    }

    [v5 setPixelWidth_];
    [v5 setPixelHeight_];
    [v5 setScaleFactor_];
    v12 = sub_2696D2734(v11);
    if (v13)
    {
      v21[2] = v12;
      v21[3] = v13;
      v21[0] = 8218235;
      v21[1] = 0xE300000000000000;
      v14 = sub_2696D2728(v11);
      if (v15)
      {
        v20[0] = v14;
        v20[1] = v15;
        v16 = sub_269693054();
        sub_269855104(v21, v20, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837D0], v16, v16, v16);

        v17 = sub_269854A64();

        goto LABEL_17;
      }

LABEL_22:
      __break(1u);
      return;
    }

    v17 = 0;
LABEL_17:
    [v5 setUrlFormatString_];

    sub_2696D2010(711.0, 400.0, 0, 0, v4);
    v18 = sub_269851C74();
    v19 = 0;
    if (__swift_getEnumTagSinglePayload(v4, 1, v18) != 1)
    {
      v19 = sub_269851C24();
      (*(*(v18 - 8) + 8))(v4, v18);
    }

    [v5 setResourceUrl_];
  }

  else
  {
  }
}

id sub_2696CDACC(void *a1)
{
  v2 = sub_269851C74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_2696CDCFC();
  v7 = v6;
  v8 = a1;
  sub_2696CD79C(v8);
  v10 = v9;
  OUTLINED_FUNCTION_0_16(v9, sel_setImage_);

  v11 = sub_26977E46C(v8);
  if (v12)
  {
    v13 = sub_269854A64();
  }

  else
  {
    v13 = 0;
  }

  OUTLINED_FUNCTION_0_16(v11, sel_setLoadingText_);

  v14 = sub_26977E470(v8);
  if (v15)
  {
    v16 = sub_269854A64();
  }

  else
  {
    v16 = 0;
  }

  OUTLINED_FUNCTION_0_16(v14, sel_setUtsId_);

  v17 = [v8 detailsUrl];
  v18 = v17;
  if (v17)
  {
    sub_269851C44();

    v18 = sub_269851C24();
    v17 = (*(v3 + 8))(v5, v2);
  }

  OUTLINED_FUNCTION_0_16(v17, sel_setUrl_);

  [v7 setUserDriven_];
  [v7 setIsEvod_];
  v19 = sub_2696CF28C([v8 type]);
  sub_2696CDD40(v19, v20, v7);

  return v7;
}

unint64_t sub_2696CDCFC()
{
  result = qword_2803233B0;
  if (!qword_2803233B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2803233B0);
  }

  return result;
}

void sub_2696CDD40(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setContentType_];
}

id OUTLINED_FUNCTION_0_16(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_2696CDDBC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    sub_2696CC898(a1, a2, v12);
    [v11 setTitle_];
  }

  if (a3)
  {
    v13 = a3;
    [v13 setCornerRoundingStyle_];
    [v13 setScale_];
    [v11 setThumbnail_];
  }

  if ((a5 & 1) == 0)
  {
    v14 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
    sub_2696D386C(a4);
    v15 = v14;
    OUTLINED_FUNCTION_0_17();
    sub_269830114();
    v17 = v16;

    if (v17)
    {
      v18 = sub_269854A64();
    }

    else
    {
      v18 = 0;
    }

    [v15 setText_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2698590C0;
    *(v19 + 32) = v15;
    sub_2696CE37C(v19, v11);
  }

  [v11 setSeparatorStyle_];

  return v11;
}

id sub_2696CDFA4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_269851C74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  sub_2696CE400(a1);
  if (v12 >> 60 == 15)
  {
    v13 = [a1 _uri];
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    sub_269851C44();

    (*(v6 + 32))(v11, v9, v5);
    (*(v6 + 16))(v4, v11, v5);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    v15 = objc_allocWithZone(MEMORY[0x277D4C6B8]);
    v16 = sub_2696CE2D0(v4);
    (*(v6 + 8))(v11, v5);
    if (!v16)
    {
      return 0;
    }

LABEL_7:
    v17 = v16;
    sub_26969329C(0, &qword_2803233B8, 0x277D4C3B0);
    [a1 _imageSize];
    v26 = v25;
    [a1 _imageSize];
    [v17 setSize_];

    return v17;
  }

  sub_26969329C(0, &qword_2803233B8, 0x277D4C3B0);
  v18 = OUTLINED_FUNCTION_0_17();
  sub_2696CE464(v18, v19);
  v20 = OUTLINED_FUNCTION_0_17();
  result = sub_2696CE250(v20, v21);
  if (result)
  {
    v16 = result;
    v23 = OUTLINED_FUNCTION_0_17();
    sub_2696CE4BC(v23, v24);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}