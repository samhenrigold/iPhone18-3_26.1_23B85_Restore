uint64_t sub_26660FEDC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_26660F944();
}

uint64_t sub_26660FFB4()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_2665670B0(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  sub_266637788(v2, 1);
  v4 = v3;

  OUTLINED_FUNCTION_8();

  return v5(v4);
}

uint64_t sub_266610058(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266610118;

  return sub_26660FFA0(v6);
}

uint64_t sub_266610118()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
  v7 = sub_26666C488();

  (v2)[2](v2, v7);

  _Block_release(v2);
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_2666102A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666102BC()
{
  OUTLINED_FUNCTION_14();
  v1 = __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_locationProvider), *(v0[3] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_locationProvider + 24));
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_266610380;
  v3 = v0[2];

  return sub_266614EAC(v3, v1);
}

uint64_t sub_266610380()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  OUTLINED_FUNCTION_8();

  return v5(v2);
}

uint64_t sub_266610488(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_2666102A8(v6);
}

uint64_t sub_266610560()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent;
  v3 = v1[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent];
  v4 = v1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    v4 = *(v0 + 16);
  }

  v5 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v5, qword_28156D7E8);
  v6 = v4;
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  v9 = OUTLINED_FUNCTION_9(v8);
  v10 = *(v0 + 16);
  if (v9)
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    v11[1] = v1[v2];

    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v12, v13, v14, v15, v16, 8u);
    OUTLINED_FUNCTION_10();
  }

  else
  {
  }

  if (v3)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  [objc_allocWithZone(MEMORY[0x277CD3B28]) initWithCode:v17 userActivity:0];
  OUTLINED_FUNCTION_8();

  return v18();
}

uint64_t sub_2666106D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_26661054C();
}

uint64_t sub_266610790(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2666107A4()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1((v0[18] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider), *(v0[18] + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider + 24));
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_266610850;
  v2 = v0[17];

  return sub_26655BA38(v2);
}

uint64_t sub_266610850()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = v3;

  v4 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26661093C()
{
  v40 = v0;
  v1 = *(v0 + 160);
  if (v1)
  {
    sub_266552C44(0, &qword_28007F240, 0x277CD3B28);
    v2 = v1;
    v3 = sub_266582DC0(3, 0, MEMORY[0x277D84F90], v1);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v4 = sub_26666C168();
    __swift_project_value_buffer(v4, qword_28156D7E8);
    v5 = sub_26666C148();
    v6 = sub_26666C618();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_20();
      *v7 = 0;
      _os_log_impl(&dword_266549000, v5, v6, "[CreateEvent.IntentHandler] successfully saved new EKEvent. returning success.", v7, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_26660F028();
    if (*(v0 + 80))
    {
      sub_26654B7D8((v0 + 56), v0 + 16);
      v8 = v2;
      v9 = sub_26666C148();
      v10 = sub_26666C618();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_21();
        v38 = swift_slowAlloc();
        v39 = v38;
        *v11 = 136315138;
        v12 = v8;
        v13 = v3;
        v14 = [v12 description];
        v15 = sub_26666C308();
        v17 = v16;

        v3 = v13;
        v18 = sub_2665BFC90(v15, v17, &v39);

        *(v11 + 4) = v18;
        OUTLINED_FUNCTION_12_4();
        _os_log_impl(v19, v20, v21, v22, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_9_5();
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 144) + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_correctionsFlowProvider), *(*(v0 + 144) + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_correctionsFlowProvider + 24));
      sub_26655E228(v8, (v0 + 96));
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_2666694C8();

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    else
    {
      sub_26656CAEC(v0 + 56, &qword_28007F248, &qword_266678328);
      v33 = sub_26666C148();
      v34 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v34))
      {
        v35 = OUTLINED_FUNCTION_20();
        *v35 = 0;
        _os_log_impl(&dword_266549000, v33, v34, "[CreateEvent.IntentHandler] no corrections client available", v35, 2u);
        OUTLINED_FUNCTION_4_1();
      }
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v24 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v24, qword_28156D7E8);
    v25 = sub_26666C148();
    v26 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_9(v26))
    {
      v27 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v27);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28007F240, 0x277CD3B28);
    v3 = sub_266582DC0(4, 0, MEMORY[0x277D84F90], 0);
  }

  OUTLINED_FUNCTION_8();

  return v36(v3);
}

uint64_t sub_266610D48(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = OUTLINED_FUNCTION_25();

  return sub_26664FFEC(v11, v12);
}

uint64_t sub_266610DC8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2666171A4;

  return sub_266610790(v6);
}

id sub_266610E9C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s13IntentHandlerCMa_1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_266610F90(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26666BA78();
  return sub_26660264C;
}

id sub_266611008(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = *(v1 - 8);
    MEMORY[0x28223BE20](v3);
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v6);
    v7 = sub_26666CAB8();
    (*(v4 + 8))(v6, v1);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v7 = 0;
  }

  v8 = [swift_getObjCClassFromMetadata() resolutionResultConfirmationRequiredWithItemToConfirm_];
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_266611228()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F250, &qword_266678338);
  v0[8] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[9] = v5;
  v0[10] = OUTLINED_FUNCTION_19();
  v6 = sub_26666B648();
  v0[11] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_19();
  v8 = sub_26666B588();
  v0[14] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_19();
  v10 = sub_266668EB8();
  v0[17] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v0[18] = v11;
  v0[19] = OUTLINED_FUNCTION_19();
  v12 = sub_266668D98();
  OUTLINED_FUNCTION_3_3(v12);
  v0[20] = OUTLINED_FUNCTION_65_1();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v13 = sub_26666B6A8();
  v0[23] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[24] = v14;
  v0[25] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F258, &qword_266678340);
  OUTLINED_FUNCTION_3_3(v15);
  v0[26] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F260, &qword_266678348);
  OUTLINED_FUNCTION_3_3(v16);
  v0[27] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F268, &qword_266678350);
  OUTLINED_FUNCTION_3_3(v17);
  v0[28] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F270, &qword_266678358);
  OUTLINED_FUNCTION_3_3(v18);
  v0[29] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F278, &qword_266678360);
  OUTLINED_FUNCTION_3_3(v19);
  v0[30] = OUTLINED_FUNCTION_19();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F280, &qword_266678368);
  OUTLINED_FUNCTION_3_3(v20);
  v0[31] = OUTLINED_FUNCTION_19();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  OUTLINED_FUNCTION_3_3(v21);
  v0[32] = OUTLINED_FUNCTION_65_1();
  v0[33] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F290, &qword_266678370);
  OUTLINED_FUNCTION_3_3(v22);
  v0[34] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F298, &qword_266678378);
  OUTLINED_FUNCTION_3_3(v23);
  v0[35] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A0, &qword_266678380);
  OUTLINED_FUNCTION_3_3(v24);
  v0[36] = OUTLINED_FUNCTION_19();
  v25 = sub_26666B9D8();
  v0[37] = v25;
  OUTLINED_FUNCTION_3_1(v25);
  v0[38] = v26;
  v0[39] = OUTLINED_FUNCTION_65_1();
  v0[40] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A8, &qword_266678388);
  OUTLINED_FUNCTION_3_3(v27);
  v0[41] = OUTLINED_FUNCTION_19();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B0, &qword_266678390);
  OUTLINED_FUNCTION_3_3(v28);
  v0[42] = OUTLINED_FUNCTION_19();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B8, &qword_266678398);
  OUTLINED_FUNCTION_3_3(v29);
  v0[43] = OUTLINED_FUNCTION_65_1();
  v0[44] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C0, &qword_2666783A0);
  OUTLINED_FUNCTION_3_3(v30);
  v0[45] = OUTLINED_FUNCTION_19();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C8, &qword_2666783A8);
  OUTLINED_FUNCTION_3_3(v31);
  v0[46] = OUTLINED_FUNCTION_19();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D0, &qword_2666783B0);
  OUTLINED_FUNCTION_3_3(v32);
  v0[47] = OUTLINED_FUNCTION_19();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D8, &qword_2666783B8);
  OUTLINED_FUNCTION_3_3(v33);
  v0[48] = OUTLINED_FUNCTION_19();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E0, &qword_2666783C0);
  OUTLINED_FUNCTION_3_3(v34);
  v0[49] = OUTLINED_FUNCTION_19();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E8, &qword_2666783C8);
  OUTLINED_FUNCTION_3_3(v35);
  v0[50] = OUTLINED_FUNCTION_65_1();
  v0[51] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F0, &qword_2666783D0);
  OUTLINED_FUNCTION_3_3(v36);
  v0[52] = OUTLINED_FUNCTION_19();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F8, &qword_2666783D8);
  OUTLINED_FUNCTION_3_3(v37);
  v0[53] = OUTLINED_FUNCTION_19();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F300, &qword_2666783E0);
  OUTLINED_FUNCTION_3_3(v38);
  v0[54] = OUTLINED_FUNCTION_65_1();
  v0[55] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F308, &qword_2666783E8);
  OUTLINED_FUNCTION_3_3(v39);
  v0[56] = OUTLINED_FUNCTION_19();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F310, &qword_2666783F0);
  OUTLINED_FUNCTION_3_3(v40);
  v0[57] = OUTLINED_FUNCTION_19();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F318, &qword_2666783F8);
  OUTLINED_FUNCTION_3_3(v41);
  v0[58] = OUTLINED_FUNCTION_65_1();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F320, &qword_266678400);
  OUTLINED_FUNCTION_3_3(v42);
  v0[61] = OUTLINED_FUNCTION_19();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F328, &qword_266678408);
  OUTLINED_FUNCTION_3_3(v43);
  v0[62] = OUTLINED_FUNCTION_19();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F330, &qword_266678410);
  OUTLINED_FUNCTION_3_3(v44);
  v0[63] = OUTLINED_FUNCTION_65_1();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F338, &qword_266678418);
  OUTLINED_FUNCTION_3_3(v45);
  v0[66] = OUTLINED_FUNCTION_19();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F340, &qword_266678420);
  OUTLINED_FUNCTION_3_3(v46);
  v0[67] = OUTLINED_FUNCTION_65_1();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F348, &qword_266678428);
  OUTLINED_FUNCTION_3_3(v47);
  v0[70] = OUTLINED_FUNCTION_19();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F350, &qword_266678430);
  OUTLINED_FUNCTION_3_3(v48);
  v0[71] = OUTLINED_FUNCTION_19();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F358, &qword_266678438);
  OUTLINED_FUNCTION_3_3(v49);
  v0[72] = OUTLINED_FUNCTION_19();
  v50 = sub_26666B7D8();
  v0[73] = v50;
  OUTLINED_FUNCTION_3_1(v50);
  v0[74] = v51;
  v0[75] = OUTLINED_FUNCTION_65_1();
  v0[76] = swift_task_alloc();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F360, &qword_266678440);
  OUTLINED_FUNCTION_3_3(v52);
  v0[77] = OUTLINED_FUNCTION_65_1();
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v53 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[80] = v53;
  OUTLINED_FUNCTION_3_3(v53);
  v0[81] = OUTLINED_FUNCTION_19();
  v0[5] = &type metadata for AceUserLocationProvider;
  v0[6] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v54 = swift_allocObject();
  v0[2] = v54;
  sub_2665524C0(v2, v54 + 16);
  v55 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v55, v56, v57);
}

uint64_t sub_266611BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C160 != -1)
  {
    OUTLINED_FUNCTION_25_9(&qword_28156C160);
  }

  OUTLINED_FUNCTION_83_0();
  v17 = qword_28156D800;
  v13[82] = qword_28156D800;
  v17;
  sub_26666C088();
  v18 = sub_26666C638();
  OUTLINED_FUNCTION_32_7(v18, &dword_266549000);
  OUTLINED_FUNCTION_54_1();
  v19 = [v12 location];
  v13[83] = v19;
  if (v19)
  {
    v20 = v19;
    v21 = sub_26659A29C(v19, &selRef_name);
    v13[84] = v21;
    v13[85] = v22;
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_97_0(v21, v22);
      OUTLINED_FUNCTION_12_18(v23);
      sub_26659A29C(v20, &selRef_country);
      if (v24)
      {
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_94();
        if (v25)
        {
          sub_26656CAEC(v13[72], &qword_28007F358, &qword_266678438);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_15();
          v45(v44);
          v46 = OUTLINED_FUNCTION_33_7();
          v47(v46);
          v48 = sub_26666B7F8();
          OUTLINED_FUNCTION_5_4(v16, v49, v50, v48);
          sub_26666B808();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
          OUTLINED_FUNCTION_75_0();
          v55 = OUTLINED_FUNCTION_84_0();
          v56(v55);
          v14 = &qword_266678440;
          OUTLINED_FUNCTION_98();
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_66_0(v57, v58, v59);
        }
      }

      v60 = sub_26666B848();
      OUTLINED_FUNCTION_12_18(v60);
      sub_26659A29C(v20, &selRef_postalCode);
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_2_32(v15, v63, v64, v62);
        sub_26666B828();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v65 = sub_26666B708();
      OUTLINED_FUNCTION_12_18(v65);
      sub_26659A29C(v20, &selRef_locality);
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_4_31(v67);
        v68 = sub_26666B6F8();
        OUTLINED_FUNCTION_1_37(v68);
        sub_26666B6D8();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v69 = sub_26666B768();
      OUTLINED_FUNCTION_12_18(v69);
      sub_26659A29C(v20, &selRef_administrativeArea);
      if (v70)
      {
        OUTLINED_FUNCTION_44_2();
        v71 = OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_31(v71);
        v72 = sub_26666B758();
        OUTLINED_FUNCTION_1_37(v72);
        sub_26666B738();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v73 = v13[55];
      v74 = sub_26666B7A8();
      OUTLINED_FUNCTION_12_18(v74);
      sub_26659A29C(v20, &selRef_subAdministrativeArea);
      if (v75)
      {
        OUTLINED_FUNCTION_44_2();
        v76 = OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_4_31(v76);
        v77 = sub_26666B798();
        OUTLINED_FUNCTION_1_37(v77);
        sub_26666B778();
        v73 = &qword_28007F300;
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v78 = v13[51];
      v79 = sub_26666B4F8();
      v80 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      v83 = sub_26659A29C(v20, &selRef_thoroughfare);
      if (v84)
      {
        v14 = v83;
        v73 = v84;
        v85 = sub_26659A29C(v20, &selRef_subThoroughfare);
        if (v86)
        {
          v87 = OUTLINED_FUNCTION_22_7(v85);
          OUTLINED_FUNCTION_4_31(v87);
          sub_26666B378();
          v88 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
          OUTLINED_FUNCTION_56_0();
          sub_26666B388();
          v92 = OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_13_14(v92, 0, v93, v94);
          sub_26666B498();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
          OUTLINED_FUNCTION_74_0();
          v99 = sub_26666B4A8();
          OUTLINED_FUNCTION_13_14(v73, 0, v100, v99);
          sub_26666B398();
          v16 = v174;
          v101 = OUTLINED_FUNCTION_14_13();
          OUTLINED_FUNCTION_69_0(v101, v102, v103);
          sub_26666B508();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
          v15 = v175;
          v108 = OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_69_0(v108, v109, v110);
          sub_26666B4D8();
          v111 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
          OUTLINED_FUNCTION_29_7();
          v78 = &qword_28007F2E8;
          v73 = &qword_2666783C8;
          OUTLINED_FUNCTION_73_0();
          v115 = OUTLINED_FUNCTION_17_12();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v79);
          v118 = OUTLINED_FUNCTION_33_7();
          sub_266616CA8(v118, v119, &qword_28007F2E8, &qword_2666783C8);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_24_10();
      v120 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
      v124 = OUTLINED_FUNCTION_78_0();
      sub_266617158(v124, v125, v126, v127);
      sub_266617158(v14, v15, &qword_28007F340, &qword_266678420);
      sub_266617158(v20, v73, &qword_28007F318, &qword_2666783F8);
      v128 = OUTLINED_FUNCTION_88_0();
      sub_266617158(v128, v129, v130, v131);
      v132 = sub_26666B858();
      OUTLINED_FUNCTION_5_4(v176, v133, v134, v132);
      sub_26666B728();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
      v139 = [v20 timeZone];
      if (v139)
      {
        v20 = v139;
        sub_266668E98();

        v140 = 0;
      }

      else
      {
        v140 = 1;
      }

      OUTLINED_FUNCTION_53_1(v139, v140);
      v141 = OUTLINED_FUNCTION_25();
      sub_266616CA8(v141, v142, v143, v144);
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        sub_26656CAEC(v20, &qword_28007D280, &unk_266671C80);
      }

      else
      {
        v78 = v13[17];
        v145 = sub_266668E78();
        v147 = OUTLINED_FUNCTION_36_3(v145, v146);
        v148(v147);
      }

      OUTLINED_FUNCTION_19_18();
      v149 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_5_4(v149, v150, v151, v152);
      sub_26666B9A8();
      v153 = OUTLINED_FUNCTION_11_19();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
      sub_266617158(v20, v79, &qword_28007F2E8, &qword_2666783C8);
      v157 = sub_26666B4C8();
      OUTLINED_FUNCTION_5_4(v16, v158, v159, v157);
      v160 = sub_26666B528();
      OUTLINED_FUNCTION_5_4(v78, v161, v162, v160);
      sub_26666B468();
      v163 = OUTLINED_FUNCTION_15_14();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);

      OUTLINED_FUNCTION_52_2();
      sub_26666B478();
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      sub_266617158(v173, v14, &qword_28007F300, &qword_2666783E0);

      OUTLINED_FUNCTION_21_8();
      __swift_project_boxed_opaque_existential_1(v13 + 2, &type metadata for AceUserLocationProvider);
      v171 = swift_task_alloc();
      v13[86] = v171;
      *v171 = v13;
      OUTLINED_FUNCTION_82_0(v171);
      OUTLINED_FUNCTION_4_7();

      return sub_266618ABC();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v26 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
  v27 = sub_26666C148();
  v28 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v28))
  {
    v29 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
  [swift_getObjCClassFromMetadata() notRequired];
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_2666125DC()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_6();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 696) = v0;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  OUTLINED_FUNCTION_85_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2666126F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  v89 = v12[87];
  sub_266668D88();
  sub_266668D88();
  sub_266668D88();
  sub_266668EA8();
  OUTLINED_FUNCTION_78_0();
  sub_26666B698();
  sub_26666B578();
  sub_26666B638();
  v13 = v12;
  v14 = sub_26666B568();
  v15 = v12[13];
  v16 = v12[11];
  if (!v89)
  {
    v36 = OUTLINED_FUNCTION_57_0();
    v37(v36);
    v38 = OUTLINED_FUNCTION_31_1();
    v39(v38);
    v40 = *(v14 + 16);
    if (!v40)
    {

      goto LABEL_3;
    }

    v41 = v12[9];

    v42 = MEMORY[0x277D84F90];
    v90 = v13;
    v91 = MEMORY[0x277D84F90];
    v41 += 16;
    v86 = v14;
    v43 = v14 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
    v88 = *(v41 + 56);
    do
    {
      v44 = v13[39];
      v45 = v13[37];
      v46 = v13[10];
      v47 = OUTLINED_FUNCTION_102();
      v48(v47);
      sub_26666B718();
      sub_26666B9B8();
      v49 = OUTLINED_FUNCTION_79_0();
      v50(v49);
      v51 = OUTLINED_FUNCTION_88_0();
      v53 = v52(v51);
      if (v16)
      {
        MEMORY[0x2667887C0](v53);
        OUTLINED_FUNCTION_103();
        if (v54)
        {
          OUTLINED_FUNCTION_106();
        }

        sub_26666C4E8();
        v42 = v91;
      }

      v43 += v88;
      --v40;
      v13 = v90;
    }

    while (v40);

    if (sub_2665C485C() == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v55 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v55, qword_28156D7E8);
      v56 = sub_26666C148();
      v57 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v57))
      {
        v16 = OUTLINED_FUNCTION_20();
        *v16 = 0;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v58, v59, v60, v61, v62, 2u);
        OUTLINED_FUNCTION_9_5();
      }

      OUTLINED_FUNCTION_49_1();
      if (!v56)
      {
LABEL_29:
        v70 = *(v42 + 32);
LABEL_30:
        OUTLINED_FUNCTION_9_21();
        [objc_opt_self() successWithResolvedPlacemark_];

        MEMORY[8](v16, v44);
        v45(v43, v56);
        sub_26656CAEC(v80, &qword_28007F2E8, &qword_2666783C8);
        sub_26656CAEC(v81, &qword_28007F300, &qword_2666783E0);
        sub_26656CAEC(v82, &qword_28007F318, &qword_2666783F8);
        sub_26656CAEC(v83, &qword_28007F330, &qword_266678410);
        sub_26656CAEC(v84, &qword_28007F340, &qword_266678420);
        sub_26656CAEC(v86, &unk_28007F360, &qword_266678440);
        sub_26666C628();
        OUTLINED_FUNCTION_48_2();
        goto LABEL_31;
      }
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v63 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v63, qword_28156D7E8);

      v56 = sub_26666C148();
      v64 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v64))
      {
        v16 = OUTLINED_FUNCTION_21();
        *v16 = 134217984;
        *(v16 + 4) = sub_2665C485C();

        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
        OUTLINED_FUNCTION_9_5();
      }

      else
      {
      }

      OUTLINED_FUNCTION_49_1();
      if (!v56)
      {
        goto LABEL_29;
      }
    }

    OUTLINED_FUNCTION_107();
    goto LABEL_30;
  }

  v17 = OUTLINED_FUNCTION_57_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_31_1();
  v20(v19);
LABEL_3:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v21 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v21, qword_28156D7E8);
  sub_26666C148();
  v22 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v22))
  {
    v23 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v23);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    OUTLINED_FUNCTION_10();
  }

  v29 = v12[85];
  v30 = v12[84];
  v31 = v12[83];
  OUTLINED_FUNCTION_39_3();
  v32 = objc_opt_self();
  sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
  v33 = sub_266606794([objc_allocWithZone(MEMORY[0x277CE41F8]) init], v30, v29, 0);
  [v32 successWithResolvedPlacemark_];

  v34 = OUTLINED_FUNCTION_78_0();
  v35(v34);
  (*(v15 + 8))();
  sub_26656CAEC(v81, &qword_28007F2E8, &qword_2666783C8);
  sub_26656CAEC(v82, &qword_28007F300, &qword_2666783E0);
  sub_26656CAEC(v83, &qword_28007F318, &qword_2666783F8);
  sub_26656CAEC(v84, &qword_28007F330, &qword_266678410);
  sub_26656CAEC(v85, &qword_28007F340, &qword_266678420);
  sub_26656CAEC(v87, &unk_28007F360, &qword_266678440);
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
LABEL_31:
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v73(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}

uint64_t sub_266613078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  sub_266668D88();
  sub_266668D88();
  sub_266668D88();
  sub_266668EA8();
  sub_26666B698();
  sub_26666B578();
  sub_26666B638();
  OUTLINED_FUNCTION_31_1();
  v13 = sub_26666B568();
  v14 = v12[13];
  v30 = OUTLINED_FUNCTION_57_0();
  v31(v30);
  v32 = OUTLINED_FUNCTION_31_1();
  v33(v32);
  v34 = *(v13 + 16);
  if (v34)
  {
    v35 = v12[9];

    v36 = MEMORY[0x277D84F90];
    v86 = v12;
    v87 = MEMORY[0x277D84F90];
    v37 = v35 + 16;
    v38 = v13 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v85 = *(v37 + 56);
    v81 = v13;
    v83 = v37 - 8;
    do
    {
      v39 = v12[39];
      v40 = v12[37];
      v41 = v12[10];
      v42 = v12[8];
      v43 = OUTLINED_FUNCTION_102();
      v44(v43);
      sub_26666B718();
      sub_26666B9B8();
      v45 = OUTLINED_FUNCTION_79_0();
      v46(v45);
      v47 = OUTLINED_FUNCTION_88_0();
      v49 = v48(v47);
      if (v37)
      {
        MEMORY[0x2667887C0](v49);
        OUTLINED_FUNCTION_103();
        if (v50)
        {
          OUTLINED_FUNCTION_106();
        }

        sub_26666C4E8();
        v36 = v87;
      }

      v38 += v85;
      --v34;
      v12 = v86;
    }

    while (v34);

    if (sub_2665C485C() == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v51 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v51, qword_28156D7E8);
      v52 = sub_26666C148();
      v53 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v53))
      {
        v37 = OUTLINED_FUNCTION_20();
        *v37 = 0;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v54, v55, v56, v57, v58, 2u);
        OUTLINED_FUNCTION_9_5();
      }

      OUTLINED_FUNCTION_49_1();
      if (!v52)
      {
LABEL_28:
        v66 = *(v36 + 32);
LABEL_29:
        OUTLINED_FUNCTION_9_21();
        [objc_opt_self() successWithResolvedPlacemark_];

        MEMORY[8](v37, v39);
        v40(v38, v52);
        sub_26656CAEC(v76, &qword_28007F2E8, &qword_2666783C8);
        sub_26656CAEC(v77, &qword_28007F300, &qword_2666783E0);
        sub_26656CAEC(v78, &qword_28007F318, &qword_2666783F8);
        sub_26656CAEC(v79, &qword_28007F330, &qword_266678410);
        sub_26656CAEC(v81, &qword_28007F340, &qword_266678420);
        sub_26656CAEC(v83, &unk_28007F360, &qword_266678440);
        sub_26666C628();
        OUTLINED_FUNCTION_48_2();
        goto LABEL_30;
      }
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v59 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v59, qword_28156D7E8);

      v52 = sub_26666C148();
      v60 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_1(v60))
      {
        v37 = OUTLINED_FUNCTION_21();
        *v37 = 134217984;
        *(v37 + 4) = sub_2665C485C();

        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v61, v62, v63, v64, v65, 0xCu);
        OUTLINED_FUNCTION_9_5();
      }

      else
      {
      }

      OUTLINED_FUNCTION_49_1();
      if (!v52)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_107();
    goto LABEL_29;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v15 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v15, qword_28156D7E8);
  sub_26666C148();
  v16 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v16))
  {
    v17 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v17);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    OUTLINED_FUNCTION_10();
  }

  v23 = v12[85];
  v24 = v12[84];
  v25 = v12[83];
  OUTLINED_FUNCTION_39_3();
  v26 = objc_opt_self();
  sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
  v27 = sub_266606794([objc_allocWithZone(MEMORY[0x277CE41F8]) init], v24, v23, 0);
  [v26 successWithResolvedPlacemark_];

  v28 = OUTLINED_FUNCTION_78_0();
  v29(v28);
  (*(v14 + 8))();
  sub_26656CAEC(v77, &qword_28007F2E8, &qword_2666783C8);
  sub_26656CAEC(v78, &qword_28007F300, &qword_2666783E0);
  sub_26656CAEC(v79, &qword_28007F318, &qword_2666783F8);
  sub_26656CAEC(v80, &qword_28007F330, &qword_266678410);
  sub_26656CAEC(v82, &qword_28007F340, &qword_266678420);
  sub_26656CAEC(v84, &unk_28007F360, &qword_266678440);
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
LABEL_30:
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
}

uint64_t sub_2666139E0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v0[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F250, &qword_266678338);
  v0[8] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v0[9] = v5;
  v0[10] = OUTLINED_FUNCTION_19();
  v6 = sub_26666B648();
  v0[11] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_19();
  v8 = sub_26666B588();
  v0[14] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v0[15] = v9;
  v0[16] = OUTLINED_FUNCTION_19();
  v10 = sub_266668EB8();
  v0[17] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v0[18] = v11;
  v0[19] = OUTLINED_FUNCTION_19();
  v12 = sub_266668D98();
  OUTLINED_FUNCTION_3_3(v12);
  v0[20] = OUTLINED_FUNCTION_65_1();
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v13 = sub_26666B6A8();
  v0[23] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v0[24] = v14;
  v0[25] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F258, &qword_266678340);
  OUTLINED_FUNCTION_3_3(v15);
  v0[26] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F260, &qword_266678348);
  OUTLINED_FUNCTION_3_3(v16);
  v0[27] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F268, &qword_266678350);
  OUTLINED_FUNCTION_3_3(v17);
  v0[28] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F270, &qword_266678358);
  OUTLINED_FUNCTION_3_3(v18);
  v0[29] = OUTLINED_FUNCTION_19();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F278, &qword_266678360);
  OUTLINED_FUNCTION_3_3(v19);
  v0[30] = OUTLINED_FUNCTION_19();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F280, &qword_266678368);
  OUTLINED_FUNCTION_3_3(v20);
  v0[31] = OUTLINED_FUNCTION_19();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  OUTLINED_FUNCTION_3_3(v21);
  v0[32] = OUTLINED_FUNCTION_65_1();
  v0[33] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F290, &qword_266678370);
  OUTLINED_FUNCTION_3_3(v22);
  v0[34] = OUTLINED_FUNCTION_19();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F298, &qword_266678378);
  OUTLINED_FUNCTION_3_3(v23);
  v0[35] = OUTLINED_FUNCTION_19();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A0, &qword_266678380);
  OUTLINED_FUNCTION_3_3(v24);
  v0[36] = OUTLINED_FUNCTION_19();
  v25 = sub_26666B9D8();
  v0[37] = v25;
  OUTLINED_FUNCTION_3_1(v25);
  v0[38] = v26;
  v0[39] = OUTLINED_FUNCTION_65_1();
  v0[40] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A8, &qword_266678388);
  OUTLINED_FUNCTION_3_3(v27);
  v0[41] = OUTLINED_FUNCTION_19();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B0, &qword_266678390);
  OUTLINED_FUNCTION_3_3(v28);
  v0[42] = OUTLINED_FUNCTION_19();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B8, &qword_266678398);
  OUTLINED_FUNCTION_3_3(v29);
  v0[43] = OUTLINED_FUNCTION_65_1();
  v0[44] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C0, &qword_2666783A0);
  OUTLINED_FUNCTION_3_3(v30);
  v0[45] = OUTLINED_FUNCTION_19();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C8, &qword_2666783A8);
  OUTLINED_FUNCTION_3_3(v31);
  v0[46] = OUTLINED_FUNCTION_19();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D0, &qword_2666783B0);
  OUTLINED_FUNCTION_3_3(v32);
  v0[47] = OUTLINED_FUNCTION_19();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D8, &qword_2666783B8);
  OUTLINED_FUNCTION_3_3(v33);
  v0[48] = OUTLINED_FUNCTION_19();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E0, &qword_2666783C0);
  OUTLINED_FUNCTION_3_3(v34);
  v0[49] = OUTLINED_FUNCTION_19();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E8, &qword_2666783C8);
  OUTLINED_FUNCTION_3_3(v35);
  v0[50] = OUTLINED_FUNCTION_65_1();
  v0[51] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F0, &qword_2666783D0);
  OUTLINED_FUNCTION_3_3(v36);
  v0[52] = OUTLINED_FUNCTION_19();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F8, &qword_2666783D8);
  OUTLINED_FUNCTION_3_3(v37);
  v0[53] = OUTLINED_FUNCTION_19();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F300, &qword_2666783E0);
  OUTLINED_FUNCTION_3_3(v38);
  v0[54] = OUTLINED_FUNCTION_65_1();
  v0[55] = swift_task_alloc();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F308, &qword_2666783E8);
  OUTLINED_FUNCTION_3_3(v39);
  v0[56] = OUTLINED_FUNCTION_19();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F310, &qword_2666783F0);
  OUTLINED_FUNCTION_3_3(v40);
  v0[57] = OUTLINED_FUNCTION_19();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F318, &qword_2666783F8);
  OUTLINED_FUNCTION_3_3(v41);
  v0[58] = OUTLINED_FUNCTION_65_1();
  v0[59] = swift_task_alloc();
  v0[60] = swift_task_alloc();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F320, &qword_266678400);
  OUTLINED_FUNCTION_3_3(v42);
  v0[61] = OUTLINED_FUNCTION_19();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F328, &qword_266678408);
  OUTLINED_FUNCTION_3_3(v43);
  v0[62] = OUTLINED_FUNCTION_19();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F330, &qword_266678410);
  OUTLINED_FUNCTION_3_3(v44);
  v0[63] = OUTLINED_FUNCTION_65_1();
  v0[64] = swift_task_alloc();
  v0[65] = swift_task_alloc();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F338, &qword_266678418);
  OUTLINED_FUNCTION_3_3(v45);
  v0[66] = OUTLINED_FUNCTION_19();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F340, &qword_266678420);
  OUTLINED_FUNCTION_3_3(v46);
  v0[67] = OUTLINED_FUNCTION_65_1();
  v0[68] = swift_task_alloc();
  v0[69] = swift_task_alloc();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F348, &qword_266678428);
  OUTLINED_FUNCTION_3_3(v47);
  v0[70] = OUTLINED_FUNCTION_19();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F350, &qword_266678430);
  OUTLINED_FUNCTION_3_3(v48);
  v0[71] = OUTLINED_FUNCTION_19();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F358, &qword_266678438);
  OUTLINED_FUNCTION_3_3(v49);
  v0[72] = OUTLINED_FUNCTION_19();
  v50 = sub_26666B7D8();
  v0[73] = v50;
  OUTLINED_FUNCTION_3_1(v50);
  v0[74] = v51;
  v0[75] = OUTLINED_FUNCTION_65_1();
  v0[76] = swift_task_alloc();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F360, &qword_266678440);
  OUTLINED_FUNCTION_3_3(v52);
  v0[77] = OUTLINED_FUNCTION_65_1();
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v53 = type metadata accessor for Signpost.OpenSignpost(0);
  v0[80] = v53;
  OUTLINED_FUNCTION_3_3(v53);
  v0[81] = OUTLINED_FUNCTION_19();
  v0[5] = &type metadata for AceUserLocationProvider;
  v0[6] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v54 = swift_allocObject();
  v0[2] = v54;
  sub_2665524C0(v2, v54 + 16);
  v55 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v55, v56, v57);
}

uint64_t sub_26661436C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C160 != -1)
  {
    OUTLINED_FUNCTION_25_9(&qword_28156C160);
  }

  OUTLINED_FUNCTION_83_0();
  v17 = qword_28156D800;
  v13[82] = qword_28156D800;
  v17;
  sub_26666C088();
  v18 = sub_26666C638();
  OUTLINED_FUNCTION_32_7(v18, &dword_266549000);
  OUTLINED_FUNCTION_54_1();
  v19 = [v12 setLocation];
  v13[83] = v19;
  if (v19)
  {
    v20 = v19;
    v21 = sub_26659A29C(v19, &selRef_name);
    v13[84] = v21;
    v13[85] = v22;
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_97_0(v21, v22);
      OUTLINED_FUNCTION_12_18(v23);
      sub_26659A29C(v20, &selRef_country);
      if (v24)
      {
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_94();
        if (v25)
        {
          sub_26656CAEC(v13[72], &qword_28007F358, &qword_266678438);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_15();
          v45(v44);
          v46 = OUTLINED_FUNCTION_33_7();
          v47(v46);
          v48 = sub_26666B7F8();
          OUTLINED_FUNCTION_5_4(v16, v49, v50, v48);
          sub_26666B808();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
          OUTLINED_FUNCTION_75_0();
          v55 = OUTLINED_FUNCTION_84_0();
          v56(v55);
          v14 = &qword_266678440;
          OUTLINED_FUNCTION_98();
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_66_0(v57, v58, v59);
        }
      }

      v60 = sub_26666B848();
      OUTLINED_FUNCTION_12_18(v60);
      sub_26659A29C(v20, &selRef_postalCode);
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_2_32(v15, v63, v64, v62);
        sub_26666B828();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v65 = sub_26666B708();
      OUTLINED_FUNCTION_12_18(v65);
      sub_26659A29C(v20, &selRef_locality);
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_4_31(v67);
        v68 = sub_26666B6F8();
        OUTLINED_FUNCTION_1_37(v68);
        sub_26666B6D8();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v69 = sub_26666B768();
      OUTLINED_FUNCTION_12_18(v69);
      sub_26659A29C(v20, &selRef_administrativeArea);
      if (v70)
      {
        OUTLINED_FUNCTION_44_2();
        v71 = OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_31(v71);
        v72 = sub_26666B758();
        OUTLINED_FUNCTION_1_37(v72);
        sub_26666B738();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v73 = v13[55];
      v74 = sub_26666B7A8();
      OUTLINED_FUNCTION_12_18(v74);
      sub_26659A29C(v20, &selRef_subAdministrativeArea);
      if (v75)
      {
        OUTLINED_FUNCTION_44_2();
        v76 = OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_4_31(v76);
        v77 = sub_26666B798();
        OUTLINED_FUNCTION_1_37(v77);
        sub_26666B778();
        v73 = &qword_28007F300;
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v78 = v13[51];
      v79 = sub_26666B4F8();
      v80 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      v83 = sub_26659A29C(v20, &selRef_thoroughfare);
      if (v84)
      {
        v14 = v83;
        v73 = v84;
        v85 = sub_26659A29C(v20, &selRef_subThoroughfare);
        if (v86)
        {
          v87 = OUTLINED_FUNCTION_22_7(v85);
          OUTLINED_FUNCTION_4_31(v87);
          sub_26666B378();
          v88 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
          OUTLINED_FUNCTION_56_0();
          sub_26666B388();
          v92 = OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_13_14(v92, 0, v93, v94);
          sub_26666B498();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
          OUTLINED_FUNCTION_74_0();
          v99 = sub_26666B4A8();
          OUTLINED_FUNCTION_13_14(v73, 0, v100, v99);
          sub_26666B398();
          v16 = v174;
          v101 = OUTLINED_FUNCTION_14_13();
          OUTLINED_FUNCTION_69_0(v101, v102, v103);
          sub_26666B508();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
          v15 = v175;
          v108 = OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_69_0(v108, v109, v110);
          sub_26666B4D8();
          v111 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
          OUTLINED_FUNCTION_29_7();
          v78 = &qword_28007F2E8;
          v73 = &qword_2666783C8;
          OUTLINED_FUNCTION_73_0();
          v115 = OUTLINED_FUNCTION_17_12();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v79);
          v118 = OUTLINED_FUNCTION_33_7();
          sub_266616CA8(v118, v119, &qword_28007F2E8, &qword_2666783C8);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_24_10();
      v120 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
      v124 = OUTLINED_FUNCTION_78_0();
      sub_266617158(v124, v125, v126, v127);
      sub_266617158(v14, v15, &qword_28007F340, &qword_266678420);
      sub_266617158(v20, v73, &qword_28007F318, &qword_2666783F8);
      v128 = OUTLINED_FUNCTION_88_0();
      sub_266617158(v128, v129, v130, v131);
      v132 = sub_26666B858();
      OUTLINED_FUNCTION_5_4(v176, v133, v134, v132);
      sub_26666B728();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
      v139 = [v20 timeZone];
      if (v139)
      {
        v20 = v139;
        sub_266668E98();

        v140 = 0;
      }

      else
      {
        v140 = 1;
      }

      OUTLINED_FUNCTION_53_1(v139, v140);
      v141 = OUTLINED_FUNCTION_25();
      sub_266616CA8(v141, v142, v143, v144);
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        sub_26656CAEC(v20, &qword_28007D280, &unk_266671C80);
      }

      else
      {
        v78 = v13[17];
        v145 = sub_266668E78();
        v147 = OUTLINED_FUNCTION_36_3(v145, v146);
        v148(v147);
      }

      OUTLINED_FUNCTION_19_18();
      v149 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_5_4(v149, v150, v151, v152);
      sub_26666B9A8();
      v153 = OUTLINED_FUNCTION_11_19();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
      sub_266617158(v20, v79, &qword_28007F2E8, &qword_2666783C8);
      v157 = sub_26666B4C8();
      OUTLINED_FUNCTION_5_4(v16, v158, v159, v157);
      v160 = sub_26666B528();
      OUTLINED_FUNCTION_5_4(v78, v161, v162, v160);
      sub_26666B468();
      v163 = OUTLINED_FUNCTION_15_14();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);

      OUTLINED_FUNCTION_52_2();
      sub_26666B478();
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      sub_266617158(v173, v14, &qword_28007F300, &qword_2666783E0);

      OUTLINED_FUNCTION_21_8();
      __swift_project_boxed_opaque_existential_1(v13 + 2, &type metadata for AceUserLocationProvider);
      v171 = swift_task_alloc();
      v13[86] = v171;
      *v171 = v13;
      OUTLINED_FUNCTION_82_0(v171);
      OUTLINED_FUNCTION_4_7();

      return sub_266618ABC();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v26 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
  v27 = sub_26666C148();
  v28 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v28))
  {
    v29 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
  [swift_getObjCClassFromMetadata() notRequired];
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_266614D94()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_34_6();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 696) = v0;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
  }

  OUTLINED_FUNCTION_85_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266614EAC(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F250, &qword_266678338);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_26666B648();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = sub_26666B588();
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  v7 = sub_266668EB8();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  sub_266668D98();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = sub_26666B6A8();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F258, &qword_266678340);
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F260, &qword_266678348);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F268, &qword_266678350);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F270, &qword_266678358);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F278, &qword_266678360);
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F280, &qword_266678368);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F290, &qword_266678370);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F298, &qword_266678378);
  v2[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A0, &qword_266678380);
  v2[36] = swift_task_alloc();
  v9 = sub_26666B9D8();
  v2[37] = v9;
  v2[38] = *(v9 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2A8, &qword_266678388);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B0, &qword_266678390);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2B8, &qword_266678398);
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C0, &qword_2666783A0);
  v2[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2C8, &qword_2666783A8);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D0, &qword_2666783B0);
  v2[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2D8, &qword_2666783B8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E0, &qword_2666783C0);
  v2[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2E8, &qword_2666783C8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F0, &qword_2666783D0);
  v2[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F2F8, &qword_2666783D8);
  v2[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F300, &qword_2666783E0);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F308, &qword_2666783E8);
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F310, &qword_2666783F0);
  v2[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F318, &qword_2666783F8);
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F320, &qword_266678400);
  v2[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F328, &qword_266678408);
  v2[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F330, &qword_266678410);
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F338, &qword_266678418);
  v2[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F340, &qword_266678420);
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F348, &qword_266678428);
  v2[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F350, &qword_266678430);
  v2[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F358, &qword_266678438);
  v2[72] = swift_task_alloc();
  v10 = sub_26666B7D8();
  v2[73] = v10;
  v2[74] = *(v10 - 8);
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F360, &qword_266678440);
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = type metadata accessor for Signpost.OpenSignpost(0);
  v2[81] = swift_task_alloc();
  v2[5] = &type metadata for AceUserLocationProvider;
  v2[6] = &off_28780A9C8;
  v11 = swift_allocObject();
  v2[2] = v11;
  sub_2665524C0(a2, v11 + 16);

  return MEMORY[0x2822009F8](sub_266615A68, 0, 0);
}

uint64_t sub_266615A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  if (qword_28156C160 != -1)
  {
    OUTLINED_FUNCTION_25_9(&qword_28156C160);
  }

  OUTLINED_FUNCTION_83_0();
  v17 = qword_28156D800;
  v13[82] = qword_28156D800;
  v17;
  sub_26666C088();
  v18 = sub_26666C638();
  OUTLINED_FUNCTION_32_7(v18, &dword_266549000);
  OUTLINED_FUNCTION_54_1();
  v19 = [v12 location];
  v13[83] = v19;
  if (v19)
  {
    v20 = v19;
    v21 = sub_26659A29C(v19, &selRef_name);
    v13[84] = v21;
    v13[85] = v22;
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_97_0(v21, v22);
      OUTLINED_FUNCTION_12_18(v23);
      sub_26659A29C(v20, &selRef_country);
      if (v24)
      {
        OUTLINED_FUNCTION_96_0();
        OUTLINED_FUNCTION_94();
        if (v25)
        {
          sub_26656CAEC(v13[72], &qword_28007F358, &qword_266678438);
        }

        else
        {
          v44 = OUTLINED_FUNCTION_20_15();
          v45(v44);
          v46 = OUTLINED_FUNCTION_33_7();
          v47(v46);
          v48 = sub_26666B7F8();
          OUTLINED_FUNCTION_5_4(v16, v49, v50, v48);
          sub_26666B808();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
          OUTLINED_FUNCTION_75_0();
          v55 = OUTLINED_FUNCTION_84_0();
          v56(v55);
          v14 = &qword_266678440;
          OUTLINED_FUNCTION_98();
          OUTLINED_FUNCTION_26_2();
          OUTLINED_FUNCTION_66_0(v57, v58, v59);
        }
      }

      v60 = sub_26666B848();
      OUTLINED_FUNCTION_12_18(v60);
      sub_26659A29C(v20, &selRef_postalCode);
      if (v61)
      {
        v62 = OUTLINED_FUNCTION_42_5();
        OUTLINED_FUNCTION_2_32(v15, v63, v64, v62);
        sub_26666B828();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v65 = sub_26666B708();
      OUTLINED_FUNCTION_12_18(v65);
      sub_26659A29C(v20, &selRef_locality);
      if (v66)
      {
        v67 = OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_4_31(v67);
        v68 = sub_26666B6F8();
        OUTLINED_FUNCTION_1_37(v68);
        sub_26666B6D8();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v69 = sub_26666B768();
      OUTLINED_FUNCTION_12_18(v69);
      sub_26659A29C(v20, &selRef_administrativeArea);
      if (v70)
      {
        OUTLINED_FUNCTION_44_2();
        v71 = OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_31(v71);
        v72 = sub_26666B758();
        OUTLINED_FUNCTION_1_37(v72);
        sub_26666B738();
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v73 = v13[55];
      v74 = sub_26666B7A8();
      OUTLINED_FUNCTION_12_18(v74);
      sub_26659A29C(v20, &selRef_subAdministrativeArea);
      if (v75)
      {
        OUTLINED_FUNCTION_44_2();
        v76 = OUTLINED_FUNCTION_99_0();
        OUTLINED_FUNCTION_4_31(v76);
        v77 = sub_26666B798();
        OUTLINED_FUNCTION_1_37(v77);
        sub_26666B778();
        v73 = &qword_28007F300;
        OUTLINED_FUNCTION_31_7();
        OUTLINED_FUNCTION_3_31();
      }

      v78 = v13[51];
      v79 = sub_26666B4F8();
      v80 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v79);
      v83 = sub_26659A29C(v20, &selRef_thoroughfare);
      if (v84)
      {
        v14 = v83;
        v73 = v84;
        v85 = sub_26659A29C(v20, &selRef_subThoroughfare);
        if (v86)
        {
          v87 = OUTLINED_FUNCTION_22_7(v85);
          OUTLINED_FUNCTION_4_31(v87);
          sub_26666B378();
          v88 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
          OUTLINED_FUNCTION_56_0();
          sub_26666B388();
          v92 = OUTLINED_FUNCTION_77();
          OUTLINED_FUNCTION_13_14(v92, 0, v93, v94);
          sub_26666B498();
          OUTLINED_FUNCTION_55_1();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v98);
          OUTLINED_FUNCTION_74_0();
          v99 = sub_26666B4A8();
          OUTLINED_FUNCTION_13_14(v73, 0, v100, v99);
          sub_26666B398();
          v16 = v174;
          v101 = OUTLINED_FUNCTION_14_13();
          OUTLINED_FUNCTION_69_0(v101, v102, v103);
          sub_26666B508();
          OUTLINED_FUNCTION_7_6();
          __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
          v15 = v175;
          v108 = OUTLINED_FUNCTION_11_19();
          OUTLINED_FUNCTION_69_0(v108, v109, v110);
          sub_26666B4D8();
          v111 = OUTLINED_FUNCTION_16_15();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v114);
          OUTLINED_FUNCTION_29_7();
          v78 = &qword_28007F2E8;
          v73 = &qword_2666783C8;
          OUTLINED_FUNCTION_73_0();
          v115 = OUTLINED_FUNCTION_17_12();
          __swift_storeEnumTagSinglePayload(v115, v116, v117, v79);
          v118 = OUTLINED_FUNCTION_33_7();
          sub_266616CA8(v118, v119, &qword_28007F2E8, &qword_2666783C8);
        }

        else
        {
        }
      }

      OUTLINED_FUNCTION_24_10();
      v120 = OUTLINED_FUNCTION_16_15();
      __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
      v124 = OUTLINED_FUNCTION_78_0();
      sub_266617158(v124, v125, v126, v127);
      sub_266617158(v14, v15, &qword_28007F340, &qword_266678420);
      sub_266617158(v20, v73, &qword_28007F318, &qword_2666783F8);
      v128 = OUTLINED_FUNCTION_88_0();
      sub_266617158(v128, v129, v130, v131);
      v132 = sub_26666B858();
      OUTLINED_FUNCTION_5_4(v176, v133, v134, v132);
      sub_26666B728();
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v135, v136, v137, v138);
      v139 = [v20 timeZone];
      if (v139)
      {
        v20 = v139;
        sub_266668E98();

        v140 = 0;
      }

      else
      {
        v140 = 1;
      }

      OUTLINED_FUNCTION_53_1(v139, v140);
      v141 = OUTLINED_FUNCTION_25();
      sub_266616CA8(v141, v142, v143, v144);
      OUTLINED_FUNCTION_70_0();
      if (v25)
      {
        sub_26656CAEC(v20, &qword_28007D280, &unk_266671C80);
      }

      else
      {
        v78 = v13[17];
        v145 = sub_266668E78();
        v147 = OUTLINED_FUNCTION_36_3(v145, v146);
        v148(v147);
      }

      OUTLINED_FUNCTION_19_18();
      v149 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_5_4(v149, v150, v151, v152);
      sub_26666B9A8();
      v153 = OUTLINED_FUNCTION_11_19();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
      sub_266617158(v20, v79, &qword_28007F2E8, &qword_2666783C8);
      v157 = sub_26666B4C8();
      OUTLINED_FUNCTION_5_4(v16, v158, v159, v157);
      v160 = sub_26666B528();
      OUTLINED_FUNCTION_5_4(v78, v161, v162, v160);
      sub_26666B468();
      v163 = OUTLINED_FUNCTION_15_14();
      __swift_storeEnumTagSinglePayload(v163, v164, v165, v166);

      OUTLINED_FUNCTION_52_2();
      sub_26666B478();
      OUTLINED_FUNCTION_55_1();
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
      sub_266617158(v173, v14, &qword_28007F300, &qword_2666783E0);

      OUTLINED_FUNCTION_21_8();
      __swift_project_boxed_opaque_existential_1(v13 + 2, &type metadata for AceUserLocationProvider);
      v171 = swift_task_alloc();
      v13[86] = v171;
      *v171 = v13;
      OUTLINED_FUNCTION_82_0(v171);
      OUTLINED_FUNCTION_4_7();

      return sub_266618ABC();
    }
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v26 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
  v27 = sub_26666C148();
  v28 = sub_26666C5E8();
  if (OUTLINED_FUNCTION_9(v28))
  {
    v29 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v29);
    OUTLINED_FUNCTION_4_9();
    _os_log_impl(v30, v31, v32, v33, v34, 2u);
    OUTLINED_FUNCTION_10();
  }

  sub_266552C44(0, &qword_28156C0A8, 0x277CD3EA8);
  [swift_getObjCClassFromMetadata() notRequired];
  sub_26666C628();
  OUTLINED_FUNCTION_48_2();
  sub_26666C078();
  OUTLINED_FUNCTION_5_23();
  OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_7();

  return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

id sub_266616490(char **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v8 = OUTLINED_FUNCTION_3_3(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v77 - v12;
  v14 = sub_266668D38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v77 - v19;
  MEMORY[0x28223BE20](v18);
  v81 = v77 - v21;
  v85 = type metadata accessor for EventProvider();
  v86 = &off_287806290;
  v84[0] = a2;

  v22 = [a1 allDay];
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v23 = sub_26666C658();
  v24 = v23;
  if (v22)
  {
    v25 = sub_26666C678();

    if (v25)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v26 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v26, qword_28156D7E8);
      v27 = sub_26666C148();
      v28 = sub_26666C618();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_61;
      }

      v29 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v29);
      v30 = "[IntentHandlingUtil] DateTimeRange is all day, skipping conflicting event check.";
LABEL_60:
      _os_log_impl(&dword_266549000, v27, v28, v30, a1, 2u);
      OUTLINED_FUNCTION_10();
LABEL_61:

      goto LABEL_62;
    }
  }

  else
  {
  }

  v31 = [a1 startDate];
  if (v31)
  {
    v32 = v31;
    sub_266668CE8();

    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v33, 1, v14);
  sub_266616CA8(v11, v13, &qword_28007D140, &qword_26666F140);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_26656CAEC(v13, &qword_28007D140, &qword_26666F140);
LABEL_57:
    if (qword_28156C150 != -1)
    {
LABEL_72:
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v71 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v71, qword_28156D7E8);
    v27 = sub_26666C148();
    v28 = sub_26666C5F8();
    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_61;
    }

    v72 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v72);
    v30 = "[IntentHandlingUtil] DateTimeRange is not valid, skipping conflicting event check.";
    goto LABEL_60;
  }

  sub_266668C78();
  v34 = *(v15 + 8);
  v34(v13, v14);
  v35 = v81;
  (*(v15 + 32))(v81, v20, v14);
  v36 = [a1 endDate];
  if (!v36)
  {
    v34(v35, v14);
    goto LABEL_57;
  }

  v37 = v36;
  v77[0] = v34;
  v77[1] = v15 + 8;
  v78 = v14;
  v79 = a1;
  sub_266668CE8();

  __swift_project_boxed_opaque_existential_1(v84, v85);
  v38 = sub_26655B128();
  v83[0] = MEMORY[0x277D84F90];
  v39 = sub_2665C485C();
  v40 = 0;
  a1 = (v38 & 0xFFFFFFFFFFFFFF8);
  while (v39 != v40)
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x266788B60](v40, v38);
    }

    else
    {
      if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v41 = *(v38 + 8 * v40 + 32);
    }

    v42 = v41;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    if ([v41 isAllDay])
    {
LABEL_21:

      goto LABEL_35;
    }

    v43 = sub_2665EF62C(v42);
    if (!v44)
    {
      if (!a4)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

    if (!a4)
    {

LABEL_33:
      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      goto LABEL_35;
    }

    if (v43 != v82 || v44 != a4)
    {
      v46 = sub_26666CAC8();

      if (v46)
      {
        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_35:
    ++v40;
  }

  v47 = v83[0];
  v48 = sub_2665C485C();
  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  a1 = &selRef_setConflictingEventIdentifiers_;
LABEL_38:
  v51 = v81;
  while (v48 != v49)
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x266788B60](v49, v47);
    }

    else
    {
      if (v49 >= *(v47 + 16))
      {
        goto LABEL_71;
      }

      v52 = *(v47 + 8 * v49 + 32);
    }

    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_70;
    }

    v54 = v52;
    v55 = [v54 appEntityIdentifier];
    if (v55)
    {
      v56 = v55;
      v57 = sub_26666C308();
      v59 = v58;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2665C6350();
        v50 = v62;
      }

      v60 = *(v50 + 16);
      if (v60 >= *(v50 + 24) >> 1)
      {
        sub_2665C6350();
        v50 = v63;
      }

      *(v50 + 16) = v60 + 1;
      v61 = v50 + 16 * v60;
      *(v61 + 32) = v57;
      *(v61 + 40) = v59;
      v49 = v53;
      goto LABEL_38;
    }

    ++v49;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v64 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v64, qword_28156D7E8);

  v65 = sub_26666C148();
  v66 = sub_26666C618();
  v67 = OUTLINED_FUNCTION_7_2(v66);
  v69 = v78;
  v68 = v79;
  if (v67)
  {
    v70 = OUTLINED_FUNCTION_21();
    *v70 = 134217984;
    *(v70 + 4) = *(v50 + 16);

    _os_log_impl(&dword_266549000, v65, v66, "[IntentHandlingUtil] Found %ld conflicting event(s)", v70, 0xCu);
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  v75 = v77[0];
  if (*(v50 + 16))
  {
    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v83[3] = &type metadata for IntentHandlingUtil.DateTimeRangeConflictResult;
    v83[0] = v50;
    v83[1] = v68;
    v76 = v68;
    v73 = sub_266611008(v83);
    v75(v80, v69);
    v75(v51, v69);
    goto LABEL_63;
  }

  v75(v80, v69);
  v75(v51, v69);
LABEL_62:
  v73 = 0;
LABEL_63:
  __swift_destroy_boxed_opaque_existential_1(v84);
  return v73;
}

uint64_t sub_266616CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return v4;
}

uint64_t sub_266616CF4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616D84()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616E14()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616EA4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_266616F34()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t objectdestroy_13Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_26661700C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_17();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_1(v1);

  return v4(v3);
}

uint64_t sub_26661709C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarDateTimeResolver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266617100(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266617158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_105(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_3_31()
{
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v0);

  return sub_266616CA8(v4, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_21()
{
  v2 = *(v0 - 104);
  v3 = v2[81];
  *(v0 - 136) = v2[82];
  *(v0 - 128) = v3;
  v4 = v2[79];
  *(v0 - 152) = v2[69];
  *(v0 - 144) = v4;
  v5 = v2[65];
  *(v0 - 168) = v2[60];
  *(v0 - 160) = v5;
  v6 = v2[55];
  *(v0 - 184) = v2[51];
  *(v0 - 176) = v6;
}

uint64_t OUTLINED_FUNCTION_10_18()
{

  return sub_266617100(v0, type metadata accessor for Signpost.OpenSignpost);
}

uint64_t OUTLINED_FUNCTION_12_18(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_18()
{
  v3 = v0[77];
  *(v1 - 136) = v0[67];
  *(v1 - 128) = v3;
  *(v1 - 120) = v0[63];
  v4 = v0[58];
  v5 = v0[55];
  *(v1 - 192) = v0[50];
  *(v1 - 184) = v5;
  v6 = v0[40];
  v7 = v0[35];
  *(v1 - 176) = v0[36];
  *(v1 - 168) = v6;
  *(v1 - 152) = v7;
  *(v1 - 144) = v4;
  *(v1 - 160) = v0[34];

  return MEMORY[0x2821B90E0](0);
}

uint64_t OUTLINED_FUNCTION_21_8()
{
  v20 = *(v8 - 192);
  v19 = *(v8 - 112);
  v10 = *(v8 - 176);
  v12 = *(v8 - 136);
  v11 = *(v8 - 128);
  v14 = *(v8 - 152);
  v13 = *(v8 - 144);
  v15 = *(v8 - 120);
  v16 = *(v8 - 160);
  v17 = *(v8 - 88);

  return MEMORY[0x2821B90A0](v10, v11, v12, v13, v15, v14, v16, v17, v19, v3, v5, v20, v6, v0, v7, v1, v2, v4, 0, 0);
}

uint64_t OUTLINED_FUNCTION_22_7(uint64_t a1)
{
  v4 = v1[51];
  *(v2 - 120) = v1[50];
  *(v2 - 112) = v4;
  v5 = v1[44];
  *(v2 - 160) = v1[46];
  *(v2 - 152) = v5;
  v6 = v1[43];
  *(v2 - 144) = v1[42];
  *(v2 - 136) = v6;
  *(v2 - 128) = v1[41];
  *(v2 - 168) = a1;

  return MEMORY[0x2821B8730](0);
}

uint64_t OUTLINED_FUNCTION_24_10()
{
  v3 = *(v0 + 272);
  *(v1 - 120) = *(v0 + 280);
  *(v1 - 112) = v3;

  return MEMORY[0x2821B8CE8](0);
}

uint64_t OUTLINED_FUNCTION_25_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return MEMORY[0x2821B8918](v2, v1, v4, v5, v3, v0);
}

uint64_t OUTLINED_FUNCTION_31_7()
{

  return sub_26656CAEC(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1, uint64_t a2)
{

  return sub_26666C078();
}

uint64_t OUTLINED_FUNCTION_36_3(uint64_t a1, uint64_t a2)
{
  *(v3 - 88) = a1;
  *(v3 - 112) = a2;
  return v2;
}

void OUTLINED_FUNCTION_39_3()
{
  v4 = v1[82];
  *(v2 - 112) = v1[81];
  *(v2 - 136) = v1[79];
  *(v2 - 128) = v4;
  v5 = v1[69];
  *(v2 - 152) = v1[65];
  *(v2 - 144) = v5;
  v6 = v1[60];
  *(v2 - 168) = v1[55];
  *(v2 - 160) = v6;
  v7 = v1[51];
  *(v2 - 184) = v1[40];
  *(v2 - 176) = v7;
  *(v2 - 192) = v1[37];
}

uint64_t OUTLINED_FUNCTION_41_0()
{

  return MEMORY[0x2821B8C68](0);
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return MEMORY[0x2821B8E48](0);
}

uint64_t OUTLINED_FUNCTION_49_1()
{

  return sub_2665C4864();
}

uint64_t OUTLINED_FUNCTION_52_2()
{
  v4 = *(v2 - 96);

  return MEMORY[0x2821B8860](v4, v1, v0);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 256);
  v5 = *(v2 + 136);

  return __swift_storeEnumTagSinglePayload(v4, a2, 1, v5);
}

void OUTLINED_FUNCTION_54_1()
{
  v5 = v0 + *(v2 + 20);
  *v5 = v1;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
}

uint64_t OUTLINED_FUNCTION_56_0()
{

  return MEMORY[0x2821B8728](v2, v1, v3, v0);
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_66_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return sub_266616CA8(v5, v4, v6, v7);
}

uint64_t OUTLINED_FUNCTION_73_0()
{
  v4 = *(v2 - 112);

  return sub_26656CAEC(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_74_0()
{
  v4 = *(v2 - 168);

  return MEMORY[0x2821B88A8](v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_75_0()
{

  return MEMORY[0x2821B8E20](v0, v1, v2);
}

void OUTLINED_FUNCTION_86_0()
{
  *(v3 + 720) = v1;
  *(v3 + 704) = v0;
  *(v3 + 712) = v2;
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_96_0()
{

  return MEMORY[0x2821B8E10]();
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2)
{
  *(v2 - 104) = a2;
  *(v2 - 96) = a1;

  return MEMORY[0x2821B8E38](0);
}

uint64_t OUTLINED_FUNCTION_98()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_99_0()
{

  return MEMORY[0x2821B8CD0](0);
}

uint64_t OUTLINED_FUNCTION_100()
{

  return MEMORY[0x2821B8CB0](0);
}

uint64_t OUTLINED_FUNCTION_105(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_106()
{

  return sub_26666C4B8();
}

void OUTLINED_FUNCTION_107()
{

  JUMPOUT(0x266788B60);
}

uint64_t sub_266617AA0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266617B60, 0, 0);
}

uint64_t sub_266617B60()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[DeleteEvent FlowStrategy] makeIntentExecutionBehavior", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  v10 = *(v8 + 40);
  sub_266618A68();

  v11 = v10;
  v12 = v9;
  sub_2666695D8();
  sub_266669608();
  v13 = sub_2666695F8();
  (*(v6 + 8))(v5, v7);

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_266617CE8()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v4, v28);
  (*(v2 + 8))(v4, v1);
  sub_26655A100(v28, v27);
  if (v27[40] == 255)
  {
    goto LABEL_5;
  }

  sub_26655A100(v27, &v23);
  if (v26 != 5 || (v5 = vorrq_s8(v24, v25), *&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v23))
  {
    sub_266553988(&v23);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v6 = sub_26666C168();
    __swift_project_value_buffer(v6, qword_28156D7E8);
    sub_26655A100(v28, &v23);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      sub_26655A100(&v23, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v11 = sub_26666C318();
      v13 = v12;
      sub_266560930(&v23);
      v14 = sub_2665BFC90(v11, v13, &v22);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266549000, v7, v8, "[DeleteEvent FlowStrategy] unsupported task, ignoring: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266560930(&v23);
    }

    sub_2666697E8();
    goto LABEL_11;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v16 = sub_26666C168();
  __swift_project_value_buffer(v16, qword_28156D7E8);
  v17 = sub_26666C148();
  v18 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266549000, v17, v18, "[DeleteEvent FlowStrategy] returning .cancel()", v19, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697C8();
LABEL_11:
  sub_266560930(v28);
  return sub_266560930(v27);
}

uint64_t sub_266618034()
{
  OUTLINED_FUNCTION_14();
  v0[2] = v1;
  v2 = sub_266669E58();
  v0[3] = v2;
  v0[4] = *(v2 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2666180FC, 0, 0);
}

uint64_t sub_2666180FC()
{
  v26 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_26666C148();
  v8 = sub_26666C608();
  v9 = OUTLINED_FUNCTION_7_2(v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_26666C318();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2665BFC90(v15, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_266549000, v7, v8, "[DeleteEvent FlowStrategy] Action for input incorrectly returned .handle for parse: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    v19 = v0[3];
    v20 = v0[4];

    (*(v20 + 8))(v10, v19);
  }

  sub_26656CBFC();
  swift_allocError();
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 2;
  swift_willThrow();

  v22 = v0[1];

  return v22();
}

uint64_t sub_266618348()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658BF28;

  return sub_266618034();
}

uint64_t sub_2666183DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2665582C8;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2666184A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2665582C8;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_26661856C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2665582C8;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_266618638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2665582C8;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_266618704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_266557FE8;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2666187E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2665582C8;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2666188BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8910;

  return sub_266617AA0();
}

unint64_t sub_266618964()
{
  result = qword_28007F3E0;
  if (!qword_28007F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F3E0);
  }

  return result;
}

unint64_t sub_2666189BC()
{
  result = qword_28007F3E8;
  if (!qword_28007F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F3E8);
  }

  return result;
}

unint64_t sub_266618A14()
{
  result = qword_28007F3F0;
  if (!qword_28007F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F3F0);
  }

  return result;
}

unint64_t sub_266618A68()
{
  result = qword_28007D010;
  if (!qword_28007D010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D010);
  }

  return result;
}

uint64_t sub_266618ADC()
{
  v1 = v0[2];
  sub_266552C44(0, &qword_28007F3F8, 0x277D47310);
  v2 = sub_266663660(4, 300.0, 0.5);
  v0[3] = v2;
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v5 = swift_task_alloc();
  v0[4] = v5;
  v6 = sub_266552C44(0, &unk_28007F400, 0x277D477E8);
  *v5 = v0;
  v5[1] = sub_266618BFC;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_266618BFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_266618FF8;
  }

  else
  {
    v4 = sub_266618D10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266618D10()
{
  v35 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = v1;
  v4 = sub_26666C148();
  v5 = sub_26666C618();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v7 = 134284035;
    [v6 latitude];
    *(v7 + 4) = v9;
    *(v7 + 12) = 2049;
    [v6 longitude];
    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    v11 = sub_26661905C(v6);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 0x3E6C696E3CLL;
      v13 = 0xE500000000000000;
    }

    v14 = sub_2665BFC90(v11, v13, &v34);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_266549000, v4, v5, "[AceUserLocationProvider] SAGetRequestOrigin returned lat:%{private}f long:%{private}f status: %s", v7, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  [*(v0 + 40) latitude];
  if (v15 == 0.0 && ([*(v0 + 40) longitude], v16 == 0.0))
  {
    v17 = sub_26666C148();
    v18 = sub_26666C5F8();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 40);
    v21 = *(v0 + 24);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[AceUserLocationProvider] Lat and Long are both zero returning nil", v22, 2u);
      MEMORY[0x266789690](v22, -1, -1);
    }

    v23 = 0;
    v24 = 0;
    v25 = 1;
  }

  else
  {
    v26 = *(v0 + 40);
    v27 = *(v0 + 24);
    [v26 latitude];
    v29 = v28;
    [v26 longitude];
    v31 = v30;

    v25 = 0;
    v23 = v29;
    v24 = v31;
  }

  v32 = *(v0 + 8);

  return v32(v23, v24, v25);
}

uint64_t sub_266618FF8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26661905C(void *a1)
{
  v1 = [a1 status];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t sub_2666190D0()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266619188()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[CreateEvent FlowStrategy] makeIntentExecutionBehavior", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];

  v10 = *(v8 + 40);
  sub_2665A6960();

  v11 = v10;
  v12 = v9;
  sub_2666695D8();
  sub_266669608();
  v13 = sub_2666695F8();
  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_8();

  return v14(v13);
}

uint64_t sub_266619314()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  sub_26659AC88(v4, v40);
  (*(v2 + 8))(v4, v1);
  sub_26655A100(v40, v39);
  if (v39[40] == 255)
  {
    goto LABEL_6;
  }

  sub_26655A100(v39, &v35);
  if (v38)
  {
    if (v38 == 5)
    {
      v5 = vorrq_s8(v36, v37);
      if (!(*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)) | v35))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v24 = sub_26666C168();
        __swift_project_value_buffer(v24, qword_28156D7E8);
        v25 = sub_26666C148();
        v26 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          OUTLINED_FUNCTION_8_0();
          _os_log_impl(v28, v29, v30, v31, v27, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_2666697C8();
        goto LABEL_12;
      }
    }

    sub_266553988(&v35);
LABEL_6:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v6 = sub_26666C168();
    __swift_project_value_buffer(v6, qword_28156D7E8);
    sub_26655A100(v40, &v35);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      sub_26655A100(&v35, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v11 = sub_26666C318();
      v13 = v12;
      sub_266557D74(&v35, &unk_28007D200, &qword_26666FD20);
      v14 = sub_2665BFC90(v11, v13, &v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_266549000, v7, v8, "[CreateEvent FlowStrategy] unsupported task, ignoring: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266557D74(&v35, &unk_28007D200, &qword_26666FD20);
    }

    sub_2666697E8();
LABEL_12:
    sub_266557D74(v40, &unk_28007D200, &qword_26666FD20);
    return sub_266557D74(v39, &unk_28007D200, &qword_26666FD20);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v15 = sub_26666C168();
  __swift_project_value_buffer(v15, qword_28156D7E8);
  v16 = sub_26666C148();
  v17 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v19, v20, v21, v22, v18, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_2666697D8();
  sub_266557D74(v40, &unk_28007D200, &qword_26666FD20);
  sub_266553988(&v35);
  return sub_266557D74(v39, &unk_28007D200, &qword_26666FD20);
}

uint64_t sub_266619764()
{
  OUTLINED_FUNCTION_14();
  v1[32] = v2;
  v1[33] = v0;
  v1[31] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v1[34] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2666197F8()
{
  v29 = v0;
  v1 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1(*(v0 + 264), *(*(v0 + 264) + 24));
  sub_26659AC88(v1, v0 + 16);
  sub_26655A100(v0 + 16, v0 + 64);
  if (*(v0 + 104))
  {
    if (*(v0 + 104) == 255)
    {
      sub_266557D74(v0 + 64, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 64);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v9 = sub_26666C168();
    __swift_project_value_buffer(v9, qword_28156D7E8);
    sub_26655A100(v0 + 16, v0 + 112);
    v10 = sub_26666C148();
    v11 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_7_1(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 136315138;
      sub_26655A100(v0 + 112, v0 + 160);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
      v14 = sub_26666C318();
      v16 = v15;
      sub_266557D74(v0 + 112, &unk_28007D200, &qword_26666FD20);
      v17 = sub_2665BFC90(v14, v16, &v28);

      *(v12 + 4) = v17;
      OUTLINED_FUNCTION_8_0();
      _os_log_impl(v18, v19, v20, v21, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      sub_266557D74(v0 + 112, &unk_28007D200, &qword_26666FD20);
    }

    v22 = *(v0 + 248);
    type metadata accessor for IntentConversionError(0);
    sub_26655A170();
    swift_allocError();
    v24 = v23;
    v25 = sub_266669E58();
    (*(*(v25 - 8) + 16))(v24, v22, v25);
    swift_willThrow();
    sub_266557D74(v0 + 16, &unk_28007D200, &qword_26666FD20);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v2 = *(v0 + 272);
    sub_2665536F8((v0 + 64), v0 + 208);
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    __swift_project_boxed_opaque_existential_1((v0 + 208), v3);
    v5 = sub_266668D38();
    *(v0 + 280) = v5;
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v5);
    v27 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    *(v0 + 288) = v6;
    *v6 = v0;
    v6[1] = sub_266619C00;
    v7 = *(v0 + 272);

    return v27(1, v7, v3, v4);
  }
}

uint64_t sub_266619C00()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 296) = v5;

  sub_266557D74(v2, &qword_28007D140, &qword_26666F140);
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266619D18()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[29];
  v4 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 26, v3);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_266619E68;
  v6 = v0[34];

  return v8(0, v6, v3, v4);
}

uint64_t sub_266619E68()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 272);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 312) = v5;

  sub_266557D74(v2, &qword_28007D140, &qword_26666F140);
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266619F80()
{
  v26 = v0;
  if (*(v0 + 256))
  {
    v1 = sub_266582C3C(*(v0 + 296), 0);
  }

  else
  {
    v1 = *(v0 + 312);
  }

  v2 = v1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  v4 = v2;
  v5 = sub_26666C148();
  v6 = sub_26666C618();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 296);
  if (v7)
  {
    v24 = *(v0 + 312);
    v23 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_26666C308();
    v15 = v14;

    v16 = sub_2665BFC90(v13, v15, &v25);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_8_0();
    _os_log_impl(v17, v18, v19, v20, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  sub_266557D74(v0 + 16, &unk_28007D200, &qword_26666FD20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  OUTLINED_FUNCTION_8();

  return v21(v4);
}

uint64_t sub_26661A1A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665597B8;

  return sub_266619764();
}

uint64_t sub_26661A24C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266559F10;

  return sub_2666190D0();
}

unint64_t sub_26661A2F4()
{
  result = qword_28007F410;
  if (!qword_28007F410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F410);
  }

  return result;
}

unint64_t sub_26661A34C()
{
  result = qword_28007F418;
  if (!qword_28007F418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F418);
  }

  return result;
}

unint64_t sub_26661A3A4()
{
  result = qword_28007F420;
  if (!qword_28007F420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F420);
  }

  return result;
}

uint64_t sub_26661A418()
{
  v2 = OUTLINED_FUNCTION_17_7();
  v129 = type metadata accessor for CalendarNLv3Intent(v2);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v130 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D230, &qword_26666E2B8);
  v7 = OUTLINED_FUNCTION_3_3(v6);
  MEMORY[0x28223BE20](v7);
  v138 = &v121 - v8;
  OUTLINED_FUNCTION_19_4();
  sub_26666B208();
  OUTLINED_FUNCTION_3_0();
  v140 = v10;
  v141 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v139 = v12 - v11;
  OUTLINED_FUNCTION_19_4();
  sub_266669E88();
  OUTLINED_FUNCTION_3_0();
  v126 = v14;
  v127 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v125 = v16 - v15;
  OUTLINED_FUNCTION_19_4();
  sub_266669E48();
  OUTLINED_FUNCTION_3_0();
  v133 = v18;
  v134 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_5();
  v128 = v19 - v20;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v21);
  v132 = &v121 - v22;
  OUTLINED_FUNCTION_19_4();
  v23 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_5();
  v136 = v27 - v28;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v29);
  v124 = &v121 - v30;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v31);
  v131 = &v121 - v32;
  OUTLINED_FUNCTION_12_7();
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v121 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  v43 = v42 - v41;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v44 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v44, qword_28156D7E8);
  v45 = *(v39 + 16);
  v137 = v0;
  v45(v43, v0, v37);
  v135 = v1;
  v46 = sub_26666C148();
  v47 = sub_26666C618();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v123 = v25;
    v49 = v23;
    v50 = v48;
    v51 = swift_slowAlloc();
    v122 = v36;
    v52 = v51;
    v142 = v51;
    *v50 = 136315138;
    sub_266669DF8();
    v53 = sub_26666C318();
    v55 = v54;
    v56 = OUTLINED_FUNCTION_33_7();
    v57(v56);
    v58 = sub_2665BFC90(v53, v55, &v142);

    *(v50 + 4) = v58;
    _os_log_impl(&dword_266549000, v46, v47, "[EventReadingStrategy] Parsing skip request for: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v36 = v122;
    OUTLINED_FUNCTION_4_1();
    v23 = v49;
    v25 = v123;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v59 = OUTLINED_FUNCTION_33_7();
    v60(v59);
  }

  sub_266669DF8();
  v61 = (*(v25 + 88))(v36, v23);
  v63 = v140;
  v62 = v141;
  v64 = v138;
  v65 = v139;
  if (v61 == *MEMORY[0x277D5C128])
  {
    v66 = v136;
    (*(v25 + 16))(v136, v36, v23);
    (*(v25 + 96))(v66, v23);
    (*(v63 + 32))(v65, v66, v62);
    sub_26666B0F8();
    v67 = sub_26666A588();
    v68 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_27_5(v68, v69, v67);
    if (v78)
    {
      sub_26656CAEC(v64, &qword_28007D230, &qword_26666E2B8);
      v82 = 0;
      v85 = 0;
    }

    else
    {
      v82 = sub_26666A548();
      v83 = v64;
      v85 = v84;
      (*(*(v67 - 8) + 8))(v83, v67);
    }

    if (qword_28007CE30 != -1)
    {
      swift_once();
    }

    v86 = sub_26666A0F8();
    if (v85)
    {
      if (v82 == v86 && v85 == v87)
      {

LABEL_38:
        v110 = OUTLINED_FUNCTION_55_2();
        v111(v110);
        if (qword_28007CE68 != -1)
        {
          swift_once();
        }

        sub_2666258F4(&qword_28007D2D8, type metadata accessor for CalendarNLv3Intent, &unk_266679EEC);
        v112 = sub_26666A538();
        LOBYTE(v97) = sub_266603C24(6, v112);

        sub_2666258A0();
        v113 = OUTLINED_FUNCTION_65_2();
        v114(v113);
        goto LABEL_43;
      }

      v89 = OUTLINED_FUNCTION_119(v86, v87, v86);

      if (v89)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    v98 = sub_26666C148();
    v99 = sub_26666C618();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v100);
      OUTLINED_FUNCTION_35_1(&dword_266549000, v101, v102, "[EventReadingStrategy] NLv3 intent is not a calendarEvent intent");
      OUTLINED_FUNCTION_10();
    }

    v103 = OUTLINED_FUNCTION_65_2();
    v104(v103);
LABEL_36:
    LOBYTE(v97) = 0;
    goto LABEL_43;
  }

  if (v61 == *MEMORY[0x277D5C150])
  {
    v70 = v131;
    (*(v25 + 16))(v131, v36, v23);
    v71 = OUTLINED_FUNCTION_109();
    v72(v71);
    (*(v133 + 32))(v132, v70, v134);
    v73 = sub_266669E28();
    v75 = v74;
    v142 = 0xD000000000000028;
    v143 = 0x800000026667D640;
    MEMORY[0x266788710](46, 0xE100000000000000);
    v76 = MEMORY[0x266788710](0xD000000000000014, 0x800000026667DA00);
    v78 = v73 == v142 && v75 == v143;
    if (v78)
    {
    }

    else
    {
      v79 = OUTLINED_FUNCTION_119(v76, v77, v142);

      if ((v79 & 1) == 0)
      {
        v80 = OUTLINED_FUNCTION_65_2();
        v81(v80);
LABEL_33:
        v105 = sub_26666C148();
        v106 = sub_26666C5F8();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v107);
          OUTLINED_FUNCTION_35_1(&dword_266549000, v108, v109, "[EventReadingStrategy] Unsupported barge in input type");
          OUTLINED_FUNCTION_10();
        }

        goto LABEL_36;
      }
    }

    v97 = v128;
    v115 = OUTLINED_FUNCTION_56_1();
    v116(v115);
    sub_2665629D8(v97);
    LOBYTE(v97) = v117;
    v118 = OUTLINED_FUNCTION_65_2();
    v119(v118);
    LOBYTE(v97) = v97 == 0;
    goto LABEL_43;
  }

  if (v61 != *MEMORY[0x277D5C160])
  {
    goto LABEL_33;
  }

  (*(v25 + 16))(v124, v36, v23);
  v90 = OUTLINED_FUNCTION_109();
  v91(v90);
  v92 = v125;
  v93 = v126;
  v94 = OUTLINED_FUNCTION_31_1();
  v95 = v127;
  v96(v94);
  v97 = sub_2665F1A5C();
  (*(v93 + 8))(v92, v95);
  if (v97)
  {

    LOBYTE(v97) = 1;
  }

LABEL_43:
  (*(v25 + 8))(v36, v23);
  return v97 & 1;
}

uint64_t sub_26661AE50(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_5();
  v6 = v4 - v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = [a1 dateTimeRange];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 startDateComponents];

    if (v18)
    {
      sub_266668A28();

      v19 = sub_266668B08();
      v20 = 0;
    }

    else
    {
      v19 = sub_266668B08();
      v20 = 1;
    }

    __swift_storeEnumTagSinglePayload(v13, v20, 1, v19);
    sub_2665D515C(v13, v15);
    sub_266668B08();
    OUTLINED_FUNCTION_27_5(v15, 1, v19);
    if (!v25)
    {
LABEL_20:
      sub_26656CAEC(v15, &unk_28007DC90, &qword_266676EB0);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v45 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v45, qword_28156D7E8);
      v40 = sub_26666C148();
      v46 = sub_26666C618();
      if (!OUTLINED_FUNCTION_98_0(v46))
      {
        v44 = 0;
        goto LABEL_26;
      }

      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_120(&dword_266549000, v47, v48, "[EventReadingStrategy] Find intent has date time criteria using continuous day prompt mode");
      v44 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    sub_266668B08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }

  sub_26656CAEC(v15, &unk_28007DC90, &qword_266676EB0);
  v26 = [a1 dateTimeRange];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 endDateComponents];

    if (v28)
    {
      sub_266668A28();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v34 = sub_266668B08();
    __swift_storeEnumTagSinglePayload(v6, v29, 1, v34);
    v35 = OUTLINED_FUNCTION_31_1();
    sub_2665D515C(v35, v36);
    v37 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_27_5(v37, v38, v34);
    if (!v25)
    {
      v15 = v10;
      goto LABEL_20;
    }
  }

  else
  {
    sub_266668B08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  }

  sub_26656CAEC(v10, &unk_28007DC90, &qword_266676EB0);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v39 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v39, qword_28156D7E8);
  v40 = sub_26666C148();
  v41 = sub_26666C618();
  if (OUTLINED_FUNCTION_98_0(v41))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_120(&dword_266549000, v42, v43, "[EventReadingStrategy] Find intent does not have date time criteria using blocking day prompt mode");
    v44 = 1;
LABEL_24:
    OUTLINED_FUNCTION_4_1();
    goto LABEL_26;
  }

  v44 = 1;
LABEL_26:

  return v44;
}

uint64_t sub_26661B1E4()
{
  OUTLINED_FUNCTION_14();
  v1[27] = v2;
  v1[28] = v0;
  v3 = type metadata accessor for Snippet(0);
  v1[29] = v3;
  OUTLINED_FUNCTION_3_3(v3);
  v1[30] = OUTLINED_FUNCTION_32_1();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v4 = sub_266669CA8();
  v1[34] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[35] = v5;
  v1[36] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[37] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[38] = OUTLINED_FUNCTION_19();
  v8 = sub_266669708();
  v1[39] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[40] = v9;
  v1[41] = OUTLINED_FUNCTION_32_1();
  v1[42] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[43] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[44] = OUTLINED_FUNCTION_32_1();
  v12 = swift_task_alloc();
  v1[46] = OUTLINED_FUNCTION_105_0(v12);
  v1[47] = swift_task_alloc();
  v13 = swift_task_alloc();
  v1[49] = OUTLINED_FUNCTION_104(v13);
  v14 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26661B404()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makeCancelledOutput");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[28];
  v7 = v0[29];

  sub_2666257C8(v8 + 96, (v0 + 2));
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  v15 = swift_task_alloc();
  v0[50] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_89_1(v15);

  return sub_2665D94F4();
}

uint64_t sub_26661B540()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 408) = v5;
  *(v3 + 416) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_90();
    sub_26656CAEC(v6, v7, v8);
    OUTLINED_FUNCTION_90();
    sub_26656CAEC(v9, v10, v11);
    sub_26656CC94(v3 + 16);
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26661B678()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  v84 = v0[47];
  v85 = v0[49];
  v1 = v0[28];
  v83 = v0[29];
  sub_2666699C8();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_2666696F8();
  _s15ReadingStrategyVMa(0);
  v6 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_18_2();
  v7 = OUTLINED_FUNCTION_83_1();
  v8(v7);
  v9 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_65(v9, v10, v11, v6);
  v12 = sub_266669788();
  OUTLINED_FUNCTION_36_4(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v14 = OUTLINED_FUNCTION_95(v13);
  v0[53] = v14;
  OUTLINED_FUNCTION_100_0(v14, xmmword_26666E050);
  v15 = OUTLINED_FUNCTION_87_1();
  v1(v15);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_67_0(v16);
  OUTLINED_FUNCTION_42_6(v17, 2);
  sub_266669BC8();

  sub_2665A17F8(v85, v84, &unk_28007DE30, &unk_26666EAF0);
  v18 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v18, v19, v83);
  if (v29)
  {
    v20 = v0 + 47;
  }

  else
  {
    v21 = v0[46];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v25, v26, v27, v28);
    OUTLINED_FUNCTION_23_11(v21);
    if (!v29)
    {
      v57 = v0[32];
      v58 = v0[29];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v59, v57, v60);
      OUTLINED_FUNCTION_9_22();
      v0[20] = v58;
      OUTLINED_FUNCTION_2_33();
      v63 = sub_2666258F4(v61, v62, &protocol conformance descriptor for Snippet);
      v64 = OUTLINED_FUNCTION_82_1(v63);
      OUTLINED_FUNCTION_78_1(v64);
      v65 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_85_1(v65);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[54] = v66;
      *v66 = v67;
      v66[1] = sub_26661BB80;
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2821BB460](v68);
    }

    v20 = v0 + 46;
    OUTLINED_FUNCTION_1_38();
    sub_2666258A0();
  }

  v30 = v0[29];
  OUTLINED_FUNCTION_123(*v20);
  v31 = OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_125(v31, v32);
  v33 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, v34, v30);
  v36 = v0[29];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_122(v0[45]);
    v37 = OUTLINED_FUNCTION_25_10();
    sub_2665A17F8(v37, v38, v39, &unk_26666EAF0);
    v40 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v40, v41, v36);
    if (v29)
    {
      sub_26656CAEC(v0[44], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[57] = v42;
      *v42 = v43;
      v42[1] = sub_26661C31C;
      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2821BB488](v44);
    }

    else
    {
      v71 = v0[29];
      v70 = v0[30];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v72, v70, v73);
      OUTLINED_FUNCTION_9_22();
      v0[10] = v71;
      OUTLINED_FUNCTION_2_33();
      v76 = sub_2666258F4(v74, v75, &protocol conformance descriptor for Snippet);
      v77 = OUTLINED_FUNCTION_96_1(v76);
      OUTLINED_FUNCTION_78_1(v77);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[56] = v78;
      *v78 = v79;
      v78[1] = sub_26661C09C;
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_17_4();

      return MEMORY[0x2821BB478](v80);
    }
  }

  else
  {
    v46 = v0[31];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v47, v46, v48);
    OUTLINED_FUNCTION_9_22();
    v0[15] = v36;
    OUTLINED_FUNCTION_2_33();
    v51 = sub_2666258F4(v49, v50, &protocol conformance descriptor for Snippet);
    v52 = OUTLINED_FUNCTION_97_1(v51);
    OUTLINED_FUNCTION_85_1(v52);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[55] = v53;
    *v53 = v54;
    v53[1] = sub_26661BE1C;
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_17_4();

    return MEMORY[0x2821BB468](v55);
  }
}

uint64_t sub_26661BB80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_93_0();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 264);

  sub_2666258A0();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661BE1C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661BF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 248);

  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661C09C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661C19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 240);

  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661C31C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26661C41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();

  v24 = OUTLINED_FUNCTION_10_19();
  v25(v24);
  v26 = OUTLINED_FUNCTION_20_16();
  v27(v26);
  OUTLINED_FUNCTION_44_3();
  v28 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v28, v29, &unk_26666EAF0);
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v20, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v21 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661C58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  v28 = v18[37];
  v29 = v18[36];
  v30 = v18[33];
  v31 = v18[32];
  v32 = v18[31];
  v33 = v18[30];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_17_4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, v31, v32, v33, a16, a17, a18);
}

uint64_t sub_26661C694()
{
  OUTLINED_FUNCTION_14();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for Snippet(0);
  v1[26] = v5;
  OUTLINED_FUNCTION_3_3(v5);
  v1[27] = OUTLINED_FUNCTION_32_1();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_266669CA8();
  v1[31] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[32] = v7;
  v1[33] = OUTLINED_FUNCTION_19();
  v8 = sub_266669708();
  v1[34] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[35] = v9;
  v10 = OUTLINED_FUNCTION_32_1();
  v1[37] = OUTLINED_FUNCTION_126(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[38] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v12);
  v1[39] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v1[40] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v14);
  v1[41] = OUTLINED_FUNCTION_32_1();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v15 = swift_task_alloc();
  v1[46] = OUTLINED_FUNCTION_105_0(v15);
  v16 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_26661C8B8()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makeResultIntroductionOutput");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[24];

  v0[47] = sub_26662571C(v7);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_26661C9E8;

  return sub_266641B5C();
}

uint64_t sub_26661C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_5_1();
  v21 = v20;
  OUTLINED_FUNCTION_15_1();
  *v22 = v21;
  v23 = *v19;
  OUTLINED_FUNCTION_5_0();
  *v24 = v23;
  v21[49] = v25;

  if (v18)
  {
    v39 = v21[37];
    v40 = v21[36];
    v41 = v21[33];
    v42 = v21[30];
    v43 = v21[29];
    v44 = v21[28];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_17_4();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40, v41, v42, v43, v44, v18, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_17_4();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_26661D158()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661D260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v22 = v20[45];
  v44 = v20[46];
  v23 = v20[35];
  v24 = v20[32];
  v25 = v20[33];
  v26 = v20[31];
  OUTLINED_FUNCTION_61();
  sub_2666258A0();
  sub_2666258A0();
  (*(v24 + 8))(v25, v26);
  v27 = OUTLINED_FUNCTION_62();
  v28(v27);
  v29 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v29, v30, v31);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v32, v33, v34);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23 + 8, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24 + 8, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, v44, a18, a19, a20);
}

uint64_t sub_26661D40C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_69_1();
  v25(v24);
  v26 = OUTLINED_FUNCTION_62();
  v27(v26);
  v28 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v28, v29, v30);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v31, v32, v33);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v21, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661D68C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_69_1();
  v25(v24);
  v26 = OUTLINED_FUNCTION_62();
  v27(v26);
  v28 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v28, v29, v30);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v31, v32, v33);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v21, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661D90C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26661DA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = v20[45];
  v24 = v20[46];
  (*(v20[32] + 8))(v20[33], v20[31]);
  v25 = OUTLINED_FUNCTION_62();
  v26(v25);
  v27 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v27, v28, v29);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v30, v31, v32);
  OUTLINED_FUNCTION_11_20();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661DB90()
{
  OUTLINED_FUNCTION_14();
  v1[22] = v2;
  v1[23] = v0;
  v3 = type metadata accessor for Snippet(0);
  v1[24] = v3;
  OUTLINED_FUNCTION_3_3(v3);
  v1[25] = OUTLINED_FUNCTION_32_1();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v4 = sub_266669CA8();
  v1[29] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[30] = v5;
  v1[31] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[32] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[33] = OUTLINED_FUNCTION_19();
  v8 = sub_266669708();
  v1[34] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[35] = v9;
  v10 = OUTLINED_FUNCTION_32_1();
  v1[37] = OUTLINED_FUNCTION_126(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[38] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v12);
  v1[39] = OUTLINED_FUNCTION_32_1();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26661DDB8()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makeConclusionOutput");
    OUTLINED_FUNCTION_10();
  }

  v7 = swift_task_alloc();
  *(v0 + 360) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_89_1(v7);

  return sub_2665A3358();
}

uint64_t sub_26661DEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();
  OUTLINED_FUNCTION_5_1();
  v21 = v20;
  OUTLINED_FUNCTION_15_1();
  *v22 = v21;
  *v22 = *v19;
  v21[46] = v23;

  if (v18)
  {
    v37 = v21[33];
    v38 = v21[32];
    v39 = v21[31];
    v40 = v21[28];
    v41 = v21[27];
    v42 = v21[26];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_17_4();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, v37, v38, v39, v40, v41, v42, v18, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_17_4();

    return MEMORY[0x2822009F8](v33, v34, v35);
  }
}

uint64_t sub_26661E5F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661E6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v21 = v20[43];
  v43 = v20[44];
  v22 = v20[30];
  v23 = v20[31];
  v25 = v20[28];
  v24 = v20[29];
  OUTLINED_FUNCTION_61();
  sub_2666258A0();
  sub_2666258A0();
  (*(v22 + 8))(v23, v24);
  v26 = OUTLINED_FUNCTION_62();
  v27(v26);
  v28 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v28, v29, v30);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v31, v32, v33);
  OUTLINED_FUNCTION_12_19();
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22 + 8, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v43, a18, a19, a20);
}

uint64_t sub_26661E8A8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661E9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_69_1();
  v25(v24);
  v26 = OUTLINED_FUNCTION_62();
  v27(v26);
  v28 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v28, v29, v30);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v31, v32, v33);
  OUTLINED_FUNCTION_12_19();
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23 + 8, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v21, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661EB28()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v24 = OUTLINED_FUNCTION_69_1();
  v25(v24);
  v26 = OUTLINED_FUNCTION_62();
  v27(v26);
  v28 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v28, v29, v30);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v31, v32, v33);
  OUTLINED_FUNCTION_12_19();
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23 + 8, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v21, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661EDA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26661EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = v20[43];
  v24 = v20[44];
  (*(v20[30] + 8))(v20[31], v20[29]);
  v25 = OUTLINED_FUNCTION_62();
  v26(v25);
  v27 = OUTLINED_FUNCTION_25_10();
  sub_26656CAEC(v27, v28, v29);
  OUTLINED_FUNCTION_90();
  sub_26656CAEC(v30, v31, v32);
  OUTLINED_FUNCTION_12_19();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26661F02C()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[30] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[31] = OUTLINED_FUNCTION_32_1();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v5 = sub_266669CA8();
  v1[35] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[38] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[39] = OUTLINED_FUNCTION_19();
  v9 = sub_266669708();
  v1[40] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[41] = v10;
  v1[42] = OUTLINED_FUNCTION_32_1();
  v1[43] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[44] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v12);
  v13 = OUTLINED_FUNCTION_32_1();
  v1[46] = OUTLINED_FUNCTION_105_0(v13);
  v1[47] = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_104(v14);
  v1[50] = OUTLINED_FUNCTION_124(v15);
  v16 = sub_266668D38();
  v1[51] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v1[52] = v17;
  v1[53] = OUTLINED_FUNCTION_19();
  v18 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26661F294()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makePromptForNextDay");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[51];
  v10 = v0[28];

  sub_26666B018();
  swift_allocObject();
  v0[54] = sub_26666B008();
  _s17DayEventGroupingsV8GroupingVMa(0);
  v11 = sub_2665C485C();
  sub_26666BD08();
  (*(v8 + 16))(v7, v10, v9);
  v12 = sub_2665CB9E8(v7, 0);
  v0[55] = v12;
  v13 = swift_task_alloc();
  v0[56] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_89_1(v13);

  return sub_2665A3D38(*&v11, 0, 0, v12);
}

uint64_t sub_26661F43C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v5;
  *(v3 + 464) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v21 = v20[58];
  v22 = v20[54];
  v23 = v20[44];
  v24 = v20[30];
  sub_2666257C8(v20[29] + 96, (v20 + 2));
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
  sub_266662A60(v22, v23);
  v31 = v20[57];
  if (v21)
  {
    v32 = v20[49];
    v33 = v20[50];

    OUTLINED_FUNCTION_103_0(v32);
    OUTLINED_FUNCTION_103_0(v33);
    sub_26656CC94((v20 + 2));
    v124 = v20[39];
    v125 = v20[38];
    v126 = v20[37];
    v127 = v20[34];
    v128 = v20[33];
    v129 = v20[32];
    v131 = v20[31];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_19_2();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, v124, v125, v126, v127, v128, v129, v131, v21, a17, a18, a19, a20);
  }

  v132 = v20[48];
  v133 = v20[50];
  v43 = v20[29];
  v130 = v20[30];
  sub_2666699C8();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  sub_2666696B8();
  _s15ReadingStrategyVMa(0);
  v48 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_18_2();
  v49 = OUTLINED_FUNCTION_83_1();
  v50(v49);
  v51 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_65(v51, v52, v53, v48);
  v54 = sub_266669788();
  OUTLINED_FUNCTION_36_4(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v56 = OUTLINED_FUNCTION_95(v55);
  v20[59] = v56;
  OUTLINED_FUNCTION_100_0(v56, xmmword_26666E050);
  v57 = OUTLINED_FUNCTION_87_1();
  v43(v57);
  v58 = swift_task_alloc();
  v59 = OUTLINED_FUNCTION_67_0(v58);
  OUTLINED_FUNCTION_42_6(v59, 1);
  OUTLINED_FUNCTION_117();

  sub_2665A17F8(v133, v132, &unk_28007DE30, &unk_26666EAF0);
  v60 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v60, v61, v130);
  if (v71)
  {
    v62 = v20 + 48;
  }

  else
  {
    v63 = v20[47];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v64, v65, v66);
    v67 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v67, v68, v69, v70);
    OUTLINED_FUNCTION_23_11(v63);
    if (!v71)
    {
      v99 = v20[33];
      v100 = v20[30];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v101, v99, v102);
      OUTLINED_FUNCTION_9_22();
      v20[20] = v100;
      OUTLINED_FUNCTION_2_33();
      v105 = sub_2666258F4(v103, v104, &protocol conformance descriptor for Snippet);
      v106 = OUTLINED_FUNCTION_82_1(v105);
      OUTLINED_FUNCTION_78_1(v106);
      v107 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_85_1(v107);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[60] = v108;
      *v108 = v109;
      v108[1] = sub_26661FBB8;
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB460](v110);
    }

    v62 = v20 + 47;
    OUTLINED_FUNCTION_1_38();
    sub_2666258A0();
  }

  v72 = v20[30];
  OUTLINED_FUNCTION_123(*v62);
  v73 = OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_125(v73, v74);
  v75 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, v76, v72);
  v78 = v20[30];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_122(v20[46]);
    v79 = OUTLINED_FUNCTION_25_10();
    sub_2665A17F8(v79, v80, v81, &unk_26666EAF0);
    v82 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v82, v83, v78);
    if (v71)
    {
      sub_26656CAEC(v20[45], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[63] = v84;
      *v84 = v85;
      v84[1] = sub_266620364;
      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB488](v86);
    }

    else
    {
      v113 = v20[30];
      v112 = v20[31];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v114, v112, v115);
      OUTLINED_FUNCTION_9_22();
      v20[10] = v113;
      OUTLINED_FUNCTION_2_33();
      v118 = sub_2666258F4(v116, v117, &protocol conformance descriptor for Snippet);
      v119 = OUTLINED_FUNCTION_96_1(v118);
      OUTLINED_FUNCTION_78_1(v119);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[62] = v120;
      *v120 = v121;
      v120[1] = sub_2666200D8;
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB478](v122);
    }
  }

  else
  {
    v88 = v20[32];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v89, v88, v90);
    OUTLINED_FUNCTION_9_22();
    v20[15] = v78;
    OUTLINED_FUNCTION_2_33();
    v93 = sub_2666258F4(v91, v92, &protocol conformance descriptor for Snippet);
    v94 = OUTLINED_FUNCTION_97_1(v93);
    OUTLINED_FUNCTION_85_1(v94);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v20[61] = v95;
    *v95 = v96;
    v95[1] = sub_26661FE4C;
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_19_2();

    return MEMORY[0x2821BB468](v97);
  }
}

uint64_t sub_26661FBB8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_93_0();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v27 = *(v24 + 272);
  OUTLINED_FUNCTION_14_14();
  sub_2666258A0();
  OUTLINED_FUNCTION_31_1();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_8_21();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v25, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v27, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v24 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_26661FE4C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26661FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_8_21();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666200D8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2666201D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_8_21();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266620364()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266620464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v28 = OUTLINED_FUNCTION_8_21();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666205E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();

  v37 = v20[58];
  v30 = v20[39];
  v31 = v20[38];
  v32 = v20[37];
  v33 = v20[34];
  v34 = v20[33];
  v35 = v20[32];
  v36 = v20[31];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_266620714()
{
  OUTLINED_FUNCTION_14();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[33] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[34] = OUTLINED_FUNCTION_32_1();
  v1[35] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[37] = OUTLINED_FUNCTION_126(v5);
  v6 = sub_266669CA8();
  v1[38] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[39] = v7;
  v1[40] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[41] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[42] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[43] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[44] = v11;
  v12 = OUTLINED_FUNCTION_32_1();
  v1[46] = OUTLINED_FUNCTION_105_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v1[47] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v14);
  v15 = OUTLINED_FUNCTION_32_1();
  v16 = OUTLINED_FUNCTION_104(v15);
  v1[50] = OUTLINED_FUNCTION_124(v16);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266620928()
{
  OUTLINED_FUNCTION_11();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makePromptForNextWindow");
    OUTLINED_FUNCTION_10();
  }

  type metadata accessor for CalendarResultSetWindowPromptOptions.Builder();
  swift_initStackObject();
  v7 = sub_2665E2400();
  v7[18] = sub_266669D98() & 1;
  type metadata accessor for CalendarResultSetWindowPromptOptions();
  swift_allocObject();
  v8 = sub_2665E243C(v7);
  *(v0 + 432) = v8;
  type metadata accessor for DayEventsReadingFlow.Window(0);
  v9 = sub_2665C485C();
  v10 = swift_task_alloc();
  *(v0 + 440) = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_89_1(v10);

  return sub_2665A3D38(*&v9, 0, v8, 0);
}

uint64_t sub_266620AA8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v4;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266620BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v21 = v20[57];
  v22 = v20[47];
  v24 = v20[32];
  v23 = v20[33];
  sub_26666B018();
  swift_allocObject();
  v25 = sub_26666B008();
  v20[58] = v25;
  sub_2666257C8(v24 + 96, (v20 + 2));
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v23);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v23);
  sub_266662A60(v25, v22);
  v32 = v20[56];
  if (v21)
  {
    v33 = v20[53];
    v34 = v20[52];

    sub_26656CAEC(v34, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v33, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CC94((v20 + 2));
    v124 = v20[41];
    v125 = v20[40];
    v126 = v20[37];
    v127 = v20[36];
    v128 = v20[35];
    v130 = v20[34];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_19_2();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, v124, v125, v126, v127, v128, v130, v21, a17, a18, a19, a20);
  }

  v131 = v20[51];
  v132 = v20[53];
  v44 = v20[44];
  v45 = v20[32];
  v129 = v20[33];
  sub_2666699C8();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  sub_2666696B8();
  _s15ReadingStrategyVMa(0);
  v50 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_18_2();
  v51 = OUTLINED_FUNCTION_83_1();
  v52(v51);
  v53 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_65(v53, v54, v55, v50);
  v56 = sub_266669788();
  OUTLINED_FUNCTION_36_4(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v58 = OUTLINED_FUNCTION_95(v57);
  v20[59] = v58;
  OUTLINED_FUNCTION_100_0(v58, xmmword_26666E050);
  v59 = OUTLINED_FUNCTION_87_1();
  v45(v59);
  v60 = swift_task_alloc();
  v61 = OUTLINED_FUNCTION_67_0(v60);
  OUTLINED_FUNCTION_42_6(v61, 1);
  OUTLINED_FUNCTION_117();

  sub_2665A17F8(v132, v131, &unk_28007DE30, &unk_26666EAF0);
  v62 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v62, v63, v129);
  if (!v72)
  {
    v64 = v20[50];
    v44 = v20[33];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v65, v66, v67);
    v68 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v68, v69, v70, v71);
    OUTLINED_FUNCTION_23_11(v64);
    if (!v72)
    {
      v99 = v20[36];
      v100 = v20[33];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v101, v99, v102);
      OUTLINED_FUNCTION_9_22();
      v20[20] = v100;
      OUTLINED_FUNCTION_2_33();
      v105 = sub_2666258F4(v103, v104, &protocol conformance descriptor for Snippet);
      v106 = OUTLINED_FUNCTION_82_1(v105);
      OUTLINED_FUNCTION_78_1(v106);
      v107 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_85_1(v107);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[60] = v108;
      *v108 = v109;
      v108[1] = sub_266621220;
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB460](v110);
    }

    OUTLINED_FUNCTION_1_38();
    sub_2666258A0();
  }

  v73 = OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_123(v73);
  v74 = OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_125(v74, v75);
  v76 = OUTLINED_FUNCTION_60_1();
  __swift_getEnumTagSinglePayload(v76, v77, v44);
  v78 = OUTLINED_FUNCTION_107_0();
  if (v72)
  {
    OUTLINED_FUNCTION_122(v78);
    v79 = OUTLINED_FUNCTION_25_10();
    sub_2665A17F8(v79, v80, v81, &unk_26666EAF0);
    v82 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v82, v83, &unk_28007DE30);
    if (v72)
    {
      sub_26656CAEC(v20[48], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[63] = v84;
      *v84 = v85;
      v84[1] = sub_2666219CC;
      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB488](v86);
    }

    else
    {
      v113 = v20[33];
      v112 = v20[34];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v114, v112, v115);
      OUTLINED_FUNCTION_9_22();
      v20[10] = v113;
      OUTLINED_FUNCTION_2_33();
      v118 = sub_2666258F4(v116, v117, &protocol conformance descriptor for Snippet);
      v119 = OUTLINED_FUNCTION_96_1(v118);
      OUTLINED_FUNCTION_78_1(v119);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v20[62] = v120;
      *v120 = v121;
      OUTLINED_FUNCTION_68_0(v120);
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB478](v122);
    }
  }

  else
  {
    v88 = v20[35];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v89, v88, v90);
    OUTLINED_FUNCTION_9_22();
    v20[15] = &unk_28007DE30;
    OUTLINED_FUNCTION_2_33();
    v93 = sub_2666258F4(v91, v92, &protocol conformance descriptor for Snippet);
    v94 = OUTLINED_FUNCTION_97_1(v93);
    OUTLINED_FUNCTION_85_1(v94);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v20[61] = v95;
    *v95 = v96;
    OUTLINED_FUNCTION_68_0(v95);
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_19_2();

    return MEMORY[0x2821BB468](v97);
  }
}

uint64_t sub_266621220()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_93_0();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26662131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v27 = *(v24 + 296);
  OUTLINED_FUNCTION_14_14();
  sub_2666258A0();
  OUTLINED_FUNCTION_31_1();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_6_22();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v25, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v27, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v24 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666214B4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2666215B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_6_22();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266621740()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266621840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_6_22();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666219CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266621ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v28 = OUTLINED_FUNCTION_6_22();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266621C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_76_0();

  v34 = v18[57];
  v28 = v18[41];
  v29 = v18[40];
  v30 = v18[37];
  v31 = v18[36];
  v32 = v18[35];
  v33 = v18[34];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_17_4();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, v33, v34, a16, a17, a18);
}

uint64_t sub_266621D64()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 552) = v3;
  *(v1 + 224) = v4;
  *(v1 + 232) = v5;
  *(v1 + 216) = v6;
  v7 = type metadata accessor for Snippet(0);
  *(v1 + 256) = v7;
  OUTLINED_FUNCTION_3_3(v7);
  *(v1 + 264) = OUTLINED_FUNCTION_32_1();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  v8 = sub_266669CA8();
  *(v1 + 296) = v8;
  OUTLINED_FUNCTION_3_1(v8);
  *(v1 + 304) = v9;
  *(v1 + 312) = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v10);
  *(v1 + 320) = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v11);
  *(v1 + 328) = OUTLINED_FUNCTION_19();
  v12 = sub_266669708();
  *(v1 + 336) = v12;
  OUTLINED_FUNCTION_3_1(v12);
  *(v1 + 344) = v13;
  *(v1 + 352) = OUTLINED_FUNCTION_32_1();
  *(v1 + 360) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v14);
  *(v1 + 368) = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v15);
  *(v1 + 376) = OUTLINED_FUNCTION_32_1();
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_104(v16);
  *(v1 + 400) = OUTLINED_FUNCTION_124(v17);
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  v18 = sub_266668D38();
  *(v1 + 424) = v18;
  OUTLINED_FUNCTION_3_1(v18);
  *(v1 + 432) = v19;
  *(v1 + 440) = OUTLINED_FUNCTION_19();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  OUTLINED_FUNCTION_3_3(v20);
  *(v1 + 448) = OUTLINED_FUNCTION_19();
  v21 = type metadata accessor for DayEventsReadingFlow.Window(0);
  *(v1 + 456) = v21;
  OUTLINED_FUNCTION_3_1(v21);
  *(v1 + 464) = v22;
  *(v1 + 472) = OUTLINED_FUNCTION_19();
  v23 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

void sub_266622054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v24 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v24, qword_28156D7E8);
  v25 = sub_26666C148();
  v26 = sub_26666C618();
  if (OUTLINED_FUNCTION_98_0(v26))
  {
    v27 = OUTLINED_FUNCTION_20();
    *v27 = 0;
    _os_log_impl(&dword_266549000, v25, v22, "[EventReadingStrategy] Making output makeResultIntroductionOutput", v27, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v28 = *(v23 + 448);
  v29 = *(v23 + 232);

  sub_2665EC63C(v29, v28);
  OUTLINED_FUNCTION_3_29(v28);
  if (v30)
  {
    sub_26656CAEC(*(v23 + 448), &qword_28007DD28, &unk_2666725E0);
    v31 = sub_26666C148();
    v32 = sub_26666C608();
    if (OUTLINED_FUNCTION_9(v32))
    {
      v33 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v33);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v34, v35, "[EventReadingStrategy] Attempted to make introduction output without any windows");
      OUTLINED_FUNCTION_10();
    }

    sub_26656CBFC();
    v72 = swift_allocError();
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 2;
    swift_willThrow();
    v63 = *(v23 + 360);
    v64 = *(v23 + 352);
    v65 = *(v23 + 328);
    v66 = *(v23 + 320);
    v67 = *(v23 + 312);
    v68 = *(v23 + 288);
    v69 = *(v23 + 280);
    v70 = *(v23 + 272);
    v71 = *(v23 + 264);

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_64_0();

    v38(v37, v38, v39, v40, v41, v42, v43, v44, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, a19, a20, a21, a22);
  }

  else
  {
    v45 = *(v23 + 440);
    v46 = *(v23 + 424);
    v47 = *(v23 + 432);
    v48 = *(v23 + 552);
    v50 = *(v23 + 224);
    v49 = *(v23 + 232);
    sub_266625824(*(v23 + 448), *(v23 + 472), type metadata accessor for DayEventsReadingFlow.Window);
    _s17DayEventGroupingsV8GroupingVMa(0);
    sub_2665C485C();
    OUTLINED_FUNCTION_17_7();
    sub_26666BD08();
    (*(v47 + 16))(v45, v50, v46);
    *(v23 + 480) = sub_2665CB9E8(v45, 0);
    v51 = *(v49 + 16);
    if (sub_266566C70())
    {
      if (v48)
      {
        v52 = [*(v23 + 240) dateTimeRange];
        if (v52)
        {
          v53 = v52;
          sub_2665D37E8();
        }
      }
    }

    if (v51 < 1)
    {
      __break(1u);
    }

    else
    {
      sub_2665C485C();
      v54 = swift_task_alloc();
      *(v23 + 488) = v54;
      *v54 = v23;
      v54[1] = sub_266622460;
      OUTLINED_FUNCTION_64_0();

      sub_2665A28CC(v55, v56, v57, v58, v59, v60, v61);
    }
  }
}

uint64_t sub_266622460()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_24_9();
  *v5 = v4;
  *(v7 + 496) = v6;
  *(v7 + 504) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266622584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  v23 = v22[63];
  v24 = v22[52];
  sub_2666257C8(v22[31] + 96, (v22 + 2));
  sub_2665A0CBC(v24);
  v25 = v22[62];
  if (v23)
  {
    OUTLINED_FUNCTION_4_32();
    sub_2666258A0();

    sub_26656CC94((v22 + 2));
    v121 = v22[46];
    v122 = v22[45];
    v123 = v22[44];
    v124 = v22[41];
    v125 = v22[40];
    v127 = v22[39];
    v128 = v22[36];
    v129 = v22[35];
    v130 = v22[34];
    v132 = v22[33];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_64_0();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v121, v122, v123, v124, v125, v127, v128, v129, v130, v132, a19, a20, a21, a22);
  }

  v131 = v22[52];
  v133 = v22[50];
  v126 = v22[46];
  v35 = v22[41];
  v36 = v22[40];
  v38 = v22[31];
  v37 = v22[32];
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v37);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_65(v42, v43, v44, v37);
  sub_2666699C8();
  OUTLINED_FUNCTION_112();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  sub_2666696E8();
  v49 = *(_s15ReadingStrategyVMa(0) + 40);
  v50 = sub_26666BB08();
  OUTLINED_FUNCTION_18_2();
  (*(v51 + 16))(v35, &v38[v49], v50);
  v52 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_65(v52, v53, v54, v50);
  v55 = sub_266669788();
  OUTLINED_FUNCTION_36_4(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v57 = OUTLINED_FUNCTION_95(v56);
  v22[64] = v57;
  OUTLINED_FUNCTION_99_1(v57, xmmword_26666E050);
  v58 = OUTLINED_FUNCTION_25();
  (v38)(v58);
  v59 = swift_task_alloc();
  v60 = OUTLINED_FUNCTION_75_1(v59);
  *(v60 + 40) = v57;
  *(v60 + 48) = v126;
  *(v60 + 56) = 2;
  *(v60 + 64) = v35;
  *(v60 + 72) = v36;
  *(v60 + 80) = 514;
  sub_266669BC8();

  sub_2665A17F8(v131, v133, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_23_11(v133);
  if (v70)
  {
    v61 = v22 + 50;
  }

  else
  {
    v62 = v22[49];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v63, v64, v65);
    v66 = OUTLINED_FUNCTION_31_1();
    sub_2665A17F8(v66, v67, v68, v69);
    OUTLINED_FUNCTION_3_29(v62);
    if (!v70)
    {
      v96 = v22[35];
      v97 = v22[32];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v98, v96, v99);
      OUTLINED_FUNCTION_28_2(v22 + 2);
      v22[20] = v97;
      OUTLINED_FUNCTION_2_33();
      v102 = sub_2666258F4(v100, v101, &protocol conformance descriptor for Snippet);
      v22[21] = v102;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22 + 17);
      OUTLINED_FUNCTION_101(boxed_opaque_existential_1);
      v22[25] = v97;
      v22[26] = v102;
      v104 = __swift_allocate_boxed_opaque_existential_1(v22 + 22);
      OUTLINED_FUNCTION_78_1(v104);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v22[65] = v105;
      *v105 = v106;
      v105[1] = sub_266622C80;
      OUTLINED_FUNCTION_64_0();

      return MEMORY[0x2821BB460](v107);
    }

    v61 = v22 + 49;
    OUTLINED_FUNCTION_1_38();
    sub_2666258A0();
  }

  v71 = v22[32];
  OUTLINED_FUNCTION_103_0(*v61);
  v72 = OUTLINED_FUNCTION_31_1();
  sub_2665A17F8(v72, v73, &unk_28007DE30, &unk_26666EAF0);
  v74 = OUTLINED_FUNCTION_51_3();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v74, v75, v71);
  v77 = v22[32];
  if (EnumTagSinglePayload == 1)
  {
    v78 = v22[47];
    sub_26656CAEC(v22[48], &unk_28007DE30, &unk_26666EAF0);
    v79 = OUTLINED_FUNCTION_31_1();
    sub_2665A17F8(v79, v80, &unk_28007DE30, &unk_26666EAF0);
    OUTLINED_FUNCTION_23_11(v78);
    if (v70)
    {
      sub_26656CAEC(v22[47], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_28_2(v22 + 2);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v22[68] = v81;
      *v81 = v82;
      v81[1] = sub_266623468;
      OUTLINED_FUNCTION_64_0();

      return MEMORY[0x2821BB488](v83);
    }

    else
    {
      v110 = v22[32];
      v109 = v22[33];
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v111, v109, v112);
      OUTLINED_FUNCTION_28_2(v22 + 2);
      v22[10] = v110;
      OUTLINED_FUNCTION_2_33();
      v115 = sub_2666258F4(v113, v114, &protocol conformance descriptor for Snippet);
      v116 = OUTLINED_FUNCTION_96_1(v115);
      OUTLINED_FUNCTION_101(v116);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v22[67] = v117;
      *v117 = v118;
      v117[1] = sub_2666231C8;
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_64_0();

      return MEMORY[0x2821BB478](v119);
    }
  }

  else
  {
    v85 = v22[34];
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v86, v85, v87);
    OUTLINED_FUNCTION_28_2(v22 + 2);
    v22[15] = v77;
    OUTLINED_FUNCTION_2_33();
    v90 = sub_2666258F4(v88, v89, &protocol conformance descriptor for Snippet);
    v91 = OUTLINED_FUNCTION_97_1(v90);
    OUTLINED_FUNCTION_78_1(v91);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v22[66] = v92;
    *v92 = v93;
    v92[1] = sub_266622F28;
    OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_64_0();

    return MEMORY[0x2821BB468](v94);
  }
}

uint64_t sub_266622C80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_93_0();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266622D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v27 = *(v24 + 288);
  OUTLINED_FUNCTION_14_14();
  sub_2666258A0();
  OUTLINED_FUNCTION_31_1();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_7_23();
  v29(v28);
  v30 = OUTLINED_FUNCTION_71();
  v31(v30);
  v32 = OUTLINED_FUNCTION_56_1();
  sub_26656CAEC(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_55_2();
  sub_26656CAEC(v35, v36, v37);
  sub_26656CAEC(v25, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v27, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v24 + 16);

  OUTLINED_FUNCTION_4_32();
  sub_2666258A0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266622F28()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266623028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_7_23();
  v29(v28);
  v30 = OUTLINED_FUNCTION_71();
  v31(v30);
  v32 = OUTLINED_FUNCTION_56_1();
  sub_26656CAEC(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_55_2();
  sub_26656CAEC(v35, v36, v37);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_4_32();
  sub_2666258A0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666231C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2666232C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_7_23();
  v29(v28);
  v30 = OUTLINED_FUNCTION_71();
  v31(v30);
  v32 = OUTLINED_FUNCTION_56_1();
  sub_26656CAEC(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_55_2();
  sub_26656CAEC(v35, v36, v37);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_4_32();
  sub_2666258A0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266623468()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266623568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v28 = OUTLINED_FUNCTION_7_23();
  v29(v28);
  v30 = OUTLINED_FUNCTION_71();
  v31(v30);
  v32 = OUTLINED_FUNCTION_56_1();
  sub_26656CAEC(v32, v33, v34);
  v35 = OUTLINED_FUNCTION_55_2();
  sub_26656CAEC(v35, v36, v37);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_4_32();
  sub_2666258A0();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666236FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_4_32();
  sub_2666258A0();
  v41 = v22[63];
  v32 = v22[45];
  v33 = v22[44];
  v34 = v22[41];
  v35 = v22[40];
  v36 = v22[39];
  v37 = v22[36];
  v38 = v22[35];
  v39 = v22[34];
  v40 = v22[33];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_64_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, a20, a21, a22);
}

uint64_t sub_266623844()
{
  OUTLINED_FUNCTION_14();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[33] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[34] = OUTLINED_FUNCTION_32_1();
  v1[35] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[37] = OUTLINED_FUNCTION_126(v5);
  v6 = sub_266669CA8();
  v1[38] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[39] = v7;
  v1[40] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[41] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[42] = OUTLINED_FUNCTION_19();
  v10 = sub_266669708();
  v1[43] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[44] = v11;
  v12 = OUTLINED_FUNCTION_32_1();
  v1[46] = OUTLINED_FUNCTION_105_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v13);
  v1[47] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v14);
  v15 = OUTLINED_FUNCTION_32_1();
  v16 = OUTLINED_FUNCTION_104(v15);
  v1[50] = OUTLINED_FUNCTION_124(v16);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v17 = sub_266668D38();
  v1[54] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[55] = v18;
  v1[56] = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_266623AA4()
{
  if (qword_28156C150 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[EventReadingStrategy] Making output makeWindowOutput");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[31];
  v7 = v0[32];

  v9 = type metadata accessor for DayEventsReadingFlow.Window(0);
  v10 = *(v8 + *(v9 + 20));
  v11 = swift_task_alloc();
  *(v11 + 16) = v7;
  v12 = sub_2665C217C(sub_266625880, v11, v10);
  v0[57] = v12;

  v13 = sub_2665C485C();
  type metadata accessor for CalendarResultSetWindowOptions.Builder();
  swift_initStackObject();
  v14 = sub_2665C91BC();
  v54 = v9;
  v55 = v12;
  v56 = v14;
  if (v13 < 2)
  {
    v22 = 0;
    *(v14 + 18) = 0;
    *(v14 + 20) = 0;
  }

  else
  {
    v15 = sub_2665C485C();
    v16 = 0;
    v17 = v10 & 0xC000000000000001;
    do
    {
      v18 = v16;
      if (v15 == v16)
      {
        break;
      }

      if (v17)
      {
        v19 = MEMORY[0x266788B60](v16, v10);
      }

      else
      {
        if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v19 = *(v10 + 8 * v16 + 32);
      }

      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
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

      v20 = v19;
      v21 = sub_2665EC938();

      v16 = v18 + 1;
    }

    while ((v21 & 1) != 0);
    v56[18] = v15 == v18;
    v23 = sub_2665C485C();
    v24 = 0;
    do
    {
      v25 = v24;
      if (v23 == v24)
      {
        break;
      }

      if (v17)
      {
        v26 = MEMORY[0x266788B60](v24, v10);
      }

      else
      {
        if (v24 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v26 = *(v10 + 8 * v24 + 32);
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_52;
      }

      v27 = v26;
      v28 = sub_2665ECA68();

      v24 = v25 + 1;
    }

    while ((v28 & 1) != 0);
    v56[19] = v23 == v25;
    if (sub_2665EEC64(v10))
    {
      v29 = sub_2665C485C();
      v30 = 0;
      do
      {
        v31 = v30;
        if (v29 == v30)
        {
          break;
        }

        if (v17)
        {
          v37 = OUTLINED_FUNCTION_33_7();
          v32 = MEMORY[0x266788B60](v37);
        }

        else
        {
          if (v30 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v32 = *(v10 + 8 * v30 + 32);
        }

        if (__OFADD__(v31, 1))
        {
          goto LABEL_54;
        }

        v33 = v32;
        v34 = [v33 dateTimeRange];
        sub_2665D4854();
        v36 = v35;

        v30 = v31 + 1;
      }

      while ((v36 & 1) != 0);
      v56[20] = v29 == v31;
    }

    else
    {
      v56[20] = 0;
    }

    if (sub_2665EEC64(v10))
    {
      v38 = sub_2665C485C();
      v39 = 0;
      do
      {
        v22 = v38 != v39;
        if (v38 == v39)
        {
          break;
        }

        if (v17)
        {
          v45 = OUTLINED_FUNCTION_33_7();
          v40 = MEMORY[0x266788B60](v45);
        }

        else
        {
          if (v39 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_57;
          }

          v40 = *(v10 + 8 * v39 + 32);
        }

        if (__OFADD__(v39, 1))
        {
          goto LABEL_56;
        }

        v41 = v40;
        v42 = [v41 dateTimeRange];
        sub_2665D4854();
        v44 = v43;

        ++v39;
      }

      while ((v44 & 1) != 0);
    }

    else
    {
      v22 = 0;
    }
  }

  v46 = v0[55];
  v47 = v0[56];
  v48 = v0[54];
  v49 = v0[31];
  v56[20] = v22;
  type metadata accessor for CalendarResultSetWindowOptions();
  swift_allocObject();
  v50 = sub_2665C91F8(v56);
  v0[58] = v50;
  sub_26666BD08();
  (*(v46 + 16))(v47, v49 + *(v54 + 24), v48);
  v51 = sub_2665CB9E8(v47, 0);
  v0[59] = v51;

  v52 = swift_task_alloc();
  v0[60] = v52;
  *v52 = v0;
  OUTLINED_FUNCTION_89_1(v52);

  return sub_2665A3B70(v51, v55, v50);
}

uint64_t sub_266623F74()
{
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_24_9();
  *v5 = v4;
  *(v7 + 488) = v6;
  *(v7 + 496) = v0;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2666240F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  sub_2666257C8(*(v20 + 256) + 96, v20 + 16);
  if (sub_266669DA8())
  {
    v21 = 1;
  }

  else
  {
    v22 = *(v20 + 496);
    sub_2665A0CBC(*(v20 + 424));
    if (v22)
    {
      v23 = *(v20 + 488);
      sub_26656CC94(v20 + 16);

      v120 = *(v20 + 360);
      v121 = *(v20 + 336);
      v123 = *(v20 + 328);
      v125 = *(v20 + 320);
      v127 = *(v20 + 296);
      v129 = *(v20 + 288);
      v130 = *(v20 + 280);
      v132 = *(v20 + 272);

      OUTLINED_FUNCTION_24_1();
      OUTLINED_FUNCTION_19_2();

      return v25(v24, v25, v26, v27, v28, v29, v30, v31, v120, v121, v123, v125, v127, v129, v130, v132, a17, a18, a19, a20);
    }

    v21 = 0;
  }

  v33 = *(v20 + 488);
  v131 = *(v20 + 424);
  v133 = *(v20 + 408);
  v34 = *(v20 + 368);
  v35 = *(v20 + 376);
  v36 = *(v20 + 352);
  v37 = *(v20 + 336);
  v126 = *(v20 + 360);
  v128 = *(v20 + 344);
  v122 = *(v20 + 328);
  v39 = *(v20 + 256);
  v38 = *(v20 + 264);
  __swift_storeEnumTagSinglePayload(v131, v21, 1, v38);
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_65(v40, v41, v42, v38);
  v43 = sub_2666699C8();
  OUTLINED_FUNCTION_36_4(v43);
  sub_2666696E8();
  v124 = sub_266669DA8() & 1;
  v44 = *(_s15ReadingStrategyVMa(0) + 40);
  v45 = sub_26666BB08();
  OUTLINED_FUNCTION_18_2();
  (*(v46 + 16))(v37, v39 + v44, v45);
  v47 = OUTLINED_FUNCTION_39_4();
  OUTLINED_FUNCTION_65(v47, v48, v49, v45);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v55 = OUTLINED_FUNCTION_95(v54);
  *(v20 + 504) = v55;
  *(v55 + 16) = xmmword_26666E050;
  *(v55 + 32) = v33;
  v56 = *(v36 + 16);
  v57 = v33;
  v56(v126, v34, v128);
  v58 = swift_task_alloc();
  v59 = OUTLINED_FUNCTION_75_1(v58);
  *(v59 + 40) = v55;
  *(v59 + 48) = v35;
  *(v59 + 56) = 2;
  *(v59 + 64) = v37;
  *(v59 + 72) = v122;
  *(v59 + 80) = 2;
  *(v59 + 81) = v124;
  sub_266669BC8();

  sub_2665A17F8(v131, v133, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_23_11(v133);
  if (!v68)
  {
    v60 = *(v20 + 400);
    v38 = *(v20 + 264);
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v61, v62, v63);
    v64 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v64, v65, v66, v67);
    OUTLINED_FUNCTION_23_11(v60);
    if (!v68)
    {
      v95 = *(v20 + 288);
      v96 = *(v20 + 264);
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v97, v95, v98);
      OUTLINED_FUNCTION_9_22();
      *(v20 + 160) = v96;
      OUTLINED_FUNCTION_2_33();
      v101 = sub_2666258F4(v99, v100, &protocol conformance descriptor for Snippet);
      v102 = OUTLINED_FUNCTION_82_1(v101);
      OUTLINED_FUNCTION_78_1(v102);
      v103 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_85_1(v103);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v20 + 512) = v104;
      *v104 = v105;
      v104[1] = sub_26662478C;
      OUTLINED_FUNCTION_22_8();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB460](v106);
    }

    OUTLINED_FUNCTION_1_38();
    sub_2666258A0();
  }

  v69 = OUTLINED_FUNCTION_108();
  OUTLINED_FUNCTION_123(v69);
  v70 = OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_125(v70, v71);
  v72 = OUTLINED_FUNCTION_60_1();
  __swift_getEnumTagSinglePayload(v72, v73, v38);
  v74 = OUTLINED_FUNCTION_107_0();
  if (v68)
  {
    OUTLINED_FUNCTION_122(v74);
    v75 = OUTLINED_FUNCTION_25_10();
    sub_2665A17F8(v75, v76, v77, &unk_26666EAF0);
    v78 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v78, v79, &unk_28007DE30);
    if (v68)
    {
      sub_26656CAEC(*(v20 + 384), &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v20 + 536) = v80;
      *v80 = v81;
      v80[1] = sub_266624F38;
      OUTLINED_FUNCTION_27_13();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB488](v82);
    }

    else
    {
      v109 = *(v20 + 264);
      v108 = *(v20 + 272);
      OUTLINED_FUNCTION_0_38();
      sub_266625824(v110, v108, v111);
      OUTLINED_FUNCTION_9_22();
      *(v20 + 80) = v109;
      OUTLINED_FUNCTION_2_33();
      v114 = sub_2666258F4(v112, v113, &protocol conformance descriptor for Snippet);
      v115 = OUTLINED_FUNCTION_96_1(v114);
      OUTLINED_FUNCTION_78_1(v115);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v20 + 528) = v116;
      *v116 = v117;
      OUTLINED_FUNCTION_68_0(v116);
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_19_2();

      return MEMORY[0x2821BB478](v118);
    }
  }

  else
  {
    v84 = *(v20 + 280);
    OUTLINED_FUNCTION_0_38();
    sub_266625824(v85, v84, v86);
    OUTLINED_FUNCTION_9_22();
    *(v20 + 120) = &unk_28007DE30;
    OUTLINED_FUNCTION_2_33();
    v89 = sub_2666258F4(v87, v88, &protocol conformance descriptor for Snippet);
    v90 = OUTLINED_FUNCTION_97_1(v89);
    OUTLINED_FUNCTION_85_1(v90);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    *(v20 + 520) = v91;
    *v91 = v92;
    OUTLINED_FUNCTION_68_0(v91);
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_19_2();

    return MEMORY[0x2821BB468](v93);
  }
}

uint64_t sub_26662478C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  OUTLINED_FUNCTION_93_0();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266624888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v27 = *(v24 + 296);
  OUTLINED_FUNCTION_14_14();
  sub_2666258A0();
  OUTLINED_FUNCTION_31_1();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_5_24();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v25, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v27, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v24 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266624A20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266624B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_5_24();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266624CAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266624DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_1_38();
  sub_2666258A0();
  v28 = OUTLINED_FUNCTION_5_24();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_266624F38()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266625038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_53_2();
  v28 = OUTLINED_FUNCTION_5_24();
  v29(v28);
  v30 = OUTLINED_FUNCTION_20_16();
  v31(v30);
  OUTLINED_FUNCTION_44_3();
  v32 = OUTLINED_FUNCTION_62();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  sub_26656CAEC(v26, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v27, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v25 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_47_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_2666251B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();

  v37 = v20[62];
  v30 = v20[42];
  v31 = v20[41];
  v32 = v20[40];
  v33 = v20[37];
  v34 = v20[36];
  v35 = v20[35];
  v36 = v20[34];

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_19_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_2666252E0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(a2 + 16, v7);
  result = sub_2665CA7F4(v5, v7);
  *a3 = result;
  return result;
}

uint64_t sub_266625354@<X0>(uint64_t a1@<X8>)
{
  v35[1] = a1;
  v1 = sub_26666BB08();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F428, &qword_2666789A0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v13 = OUTLINED_FUNCTION_3_3(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_5();
  v16 = v14 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v35 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v35 - v21;
  sub_26666BA48();
  if (sub_26666BA38())
  {
    sub_26666BA28();

    sub_26666C028();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v23, 1, v1);
  sub_26666BAF8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v1);
  v27 = *(v8 + 48);
  sub_2665A17F8(v22, v11, &unk_28007DE20, &unk_26666EAE0);
  sub_2665A17F8(v20, &v11[v27], &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_29(v11);
  if (!v28)
  {
    sub_2665A17F8(v11, v16, &unk_28007DE20, &unk_26666EAE0);
    OUTLINED_FUNCTION_3_29(&v11[v27]);
    if (!v28)
    {
      (*(v3 + 32))(v7, &v11[v27], v1);
      sub_2666258F4(&qword_28156D118, MEMORY[0x277D61CC8], MEMORY[0x277D61CD8]);
      v32 = sub_26666C2E8();
      v33 = *(v3 + 8);
      v33(v7, v1);
      sub_26656CAEC(v20, &unk_28007DE20, &unk_26666EAE0);
      sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
      v34 = OUTLINED_FUNCTION_87_1();
      (v33)(v34);
      sub_26656CAEC(v11, &unk_28007DE20, &unk_26666EAE0);
      if (v32)
      {
        return sub_26666BAF8();
      }

      return sub_26666BAE8();
    }

    OUTLINED_FUNCTION_121(v20);
    OUTLINED_FUNCTION_121(v22);
    v29 = OUTLINED_FUNCTION_87_1();
    v30(v29);
LABEL_12:
    sub_26656CAEC(v11, &qword_28007F428, &qword_2666789A0);
    return sub_26666BAE8();
  }

  OUTLINED_FUNCTION_121(v20);
  OUTLINED_FUNCTION_121(v22);
  OUTLINED_FUNCTION_3_29(&v11[v27]);
  if (!v28)
  {
    goto LABEL_12;
  }

  sub_26656CAEC(v11, &unk_28007DE20, &unk_26666EAE0);
  return sub_26666BAF8();
}

uint64_t sub_26662571C(void *a1)
{
  if (![a1 events])
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_7();
  sub_26656CC50();
  v2 = sub_26666C498();

  return v2;
}

uint64_t _s15ReadingStrategyVMa(uint64_t a1)
{
  result = qword_28156CE80;
  if (!qword_28156CE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266625824(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  v4 = OUTLINED_FUNCTION_25();
  v5(v4);
  return a2;
}

uint64_t sub_2666258A0()
{
  v1 = OUTLINED_FUNCTION_17_7();
  v2(v1);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_2666258F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266625964(uint64_t a1)
{
  result = type metadata accessor for FindEventsCATsSimple(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CommonCATsSimple(319);
    if (v3 <= 0x3F)
    {
      result = sub_26655EC10(319, &qword_28156D140, MEMORY[0x277D5BA10]);
      if (v4 <= 0x3F)
      {
        result = sub_26655EC10(319, qword_28156CBE0, &protocol descriptor for EventProviding);
        if (v5 <= 0x3F)
        {
          result = sub_26666BB08();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_24()
{
  v2 = *(v0 + 320);
  *(v1 - 80) = *(v0 + 272);
  return v2;
}

uint64_t OUTLINED_FUNCTION_6_22()
{
  v2 = *(v0 + 320);
  *(v1 - 80) = *(v0 + 272);
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{
  result = *(v0 + 312);
  *(v1 - 80) = *(v0 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_21()
{
  v2 = *(v0 + 296);
  *(v1 - 80) = *(v0 + 248);
  return v2;
}

uint64_t OUTLINED_FUNCTION_36_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_6@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 56) = a2;
  *(result + 64) = v2;
  *(result + 72) = v3;
  *(result + 80) = 258;
  return result;
}

uint64_t OUTLINED_FUNCTION_44_3()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v1;
  *(result + 48) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_1(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1)
{

  return sub_266566370(v1, a1);
}

uint64_t *OUTLINED_FUNCTION_82_1(uint64_t a1)
{
  *(v1 + 168) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 136));
}

uint64_t OUTLINED_FUNCTION_85_1(uint64_t a1)
{

  return sub_266566370(v1, a1);
}

uint64_t OUTLINED_FUNCTION_93_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  return __swift_destroy_boxed_opaque_existential_1((v0 + 136));
}

uint64_t OUTLINED_FUNCTION_95(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *OUTLINED_FUNCTION_96_1(uint64_t a1)
{
  *(v1 + 88) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 56));
}

uint64_t *OUTLINED_FUNCTION_97_1(uint64_t a1)
{
  *(v1 + 128) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 96));
}

BOOL OUTLINED_FUNCTION_98_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id OUTLINED_FUNCTION_99_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

id OUTLINED_FUNCTION_100_0(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_101(uint64_t a1)
{

  return sub_266566370(v1, a1);
}

uint64_t OUTLINED_FUNCTION_102_0()
{

  return sub_26666BB08();
}

uint64_t OUTLINED_FUNCTION_103_0(uint64_t a1)
{

  return sub_26656CAEC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_104(uint64_t a1)
{
  *(v1 + 384) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1)
{
  *(v1 + 360) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_116()
{

  return sub_266669BC8();
}

uint64_t OUTLINED_FUNCTION_117()
{

  return sub_266669BC8();
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CAC8();
}

void OUTLINED_FUNCTION_120(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_121(uint64_t a1)
{

  return sub_26656CAEC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1)
{

  return sub_26656CAEC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_123(uint64_t a1)
{

  return sub_26656CAEC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_124(uint64_t a1)
{
  *(v1 + 392) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_125(uint64_t a1, uint64_t a2)
{

  return sub_2665A17F8(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_126(uint64_t a1)
{
  *(v1 + 288) = a1;

  return swift_task_alloc();
}

uint64_t *OUTLINED_FUNCTION_127()
{
  v0[25] = v2;
  v0[26] = v1;

  return __swift_allocate_boxed_opaque_existential_1(v0 + 22);
}

uint64_t static Snippet.bundleName.getter()
{
  swift_beginAccess();
  v0 = static Snippet.bundleName;

  return v0;
}

uint64_t static Snippet.bundleName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static Snippet.bundleName = a1;
  off_28007F438 = a2;
}

uint64_t Snippet.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  v6 = sub_26666BAB8();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = *(v8 + 104);
  v14 = OUTLINED_FUNCTION_43_3();
  v13(v14);
  v15 = sub_26666BAA8();
  v16 = *(v8 + 8);
  v16(v12, v6);
  if (v15)
  {
    sub_266566370(v23, v5);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
LABEL_7:
      v21 = 1;
      return v21 & 1;
    }

    sub_26662AE9C(v5, type metadata accessor for Snippet);
  }

  v17 = OUTLINED_FUNCTION_43_3();
  v13(v17);
  v18 = sub_26666BAA8();
  v16(v12, v6);
  if ((v18 & 1) == 0)
  {
    v21 = 0;
    return v21 & 1;
  }

  *&v24 = "SiriCalendar";
  *(&v24 + 1) = 12;
  v25 = 2;
  v26 = "CarPlaySnippets";
  v27 = 15;
  v28 = 2;
  OUTLINED_FUNCTION_31_8();
  if ((sub_26662CD24(&v24, v19, v20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v21 = sub_26662668C();
  return v21 & 1;
}

uint64_t sub_26662668C()
{
  v1 = type metadata accessor for Snippet(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266566370(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 1;
  v6 = type metadata accessor for Snippet;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 10:
      goto LABEL_6;
    case 2:
    case 4:
    case 6:
    case 11:
    case 13:
      v5 = 0;
      v7 = type metadata accessor for Snippet;
      goto LABEL_7;
    case 3:
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D320, &qword_266673E10);

      v9 = *(v8 + 64);
      goto LABEL_5;
    case 5:
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400) + 48);
LABEL_5:
      sub_26662B044(&v3[v9]);
LABEL_6:
      v5 = 0;
      v7 = type metadata accessor for Snippet.Event;
LABEL_7:
      v6 = v7;
      goto LABEL_8;
    case 7:
      return v5;
    default:
LABEL_8:
      sub_26662AE9C(v3, v6);
      return v5;
  }
}

uint64_t sub_2666267DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F68636E7570 && a2 == 0xE800000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7645656C676E6973 && a2 == 0xEB00000000746E65;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x800000026667F5E0 == a2;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001CLL && 0x800000026667F600 == a2;
        if (v8 || (sub_26666CAC8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x800000026667F620 == a2;
          if (v9 || (sub_26666CAC8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x496D7269666E6F63 && a2 == 0xED0000657469766ELL;
            if (v10 || (sub_26666CAC8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4564657461657263 && a2 == 0xEC000000746E6576;
              if (v11 || (sub_26666CAC8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F4674706D6F7270 && a2 == 0xEE00656C74695472;
                if (v12 || (sub_26666CAC8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x4565736F706D6F63 && a2 == 0xEC000000746E6576;
                  if (v13 || (sub_26666CAC8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001BLL && 0x800000026667F640 == a2;
                    if (v14 || (sub_26666CAC8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4564657461647075 && a2 == 0xEC000000746E6576;
                      if (v15 || (sub_26666CAC8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x446D7269666E6F63 && a2 == 0xED00006574656C65;
                        if (v16 || (sub_26666CAC8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x800000026667F660 == a2;
                          if (v17 || (sub_26666CAC8() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x73694C746E657665 && a2 == 0xE900000000000074)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_26666CAC8();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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

uint64_t sub_266626C5C(char a1)
{
  result = 0x74756F68636E7570;
  switch(a1)
  {
    case 1:
      result = 0x7645656C676E6973;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x496D7269666E6F63;
      break;
    case 6:
      v3 = 1634038371;
      goto LABEL_15;
    case 7:
      result = 0x6F4674706D6F7270;
      break;
    case 8:
      result = 0x4565736F706D6F63;
      break;
    case 9:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      v3 = 1633972341;
LABEL_15:
      result = v3 | 0x4564657400000000;
      break;
    case 11:
      result = 0x446D7269666E6F63;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 13:
      result = 0x73694C746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266626E04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_266626EC4(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_266626EDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7478654E776F6873 && a2 == 0xEE006E6F74747542)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_266626FA4(char a1)
{
  if (a1)
  {
    return 0x7478654E776F6873;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_266626FDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000026667F6A0 == a2;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4D65736F706D6F63 && a2 == 0xEC0000006C65646FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

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

uint64_t sub_2666270F4(char a1)
{
  if (!a1)
  {
    return 0x746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x4D65736F706D6F63;
}

uint64_t sub_266627154(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026667F680 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_26662721C(uint64_t a1)
{
  v2 = sub_26662B154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627258(uint64_t a1)
{
  v2 = sub_26662B154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26662729C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2666267DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2666272C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266626C54();
  *a1 = result;
  return result;
}

uint64_t sub_2666272EC(uint64_t a1)
{
  v2 = sub_26662AC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627328(uint64_t a1)
{
  v2 = sub_26662AC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627364(uint64_t a1)
{
  v2 = sub_26662AE48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2666273A0(uint64_t a1)
{
  v2 = sub_26662AE48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666273DC(uint64_t a1)
{
  v2 = sub_26662AD4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627418(uint64_t a1)
{
  v2 = sub_26662AD4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627454(uint64_t a1)
{
  v2 = sub_26662ACF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627490(uint64_t a1)
{
  v2 = sub_26662ACF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666274D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266626E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2666274FC(uint64_t a1)
{
  v2 = sub_26662AFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627538(uint64_t a1)
{
  v2 = sub_26662AFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627574(uint64_t a1)
{
  v2 = sub_26662ADF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2666275B0(uint64_t a1)
{
  v2 = sub_26662ADF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666275EC(uint64_t a1)
{
  v2 = sub_26662AF9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627628(uint64_t a1)
{
  v2 = sub_26662AF9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627664(uint64_t a1)
{
  v2 = sub_26662B0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2666276A0(uint64_t a1)
{
  v2 = sub_26662B0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666276E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266626EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26662770C(uint64_t a1)
{
  v2 = sub_26662ACA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627748(uint64_t a1)
{
  v2 = sub_26662ACA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627784(uint64_t a1)
{
  v2 = sub_26662AEF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2666277C0(uint64_t a1)
{
  v2 = sub_26662AEF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666277FC(uint64_t a1)
{
  v2 = sub_26662B1FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627838(uint64_t a1)
{
  v2 = sub_26662B1FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627874(uint64_t a1)
{
  v2 = sub_26662B1A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2666278B0(uint64_t a1)
{
  v2 = sub_26662B1A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666278F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266626FDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26662791C(uint64_t a1)
{
  v2 = sub_26662B100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266627958(uint64_t a1)
{
  v2 = sub_26662B100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266627994(uint64_t a1)
{
  v2 = sub_26662ADA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2666279D0(uint64_t a1)
{
  v2 = sub_26662ADA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.encode(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F440, &qword_2666789D0);
  OUTLINED_FUNCTION_3_0();
  v246[4] = v4;
  v247[0] = v3;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_9();
  v246[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F448, &qword_2666789D8);
  OUTLINED_FUNCTION_3_0();
  v246[1] = v8;
  v246[2] = v7;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_9();
  v245 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F450, &qword_2666789E0);
  OUTLINED_FUNCTION_3_0();
  v242 = v12;
  v243 = v11;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_9();
  v240 = v14;
  v246[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F458, &qword_2666789E8);
  OUTLINED_FUNCTION_3_0();
  v244 = v15;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_9();
  v241 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F460, &qword_2666789F0);
  OUTLINED_FUNCTION_2_34(v18, &v259);
  v239 = v19;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F468, &qword_2666789F8);
  OUTLINED_FUNCTION_2_34(v22, &v258);
  v238 = v23;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v25);
  v247[1] = type metadata accessor for Snippet.ComposeEventModel(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15_8(v28 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F470, &qword_266678A00);
  OUTLINED_FUNCTION_2_34(v29, &v254);
  v233 = v30;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F478, &qword_266678A08);
  OUTLINED_FUNCTION_2_34(v33, &v249);
  v231 = v34;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F480, &qword_266678A10);
  OUTLINED_FUNCTION_2_34(v37, &v255);
  v235 = v38;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F488, &qword_266678A18);
  OUTLINED_FUNCTION_2_34(v41, v247);
  v229 = v42;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F490, &unk_266678A20);
  OUTLINED_FUNCTION_2_34(v45, &v257);
  v236 = v46;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  MEMORY[0x28223BE20](v49 - 8);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15_8(v220 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F498, &qword_266678A30);
  OUTLINED_FUNCTION_2_34(v52, &v245);
  v225 = v53;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F4A0, &qword_266678A38);
  OUTLINED_FUNCTION_2_34(v56, v246);
  v226 = v57;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v59);
  v247[2] = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_45_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_15_8(v220 - v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F4A8, &qword_266678A40);
  OUTLINED_FUNCTION_3_0();
  v220[1] = v71;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v72);
  v74 = v220 - v73;
  v75 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_1_0();
  v79 = (v78 - v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F4B0, &qword_266678A48);
  OUTLINED_FUNCTION_3_0();
  v250 = v80;
  v251 = v81;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v82);
  v84 = v220 - v83;
  v85 = OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(v85, v86);
  sub_26662AC50();
  v249 = v84;
  sub_26666CBE8();
  sub_266566370(v252, v79);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0);
      v155 = OUTLINED_FUNCTION_7_24();
      v156 = v221;
      sub_26662B2D8(v155, v221, v157);
      LOBYTE(v253) = 1;
      sub_26662B1A8();
      v158 = v223;
      v160 = v249;
      v159 = v250;
      sub_26666CA08();
      LOBYTE(v253) = 0;
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v161, v162, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_36_5();
      v163 = v227;
      v164 = v248;
      sub_26666CA78();
      if (!v164)
      {
        LOBYTE(v253) = 1;
        sub_26666CA58();
      }

      OUTLINED_FUNCTION_18_9();
      v165(v158, v163);
      OUTLINED_FUNCTION_1_39();
      sub_26662AE9C(v156, v166);
      OUTLINED_FUNCTION_30_10();
      v168 = v160;
      goto LABEL_34;
    case 2u:
      sub_26662B2D8(v79, v2, type metadata accessor for Snippet.Event);
      LOBYTE(v253) = 2;
      sub_26662B154();
      OUTLINED_FUNCTION_32_8();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v124, v125, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_27_14(v2);
      OUTLINED_FUNCTION_18_9();
      v126 = OUTLINED_FUNCTION_38_2();
      v127(v126);
      goto LABEL_18;
    case 3u:
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D320, &qword_266673E10);
      v129 = *(v79 + *(v128 + 48));
      v130 = *(v128 + 64);
      v131 = OUTLINED_FUNCTION_7_24();
      v70 = v228;
      sub_26662B2D8(v131, v228, v132);
      v133 = v232;
      sub_2665B9218(v79 + v130, v232);
      LOBYTE(v253) = 3;
      sub_26662B100();
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_24_11(v134, v135, v136, v137, v138);
      LOBYTE(v253) = 0;
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v139, v140, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_36_5();
      v141 = v237;
      v142 = v248;
      sub_26666CA78();
      if (v142)
      {
      }

      else
      {
        v253 = v129;
        v256 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
        OUTLINED_FUNCTION_22_9();
        sub_26662B38C(v215);
        sub_26666CA78();

        LOBYTE(v253) = 2;
        OUTLINED_FUNCTION_3_32();
        sub_26662B494(v218, v219, &protocol conformance descriptor for Snippet.ComposeEventModel);
        OUTLINED_FUNCTION_36_5();
        sub_26666CA38();
      }

      v143 = OUTLINED_FUNCTION_13_16();
      v144(v143, v141);
      sub_26662B044(v133);
      OUTLINED_FUNCTION_1_39();
      v146 = v70;
      goto LABEL_29;
    case 4u:
      v103 = *v79;
      LOBYTE(v253) = 4;
      sub_26662B0AC();
      OUTLINED_FUNCTION_33_8();
      OUTLINED_FUNCTION_24_11(v104, v105, v106, v107, v108);
      v253 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
      OUTLINED_FUNCTION_22_9();
      sub_26662B38C(v109);
      v110 = v230;
      sub_26666CA78();
      v111 = OUTLINED_FUNCTION_13_16();
      v112(v111, v110);
      OUTLINED_FUNCTION_30_10();
      v94 = v75;
      v95 = v70;
      goto LABEL_21;
    case 5u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400);
      v169 = OUTLINED_FUNCTION_7_24();
      v2 = v224;
      sub_26662B2D8(v169, v224, v170);
      OUTLINED_FUNCTION_34_7();
      sub_2665B9218(v171, v172);
      LOBYTE(v253) = 5;
      sub_26662AFF0();
      OUTLINED_FUNCTION_32_8();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      LOBYTE(v253) = 0;
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v173, v174, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_36_5();
      OUTLINED_FUNCTION_27_14(v2);
      if (!v1)
      {
        LOBYTE(v253) = 1;
        OUTLINED_FUNCTION_3_32();
        sub_26662B494(v175, v176, &protocol conformance descriptor for Snippet.ComposeEventModel);
        OUTLINED_FUNCTION_36_5();
        sub_26666CA38();
      }

      OUTLINED_FUNCTION_18_9();
      v177 = OUTLINED_FUNCTION_38_2();
      v178(v177);
      sub_26662B044(v74);
LABEL_18:
      v179 = type metadata accessor for Snippet.Event;
      v180 = v2;
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_34_7();
      sub_26662B2D8(v187, v188, v189);
      LOBYTE(v253) = 6;
      sub_26662AF9C();
      OUTLINED_FUNCTION_32_8();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v190, v191, &protocol conformance descriptor for Snippet.Event);
      v192 = OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_27_14(v192);
      goto LABEL_23;
    case 7u:
      v147 = *v79;
      LOBYTE(v253) = 7;
      sub_26662AEF4();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_24_11(v148, v149, v150, v151, v152);
      LOBYTE(v253) = v147;
      sub_26662AF48();
      v153 = v234;
      sub_26666CA78();
      OUTLINED_FUNCTION_18_9();
      v154(v84, v153);
      goto LABEL_30;
    case 8u:
      OUTLINED_FUNCTION_34_7();
      sub_26662B2D8(v208, v209, v210);
      LOBYTE(v253) = 8;
      sub_26662AE48();
      OUTLINED_FUNCTION_32_8();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      OUTLINED_FUNCTION_3_32();
      sub_26662B494(v211, v212, &protocol conformance descriptor for Snippet.ComposeEventModel);
      OUTLINED_FUNCTION_39_5();
      sub_26666CA78();
      OUTLINED_FUNCTION_18_9();
      v213 = OUTLINED_FUNCTION_38_2();
      v214(v213);
      v195 = type metadata accessor for Snippet.ComposeEventModel;
      goto LABEL_24;
    case 9u:
      OUTLINED_FUNCTION_34_7();
      sub_26662B2D8(v118, v119, v120);
      LOBYTE(v253) = 9;
      sub_26662ADF4();
      OUTLINED_FUNCTION_32_8();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v121, v122, &protocol conformance descriptor for Snippet.Event);
      v123 = OUTLINED_FUNCTION_39_5();
      OUTLINED_FUNCTION_27_14(v123);
      goto LABEL_23;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0);
      v197 = OUTLINED_FUNCTION_7_24();
      v198 = v222;
      sub_26662B2D8(v197, v222, v199);
      LOBYTE(v253) = 10;
      v200 = sub_26662ADA0();
      v201 = v241;
      OUTLINED_FUNCTION_24_11(&type metadata for Snippet.UpdatedEventCodingKeys, &v253, v202, v203, v200);
      LOBYTE(v253) = 0;
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v204, v205, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_36_5();
      v206 = v246[0];
      v207 = v248;
      sub_26666CA78();
      if (!v207)
      {
        LOBYTE(v253) = 1;
        sub_26666CA58();
      }

      (*(v244 + 8))(v201, v206);
      OUTLINED_FUNCTION_1_39();
      v146 = v198;
LABEL_29:
      sub_26662AE9C(v146, v145);
LABEL_30:
      OUTLINED_FUNCTION_30_10();
      v168 = v75;
      v196 = v70;
      return v167(v168, v196);
    case 0xBu:
      OUTLINED_FUNCTION_34_7();
      sub_26662B2D8(v96, v97, v98);
      LOBYTE(v253) = 11;
      sub_26662AD4C();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v101, v102, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_39_5();
      sub_26666CA78();
      goto LABEL_23;
    case 0xCu:
      OUTLINED_FUNCTION_34_7();
      sub_26662B2D8(v113, v114, v115);
      LOBYTE(v253) = 12;
      sub_26662ACF8();
      v100 = v249;
      v99 = v250;
      OUTLINED_FUNCTION_8_22();
      sub_26666CA08();
      OUTLINED_FUNCTION_0_39();
      sub_26662B494(v116, v117, &protocol conformance descriptor for Snippet.Event);
      OUTLINED_FUNCTION_39_5();
      sub_26666CA78();
LABEL_23:
      v193 = OUTLINED_FUNCTION_38_2();
      v194(v193);
      v195 = type metadata accessor for Snippet.Event;
LABEL_24:
      v179 = v195;
      v180 = v74;
LABEL_25:
      sub_26662AE9C(v180, v179);
      OUTLINED_FUNCTION_30_10();
      v168 = v100;
      v196 = v99;
      return v167(v168, v196);
    case 0xDu:
      v181 = *v79;
      LOBYTE(v253) = 13;
      sub_26662ACA4();
      v182 = v249;
      v159 = v250;
      sub_26666CA08();
      v253 = v181;
      v256 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F4C8, &qword_266678A50);
      sub_26662B250(&qword_28007F4D0);
      v183 = v248;
      sub_26666CA78();
      if (v183)
      {
        v184 = OUTLINED_FUNCTION_44_4();
        v185(v184);
        OUTLINED_FUNCTION_30_10();
        v94 = OUTLINED_FUNCTION_38_2();
LABEL_21:
        v93(v94, v95);
      }

      else
      {

        LOBYTE(v253) = 1;
        sub_26666CA58();
        v216 = OUTLINED_FUNCTION_44_4();
        v217(v216);
        OUTLINED_FUNCTION_30_10();
        v168 = v182;
LABEL_34:
        v196 = v159;
        return v167(v168, v196);
      }

    default:
      v88 = *v79;
      v87 = v79[1];
      LOBYTE(v253) = 0;
      sub_26662B1FC();
      v90 = v249;
      v89 = v250;
      sub_26666CA08();
      v253 = v88;
      v254 = v87;
      sub_266585EF4();
      sub_26666CA78();
      v91 = OUTLINED_FUNCTION_13_16();
      v92(v91, v70);
      OUTLINED_FUNCTION_30_10();
      v94 = v90;
      v95 = v89;
      goto LABEL_21;
  }
}

uint64_t Snippet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v261 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F568, &qword_266678A68);
  OUTLINED_FUNCTION_2_34(v4, &v278);
  v241 = v5;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_9();
  v260 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F570, &qword_266678A70);
  OUTLINED_FUNCTION_2_34(v8, v276);
  v263 = v9;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_9();
  v259 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F578, &qword_266678A78);
  OUTLINED_FUNCTION_2_34(v12, &v274);
  v239 = v13;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_9();
  v257 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F580, &qword_266678A80);
  OUTLINED_FUNCTION_2_34(v16, &v275);
  v240 = v17;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_9();
  v258 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F588, &qword_266678A88);
  OUTLINED_FUNCTION_2_34(v20, &v273);
  v238 = v21;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_8_9();
  v256 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F590, &qword_266678A90);
  OUTLINED_FUNCTION_2_34(v24, &v272 + 8);
  v262 = v25;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_9();
  v255 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F598, &qword_266678A98);
  OUTLINED_FUNCTION_2_34(v28, &v271);
  v235 = v29;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5A0, &qword_266678AA0);
  OUTLINED_FUNCTION_2_34(v32, &v270);
  v234 = v33;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5A8, &qword_266678AA8);
  OUTLINED_FUNCTION_2_34(v36, &v272);
  v236 = v37;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_9();
  v254 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5B0, &qword_266678AB0);
  OUTLINED_FUNCTION_2_34(v40, &v269);
  v233 = v41;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v43);
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5B8, &qword_266678AB8);
  OUTLINED_FUNCTION_3_0();
  v237 = v44;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8_9();
  v266 = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5C0, &qword_266678AC0);
  OUTLINED_FUNCTION_2_34(v47, &v267);
  v231 = v48;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5C8, &qword_266678AC8);
  OUTLINED_FUNCTION_2_34(v51, &v268);
  v232 = v52;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5D0, &qword_266678AD0);
  OUTLINED_FUNCTION_2_34(v55, &v266);
  v230 = v56;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v58);
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F5D8, &unk_266678AD8);
  OUTLINED_FUNCTION_3_0();
  v265 = v59;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_9();
  v271 = v61;
  v264 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v222 - v73;
  v75 = MEMORY[0x28223BE20](v72);
  v77 = &v222 - v76;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_45_4();
  v79 = MEMORY[0x28223BE20](v78);
  v81 = &v222 - v80;
  v82 = MEMORY[0x28223BE20](v79);
  v84 = &v222 - v83;
  MEMORY[0x28223BE20](v82);
  v86 = &v222 - v85;
  v269 = a1;
  v87 = OUTLINED_FUNCTION_21_5();
  __swift_project_boxed_opaque_existential_1(v87, v88);
  sub_26662AC50();
  v89 = v270;
  sub_26666CBD8();
  if (v89)
  {
    goto LABEL_9;
  }

  v223 = v84;
  v225 = v2;
  v224 = v74;
  v227 = v81;
  v226 = v77;
  v90 = v266;
  v270 = v86;
  sub_26666C9F8();
  result = sub_266575DD8();
  if (v93 == v94 >> 1)
  {
LABEL_8:
    v106 = v264;
    v107 = sub_26666C848();
    swift_allocError();
    v109 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v109 = v106;
    sub_26666C978();
    sub_26666C838();
    (*(*(v107 - 8) + 104))(v109, *MEMORY[0x277D84160], v107);
    swift_willThrow();
    swift_unknownObjectRelease();
    v110 = OUTLINED_FUNCTION_21_5();
    v111(v110);
LABEL_9:
    v112 = v269;
    return __swift_destroy_boxed_opaque_existential_1(v112);
  }

  v222 = 0;
  if (v93 < (v94 >> 1))
  {
    v95 = *(v92 + v93);
    sub_266575DD4();
    v97 = v96;
    v99 = v98;
    swift_unknownObjectRelease();
    v100 = v262;
    if (v97 == v99 >> 1)
    {
      v101 = v95;
      v102 = v271;
      v103 = v222;
      switch(v101)
      {
        case 1:
          OUTLINED_FUNCTION_40_3();
          sub_26662B1A8();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          LOBYTE(v272) = 0;
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v132, v133, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_46_0();
          OUTLINED_FUNCTION_11_21();
          OUTLINED_FUNCTION_25_11();
          sub_26666C9E8();
          OUTLINED_FUNCTION_40_3();
          OUTLINED_FUNCTION_25_11();
          v192 = sub_26666C9C8();
          swift_unknownObjectRelease();
          v193 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0) + 48);
          v194 = OUTLINED_FUNCTION_12_20();
          v195(v194);
          v196 = OUTLINED_FUNCTION_6_23();
          v197(v196);
          v198 = v192 & 1;
          v179 = v227;
          v227[v193] = v198;
          OUTLINED_FUNCTION_37_3();
          goto LABEL_41;
        case 2:
          LOBYTE(v272) = 2;
          sub_26662B154();
          OUTLINED_FUNCTION_33_8();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v124, v125, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_20_17();
          v126 = v244;
          OUTLINED_FUNCTION_10_20();
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v167 = OUTLINED_FUNCTION_13_16();
          v168(v167, v126);
          v169 = OUTLINED_FUNCTION_6_23();
          v170(v169);
          OUTLINED_FUNCTION_35_7();
          goto LABEL_40;
        case 3:
          LOBYTE(v272) = 3;
          sub_26662B100();
          v127 = v268;
          sub_26666C968();
          if (v103)
          {
            OUTLINED_FUNCTION_17_13();
            v129 = v102;
            v130 = v127;
            goto LABEL_37;
          }

          type metadata accessor for Snippet.Event(0);
          LOBYTE(v272) = 0;
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v144, v145, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_46_0();
          OUTLINED_FUNCTION_33_8();
          OUTLINED_FUNCTION_25_11();
          sub_26666C9E8();
          v171 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D320, &qword_266673E10) + 48);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
          OUTLINED_FUNCTION_40_3();
          OUTLINED_FUNCTION_23_12();
          sub_26662B38C(v172);
          OUTLINED_FUNCTION_25_11();
          sub_26666C9E8();
          v263 = v171;
          type metadata accessor for Snippet.ComposeEventModel(0);
          LOBYTE(v272) = 2;
          OUTLINED_FUNCTION_3_32();
          sub_26662B494(v190, v191, &protocol conformance descriptor for Snippet.ComposeEventModel);
          OUTLINED_FUNCTION_25_11();
          sub_26666C9A8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v216 = OUTLINED_FUNCTION_12_20();
          v217(v216);
          OUTLINED_FUNCTION_17_13();
          v218(v271, v268);
          v179 = v226;
          OUTLINED_FUNCTION_37_3();
          goto LABEL_41;
        case 4:
          LOBYTE(v272) = 4;
          sub_26662B0AC();
          OUTLINED_FUNCTION_33_8();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F538, &unk_266678A58);
          OUTLINED_FUNCTION_23_12();
          sub_26662B38C(v116);
          v117 = v245;
          OUTLINED_FUNCTION_10_20();
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_13_16();
          v154(v153, v117);
          v155 = OUTLINED_FUNCTION_6_23();
          v156(v155);
          v179 = v224;
          *v224 = v272;
          OUTLINED_FUNCTION_37_3();
          goto LABEL_41;
        case 5:
          LOBYTE(v272) = 5;
          sub_26662AFF0();
          v134 = v254;
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          LOBYTE(v272) = 0;
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v135, v136, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_46_0();
          OUTLINED_FUNCTION_20_17();
          v137 = v247;
          OUTLINED_FUNCTION_10_20();
          sub_26666C9E8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D328, &unk_266677400);
          type metadata accessor for Snippet.ComposeEventModel(0);
          OUTLINED_FUNCTION_40_3();
          OUTLINED_FUNCTION_3_32();
          sub_26662B494(v180, v181, &protocol conformance descriptor for Snippet.ComposeEventModel);
          OUTLINED_FUNCTION_10_20();
          sub_26666C9A8();
          v182 = v236;
          swift_unknownObjectRelease();
          (*(v182 + 8))(v134, v137);
          v199 = OUTLINED_FUNCTION_6_23();
          v200(v199);
          OUTLINED_FUNCTION_35_7();
          goto LABEL_40;
        case 6:
          LOBYTE(v272) = 6;
          sub_26662AF9C();
          OUTLINED_FUNCTION_33_8();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v138, v139, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_20_17();
          v140 = v246;
          OUTLINED_FUNCTION_10_20();
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v184 = OUTLINED_FUNCTION_13_16();
          v185(v184, v140);
          v186 = OUTLINED_FUNCTION_6_23();
          v187(v186);
          OUTLINED_FUNCTION_35_7();
          goto LABEL_40;
        case 7:
          LOBYTE(v272) = 7;
          sub_26662AEF4();
          v131 = v253;
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          sub_26662B338();
          OUTLINED_FUNCTION_41_2();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_18_9();
          v173(v131, v105);
          v174 = OUTLINED_FUNCTION_6_23();
          v175(v174);
          v179 = v229;
          *v229 = v272;
          OUTLINED_FUNCTION_37_3();
          goto LABEL_41;
        case 8:
          LOBYTE(v272) = 8;
          sub_26662AE48();
          v143 = v255;
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.ComposeEventModel(0);
          OUTLINED_FUNCTION_3_32();
          sub_26662B494(v146, v147, &protocol conformance descriptor for Snippet.ComposeEventModel);
          v90 = v242;
          v148 = v248;
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          (*(v100 + 8))(v143, v148);
          v188 = OUTLINED_FUNCTION_6_23();
          v189(v188);
          OUTLINED_FUNCTION_35_7();
          goto LABEL_40;
        case 9:
          LOBYTE(v272) = 9;
          sub_26662ADF4();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v121, v122, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_20_17();
          v123 = v249;
          OUTLINED_FUNCTION_10_20();
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v163 = OUTLINED_FUNCTION_13_16();
          v164(v163, v123);
          v165 = OUTLINED_FUNCTION_6_23();
          v166(v165);
          OUTLINED_FUNCTION_35_7();
          goto LABEL_40;
        case 10:
          LOBYTE(v272) = 10;
          sub_26662ADA0();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          LOBYTE(v272) = 0;
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v141, v142, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_46_0();
          OUTLINED_FUNCTION_11_21();
          OUTLINED_FUNCTION_25_11();
          sub_26666C9E8();
          OUTLINED_FUNCTION_40_3();
          OUTLINED_FUNCTION_25_11();
          v209 = sub_26666C9C8();
          swift_unknownObjectRelease();
          v210 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0) + 48);
          v211 = OUTLINED_FUNCTION_12_20();
          v212(v211);
          v213 = OUTLINED_FUNCTION_6_23();
          v214(v213);
          v215 = v209 & 1;
          v179 = v251;
          v251[v210] = v215;
          OUTLINED_FUNCTION_37_3();
          goto LABEL_41;
        case 11:
          LOBYTE(v272) = 11;
          sub_26662AD4C();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v113, v114, &protocol conformance descriptor for Snippet.Event);
          OUTLINED_FUNCTION_20_17();
          v115 = v250;
          OUTLINED_FUNCTION_10_20();
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v149 = OUTLINED_FUNCTION_13_16();
          v150(v149, v115);
          v151 = OUTLINED_FUNCTION_6_23();
          v152(v151);
          OUTLINED_FUNCTION_35_7();
LABEL_40:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_25();
          v208 = v90;
          goto LABEL_42;
        case 12:
          LOBYTE(v272) = 12;
          sub_26662ACF8();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          type metadata accessor for Snippet.Event(0);
          OUTLINED_FUNCTION_0_39();
          sub_26662B494(v118, v119, &protocol conformance descriptor for Snippet.Event);
          v120 = v243;
          OUTLINED_FUNCTION_11_21();
          OUTLINED_FUNCTION_25_11();
          sub_26666C9E8();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          v157 = OUTLINED_FUNCTION_12_20();
          v158(v157);
          v159 = OUTLINED_FUNCTION_6_23();
          v160(v159);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_25();
          sub_26662B2D8(v120, v270, v161);
          v162 = v269;
          goto LABEL_43;
        case 13:
          LOBYTE(v272) = 13;
          sub_26662ACA4();
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
            goto LABEL_36;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F4C8, &qword_266678A50);
          v277 = 0;
          sub_26662B250(&qword_28007F5E0);
          OUTLINED_FUNCTION_11_21();
          OUTLINED_FUNCTION_25_11();
          sub_26666C9E8();
          v183 = v272;
          v277 = 1;
          OUTLINED_FUNCTION_25_11();
          v201 = sub_26666C9C8();
          swift_unknownObjectRelease();
          v202 = OUTLINED_FUNCTION_12_20();
          v203(v202);
          v204 = OUTLINED_FUNCTION_6_23();
          v205(v204);
          v206 = v228;
          *v228 = v183;
          *(v206 + 8) = v201 & 1;
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_25();
          v208 = v206;
          goto LABEL_42;
        default:
          LOBYTE(v272) = 0;
          sub_26662B1FC();
          v104 = v252;
          v105 = v268;
          OUTLINED_FUNCTION_8_22();
          sub_26666C968();
          if (v103)
          {
LABEL_36:
            OUTLINED_FUNCTION_17_13();
            v129 = v102;
            v130 = v105;
LABEL_37:
            v128(v129, v130);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }

          sub_266585E9C();
          OUTLINED_FUNCTION_41_2();
          OUTLINED_FUNCTION_26_9();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_18_9();
          v176(v104, v105);
          v177 = OUTLINED_FUNCTION_6_23();
          v178(v177);
          v179 = v223;
          *v223 = v272;
          OUTLINED_FUNCTION_37_3();
LABEL_41:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_5_25();
          v208 = v179;
LABEL_42:
          sub_26662B2D8(v208, v270, v207);
          v162 = v269;
LABEL_43:
          OUTLINED_FUNCTION_5_25();
          v219 = OUTLINED_FUNCTION_21_5();
          sub_26662B2D8(v219, v220, v221);
          v112 = v162;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_1(v112);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_26662AB5C()
{
  swift_beginAccess();
  v0 = static Snippet.bundleName;

  return v0;
}

uint64_t type metadata accessor for Snippet(uint64_t a1)
{
  result = qword_28156C460;
  if (!qword_28156C460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26662AC50()
{
  result = qword_28007F4B8;
  if (!qword_28007F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F4B8);
  }

  return result;
}

unint64_t sub_26662ACA4()
{
  result = qword_28007F4C0;
  if (!qword_28007F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F4C0);
  }

  return result;
}

unint64_t sub_26662ACF8()
{
  result = qword_28007F4E0;
  if (!qword_28007F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F4E0);
  }

  return result;
}

unint64_t sub_26662AD4C()
{
  result = qword_28007F4E8;
  if (!qword_28007F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F4E8);
  }

  return result;
}