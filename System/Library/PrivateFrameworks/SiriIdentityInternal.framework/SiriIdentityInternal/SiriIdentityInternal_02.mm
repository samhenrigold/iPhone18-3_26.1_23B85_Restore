uint64_t sub_266E7FB64()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E7FC24()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v8);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v9, v10, "IdentifyUserIntentHandler.resolveDeviceNotSupportingMultiUser");
    OUTLINED_FUNCTION_10();
  }

  v11 = v0[3];

  v0[10] = *(v11 + 8);
  v12 = OUTLINED_FUNCTION_16();
  v13(v12);
  sub_266E9C294();
  sub_266E9C634();
  swift_allocObject();
  v0[11] = sub_266E9C624();
  v16 = (*MEMORY[0x277D5BEF8] + MEMORY[0x277D5BEF8]);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_266E7FDC0;

  return v16();
}

uint64_t sub_266E7FDC0()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;
  *(v4 + 104) = v3;

  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E7FEC8()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    if (sub_266E9408C())
    {
      (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 16));
      v2 = sub_266E9CF84();
      v3 = sub_266E9D194();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = OUTLINED_FUNCTION_5_0();
        *v4 = 0;
        OUTLINED_FUNCTION_20_4(&dword_266E51000, v5, v6, "Partial MeCard");
        MEMORY[0x26D5F66A0](v4, -1, -1);
      }

      v7 = *(v0 + 80);
      v8 = *(v0 + 40);
      v9 = *(v0 + 16);

      v7(v8, v9);
      type metadata accessor for UserIdentifyIdentityResolutionResult();
      static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(5);
    }

    else
    {
      type metadata accessor for Identity();
      v17 = sub_266E54644(0, 0, 0, 0);
      type metadata accessor for UserIdentifyIdentityResolutionResult();
      static IdentityResolutionResult.success(with:)(v17);
    }
  }

  else
  {
    (*(v0 + 64))(*(v0 + 32), *(v0 + 56), *(v0 + 16));
    v10 = sub_266E9CF84();
    v11 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v11))
    {
      v12 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v12);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v13, v14, "User Unknown");
      OUTLINED_FUNCTION_10();
    }

    v15 = *(v0 + 80);

    v16 = OUTLINED_FUNCTION_16();
    v15(v16);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(8);
  }

  v18 = OUTLINED_FUNCTION_5_4();

  return v19(v18);
}

id IdentifyUserIntentHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentifyUserIntentHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id IdentifyUserIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IdentifyUserIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266E80168()
{
  result = qword_2800E9730;
  if (!qword_2800E9730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9730);
  }

  return result;
}

uint64_t sub_266E801EC()
{
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2(v1);

  return v3(v2);
}

uint64_t sub_266E80284()
{
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2(v1);

  return v3(v2);
}

uint64_t sub_266E8031C()
{
  OUTLINED_FUNCTION_9_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_9_2(v1);

  return v3(v2);
}

uint64_t sub_266E803B4(uint64_t a1)
{
  v2 = sub_266E9CE64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_20_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_266E8048C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D48 != -1)
  {
    swift_once();
  }

  v5 = qword_2800E92F8;
  sub_266E9CF64();
  sub_266E9D1D4();
  sub_266E9CF44();
  v6 = &v4[*(v2 + 20)];
  *v6 = "AccountServicesInstanceCreation";
  *(v6 + 1) = 31;
  *(v6 + 8) = 258;
  v7 = type metadata accessor for AccountServicesNoOp();
  v8 = swift_allocObject();
  a1[3] = v7;
  a1[4] = &off_2878764E8;
  *a1 = v8;
  sub_266E9D1C4();
  sub_266E9CF54();
  return sub_266E541C0(v4);
}

unint64_t sub_266E8067C()
{
  result = qword_2800E9740;
  if (!qword_2800E9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9740);
  }

  return result;
}

uint64_t sub_266E807B4(uint64_t a1, void *a2)
{
  v3 = sub_266E9C1D4();
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v17 = __swift_project_value_buffer(v10, qword_2800EC7E0);
  (*(v12 + 16))(v16, v17, v10);
  v18 = sub_266E9CF84();
  v19 = sub_266E9D194();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_5_0();
    *v20 = 0;
    _os_log_impl(&dword_266E51000, v18, v19, "IdentifyUserIntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v20, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v12 + 8))(v16, v10);
  sub_266E9C254();
  v21 = objc_allocWithZone(type metadata accessor for IdentifyUserIntentHandler());

  [v21 init];
  type metadata accessor for UserIdentifyIntent();
  v22 = a2;
  sub_266E9C1C4();
  v23 = sub_266E9C244();
  (*(v5 + 8))(v9, v3);
  return v23;
}

uint64_t sub_266E80A34()
{
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v7 = __swift_project_value_buffer(v0, qword_2800EC7E0);
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_266E9CF84();
  v9 = sub_266E9D194();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_5_0();
    *v10 = 0;
    _os_log_impl(&dword_266E51000, v8, v9, "IdentifyUserFlowStrategy.actionForInput() called", v10, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v11 = OUTLINED_FUNCTION_6_0();
  v12(v11);
  return sub_266E9C384();
}

uint64_t sub_266E80B9C(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_266E9C7E4();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v3 = sub_266E9CFA4();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E80CE8, 0, 0);
}

uint64_t sub_266E80CE8()
{
  v68 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[18];
  v2 = __swift_project_value_buffer(v0[17], qword_2800EC7E0);
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_6_0();
  v3(v4);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_5_0();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "IdentifyUserFlowStrategy.makeIntentFromParse() called", v7, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v8 = v0[22];
  v9 = v0[17];
  v10 = v0[18];
  v11 = v0[12];

  v12 = *(v10 + 8);
  v12(v8, v9);
  sub_266E7B898(v11, v0 + 7);
  v13 = v0[17];
  if (!v0[10])
  {
    v66 = v12;
    v31 = v0[16];
    v32 = v0[13];
    v33 = v0[14];
    v34 = v0[12];
    sub_266E59548((v0 + 7));
    v35 = OUTLINED_FUNCTION_6_0();
    v3(v35);
    v36 = *(v33 + 16);
    v36(v31, v34, v32);
    v37 = sub_266E9CF84();
    v38 = sub_266E9D1A4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[19];
    v42 = v0[16];
    v41 = v0[17];
    if (v39)
    {
      v65 = v0[17];
      v43 = v0[14];
      v44 = v0[15];
      v45 = v0[13];
      v64 = v0[19];
      v46 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v67 = v63;
      *v46 = 136315138;
      v36(v44, v42, v45);
      v47 = sub_266E9D034();
      v48 = v38;
      v50 = v49;
      (*(v43 + 8))(v42, v45);
      v51 = sub_266E6E7D4(v47, v50, &v67);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_266E51000, v37, v48, "Unable to make intent from parse %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v52 = v64;
      v53 = v65;
    }

    else
    {
      v57 = v0[13];
      v56 = v0[14];

      (*(v56 + 8))(v42, v57);
      v52 = v40;
      v53 = v41;
    }

    v66(v52, v53);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v58 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_12();
    sub_266E8198C(v59, 255, v60, &unk_266EA07E0);
    swift_allocError();
    *v61 = v58;
    swift_willThrow();
LABEL_19:

    v62 = v0[1];

    return v62();
  }

  v14 = v0[21];
  sub_266E595F8((v0 + 7), (v0 + 2));
  type metadata accessor for UserIdentifyIntent();
  v15 = sub_266E68014(v0 + 2);
  (v3)(v14, v2, v13);
  v16 = sub_266E9CF84();
  v17 = sub_266E9D194();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_5_0();
    *v18 = 0;
    _os_log_impl(&dword_266E51000, v16, v17, "Finished creating intent from parse", v18, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v19 = v0[21];
  v20 = v0[17];

  v12(v19, v20);
  if ([v15 caseType] == 4)
  {
    v21 = OUTLINED_FUNCTION_6_0();
    v3(v21);
    v22 = sub_266E9CF84();
    v23 = sub_266E9D1A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_5_0();
      *v24 = 0;
      _os_log_impl(&dword_266E51000, v22, v23, "Unsupported Intent Case Type", v24, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v25 = v0[20];
    v26 = v0[17];

    v12(v25, v26);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v27 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_12();
    sub_266E8198C(v28, 255, v29, &unk_266EA07E0);
    swift_allocError();
    *v30 = v27;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v54 = v0[1];

  return v54(v15);
}

uint64_t sub_266E8135C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E58A70;

  return sub_266E80B9C(a1);
}

uint64_t sub_266E813F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for IdentifyUserFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266E8143C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for IdentifyUserFlowStrategy();
  *v10 = v5;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_266E81508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for IdentifyUserFlowStrategy();
  *v10 = v5;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_266E815D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for IdentifyUserFlowStrategy();
  *v10 = v5;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_266E816A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for IdentifyUserFlowStrategy();
  *v12 = v6;
  v12[1] = sub_266E59244;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E8177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for IdentifyUserFlowStrategy();
  *v12 = v6;
  v12[1] = sub_266E59610;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_266E81858(uint64_t a1, void *a2)
{
  v3 = sub_266E807B4(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_266E8198C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_266E819EC(uint64_t a1)
{
  type metadata accessor for BaseDialogProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_2800E9760 = result;
  return result;
}

uint64_t sub_266E81A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v5[6] = a4;
  v5[7] = v6;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = sub_266E9CFA4();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E81B38, 0, 0);
}

uint64_t sub_266E81B38()
{
  v26 = v0;
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v5 = *(v3 + 16);
  v0[12] = v5;
  v0[13] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);

  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[9];
  if (v8)
  {
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_266E6E7D4(v13, v12, &v25);
    _os_log_impl(&dword_266E51000, v6, v7, "SiriIdentity CAT: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();
  }

  v16 = *(v11 + 8);
  v16(v9, v10);
  v0[14] = v16;
  v17 = v0[7];
  v18 = v0[4];
  v19 = swift_task_alloc();
  v0[15] = v19;
  v20 = *(v0 + 5);
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  *(v19 + 40) = v17;
  v21 = swift_task_alloc();
  v0[16] = v21;
  v22 = sub_266E9C5D4();
  *v21 = v0;
  v21[1] = sub_266E81DAC;
  v23 = v0[3];

  return MEMORY[0x2822008A0](v23, 0, 0, 0xD000000000000016, 0x8000000266EA2B30, sub_266E8257C, v19, v22);
}

uint64_t sub_266E81DAC()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266E81F00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_266E81F00()
{
  v25 = v0;

  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v4, qword_2800EC7C8);
  v2(v3, v5, v4);
  v6 = v1;
  v7 = sub_266E9CF84();
  v8 = sub_266E9D1A4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17];
    v23 = v0[14];
    v10 = v0[10];
    v11 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v0[2] = v9;
    v14 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
    v15 = sub_266E9D034();
    v17 = sub_266E6E7D4(v15, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266E51000, v7, v8, "Error while executing dialog: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    v23(v10, v11);
  }

  else
  {
    v18 = v0[14];
    v19 = v0[10];
    v20 = v0[8];

    v18(v19, v20);
  }

  swift_willThrow();

  v21 = v0[1];

  return v21();
}

uint64_t sub_266E82144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v16 = a1;
  v17 = a2;
  v20 = sub_266E9CDA4();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_266E9CD74();
  if (qword_2800E8D70 != -1)
  {
    swift_once();
  }

  sub_266E9CD54();
  v11 = sub_266E9CD44();
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  (*(v8 + 16))(v10, v16, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v10, v7);
  sub_266E9CD94();
  sub_266E9CD64();

  (*(v4 + 8))(v6, v20);
  return sub_266E82698(v21);
}

uint64_t sub_266E823C0(uint64_t a1)
{
  v2 = sub_266E9C5D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9778, &qword_266EA0448);
  MEMORY[0x28223BE20](v6);
  v8 = (v10 - v7);
  sub_266E82700(a1, v10 - v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
    return sub_266E9D144();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
    return sub_266E9D154();
  }
}

uint64_t sub_266E82588()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266E8261C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9768, &qword_266EA0438);

  return sub_266E823C0(a1);
}

uint64_t sub_266E82698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9770, &qword_266EA0440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E82700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9778, &qword_266EA0448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E82770(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  sub_266E846B4(a1, v7);
  v5 = sub_266E8493C(v4, v7, a2);
  sub_266E54DA8(a1, &qword_2800E93F0, &qword_266E9F028);
  return v5;
}

uint64_t sub_266E827F8()
{
  OUTLINED_FUNCTION_7_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266E9C5D4();
  v1[5] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v6 = sub_266E9CFA4();
  v1[14] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[15] = v7;
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266E82948()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0[14], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_21_3(&dword_266E51000, v6, v7, "IdentifyUserUnsupportedValueFlowStrategy.makeUnsupportedValueOutput");
    MEMORY[0x26D5F66A0](v5, -1, -1);
  }

  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9780, &qword_266EA0530);
  v11 = sub_266E9C714();
  v12 = [v11 unsupportedReason];

  v13 = UserIdentifyIdentityUnsupportedReason.init(rawValue:)(v12);
  if ((v14 & 1) == 0)
  {
    switch(v13)
    {
      case 2:
        OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_20();
        v0[27] = v19;
        *v19 = v20;
        v19[1] = sub_266E83964;
        goto LABEL_24;
      case 3:
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[29] = v31;
        *v31 = v32;
        v31[1] = sub_266E83BBC;
        OUTLINED_FUNCTION_21();

        return sub_266E6738C(v33);
      case 4:
        __swift_project_boxed_opaque_existential_0((v0[4] + 16), *(v0[4] + 40));
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_20();
        v0[23] = v23;
        *v23 = v24;
        v23[1] = sub_266E834AC;
        goto LABEL_24;
      case 5:
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[19] = v25;
        *v25 = v26;
        v25[1] = sub_266E83140;
        OUTLINED_FUNCTION_21();

        return sub_266E67264(v27, v28);
      case 6:
        OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_20();
        v0[25] = v21;
        *v21 = v22;
        v21[1] = sub_266E83704;
        goto LABEL_24;
      case 7:
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[21] = v35;
        *v35 = v36;
        v35[1] = sub_266E832F4;
        OUTLINED_FUNCTION_21();

        return sub_266E6713C(v37, v38);
      case 8:
        OUTLINED_FUNCTION_19_3();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_20();
        v0[17] = v40;
        *v40 = v41;
        v40[1] = sub_266E82EE4;
LABEL_24:
        OUTLINED_FUNCTION_21();

        __asm { BR              X3 }

        return result;
      default:
        break;
    }
  }

  type metadata accessor for IdentityFlowError();
  swift_allocObject();
  v15 = sub_266E89698(3);
  sub_266E8465C();
  swift_allocError();
  *v16 = v15;
  swift_willThrow();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_266E82EE4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E82FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(*(v10 + 104));
  v11 = *(v10 + 104);
  OUTLINED_FUNCTION_2_7();
  v12(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E8309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83140()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E83238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(*(v11 + 96));
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_6();
  v12(v10);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E832F4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E833EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(*(v10 + 88));
  v11 = *(v10 + 88);
  OUTLINED_FUNCTION_2_7();
  v12(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E834AC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E835A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(*(v10 + 80));
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_6();
  v12(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E83660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83704()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E837FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(*(v10 + 72));
  v11 = *(v10 + 72);
  OUTLINED_FUNCTION_5_6();
  v12(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E838C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83964()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E83A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(*(v10 + 64));
  OUTLINED_FUNCTION_0_13();
  OUTLINED_FUNCTION_5_6();
  v12(v11);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_266E83B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83BBC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E83CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_18_5(v10[7]);
  (*(v10[6] + 8))(v10[7], v10[5]);

  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_13_3();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_266E83D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_0_13();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_13_3();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_266E83F6C()
{
  OUTLINED_FUNCTION_7_0();
  v0[2] = v1;
  v2 = sub_266E9CFA4();
  v0[3] = v2;
  OUTLINED_FUNCTION_5_1(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E8401C()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0[3], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    OUTLINED_FUNCTION_21_3(&dword_266E51000, v6, v7, "IdentifyUserUnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue");
    MEMORY[0x26D5F66A0](v5, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9780, &qword_266EA0530);
  v11 = sub_266E9C704();

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_266E84174@<X0>(uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v11 - v5;
  __swift_project_boxed_opaque_existential_0((v2 + 112), *(v2 + 136));
  sub_266E9C2B4();
  v7 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = sub_266E9C834();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v9 = MEMORY[0x277D5C1D8];
  a2[3] = v8;
  a2[4] = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(a2);
  sub_266E9C4A4();
  sub_266E54DA8(v11, &qword_2800E94D0, &unk_266E9F5C0);
  return sub_266E54DA8(v6, &qword_2800E94C0, &unk_266E9EFC0);
}

uint64_t sub_266E842E0()
{
  sub_266E5D044(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  return v0;
}

uint64_t sub_266E84310()
{
  sub_266E842E0();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

uint64_t sub_266E84368()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E5C6A4;

  return sub_266E827F8();
}

uint64_t sub_266E84414()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E844A8;

  return sub_266E83F6C();
}

uint64_t sub_266E844A8()
{
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266E84598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = sub_266E765F8;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

unint64_t sub_266E8465C()
{
  result = qword_2800E94F0;
  if (!qword_2800E94F0)
  {
    type metadata accessor for IdentityFlowError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E94F0);
  }

  return result;
}

uint64_t sub_266E846B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93F0, &qword_266E9F028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E84724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = type metadata accessor for BaseDialogProvider();
  v17[4] = &off_287876528;
  v17[0] = a1;
  sub_266E5CE50(v17, &v14);
  sub_266E846B4(a2, v13);
  sub_266E5CE50(&v14, __src);
  sub_266E846B4(v13, &v10);
  if (v11)
  {
    sub_266E54DA8(v13, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(&v14);
    sub_266E5D10C(&v10, v12);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E54DA8(v13, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(&v14);
    if (v11)
    {
      sub_266E54DA8(&v10, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(v12, &__src[40]);
  sub_266E5CE50(&__src[40], v12);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_266E5D10C(v12, v8 + 16);
  *&__src[80] = v8;
  memcpy((a4 + 16), __src, 0x58uLL);
  if (!a3)
  {
    sub_266E9CCF4();
    a3 = sub_266E79A78();
  }

  *(a4 + 104) = a3;
  sub_266E846B4(a2, &v14);
  if (v15)
  {
    sub_266E54DA8(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_266E5D10C(&v14, __src);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E54DA8(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(v17);
    if (v15)
    {
      sub_266E54DA8(&v14, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(__src, a4 + 112);
  return a4;
}

uint64_t sub_266E8493C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for BaseDialogProvider();
  v16 = &off_287876528;
  v14[0] = a1;
  type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_266E84724(*v9, a2, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1)
{
  v3 = *(v1 + 16);

  return sub_266E84174(v3);
}

void *OUTLINED_FUNCTION_19_3()
{
  v2 = *(v0 + 32);
  v3 = *(v2 + 40);

  return __swift_project_boxed_opaque_existential_0((v2 + 16), v3);
}

void OUTLINED_FUNCTION_21_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

_OWORD *sub_266E84B4C@<X0>(void *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9788, &qword_266EA0538);
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v44 - v16;
  v17 = sub_266E9CA94();
  if (v2)
  {
    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_1_6(&qword_2800E8D88);
    }

    v18 = __swift_project_value_buffer(v9, qword_2800EC7F8);
    (*(v11 + 16))(v15, v18, v9);
    v19 = v2;
    v20 = sub_266E9CF84();
    v21 = sub_266E9D1A4();

    v49 = v21;
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v46 = v22;
      v23 = swift_slowAlloc();
      v48 = v3;
      v47 = v23;
      v54[0] = v23;
      *v22 = 136315138;
      *&v52 = v2;
      v24 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
      v25 = sub_266E9D034();
      v45 = v20;
      v27 = v5;
      v28 = sub_266E6E7D4(v25, v26, v54);

      v29 = v46;
      *(v46 + 1) = v28;
      v5 = v27;
      v30 = v45;
      _os_log_impl(&dword_266E51000, v45, v49, "failed generating verb -- User Dialog Act to tasks: %s", v29, 0xCu);
      v31 = v47;
      __swift_destroy_boxed_opaque_existential_0(v47);
      v32 = v31;
      v3 = v48;
      MEMORY[0x26D5F66A0](v32, -1, -1);
      MEMORY[0x26D5F66A0](v29, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v15, v9);
    v33 = MEMORY[0x277D84F90];
  }

  else
  {
    v33 = v17;
  }

  if (sub_266E8B274(v33))
  {
    sub_266E8B278();
    if ((v33 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x26D5F5ED0](0, v33);
    }

    else
    {
      v34 = *(v33 + 32);
    }

    sub_266E9CC64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
    sub_266E9CD04();
    v35 = sub_266E9CD14();
    (*(v5 + 8))(v8, v3);
    v54[0] = v34;
    v35(v54);
  }

  else
  {

    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_1_6(&qword_2800E8D88);
    }

    v37 = __swift_project_value_buffer(v9, qword_2800EC7F8);
    v38 = v50;
    (*(v11 + 16))(v50, v37, v9);
    v39 = sub_266E9CF84();
    v40 = sub_266E9D1A4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266E51000, v39, v40, "did not get USOTask. Bailing", v41, 2u);
      MEMORY[0x26D5F66A0](v41, -1, -1);
    }

    (*(v11 + 8))(v38, v9);
    v52 = 0uLL;
    *v53 = 3;
    memset(&v53[8], 0, 32);
    v53[40] = 3;
    v54[0] = 0;
    v54[1] = 0;
    v55 = 3;
    v56 = 0u;
    v57 = 0u;
    v58 = 3;
    sub_266E869A0(&v52, v51);
    sub_266E869FC(v54);
    v42 = v59;
    v59[3] = &type metadata for IdentityNLv4Intent;
    v42[4] = &off_2878766D0;
    result = swift_allocObject();
    *v42 = result;
    v43 = *v53;
    result[1] = v52;
    result[2] = v43;
    result[3] = *&v53[16];
    *(result + 57) = *&v53[25];
  }

  return result;
}

_OWORD *sub_266E85108@<X0>(void *a2@<X8>)
{
  v159 = a2;
  v2 = sub_266E9CFA4();
  v157 = *(v2 - 8);
  v158 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v142 = &v139 - v6;
  v152 = sub_266E9CAB4();
  v141 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v151 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_266E9CA14();
  v153 = *(v156 - 8);
  v8 = MEMORY[0x28223BE20](v156);
  v155 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v139 = &v139 - v11;
  MEMORY[0x28223BE20](v10);
  v140 = &v139 - v12;
  v150 = sub_266E9CAF4();
  v154 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9790, &qword_266EA0540);
  v14 = MEMORY[0x28223BE20](v149);
  v144 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v139 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9798, qword_266EA0548);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v143 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v145 = &v139 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v146 = &v139 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v139 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v139 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v139 - v31;
  v33 = sub_266E9CB24();
  v148 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E9CB34();
  if (!v173)
  {
    goto LABEL_37;
  }

  sub_266E60D4C(v172, v162, &qword_2800E9278, &qword_266E9F5F0);
  sub_266E9CBE4();
  if (swift_dynamicCast())
  {

    sub_266E9CBC4();
    if (v166)
    {
      v36 = sub_266E9CB04();
      v38 = v37;

      if (v38)
      {
        sub_266E9CBC4();

        v39 = v166;
        v157 = v36;
        v158 = v166;
        v156 = v38;
        if (!v166)
        {
          v43 = 0;
LABEL_47:
          v155 = 0;
LABEL_48:
          v85 = v148;
          v148[13](v35, *MEMORY[0x277D5E868], v33);
          v86 = sub_266E9CB14();
          v88 = v87;
          (v85[1])(v35, v33);
          if (!v39)
          {

            v91 = 0;
            v92 = 0;
LABEL_61:
            v164 = 0uLL;
            *v165 = 3;
            *&v165[8] = v157;
            *&v165[16] = v156;
            *&v165[24] = v91;
            *&v165[32] = v92;
            v165[40] = 0;
            v166 = 0;
            v167 = 0;
            v168 = 3;
            *&v169 = v157;
            *(&v169 + 1) = v156;
            *&v170 = v91;
            *(&v170 + 1) = v92;
            v171 = 0;
            sub_266E869A0(&v164, v163);
            sub_266E869FC(&v166);
            v95 = v159;
            v159[3] = &type metadata for IdentityNLv4Intent;
            v95[4] = &off_2878766D0;
            v82 = swift_allocObject();
            *v95 = v82;

LABEL_62:

            v96 = *v165;
            v82[1] = v164;
            v82[2] = v96;
            v82[3] = *&v165[16];
            v84 = *&v165[25];
            goto LABEL_99;
          }

          if (v43 == v86 && v39 == v88)
          {

            if (!v155)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v90 = sub_266E9D3E4();

            v91 = 0;
            if ((v90 & 1) == 0)
            {
              v92 = 0;
              goto LABEL_61;
            }

            v92 = 0;
            if (!v155)
            {
              goto LABEL_61;
            }
          }

          v93 = sub_266E9C9D4();

          if (v93)
          {
            v91 = sub_266E9CC84();
            v92 = v94;

            goto LABEL_61;
          }

LABEL_60:
          v91 = 0;
          v92 = 0;
          goto LABEL_61;
        }

        sub_266E9C9C4();

        sub_266E9CCA4();

        v40 = sub_266E98240();

        if (!v40)
        {
          goto LABEL_46;
        }

        v41 = sub_266E8B274(v40);
        if ((v41 & 0x8000000000000000) == 0)
        {
          if (v41 > 1)
          {
            sub_266E8B278();
            if ((v40 & 0xC000000000000001) == 0)
            {

              goto LABEL_11;
            }

LABEL_104:
            MEMORY[0x26D5F5ED0](1, v40);
LABEL_11:

            v42 = sub_266E9CC94();

            if (v42)
            {

              v43 = sub_266E9C9E4();
              v39 = v44;
              v155 = v42;

              goto LABEL_48;
            }

            goto LABEL_46;
          }

LABEL_46:
          v43 = 0;
          v39 = 0;
          goto LABEL_47;
        }

LABEL_103:
        __break(1u);
        goto LABEL_104;
      }
    }

LABEL_34:
    __swift_destroy_boxed_opaque_existential_0(v162);
    sub_266E54DA8(v172, &qword_2800E9278, &qword_266E9F5F0);
    v164 = 0uLL;
    *v165 = 3;
    memset(&v165[8], 0, 32);
    v165[40] = 3;
    v166 = 0;
    v167 = 0;
    v168 = 3;
    v169 = 0u;
    v170 = 0u;
    v171 = 3;
    sub_266E869A0(&v164, v163);
    sub_266E869FC(&v166);
    v65 = v159;
    v159[3] = &type metadata for IdentityNLv4Intent;
    v65[4] = &off_2878766D0;
    result = swift_allocObject();
    *v65 = result;
    v67 = *v165;
    result[1] = v164;
    result[2] = v67;
    result[3] = *&v165[16];
    *(result + 57) = *&v165[25];
    return result;
  }

  sub_266E9CC34();
  v45 = swift_dynamicCast();
  v46 = MEMORY[0x277D5E828];
  if (v45)
  {
    v47 = v161;

    sub_266E9CB44();
    v158 = v47;

    if (v166)
    {
      sub_266E9CAE4();

      v48 = v150;
    }

    else
    {
      v48 = v150;
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v150);
    }

    (*(v154 + 104))(v30, *v46, v48);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v48);
    v64 = *(v149 + 48);
    sub_266E60D4C(v32, v17, &qword_2800E9798, qword_266EA0548);
    sub_266E60D4C(v30, &v17[v64], &qword_2800E9798, qword_266EA0548);
    if (__swift_getEnumTagSinglePayload(v17, 1, v48) == 1)
    {
      sub_266E54DA8(v30, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v32, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(&v17[v64], 1, v48) == 1)
      {
        sub_266E54DA8(v17, &qword_2800E9798, qword_266EA0548);
LABEL_43:
        v164 = 0uLL;
        *v165 = 3;
        memset(&v165[8], 0, 32);
        v165[40] = 1;
        v166 = 0;
        v167 = 0;
        v168 = 3;
        v169 = 0u;
        v170 = 0u;
        v171 = 1;
        sub_266E869A0(&v164, v163);
        sub_266E869FC(&v166);
        v81 = v159;
        v159[3] = &type metadata for IdentityNLv4Intent;
        v81[4] = &off_2878766D0;
        v82 = swift_allocObject();
        *v81 = v82;
LABEL_44:

        v83 = *v165;
        v82[1] = v164;
        v82[2] = v83;
        v82[3] = *&v165[16];
        v84 = *&v165[25];
LABEL_99:
        *(v82 + 57) = v84;
        goto LABEL_100;
      }
    }

    else
    {
      sub_266E60D4C(v17, v27, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(&v17[v64], 1, v48) != 1)
      {
        v77 = v154;
        v78 = &v17[v64];
        v79 = v147;
        (*(v154 + 32))(v147, v78, v48);
        sub_266E86A98();
        LODWORD(v157) = sub_266E9D004();
        v80 = *(v77 + 8);
        v80(v79, v48);
        sub_266E54DA8(v30, &qword_2800E9798, qword_266EA0548);
        sub_266E54DA8(v32, &qword_2800E9798, qword_266EA0548);
        v80(v27, v48);
        sub_266E54DA8(v17, &qword_2800E9798, qword_266EA0548);
        if (v157)
        {
          goto LABEL_43;
        }

LABEL_33:

        goto LABEL_34;
      }

      sub_266E54DA8(v30, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v32, &qword_2800E9798, qword_266EA0548);
      (*(v154 + 8))(v27, v48);
    }

    sub_266E54DA8(v17, &qword_2800E9790, &qword_266EA0540);
    goto LABEL_33;
  }

  sub_266E9CBD4();
  if (swift_dynamicCast())
  {
    v49 = v161;

    sub_266E9CB44();

    v50 = v166;
    if (!v166)
    {
      goto LABEL_98;
    }

    v51 = sub_266E9CB64();
    v142 = v50;
    if (!v51)
    {
LABEL_67:
      v40 = v50;
      v98 = sub_266E9CA64();
      if (v98)
      {
        v146 = v49;
        v158 = *(v98 + 16);
        if (v158)
        {
          v33 = 0;
          v154 = v98 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
          v150 = v153 + 16;
          LODWORD(v149) = *MEMORY[0x277D5E6E0];
          v147 = (v141 + 8);
          v148 = (v141 + 104);
          v157 = v153 + 8;
          while (v33 < *(v98 + 16))
          {
            v99 = v98;
            (*(v153 + 16))(v155, v154 + *(v153 + 72) * v33, v156);
            v100 = sub_266E9CA04();
            v102 = v101;
            v40 = v151;
            v35 = v152;
            (*v148)(v151, v149, v152);
            v103 = sub_266E9CAA4();
            v105 = v104;
            (*v147)(v40, v35);
            if (v102)
            {
              if (v100 == v103 && v102 == v105)
              {

LABEL_95:

                v128 = v153 + 32;
                v127 = *(v153 + 32);
                v129 = v139;
                v130 = v156;
                v127(v139, v155, v156);
                v131 = v140;
                v127(v140, v129, v130);
                v132 = sub_266E9C9F4();
                v164 = 0uLL;
                *v165 = 3;
                *&v165[8] = v132;
                *&v165[16] = v133;
                *&v165[32] = 0;
                v165[40] = 2;
                v166 = 0;
                v167 = 0;
                v168 = 3;
                *&v169 = v132;
                *(&v169 + 1) = v133;
                v170 = 0uLL;
                v171 = 2;
                sub_266E869A0(&v164, v163);
                sub_266E869FC(&v166);
                v134 = v159;
                v159[3] = &type metadata for IdentityNLv4Intent;
                v134[4] = &off_2878766D0;
                v135 = swift_allocObject();
                *v134 = v135;

                v136 = *v165;
                v135[1] = v164;
                v135[2] = v136;
                v135[3] = *&v165[16];
                *(v135 + 57) = *&v165[25];
                (*(v128 - 24))(v131, v130);
                goto LABEL_100;
              }

              v107 = sub_266E9D3E4();

              if (v107)
              {
                goto LABEL_95;
              }
            }

            else
            {
            }

            ++v33;
            (*v157)(v155, v156);
            v98 = v99;
            if (v158 == v33)
            {
              goto LABEL_80;
            }
          }

          __break(1u);
          goto LABEL_103;
        }

LABEL_80:
      }

      v108 = sub_266E9CB54();
      if (v109)
      {
        v164 = 0uLL;
        *v165 = 3;
        *&v165[8] = v108;
        *&v165[16] = v109;
        *&v165[32] = 0;
        v165[40] = 2;
        v166 = 0;
        v167 = 0;
        v168 = 3;
        *&v169 = v108;
        *(&v169 + 1) = v109;
        v170 = 0uLL;
        v171 = 2;
        sub_266E869A0(&v164, v163);
        sub_266E869FC(&v166);
        v110 = v159;
        v159[3] = &type metadata for IdentityNLv4Intent;
        v110[4] = &off_2878766D0;
        v82 = swift_allocObject();
        *v110 = v82;
        goto LABEL_62;
      }

      if (sub_266E9CB64())
      {
        v117 = sub_266E9CB04();
        if (v118)
        {
          v164 = 0uLL;
          *v165 = 3;
          *&v165[8] = v117;
          *&v165[16] = v118;
          *&v165[32] = 0;
          v165[40] = 2;
          v166 = 0;
          v167 = 0;
          v168 = 3;
          *&v169 = v117;
          *(&v169 + 1) = v118;
          v170 = 0uLL;
          v171 = 2;
          sub_266E869A0(&v164, v163);
          sub_266E869FC(&v166);
          v119 = v159;
          v159[3] = &type metadata for IdentityNLv4Intent;
          v119[4] = &off_2878766D0;
          v120 = swift_allocObject();
          *v119 = v120;

          v121 = *v165;
          v120[1] = v164;
          v120[2] = v121;
          v120[3] = *&v165[16];
          *(v120 + 57) = *&v165[25];
          goto LABEL_100;
        }
      }

LABEL_98:
      v164 = 0uLL;
      *v165 = 3;
      memset(&v165[8], 0, 32);
      v165[40] = 2;
      v166 = 0;
      v167 = 0;
      v168 = 3;
      v169 = 0u;
      v170 = 0u;
      v171 = 2;
      sub_266E869A0(&v164, v163);
      sub_266E869FC(&v166);
      v137 = v159;
      v159[3] = &type metadata for IdentityNLv4Intent;
      v137[4] = &off_2878766D0;
      v82 = swift_allocObject();
      *v137 = v82;

      v138 = *v165;
      v82[1] = v164;
      v82[2] = v138;
      v82[3] = *&v165[16];
      v84 = *&v165[25];
      goto LABEL_99;
    }

    v35 = v146;
    v158 = v51;
    sub_266E9CAE4();
    v52 = *v46;
    v53 = v145;
    v54 = v150;
    (*(v154 + 104))(v145, v52, v150);
    __swift_storeEnumTagSinglePayload(v53, 0, 1, v54);
    v55 = *(v149 + 48);
    v56 = v144;
    sub_266E60D4C(v35, v144, &qword_2800E9798, qword_266EA0548);
    sub_266E60D4C(v53, v56 + v55, &qword_2800E9798, qword_266EA0548);
    if (__swift_getEnumTagSinglePayload(v56, 1, v54) == 1)
    {
      sub_266E54DA8(v53, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v35, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(v56 + v55, 1, v54) == 1)
      {
        sub_266E54DA8(v56, &qword_2800E9798, qword_266EA0548);
LABEL_93:
        v164 = 0uLL;
        *v165 = 259;
        memset(&v165[8], 0, 32);
        v165[40] = 2;
        v166 = 0;
        v167 = 0;
        v168 = 259;
        v169 = 0u;
        v170 = 0u;
        v171 = 2;
        sub_266E869A0(&v164, v163);
        sub_266E869FC(&v166);
        v126 = v159;
        v159[3] = &type metadata for IdentityNLv4Intent;
        v126[4] = &off_2878766D0;
        v82 = swift_allocObject();
        *v126 = v82;

        goto LABEL_44;
      }
    }

    else
    {
      v97 = v143;
      sub_266E60D4C(v56, v143, &qword_2800E9798, qword_266EA0548);
      if (__swift_getEnumTagSinglePayload(v56 + v55, 1, v54) != 1)
      {
        v122 = v154;
        v123 = v56 + v55;
        v124 = v147;
        (*(v154 + 32))(v147, v123, v54);
        sub_266E86A98();
        v35 = sub_266E9D004();
        v125 = *(v122 + 8);
        v125(v124, v54);
        sub_266E54DA8(v145, &qword_2800E9798, qword_266EA0548);
        sub_266E54DA8(v146, &qword_2800E9798, qword_266EA0548);
        v125(v97, v54);
        sub_266E54DA8(v144, &qword_2800E9798, qword_266EA0548);
        if (v35)
        {
          goto LABEL_93;
        }

        goto LABEL_66;
      }

      sub_266E54DA8(v145, &qword_2800E9798, qword_266EA0548);
      sub_266E54DA8(v146, &qword_2800E9798, qword_266EA0548);
      (*(v154 + 8))(v97, v54);
    }

    sub_266E54DA8(v56, &qword_2800E9790, &qword_266EA0540);
LABEL_66:

    v50 = v142;
    goto LABEL_67;
  }

  sub_266E9CB74();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v162);
LABEL_37:
    if (qword_2800E8D88 != -1)
    {
      swift_once();
    }

    v68 = v158;
    v69 = __swift_project_value_buffer(v158, qword_2800EC7F8);
    v70 = v157;
    (*(v157 + 16))(v5, v69, v68);
    v71 = sub_266E9CF84();
    v72 = sub_266E9D184();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_266E51000, v71, v72, "#Transformer did not have a valid task. Returning Empty Intent", v73, 2u);
      MEMORY[0x26D5F66A0](v73, -1, -1);
    }

    (*(v70 + 8))(v5, v68);
    v164 = 0uLL;
    *v165 = 3;
    memset(&v165[8], 0, 32);
    v165[40] = 3;
    v166 = 0;
    v167 = 0;
    v168 = 3;
    v169 = 0u;
    v170 = 0u;
    v171 = 3;
    sub_266E869A0(&v164, v163);
    sub_266E869FC(&v166);
    v74 = v159;
    v159[3] = &type metadata for IdentityNLv4Intent;
    v74[4] = &off_2878766D0;
    v75 = swift_allocObject();
    *v74 = v75;
    v76 = *v165;
    v75[1] = v164;
    v75[2] = v76;
    v75[3] = *&v165[16];
    *(v75 + 57) = *&v165[25];
    return sub_266E54DA8(v172, &qword_2800E9278, &qword_266E9F5F0);
  }

  sub_266E9C974();

  v58 = v157;
  v57 = v158;
  if (!v160)
  {
    if (qword_2800E8D88 != -1)
    {
      swift_once();
    }

    v111 = __swift_project_value_buffer(v57, qword_2800EC7F8);
    v112 = v142;
    (*(v58 + 16))(v142, v111, v57);
    v113 = sub_266E9CF84();
    v114 = sub_266E9D184();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_266E51000, v113, v114, "#Transformer found a noVerb task with no entity. Returning Empty Intent", v115, 2u);
      MEMORY[0x26D5F66A0](v115, -1, -1);
    }

    (*(v58 + 8))(v112, v57);
    v164 = 0uLL;
    *v165 = 3;
    memset(&v165[8], 0, 32);
    v165[40] = 3;
    v166 = 0;
    v167 = 0;
    v168 = 3;
    v169 = 0u;
    v170 = 0u;
    v171 = 3;
    sub_266E869A0(&v164, v163);
    sub_266E869FC(&v166);
    v116 = v159;
    v159[3] = &type metadata for IdentityNLv4Intent;
    v116[4] = &off_2878766D0;
    v82 = swift_allocObject();
    *v116 = v82;
    goto LABEL_44;
  }

  v59 = sub_266E9CB04();
  v164 = 0uLL;
  *v165 = 3;
  *&v165[8] = v59;
  *&v165[16] = v60;
  *&v165[32] = 0;
  v165[40] = 2;
  v166 = 0;
  v167 = 0;
  v168 = 3;
  *&v169 = v59;
  *(&v169 + 1) = v60;
  v170 = 0uLL;
  v171 = 2;
  sub_266E869A0(&v164, v163);
  sub_266E869FC(&v166);
  v61 = v159;
  v159[3] = &type metadata for IdentityNLv4Intent;
  v61[4] = &off_2878766D0;
  v62 = swift_allocObject();
  *v61 = v62;

  v63 = *v165;
  v62[1] = v164;
  v62[2] = v63;
  v62[3] = *&v165[16];
  *(v62 + 57) = *&v165[25];
LABEL_100:
  __swift_destroy_boxed_opaque_existential_0(v162);
  return sub_266E54DA8(v172, &qword_2800E9278, &qword_266E9F5F0);
}

unsigned __int8 *sub_266E8697C@<X0>(unsigned __int8 *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = *result;
  v3 = 3;
  if (v2 != 1)
  {
    v3 = 4;
  }

  v4 = v2 == 0;
  v5 = 2;
  if (!v4)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_266E86A50()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

unint64_t sub_266E86A98()
{
  result = qword_2800E97A0;
  if (!qword_2800E97A0)
  {
    sub_266E9CAF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97A0);
  }

  return result;
}

uint64_t InProcessHandlingStrategy.makeSiriKitIntentHandler(app:intent:)@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 24);

  v9(a3, a4);
  swift_getAssociatedTypeWitness();
  v10 = a2;
  sub_266E9C1C4();
  v11 = sub_266E9C1D4();

  return __swift_storeEnumTagSinglePayload(a5, 0, 1, v11);
}

uint64_t sub_266E86BC4()
{
  v0 = sub_266E9CDD4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_266E9C3B4();
  v8 = v7;
  sub_266E9CDC4();
  v9 = sub_266E9CDB4();
  v11 = v10;
  (*(v2 + 8))(v5, v0);
  if (v8)
  {
    if (v6 == v9 && v8 == v11)
    {
      v13 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_2_8();
      v13 = sub_266E9D3E4();
    }
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_266E86CF0(char a1)
{
  sub_266E9C434();
  OUTLINED_FUNCTION_2_1();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  sub_266E9C444();
  sub_266E9C424();
  v6 = OUTLINED_FUNCTION_7_6();
  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_1_13();
  v7(v8);
  v9 = OUTLINED_FUNCTION_25();
  v7(v9);
  if (v6 & 1) != 0 || (sub_266E9C444(), sub_266E9C3F4(), v10 = OUTLINED_FUNCTION_7_6(), v11 = OUTLINED_FUNCTION_1_13(), v7(v11), v12 = OUTLINED_FUNCTION_25(), v7(v12), (v10))
  {
    v13 = 1;
  }

  else
  {
    sub_266E9C444();
    sub_266E9C404();
    v13 = OUTLINED_FUNCTION_7_6();
    v15 = OUTLINED_FUNCTION_1_13();
    v7(v15);
    v16 = OUTLINED_FUNCTION_25();
    v7(v16);
    if (v13 & 1) == 0 && (a1)
    {
      sub_266E9C444();
      sub_266E9C414();
      v13 = OUTLINED_FUNCTION_7_6();
      v17 = OUTLINED_FUNCTION_1_13();
      v7(v17);
      v18 = OUTLINED_FUNCTION_25();
      v7(v18);
    }
  }

  return v13 & 1;
}

uint64_t sub_266E86EB8()
{
  sub_266E9C434();
  OUTLINED_FUNCTION_2_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_8();
  v4 = MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_6(v4);
  sub_266E9C424();
  OUTLINED_FUNCTION_2_8();
  v5 = sub_266E9C3E4();
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_30();
  v6(v7);
  v8 = OUTLINED_FUNCTION_1_13();
  v6(v8);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    sub_266E9C444();
    sub_266E9C3F4();
    OUTLINED_FUNCTION_2_8();
    v9 = sub_266E9C3E4();
    v10 = OUTLINED_FUNCTION_30();
    v6(v10);
    v11 = OUTLINED_FUNCTION_1_13();
    v6(v11);
  }

  return v9 & 1;
}

uint64_t sub_266E86FE4()
{
  sub_266E9C434();
  OUTLINED_FUNCTION_2_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_8();
  v4 = MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_6(v4);
  sub_266E9C424();
  OUTLINED_FUNCTION_2_8();
  v5 = sub_266E9C3E4();
  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_30();
  v6(v7);
  v8 = OUTLINED_FUNCTION_1_13();
  v6(v8);
  if (v5 & 1) != 0 || (sub_266E9C444(), sub_266E9C3F4(), OUTLINED_FUNCTION_2_8(), v9 = sub_266E9C3E4(), v10 = OUTLINED_FUNCTION_30(), v6(v10), v11 = OUTLINED_FUNCTION_1_13(), v6(v11), (v9) || (sub_266E9C444(), sub_266E9C404(), OUTLINED_FUNCTION_2_8(), v12 = sub_266E9C3E4(), v13 = OUTLINED_FUNCTION_30(), v6(v13), v14 = OUTLINED_FUNCTION_1_13(), v6(v14), (v12))
  {
    v15 = 1;
  }

  else
  {
    sub_266E9C444();
    sub_266E9C414();
    OUTLINED_FUNCTION_2_8();
    v15 = sub_266E9C3E4();
    v17 = OUTLINED_FUNCTION_30();
    v6(v17);
    v18 = OUTLINED_FUNCTION_1_13();
    v6(v18);
  }

  return v15 & 1;
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{

  return sub_266E9C444();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_266E9C3E4();
}

double IdentityFlowProvider.init()@<D0>(uint64_t a2@<X8>)
{
  sub_266E9C7F4();
  sub_266E9C1A4();
  *(a2 + 104) = &type metadata for IdentityFlowFactoryImpl;
  *(a2 + 112) = &off_2878767E8;
  result = 0.0;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 145) = 0u;
  return result;
}

uint64_t IdentityFlowProvider.makeFlow(for:)(uint64_t a1)
{
  v125 = a1;
  v118 = sub_266E9C7D4();
  OUTLINED_FUNCTION_2_1();
  v116 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v3);
  v114 = v105 - v4;
  sub_266E9C7E4();
  OUTLINED_FUNCTION_2_1();
  v126 = v6;
  v127 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v9 = MEMORY[0x28223BE20](v8);
  v119 = v105 - v10;
  MEMORY[0x28223BE20](v9);
  v121 = v105 - v11;
  v128 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_2_2();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v105 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v105 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v105 - v23;
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v128, qword_2800EC7C8);
  v27 = v13 + 16;
  v26 = *(v13 + 16);
  v122 = v25;
  v123 = v26;
  (v26)(v24);
  v28 = sub_266E9CF84();
  v29 = sub_266E9D1B4();
  v30 = os_log_type_enabled(v28, v29);
  v124 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_266E51000, v28, v29, "Making flow from parse", v31, 2u);
    v27 = v13 + 16;
    v22 = v124;
    OUTLINED_FUNCTION_4_0();
  }

  v34 = *(v13 + 8);
  v33 = v13 + 8;
  v32 = v34;
  v35 = v24;
  v36 = v128;
  v34(v35, v128);
  v123(v22, v122, v36);
  v37 = v126 + 16;
  v38 = *(v126 + 16);
  v39 = v121;
  v38(v121, v125, v127);
  v40 = sub_266E9CF84();
  v41 = sub_266E9D194();
  v42 = os_log_type_enabled(v40, v41);
  v112 = v37;
  v111 = v38;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v115 = v32;
    v44 = v43;
    v45 = swift_slowAlloc();
    v106 = v18;
    v46 = v45;
    v131[0] = v45;
    *v44 = 136315138;
    v105[1] = v27;
    v47 = v127;
    v38(v119, v39, v127);
    v48 = sub_266E9D034();
    v113 = v33;
    v49 = v48;
    v51 = v50;
    v121 = *(v126 + 8);
    (v121)(v39, v47);
    v52 = sub_266E6E7D4(v49, v51, v131);

    *(v44 + 4) = v52;
    v33 = v113;
    _os_log_impl(&dword_266E51000, v40, v41, "Received parse: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    v18 = v106;
    OUTLINED_FUNCTION_4_0();
    v32 = v115;
    OUTLINED_FUNCTION_4_0();
  }

  else
  {

    v121 = *(v126 + 8);
    (v121)(v39, v127);
  }

  v32(v124, v128);
  sub_266E7B898(v125, &v129);
  if (v130)
  {
    sub_266E595F8(&v129, v131);
    v53 = v132;
    v54 = v133;
    __swift_project_boxed_opaque_existential_0(v131, v132);
    if ((*(v54 + 48))(v53, v54) || (v77 = v132, v78 = v133, __swift_project_boxed_opaque_existential_0(v131, v132), (*(v78 + 40))(v77, v78), !v79))
    {
LABEL_10:
      v55 = v120;
      v56 = sub_266E87DF0(v131);
      v57 = v56;
      if (*(v55 + 160) == 1 && v56)
      {
        *&v129 = v56;
        sub_266E88804();
        v58 = sub_266E9C134();

        __swift_destroy_boxed_opaque_existential_0(v131);
        return v58;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v131);
      }

      return v57;
    }

    sub_266E9CCF4();
    if (static SiriEnvironment.getUserIdentity()() && (sub_266E9C684() & 1) != 0)
    {

      goto LABEL_10;
    }

    v95 = v107;
    v123(v107, v122, v128);
    v96 = sub_266E9CF84();
    v97 = sub_266E9D194();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_266E51000, v96, v97, "Contacts Reformation flow. Will fall back to server.", v98, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v32(v95, v128);
    __swift_destroy_boxed_opaque_existential_0(v131);
    return 0;
  }

  sub_266E59548(&v129);
  v59 = v117;
  v60 = v127;
  v61 = v111;
  v111(v117, v125, v127);
  if ((*(v126 + 88))(v59, v60) != *MEMORY[0x277D5C150])
  {
    v113 = v33;
    v80 = v110;
    v123(v110, v122, v128);
    v81 = v108;
    v61(v108, v125, v127);
    v82 = sub_266E9CF84();
    v83 = v61;
    v84 = sub_266E9D1A4();
    if (os_log_type_enabled(v82, v84))
    {
      v85 = swift_slowAlloc();
      v86 = v127;
      v87 = v85;
      v88 = swift_slowAlloc();
      v131[0] = v88;
      *v87 = 136315138;
      v83(v119, v81, v86);
      v89 = sub_266E9D034();
      v90 = v32;
      v92 = v91;
      v93 = OUTLINED_FUNCTION_6_7();
      (v121)(v93, v86);
      v94 = sub_266E6E7D4(v89, v92, v131);

      *(v87 + 4) = v94;
      _os_log_impl(&dword_266E51000, v82, v84, "Received unsupported parse: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v88);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v90(v110, v128);
    }

    else
    {

      v102 = OUTLINED_FUNCTION_6_7();
      (v121)(v102);
      v32(v80, v128);
    }

    (v121)(v117, v127);
    return 0;
  }

  v115 = v32;
  (*(v126 + 96))(v59, v127);
  v62 = v116;
  v63 = v114;
  v64 = v118;
  (*(v116 + 32))(v114, v59, v118);
  v123(v18, v122, v128);
  v65 = v109;
  (*(v62 + 16))(v109, v63, v64);
  v66 = sub_266E9CF84();
  v67 = sub_266E9D1B4();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = v18;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v131[0] = v70;
    *v69 = 136315138;
    v71 = sub_266E9C7B4();
    v73 = v72;
    v74 = OUTLINED_FUNCTION_5_7();
    v65(v74);
    v75 = sub_266E6E7D4(v71, v73, v131);

    *(v69 + 4) = v75;
    _os_log_impl(&dword_266E51000, v66, v67, "Received direct invocation with identifier %s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    v76 = v68;
  }

  else
  {

    v99 = OUTLINED_FUNCTION_5_7();
    v65(v99);
    v76 = v18;
  }

  v115(v76, v128);
  type metadata accessor for SwitchProfileWrapperFlow(0);
  v131[0] = sub_266E59DA8();
  sub_266E887AC();
  v100 = sub_266E9C134();

  if (*(v120 + 160) == 1)
  {
    v131[0] = v100;
    sub_266E88804();
    v57 = sub_266E9C134();

    v101 = OUTLINED_FUNCTION_3_9();
    v65(v101);
  }

  else
  {
    v103 = OUTLINED_FUNCTION_3_9();
    v65(v103);
    return v100;
  }

  return v57;
}

uint64_t sub_266E87DF0(void *a1)
{
  v2 = v1;
  v4 = sub_266E9CFA4();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for Signpost.OpenSignpost(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_2800E8D48 != -1)
  {
    swift_once();
  }

  v10 = qword_2800E92F8;
  sub_266E9CF64();
  sub_266E9D1D4();
  sub_266E9CF54();
  v11 = &v9[*(v7 + 20)];
  *v11 = "MakeFlow";
  *(v11 + 1) = 8;
  *(v11 + 8) = 2;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v12);
  switch((*(v13 + 48))(v12, v13))
  {
    case 1u:
      type metadata accessor for UserIdentifyIntent();
      v14 = sub_266E68014(a1);
      __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v15 = sub_266E8F214();
      goto LABEL_11;
    case 2u:
      v16 = sub_266E88258(a1);
      break;
    case 3u:
      if (qword_2800E8D78 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v4, qword_2800EC7C8);
      v18 = v28;
      (*(v28 + 16))(v6, v17, v4);
      sub_266E5CE50(a1, v31);
      v19 = sub_266E9CF84();
      v20 = sub_266E9D1A4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v30 = v22;
        *v21 = 136315138;
        sub_266E5CE50(v31, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
        v23 = sub_266E9D034();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v31);
        v26 = sub_266E6E7D4(v23, v25, &v30);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_266E51000, v19, v20, "Received unsupported intent: %s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x26D5F66A0](v22, -1, -1);
        MEMORY[0x26D5F66A0](v21, -1, -1);

        (*(v28 + 8))(v6, v4);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v31);
        (*(v18 + 8))(v6, v4);
      }

      v16 = 0;
      break;
    default:
      type metadata accessor for UserIdentifyIntent();
      v14 = sub_266E68014(a1);
      __swift_project_boxed_opaque_existential_0((v2 + 80), *(v2 + 104));
      v15 = sub_266E8F500();
LABEL_11:
      v16 = v15;

      break;
  }

  sub_266E9D1C4();
  sub_266E9CF54();
  sub_266E541C0(v9);
  return v16;
}

uint64_t sub_266E88258(void *a1)
{
  v34 = sub_266E9CFA4();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9420, &qword_266E9F5D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_266E9C314();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E5CE50(a1, v38);
  sub_266E88934((v1 + 15), v37);
  sub_266E5CE50(v1, v36);
  sub_266E8FE20(v38, v37, v36, v39);
  v11 = v40;
  sub_266E889A4(v39);
  type metadata accessor for SwitchProfileIntent();
  v31 = a1;
  v12 = sub_266E68424(a1);
  v13 = v1[8];
  v35 = v1[9];
  __swift_project_boxed_opaque_existential_0(v1 + 5, v13);
  sub_266E9C284();
  (*(v8 + 104))(v10, *MEMORY[0x277D5BB10], v7);
  v14 = [v12 typeName];
  sub_266E9D024();

  v15 = sub_266E9C224();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
  *(swift_allocObject() + 16) = v11;
  sub_266E9C274();
  sub_266E9C1B4();

  if (v11 == 3)
  {
    if (qword_2800E8D78 != -1)
    {
      swift_once();
    }

    v16 = v34;
    v17 = __swift_project_value_buffer(v34, qword_2800EC7C8);
    v18 = v33;
    v19 = v32;
    (*(v33 + 16))(v32, v17, v16);
    sub_266E5CE50(v31, v39);
    v20 = sub_266E9CF84();
    v21 = sub_266E9D1A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37[0] = v23;
      *v22 = 136315138;
      sub_266E5CE50(v39, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9578, &unk_266E9F600);
      v24 = sub_266E9D034();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(v39);
      v27 = sub_266E6E7D4(v24, v26, v37);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_266E51000, v20, v21, "makeFlow unsupported for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x26D5F66A0](v23, -1, -1);
      MEMORY[0x26D5F66A0](v22, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v39);
    }

    (*(v18 + 8))(v19, v16);
    return 0;
  }

  else
  {
    type metadata accessor for SwitchProfileWrapperFlow(0);
    *&v39[0] = sub_266E59DA8();
    sub_266E887AC();
    v28 = sub_266E9C134();
  }

  return v28;
}

unint64_t sub_266E887AC()
{
  result = qword_2800E92F0;
  if (!qword_2800E92F0)
  {
    type metadata accessor for SwitchProfileWrapperFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E92F0);
  }

  return result;
}

unint64_t sub_266E88804()
{
  result = qword_2800E97A8;
  if (!qword_2800E97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriIdentityInternal0B21FeatureFlagsProviding_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266E88878(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_266E888B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E88934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97B0, &qword_266EA0628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_266E88A74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_266E88AC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_266E88B3C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_266E88B7C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_266E88BAC()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_266E88BF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x796669746E656469;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x796669746E656469;
  switch(v4)
  {
    case 1:
      v5 = 0x73696C6261747365;
      v3 = 0xE900000000000068;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x796669646F6DLL;
      break;
    case 3:
      v5 = 0x74736575516B7361;
      v3 = 0xEB000000006E6F69;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6579297;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x74754F676F6CLL;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x73696C6261747365;
      v6 = 0xE900000000000068;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
      break;
    case 3:
      v2 = 0x74736575516B7361;
      v6 = 0xEB000000006E6F69;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6579297;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x74754F676F6CLL;
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
    v8 = OUTLINED_FUNCTION_0_14(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266E88DB8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1718379891;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1718379891;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x70756F7267;
      break;
    case 2:
      v3 = 0xE200000000000000;
      v5 = 25705;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x746E756F636361;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x70756F7267;
      break;
    case 2:
      v6 = 0xE200000000000000;
      v2 = 25705;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x746E756F636361;
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
    v8 = OUTLINED_FUNCTION_0_14(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266E88EF4(char a1, uint64_t a2)
{
  v2 = 7562617;
  if (a1)
  {
    OUTLINED_FUNCTION_2_9();
    if (v3)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7562617;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_9();
    if (v7)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_0_14(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_266E88FB8(uint64_t a1)
{
  v1 = a1;
  sub_266E9D484();
  v2 = IdentityVerb.rawValue.getter(v1);
  OUTLINED_FUNCTION_1_14(v2, v3, v4);

  return sub_266E9D4A4();
}

uint64_t sub_266E89008(uint64_t a1)
{
  v1 = a1;
  sub_266E9D484();
  sub_266E89220(v3, v1);
  return sub_266E9D4A4();
}

uint64_t sub_266E8905C(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](10 * a1 + 10);
  return sub_266E9D4A4();
}

uint64_t sub_266E890B4(uint64_t a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E89124(uint64_t a1, char a2)
{
  sub_266E9D074();
}

uint64_t sub_266E89220(uint64_t a1, char a2)
{
  sub_266E9D074();
}

uint64_t sub_266E892D0(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_9();
  }

  sub_266E9D074();
}

uint64_t sub_266E89378(uint64_t a1, unsigned __int8 a2)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](10 * a2 + 10);
  return sub_266E9D4A4();
}

uint64_t sub_266E893C8(uint64_t a1, char a2)
{
  sub_266E9D484();
  if (a2)
  {
    OUTLINED_FUNCTION_2_9();
  }

  sub_266E9D074();

  return sub_266E9D4A4();
}

uint64_t sub_266E8944C(uint64_t a1, char a2)
{
  sub_266E9D484();
  sub_266E89220(v4, a2);
  return sub_266E9D4A4();
}

uint64_t sub_266E89490(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_266E9D484();
  v3 = IdentityVerb.rawValue.getter(v2);
  OUTLINED_FUNCTION_1_14(v3, v4, v5);

  return sub_266E9D4A4();
}

uint64_t sub_266E894DC(uint64_t a1, uint64_t a2)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a2);
  return sub_266E9D4A4();
}

uint64_t sub_266E89520(uint64_t a1)
{
  if (a1 == 30)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  if (a1 == 40)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 20)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 10)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266E89580@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266E89520(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_266E895AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266E89554(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_266E895D8()
{
  BYTE8(v2) = 0;
  sub_266E9D294();
  MEMORY[0x26D5F5CB0](0xD000000000000013, 0x8000000266EA2D40);
  *&v2 = *(v0 + 16);
  sub_266E9D314();
  MEMORY[0x26D5F5CB0](10272, 0xE200000000000000);
  MEMORY[0x26D5F5CB0](*(v0 + 24), *(v0 + 32));
  MEMORY[0x26D5F5CB0](41, 0xE100000000000000);
  return *(&v2 + 1);
}

uint64_t sub_266E89698(char a1)
{
  *(v1 + 16) = a1;
  v2 = 0xED0000726F727245;
  v3 = 0x206E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000266EA2CB0;
      v3 = 0xD00000000000004CLL;
      break;
    case 2:
      v2 = 0x8000000266EA2C70;
      v3 = 0xD00000000000003ELL;
      break;
    case 3:
      break;
    default:
      v3 = 0xD000000000000038;
      v2 = 0x8000000266EA2D00;
      break;
  }

  *(v1 + 24) = v3;
  *(v1 + 32) = v2;
  return v1;
}

uint64_t sub_266E89754()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for IdentityFlowErrorCode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E8987CLL);
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

unint64_t sub_266E898B8()
{
  result = qword_2800E97B8;
  if (!qword_2800E97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266E9D3E4();
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_266E9D074();
}

uint64_t sub_266E8999C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97C0, qword_266EA0870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_266E9F380;
  *(v5 + 32) = v1;

  sub_266E9CA74();
  v6 = sub_266E9CA84();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  MEMORY[0x26D5F5680](v5, v4);

  sub_266E89FB4(v4);
  sub_266E9C944();
}

uint64_t sub_266E89B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266E9C924();
  OUTLINED_FUNCTION_2_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v55 = sub_266E9C894();
  OUTLINED_FUNCTION_2_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_2();
  v57 = v17 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v22 = sub_266E9C854();
  MEMORY[0x28223BE20](v22 - 8);
  v53 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_266E9C8C4();
  OUTLINED_FUNCTION_2_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_5_2();
  v52 = v27 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v42 - v30;
  v54 = a1;
  result = sub_266E8B274(a1);
  v45 = a2;
  v46 = v4;
  v43 = v10;
  v44 = v6;
  v42 = v13;
  if (!result)
  {
LABEL_12:
    v39 = v42;
    sub_266E9C914();
    sub_266E9C904();
    sub_266E9C8E4();
    v40 = v44;
    v41 = v46;
    (*(v44 + 16))(v43, v39, v46);
    sub_266E9C8D4();
    return (*(v40 + 8))(v39, v41);
  }

  if (result >= 1)
  {
    v33 = 0;
    v50 = (v25 + 16);
    v51 = v54 & 0xC000000000000001;
    v48 = v15 + 8;
    v49 = (v15 + 16);
    v47 = v15 + 32;
    v34 = MEMORY[0x277D84F90];
    do
    {
      v35 = result;
      if (v51)
      {
        MEMORY[0x26D5F5ED0](v33, v54);
      }

      else
      {
      }

      sub_266E9C8B4();
      sub_266E8999C();
      sub_266E9C8A4();
      sub_266E9C884();
      (*v50)(v52, v31, v56);
      sub_266E9C874();
      (*v49)(v57, v21, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_266E55C84(0, *(v34 + 16) + 1, 1, v34);
      }

      v37 = *(v34 + 16);
      v36 = *(v34 + 24);
      if (v37 >= v36 >> 1)
      {
        v34 = sub_266E55C84(v36 > 1, v37 + 1, 1, v34);
      }

      ++v33;

      v38 = v55;
      (*(v15 + 8))(v21, v55);
      (*(v25 + 8))(v31, v56);
      *(v34 + 16) = v37 + 1;
      (*(v15 + 32))(v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v37, v57, v38);
      result = v35;
    }

    while (v35 != v33);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E89FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97C0, qword_266EA0870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E8A01C(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (sub_266E9D354())
    {
      goto LABEL_3;
    }

    return 23899;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 23899;
  }

LABEL_3:
  v2 = sub_266E8A858(a1);
  if (!v2)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97C8, &qword_266EA0940);
    sub_266E8B048();
    v13 = sub_266E9CFF4();
    v15 = v14;

    MEMORY[0x26D5F5CB0](v13, v15);

    MEMORY[0x26D5F5CB0](23818, 0xE200000000000000);
    return 592475;
  }

  v3 = v2;
  v16 = MEMORY[0x277D84F90];
  result = sub_266E8ACA4(0, v2 & ~(v2 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D5F5ED0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_266E9CEB4();
      v7 = sub_266E9D034();
      v9 = v8;
      v11 = *(v16 + 16);
      v10 = *(v16 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_266E8ACA4((v10 > 1), v11 + 1, 1);
      }

      ++v5;
      *(v16 + 16) = v11 + 1;
      v12 = v16 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
    }

    while (v3 != v5);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E8A1F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266E9F380;
  sub_266E9CF14();
  *(v0 + 32) = sub_266E9CF04();
  return v0;
}

uint64_t sub_266E8A260(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v4 = sub_266E9CFA4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8A320, 0, 0);
}

uint64_t sub_266E8A320()
{
  v31 = v0;
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 134218242;
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_266E9D354();
    }

    else
    {
      v10 = *(*(v0 + 72) + 16);
    }

    v14 = *(v0 + 96);
    v29 = *(v0 + 104);
    v15 = *(v0 + 88);
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;

    v17 = sub_266E8ABF4(v16);

    v18 = sub_266E8A01C(v17);
    v20 = v19;

    v21 = sub_266E6E7D4(v18, v20, &v30);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_266E51000, v5, v6, "SwitchProfileDeviceResolutionStrategy.processDevices() Found %ld capable remote devices: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F66A0](v9, -1, -1);
    MEMORY[0x26D5F66A0](v8, -1, -1);

    (*(v14 + 8))(v29, v15);
  }

  else
  {
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v13 = *(v0 + 88);

    (*(v12 + 8))(v11, v13);
  }

  v22 = *(v0 + 80);
  v23 = *(v22 + 72);
  v24 = *(v22 + 88);
  v25 = *(v22 + 56);
  *(v0 + 64) = *(v22 + 104);
  *(v0 + 32) = v23;
  *(v0 + 48) = v24;
  *(v0 + 16) = v25;
  v26 = swift_task_alloc();
  *(v0 + 112) = v26;
  *v26 = v0;
  v26[1] = sub_266E8A5EC;
  v27 = *(v0 + 72);

  return sub_266E55200(v0 + 16, v27);
}

uint64_t sub_266E8A5EC(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_266E8A6EC, 0, 0);
}

uint64_t sub_266E8A6EC()
{
  result = sub_266E8A858(*(v0 + 120));
  v2 = *(v0 + 120);
  if (result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D5F5ED0](0, *(v0 + 120));
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v3 = *(v2 + 32);
    }

    sub_266E9CEA4();
    v4 = sub_266E9CF34();
    if (sub_266E9CF34() >= v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {

    v3 = 0;
    v5 = 3;
  }

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_266E8A7DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_266E8A858(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_266E9D354();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void *sub_266E8A87C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_266E8A974(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_266E8AA70(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_15(a3, result);
  }

  return result;
}

char *sub_266E8AA90(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_15(a3, result);
  }

  return result;
}

uint64_t sub_266E8AAF8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_1_15();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_1_15();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

unint64_t sub_266E8ABD0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *sub_266E8ABF4(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_266E9D354();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_266E8A87C(v2, 0);

    v1 = sub_266E8B0AC(&v5, v3 + 4, v2, v1);
    sub_266E8B26C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *sub_266E8ACA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266E8ACE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266E8ACC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266E8ADEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266E8ACE4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97D8, &qword_266EA0948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_266E8ADEC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97E8, &unk_266EA0960);
  v10 = *(sub_266E9C304() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_266E9C304() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_266E8AAF8(a4 + v16, v8, v13 + v16, MEMORY[0x277D5BAF8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void (*sub_266E8AFB4(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_266E8ABC0(a3);
  sub_266E8ABD0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x26D5F5ED0](a2, a3);
  }

  *a1 = v7;
  return sub_266E8B040;
}

unint64_t sub_266E8B048()
{
  result = qword_2800E97D0;
  if (!qword_2800E97D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E97C8, &qword_266EA0940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97D0);
  }

  return result;
}

uint64_t sub_266E8B0AC(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    result = sub_266E9D344();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v4 = result | 0x8000000000000000;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v12 = 0;
    a3 = 0;
LABEL_28:
    *v7 = v4;
    v7[1] = v8;
    v7[2] = v9;
    v7[3] = v12;
    v7[4] = v10;
    return a3;
  }

  v17 = -1 << *(a4 + 32);
  v8 = a4 + 64;
  v9 = ~v17;
  v18 = -v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v10 = v19 & *(a4 + 64);
  if (!a2)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v20 = v9;
    v11 = 0;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if ((v4 & 0x8000000000000000) != 0)
      {
        if (!sub_266E9D364() || (sub_266E9CEB4(), swift_dynamicCast(), (result = v21) == 0))
        {
LABEL_25:
          a3 = v11;
LABEL_26:
          v9 = v20;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v10)
        {
          while (1)
          {
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              v10 = 0;
              goto LABEL_25;
            }

            v10 = *(v8 + 8 * v15);
            ++v12;
            if (v10)
            {
              v12 = v15;
              goto LABEL_13;
            }
          }

          __break(1u);
          break;
        }

LABEL_13:
        v16 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        result = *(*(v4 + 48) + ((v12 << 9) | (8 * v16)));
        if (!result)
        {
          goto LABEL_25;
        }
      }

      *v6++ = result;
      ++v11;
      if (v14 == a3)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266E8B2A0()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  v1[10] = swift_task_alloc();
  v4 = sub_266E9C5D4();
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = sub_266E9CFA4();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8B40C, 0, 0);
}

uint64_t sub_266E8B40C()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "IdentifyUserIdentityHandleIntentStrategy.makeIntentHandledResponse()", v7, 2u);
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9638, &unk_266E9F9F0);
  v11 = sub_266E9C6C4();
  v12 = [v11 identity];
  v0[19] = v12;

  if (v12 && (v13 = [v12 isMultiUserContext]) != 0 && (v14 = v13, v15 = objc_msgSend(v13, sel_BOOLValue), v14, v15))
  {
    v16 = [v12 highConfidence];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 BOOLValue];
    }

    else
    {
      v18 = 0;
    }

    v23 = [v12 setupInProgress];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 BOOLValue];
    }

    else
    {
      v25 = 0;
    }

    v26 = swift_task_alloc();
    v0[20] = v26;
    *v26 = v0;
    v26[1] = sub_266E8B710;
    v27 = v0[14];

    return sub_266E67580(v27, v18, v25);
  }

  else
  {
    v19 = *(v0[9] + 144);
    v20 = swift_task_alloc();
    v0[22] = v20;
    *v20 = v0;
    v20[1] = sub_266E8B9D8;
    v21 = v0[13];

    return sub_266E66F18(v21, v19);
  }
}

uint64_t sub_266E8B710()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;
  *(v4 + 168) = v0;

  if (v0)
  {
    v5 = sub_266E8BCA0;
  }

  else
  {
    v5 = sub_266E8B818;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266E8B818()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[10];
  v13 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  (*(v3 + 32))(v2);
  v7 = *(v5 + 128);
  __swift_project_boxed_opaque_existential_0((v5 + 104), v7);
  sub_266E9C2B4();
  sub_266E8BDC8(v1);
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  sub_266E9C834();
  OUTLINED_FUNCTION_2_10();
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v10;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_4_7();
  sub_266E9C4A4();

  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v4, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v3 + 8))(v2, v13);

  OUTLINED_FUNCTION_8_0();

  return v11();
}

uint64_t sub_266E8B9D8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;
  *(v4 + 184) = v0;

  if (v0)
  {
    v5 = sub_266E8BD34;
  }

  else
  {
    v5 = sub_266E8BAE0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_266E8BAE0()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[15];
  v4 = v0[10];
  v13 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  (*(v2 + 32))(v3);
  v7 = *(v5 + 128);
  __swift_project_boxed_opaque_existential_0((v5 + 104), v7);
  sub_266E9C2B4();
  sub_266E8BDC8(v1);
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
  sub_266E9C834();
  OUTLINED_FUNCTION_2_10();
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v10;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_4_7();
  sub_266E9C4A4();

  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v4, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v2 + 8))(v3, v13);

  OUTLINED_FUNCTION_8_0();

  return v11();
}

uint64_t sub_266E8BCA0()
{
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E8BD34()
{
  OUTLINED_FUNCTION_7_7();

  OUTLINED_FUNCTION_8_0();

  return v1();
}

uint64_t sub_266E8BDC8(uint64_t a1)
{
  v2 = sub_266E9CE24();
  OUTLINED_FUNCTION_2_1();
  v34 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v33 - v17;
  sub_266E9CCF4();
  if (sub_266E9CCD4())
  {
    sub_266E9CCB4();

    sub_266E9C674();

    v19 = sub_266E9C464();
    v20 = 0;
  }

  else
  {
    v19 = sub_266E9C464();
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v18, v20, 1, v19);
  if (a1 && (v21 = sub_266E54758(v18)) != 0)
  {
    v22 = v21;
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    v23 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    (*(v9 + 16))(v15, v23, v7);
    v24 = sub_266E9CF84();
    v25 = sub_266E9D194();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266E51000, v24, v25, "Building views for user", v26, 2u);
      MEMORY[0x26D5F66A0](v26, -1, -1);
    }

    (*(v9 + 8))(v15, v7);
    sub_266E5CE50(v33[1] + 104, v35);
    sub_266E9CE14();
    v27 = sub_266E9CE04();

    (*(v34 + 8))(v6, v2);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
    }

    v28 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    (*(v9 + 16))(v13, v28, v7);
    v29 = sub_266E9CF84();
    v30 = sub_266E9D1A4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266E51000, v29, v30, "Not building views: Couldn't convert identity to contact", v31, 2u);
      MEMORY[0x26D5F66A0](v31, -1, -1);
    }

    (*(v9 + 8))(v13, v7);
    v27 = MEMORY[0x277D84F90];
  }

  sub_266E54DA8(v18, &qword_2800E91C0, &unk_266E9EC70);
  return v27;
}

uint64_t sub_266E8C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_266E8C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_266E8C3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_266E8C474()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E7B80C;

  return sub_266E8B2A0();
}

uint64_t sub_266E8C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_266E8C5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B80C;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_266E8C6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for IdentifyUserHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E7B674;

  return MEMORY[0x2821B9C38](a1, a2, v9, a4);
}

uint64_t sub_266E8C76C()
{
  v1 = sub_266E807B0();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_266E8C7CC()
{
  result = qword_2800E97F0;
  if (!qword_2800E97F0)
  {
    type metadata accessor for IdentifyUserHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97F0);
  }

  return result;
}

double OUTLINED_FUNCTION_2_10()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_7()
{
}

uint64_t sub_266E8C870(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BaseDialogProvider();
  v4 = swift_allocObject();
  sub_266E846B4(a2, v7);
  v5 = sub_266E8DF2C(v4, a1, v7);
  sub_266E8E054(a2);
  return v5;
}

uint64_t sub_266E8C8E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9800, &qword_266EA0C38);
  v2[4] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v2[5] = v4;
  v2[6] = swift_task_alloc();
  v5 = sub_266E9CFA4();
  v2[7] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v2[8] = v6;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8CA00, 0, 0);
}

uint64_t sub_266E8CA00()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v8, v3);
  (*(v6 + 16))(v4, v7, v5);
  v9 = sub_266E9CF84();
  v10 = sub_266E9D194();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    v16 = sub_266E9C6C4();
    v17 = [v16 switchType];

    (*(v13 + 8))(v12, v14);
    *(v15 + 4) = v17;
    _os_log_impl(&dword_266E51000, v9, v10, "SwitchProfileHandleIntentStrategy.makeIntentHandledResponse() called for %ld", v15, 0xCu);
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
    (*(v13 + 8))(v0[6], v0[4]);
  }

  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[7];
  v21 = v0[2];

  (*(v19 + 8))(v18, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_266E9F380;
  *(v22 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  v23 = sub_266E9C834();
  v24 = MEMORY[0x277D5C1D8];
  v21[3] = v23;
  v21[4] = v24;
  __swift_allocate_boxed_opaque_existential_1Tm(v21);
  sub_266E9C824();

  OUTLINED_FUNCTION_8_0();

  return v25();
}

uint64_t sub_266E8CC74(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9800, &qword_266EA0C38);
  v3[8] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v3[9] = v5;
  v3[10] = swift_task_alloc();
  v6 = sub_266E9CFA4();
  v3[11] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v3[12] = v7;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E8CDA8, 0, 0);
}

uint64_t sub_266E8CDA8()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  v46 = __swift_project_value_buffer(v0[11], qword_2800EC7E0);
  v47 = *(v2 + 16);
  v47(v1);
  (*(v3 + 16))(v4, v6, v5);
  v7 = sub_266E9CF84();
  v8 = sub_266E9D194();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    v14 = sub_266E9C6C4();
    v15 = [v14 switchType];

    (*(v10 + 8))(v11, v12);
    *(v13 + 4) = v15;
    _os_log_impl(&dword_266E51000, v7, v8, "SwitchProfileHandleIntentStrategy.makeFailureHandlingIntentResponse() called for %ld", v13, 0xCu);
    OUTLINED_FUNCTION_4_0();
  }

  else
  {
    (*(v10 + 8))(v0[10], v0[8]);
  }

  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[12];

  v19 = *(v18 + 8);
  v19(v16, v17);
  v20 = sub_266E9C6B4();
  v21 = OBJC_IVAR___SwitchProfileIntentResponse_code;
  swift_beginAccess();
  v22 = *&v20[v21];

  if (v22 == 101)
  {
    v23 = sub_266E9C6C4();
    sub_266E8DD6C(v23, &selRef_homeUserId);
    if (v24 || (v25 = sub_266E9C6C4(), sub_266E8DD6C(v25, &selRef_iCloudAltDSID), v26))
    {
    }

    else
    {
      v36 = sub_266E9C6C4();
      v37 = [v36 account];

      if (v37)
      {
        v38 = [v37 displayString];

        sub_266E9D024();
        v27 = v39;

        goto LABEL_11;
      }

      (v47)(v0[14], v46, v0[11]);
      v40 = sub_266E9CF84();
      v41 = sub_266E9D1A4();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[14];
      v44 = v0[11];
      if (v42)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_266E51000, v40, v41, "Missing name in resolved Account.", v45, 2u);
        OUTLINED_FUNCTION_4_0();
      }

      v19(v43, v44);
    }

    v27 = 0;
LABEL_11:
    v0[16] = v27;
    v28 = swift_task_alloc();
    v0[17] = v28;
    *v28 = v0;
    v28[1] = sub_266E8D290;

    return sub_266E6649C();
  }

  (v47)(v0[13], v46, v0[11]);
  v30 = sub_266E9CF84();
  v31 = sub_266E9D1A4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_266E51000, v30, v31, "Hit an error case.", v32, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v33 = v0[13];
  v34 = v0[11];

  v19(v33, v34);
  v35 = swift_task_alloc();
  v0[19] = v35;
  *v35 = v0;
  v35[1] = sub_266E8D3F8;

  return sub_266E65988();
}

uint64_t sub_266E8D290()
{
  v5 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v2 = v5;
  *(v5 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_266E8D564, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_8_0();

    return v3();
  }
}

uint64_t sub_266E8D3F8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_266E8D564()
{

  OUTLINED_FUNCTION_8_0();

  return v0();
}

uint64_t sub_266E8D5F4()
{
  sub_266E5D044(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_266E8D658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_266E8D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_266E8D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_266E8D8A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266E8E0BC;

  return sub_266E8C8E8(a1, a2);
}

uint64_t sub_266E8D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_266E8DA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_266E8E0BC;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_266E8DACC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266E8DB78;

  return sub_266E8CC74(a1, a2);
}

uint64_t sub_266E8DB78()
{
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E8DC60(uint64_t a1)
{
  sub_266E601C4(a1);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_266E8DCC4()
{
  result = qword_2800E97F8;
  if (!qword_2800E97F8)
  {
    type metadata accessor for SwitchProfileHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E97F8);
  }

  return result;
}

void *sub_266E8DD18(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_266E8DD3C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_266E8DD6C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_266E9D024();

  return v4;
}

uint64_t sub_266E8DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = type metadata accessor for BaseDialogProvider();
  v17[4] = &off_287876528;
  v17[0] = a1;
  *(a4 + 104) = 0;
  sub_266E5CE50(v17, v15);
  sub_266E846B4(a3, v14);
  sub_266E5CE50(v15, __src);
  sub_266E846B4(v14, &v11);
  if (v12)
  {
    sub_266E8E054(v14);
    __swift_destroy_boxed_opaque_existential_0(v15);
    sub_266E5D10C(&v11, v13);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E8E054(v14);
    __swift_destroy_boxed_opaque_existential_0(v15);
    if (v12)
    {
      sub_266E8E054(&v11);
    }
  }

  sub_266E5D10C(v13, &__src[5]);
  sub_266E5CE50(&__src[5], v13);
  type metadata accessor for LocUtil();
  v8 = swift_allocObject();
  sub_266E5D10C(v13, v8 + 16);
  __src[10] = v8;
  sub_266E8E054(a3);
  __swift_destroy_boxed_opaque_existential_0(v17);
  memcpy((a4 + 16), __src, 0x58uLL);
  v9 = *(a4 + 104);
  *(a4 + 104) = a2;

  return a4;
}

uint64_t sub_266E8DF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = type metadata accessor for BaseDialogProvider();
  v16 = &off_287876528;
  v14[0] = a1;
  type metadata accessor for SwitchProfileHandleIntentStrategy();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_266E8DDD8(*v9, a2, a3, v6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_266E8E054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93F0, &qword_266E9F028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E8E0D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a5;
  v36 = a4;
  v39 = a3;
  v35 = a1;
  v8 = sub_266E9CFA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_2800EC7C8);
  (*(v9 + 16))(v11, v12, v8);
  v13 = a2;
  v14 = sub_266E9CF84();
  v15 = sub_266E9D1B4();

  v16 = os_log_type_enabled(v14, v15);
  v38 = a2;
  if (v16)
  {
    v34[1] = a6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v43[0] = v18;
    *v17 = 136315138;
    if (a2 && (v19 = sub_266E9CE84(), v20))
    {
      v21 = v20;
    }

    else
    {

      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    v22 = sub_266E6E7D4(v19, v21, v43);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_266E51000, v14, v15, "IdentityFlowProducers.switchProfileFlowProducers() remoteDevice: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D5F66A0](v18, -1, -1);
    MEMORY[0x26D5F66A0](v17, -1, -1);

    (*(v9 + 8))(v11, v8);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  type metadata accessor for SwitchProfileIntent();
  type metadata accessor for SwitchProfileIntentResponse();
  sub_266E9C114();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  sub_266E9CDF4();
  swift_allocObject();

  sub_266E9CDE4();
  sub_266E9C0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9810, &unk_266EA0CB0);
  sub_266E9C0E4();
  type metadata accessor for SwitchProfileHandleIntentStrategy();
  v23 = v39;
  sub_266E846B4(v39, v43);
  v24 = v13;
  v25 = v38;
  v43[0] = sub_266E8C870(v38, v43);
  sub_266E8FCFC(&qword_2800E9838, type metadata accessor for SwitchProfileHandleIntentStrategy, &unk_266EA0BC8);
  sub_266E9C094();

  sub_266E9C0D4();
  sub_266E5CE50(v35, v43);
  sub_266E846B4(v23, v42);
  sub_266E5CE50(v36, v41);
  sub_266E5CE50(v37, v40);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v43, v43[3]);
  MEMORY[0x28223BE20](v26);
  v28 = (v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v31 = v24;
  v32 = sub_266E8F7EC(v30, v25, v42, v41, v40);
  __swift_destroy_boxed_opaque_existential_0(v43);
  v43[0] = v32;
  type metadata accessor for SwitchProfileDisambiguationStrategy();
  sub_266E8FCFC(&qword_2800E9840, type metadata accessor for SwitchProfileDisambiguationStrategy, &unk_266E9F4B8);
  sub_266E9C0B4();

  sub_266E9C104();
  type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy();
  sub_266E846B4(v23, v43);
  v43[0] = sub_266E94300(v43);
  sub_266E8FCFC(&qword_2800E9848, type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy, &unk_266EA0F88);
  sub_266E9C0C4();

  sub_266E9C0F4();
}

uint64_t sub_266E8E70C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266E9CFA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_2800EC7C8);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_266E9CF84();
  v10 = sub_266E9D1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266E51000, v9, v10, "IdentityFlowProducers.identifyUserProducers()", v11, 2u);
    MEMORY[0x26D5F66A0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (a1)
  {
    v12 = a1;
  }

  else
  {
    sub_266E9CCF4();
    v12 = sub_266E79A78();
  }

  type metadata accessor for UserIdentifyIntent();
  type metadata accessor for UserIdentifyIntentResponse();

  sub_266E9C114();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  sub_266E9CDF4();
  swift_allocObject();

  sub_266E9CDE4();
  sub_266E9C0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  sub_266E9C0E4();
  sub_266E846B4(a2, v16);
  type metadata accessor for BaseDialogProvider();
  v13 = swift_allocObject();
  v16[0] = sub_266E8FBD8(v13, v16, type metadata accessor for IdentifyUserHandleIntentStrategy);
  type metadata accessor for IdentifyUserHandleIntentStrategy();
  sub_266E8FCFC(&qword_2800E9880, type metadata accessor for IdentifyUserHandleIntentStrategy, &unk_266EA0A60);
  sub_266E9C094();

  sub_266E9C0D4();
  type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy();
  sub_266E846B4(a2, v16);

  v16[0] = sub_266E82770(v16, v12);
  sub_266E8FCFC(&qword_2800E9888, type metadata accessor for IdentifyUserUnsupportedValueFlowStrategy, &unk_266EA04E8);
  sub_266E9C0C4();

  sub_266E9C0F4();
}

uint64_t sub_266E8EB34(uint64_t a1, uint64_t a2)
{
  v3 = sub_266E9CFA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D78 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2800EC7C8);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_266E9CF84();
  v9 = sub_266E9D1B4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_266E51000, v8, v9, "IdentityFlowProducers.establishUserProducers()", v10, 2u);
    MEMORY[0x26D5F66A0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for UserIdentifyIntent();
  type metadata accessor for UserIdentifyIntentResponse();
  sub_266E9C114();
  if (qword_2800E8D50 != -1)
  {
    swift_once();
  }

  sub_266E9CDF4();
  swift_allocObject();

  sub_266E9CDE4();
  sub_266E9C0A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  sub_266E9C0E4();
  sub_266E846B4(a2, v14);
  type metadata accessor for BaseDialogProvider();
  v11 = swift_allocObject();
  v14[0] = sub_266E8FBD8(v11, v14, type metadata accessor for EstablishUserHandleIntentStrategy);
  type metadata accessor for EstablishUserHandleIntentStrategy();
  sub_266E8FCFC(&qword_2800E98A0, type metadata accessor for EstablishUserHandleIntentStrategy, &unk_266E9F980);
  sub_266E9C094();

  sub_266E9C0D4();
}

uint64_t sub_266E8EE84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30[1] = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9808, &qword_266EA0CA8);
  OUTLINED_FUNCTION_2_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9810, &unk_266EA0CB0);
  OUTLINED_FUNCTION_2_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_11();
  v19 = type metadata accessor for BaseDialogProvider();
  v20 = swift_allocObject();
  v34[3] = v19;
  v34[4] = &off_287876528;
  v34[0] = v20;
  sub_266E9C294();
  v21 = sub_266E9CED4();
  v22 = sub_266E9CEC4();
  v32[3] = v21;
  v32[4] = MEMORY[0x277D61F10];
  v32[0] = v22;
  sub_266E8E0D0(v34, a4, v35, v33, v32, v4);
  __swift_destroy_boxed_opaque_existential_0(v33);
  sub_266E8E054(v35);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v34);
  v23 = *(v14 + 16);
  v31 = v12;
  v23(v18, v4, v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9818, &qword_266EA0CC0);
  OUTLINED_FUNCTION_3(v24);
  sub_266E9C124();
  v35[0] = a1;
  type metadata accessor for SwitchProfileFlowStrategy(0);
  sub_266E8FCFC(&qword_2800E9820, type metadata accessor for SwitchProfileFlowStrategy, &unk_266E9EC20);

  OUTLINED_FUNCTION_7_8();
  sub_266E9C484();
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2(&qword_2800E8D50);
  }

  v25 = sub_266E9CDF4();
  OUTLINED_FUNCTION_3(v25);

  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_3_10();
  sub_266E9CDE4();
  v26 = sub_266E9C474();

  (*(v10 + 8))(v5, v8);
  v35[0] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9828, &qword_266EA0CC8);
  v27 = sub_266E8F9EC(&qword_2800E9830, &qword_2800E9828, &qword_266EA0CC8);
  v28 = OUTLINED_FUNCTION_10_4(v27);

  (*(v14 + 8))(v4, v31);
  return v28;
}

uint64_t sub_266E8F214()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9850, &qword_266EA0CD0);
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  OUTLINED_FUNCTION_2_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_11();
  sub_266E8E70C(0, v20);
  sub_266E8E054(v20);
  type metadata accessor for IdentifyUserFlowStrategy();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_4_8();
  v11(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9860, &qword_266EA0CE0);
  OUTLINED_FUNCTION_3(v12);
  sub_266E9C124();
  v20[0] = v2;
  sub_266E8FCFC(&qword_2800E9868, type metadata accessor for IdentifyUserFlowStrategy, &unk_266EA0380);

  OUTLINED_FUNCTION_7_8();
  sub_266E9C484();
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2(&qword_2800E8D50);
  }

  v13 = sub_266E9CDF4();
  v14 = OUTLINED_FUNCTION_3(v13);

  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_3_10();
  v15 = sub_266E9CDE4();
  v16 = OUTLINED_FUNCTION_11_2(v15);

  (*(v4 + 8))(v1, v14);
  v20[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9870, &qword_266EA0CE8);
  v17 = sub_266E8F9EC(&qword_2800E9878, &qword_2800E9870, &qword_266EA0CE8);
  v18 = OUTLINED_FUNCTION_10_4(v17);

  (*(v7 + 8))(v0);
  return v18;
}

uint64_t sub_266E8F500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9890, &qword_266EA0CF0);
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9858, &qword_266EA0CD8);
  OUTLINED_FUNCTION_2_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_11();
  sub_266E8EB34(0, v20);
  sub_266E8E054(v20);
  type metadata accessor for EstablishUserFlowStrategy();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_4_8();
  v11(v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9860, &qword_266EA0CE0);
  OUTLINED_FUNCTION_3(v12);
  sub_266E9C124();
  v20[0] = v2;
  sub_266E8FCFC(&qword_2800E9898, type metadata accessor for EstablishUserFlowStrategy, &unk_266E9E770);

  OUTLINED_FUNCTION_7_8();
  sub_266E9C484();
  if (qword_2800E8D50 != -1)
  {
    OUTLINED_FUNCTION_16_2(&qword_2800E8D50);
  }

  v13 = sub_266E9CDF4();
  v14 = OUTLINED_FUNCTION_3(v13);

  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_3_10();
  v15 = sub_266E9CDE4();
  v16 = OUTLINED_FUNCTION_11_2(v15);

  (*(v4 + 8))(v1, v14);
  v20[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9870, &qword_266EA0CE8);
  v17 = sub_266E8F9EC(&qword_2800E9878, &qword_2800E9870, &qword_266EA0CE8);
  v18 = OUTLINED_FUNCTION_10_4(v17);

  (*(v7 + 8))(v0);
  return v18;
}

uint64_t sub_266E8F7EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for BaseDialogProvider();
  v22[3] = v10;
  v22[4] = &off_287876528;
  v22[0] = a1;
  type metadata accessor for SwitchProfileDisambiguationStrategy();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v21[3] = v10;
  v21[4] = &off_287876528;
  v21[0] = v16;
  *(v11 + 104) = 0;
  sub_266E5CE50(v21, v20);
  sub_266E846B4(a3, &v18);
  sub_266E654D0(v20, &v18, v11 + 16);
  *(v11 + 104) = a2;
  sub_266E5CE50(a4, v11 + 112);
  sub_266E5CE50(a5, v11 + 152);
  sub_266E846B4(a3, &v18);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(a5);
    __swift_destroy_boxed_opaque_existential_0(a4);
    sub_266E8E054(a3);
    __swift_destroy_boxed_opaque_existential_0(v21);
    sub_266E5D10C(&v18, v20);
  }

  else
  {
    sub_266E9C7F4();
    __swift_destroy_boxed_opaque_existential_0(a5);
    __swift_destroy_boxed_opaque_existential_0(a4);
    sub_266E8E054(a3);
    __swift_destroy_boxed_opaque_existential_0(v21);
    if (v19)
    {
      sub_266E8E054(&v18);
    }
  }

  sub_266E5D10C(v20, v11 + 192);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v11;
}

uint64_t sub_266E8F9EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_266E8FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[3] = type metadata accessor for BaseDialogProvider();
  v16[4] = &off_287876528;
  v16[0] = a1;
  sub_266E5CE50(v16, &v13);
  sub_266E846B4(a2, v12);
  sub_266E5CE50(&v13, __src);
  sub_266E846B4(v12, &v9);
  if (v10)
  {
    sub_266E8E054(v12);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    sub_266E5D10C(&v9, v11);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E8E054(v12);
    __swift_destroy_boxed_opaque_existential_0(&v13);
    if (v10)
    {
      sub_266E8E054(&v9);
    }
  }

  sub_266E5D10C(v11, &__src[40]);
  sub_266E5CE50(&__src[40], v11);
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  sub_266E5D10C(v11, v6 + 16);
  *&__src[80] = v6;
  memcpy((a3 + 16), __src, 0x58uLL);
  sub_266E846B4(a2, &v13);
  if (v14)
  {
    sub_266E5D10C(&v13, __src);
  }

  else
  {
    sub_266E9C7F4();
    if (v14)
    {
      sub_266E8E054(&v13);
    }
  }

  sub_266E5D10C(__src, a3 + 104);
  sub_266E9CCF4();
  v7 = sub_266E79A78();
  sub_266E8E054(a2);
  __swift_destroy_boxed_opaque_existential_0(v16);
  *(a3 + 144) = v7;
  return a3;
}

uint64_t sub_266E8FBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v15 = type metadata accessor for BaseDialogProvider();
  v16 = &off_287876528;
  v14[0] = a1;
  a3(0);
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_266E8FA40(*v9, a2, v6);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_266E8FCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double OUTLINED_FUNCTION_2_11()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8()
{
  result = v0;
  *(v2 - 136) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1)
{

  return sub_266E9C134();
}

uint64_t OUTLINED_FUNCTION_11_2(uint64_t a1)
{

  return sub_266E9C474();
}

uint64_t sub_266E8FE20@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_266E9CFA4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[24] = 3;
  sub_266E88934(a2, &v36);
  if (v37)
  {
    sub_266E595F8(&v36, &v38);
  }

  else
  {
    v39 = &type metadata for IdentityFeatureFlagsProvider;
    v40 = &protocol witness table for IdentityFeatureFlagsProvider;
  }

  sub_266E595F8(&v38, &v41);
  v13 = *&v42[16];
  v12 = *&v42[8];
  __swift_project_boxed_opaque_existential_0(&v41, *&v42[8]);
  v14 = (*(v13 + 8))(v12, v13);
  v15 = sub_266E90498(a3);
  v16 = v15;
  if (v14 & 1) != 0 && (v15)
  {
    OUTLINED_FUNCTION_1_16();
    v17 = OUTLINED_FUNCTION_0_16();
    if (v18(v17) == 2)
    {
      OUTLINED_FUNCTION_1_16();
      v19 = OUTLINED_FUNCTION_0_16();
      v20(v19);
      if (v21)
      {

        __swift_destroy_boxed_opaque_existential_0(a3);
        sub_266E90554(a2);
        v42[24] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_1_16();
        v28 = OUTLINED_FUNCTION_0_16();
        v30 = v29(v28);
        __swift_destroy_boxed_opaque_existential_0(a3);
        sub_266E90554(a2);
        if (v30)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        v42[24] = v31;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(a3);
      sub_266E90554(a2);
    }
  }

  else
  {
    v35 = a2;
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v8, qword_2800EC7E0);
    (*(v9 + 16))(v11, v22, v8);
    v23 = sub_266E9CF84();
    v24 = sub_266E9D194();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v34 = a3;
      v26 = v25;
      *v25 = 67109376;
      *(v25 + 4) = v14 & 1;
      *(v25 + 8) = 1024;
      *(v25 + 10) = v16 & 1;
      _os_log_impl(&dword_266E51000, v23, v24, "Switch Profile feature not supported. feature enabled=%{BOOL}d isAllowedDevice=%{BOOL}d", v25, 0xEu);
      v27 = v26;
      a3 = v34;
      MEMORY[0x26D5F66A0](v27, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(a3);
    sub_266E90554(v35);
    (*(v9 + 8))(v11, v8);
  }

  v32 = *v42;
  *a4 = v41;
  a4[1] = v32;
  *(a4 + 25) = *&v42[9];
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UseCase.hashValue.getter(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E90218(uint64_t a1)
{
  v2 = *v1;
  sub_266E9D484();
  UseCase.hash(into:)(v4, v2);
  return sub_266E9D4A4();
}

unint64_t sub_266E90290()
{
  result = qword_2800E98A8;
  if (!qword_2800E98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E98A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UseCase(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E903B0);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266E903FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_266E9043C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E90498(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if (sub_266E9C2C4())
  {
    return 1;
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  if ((sub_266E9C2D4() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v4);
  return (*(v5 + 16))(v4, v5) & 1;
}

uint64_t sub_266E90554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E97B0, &qword_266EA0628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E905F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_266E9D174();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_266EA0E50;
  v9[5] = v8;
  sub_266E918C4(0, 0, v6, &unk_266EA0E60, v9);
}

id sub_266E90700()
{
  sub_266E9CCF4();
  v1 = static SiriEnvironment.getUserIdentity()();
  if (v1)
  {
    v2 = v1;
    *&v0[OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_currentRequest] = sub_266E79C40();
    *&v0[OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_currentDevice] = sub_266E79A78();
    *&v0[OBJC_IVAR____TtC20SiriIdentityInternal26EstablishUserIntentHandler_userIdentity] = v2;
    v4.receiver = v0;
    v4.super_class = type metadata accessor for EstablishUserIntentHandler();
    return objc_msgSendSuper2(&v4, sel_init);
  }

  else
  {
    result = sub_266E9D374();
    __break(1u);
  }

  return result;
}

uint64_t EstablishUserIntentHandler.resolveIdentity(for:)()
{
  OUTLINED_FUNCTION_7_0();
  v1[2] = v2;
  v1[3] = v0;
  sub_266E9CE64();
  v1[4] = OUTLINED_FUNCTION_18();
  v3 = sub_266E9C434();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = sub_266E9C464();
  v1[9] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_18();
  v7 = sub_266E9CFA4();
  v1[12] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[13] = v8;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E90990()
{
  v61 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    _os_log_impl(&dword_266E51000, v6, v7, "EstablishUserIntentHandler.resolveIdentity", v8, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[2];

  v13 = *(v10 + 8);
  v13(v9, v11);
  v14 = [v12 identity];
  if (v14)
  {
    v15 = v14;
    v56 = v0[15];
    v58 = v13;
    v16 = v0[11];
    v17 = v0[8];
    v51 = v0[10];
    v52 = v0[9];
    v54 = v4;
    v55 = v5;
    v19 = v0[6];
    v18 = v0[7];
    v21 = v0[4];
    v20 = v0[5];
    v53 = v0[12];
    sub_266E9C674();
    sub_266E9C444();
    sub_266E9C424();
    sub_266E9C3E4();
    v22 = *(v19 + 8);
    v22(v18, v20);
    v22(v17, v20);
    v23 = *(v51 + 8);
    v23(v16, v52);
    v24 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v24, sel_setFullConfidence_);

    sub_266E9C694();
    v25 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v25, sel_setSetupInProgress_);

    sub_266E9CE34();
    sub_266E9CE54();
    sub_266E803B4(v21);
    v26 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v26, sel_setIsMultiUserContext_);

    sub_266E9C674();
    sub_266E86FE4();
    v23(v16, v52);
    v27 = sub_266E9D124();
    OUTLINED_FUNCTION_17_4(v27, sel_setIsIdentifiedOrUnsure_);

    v55(v56, v54, v53);
    v28 = sub_266E9CF84();
    v29 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v29))
    {
      v30 = OUTLINED_FUNCTION_5_0();
      *v30 = 0;
      _os_log_impl(&dword_266E51000, v28, v23, "EstablishUserIntentHandler.resolveIdentity returning success", v30, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v31 = v0[15];
    v32 = v0[12];

    v58(v31, v32);
    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static IdentityResolutionResult.success(with:)(v15);
  }

  else
  {
    v33 = v0[2];
    v5(v0[14], v4, v0[12]);
    v34 = v33;
    v35 = sub_266E9CF84();
    v36 = sub_266E9D194();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[14];
    v39 = v0[12];
    if (v37)
    {
      v40 = v0[2];
      v57 = v0[14];
      v41 = swift_slowAlloc();
      v59 = v13;
      v60 = swift_slowAlloc();
      v42 = v60;
      *v41 = 136315138;
      v43 = [v40 description];
      v44 = sub_266E9D024();
      v46 = v45;

      v47 = sub_266E6E7D4(v44, v46, &v60);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_266E51000, v35, v36, "EstablishUserIntentHandler.resolveIdentity returning failure since Intent does not have Identity %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v59(v57, v39);
    }

    else
    {

      v13(v38, v39);
    }

    type metadata accessor for UserIdentifyIdentityResolutionResult();
    static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(1);
  }

  v48 = OUTLINED_FUNCTION_5_4();

  return v49(v48);
}

uint64_t sub_266E90F00(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266E90FC4;

  return EstablishUserIntentHandler.resolveIdentity(for:)();
}

uint64_t sub_266E90FC4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_8_0();

  return v9();
}

uint64_t EstablishUserIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E911B4()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D90 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[2], qword_2800EC810);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v5, v6, "EstablishUserIntentHandler.confirm");
    OUTLINED_FUNCTION_4_0();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v8 + 8))(v7, v9);
  v10 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(1, 0);

  v11 = OUTLINED_FUNCTION_5_4();

  return v12(v11);
}

uint64_t sub_266E9130C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E920DC;

  return EstablishUserIntentHandler.confirm(intent:)();
}

uint64_t EstablishUserIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFA4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_1(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_18();
  v3 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266E91464()
{
  OUTLINED_FUNCTION_9_1();
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0[2], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v5, v6, "EstablishUserIntentHandler.handle");
    OUTLINED_FUNCTION_4_0();
  }

  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  (*(v8 + 8))(v7, v9);
  v10 = objc_allocWithZone(type metadata accessor for UserIdentifyIntentResponse());
  UserIdentifyIntentResponse.init(code:userActivity:)(4, 0);

  v11 = OUTLINED_FUNCTION_5_4();

  return v12(v11);
}

uint64_t sub_266E915AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266E920DC;

  return EstablishUserIntentHandler.handle(intent:)();
}

id EstablishUserIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EstablishUserIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_266E916F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_266E765F8;

  return v6();
}

uint64_t sub_266E917DC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_266E5C6A4;

  return v7();
}

uint64_t sub_266E918C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_266E761D4(a3, v22 - v10);
  v12 = sub_266E9D174();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_266E91DE4(v11);
  }

  else
  {
    sub_266E9D164();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_266E9D134();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_266E9D054() + 32;
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

      sub_266E91DE4(a3);

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

  sub_266E91DE4(a3);
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

uint64_t sub_266E91B88()
{
  OUTLINED_FUNCTION_9_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return v4(v3);
}

uint64_t sub_266E91C20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_7_9(v4);
  *v5 = v6;
  v5[1] = sub_266E765F8;

  return sub_266E916F4(v1, v2, v3);
}

uint64_t objectdestroy_5Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266E91D1C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_7_9(v6);
  *v7 = v8;
  v7[1] = sub_266E765F8;

  return sub_266E917DC(a1, v3, v4, v5);
}

uint64_t sub_266E91DE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9478, &qword_266EA0E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E91E4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E91E84()
{
  OUTLINED_FUNCTION_9_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_1(v1);

  return v4(v3);
}

uint64_t sub_266E91F1C()
{
  OUTLINED_FUNCTION_9_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_24_1(v1);

  return v4(v3);
}

uint64_t sub_266E91FB4()
{
  OUTLINED_FUNCTION_9_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return v4(v3);
}

uint64_t sub_266E92048()
{
  OUTLINED_FUNCTION_9_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_7_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return v4(v3);
}

id OUTLINED_FUNCTION_17_4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_266E92114@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v50 = v4;
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  v48 = sub_266E9C8F4();
  OUTLINED_FUNCTION_2_1();
  v55 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v54 = v11 - v10;
  v49 = sub_266E9C5B4();
  OUTLINED_FUNCTION_2_1();
  v53 = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v47 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = sub_266E927A0(a1);
  v19 = sub_266E929B8(v18);
  v59[0] = v18;
  sub_266E93934(v19, sub_266E55C44, MEMORY[0x277D5BAF8]);
  sub_266E92BB8(v59[0]);

  v20 = MEMORY[0x277D84F90];
  v59[0] = MEMORY[0x277D84F90];
  v21 = sub_266E8B274(a1);
  v22 = 0;
  v23 = a1;
  v56 = a1 & 0xFFFFFFFFFFFFFF8;
  v57 = a1 & 0xC000000000000001;
  v58 = v17;
  while (v21 != v22)
  {
    if (v57)
    {
      v24 = MEMORY[0x26D5F5ED0](v22, v23);
    }

    else
    {
      if (v22 >= *(v56 + 16))
      {
        goto LABEL_17;
      }

      v24 = *(v23 + 8 * v22 + 32);
    }

    v25 = v24;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_266E9CC24();
    swift_allocObject();
    sub_266E9CC14();
    sub_266E9CBA4();
    swift_allocObject();
    sub_266E9CB94();
    v26 = [v25 displayString];
    sub_266E9D024();

    sub_266E9CB84();

    sub_266E9CC04();

    sub_266E9CC54();
    swift_allocObject();
    sub_266E9CC44();
    sub_266E9CBF4();

    MEMORY[0x26D5F5CD0]();
    if (*((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266E9D0E4();
    }

    sub_266E9D104();
    v20 = v59[0];
    ++v22;
    v17 = v58;
  }

  v27 = v54;
  sub_266E89B24(v20, v54);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98C8, &qword_266EA0EA0);
  v28 = v55;
  v29 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_266E9ED60;
  v23 = v48;
  (*(v28 + 16))(v30 + v29, v27, v48);
  sub_266E9C534();
  if (qword_2800E8D80 == -1)
  {
    goto LABEL_12;
  }

LABEL_18:
  OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
LABEL_12:
  v31 = v51;
  v32 = __swift_project_value_buffer(v51, qword_2800EC7E0);
  v33 = v50;
  (*(v50 + 16))(v7, v32, v31);
  v34 = sub_266E9CF84();
  v35 = sub_266E9D194();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v49;
  v38 = v53;
  if (v36)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57 = v7;
    v41 = v40;
    v59[0] = v40;
    *v39 = 136315138;
    swift_beginAccess();
    (*(v38 + 16))(v47, v17, v37);
    v42 = sub_266E9D034();
    v44 = sub_266E6E7D4(v42, v43, v59);
    v38 = v53;

    *(v39 + 4) = v44;
    v17 = v58;
    _os_log_impl(&dword_266E51000, v34, v35, "NLContextUpdate for disambiguation: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    (*(v33 + 8))(v57, v31);
  }

  else
  {

    (*(v33 + 8))(v7, v31);
  }

  (*(v55 + 8))(v54, v23);
  v45 = v52;
  swift_beginAccess();
  (*(v38 + 16))(v45, v17, v37);
  return (*(v38 + 8))(v17, v37);
}

uint64_t sub_266E9274C()
{
  sub_266E9C5A4();
  OUTLINED_FUNCTION_4_9();
  sub_266E9C574();
  sub_266E9C584();
  sub_266E9C594();
  return sub_266E9C554();
}

void *sub_266E927A0(unint64_t a1)
{
  v19 = sub_266E9C304();
  v2 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_266E9D354())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v6;
    }

    v21 = MEMORY[0x277D84F90];
    result = sub_266E8ACC4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v6 = v21;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = v2 + 32;
    v18 = a1 & 0xC000000000000001;
    v9 = a1;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v18)
      {
        v11 = MEMORY[0x26D5F5ED0](v8, a1);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_16;
        }

        v11 = *(a1 + 8 * v8 + 32);
      }

      v12 = v11;
      v20 = v11;
      sub_266E92E1C(&v20, v4);

      v21 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_266E8ACC4((v13 > 1), v14 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v14 + 1;
      (*(v2 + 32))(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v4, v19);
      ++v8;
      a1 = v9;
      if (v10 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E929B8(uint64_t a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D0, &qword_266EA0EA8);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v2);
  v24 = (&v23 - v3);
  v4 = 0;
  v26 = a1;
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v5 == v4)
    {
      return v6;
    }

    v7 = sub_266E9C304();
    OUTLINED_FUNCTION_4_3();
    v9 = *(v8 + 16);
    v10 = v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4;
    v11 = v24;
    v12 = *(v25 + 48);
    *v24 = v4;
    v9(v11 + v12, v10, v7);
    v13 = v5;
    v14 = sub_266E930F4(v4, v11 + v12, v5);
    result = sub_266E651FC(v11, &qword_2800E98D0, &qword_266EA0EA8);
    v16 = *(v14 + 16);
    v17 = *(v6 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v18 > *(v6 + 24) >> 1)
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      result = sub_266E55C44(result, v19, 1, v6);
      v6 = result;
    }

    if (*(v14 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v16)
      {
        goto LABEL_20;
      }

      swift_arrayInitWithCopy();

      if (v16)
      {
        v20 = *(v6 + 16);
        v21 = __OFADD__(v20, v16);
        v22 = v20 + v16;
        if (v21)
        {
          goto LABEL_21;
        }

        *(v6 + 16) = v22;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_19;
      }
    }

    ++v4;
    v5 = v13;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_266E92BB8(uint64_t a1)
{
  v2 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v9 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_266E9C304();
    v15 = MEMORY[0x26D5F5D00](a1, v14);
    v17 = sub_266E6E7D4(v15, v16, &v19);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266E51000, v10, v11, "displayHints for makeDisambiguationUpdate: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  sub_266E9C5A4();
  OUTLINED_FUNCTION_4_9();
  sub_266E9C574();
  sub_266E9C554();
  sub_266E9C544();
  sub_266E9C564();
  sub_266E9C594();
  sub_266E9C584();

  return sub_266E9C524();
}

uint64_t sub_266E92E1C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D8, &qword_266EA0EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_266E9C364();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v22 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = *a1;
  sub_266E9C354();
  sub_266E9C354();
  sub_266E6ED54(v16);
  if (v17)
  {

    sub_266E9C324();
    sub_266E6ED54(v16);
    sub_266E9C334();
    sub_266E9C344();
    sub_266E9C324();
    v18 = [v16 displayString];
    sub_266E9D024();

    sub_266E9C334();
    sub_266E9C344();
  }

  v19 = *(v7 + 16);
  v19(v5, v15, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v19(v10, v13, v6);
  sub_266E9C2E4();
  v20 = *(v7 + 8);
  v20(v13, v6);
  return (v20)(v15, v6);
}

uint64_t sub_266E930F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v38 = sub_266E9C304();
  v6 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v36 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v37 = &v36 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D8, &qword_266EA0EB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  v19 = sub_266E9C364();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266E9C2F4();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_266E651FC(v18, &qword_2800E98D8, &qword_266EA0EB0);
    result = sub_266E9D374();
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v39 = a3;
    if (a1 > 24)
    {
      a2 = MEMORY[0x277D84F90];
      v15 = v38;
      goto LABEL_7;
    }

    if (a1 < 0)
    {
      goto LABEL_29;
    }

    v24 = &unk_287875480 + 16 * a1;
    v25 = *(v24 + 4);
    v26 = *(v24 + 5);

    sub_266E93708(v22, v25, v26);

    a2 = sub_266E55C44(0, 1, 1, MEMORY[0x277D84F90]);
    a3 = *(a2 + 16);
    v23 = *(a2 + 24);
    v18 = (a3 + 1);
    if (a3 >= v23 >> 1)
    {
      goto LABEL_30;
    }

    while (1)
    {
      *(a2 + 16) = v18;
      v27 = v15;
      v15 = v38;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * a3, v27, v38);
      a3 = v39;
LABEL_7:
      v23 = a3 - 3;
      if (!__OFSUB__(a3, 3))
      {
        break;
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      a2 = sub_266E55C44(v23 > 1, v18, 1, a2);
    }

    if (v23 == a1)
    {
      sub_266E93708(v22, 0x4C6F546472696874, 0xEB00000000747361);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_266E55C44(0, *(a2 + 16) + 1, 1, a2);
      }

      v29 = *(a2 + 16);
      v28 = *(a2 + 24);
      if (v29 >= v28 >> 1)
      {
        a2 = sub_266E55C44(v28 > 1, v29 + 1, 1, a2);
      }

      *(a2 + 16) = v29 + 1;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v13, v15);
      a3 = v39;
    }

    if (a3 - 2 == a1)
    {
      sub_266E93708(v22, 0x6F54646E6F636573, 0xEC0000007473614CLL);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_266E55C44(0, *(a2 + 16) + 1, 1, a2);
      }

      v31 = *(a2 + 16);
      v30 = *(a2 + 24);
      if (v31 >= v30 >> 1)
      {
        a2 = sub_266E55C44(v30 > 1, v31 + 1, 1, a2);
      }

      *(a2 + 16) = v31 + 1;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v37, v15);
      a3 = v39;
    }

    if (a3 - 1 == a1)
    {
      v32 = v36;
      sub_266E93708(v22, 1953718636, 0xE400000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_266E55C44(0, *(a2 + 16) + 1, 1, a2);
      }

      v34 = *(a2 + 16);
      v33 = *(a2 + 24);
      if (v34 >= v33 >> 1)
      {
        a2 = sub_266E55C44(v33 > 1, v34 + 1, 1, a2);
      }

      (*(v20 + 8))(v22, v19);
      *(a2 + 16) = v34 + 1;
      (*(v6 + 32))(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v34, v32, v15);
    }

    else
    {
      (*(v20 + 8))(v22, v19);
    }

    return a2;
  }

  return result;
}

uint64_t sub_266E93708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98D8, &qword_266EA0EB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_266E9C364();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_266E9C354();
  sub_266E9C324();

  sub_266E9C334();
  sub_266E9C344();
  v14 = *(v8 + 16);
  v14(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v14(v11, v13, v7);
  sub_266E9C2E4();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_266E93934(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266E93A48(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266E93A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_266E93AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266E67C88();

  v5 = sub_266E93BA4(a1, a2, 0xD000000000000024, 0x8000000266EA3050);
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  sub_266E9C214();
  sub_266E9C1E4();
  sub_266E9C204();

  v7 = sub_266E9C1F4();

  return v7;
}

id sub_266E93BA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v35 = a1;
  v7 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v36 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98E8, qword_266EA0EB8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = sub_266E9BE24();
  OUTLINED_FUNCTION_2_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  sub_266E9BE14();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {

    sub_266E93FC0(v14);
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    v22 = v36;
    (*(v36 + 16))(v11, v21, v7);

    v23 = sub_266E9CF84();
    v24 = sub_266E9D1A4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315138;
      v27 = sub_266E6E7D4(v34, a4, &v37);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_266E51000, v23, v24, "URL construction failed for %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D5F66A0](v26, -1, -1);
      MEMORY[0x26D5F66A0](v25, -1, -1);
    }

    else
    {
    }

    (*(v22 + 8))(v11, v7);
    return 0;
  }

  else
  {

    (*(v17 + 32))(v20, v14, v15);
    v28 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_266E94028(v35, a2, v28);
    v29 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    v30 = sub_266E9BE04();
    [v29 setPunchOutUri_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F0, &qword_266EA0950);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_266E9F380;
    *(v31 + 32) = v29;
    v32 = v29;
    sub_266E763AC(v31, v28);

    (*(v17 + 8))(v20, v15);
  }

  return v28;
}

uint64_t sub_266E93FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98E8, qword_266EA0EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_266E94028(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();

  [a3 setText_];
}

uint64_t sub_266E9408C()
{
  sub_266E54D04(v0);
  if (v1)
  {

    result = sub_266E54D04(v0);
    if (!v3)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = v3;

    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      return 0;
    }
  }

  sub_266E54D10(v0);
  if (!v7)
  {
    return 1;
  }

  result = sub_266E54D10(v0);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = result;
  v10 = v8;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v11 == 0;
}

id sub_266E94154(void *a1)
{
  v1 = a1;
  DeviceUnit.description.getter();

  v2 = sub_266E9D014();

  return v2;
}

uint64_t DeviceUnit.description.getter()
{
  sub_266E9D294();
  MEMORY[0x26D5F5CB0](0xD000000000000013, 0x8000000266EA3080);
  v0 = sub_266E9CE84();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v0 = 0x3E6C696E3CLL;
    v2 = 0xE500000000000000;
  }

  MEMORY[0x26D5F5CB0](v0, v2);

  MEMORY[0x26D5F5CB0](0x747369737361202CLL, 0xEF203A6449746E61);
  v3 = sub_266E9CE74();
  MEMORY[0x26D5F5CB0](v3);

  MEMORY[0x26D5F5CB0](0x6D69786F7270202CLL, 0xED0000203A797469);
  sub_266E9CEA4();
  v4 = sub_266E9CF24();
  MEMORY[0x26D5F5CB0](v4);

  MEMORY[0x26D5F5CB0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_266E94300(uint64_t a1)
{
  type metadata accessor for BaseDialogProvider();
  v2 = swift_allocObject();
  sub_266E846B4(a1, v5);
  v3 = sub_266E94F6C(v2, v5);
  sub_266E8E054(a1);
  return v3;
}

uint64_t sub_266E94388()
{
  OUTLINED_FUNCTION_7_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  v1 = sub_266E9C704();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_266E943FC()
{
  OUTLINED_FUNCTION_7_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266E9CFA4();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E944BC, 0, 0);
}

uint64_t sub_266E944BC()
{
  if (qword_2800E8D80 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = __swift_project_value_buffer(v3, qword_2800EC7E0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E51000, v5, v6, "SwitchProfileUnsupportedValueFlowStrategy.makeUnsupportedValueOutput() called", v7, 2u);
    MEMORY[0x26D5F66A0](v7, -1, -1);
  }

  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];

  (*(v9 + 8))(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E94E0, &qword_266EA0FD0);
  v11 = sub_266E9C714();
  v12 = [v11 unsupportedReason];

  v13 = SwitchProfileAccountUnsupportedReason.init(rawValue:)(v12);
  if (v14)
  {
    goto LABEL_6;
  }

  switch(v13)
  {
    case 5:
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[9] = v22;
      *v22 = v23;
      OUTLINED_FUNCTION_1_17(v22);

      return sub_266E668A8();
    case 4:
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[10] = v20;
      *v20 = v21;
      OUTLINED_FUNCTION_1_17(v20);

      return sub_266E669DC();
    case 3:
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[8] = v18;
      *v18 = v19;
      OUTLINED_FUNCTION_1_17(v18);

      return sub_266E65CA8();
    default:
LABEL_6:
      swift_task_alloc();
      OUTLINED_FUNCTION_20();
      v0[11] = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_1_17(v15);

      return sub_266E65988();
  }
}

uint64_t sub_266E947E4()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_2_12();

  return v3();
}

uint64_t sub_266E948E0()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_2_12();

  return v3();
}

uint64_t sub_266E949DC()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_2_12();

  return v3();
}

uint64_t sub_266E94AD8()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_5_9();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_3_11();

  OUTLINED_FUNCTION_2_12();

  return v3();
}

uint64_t sub_266E94BD4()
{
  sub_266E5D044(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_266E94C30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E608B8;

  return sub_266E943FC();
}

uint64_t sub_266E94CDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E5FB68;

  return sub_266E94368(a1);
}

uint64_t sub_266E94D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = sub_266E60E24;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_266E94E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[3] = type metadata accessor for BaseDialogProvider();
  v14[4] = &off_287876528;
  v14[0] = a1;
  sub_266E5CE50(v14, v12);
  sub_266E846B4(a2, v11);
  sub_266E5CE50(v12, __src);
  sub_266E846B4(v11, &v8);
  if (v9)
  {
    sub_266E8E054(v11);
    __swift_destroy_boxed_opaque_existential_0(v12);
    sub_266E5D10C(&v8, v10);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E8E054(v11);
    __swift_destroy_boxed_opaque_existential_0(v12);
    if (v9)
    {
      sub_266E8E054(&v8);
    }
  }

  sub_266E5D10C(v10, &__src[5]);
  sub_266E5CE50(&__src[5], v10);
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  sub_266E5D10C(v10, v6 + 16);
  __src[10] = v6;
  sub_266E8E054(a2);
  __swift_destroy_boxed_opaque_existential_0(v14);
  memcpy((a3 + 16), __src, 0x58uLL);
  return a3;
}

uint64_t sub_266E94F6C(uint64_t a1, uint64_t a2)
{
  v13 = type metadata accessor for BaseDialogProvider();
  v14 = &off_287876528;
  v12[0] = a1;
  type metadata accessor for SwitchProfileUnsupportedValueFlowStrategy();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x28223BE20](v5);
  v7 = (&v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_266E94E34(*v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v9;
}

uint64_t SwitchType.description.getter()
{
  v0 = sub_266E9D3D4();
  MEMORY[0x26D5F5CB0](v0);

  return 0x3D65707974;
}

uint64_t sub_266E95144()
{
  v0 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v7 = __swift_project_value_buffer(v0, qword_2800EC7E0);
  (*(v2 + 16))(v6, v7, v0);
  v8 = sub_266E9CF84();
  v9 = sub_266E9D194();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_266E51000, v8, v9, "GuardedFlow on | returning true", v10, 2u);
    MEMORY[0x26D5F66A0](v10, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  return 1;
}

uint64_t sub_266E952B0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = sub_266E9C514();
  OUTLINED_FUNCTION_2_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v17 = v16 - v15;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v18 = __swift_project_value_buffer(v11, qword_2800EC7E0);
  (*(v13 + 16))(v17, v18, v11);
  v19 = sub_266E9CF84();
  v20 = sub_266E9D194();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a1;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_266E51000, v19, v20, "GuardedFlow executing | executing flow with guards", v22, 2u);
    v23 = v22;
    a1 = v21;
    MEMORY[0x26D5F66A0](v23, -1, -1);
  }

  (*(v13 + 8))(v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E98F8, &qword_266EA10C0);
  sub_266E9C084();
  *(swift_allocObject() + 16) = xmmword_266E9ED60;
  sub_266E9C074();
  sub_266E9BEB4();

  sub_266E9C054();
  sub_266E9C064();
  sub_266E9C174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9900, &qword_266EA10C8);
  sub_266E958A0();
  sub_266E9C4E4();

  a1(v10);

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_266E95634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266E956E4;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266E956E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_266E957E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266E59244;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

unint64_t sub_266E958A0()
{
  result = qword_2800E9908;
  if (!qword_2800E9908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E9900, &qword_266EA10C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9908);
  }

  return result;
}

double sub_266E95904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266E97FDC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_266E54110(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_266E95968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_266E97FDC(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for UserAccount(0);
    sub_266E981D4(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = 1;
    v14 = v10;
  }

  else
  {
    type metadata accessor for UserAccount(0);
    v11 = OUTLINED_FUNCTION_20_5();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_266E95A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_266E97FDC(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266E95A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_5_10(sub_266E95A7C);
}

uint64_t sub_266E95A7C()
{
  OUTLINED_FUNCTION_7_0();
  v1 = sub_266E9CFE4();
  v0[6] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[7] = v2;
  *v2 = v3;
  v2[1] = sub_266E95B40;
  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];

  return sub_266E81A40(v5, v6, v4, v1);
}

uint64_t sub_266E95B40()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v2 = v1;

  OUTLINED_FUNCTION_8_0();

  return v3();
}

uint64_t sub_266E95C3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_266E9D3A4();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266E95C90@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  sub_266E9C7D4();
  OUTLINED_FUNCTION_2_1();
  v57 = v2;
  v58 = v1;
  MEMORY[0x28223BE20](v1);
  v56 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_266E9C7E4();
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_3();
  v51 = v7;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v8);
  v60 = &v50 - v9;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = sub_266E9CFA4();
  OUTLINED_FUNCTION_2_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_3();
  v59 = v17;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v18);
  v53 = &v50 - v19;
  OUTLINED_FUNCTION_25_1();
  MEMORY[0x28223BE20](v20);
  v22 = &v50 - v21;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v23 = __swift_project_value_buffer(v13, qword_2800EC7E0);
  v24 = *(v15 + 16);
  v54 = v23;
  v55 = v24;
  (v24)(v22);
  v25 = sub_266E9CF84();
  v26 = sub_266E9D194();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_5_0();
    *v27 = 0;
    _os_log_impl(&dword_266E51000, v25, v26, "DeviceConfirmationStrategy.actionForInput() called", v27, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v28 = *(v15 + 8);
  v28(v22, v13);
  sub_266E9C794();
  v29 = sub_266E7B898(v12, &v63);
  v30 = *(v5 + 8);
  v31 = v12;
  v32 = v61;
  v30(v31, v61, v29);
  if (!v64)
  {
    v50 = v30;
    sub_266E54DA8(&v63, &unk_2800E9590, &unk_266E9EC80);
    v36 = v60;
    sub_266E9C794();
    if ((*(v5 + 88))(v36, v32) == *MEMORY[0x277D5C150])
    {
      v37 = v51;
      (*(v5 + 16))(v51, v36, v32);
      (*(v5 + 96))(v37, v32);
      (*(v57 + 32))(v56, v37, v58);
      if (sub_266E9C7B4() == *(v52 + 152) && v38 == *(v52 + 160))
      {
      }

      else
      {
        v40 = sub_266E9D3E4();

        if ((v40 & 1) == 0)
        {
          (*(v57 + 8))(v56, v58);
          goto LABEL_15;
        }
      }

      v55(v53, v54, v13);
      v46 = sub_266E9CF84();
      v47 = sub_266E9D194();
      if (os_log_type_enabled(v46, v47))
      {
        *OUTLINED_FUNCTION_5_0() = 0;
        OUTLINED_FUNCTION_26_2(&dword_266E51000, v48, v49, "DeviceConfirmationStrategy.actionForInput() called for directInvocation");
        v36 = v60;
        OUTLINED_FUNCTION_4_0();
      }

      v28(v53, v13);
      sub_266E9C384();
      (*(v57 + 8))(v56, v58);
      return v50(v36, v32);
    }

LABEL_15:
    v55(v59, v54, v13);
    v41 = sub_266E9CF84();
    v42 = sub_266E9D194();
    if (os_log_type_enabled(v41, v42))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_26_2(&dword_266E51000, v43, v44, "DeviceConfirmationStrategy.actionForInput() called for default");
      v36 = v60;
      OUTLINED_FUNCTION_4_0();
    }

    v28(v59, v13);
    sub_266E9C394();
    return v50(v36, v32);
  }

  sub_266E595F8(&v63, v65);
  __swift_project_boxed_opaque_existential_0(v65, v65[3]);
  v33 = OUTLINED_FUNCTION_16();
  v35 = v34(v33);
  if (v35 >= 2)
  {
    if (v35 == 2)
    {
      sub_266E9C374();
    }

    else
    {
      sub_266E9C394();
    }
  }

  else
  {
    sub_266E9C384();
  }

  return __swift_destroy_boxed_opaque_existential_0(v65);
}

uint64_t sub_266E96274()
{
  OUTLINED_FUNCTION_7_0();
  v1[19] = v2;
  v1[20] = v0;
  v1[18] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E95B8, &qword_266E9F7C0);
  OUTLINED_FUNCTION_19(v4);
  v1[21] = OUTLINED_FUNCTION_18();
  v5 = sub_266E9C7D4();
  v1[22] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[23] = v6;
  v1[24] = OUTLINED_FUNCTION_18();
  v7 = sub_266E9C7E4();
  v1[25] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[26] = v8;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v9 = sub_266E9C614();
  v1[30] = v9;
  OUTLINED_FUNCTION_5_1(v9);
  v1[31] = v10;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v11 = sub_266E9CFA4();
  v1[34] = v11;
  OUTLINED_FUNCTION_5_1(v11);
  v1[35] = v12;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266E96480()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v74 = __swift_project_value_buffer(*(v0 + 272), qword_2800EC7E0);
  v75 = *(v2 + 16);
  v75(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    *v5 = 0;
    _os_log_impl(&dword_266E51000, v3, v4, "DeviceConfirmationStrategy.parseConfirmationResponse() called", v5, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v6 = *(v0 + 304);
  v7 = *(v0 + 272);
  v8 = *(v0 + 280);
  v9 = *(v0 + 232);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);

  v12 = *(v8 + 8);
  v12(v6, v7);
  sub_266E9C794();
  v13 = sub_266E7B898(v9, (v0 + 56));
  v14 = *(v10 + 8);
  v14(v9, v11, v13);
  if (*(v0 + 80))
  {
    v15 = *(v0 + 296);
    v16 = *(v0 + 272);
    sub_266E595F8((v0 + 56), v0 + 16);
    (v75)(v15, v74, v16);
    v17 = sub_266E9CF84();
    v18 = sub_266E9D194();
    if (OUTLINED_FUNCTION_31_0(v18))
    {
      v19 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_50(v19);
      OUTLINED_FUNCTION_16_1(&dword_266E51000, v20, v21, "DeviceConfirmationStrategy.actionForInput() called for NLv3IntentOnly");
      OUTLINED_FUNCTION_10();
    }

    v22 = OUTLINED_FUNCTION_16();
    (v12)(v22);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v23 = OUTLINED_FUNCTION_16();
    switch(v24(v23))
    {
      case 1u:
      case 2u:
        v47 = sub_266E9D3E4();

        if ((v47 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      case 3u:
LABEL_22:
        v48 = MEMORY[0x277D5BED0];
        break;
      default:

LABEL_21:
        v48 = MEMORY[0x277D5BED8];
        break;
    }

    v49 = *(v0 + 256);
    v50 = *(v0 + 264);
    v51 = *(v0 + 240);
    v52 = *(v0 + 248);
    (*(v52 + 104))(v49, *v48, v51);
    (*(v52 + 32))(v50, v49, v51);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_24:
    v53 = *(v0 + 264);
    v55 = *(v0 + 240);
    v54 = *(v0 + 248);
    v56 = *(v0 + 168);
    (*(v54 + 16))(v56, v53, v55);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v55);
    sub_266E9C784();
    (*(v54 + 8))(v53, v55);

    OUTLINED_FUNCTION_8_0();
    goto LABEL_37;
  }

  v73 = v14;
  v25 = *(v0 + 224);
  v26 = *(v0 + 200);
  v27 = *(v0 + 208);
  sub_266E54DA8(v0 + 56, &unk_2800E9590, &unk_266E9EC80);
  sub_266E9C794();
  if ((*(v27 + 88))(v25, v26) != *MEMORY[0x277D5C150])
  {
    goto LABEL_17;
  }

  v28 = *(v0 + 216);
  v29 = *(v0 + 200);
  v30 = *(v0 + 208);
  v32 = *(v0 + 184);
  v31 = *(v0 + 192);
  v33 = *(v0 + 176);
  v34 = *(v0 + 160);
  (*(v30 + 16))(v28, *(v0 + 224), v29);
  (*(v30 + 96))(v28, v29);
  (*(v32 + 32))(v31, v28, v33);
  if (sub_266E9C7B4() == *(v34 + 152) && v35 == *(v34 + 160))
  {
  }

  else
  {
    v37 = sub_266E9D3E4();

    if ((v37 & 1) == 0)
    {
      (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
LABEL_17:
      (v75)(*(v0 + 288), v74, *(v0 + 272));
      v38 = sub_266E9CF84();
      v39 = sub_266E9D1A4();
      if (OUTLINED_FUNCTION_31_0(v39))
      {
        v40 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_50(v40);
        OUTLINED_FUNCTION_16_1(&dword_266E51000, v41, v42, "Unsupported parse type");
        OUTLINED_FUNCTION_10();
      }

      v43 = OUTLINED_FUNCTION_16();
      (v12)(v43);
      type metadata accessor for IdentityFlowError();
      swift_allocObject();
      v44 = sub_266E89698(3);
      v45 = sub_266E8465C();
      OUTLINED_FUNCTION_50_0(v45);
      *v46 = v44;
      swift_willThrow();
      goto LABEL_36;
    }
  }

  v58 = sub_266E9C7C4();
  if (v58)
  {
    sub_266E95904(0xD000000000000011, 0x8000000266EA31C0, v58, (v0 + 96));

    if (*(v0 + 120))
    {
      if (swift_dynamicCast())
      {
        v59 = sub_266E95C3C(*(v0 + 128), *(v0 + 136));
        if (v59 != 2)
        {
          v60 = v59;
          v61 = *(v0 + 264);
          v62 = *(v0 + 240);
          v63 = *(v0 + 248);
          v64 = *(v0 + 224);
          v65 = *(v0 + 200);
          (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
          v66 = MEMORY[0x277D5BED0];
          if ((v60 & 1) == 0)
          {
            v66 = MEMORY[0x277D5BED8];
          }

          (*(v63 + 104))(v61, *v66, v62);
          v73(v64, v65);
          goto LABEL_24;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
  }

  sub_266E54DA8(v0 + 96, &qword_2800E9278, &qword_266E9F5F0);
LABEL_35:
  v68 = *(v0 + 184);
  v67 = *(v0 + 192);
  v69 = *(v0 + 176);
  type metadata accessor for IdentityFlowError();
  swift_allocObject();
  v70 = sub_266E89698(3);
  sub_266E8465C();
  swift_allocError();
  *v71 = v70;
  swift_willThrow();
  (*(v68 + 8))(v67, v69);
LABEL_36:
  v73(*(v0 + 224), *(v0 + 200));

  OUTLINED_FUNCTION_8_0();
LABEL_37:

  return v57();
}

uint64_t sub_266E96C58()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  OUTLINED_FUNCTION_19(v4);
  v1[10] = OUTLINED_FUNCTION_18();
  v5 = sub_266E9C5D4();
  v1[11] = v5;
  OUTLINED_FUNCTION_5_1(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_18();
  v7 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E96D2C(uint64_t a1)
{
  sub_266E9CEA4();
  v2 = sub_266E9CF34();
  if (v2 == sub_266E9CF34() || (sub_266E9CEA4(), v3 = sub_266E9CF34(), v4 = 0, v5 = 0, v3 == sub_266E9CF34()))
  {
    v4 = sub_266E9CE84();
    v5 = v6;
  }

  v1[14] = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v1[15] = v7;
  *v7 = v8;
  v7[1] = sub_266E96E30;
  v9 = v1[13];

  return sub_266E66CB8(v9, v4, v5);
}

uint64_t sub_266E96E30()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    v7 = sub_266E970D0;
  }

  else
  {
    v7 = sub_266E96F48;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266E96F48()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  sub_266E9C2B4();
  sub_266E9C5C4();
  sub_266E9274C();
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v8);
  sub_266E9C834();
  OUTLINED_FUNCTION_17_5();
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v10;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  sub_266E9C4B4();
  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v3, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_8_0();

  return v11();
}

uint64_t sub_266E970D0()
{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_8_0();

  return v0();
}

uint64_t sub_266E97138()
{
  OUTLINED_FUNCTION_7_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  OUTLINED_FUNCTION_19(v3);
  v1[9] = OUTLINED_FUNCTION_18();
  v4 = sub_266E9C5D4();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_18();
  v6 = sub_266E9CFA4();
  v1[13] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266E97254()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0[13], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v5);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v6, v7, "DeviceConfirmationStrategy.makeConfirmationRejectedResponse() called");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[8];

  v9 = OUTLINED_FUNCTION_16();
  v10(v9);
  __swift_project_boxed_opaque_existential_0((v8 + 56), *(v8 + 80));
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_20();
  v0[16] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_8_5(v11);

  return v14(v13);
}

uint64_t sub_266E973A8()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_266E974A4;
  }

  else
  {
    v7 = sub_266E97518;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266E974A4()
{
  OUTLINED_FUNCTION_7_0();

  OUTLINED_FUNCTION_8_0();

  return v0();
}

uint64_t sub_266E97518()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = *(v5 + 40);
  __swift_project_boxed_opaque_existential_0((v5 + 16), v7);
  sub_266E9C2B4();
  sub_266E9C5B4();
  v8 = OUTLINED_FUNCTION_20_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_266E9C834();
  OUTLINED_FUNCTION_17_5();
  v12 = MEMORY[0x277D5C1D8];
  v6[3] = v13;
  v6[4] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  sub_266E9C494();
  sub_266E54DA8(v7, &qword_2800E94D0, &unk_266E9F5C0);
  sub_266E54DA8(v3, &qword_2800E94C0, &unk_266E9EFC0);
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_8_0();

  return v14();
}

uint64_t sub_266E97688()
{
  OUTLINED_FUNCTION_7_0();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  OUTLINED_FUNCTION_19(v3);
  v1[9] = OUTLINED_FUNCTION_18();
  v4 = sub_266E9C5D4();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_18();
  v6 = sub_266E9CFA4();
  v1[13] = v6;
  OUTLINED_FUNCTION_5_1(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266E977A4()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2800E8D80);
  }

  __swift_project_value_buffer(v0[13], qword_2800EC7E0);
  v1 = OUTLINED_FUNCTION_4_1();
  v2(v1);
  v3 = sub_266E9CF84();
  v4 = sub_266E9D194();
  if (OUTLINED_FUNCTION_31_0(v4))
  {
    v5 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_50(v5);
    OUTLINED_FUNCTION_16_1(&dword_266E51000, v6, v7, "DeviceConfirmationStrategy.makeFlowCancelledResponse() called");
    OUTLINED_FUNCTION_10();
  }

  v8 = v0[8];

  v9 = OUTLINED_FUNCTION_16();
  v10(v9);
  __swift_project_boxed_opaque_existential_0((v8 + 56), *(v8 + 80));
  OUTLINED_FUNCTION_9_4();
  OUTLINED_FUNCTION_20();
  v0[16] = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_8_5(v11);

  return v14(v13);
}

uint64_t sub_266E978F8()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  if (v0)
  {
    v7 = sub_266E98244;
  }

  else
  {
    v7 = sub_266E98238;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266E97A08()
{
  type metadata accessor for IdentityFlowError();
  swift_allocObject();
  v0 = sub_266E89698(3);
  v1 = sub_266E8465C();
  OUTLINED_FUNCTION_50_0(v1);
  *v2 = v0;
  swift_willThrow();
  OUTLINED_FUNCTION_8_0();

  return v3();
}

void *sub_266E97AA8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_266E5D044(v0 + 56);

  return v0;
}

uint64_t sub_266E97AE0()
{
  sub_266E97AA8();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_266E97B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E96274();
}

uint64_t sub_266E97BF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E96C58();
}

uint64_t sub_266E97C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_266E765F8;

  return MEMORY[0x2821BA040](a1, a2, v9, a4);
}

uint64_t sub_266E97D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DeviceConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_266E765F8;

  return MEMORY[0x2821BA048](a1, a2, v9, a4);
}

uint64_t sub_266E97E20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E5C6A4;

  return sub_266E97138();
}

uint64_t sub_266E97EB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E97688();
}

uint64_t sub_266E97F50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266E765F8;

  return sub_266E979F4();
}

unint64_t sub_266E97FDC(uint64_t a1, uint64_t a2)
{
  sub_266E9D484();
  sub_266E9D074();
  v4 = sub_266E9D4A4();

  return sub_266E980C0(a1, a2, v4);
}

unint64_t sub_266E98058(uint64_t a1)
{
  v1 = a1;
  sub_266E9D484();
  MEMORY[0x26D5F60C0](v1);
  v2 = sub_266E9D4A4();
  return sub_266E98174(v1, v2);
}

unint64_t sub_266E980C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266E9D3E4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266E98174(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_266E981D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double OUTLINED_FUNCTION_17_5()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  return result;
}

void OUTLINED_FUNCTION_26_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_266E982E4()
{
  v0 = sub_266E9CFA4();
  __swift_allocate_value_buffer(v0, qword_2800EC7F8);
  __swift_project_value_buffer(v0, qword_2800EC7F8);
  return sub_266E9CF94();
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

uint64_t sub_266E983F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_266E9CFA4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_266E9CF94();
}

id UserIdentifyIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t UserIdentifyIdentityUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  return result;
}

id UserIdentifyIntent.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserIdentifyIntent();
  return objc_msgSendSuper2(&v3, sel_init);
}

id UserIdentifyIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UserIdentifyIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for UserIdentifyIntent();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id UserIdentifyIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_266E9D014();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id UserIdentifyIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_266E9D014();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for UserIdentifyIntent();
  v12 = OUTLINED_FUNCTION_0_18(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id UserIdentifyIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, a2);

  v5 = sub_266E9D014();

  if (v3)
  {
    v6 = sub_266E9CFB4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v2) initWithDomain:v4 verb:v5 parametersByName:v6];

  return v7;
}

id UserIdentifyIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_1_18(a1, a2);

  v5 = sub_266E9D014();

  if (v3)
  {
    v6 = sub_266E9CFB4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for UserIdentifyIntent();
  v7 = objc_msgSendSuper2(&v9, sel_initWithDomain_verb_parametersByName_, v4, v5, v6);

  return v7;
}

unint64_t UserIdentifyIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266E98A20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = UserIdentifyIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t UserIdentifyIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___UserIdentifyIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266E98AE4(uint64_t a1)
{
  v3 = OBJC_IVAR___UserIdentifyIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *UserIdentifyIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___UserIdentifyIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id UserIdentifyIntentResponse.init()(uint64_t a1)
{
  *&v1[OBJC_IVAR___UserIdentifyIntentResponse_code] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserIdentifyIntentResponse();
  return objc_msgSendSuper2(&v3, sel_init);
}

id UserIdentifyIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___UserIdentifyIntentResponse_code) = 0;
  v13 = type metadata accessor for UserIdentifyIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id UserIdentifyIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id UserIdentifyIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___UserIdentifyIntentResponse_code) = 0;
  v13 = type metadata accessor for UserIdentifyIntentResponse();
  v9 = OUTLINED_FUNCTION_0_18(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id UserIdentifyIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id UserIdentifyIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___UserIdentifyIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_266E9CFB4();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for UserIdentifyIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266E98FD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = UserIdentifyIdentityUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static UserIdentifyIdentityResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id UserIdentifyIdentityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_266E9CFB4();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id UserIdentifyIdentityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_266E9CFB4();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for UserIdentifyIdentityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_266E99274(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}