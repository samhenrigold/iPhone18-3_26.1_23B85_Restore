uint64_t sub_26761D814()
{
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "Performing SendMailIntent", v4, 2u);
    MEMORY[0x26D5FEA80](v4, -1, -1);
  }

  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v9 = v0[5];
  v8 = v0[6];

  (*(v7 + 16))(v5, v9, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v0[11] = v11;
  *(v11 + 16) = v8;
  (*(v7 + 32))(v11 + v10, v5, v6);

  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[12] = v12;
  *v12 = v13;
  v12[1] = sub_26761D9FC;

  return sub_26761DDA4();
}

uint64_t sub_26761D9FC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26761DAFC()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_26761DB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26761DB8C, 0, 0);
}

uint64_t sub_26761DB8C()
{
  v1 = (v0[3] + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v9 = (*(v3 + 16) + **(v3 + 16));
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[5] = v4;
  *v4 = v5;
  v4[1] = sub_26761DCC4;
  v6 = v0[4];
  v7 = v0[2];

  return v9(v7, v6, v2, v3);
}

uint64_t sub_26761DCC4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_26761DDA4()
{
  OUTLINED_FUNCTION_3_0();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_2676C966C();
  v1[8] = v5;
  v1[9] = *(v5 - 8);
  v1[10] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26761DE5C()
{
  v1 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  sub_2676C970C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v3 = (v1 + v2[12]);
  v4 = (v1 + v2[20]);
  v5 = (v1 + v2[24]);
  v19 = v2[16];
  v20 = v2[32];
  v6 = v1 + v2[36];
  v7 = (v1 + v2[40]);
  v8 = (v1 + v2[44]);
  v9 = (v1 + v2[48]);
  v21 = v2[28];
  v22 = v2[52];
  v10 = *MEMORY[0x277D5BB98];
  sub_2676C99EC();
  OUTLINED_FUNCTION_2_6();
  (*(v11 + 104))(v1, v10);
  OUTLINED_FUNCTION_1_15();
  *v3 = v12;
  v3[1] = v13;
  *(v1 + v19) = 0;
  *v4 = 0;
  v4[1] = 0;
  *v5 = 0u;
  v5[1] = 0u;
  *(v1 + v21) = 0;
  *(v1 + v20) = 0;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  v14 = *MEMORY[0x277D5B948];
  v15 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6();
  (*(v16 + 104))(v1 + v22, v14, v15);
  __swift_storeEnumTagSinglePayload(v1 + v22, 0, 1, v15);
  (*(v23 + 104))(v1, *MEMORY[0x277D5B8B8], v24);
  v0[11] = sub_2676C971C();
  v17 = swift_task_alloc();
  v0[12] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_13_9(v17);

  return sub_26761EA00();
}

uint64_t sub_26761E09C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  v4 = *(v1 + 40);
  v5 = *v0;
  *v3 = *v0;

  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v5;
  v6[1] = sub_26761E26C;

  return v8(v2 + 16);
}

uint64_t sub_26761E26C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26761E350()
{
  v7 = v0;
  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  v2 = *(v0 + 24);
  *(v0 + 25) = v2;
  v5 = v1;
  v6 = v2;
  *(v0 + 120) = sub_26761E574(&v5);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_13_9(v3);

  return sub_26761EA00();
}

uint64_t sub_26761E408()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26761E508()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 32);
  *v2 = *(v0 + 112);
  *(v2 + 8) = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_26761E574(uint64_t *a1)
{
  sub_2676C966C();
  OUTLINED_FUNCTION_3();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v72 = v9;
  v73 = v5;
  if (!v8)
  {
LABEL_5:
    v71 = sub_2676C970C();
    v33 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0) + 48)];
    OUTLINED_FUNCTION_11_12();
    v70 = v34[28];
    v35 = v34[32];
    v68 = v36;
    v69 = v35;
    v37 = &v7[v34[36]];
    v38 = &v7[v34[40]];
    v39 = &v7[v34[44]];
    v40 = &v7[v34[48]];
    v41 = v34[52];
    v42 = *MEMORY[0x277D5BBA8];
    sub_2676C99EC();
    OUTLINED_FUNCTION_2_6();
    (*(v43 + 104))(v7, v42);
    OUTLINED_FUNCTION_1_15();
    *v33 = v44;
    *(v33 + 1) = v45;
    *&v7[v68] = 0;
    *v1 = 0;
    v1[1] = 0;
    *v2 = 0u;
    v2[1] = 0u;
    v46 = v69;
    *&v7[v70] = 0;
    *&v7[v46] = 0;
    *(v37 + 4) = 0;
    *v37 = 0u;
    *(v37 + 1) = 0u;
    *v38 = 0;
    *(v38 + 1) = 0;
    *v39 = 0;
    *(v39 + 1) = 0;
    *v40 = 0;
    *(v40 + 1) = 0;
    v47 = *MEMORY[0x277D5B950];
    v29 = sub_2676C968C();
    OUTLINED_FUNCTION_2_6();
    (*(v48 + 104))(&v7[v41], v47, v29);
    v32 = &v7[v41];
    goto LABEL_6;
  }

  v10 = *a1;
  if (v8 != 1)
  {
    if (!v10)
    {
      v71 = sub_2676C970C();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
      v53 = &v7[*(v52 + 48)];
      v54 = *(v52 + 64);
      OUTLINED_FUNCTION_11_12();
      v56 = v55[28];
      v68 = v55[32];
      v69 = v56;
      v57 = &v7[v55[36]];
      v58 = &v7[v55[40]];
      v59 = &v7[v55[44]];
      v60 = &v7[v55[48]];
      v70 = v55[52];
      v61 = *MEMORY[0x277D5BBD0];
      sub_2676C99EC();
      OUTLINED_FUNCTION_2_6();
      (*(v62 + 104))(v7, v61);
      OUTLINED_FUNCTION_1_15();
      *v53 = v63;
      *(v53 + 1) = v64;
      *&v7[v54] = 0;
      *v1 = 0;
      v1[1] = 0;
      *v2 = 0u;
      v2[1] = 0u;
      v65 = v68;
      *&v7[v69] = 0;
      *&v7[v65] = 0;
      *(v57 + 4) = 0;
      *v57 = 0u;
      *(v57 + 1) = 0u;
      *v58 = 0;
      *(v58 + 1) = 0;
      *v59 = 0;
      *(v59 + 1) = 0;
      v50 = sub_2676C968C();
      *v60 = 0;
      *(v60 + 1) = 0;
      v32 = &v7[v70];
      v49 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v71 = sub_2676C970C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v12 = &v7[v11[12]];
  v13 = &v7[v11[20]];
  v14 = &v7[v11[24]];
  v15 = v11[28];
  v16 = v11[32];
  v67 = v11[16];
  v68 = v16;
  v17 = &v7[v11[36]];
  v18 = &v7[v11[40]];
  v19 = &v7[v11[44]];
  v20 = &v7[v11[48]];
  v21 = v11[52];
  v69 = v15;
  v70 = v21;
  v22 = *MEMORY[0x277D5BBA8];
  sub_2676C99EC();
  OUTLINED_FUNCTION_2_6();
  (*(v23 + 104))(v7, v22);
  OUTLINED_FUNCTION_1_15();
  *v12 = v24;
  *(v12 + 1) = v25;
  *&v7[v67] = 0;
  *v13 = 0;
  *(v13 + 1) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v26 = v68;
  *&v7[v69] = 0;
  *&v7[v26] = 0;
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *v18 = 0;
  *(v18 + 1) = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  swift_getErrorValue();
  *v20 = sub_2676CC5FC();
  v20[1] = v27;
  v28 = *MEMORY[0x277D5B8D0];
  v29 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6();
  v31 = v70;
  (*(v30 + 104))(&v7[v70], v28, v29);
  v32 = &v7[v31];
LABEL_6:
  v49 = 0;
  v50 = v29;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v32, v49, 1, v50);
  (*(v72 + 104))(v7, *MEMORY[0x277D5B8B8], v73);
  return sub_2676C971C();
}

uint64_t sub_26761EA00()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  v1[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26761EA90()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_2676CC1DC();
  v4 = sub_2676CC1FC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_26761F6DC(0, 0, v2, &unk_2676CFD10, v5);

  sub_2675EB7EC(v2, &qword_2801CC770, &unk_2676CF800);

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_26761EB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2676C966C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26761EC54, 0, 0);
}

uint64_t sub_26761EC54()
{
  v20 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);

  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_2676C96FC();
    v9 = sub_2676C965C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_2676B0B84(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2675D4000, v2, v3, "#MailSendingPlan: sending STC event %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D5FEA80](v8, -1, -1);
    MEMORY[0x26D5FEA80](v7, -1, -1);
  }

  v13 = (v0[3] + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_26761EE7C;
  v17 = v0[2];

  return MEMORY[0x2821BA730](v17, v14, v15);
}

uint64_t sub_26761EE7C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t MailSendingPlan.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__intent;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8B8, &unk_2676CFC60);
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__status;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  OUTLINED_FUNCTION_2_6();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__hasFocusedField;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_2_6();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v8(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan__confirmedFromUI, v6);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_resolverOverride, &qword_2801CC6A8, &unk_2676CF5F0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_linkServicesProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_responseFactory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_eventSender);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal15MailSendingPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);

  return v0;
}

uint64_t MailSendingPlan.__deallocating_deinit()
{
  MailSendingPlan.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MailSendingPlan(uint64_t a1)
{
  result = qword_2801CC8E8;
  if (!qword_2801CC8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26761F1C0(uint64_t a1)
{
  sub_26761F33C(319, &qword_2801CC8F8, MEMORY[0x277CBA350]);
  if (v1 <= 0x3F)
  {
    sub_26761F33C(319, &qword_2801CC900, MEMORY[0x277D5CA28]);
    if (v2 <= 0x3F)
    {
      sub_26761F390();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_26761F33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2676C985C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26761F390()
{
  if (!qword_2801CC908)
  {
    v0 = sub_2676C985C();
    if (!v1)
    {
      atomic_store(v0, &qword_2801CC908);
    }
  }
}

uint64_t sub_26761F3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_26761F624;

  return sub_26761EB94(a1, v4, v5, v7, v6);
}

uint64_t sub_26761F49C(uint64_t a1)
{
  v4 = *(sub_2676C8D8C() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_267605CFC;

  return sub_26761DB68(a1, v6, v1 + v5);
}

unint64_t sub_26761F57C()
{
  result = qword_2801CC918;
  if (!qword_2801CC918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC918);
  }

  return result;
}

unint64_t sub_26761F5D0()
{
  result = qword_2801CC920;
  if (!qword_2801CC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC920);
  }

  return result;
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x26D5FEA80);
}

_WORD *OUTLINED_FUNCTION_12_8(_WORD *result)
{
  *(v2 - 128) = v1;
  *result = 0;
  return result;
}

void OUTLINED_FUNCTION_15_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_26761F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_267621550(a3, v24 - v10);
  v12 = sub_2676CC1FC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_2675EB7EC(v11, &qword_2801CC770, &unk_2676CF800);
  }

  else
  {
    sub_2676CC1EC();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_2676CC18C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_2676CBFCC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26761F9C4(uint64_t *a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, v3 + *a3, v5);
  sub_2676C980C();
  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_26761FAAC(uint64_t a1, char a2)
{
  if (!*(a1 + 8))
  {
    goto LABEL_9;
  }

  if (*(a1 + 8) == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v2 = sub_2676CBE4C();
    __swift_project_value_buffer(v2, qword_2801CDC90);
    v3 = sub_2676CBE2C();
    v4 = sub_2676CC23C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_17_3();
      *v5 = 0;
      _os_log_impl(&dword_2675D4000, v3, v4, "#makeInform SendMailIntent failed", v5, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    type metadata accessor for GenericError();
    swift_allocObject();
    sub_267621824();
    goto LABEL_14;
  }

  if (!*a1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v12 = sub_2676CBE4C();
    __swift_project_value_buffer(v12, qword_2801CDC90);
    v13 = sub_2676CBE2C();
    v14 = sub_2676CC23C();
    if (os_log_type_enabled(v13, v14))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_44_0(&dword_2675D4000, v15, v16, "#makeInform SendMailIntent cancelled");
      OUTLINED_FUNCTION_2_5();
    }

    sub_26761F57C();
  }

  else
  {
LABEL_9:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v6 = sub_2676CBE4C();
    __swift_project_value_buffer(v6, qword_2801CDC90);
    v7 = sub_2676CBE2C();
    v8 = sub_2676CC23C();
    if (os_log_type_enabled(v7, v8))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_44_0(&dword_2675D4000, v9, v10, "#makeInform Send Mail succeeded");
      OUTLINED_FUNCTION_2_5();
    }

    sub_26761F5D0();
  }

LABEL_14:
  sub_2676C9EFC();
  swift_allocObject();
  return sub_2676C9F0C();
}

uint64_t sub_26761FD10()
{
  OUTLINED_FUNCTION_3_0();
  v1[4] = v2;
  v1[5] = sub_2676CC1CC();
  v1[6] = sub_2676CC1BC();
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_26761FDC4;

  return sub_2676200FC((v1 + 2), v0);
}

uint64_t sub_26761FDC4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v4 = sub_2676CC18C();

  return MEMORY[0x2822009F8](sub_26761FEF0, v4, v3);
}

uint64_t sub_26761FEF0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 32);

  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_26761FF5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2676CC1CC();
  *(v1 + 24) = sub_2676CC1BC();
  v3 = sub_2676CC18C();

  return MEMORY[0x2822009F8](sub_26761FFF4, v3, v2);
}

uint64_t sub_26761FFF4()
{
  OUTLINED_FUNCTION_12_1();

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);
  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_17_3();
    *v4 = 0;
    _os_log_impl(&dword_2675D4000, v2, v3, "#performSend Performed send mail", v4, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  v5 = *(v0 + 16);

  *v5 = 1;
  *(v5 + 8) = 2;
  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_2676200FC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2676C966C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676201BC, 0, 0);
}

uint64_t sub_2676201BC()
{
  v1 = v0[8];
  v23 = v0[7];
  v24 = v0[6];
  sub_2676C970C();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v3 = (v1 + v2[12]);
  v4 = (v1 + v2[20]);
  v5 = (v1 + v2[24]);
  v19 = v2[16];
  v20 = v2[32];
  v6 = v1 + v2[36];
  v7 = (v1 + v2[40]);
  v8 = (v1 + v2[44]);
  v9 = (v1 + v2[48]);
  v21 = v2[28];
  v22 = v2[52];
  v10 = *MEMORY[0x277D5BB98];
  sub_2676C99EC();
  OUTLINED_FUNCTION_2_6();
  (*(v11 + 104))(v1, v10);
  OUTLINED_FUNCTION_1_15();
  *v3 = v12;
  v3[1] = v13;
  *(v1 + v19) = 0;
  *v4 = 0;
  v4[1] = 0;
  *v5 = 0u;
  v5[1] = 0u;
  *(v1 + v21) = 0;
  *(v1 + v20) = 0;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *v7 = 0;
  v7[1] = 0;
  *v8 = 0;
  v8[1] = 0;
  *v9 = 0;
  v9[1] = 0;
  v14 = *MEMORY[0x277D5B948];
  v15 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6();
  (*(v16 + 104))(v1 + v22, v14, v15);
  __swift_storeEnumTagSinglePayload(v1 + v22, 0, 1, v15);
  (*(v23 + 104))(v1, *MEMORY[0x277D5B8B8], v24);
  v0[9] = sub_2676C971C();
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_13_10(v17);

  return sub_267620CC8();
}

uint64_t sub_2676203FC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v4 = v3;

  v5 = swift_task_alloc();
  *(v2 + 88) = v5;
  *v5 = v3;
  v5[1] = sub_267620538;

  return sub_26761FF5C(v2 + 16);
}

uint64_t sub_267620538()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26762061C()
{
  OUTLINED_FUNCTION_12_1();
  v7 = v0;
  v1 = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v0 + 24);
  *(v0 + 25) = v2;
  v5 = v1;
  v6 = v2;
  *(v0 + 104) = sub_26762083C(&v5);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_13_10(v3);

  return sub_267620CC8();
}

uint64_t sub_2676206D0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676207D0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 25);
  v2 = *(v0 + 32);
  *v2 = *(v0 + 96);
  *(v2 + 8) = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_26762083C(uint64_t *a1)
{
  sub_2676C966C();
  OUTLINED_FUNCTION_3();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v72 = v9;
  v73 = v5;
  if (!v8)
  {
LABEL_5:
    v71 = sub_2676C970C();
    v33 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0) + 48)];
    OUTLINED_FUNCTION_11_12();
    v70 = v34[28];
    v35 = v34[32];
    v68 = v36;
    v69 = v35;
    v37 = &v7[v34[36]];
    v38 = &v7[v34[40]];
    v39 = &v7[v34[44]];
    v40 = &v7[v34[48]];
    v41 = v34[52];
    v42 = *MEMORY[0x277D5BBA8];
    sub_2676C99EC();
    OUTLINED_FUNCTION_2_6();
    (*(v43 + 104))(v7, v42);
    OUTLINED_FUNCTION_1_15();
    *v33 = v44;
    *(v33 + 1) = v45;
    *&v7[v68] = 0;
    *v1 = 0;
    v1[1] = 0;
    *v2 = 0u;
    v2[1] = 0u;
    v46 = v69;
    *&v7[v70] = 0;
    *&v7[v46] = 0;
    *(v37 + 4) = 0;
    *v37 = 0u;
    *(v37 + 1) = 0u;
    *v38 = 0;
    *(v38 + 1) = 0;
    *v39 = 0;
    *(v39 + 1) = 0;
    *v40 = 0;
    *(v40 + 1) = 0;
    v47 = *MEMORY[0x277D5B950];
    v29 = sub_2676C968C();
    OUTLINED_FUNCTION_2_6();
    (*(v48 + 104))(&v7[v41], v47, v29);
    v32 = &v7[v41];
    goto LABEL_6;
  }

  v10 = *a1;
  if (v8 != 1)
  {
    if (!v10)
    {
      v71 = sub_2676C970C();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
      v53 = &v7[*(v52 + 48)];
      v54 = *(v52 + 64);
      OUTLINED_FUNCTION_11_12();
      v56 = v55[28];
      v68 = v55[32];
      v69 = v56;
      v57 = &v7[v55[36]];
      v58 = &v7[v55[40]];
      v59 = &v7[v55[44]];
      v60 = &v7[v55[48]];
      v70 = v55[52];
      v61 = *MEMORY[0x277D5BBD0];
      sub_2676C99EC();
      OUTLINED_FUNCTION_2_6();
      (*(v62 + 104))(v7, v61);
      OUTLINED_FUNCTION_1_15();
      *v53 = v63;
      *(v53 + 1) = v64;
      *&v7[v54] = 0;
      *v1 = 0;
      v1[1] = 0;
      *v2 = 0u;
      v2[1] = 0u;
      v65 = v68;
      *&v7[v69] = 0;
      *&v7[v65] = 0;
      *(v57 + 4) = 0;
      *v57 = 0u;
      *(v57 + 1) = 0u;
      *v58 = 0;
      *(v58 + 1) = 0;
      *v59 = 0;
      *(v59 + 1) = 0;
      v50 = sub_2676C968C();
      *v60 = 0;
      *(v60 + 1) = 0;
      v32 = &v7[v70];
      v49 = 1;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v71 = sub_2676C970C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC910, &qword_2676CFDD0);
  v12 = &v7[v11[12]];
  v13 = &v7[v11[20]];
  v14 = &v7[v11[24]];
  v15 = v11[28];
  v16 = v11[32];
  v67 = v11[16];
  v68 = v16;
  v17 = &v7[v11[36]];
  v18 = &v7[v11[40]];
  v19 = &v7[v11[44]];
  v20 = &v7[v11[48]];
  v21 = v11[52];
  v69 = v15;
  v70 = v21;
  v22 = *MEMORY[0x277D5BBA8];
  sub_2676C99EC();
  OUTLINED_FUNCTION_2_6();
  (*(v23 + 104))(v7, v22);
  OUTLINED_FUNCTION_1_15();
  *v12 = v24;
  *(v12 + 1) = v25;
  *&v7[v67] = 0;
  *v13 = 0;
  *(v13 + 1) = 0;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v26 = v68;
  *&v7[v69] = 0;
  *&v7[v26] = 0;
  *(v17 + 4) = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *v18 = 0;
  *(v18 + 1) = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  swift_getErrorValue();
  *v20 = sub_2676CC5FC();
  v20[1] = v27;
  v28 = *MEMORY[0x277D5B8D0];
  v29 = sub_2676C968C();
  OUTLINED_FUNCTION_2_6();
  v31 = v70;
  (*(v30 + 104))(&v7[v70], v28, v29);
  v32 = &v7[v31];
LABEL_6:
  v49 = 0;
  v50 = v29;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v32, v49, 1, v50);
  (*(v72 + 104))(v7, *MEMORY[0x277D5B8B8], v73);
  return sub_2676C971C();
}

uint64_t sub_267620CC8()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  v1[4] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267620D58()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_2676CC1DC();
  v4 = sub_2676CC1FC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_26761F6DC(0, 0, v2, &unk_2676CFDB0, v5);

  sub_2675EB7EC(v2, &qword_2801CC770, &unk_2676CF800);

  OUTLINED_FUNCTION_15_0();

  return v6();
}

uint64_t sub_267620E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_2676C966C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267620F18, 0, 0);
}

uint64_t sub_267620F18()
{
  v20 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v1 = sub_2676CBE4C();
  __swift_project_value_buffer(v1, qword_2801CDC90);

  v2 = sub_2676CBE2C();
  v3 = sub_2676CC23C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    sub_2676C96FC();
    v9 = sub_2676C965C();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_2676B0B84(v9, v11, &v19);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2675D4000, v2, v3, "#MailSendingSceneHostPlan: sending STC event %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v13 = (v0[3] + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_26761EE7C;
  v17 = v0[2];

  return MEMORY[0x2821BA730](v17, v14, v15);
}

uint64_t MailSendingSceneHostPlan.deinit()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__hasFocusedField;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
  OUTLINED_FUNCTION_2_6();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__isConfirmed, v2);
  v5 = OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan__message;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC940, &unk_2676D4A50);
  OUTLINED_FUNCTION_2_6();
  (*(v6 + 8))(v0 + v5);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_resolverOverride, &qword_2801CC6A8, &unk_2676CF5F0);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_linkServicesProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_responseFactory);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_eventSender);
  sub_2675EB7EC(v0 + OBJC_IVAR____TtC16SiriMailInternal24MailSendingSceneHostPlan_skContactManagerOverride, &qword_2801CC6B0, &qword_2676CFC80);

  return v0;
}

uint64_t MailSendingSceneHostPlan.__deallocating_deinit()
{
  MailSendingSceneHostPlan.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for MailSendingSceneHostPlan(uint64_t a1)
{
  result = qword_2801CC948;
  if (!qword_2801CC948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267621334(uint64_t a1)
{
  sub_26761F390();
  if (v1 <= 0x3F)
  {
    sub_267621440(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_267621440(uint64_t a1)
{
  if (!qword_2801CC958)
  {
    sub_2676CB18C();
    v1 = sub_2676C985C();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CC958);
    }
  }
}

uint64_t sub_267621498(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_54_0(v7);
  *v8 = v9;
  v8[1] = sub_267605CFC;

  return sub_267620E58(a1, v3, v4, v6, v5);
}

uint64_t sub_267621550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC770, &unk_2676CF800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2676215C0()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_54_0(v3);
  *v4 = v5;
  v4[1] = sub_2676216AC;

  return v7(v1);
}

uint64_t sub_2676216AC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_267621790()
{
  OUTLINED_FUNCTION_12_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_54_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

unint64_t sub_267621824()
{
  result = qword_2801CC960;
  if (!qword_2801CC960)
  {
    type metadata accessor for GenericError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CC960);
  }

  return result;
}

void sub_2676218D8(uint64_t a1)
{
  sub_267621C98(319, &qword_2801CC998, &qword_2801CC9A0, &unk_2676D22B0, MEMORY[0x277D5B9E8]);
  if (v1 <= 0x3F)
  {
    sub_267621C98(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      sub_267621C98(319, &qword_2801CC9B8, &qword_2801CC9C0, &unk_2676D22C0, MEMORY[0x277D5B9E8]);
      if (v3 <= 0x3F)
      {
        sub_267621A74(319);
        if (v4 <= 0x3F)
        {
          sub_267621C98(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
          if (v5 <= 0x3F)
          {
            sub_26761F390();
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

void sub_267621A74(uint64_t a1)
{
  if (!qword_2801CC900)
  {
    sub_2676CB0DC();
    v1 = sub_2676C985C();
    if (!v2)
    {
      atomic_store(v1, &qword_2801CC900);
    }
  }
}

void sub_267621B14(uint64_t a1)
{
  sub_267621C98(319, &qword_2801CC9F0, &qword_2801CC9F8, &unk_2676CFE90, MEMORY[0x277D5B9E8]);
  if (v1 <= 0x3F)
  {
    sub_267621C98(319, &qword_2801CC9A8, &qword_2801CC9B0, &unk_2676CFE50, MEMORY[0x277D5B9E8]);
    if (v2 <= 0x3F)
    {
      sub_267621C98(319, &qword_2801CCA00, &qword_2801CBFE0, &qword_2676D1070, MEMORY[0x277D5B9E8]);
      if (v3 <= 0x3F)
      {
        sub_267621C98(319, &qword_2801CC9C8, &qword_2801CC428, &unk_2676CEDD0, MEMORY[0x277D5BC20]);
        if (v4 <= 0x3F)
        {
          sub_26761F390();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_267621C98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_267621CFC(uint64_t a1)
{
  v348 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v334 = v5;
  OUTLINED_FUNCTION_7_3();
  sub_2676C8DDC();
  OUTLINED_FUNCTION_3();
  v341 = v7;
  v342 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_5();
  v340 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3();
  v345 = v10;
  v346 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v344 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  OUTLINED_FUNCTION_3();
  v338 = v14;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  v337 = v16;
  OUTLINED_FUNCTION_7_3();
  sub_2676CAFDC();
  OUTLINED_FUNCTION_3();
  v351 = v17;
  v352 = v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_4();
  v343 = v24;
  OUTLINED_FUNCTION_12_0();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (v325 - v27);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (v325 - v30);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_4();
  v335 = v32;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  v336 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  v339 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v37);
  v350 = v325 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA20, &qword_2676CFEB8);
  OUTLINED_FUNCTION_4_1(v39);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v40);
  v42 = v325 - v41;
  v43 = sub_2676CB0DC();
  OUTLINED_FUNCTION_3();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v50);
  v52 = v325 - v51;
  v347 = type metadata accessor for MailSceneHostStateChangeEventHandler(0);
  v53 = v347[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8C8, &unk_2676D1C40);
  v349 = v1;
  v332 = v53;
  sub_2676C97FC();
  if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
  {
    v325[0] = v45;
    v54 = v13;
    sub_2675E35CC(v42, &qword_2801CCA20, &qword_2676CFEB8);
  }

  else
  {
    (*(v45 + 32))(v52, v42, v43);
    v55 = v43;
    if (sub_2676CB0BC())
    {
      v56 = v45;
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v57 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v57, qword_2801CDC90);
      (*(v45 + 16))(v2, v52, v43);
      v58 = sub_2676CBE2C();
      v59 = sub_2676CC23C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = OUTLINED_FUNCTION_5_3();
        v61 = OUTLINED_FUNCTION_41_1();
        v353 = v61;
        *v60 = 136315138;
        v62 = sub_2676CB0CC();
        v63 = v55;
        v65 = v64;
        v66 = *(v56 + 8);
        v67 = v2;
        v68 = v63;
        v66(v67, v63);
        v69 = sub_2676B0B84(v62, v65, &v353);

        *(v60 + 4) = v69;
        _os_log_impl(&dword_2675D4000, v58, v59, "#MailStateChangeEventHandler: State is already %s, returning without applying state change.", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();

        return (v66)(v52, v68);
      }

      else
      {

        v129 = *(v45 + 8);
        v129(v2, v55);
        return (v129)(v52, v55);
      }
    }

    v54 = v13;
    v325[0] = v45;
    (*(v45 + 8))(v52, v43);
  }

  v72 = v351;
  v71 = v352;
  v73 = *(v352 + 16);
  v74 = v350;
  (v73)(v350, v348, v351);
  v75 = (*(v71 + 88))(v74, v72);
  if (v75 == *MEMORY[0x277D5C968])
  {
    OUTLINED_FUNCTION_49_0();
    v73();
    OUTLINED_FUNCTION_19_3();
    v76(v31, v72);
    v78 = *v31;
    v77 = v31[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v79 = sub_2676CBE4C();
    __swift_project_value_buffer(v79, qword_2801CDC90);
    v80 = sub_2676CBE2C();
    v81 = sub_2676CC23C();
    v82 = OUTLINED_FUNCTION_35_0(v81);
    v83 = v347;
    if (v82)
    {
      v84 = OUTLINED_FUNCTION_17_3();
      *v84 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v85, v86, v87, v88, v84, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_47_0();
    if (v89)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      if (sub_2676C982C())
      {
        sub_2676C97FC();
        v90 = v354;
        if (v354 >= 2)
        {
          v348 = v353;
          v353 = v78;
          v354 = v77;
          v91 = v340;
          sub_2676C8DCC();
          sub_2675E69E4();
          sub_2676CC33C();
          v92 = OUTLINED_FUNCTION_34_3();
          v93(v92);
          if (v91 == v83 && v90 == &v353)
          {

LABEL_84:

            v211 = OUTLINED_FUNCTION_16_3();
LABEL_93:
            sub_26762513C(v211, v212);
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_16_3();
          v95 = sub_2676CC59C();

          if (v95)
          {
            goto LABEL_84;
          }

          v218 = sub_2676CBE2C();
          v219 = sub_2676CC23C();
          v220 = OUTLINED_FUNCTION_16_3();
          sub_26762513C(v220, v221);
          v347 = v218;
          if (os_log_type_enabled(v218, v219))
          {
            v222 = OUTLINED_FUNCTION_5_3();
            v223 = OUTLINED_FUNCTION_41_1();
            LODWORD(v346) = v219;
            v224 = v223;
            v353 = v223;
            *v222 = 136315138;
            v225 = OUTLINED_FUNCTION_16_3();
            v228 = sub_2676B0B84(v225, v226, v227);
            v229 = OUTLINED_FUNCTION_16_3();
            sub_26762513C(v229, v230);
            *(v222 + 4) = v228;
            OUTLINED_FUNCTION_40(&dword_2675D4000, v231, v232, "#MailStateChangeEventHandler: original subject: %s");
            __swift_destroy_boxed_opaque_existential_1(v224);
            OUTLINED_FUNCTION_2_5();
            v74 = v350;
            OUTLINED_FUNCTION_2_5();
          }

          else
          {

            v264 = OUTLINED_FUNCTION_16_3();
            sub_26762513C(v264, v265);
          }

          v266 = sub_2676CBE2C();
          v267 = sub_2676CC23C();

          if (os_log_type_enabled(v266, v267))
          {
            v268 = OUTLINED_FUNCTION_5_3();
            v269 = OUTLINED_FUNCTION_41_1();
            v353 = v269;
            *v268 = 136315138;
            v270 = OUTLINED_FUNCTION_53_1();
            *(v268 + 4) = sub_2676B0B84(v270, v271, v272);
            _os_log_impl(&dword_2675D4000, v266, v267, "#MailStateChangeEventHandler: new subject: %s", v268, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v269);
            OUTLINED_FUNCTION_2_5();
            OUTLINED_FUNCTION_2_5();
          }

          v353 = v78;
          goto LABEL_116;
        }

        goto LABEL_60;
      }

      v353 = v78;
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if (v75 == *MEMORY[0x277D5C950])
  {
    v74 = v350;
    OUTLINED_FUNCTION_49_0();
    v73();
    OUTLINED_FUNCTION_19_3();
    v96(v28, v72);
    v97 = *v28;
    v77 = v28[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v98 = sub_2676CBE4C();
    __swift_project_value_buffer(v98, qword_2801CDC90);
    v99 = sub_2676CBE2C();
    v100 = sub_2676CC23C();
    v101 = OUTLINED_FUNCTION_35_0(v100);
    v102 = v347;
    if (v101)
    {
      v103 = OUTLINED_FUNCTION_17_3();
      *v103 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v104, v105, v106, v107, v103, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_47_0();
    if (v108)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      if (sub_2676C982C())
      {
        sub_2676C97FC();
        v109 = v354;
        if (v354 >= 2)
        {
          v348 = v353;
          v353 = v97;
          v354 = v77;
          v110 = v340;
          sub_2676C8DCC();
          sub_2675E69E4();
          sub_2676CC33C();
          v111 = OUTLINED_FUNCTION_34_3();
          v112(v111);
          if (v110 == v102 && v109 == &v353)
          {
          }

          else
          {
            OUTLINED_FUNCTION_20_5();
            v114 = sub_2676CC59C();

            if ((v114 & 1) == 0)
            {

              v249 = sub_2676CBE2C();
              v250 = sub_2676CC23C();
              v251 = OUTLINED_FUNCTION_20_5();
              sub_26762513C(v251, v252);
              v347 = v249;
              if (os_log_type_enabled(v249, v250))
              {
                v253 = OUTLINED_FUNCTION_5_3();
                v254 = OUTLINED_FUNCTION_41_1();
                LODWORD(v346) = v250;
                v255 = v254;
                v353 = v254;
                *v253 = 136315138;
                v256 = OUTLINED_FUNCTION_20_5();
                v259 = sub_2676B0B84(v256, v257, v258);
                v260 = OUTLINED_FUNCTION_20_5();
                sub_26762513C(v260, v261);
                *(v253 + 4) = v259;
                OUTLINED_FUNCTION_40(&dword_2675D4000, v262, v263, "#MailStateChangeEventHandler: original body: %s");
                __swift_destroy_boxed_opaque_existential_1(v255);
                OUTLINED_FUNCTION_2_5();
                v74 = v350;
                OUTLINED_FUNCTION_2_5();
              }

              else
              {

                v289 = OUTLINED_FUNCTION_20_5();
                sub_26762513C(v289, v290);
              }

              v291 = sub_2676CBE2C();
              v292 = sub_2676CC23C();

              if (os_log_type_enabled(v291, v292))
              {
                v293 = OUTLINED_FUNCTION_5_3();
                v294 = OUTLINED_FUNCTION_41_1();
                v353 = v294;
                *v293 = 136315138;
                *(v293 + 4) = sub_2676B0B84(v97, v77, &v353);
                OUTLINED_FUNCTION_16_6();
                _os_log_impl(v295, v296, v297, v298, v299, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v294);
                OUTLINED_FUNCTION_2_5();
                OUTLINED_FUNCTION_19_2();
              }

              v353 = v97;
LABEL_116:
              v354 = v77;
              goto LABEL_59;
            }
          }

          v211 = OUTLINED_FUNCTION_20_5();
          goto LABEL_93;
        }

LABEL_60:

        goto LABEL_61;
      }

      v353 = v97;
LABEL_58:
      v354 = v77;
LABEL_59:
      sub_2676C984C();
      goto LABEL_60;
    }

LABEL_56:

    v353 = 0;
    v354 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
    OUTLINED_FUNCTION_1_1();
    sub_2675E0214(v154, v155, MEMORY[0x277D5C780]);
    OUTLINED_FUNCTION_45();
    sub_2676C9A3C();

    v353 = 0;
    v354 = 0;
    sub_2676C9A1C();
    v156 = OUTLINED_FUNCTION_53_1();
    v157(v156);
LABEL_61:
    OUTLINED_FUNCTION_44_1();
    v128 = v74;
    goto LABEL_62;
  }

  if (v75 == *MEMORY[0x277D5C920])
  {
    v115 = v343;
    v116 = v350;
    (v73)(v343, v350, v72);
    OUTLINED_FUNCTION_19_3();
    v117(v115, v72);
    v118 = *v115;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v119 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v119, qword_2801CDC90);
    v120 = sub_2676CBE2C();
    v121 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v121))
    {
      v122 = OUTLINED_FUNCTION_17_3();
      *v122 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v123, v124, v125, v126, v122, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    v353 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC978, &unk_2676CFE00);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();

LABEL_43:
    OUTLINED_FUNCTION_44_1();
    v128 = v116;
LABEL_62:
    v158 = v351;
    return v127(v128, v158);
  }

  if (v75 == *MEMORY[0x277D5C940])
  {
    v130 = v339;
    v131 = v72;
    v132 = v350;
    (v73)(v339, v350, v131);
    OUTLINED_FUNCTION_19_3();
    v133(v130, v131);
    v134 = *v130;
    v135 = v54;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v136 = sub_2676CBE4C();
    __swift_project_value_buffer(v136, qword_2801CDC90);
    v137 = sub_2676CBE2C();
    v138 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_46_1(v138))
    {
      v139 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v139);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v140, v141, v142, v143, v144, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v353 = v134;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v145 = *(v134 + 16);

    if (v145)
    {
      goto LABEL_73;
    }

    v146 = sub_2676CBE2C();
    v147 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v147))
    {
      v148 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v148);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v149, v150, v151, v152, v153, 2u);
      OUTLINED_FUNCTION_4_6();
    }

LABEL_72:

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
    OUTLINED_FUNCTION_1_1();
    sub_2675E0214(v180, v181, MEMORY[0x277D5C780]);
    OUTLINED_FUNCTION_0_2();
    sub_2675E0214(v182, v183, MEMORY[0x277D5C6A8]);
    v184 = v337;
    OUTLINED_FUNCTION_45();
    sub_2676C9A4C();

    v353 = MEMORY[0x277D84F90];
    sub_2676C9A1C();
    (*(v338 + 8))(v184, v135);
LABEL_73:
    OUTLINED_FUNCTION_44_1();
    v128 = v132;
    goto LABEL_62;
  }

  v135 = v54;
  if (v75 == *MEMORY[0x277D5C938])
  {
    v159 = v336;
    v160 = v72;
    v132 = v350;
    (v73)(v336, v350, v160);
    OUTLINED_FUNCTION_19_3();
    v161(v159, v160);
    v162 = *v159;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v163 = sub_2676CBE4C();
    __swift_project_value_buffer(v163, qword_2801CDC90);
    v164 = sub_2676CBE2C();
    v165 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_46_1(v165))
    {
      v166 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v166);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v167, v168, v169, v170, v171, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v353 = v162;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v172 = *(v162 + 16);

    if (v172)
    {
      goto LABEL_73;
    }

    v146 = sub_2676CBE2C();
    v173 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v173))
    {
      v174 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v174);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v175, v176, v177, v178, v179, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    goto LABEL_72;
  }

  if (v75 == *MEMORY[0x277D5C948])
  {
    v185 = v335;
    (v73)(v335, v350, v72);
    OUTLINED_FUNCTION_19_3();
    v186(v185, v72);
    v187 = *v185;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v188 = sub_2676CBE4C();
    __swift_project_value_buffer(v188, qword_2801CDC90);
    v189 = sub_2676CBE2C();
    v190 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_46_1(v190))
    {
      v191 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v191);
      OUTLINED_FUNCTION_16_6();
      _os_log_impl(v192, v193, v194, v195, v196, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v353 = v187;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC968, &unk_2676CFDF0);
    OUTLINED_FUNCTION_14_8();
    sub_2676C984C();
    v197 = *(v187 + 16);

    v116 = v350;
    if (!v197)
    {
      v198 = sub_2676CBE2C();
      v199 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v199))
      {
        v200 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v200);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v201, v202, v203, v204, v205, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v206, v207, MEMORY[0x277D5C780]);
      OUTLINED_FUNCTION_0_2();
      sub_2675E0214(v208, v209, MEMORY[0x277D5C6A8]);
      v210 = v337;
      OUTLINED_FUNCTION_45();
      sub_2676C9A4C();

      v353 = MEMORY[0x277D84F90];
      sub_2676C9A1C();
      (*(v338 + 8))(v210, v54);
    }

    goto LABEL_43;
  }

  if (v75 == *MEMORY[0x277D5C930])
  {
    v213 = v333;
    v214 = v350;
    (v73)(v333, v350, v72);
    OUTLINED_FUNCTION_19_3();
    v215(v213, v72);
    v216 = v334;
    sub_2676250CC(v213, v334);
    v217 = sub_2676CB0AC();
    if (__swift_getEnumTagSinglePayload(v216, 1, v217) != 1)
    {
      LOBYTE(v353) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
      OUTLINED_FUNCTION_14_8();
      sub_2676C984C();
      v71 = v352;
    }

    sub_2675E35CC(v216, &qword_2801CCA08, &unk_2676CFEA0);
    return (*(v71 + 8))(v214, v72);
  }

  v233 = v350;
  if (v75 == *MEMORY[0x277D5C960])
  {
    v234 = v331;
    OUTLINED_FUNCTION_49_0();
    v73();
    OUTLINED_FUNCTION_19_3();
    v235 = v72;
    v236(v234, v72);
    v237 = sub_2676CB10C();
    OUTLINED_FUNCTION_7_7();
    v239 = v238;
    v240 = (*(v238 + 88))(v234, v237);
    v241 = v325[0];
    if (v240 == *MEMORY[0x277D5CA48])
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v242 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v242, qword_2801CDC90);
      v243 = sub_2676CBE2C();
      v244 = sub_2676CC23C();
      if (os_log_type_enabled(v243, v244))
      {
        v245 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v245);
        OUTLINED_FUNCTION_57_1(&dword_2675D4000, v246, v247, "#MailStateChangeEventHandler:  send");
        v235 = v351;
        OUTLINED_FUNCTION_2_5();
      }

      v248 = MEMORY[0x277D5CA18];
LABEL_123:
      v306 = v329;
      (*(v241 + 104))(v329, *v248, v43);
      sub_2676C984C();
      (*(v241 + 8))(v306, v43);
      OUTLINED_FUNCTION_44_1();
      v128 = v233;
      v158 = v235;
      return v127(v128, v158);
    }

    if (v240 == *MEMORY[0x277D5CA50])
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v300 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v300, qword_2801CDC90);
      v301 = sub_2676CBE2C();
      v302 = sub_2676CC23C();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v303);
        OUTLINED_FUNCTION_57_1(&dword_2675D4000, v304, v305, "#MailStateChangeEventHandler:  cancel");
        v235 = v351;
        OUTLINED_FUNCTION_2_5();
      }

      v248 = MEMORY[0x277D5CA20];
      goto LABEL_123;
    }

    (*(v239 + 8))(v234, v237);
    v72 = v235;
  }

  else
  {
    v273 = v325[0];
    if (v75 == *MEMORY[0x277D5C958])
    {
      v274 = v327;
      OUTLINED_FUNCTION_49_0();
      v73();
      OUTLINED_FUNCTION_19_3();
      v275(v274, v72);
      v276 = v328;
      v277 = v43;
      (*(v273 + 32))(v328, v274, v43);
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v278 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v278, qword_2801CDC90);
      v279 = v326;
      (*(v273 + 16))(v326, v276, v277);
      v280 = sub_2676CBE2C();
      v281 = sub_2676CC23C();
      if (os_log_type_enabled(v280, v281))
      {
        v282 = OUTLINED_FUNCTION_5_3();
        v283 = v279;
        v284 = OUTLINED_FUNCTION_41_1();
        v353 = v284;
        *v282 = 136315138;
        v348 = sub_2676CB0CC();
        v286 = v285;
        v287 = *(v273 + 8);
        v287(v283, v277);
        v288 = sub_2676B0B84(v348, v286, &v353);

        *(v282 + 4) = v288;
        _os_log_impl(&dword_2675D4000, v280, v281, "#MailStateChangeEventHandler: Apply state update: %s", v282, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v284);
        OUTLINED_FUNCTION_19_2();
        v276 = v328;
        v72 = v351;
        OUTLINED_FUNCTION_2_5();
      }

      else
      {

        v287 = *(v273 + 8);
        v287(v279, v277);
      }

      sub_2676C984C();
      v287(v276, v277);
      OUTLINED_FUNCTION_44_1();
      v128 = v350;
      v158 = v72;
      return v127(v128, v158);
    }
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v307 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v307, qword_2801CDC90);
  v308 = v330;
  (v73)(v330, v348, v72);
  v309 = sub_2676CBE2C();
  v310 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v310))
  {
    v311 = OUTLINED_FUNCTION_5_3();
    v312 = OUTLINED_FUNCTION_41_1();
    v353 = v312;
    *v311 = 136315138;
    (v73)(v325[1], v308, v351);
    v313 = sub_2676CBFBC();
    v314 = v308;
    v315 = v313;
    v317 = v316;
    v318 = *(v352 + 8);
    v318(v314, v351);
    v319 = sub_2676B0B84(v315, v317, &v353);

    *(v311 + 4) = v319;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v320, v321, v322, v323, v324, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v312);
    OUTLINED_FUNCTION_2_5();
    v72 = v351;
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    v318 = *(v352 + 8);
    v318(v308, v72);
  }

  return (v318)(v233, v72);
}

uint64_t sub_267623974(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  OUTLINED_FUNCTION_4_1(v3);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v249 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  OUTLINED_FUNCTION_4_1(v6);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_9_1();
  v258 = v8;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA10, &qword_2676D3880);
  OUTLINED_FUNCTION_3();
  v264 = v9;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_1();
  v263 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA18, &qword_2676CFEB0);
  OUTLINED_FUNCTION_3();
  v253 = v13;
  v254 = v12;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v252 = v15;
  OUTLINED_FUNCTION_7_3();
  v267 = sub_2676CB14C();
  OUTLINED_FUNCTION_3();
  v269 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_5();
  v266 = v18;
  OUTLINED_FUNCTION_7_3();
  v265 = sub_2676C8C8C();
  OUTLINED_FUNCTION_3();
  v268 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v22);
  v251 = v244 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D0, &unk_2676D37C0);
  OUTLINED_FUNCTION_3();
  v259 = v25;
  v260 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_4();
  v255 = v27;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v28);
  v257 = v244 - v29;
  OUTLINED_FUNCTION_7_3();
  v30 = sub_2676CAFDC();
  OUTLINED_FUNCTION_3();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_54_1();
  v39 = MEMORY[0x28223BE20](v38);
  v41 = (v244 - v40);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v244 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = (v244 - v46);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = (v244 - v49);
  MEMORY[0x28223BE20](v48);
  v52 = v244 - v51;
  v53 = *(v32 + 16);
  v246 = a1;
  v54 = a1;
  v55 = v53;
  (v53)(v244 - v51, v54, v30);
  v56 = (*(v32 + 88))(v52, v30);
  if (v56 == *MEMORY[0x277D5C968])
  {
    (v55)(v41, v52, v30);
    (*(v32 + 96))(v41, v30);
    v58 = *v41;
    v57 = v41[1];
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v59 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v59, qword_2801CDC90);
    v60 = sub_2676CBE2C();
    v61 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v61))
    {
      v62 = v30;
      v63 = OUTLINED_FUNCTION_17_3();
      *v63 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v64, v65, v66, v67, v63, 2u);
      v30 = v62;
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_47_0();
    if (v68)
    {
      type metadata accessor for MailStateChangeEventHandler(0);
      v270 = v58;
      v271 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_43_0();
      sub_2676C984C();
    }

    else
    {

      type metadata accessor for MailStateChangeEventHandler(0);
      v270 = 0;
      v271 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC970, &qword_2676D1C50);
      OUTLINED_FUNCTION_14_8();
      sub_2676C984C();
      KeyPath = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v108, v109, MEMORY[0x277D5C780]);
      v110 = v263;
      OUTLINED_FUNCTION_45();
      sub_2676C9A3C();

      OUTLINED_FUNCTION_48_0();
      sub_2676C9A1C();
      (*(v264 + 8))(v110, KeyPath);
    }

    return (*(v32 + 8))(v52, v30);
  }

  v256 = v52;
  if (v56 == *MEMORY[0x277D5C950])
  {
    OUTLINED_FUNCTION_23_5();
    v55();
    OUTLINED_FUNCTION_32_3();
    v69(v1, v30);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v70 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v70, qword_2801CDC90);
    v71 = sub_2676CBE2C();
    v72 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v72))
    {
      v73 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v73);
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v74, v75, v76, v77, v44, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    OUTLINED_FUNCTION_47_0();
    if (v78)
    {
      type metadata accessor for MailStateChangeEventHandler(0);
      v79 = v258;
      OUTLINED_FUNCTION_53_1();
      sub_2676C8EAC();
      v80 = sub_2676C8EBC();
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      OUTLINED_FUNCTION_43_0();
      sub_2676C984C();
      sub_2675E35CC(v79, &qword_2801CBFE0, &qword_2676D1070);
    }

    else
    {

      type metadata accessor for MailStateChangeEventHandler(0);
      v133 = sub_2676C8EBC();
      v134 = v258;
      __swift_storeEnumTagSinglePayload(v258, 1, 1, v133);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9D8, &unk_2676CFE60);
      sub_2676C984C();
      sub_2675E35CC(v134, &qword_2801CBFE0, &qword_2676D1070);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v135, v136, MEMORY[0x277D5C780]);
      OUTLINED_FUNCTION_45();
      sub_2676C9A3C();

      OUTLINED_FUNCTION_48_0();
      sub_2676C9A1C();
      v137 = OUTLINED_FUNCTION_53_1();
      v138(v137);
    }

    return (*(v32 + 8))(v52, v30);
  }

  if (v56 == *MEMORY[0x277D5C940])
  {
    OUTLINED_FUNCTION_23_5();
    v55();
    OUTLINED_FUNCTION_32_3();
    v81(v50, v30);
    v82 = *v50;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v83 = sub_2676CBE4C();
    v255 = __swift_project_value_buffer(v83, qword_2801CDC90);
    v84 = sub_2676CBE2C();
    v85 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_35_0(v85))
    {
      v86 = OUTLINED_FUNCTION_17_3();
      *v86 = 0;
      OUTLINED_FUNCTION_27_4();
      _os_log_impl(v87, v88, v89, v90, v86, 2u);
      OUTLINED_FUNCTION_2_5();
    }

    (*(v259 + 16))(v257, v261, v260);
    v91 = *(v82 + 16);
    if (v91)
    {
      v258 = v32;
      v92 = OUTLINED_FUNCTION_11_13();
      sub_2676C2778(v92, v91, 0);
      v93 = v270;
      v264 = *(v269 + 16);
      OUTLINED_FUNCTION_37_2();
      v250 = v82;
      v95 = v82 + v94;
      v97 = *(v96 + 56);
      v269 = v96;
      v98 = (v96 - 8);
      v262 = v268 + 32;
      v263 = v97;
      v99 = v266;
      do
      {
        v100 = v267;
        (v264)(v99, v95, v267);
        sub_2676CB12C();
        sub_2676CB13C();
        OUTLINED_FUNCTION_38_1();
        static MailAddresseePrototype.from(name:email:)(v101, v102);

        (*v98)(v99, v100);
        v270 = v93;
        v104 = *(v93 + 16);
        v103 = *(v93 + 24);
        if (v104 >= v103 >> 1)
        {
          v106 = OUTLINED_FUNCTION_39_1(v103);
          sub_2676C2778(v106, v104 + 1, 1);
          v93 = v270;
        }

        *(v93 + 16) = v104 + 1;
        OUTLINED_FUNCTION_17_9();
        OUTLINED_FUNCTION_22_4();
        v105();
        v95 += v263;
        --v91;
      }

      while (v91);
      v30 = v249;
      v32 = v258;
      v52 = v256;
      v82 = v250;
    }

    else
    {
      v93 = MEMORY[0x277D84F90];
    }

    v270 = v93;
    OUTLINED_FUNCTION_36_3();
    sub_2676C984C();

    v163 = OUTLINED_FUNCTION_21_5();
    v164(v163);
    v165 = *(v82 + 16);

    if (!v165)
    {
      v166 = v30;
      v167 = sub_2676CBE2C();
      v168 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v168))
      {
        v169 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v169);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v170, v171, v172, v173, v174, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      type metadata accessor for MailStateChangeEventHandler(0);
LABEL_55:
      v175 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v176, v177, MEMORY[0x277D5C780]);
      OUTLINED_FUNCTION_0_2();
      sub_2675E0214(v178, v179, MEMORY[0x277D5C6A8]);
      OUTLINED_FUNCTION_43_0();
      v180 = v252;
      OUTLINED_FUNCTION_45();
      sub_2676C9A4C();

      OUTLINED_FUNCTION_52();
      sub_2676C9A1C();
      (*(v253 + 8))(v180, v175);
      v30 = v166;
      return (*(v32 + 8))(v52, v30);
    }

    return (*(v32 + 8))(v52, v30);
  }

  if (v56 == *MEMORY[0x277D5C938])
  {
    OUTLINED_FUNCTION_23_5();
    v55();
    OUTLINED_FUNCTION_32_3();
    v111 = OUTLINED_FUNCTION_20_5();
    v112(v111);
    v113 = *v47;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v258 = v32;
    v114 = sub_2676CBE4C();
    v115 = __swift_project_value_buffer(v114, qword_2801CDC90);
    v116 = sub_2676CBE2C();
    v117 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v117))
    {
      v118 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_31_3(v118);
      _os_log_impl(&dword_2675D4000, v116, v115, "#MailStateChangeEventHandler: Handling cc recipient change", v44, 2u);
      OUTLINED_FUNCTION_19_2();
    }

    v257 = type metadata accessor for MailStateChangeEventHandler(0);
    OUTLINED_FUNCTION_51_1();
    v119(v255);
    v120 = *(v113 + 2);
    if (v120)
    {
      v250 = v115;
      v121 = OUTLINED_FUNCTION_11_13();
      sub_2676C2778(v121, v120, 0);
      v122 = v270;
      OUTLINED_FUNCTION_37_2();
      v251 = v113;
      v124 = &v113[v123];
      OUTLINED_FUNCTION_29_4();
      v125 = v266;
      do
      {
        v126 = v267;
        (v264)(v125, v124, v267);
        sub_2676CB12C();
        sub_2676CB13C();
        OUTLINED_FUNCTION_38_1();
        static MailAddresseePrototype.from(name:email:)(v127, v128);

        (*v30)(v125, v126);
        v270 = v122;
        v130 = *(v122 + 16);
        v129 = *(v122 + 24);
        if (v130 >= v129 >> 1)
        {
          v132 = OUTLINED_FUNCTION_39_1(v129);
          sub_2676C2778(v132, v130 + 1, 1);
          v122 = v270;
        }

        *(v122 + 16) = v130 + 1;
        OUTLINED_FUNCTION_17_9();
        OUTLINED_FUNCTION_22_4();
        v131();
        v124 += v263;
        --v120;
      }

      while (v120);
      v30 = v249;
      v52 = v256;
      v113 = v251;
    }

    else
    {
      v122 = MEMORY[0x277D84F90];
    }

    v270 = v122;
    OUTLINED_FUNCTION_36_3();
    sub_2676C984C();

    v185 = OUTLINED_FUNCTION_21_5();
    v186(v185);
    v187 = *(v113 + 2);

    v32 = v258;
    if (!v187)
    {
      v188 = sub_2676CBE2C();
      v189 = sub_2676CC23C();
      if (OUTLINED_FUNCTION_5_5(v189))
      {
        v190 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v190);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v191, v192, v193, v194, v195, 2u);
        OUTLINED_FUNCTION_4_6();
      }

      v196 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC980, &unk_2676CFE10);
      OUTLINED_FUNCTION_1_1();
      sub_2675E0214(v197, v198, MEMORY[0x277D5C780]);
      OUTLINED_FUNCTION_0_2();
      sub_2675E0214(v199, v200, MEMORY[0x277D5C6A8]);
      OUTLINED_FUNCTION_43_0();
      v201 = v252;
      OUTLINED_FUNCTION_45();
      sub_2676C9A4C();

      OUTLINED_FUNCTION_52();
      sub_2676C9A1C();
      (*(v253 + 8))(v201, v196);
      v32 = v258;
    }

    return (*(v32 + 8))(v52, v30);
  }

  if (v56 != *MEMORY[0x277D5C948])
  {
    if (v56 == *MEMORY[0x277D5C930])
    {
      v181 = v247;
      OUTLINED_FUNCTION_23_5();
      v55();
      OUTLINED_FUNCTION_32_3();
      v182(v181, v30);
      v183 = v249;
      sub_2676250CC(v181, v249);
      v184 = sub_2676CB0AC();
      if (__swift_getEnumTagSinglePayload(v183, 1, v184) != 1)
      {
        type metadata accessor for MailStateChangeEventHandler(0);
        LOBYTE(v270) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC8D8, &unk_2676CFC70);
        OUTLINED_FUNCTION_14_8();
        OUTLINED_FUNCTION_43_0();
        sub_2676C984C();
      }

      sub_2675E35CC(v183, &qword_2801CCA08, &unk_2676CFEA0);
      return (*(v32 + 8))(v52, v30);
    }

    v202 = v55;
    v52 = v256;
    v203 = v248;
    if (v56 == *MEMORY[0x277D5C960])
    {
      v204 = v245;
      (v55)(v245, v256, v30);
      OUTLINED_FUNCTION_32_3();
      v205(v204, v30);
      v206 = sub_2676CB10C();
      OUTLINED_FUNCTION_7_7();
      v50 = v207;
      v208 = (*(v207 + 88))(v204, v206);
      if (v208 == *MEMORY[0x277D5CA48])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v209 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v209, qword_2801CDC90);
        v210 = sub_2676CBE2C();
        v211 = sub_2676CC23C();
        if (!OUTLINED_FUNCTION_5_5(v211))
        {
          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (v208 == *MEMORY[0x277D5CA50])
      {
        if (qword_2801CBAA0 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2801CBAA0);
        }

        v223 = sub_2676CBE4C();
        OUTLINED_FUNCTION_24_2(v223, qword_2801CDC90);
        v210 = sub_2676CBE2C();
        v224 = sub_2676CC23C();
        if (!OUTLINED_FUNCTION_5_5(v224))
        {
          goto LABEL_87;
        }

LABEL_80:
        v225 = OUTLINED_FUNCTION_17_3();
        OUTLINED_FUNCTION_9_4(v225);
        OUTLINED_FUNCTION_3_7();
        _os_log_impl(v226, v227, v228, v229, v230, 2u);
LABEL_86:
        OUTLINED_FUNCTION_2_5();
LABEL_87:

        return (*(v32 + 8))(v52, v30);
      }

      v231 = v50[1];
      LOBYTE(v50) = v50 + 8;
      v231(v204, v206);
    }

    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v232 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v232, qword_2801CDC90);
    (v55)(v203, v246, v30);
    v210 = sub_2676CBE2C();
    v233 = sub_2676CC23C();
    if (!OUTLINED_FUNCTION_5_5(v233))
    {

      v241 = OUTLINED_FUNCTION_20_5();
      v242(v241);
      return (*(v32 + 8))(v52, v30);
    }

    v234 = OUTLINED_FUNCTION_5_3();
    v269 = OUTLINED_FUNCTION_41_1();
    v270 = v269;
    *v234 = 136315138;
    (v202)(v244[1], v203, v30);
    v235 = sub_2676CBFBC();
    v237 = v236;
    v238 = OUTLINED_FUNCTION_20_5();
    v239(v238);
    v240 = sub_2676B0B84(v235, v237, &v270);

    *(v234 + 4) = v240;
    _os_log_impl(&dword_2675D4000, v210, v50, "#MailStateChangeEventHandler: Ignoring unhandled snippet event: %s", v234, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v269);
    OUTLINED_FUNCTION_2_5();
    goto LABEL_86;
  }

  (v55)(v44, v256, v30);
  OUTLINED_FUNCTION_32_3();
  v139(v44, v30);
  v140 = *v44;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v141 = sub_2676CBE4C();
  v257 = __swift_project_value_buffer(v141, qword_2801CDC90);
  v142 = sub_2676CBE2C();
  v143 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_35_0(v143))
  {
    v144 = OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_31_3(v144);
    OUTLINED_FUNCTION_27_4();
    _os_log_impl(v145, v146, v147, v148, v44, 2u);
    OUTLINED_FUNCTION_19_2();
  }

  v255 = type metadata accessor for MailStateChangeEventHandler(0);
  OUTLINED_FUNCTION_51_1();
  v149(v250);
  v150 = *(v140 + 2);
  if (v150)
  {
    v258 = v32;
    v151 = OUTLINED_FUNCTION_11_13();
    sub_2676C2778(v151, v150, 0);
    v152 = v270;
    OUTLINED_FUNCTION_37_2();
    v251 = v140;
    v154 = &v140[v153];
    OUTLINED_FUNCTION_29_4();
    v155 = v266;
    do
    {
      v156 = v267;
      (v264)(v155, v154, v267);
      sub_2676CB12C();
      sub_2676CB13C();
      OUTLINED_FUNCTION_38_1();
      static MailAddresseePrototype.from(name:email:)(v157, v158);

      (*v30)(v155, v156);
      v270 = v152;
      v160 = *(v152 + 16);
      v159 = *(v152 + 24);
      if (v160 >= v159 >> 1)
      {
        v162 = OUTLINED_FUNCTION_39_1(v159);
        sub_2676C2778(v162, v160 + 1, 1);
        v152 = v270;
      }

      *(v152 + 16) = v160 + 1;
      OUTLINED_FUNCTION_17_9();
      OUTLINED_FUNCTION_22_4();
      v161();
      v154 += v263;
      --v150;
    }

    while (v150);
    v30 = v249;
    v32 = v258;
    v140 = v251;
  }

  else
  {
    v152 = MEMORY[0x277D84F90];
  }

  v270 = v152;
  OUTLINED_FUNCTION_36_3();
  sub_2676C984C();

  v212 = OUTLINED_FUNCTION_21_5();
  v213(v212);
  v214 = *(v140 + 2);

  v52 = v256;
  if (!v214)
  {
    v166 = v30;
    v215 = sub_2676CBE2C();
    v216 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v216))
    {
      v217 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v217);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v218, v219, v220, v221, v222, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    goto LABEL_55;
  }

  return (*(v32 + 8))(v52, v30);
}

uint64_t sub_2676250CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762513C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_13()
{
  *(v2 - 288) = v0;
  *(v2 - 104) = v1;
  return 0;
}

void OUTLINED_FUNCTION_29_4()
{
  *(v2 - 160) = *(v0 + 56);
  *(v2 - 152) = v1;
  *(v2 - 112) = v0;
  *(v2 - 168) = *(v2 - 120) + 32;
}

void OUTLINED_FUNCTION_40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v5 - 160);
  v8 = *(v5 - 152);

  _os_log_impl(a1, v8, v7, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_46_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
  *(v0 - 104) = 0;
  *(v0 - 96) = 0;
  return v0 - 104;
}

void OUTLINED_FUNCTION_57_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t sub_2676253B4(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA28, MEMORY[0x277D5C808], &unk_2676CFFCC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762540C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC670, MEMORY[0x277D5C808], MEMORY[0x277D5C7F0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625464(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA30, MEMORY[0x277D5C828], &unk_2676D0004);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676254BC(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC680, MEMORY[0x277D5C828], MEMORY[0x277D5C810]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625514(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA38, MEMORY[0x277D5C848], &unk_2676D003C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762556C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC678, MEMORY[0x277D5C848], MEMORY[0x277D5C830]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676255C4(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC738, MEMORY[0x277D5C7E8], MEMORY[0x277D5C7D0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762561C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA40, MEMORY[0x277D5C8D0], MEMORY[0x277D5C8C8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625674(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA48, MEMORY[0x277D5C8A8], MEMORY[0x277D5C890]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676256CC(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CC688, MEMORY[0x277D5C878], MEMORY[0x277D5C860]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625724(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA50, MEMORY[0x277D5C888], MEMORY[0x277D5C880]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762577C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA58, MEMORY[0x277D5C338], MEMORY[0x277D5C330]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676257D4(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA60, MEMORY[0x277D5C380], MEMORY[0x277D5C368]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762582C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA68, MEMORY[0x277D5C3C0], MEMORY[0x277D5C3B8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625884(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA70, MEMORY[0x277D5C3A0], MEMORY[0x277D5C398]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676258DC(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA78, MEMORY[0x277D5C350], MEMORY[0x277D5C348]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_267625934(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA80, MEMORY[0x277D5C390], MEMORY[0x277D5C388]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26762598C(uint64_t a1)
{
  result = sub_2676259E4(&qword_2801CCA88, MEMORY[0x277D5C770], MEMORY[0x277D5C760]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2676259E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267625A2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2676CC50C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t type metadata accessor for MarkMessageAsRead(uint64_t a1)
{
  result = qword_2801CCA90;
  if (!qword_2801CCA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_267625AEC(uint64_t a1)
{
  result = sub_2676C8BFC();
  if (v2 <= 0x3F)
  {
    result = sub_2675F3A90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_267625B98()
{
  v1 = *(v0 + 48);
  v2 = (v1 + *(type metadata accessor for MarkMessageAsRead(0) + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_267625CD4;
  v6 = *(v0 + 48);

  return v8(v6, v3, v4);
}

uint64_t sub_267625CD4(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v7 = v6;
  *(v4 + 64) = v1;

  if (v1)
  {
    v8 = sub_267625F88;
  }

  else
  {
    *(v4 + 72) = a1 & 1;
    v8 = sub_267625DF8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_267625DF8()
{
  v1 = *(v0 + 72);
  if (v1 == 1)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v2 = sub_2676CBE4C();
    __swift_project_value_buffer(v2, qword_2801CDC90);
    v3 = sub_2676CBE2C();
    v4 = sub_2676CC23C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "#MarkMessageAsRead run succeeded";
LABEL_10:
      _os_log_impl(&dword_2675D4000, v3, v4, v6, v5, 2u);
      MEMORY[0x26D5FEA80](v5, -1, -1);
    }
  }

  else
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v7 = sub_2676CBE4C();
    __swift_project_value_buffer(v7, qword_2801CDC90);
    v3 = sub_2676CBE2C();
    v4 = sub_2676CC23C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "#MarkMessageAsRead run succeeded but failed to convert to LNSuccessResult";
      goto LABEL_10;
    }
  }

  v8 = *(v0 + 8);

  return v8(v1);
}

uint64_t sub_267625F88()
{
  v16 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v1 = *(v0 + 64);
  v2 = sub_2676CBE4C();
  __swift_project_value_buffer(v2, qword_2801CDC90);
  v3 = v1;
  v4 = sub_2676CBE2C();
  v5 = sub_2676CC24C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_2676CC5FC();
    v12 = sub_2676B0B84(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2675D4000, v4, v5, "#MarkMessageAsRead run failed due to error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D5FEA80](v9, -1, -1);
    MEMORY[0x26D5FEA80](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_26762614C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2676261DC;

  return sub_267625B78();
}

uint64_t sub_2676261DC(char a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_6();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2676262E8()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_14();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_7_13(v6);
  sub_2676CB32C();
  sub_2676CB12C();
  if (v7)
  {
    sub_2676CBFEC();

    v8 = sub_2676CB3FC();
    OUTLINED_FUNCTION_2_17(v2);
    (*(*(v8 - 8) + 32))(v1, v2, v8);
  }

  else
  {
    v9 = sub_2676CB3FC();
    v10 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    sub_2676CB13C();
    sub_2676CBFEC();

    v12 = OUTLINED_FUNCTION_5_14();
    if (__swift_getEnumTagSinglePayload(v12, v13, v9) != 1)
    {
      sub_2675E3BB8(v2);
    }
  }

  sub_2676CB3FC();
  OUTLINED_FUNCTION_2_17(v1);
  sub_2676CB2DC();

  sub_2675E3BB8(v1);
  v14 = sub_2676CB21C();
  OUTLINED_FUNCTION_7_13(v14);
  sub_2676CB20C();
  sub_2676CB13C();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB1FC();

  sub_2675E3BB8(v0);
  OUTLINED_FUNCTION_1_16();
  sub_2676CBFEC();
  OUTLINED_FUNCTION_1_4();
  sub_2676CB1DC();

  sub_2675E3BB8(v0);
  sub_2676CB1CC();

  sub_2676CB2BC();

  v15 = sub_2676CB31C();

  return v15;
}

uint64_t sub_267626550()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_3_11();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_14();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_7_13(v6);
  sub_2676CB32C();
  sub_2676C8C1C();
  if (v7)
  {
    sub_2676CBFEC();

    v8 = sub_2676CB3FC();
    OUTLINED_FUNCTION_2_17(v2);
    (*(*(v8 - 8) + 32))(v1, v2, v8);
  }

  else
  {
    v9 = sub_2676CB3FC();
    v10 = OUTLINED_FUNCTION_5_14();
    __swift_storeEnumTagSinglePayload(v10, v11, 1, v9);
    sub_2676C8C4C();
    sub_2676CBFEC();

    v12 = OUTLINED_FUNCTION_5_14();
    if (__swift_getEnumTagSinglePayload(v12, v13, v9) != 1)
    {
      sub_2675E3BB8(v2);
    }
  }

  sub_2676CB3FC();
  OUTLINED_FUNCTION_2_17(v1);
  sub_2676CB2DC();

  sub_2675E3BB8(v1);
  v14 = sub_2676CB21C();
  OUTLINED_FUNCTION_7_13(v14);
  sub_2676CB20C();
  sub_2676C8C4C();
  sub_2676CBFEC();

  OUTLINED_FUNCTION_1_4();
  sub_2676CB1FC();

  sub_2675E3BB8(v0);
  OUTLINED_FUNCTION_1_16();
  sub_2676CBFEC();
  OUTLINED_FUNCTION_1_4();
  sub_2676CB1DC();

  sub_2675E3BB8(v0);
  sub_2676CB1CC();

  sub_2676CB2BC();

  v15 = sub_2676CB31C();

  return v15;
}

uint64_t MailAddresseePrototype.debugDescription.getter()
{
  sub_2676CC3FC();

  strcpy(v4, "displayName: ");
  sub_2676C8C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
  v0 = sub_2676CBFBC();
  MEMORY[0x26D5FDD00](v0);

  MEMORY[0x26D5FDD00](0x64416C69616D650ALL, 0xEF203A7373657264);
  v1 = sub_2676C8C4C();
  MEMORY[0x26D5FDD00](v1);

  MEMORY[0x26D5FDD00](0x203A64690ALL, 0xE500000000000000);
  v2 = sub_2676C8C6C();
  MEMORY[0x26D5FDD00](v2);

  return v4[0];
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_2676CB33C();
}

uint64_t OUTLINED_FUNCTION_7_13(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_267626998()
{
  v1 = sub_2676C959C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC16SiriMailInternal26MetricsSnippetEventHandler__environment, v1);
  v5 = sub_2676C957C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_267626A88(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCA08, &unk_2676CFEA0);
  v2[15] = OUTLINED_FUNCTION_12_9();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAB8, &unk_2676D02E0);
  v2[18] = OUTLINED_FUNCTION_12_9();
  v2[19] = swift_task_alloc();
  v3 = sub_2676C99EC();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = OUTLINED_FUNCTION_12_9();
  v2[23] = swift_task_alloc();
  v4 = sub_2676CAFDC();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = OUTLINED_FUNCTION_12_9();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267626C64, v1, 0);
}

uint64_t sub_267626C64()
{
  v131 = v0;
  v1 = v0;
  sub_267626998();
  sub_2676CAF0C();

  sub_2676C9DEC();

  if (!*(v0 + 80))
  {
    sub_2675EB7EC(v0 + 56, &off_2801CC6B8, &unk_2676CF600);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v23 = sub_2676CBE4C();
    __swift_project_value_buffer(v23, qword_2801CDC90);
    v24 = sub_2676CBE2C();
    v25 = sub_2676CC22C();
    if (os_log_type_enabled(v24, v25))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v26, v27, "#MetricsSnippetEventHandler: eventSender not available");
      OUTLINED_FUNCTION_2_5();
    }

LABEL_18:

    OUTLINED_FUNCTION_9_13();

    __asm { BRAA            X1, X16 }
  }

  sub_267614E14((v0 + 56), v0 + 16);
  sub_267626998();
  sub_2676CAF0C();

  sub_2676C9DFC();
  v3 = v2;

  if (!v3)
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v28 = sub_2676CBE4C();
    __swift_project_value_buffer(v28, qword_2801CDC90);
    v29 = sub_2676CBE2C();
    v30 = sub_2676CC22C();
    if (os_log_type_enabled(v29, v30))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_15_6(&dword_2675D4000, v31, v32, "#MetricsSnippetEventHandler: no taskName specified, skipping instrumentation");
      OUTLINED_FUNCTION_2_5();
    }

LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v1 + 16);
    goto LABEL_18;
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 96);
  v8 = sub_2676CBE4C();
  __swift_project_value_buffer(v8, qword_2801CDC90);
  v129 = *(v6 + 16);
  v129(v4, v7, v5);
  v9 = sub_2676CBE2C();
  v10 = sub_2676CC23C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 248);
  if (v11)
  {
    v13 = *(v0 + 240);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    swift_slowAlloc();
    v122 = v1;
    v16 = OUTLINED_FUNCTION_7_14();
    v130 = v16;
    *v7 = 136315138;
    v129(v13, v12, v14);
    v17 = sub_2676CBFBC();
    v19 = v18;
    v128 = *(v15 + 8);
    v128(v12, v14);
    v20 = sub_2676B0B84(v17, v19, &v130);

    *(v7 + 4) = v20;
    OUTLINED_FUNCTION_11_14(&dword_2675D4000, v21, v22, "#MetricsSnippetEventHandler: instrumenting change %s");
    __swift_destroy_boxed_opaque_existential_1(v16);
    v1 = v122;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {
    v35 = *(v0 + 192);
    v36 = *(v0 + 200);

    v128 = *(v36 + 8);
    v128(v12, v35);
  }

  v37 = *(v1 + 29);
  v38 = *(v1 + 24);
  v39 = *(v1 + 25);
  v40 = *(v1 + 19);
  v41 = *(v1 + 12);
  v42 = *(*(v1 + 21) + 104);
  (v42)(*(v1 + 23), *MEMORY[0x277D5BBE8], *(v1 + 20));
  v43 = sub_2676C968C();
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v43);
  v44 = v129;
  v129(v37, v41, v38);
  v45 = (v39 + 88);
  v46 = OUTLINED_FUNCTION_45();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x277D5C968])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v38, &qword_2801CCAB8, &unk_2676D02E0);
    v49 = OUTLINED_FUNCTION_0_16();
    v45(v49);
    v50 = OUTLINED_FUNCTION_4_15();
    (v41)(v50);
    v51 = MEMORY[0x277D5B8F0];
LABEL_32:
    (*(*(v43 - 8) + 104))(v38, *v51, v43);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v43);
LABEL_33:
    *(v1 + 32) = v44;
    *(v1 + 33) = v45;
    v60 = *(v1 + 22);
    v61 = *(v1 + 23);
    v62 = *(v1 + 20);
    v63 = *(v1 + 21);
    v65 = *(v1 + 18);
    v64 = *(v1 + 19);
    v128(*(v1 + 29), *(v1 + 24));
    __swift_project_boxed_opaque_existential_1(v1 + 2, *(v1 + 5));
    sub_2676C970C();
    (*(v63 + 16))(v60, v61, v62);
    sub_2675F95E4(v64, v65, &qword_2801CCAB8, &unk_2676D02E0);
    *(v1 + 34) = sub_2676C96EC();
    v66 = swift_task_alloc();
    *(v1 + 35) = v66;
    *v66 = v1;
    v66[1] = sub_267627B94;
    OUTLINED_FUNCTION_9_13();

    return MEMORY[0x2821BA730](v67, v68, v69);
  }

  if (v48 == *MEMORY[0x277D5C950])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v38, &qword_2801CCAB8, &unk_2676D02E0);
    v52 = OUTLINED_FUNCTION_0_16();
    v45(v52);
    v53 = OUTLINED_FUNCTION_4_15();
    (v41)(v53);
    v51 = MEMORY[0x277D5B8C8];
    goto LABEL_32;
  }

  if (v48 == *MEMORY[0x277D5C940])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v38, &qword_2801CCAB8, &unk_2676D02E0);
    v54 = OUTLINED_FUNCTION_0_16();
    v45(v54);
    v55 = OUTLINED_FUNCTION_4_15();
    (v41)(v55);
    v51 = MEMORY[0x277D5B900];
    goto LABEL_32;
  }

  if (v48 == *MEMORY[0x277D5C938])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v38, &qword_2801CCAB8, &unk_2676D02E0);
    v56 = OUTLINED_FUNCTION_0_16();
    v45(v56);
    v57 = OUTLINED_FUNCTION_4_15();
    (v41)(v57);
    v51 = MEMORY[0x277D5B918];
    goto LABEL_32;
  }

  if (v48 == *MEMORY[0x277D5C948])
  {
    OUTLINED_FUNCTION_1_17();
    sub_2675EB7EC(v38, &qword_2801CCAB8, &unk_2676D02E0);
    v58 = OUTLINED_FUNCTION_0_16();
    v45(v58);
    v59 = OUTLINED_FUNCTION_4_15();
    (v41)(v59);
    v51 = MEMORY[0x277D5B920];
    goto LABEL_32;
  }

  if (v48 != *MEMORY[0x277D5C930])
  {
    if (v48 == *MEMORY[0x277D5C960])
    {
      v87 = *(v1 + 28);
      v88 = *(v1 + 25);
      v129(v87, *(v1 + 29), *(v1 + 24));
      v45 = (v88 + 96);
      v89 = OUTLINED_FUNCTION_45();
      v90(v89);
      v91 = sub_2676CB10C();
      v92 = *(v91 - 8);
      v93 = (*(v92 + 88))(v87, v91);
      if (v93 == *MEMORY[0x277D5CA48] || v93 == *MEMORY[0x277D5CA50])
      {
        v44 = *(v1 + 21);
        v114 = OUTLINED_FUNCTION_0_16();
        v45(v114);
        v115 = OUTLINED_FUNCTION_4_15();
        v42(v115);
        goto LABEL_33;
      }

      v116 = *(v1 + 28);

      (*(v92 + 8))(v116, v91);
    }

    else
    {
    }

    v129(*(v1 + 26), *(v1 + 12), *(v1 + 24));
    v96 = sub_2676CBE2C();
    v97 = sub_2676CC23C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = *(v1 + 30);
      v99 = *(v1 + 26);
      v100 = *(v1 + 24);
      v125 = *(v1 + 21);
      v126 = *(v1 + 20);
      v127 = *(v1 + 23);
      v124 = *(v1 + 19);
      swift_slowAlloc();
      v101 = OUTLINED_FUNCTION_7_14();
      v130 = v101;
      *v41 = 136315138;
      v129(v98, v99, v100);
      v102 = sub_2676CBFBC();
      v104 = v103;
      v105 = v99;
      v106 = v128;
      v128(v105, v100);
      v107 = sub_2676B0B84(v102, v104, &v130);

      *(v41 + 4) = v107;
      _os_log_impl(&dword_2675D4000, v96, v97, "#MetricsSnippetEventHandler: skipping handling for this change: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();

      sub_2675EB7EC(v124, &qword_2801CCAB8, &unk_2676D02E0);
      (*(v125 + 8))(v127, v126);
    }

    else
    {
      v109 = *(v1 + 23);
      v110 = *(v1 + 20);
      v111 = *(v1 + 21);
      v112 = *(v1 + 19);

      v113 = OUTLINED_FUNCTION_45();
      v106 = v128;
      (v128)(v113);
      sub_2675EB7EC(v112, &qword_2801CCAB8, &unk_2676D02E0);
      (*(v111 + 8))(v109, v110);
    }

    v106(*(v1 + 29), *(v1 + 24));
    goto LABEL_17;
  }

  v123 = v42;
  v71 = *(v1 + 27);
  v72 = *(v1 + 25);
  v74 = *(v1 + 16);
  v73 = *(v1 + 17);
  v129(v71, *(v1 + 29), *(v1 + 24));
  v45 = (v72 + 96);
  v75 = OUTLINED_FUNCTION_45();
  v76(v75);
  sub_2676250CC(v71, v73);
  sub_2675F95E4(v73, v74, &qword_2801CCA08, &unk_2676CFEA0);
  v77 = sub_2676CBE2C();
  v44 = sub_2676CC23C();
  v78 = os_log_type_enabled(v77, v44);
  v79 = *(v1 + 16);
  if (v78)
  {
    swift_slowAlloc();
    v80 = OUTLINED_FUNCTION_7_14();
    v130 = v80;
    *v41 = 136315138;
    v81 = sub_2676CC2EC();
    v45 = v1;
    v83 = v82;
    sub_2675EB7EC(v79, &qword_2801CCA08, &unk_2676CFEA0);
    v84 = sub_2676B0B84(v81, v83, &v130);
    v1 = v45;

    *(v41 + 4) = v84;
    OUTLINED_FUNCTION_11_14(&dword_2675D4000, v85, v86, "#MetricsSnippetEventHandler: handling change of focusedField %s");
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    sub_2675EB7EC(v79, &qword_2801CCA08, &unk_2676CFEA0);
  }

  v94 = *(v1 + 15);
  sub_2675F95E4(*(v1 + 17), v94, &qword_2801CCA08, &unk_2676CFEA0);
  v95 = sub_2676CB0AC();
  if (__swift_getEnumTagSinglePayload(v94, 1, v95) == 1 || (v108 = (*(*(v95 - 8) + 88))(*(v1 + 15), v95), v108 == *MEMORY[0x277D5C9C8]) || v108 == *MEMORY[0x277D5C9C0] || v108 == *MEMORY[0x277D5C9D0] || v108 == *MEMORY[0x277D5C9E0] || v108 == *MEMORY[0x277D5C9D8])
  {
    v117 = OUTLINED_FUNCTION_3_12();
    sub_2675EB7EC(v117, &qword_2801CCA08, &unk_2676CFEA0);
    v118 = OUTLINED_FUNCTION_0_16();
    v45(v118);
    v119 = OUTLINED_FUNCTION_4_15();
    v123(v119);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_9_13();

  return sub_2676CC58C();
}

uint64_t sub_267627B94()
{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](sub_267627CC0, v1, 0);
}

uint64_t sub_267627CC0()
{
  v1 = v0[33];
  v2 = v0[23];
  v3 = v0[20];
  sub_2675EB7EC(v0[19], &qword_2801CCAB8, &unk_2676D02E0);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_267627DFC()
{
  sub_2676CBB3C();
  sub_2676CBB2C();
  return sub_2676C96DC();
}

uint64_t sub_267627E4C()
{
  v1 = OBJC_IVAR____TtC16SiriMailInternal26MetricsSnippetEventHandler__environment;
  sub_2676C959C();
  OUTLINED_FUNCTION_2_6();
  (*(v2 + 8))(v0 + v1);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for MetricsSnippetEventHandler(uint64_t a1)
{
  result = qword_2801CCAA8;
  if (!qword_2801CCAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267627F10(uint64_t a1)
{
  result = sub_2676C959C();
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

uint64_t OUTLINED_FUNCTION_7_14()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for NeedsValuePromptProvider(uint64_t a1)
{
  result = qword_2801CCAC0;
  if (!qword_2801CCAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2676280F8(uint64_t a1)
{
  result = type metadata accessor for PromptForContactProducer(319);
  if (v2 <= 0x3F)
  {
    result = sub_2676C9B9C();
    if (v3 <= 0x3F)
    {
      result = sub_2676281AC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2676281AC()
{
  result = qword_2801CCAD0;
  if (!qword_2801CCAD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2801CCAD0);
  }

  return result;
}

uint64_t sub_2676281F4()
{
  OUTLINED_FUNCTION_3_0();
  v1[42] = v2;
  v1[43] = v0;
  v3 = sub_2676C9AFC();
  v1[44] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[45] = v4;
  v1[46] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676C90FC();
  v1[47] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[48] = v6;
  v1[49] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v1[50] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v1[51] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  v1[52] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v1[53] = v8;
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v9 = sub_2676C9DDC();
  v1[56] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v1[57] = v10;
  v1[58] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676C9B3C();
  v1[59] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v1[60] = v12;
  v1[61] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676CA27C();
  v1[62] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[63] = v14;
  v1[64] = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_26762847C()
{
  v1 = v0[43];
  v2 = type metadata accessor for NeedsValuePromptProvider(0);
  v0[65] = v2;
  (*(v1 + *(v2 + 32)))();
  v3 = v0[63];
  v13 = v0[62];
  v14 = v0[55];
  v4 = v0[53];
  v19 = v0[59];
  v15 = v0[54];
  v16 = v0[52];
  v17 = v0[51];
  v5 = v0[50];
  v20 = v0[49];
  v21 = v0[48];
  v22 = v0[47];
  v23 = v0[60];
  v18 = v0[61];
  v6 = v0[64];
  sub_2676C9B2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2676CDE20;
  (*(v3 + 16))(v8 + v7, v6, v13);
  sub_2676C9B1C();
  sub_2676C999C();
  (*(v4 + 16))(v15, v14, v16);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v17);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v21 + 8))(v20, v22);
  sub_2676C9D5C();
  sub_2676C9DAC();
  (*(v23 + 16))(v5, v18, v19);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v19);
  sub_2676C9D8C();
  (*(v4 + 8))(v14, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[66] = v9;
  *v9 = v10;
  v9[1] = sub_267628840;
  v11 = v0[46];

  return sub_26763A8A0(v11);
}

uint64_t sub_267628840()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v3 = v2;
  *(v4 + 536) = v0;

  if (v0)
  {
    v5 = sub_2676293F4;
  }

  else
  {
    v5 = sub_267628944;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_267628944()
{
  sub_2676C9ABC();
  if (*(v0 + 80))
  {
    sub_2675DD73C((v0 + 56), v0 + 16);
    sub_2676C9ACC();
    if (*(v0 + 320))
    {
      OUTLINED_FUNCTION_11_15();
      sub_2675DD73C((v0 + 296), v0 + 256);
      v1 = OUTLINED_FUNCTION_18_6();
      *(v0 + 544) = v1;
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_15_3();
      *(v0 + 552) = v2;
      *v2 = v3;
      v2[1] = sub_267628C20;
      v4 = *(v0 + 464);
      v5 = *(v0 + 336);

      return v23(v5, v0 + 16, v0 + 256, v1, v4);
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v7 = v0 + 296;
  }

  else
  {
    v7 = v0 + 56;
  }

  sub_2676298A0(v7);
  sub_2676C9ABC();
  if (*(v0 + 160))
  {
    OUTLINED_FUNCTION_11_15();
    sub_2675DD73C((v0 + 136), v0 + 96);
    v8 = OUTLINED_FUNCTION_18_6();
    *(v0 + 560) = v8;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 568) = v9;
    *v9 = v10;
    v9[1] = sub_267628E14;
    v11 = *(v0 + 464);
    v12 = *(v0 + 336);
    v13 = v0 + 96;
LABEL_12:

    return (v23)(v12, v13, v8, v11);
  }

  sub_2676298A0(v0 + 136);
  sub_2676C9ACC();
  OUTLINED_FUNCTION_11_15();
  v14 = (v0 + 216);
  if (v15)
  {
    sub_2675DD73C(v14, v0 + 176);
    v8 = OUTLINED_FUNCTION_18_6();
    *(v0 + 576) = v8;
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_15_3();
    *(v0 + 584) = v16;
    *v16 = v17;
    v16[1] = sub_267629000;
    v11 = *(v0 + 464);
    v12 = *(v0 + 336);
    v13 = v0 + 176;
    goto LABEL_12;
  }

  sub_2676298A0(v14);
  v18 = OUTLINED_FUNCTION_18_6();
  *(v0 + 592) = v18;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_15_3();
  *(v0 + 600) = v19;
  *v19 = v20;
  v19[1] = sub_2676291EC;
  v21 = *(v0 + 464);
  v22 = *(v0 + 336);

  return (v23)(v22, v18, v21);
}

uint64_t sub_267628C20()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267628D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_13();
  __swift_destroy_boxed_opaque_existential_1(v12 + 256);
  __swift_destroy_boxed_opaque_existential_1(v12 + 16);
  v13 = OUTLINED_FUNCTION_14_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_13_11();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_267628E14()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267628F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_13();
  __swift_destroy_boxed_opaque_existential_1(v12 + 96);
  v13 = OUTLINED_FUNCTION_14_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_13_11();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_267629000()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267629100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_3_13();
  __swift_destroy_boxed_opaque_existential_1(v12 + 176);
  v13 = OUTLINED_FUNCTION_14_9();
  v14(v13);
  v15 = OUTLINED_FUNCTION_13_11();
  v16(v15);
  v17 = OUTLINED_FUNCTION_12_10();
  v18(v17);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_2676291EC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676292EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v14 = v12[63];
  v13 = v12[64];
  v15 = v12[62];
  v17 = v12[57];
  v16 = v12[58];
  v18 = v12[56];
  (*(v12[45] + 8))(v12[46], v12[44]);
  (*(v17 + 8))(v16, v18);
  (*(v14 + 8))(v13, v15);
  v19 = OUTLINED_FUNCTION_0_17();
  v20(v19);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_2676293F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v14 = v12[63];
  v13 = v12[64];
  v16 = v12[61];
  v15 = v12[62];
  v17 = v12[59];
  v18 = v12[60];
  (*(v12[57] + 8))(v12[58], v12[56]);
  (*(v14 + 8))(v13, v15);
  (*(v18 + 8))(v16, v17);

  OUTLINED_FUNCTION_32_1();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_267629508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267629908;

  return sub_2676281F4();
}

uint64_t sub_2676295A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267629908;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_267629654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267629708;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_267629708()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2676297EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_267629908;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t sub_2676298A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAE0, &qword_2676D0388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return MEMORY[0x2821BAFD0]();
}

void sub_2676299E0()
{
  OUTLINED_FUNCTION_21_1();
  v80 = v0;
  v81 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v75 = sub_2676CA27C();
  OUTLINED_FUNCTION_3();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_5();
  v72 = v10;
  OUTLINED_FUNCTION_7_3();
  v79 = sub_2676CA10C();
  OUTLINED_FUNCTION_3();
  v71 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_7();
  v68 = v13 - v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_1();
  v70 = v16;
  OUTLINED_FUNCTION_7_3();
  v78 = sub_2676CA19C();
  OUTLINED_FUNCTION_3();
  v69 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_7();
  v66 = v19 - v20;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_1();
  v67 = v22;
  OUTLINED_FUNCTION_7_3();
  v77 = sub_2676CA2DC();
  OUTLINED_FUNCTION_3();
  v65 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_7();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v76 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  OUTLINED_FUNCTION_3();
  v32 = v31;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  v35 = &v62 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  OUTLINED_FUNCTION_4_1(v36);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v37);
  v39 = &v62 - v38;
  v40 = sub_2676CA07C();
  OUTLINED_FUNCTION_3();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_7();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  v49 = v48;
  v74 = v7;
  sub_2676C9B2C();
  sub_2676CA78C();
  (*(v32 + 16))(v35, v80, v30);
  v81(0);
  sub_2676CA76C();
  sub_2676CA30C();

  __swift_storeEnumTagSinglePayload(v39, 0, 1, v40);
  v63 = v49;
  v64 = v42;
  (*(v42 + 32))(v49, v39, v40);
  v50 = v76;
  sub_2676CA2CC();
  (*(v42 + 16))(v46, v49, v40);
  sub_2676CA2BC();
  v51 = v67;
  sub_2676CA18C();
  v52 = v65;
  (*(v65 + 16))(v27, v50, v77);
  sub_2676CA17C();
  v53 = v70;
  sub_2676CA0FC();
  v54 = v69;
  (*(v69 + 16))(v66, v51, v78);
  sub_2676CA0EC();
  v55 = v72;
  sub_2676CA26C();
  v56 = v71;
  (*(v71 + 16))(v68, v53, v79);
  sub_2676CA24C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
  v57 = v73;
  v58 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_2676CDE20;
  v60 = v59 + v58;
  v61 = v75;
  (*(v57 + 16))(v60, v55, v75);
  sub_2676C9B1C();
  (*(v57 + 8))(v55, v61);
  (*(v56 + 8))(v53, v79);
  (*(v54 + 8))(v51, v78);
  (*(v52 + 8))(v76, v77);
  (*(v64 + 8))(v63, v40);
  OUTLINED_FUNCTION_20_1();
}

void sub_267629FE4()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v70 = sub_2676CA27C();
  OUTLINED_FUNCTION_3();
  v68 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_5();
  v67 = v6;
  OUTLINED_FUNCTION_7_3();
  v66 = sub_2676CA2AC();
  OUTLINED_FUNCTION_3();
  v65 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v63 = v9 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_1();
  v64 = v12;
  OUTLINED_FUNCTION_7_3();
  v87 = sub_2676CA19C();
  OUTLINED_FUNCTION_3();
  v83 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_7();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v63 - v19;
  v86 = sub_2676CA22C();
  OUTLINED_FUNCTION_3();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_7();
  v82 = v24 - v25;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_24_1();
  v85 = v27;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18) - 8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  v31 = &v63 - v30;
  v32 = sub_2676CA07C();
  OUTLINED_FUNCTION_3();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_7();
  v81 = v36 - v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24_1();
  v84 = v39;
  v69 = v3;
  sub_2676C9B2C();
  v40 = *(v1 + 16);
  if (v40)
  {
    v41 = v1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v42 = *(v28 + 72);
    v77 = (v34 + 16);
    v78 = (v34 + 32);
    v75 = (v83 + 16);
    v76 = (v22 + 16);
    v73 = (v22 + 8);
    v74 = v83 + 8;
    v71 = v83 + 32;
    v72 = (v34 + 8);
    v43 = MEMORY[0x277D84F90];
    v79 = v42;
    v80 = v17;
    do
    {
      sub_26762ABA4(v41, v31);
      if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
      {
        sub_26762A81C(v31);
      }

      else
      {
        v44 = v84;
        (*v78)(v84, v31, v32);
        v45 = v85;
        sub_2676CA21C();
        (*v77)(v81, v44, v32);
        sub_2676CA20C();
        sub_2676CA18C();
        (*v76)(v82, v45, v86);
        sub_2676CA16C();
        (*v75)(v17, v20, v87);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_15();
          sub_267607544();
          v43 = v53;
        }

        v46 = *(v43 + 16);
        if (v46 >= *(v43 + 24) >> 1)
        {
          OUTLINED_FUNCTION_8_15();
          sub_267607544();
          v43 = v54;
        }

        v47 = v83;
        v48 = v20;
        v49 = v20;
        v50 = v87;
        (*(v83 + 8))(v48, v87);
        (*v73)(v85, v86);
        (*v72)(v84, v32);
        *(v43 + 16) = v46 + 1;
        v51 = v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46;
        v17 = v80;
        v52 = v50;
        v20 = v49;
        (*(v47 + 32))(v51, v80, v52);
        v42 = v79;
      }

      v41 += v42;
      --v40;
    }

    while (v40);
  }

  v55 = v64;
  sub_2676CA29C();
  sub_2676CA28C();
  v56 = v67;
  sub_2676CA26C();
  v57 = v65;
  v58 = v66;
  (*(v65 + 16))(v63, v55, v66);
  sub_2676CA23C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
  v59 = v68;
  v60 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_2676CDE20;
  v62 = v70;
  (*(v59 + 16))(v61 + v60, v56, v70);
  sub_2676C9B1C();
  (*(v59 + 8))(v56, v62);
  (*(v57 + 8))(v55, v58);
  OUTLINED_FUNCTION_20_1();
}

void sub_26762A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v23 = OUTLINED_FUNCTION_4_1(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v27 = v26;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  sub_2676CA3CC();
  sub_2676299E0();
  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26762A81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26762A884()
{
  OUTLINED_FUNCTION_21_1();
  v27[2] = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_4_1(v1);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v2);
  v27[1] = v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAE8, &unk_2676D0390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  *(swift_allocObject() + 16) = xmmword_2676CDE10;
  sub_2676CA78C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  sub_2676CA3AC();
  sub_2676CB9FC();
  sub_2676CA76C();
  sub_2676CA30C();

  sub_2676CA07C();
  OUTLINED_FUNCTION_8_15();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v9);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
  sub_2676CA3CC();
  sub_2676CBA6C();
  sub_2676CA76C();
  sub_2676CA30C();

  OUTLINED_FUNCTION_8_15();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_267629FE4();
  swift_setDeallocating();
  sub_2675FBBB4();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_26762ABA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762AC20()
{
  v0 = sub_2676CA2EC();
  if (sub_267630B8C())
  {
    sub_267692C1C();
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D5FE0E0](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for NoResults(uint64_t a1)
{
  result = qword_2801CCAF0;
  if (!qword_2801CCAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26762AD3C(uint64_t a1)
{
  sub_2675FEE64();
  if (v1 <= 0x3F)
  {
    sub_2675FEEB4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26762ADD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2676C90FC();
  v2[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  v2[7] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v2[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  v2[9] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[10] = v8;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = sub_2676C9DDC();
  v2[13] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v2[14] = v10;
  v2[15] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v11);
  v2[16] = OUTLINED_FUNCTION_2_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v12);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26762AFE0, 0, 0);
}

uint64_t sub_26762AFE0()
{
  v1 = v0[3];
  sub_2676CB33C();
  swift_allocObject();
  v0[19] = sub_2676CB32C();
  if (*(v1 + 40))
  {
    v2 = v0[18];
    sub_2676CB21C();
    swift_allocObject();
    sub_2676CB20C();
    sub_2676CB1EC();

    sub_2676CBFEC();
    v3 = sub_2676CB3FC();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    sub_2676CB1DC();

    sub_2675E3BB8(v2);
    sub_2676CB2AC();
  }

  v4 = v0[3];
  if (*(v4 + 24))
  {
    sub_2676CB2CC();

    v4 = v0[3];
  }

  sub_2676CB28C();
  v5 = type metadata accessor for NoResults(0);
  v6 = sub_2675FFBC4(v4 + *(v5 + 28));
  v0[20] = v6;
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[21] = sub_2676CB42C();
  if (*(v4 + 8))
  {
    sub_2676CBFEC();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v0[17];
  v9 = v0[3];
  v10 = sub_2676CB3FC();
  __swift_storeEnumTagSinglePayload(v8, v7, 1, v10);
  v11 = 0;
  v0[22] = sub_2676CB31C();
  if ((*(v9 + *(v5 + 32)) & 1) == 0)
  {

    v11 = v6;
  }

  v0[23] = v11;
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_26762B2A0;

  return sub_26765350C();
}

uint64_t sub_26762B2A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 200) = v1;

  v7 = *(v4 + 136);
  if (v1)
  {
    sub_2675E3BB8(v7);

    v8 = sub_26762B910;
  }

  else
  {
    *(v5 + 208) = a1;
    sub_2675E3BB8(v7);

    v8 = sub_26762B454;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26762B454(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[8];
  v8 = v1[5];
  v7 = v1[6];
  v16 = v1[7];
  v17 = v1[4];
  v19 = v1[26];
  sub_2676C997C();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v6);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v8 + 8))(v7, v17);
  sub_2676C9D5C();
  (*(v5 + 8))(v3, v4);
  sub_2676C9B9C();
  swift_allocObject();
  v1[27] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v10 = swift_allocObject();
  v1[28] = v10;
  *(v10 + 16) = xmmword_2676CD5C0;
  *(v10 + 32) = v19;
  v18 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v11 = v19;
  v12 = swift_task_alloc();
  v1[29] = v12;
  *v12 = v1;
  v12[1] = sub_26762B6D0;
  v13 = v1[15];
  v14 = v1[2];

  return v18(v14, v10, v13);
}

uint64_t sub_26762B6D0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_26762B7FC, 0, 0);
}

uint64_t sub_26762B7FC()
{
  v1 = v0[26];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_26762B910()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26762B9FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2675FE274;

  return sub_26762ADD8(a1);
}

uint64_t type metadata accessor for OfferToContinueReading(uint64_t a1)
{
  result = qword_2801CCB00;
  if (!qword_2801CCB00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26762BB08(uint64_t a1)
{
  sub_2675F9EB0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_26762BB7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFC8, &unk_2676CD9B0);
  OUTLINED_FUNCTION_4_1(v3);
  v2[4] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v4);
  v2[5] = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC430, &unk_2676D0440);
  v2[6] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v2[7] = v6;
  v2[8] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C90FC();
  v2[9] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v2[10] = v8;
  v2[11] = OUTLINED_FUNCTION_2_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v9);
  v2[12] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v10);
  v2[13] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676C99CC();
  v2[14] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v2[15] = v12;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v13 = sub_2676C9DDC();
  v2[18] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v2[19] = v14;
  v2[20] = OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  OUTLINED_FUNCTION_4_1(v15);
  v2[21] = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v16);
  v2[22] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_26762BE20, 0, 0);
}

uint64_t sub_26762BE20()
{
  v1 = v0[21];
  v2 = v0[3];
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  v0[23] = sub_2676CB42C();
  sub_26762C6CC(v2, v1);
  v3 = sub_2676C8C8C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v3);
  v5 = v0[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_26762C73C(v0[21]);
    v6 = 0;
  }

  else
  {
    v6 = sub_267626550();
    (*(*(v3 - 8) + 8))(v5, v3);
  }

  v0[24] = v6;
  v7 = v0[3];
  v8 = *(v7 + *(type metadata accessor for OfferToContinueReading(0) + 20));
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_26762BF8C;

  return sub_2676539A0(v6, v8);
}

uint64_t sub_26762BF8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 208) = a1;

    return MEMORY[0x2822009F8](sub_26762C1B0, 0, 0);
  }
}

uint64_t sub_26762C1B0(uint64_t a1)
{
  v2 = v1[20];
  v21 = v1[19];
  v3 = v1[17];
  v22 = v1[26];
  v23 = v1[18];
  v4 = v1[15];
  v5 = v1[16];
  v7 = v1[13];
  v6 = v1[14];
  v8 = v1[12];
  v24 = v1[11];
  v9 = v1[10];
  v17 = v1[8];
  v18 = v1[7];
  v19 = v1[6];
  v15 = v1[9];
  v16 = v1[5];
  v20 = v1[4];
  sub_2676C999C();
  (*(v4 + 16))(v5, v3, v6);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v7);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v10 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v9 + 8))(v24, v15);
  sub_2676C9D5C();
  sub_2676C9DAC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v11);
  sub_2676CA3AC();
  sub_2676299B8(v17);
  (*(v18 + 8))(v17, v19);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_2676C9D8C();
  (*(v4 + 8))(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2676CD5C0;
  *(v12 + 32) = v22;
  (*(v21 + 16))(v20, v2, v23);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v23);
  sub_2676C9AAC();
  (*(v21 + 8))(v2, v23);

  v13 = v1[1];

  return v13();
}

uint64_t sub_26762C540(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26762C5D8;

  return sub_26762BB7C(a1);
}

uint64_t sub_26762C5D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26762C6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762C73C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE8, &unk_2676CD9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_26762C7B8(uint64_t a1, int a2)
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

uint64_t sub_26762C7F8(uint64_t result, int a2, int a3)
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

uint64_t sub_26762C854()
{
  OUTLINED_FUNCTION_3_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2676C90FC();
  v1[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_2_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  v1[7] = OUTLINED_FUNCTION_2_0();
  sub_2676CAF8C();
  v1[8] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676C99CC();
  v1[9] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[10] = v6;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_2676C9DDC();
  v1[13] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_2_0();
  sub_2676CB48C();
  v1[16] = OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2822009F8](sub_26762CA24, 0, 0);
}

uint64_t sub_26762CA24()
{
  OUTLINED_FUNCTION_3_0();
  type metadata accessor for ReadMailCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 136) = sub_2676CB42C();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_26762CADC;

  return sub_267653C44();
}

uint64_t sub_26762CADC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v4 + 152) = v1;

  if (v1)
  {
    v7 = sub_2675FE118;
  }

  else
  {

    *(v4 + 160) = a1;
    v7 = sub_26762CC04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_26762CC04(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[6];
  v20 = v1[5];
  v21 = v1[4];
  sub_2676C999C();
  (*(v5 + 16))(v2, v3, v4);
  sub_2676C9D2C();
  sub_2676C9D6C();
  sub_26762D4C8(v7);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v9 = sub_2676C9B3C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_2676C9D8C();
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v20 + 8))(v8, v21);
  sub_2676C9D5C();
  v10 = sub_2676C9DAC();
  sub_26762A67C(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v1);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v9);
  sub_2676C9D8C();
  (*(v5 + 8))(v3, v4);
  v18 = swift_task_alloc();
  v1[21] = v18;
  *v18 = v1;
  v18[1] = sub_26762CE60;

  JUMPOUT(0x26763C648);
}

uint64_t sub_26762CE60()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2675FE030, 0, 0);
}

uint64_t sub_26762CF50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26762D204;

  return sub_26762C854();
}

uint64_t sub_26762CFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26762D204;

  return MEMORY[0x2821BB1F8](a1, a2, a3);
}

uint64_t sub_26762D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2675DFCCC;

  return MEMORY[0x2821BB1E8](a1, a2, a3);
}

uint64_t sub_26762D150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26762D204;

  return MEMORY[0x2821BB1F0](a1, a2, a3);
}

uint64_t sub_26762D208()
{
  v1 = sub_2676C8E9C();
  MEMORY[0x28223BE20](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_2676C8EBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26762D3F0(v0, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_26762D460(v4);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_2676C8E8C();
    sub_2675E362C();
    v9 = sub_2676CC08C();
    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_26762D3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26762D460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFE0, &qword_2676D1070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26762D4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB10, &qword_2676D04E8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_2676CAF5C();
  if (sub_2676CAF3C())
  {
    sub_2676CAF1C();

    sub_2676CBDAC();

    v5 = sub_2676CAF8C();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a1, v4, v5);
  }

  else
  {
    v7 = sub_2676CAF8C();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_2676CAF4C();
    sub_2676CAF1C();

    sub_2676CBDAC();

    result = __swift_getEnumTagSinglePayload(v4, 1, v7);
    if (result != 1)
    {
      return sub_26762D644(v4);
    }
  }

  return result;
}

uint64_t sub_26762D644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB10, &qword_2676D04E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26762D6AC()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 216) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2676C90FC();
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_1_0(v3);
  *(v0 + 56) = v4;
  *(v0 + 64) = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  *(v0 + 72) = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  *(v0 + 80) = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  *(v0 + 88) = v7;
  OUTLINED_FUNCTION_1_0(v7);
  *(v0 + 96) = v8;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v9 = sub_2676C9DDC();
  *(v0 + 120) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  *(v0 + 128) = v10;
  *(v0 + 136) = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v11);
  *(v0 + 144) = OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26762D86C()
{
  OUTLINED_FUNCTION_3_0();
  if (*(v0 + 216))
  {
    v1 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v1 = OUTLINED_FUNCTION_24(v2);
    *(v1 + 16) = xmmword_2676CD5C0;
    sub_2675E5E30(0, &qword_2801CCB30, 0x277D47A50);
    *(v1 + 32) = sub_26762DFA4();
  }

  *(v0 + 152) = v1;
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 160) = sub_2676CB42C();
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_26762D984;

  return sub_2676943D0();
}

uint64_t sub_26762D984()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_12(v4);
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = sub_26762DED8;
  }

  else
  {

    v7 = sub_26762DA8C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26762DA8C(uint64_t a1)
{
  v4 = v1[19];
  sub_2676C999C();
  if (v4 >> 62)
  {
    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_11_16();
    sub_2676CC4DC();
    OUTLINED_FUNCTION_15_10();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_2676CC5AC();

    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
  }

  OUTLINED_FUNCTION_3_14();
  v5 = OUTLINED_FUNCTION_14_10();
  v6(v5);
  OUTLINED_FUNCTION_2_18();
  sub_2676C9D6C();
  sub_26762D4C8(v3);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v7 = sub_2676C9B3C();
  OUTLINED_FUNCTION_17_10(v7);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v8 = OUTLINED_FUNCTION_9_14();
  v9(v8);
  OUTLINED_FUNCTION_11_16();
  sub_2676C9D5C();
  (*(v2 + 8))();
  sub_2676C9B9C();
  swift_allocObject();
  v1[24] = sub_2676C9B8C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v11 = OUTLINED_FUNCTION_24(v10);
  v1[25] = v11;
  *(v11 + 16) = xmmword_2676CD5C0;
  *(v11 + 32) = v16;
  OUTLINED_FUNCTION_16_7();
  v12 = swift_task_alloc();
  v1[26] = v12;
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_7_15(v12);

  return v14(v13);
}

uint64_t sub_26762DCD4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26762DDF0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26762DED8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_26762DFA4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47A50]) init];
  sub_2675E5E30(0, &qword_2801CCB40, 0x277CCABB0);
  v1 = v0;
  v2 = sub_2676CC2CC();
  [v1 setTimerValue_];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v4 = OUTLINED_FUNCTION_24(v3);
  *(v4 + 16) = xmmword_2676CD5C0;
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  v5 = OUTLINED_FUNCTION_11_16();
  sub_26762E900(v5, v6);

  return v1;
}

uint64_t sub_26762E07C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267629708;

  return sub_26762D6AC();
}

uint64_t sub_26762E11C()
{
  OUTLINED_FUNCTION_3_0();
  *(v0 + 216) = v1;
  *(v0 + 40) = v2;
  v3 = sub_2676C90FC();
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_1_0(v3);
  *(v0 + 56) = v4;
  *(v0 + 64) = OUTLINED_FUNCTION_2_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v5);
  *(v0 + 72) = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  *(v0 + 80) = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676C99CC();
  *(v0 + 88) = v7;
  OUTLINED_FUNCTION_1_0(v7);
  *(v0 + 96) = v8;
  *(v0 + 104) = swift_task_alloc();
  *(v0 + 112) = swift_task_alloc();
  v9 = sub_2676C9DDC();
  *(v0 + 120) = v9;
  OUTLINED_FUNCTION_1_0(v9);
  *(v0 + 128) = v10;
  *(v0 + 136) = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v11);
  *(v0 + 144) = OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26762E2DC()
{
  OUTLINED_FUNCTION_3_0();
  if (*(v0 + 216))
  {
    v1 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v1 = OUTLINED_FUNCTION_24(v2);
    *(v1 + 16) = xmmword_2676CD5C0;
    sub_2675E5E30(0, &qword_2801CCB30, 0x277D47A50);
    *(v1 + 32) = sub_26762DFA4();
  }

  *(v0 + 152) = v1;
  type metadata accessor for SendMailCATsSimple(0);
  sub_2676CB47C();
  *(v0 + 160) = sub_2676CB42C();
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  *v3 = v0;
  v3[1] = sub_26762E3F4;

  return sub_267694318();
}

uint64_t sub_26762E3F4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_12(v4);
  v5 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    v7 = sub_26762EB08;
  }

  else
  {

    v7 = sub_26762E4FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26762E4FC(uint64_t a1)
{
  v4 = v1[19];
  sub_2676C999C();
  if (v4 >> 62)
  {
    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
    OUTLINED_FUNCTION_15_10();

    OUTLINED_FUNCTION_11_16();
    sub_2676CC4DC();
    OUTLINED_FUNCTION_15_10();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    sub_2676CC5AC();

    sub_2675E5E30(0, &qword_2801CCB38, 0x277D471B0);
  }

  OUTLINED_FUNCTION_3_14();
  v5 = OUTLINED_FUNCTION_14_10();
  v6(v5);
  OUTLINED_FUNCTION_2_18();
  sub_2676C9D6C();
  sub_26762D4C8(v3);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v7 = sub_2676C9B3C();
  OUTLINED_FUNCTION_17_10(v7);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v8 = OUTLINED_FUNCTION_9_14();
  v9(v8);
  OUTLINED_FUNCTION_11_16();
  sub_2676C9D5C();
  (*(v2 + 8))();
  sub_2676C9B9C();
  swift_allocObject();
  v1[24] = sub_2676C9B8C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v11 = OUTLINED_FUNCTION_24(v10);
  v1[25] = v11;
  *(v11 + 16) = xmmword_2676CD5C0;
  *(v11 + 32) = v16;
  OUTLINED_FUNCTION_16_7();
  v12 = swift_task_alloc();
  v1[26] = v12;
  *v12 = v1;
  v13 = OUTLINED_FUNCTION_7_15(v12);

  return v14(v13);
}

uint64_t sub_26762E744()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26762E860()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267629908;

  return sub_26762E11C();
}

void sub_26762E900(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB48, &qword_2676D0500);
  v3 = sub_2676CC0EC();

  [a2 setCommands_];
}

uint64_t getEnumTagSinglePayload for ReplyPromptInterpreter(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_26762EA28(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_18()
{

  return sub_2676C9D2C();
}

uint64_t OUTLINED_FUNCTION_13_12(uint64_t result)
{
  v1[2] = v3;
  v1[3] = result;
  v1[4] = v2;
  return result;
}

id OUTLINED_FUNCTION_16_7()
{

  return v0;
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t sub_26762EC3C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2676CC4EC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_26762EC60(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2676CC4EC())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v14 = MEMORY[0x277D84F90];
    sub_2676CC46C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D5FE0E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_2676CC44C();
      sub_2676CC47C();
      sub_2676CC48C();
      sub_2676CC45C();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_26762EDE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v68 - v3;
  v4 = sub_2676CA0DC();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2676CA19C();
  v73 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v70 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v68 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = &v68 - v12;
  v13 = sub_2676C9EBC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v77 = (&v68 - v18);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  v21 = sub_2676CA00C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v14 + 16);
  v78 = v1;
  v26 = v1;
  v27 = v25;
  v25(v20, v26, v13);
  if ((*(v14 + 88))(v20, v13) != *MEMORY[0x277D5C160])
  {
    (*(v14 + 8))(v20, v13);
    goto LABEL_5;
  }

  v69 = v27;
  (*(v14 + 96))(v20, v13);
  v22[4](v24, v20, v21);
  sub_2676C9FFC();
  v28 = sub_2676CA0CC();
  (*(v75 + 8))(v6, v76);
  v29 = v79;
  sub_267698E5C(v28);

  if (__swift_getEnumTagSinglePayload(v29, 1, v7) == 1)
  {
    (v22[1])(v24, v21);
    sub_2675E35CC(v79, &qword_2801CC148, &unk_2676CDD90);
    v27 = v69;
LABEL_5:
    v30 = v77;
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v31 = sub_2676CBE4C();
    __swift_project_value_buffer(v31, qword_2801CDC90);
    v27(v30, v78, v13);
    v32 = sub_2676CBE2C();
    v33 = sub_2676CC24C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v81[0] = v35;
      *v34 = 136315138;
      v27(v74, v30, v13);
      v36 = sub_2676CBFBC();
      v38 = v37;
      (*(v14 + 8))(v30, v13);
      v39 = sub_2676B0B84(v36, v38, v81);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2675D4000, v32, v33, "Cannot extract task: USO parse has no UDAs. %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D5FEA80](v35, -1, -1);
      MEMORY[0x26D5FEA80](v34, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v30, v13);
    }

    return 0;
  }

  v40 = v7;
  v78 = v24;
  v41 = v22;
  v43 = v72;
  v42 = v73;
  (*(v73 + 32))(v72, v79, v7);
  if ((sub_2676CA11C() & 1) == 0)
  {
    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v58 = sub_2676CBE4C();
    __swift_project_value_buffer(v58, qword_2801CDC90);
    v59 = sub_2676CBE2C();
    v60 = sub_2676CC24C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2675D4000, v59, v60, "User dialog act does not have a user stated task", v61, 2u);
      MEMORY[0x26D5FEA80](v61, -1, -1);
    }

    (*(v42 + 8))(v43, v40);
    (v41[1])(v78, v21);
    return 0;
  }

  v64 = sub_2676CA2EC();
  v65 = sub_267630B8C();
  v66 = v71;
  if (!v65)
  {

    if (qword_2801CBAA0 != -1)
    {
      swift_once();
    }

    v44 = sub_2676CBE4C();
    __swift_project_value_buffer(v44, qword_2801CDC90);
    v45 = *(v42 + 16);
    v45(v66, v43, v40);
    v46 = sub_2676CBE2C();
    v47 = sub_2676CC24C();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v79 = v21;
      v77 = v22;
      v49 = v48;
      v76 = swift_slowAlloc();
      v81[0] = v76;
      *v49 = 136315138;
      v45(v70, v66, v40);
      v50 = sub_2676CBFBC();
      v51 = v66;
      v52 = v40;
      v54 = v53;
      v55 = *(v42 + 8);
      v55(v51, v52);
      v56 = sub_2676B0B84(v50, v54, v81);

      *(v49 + 4) = v56;
      _os_log_impl(&dword_2675D4000, v46, v47, "Cannot extract task: UDA -> Task conversion failed. %s", v49, 0xCu);
      v57 = v76;
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x26D5FEA80](v57, -1, -1);
      MEMORY[0x26D5FEA80](v49, -1, -1);

      v55(v43, v52);
      v77[1](v78, v79);
    }

    else
    {

      v62 = *(v42 + 8);
      v62(v66, v40);
      v62(v43, v40);
      (v22[1])(v78, v21);
    }

    return 0;
  }

  sub_267692C1C();
  if ((v64 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D5FE0E0](0, v64);
  }

  else
  {
  }

  v67 = v78;

  sub_2676CA56C();

  (*(v42 + 8))(v43, v40);
  (v41[1])(v67, v21);
  if (!v81[3])
  {
    sub_2675E35CC(v81, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA5FC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v80;
}

uint64_t sub_26762F80C(uint64_t a1)
{
  v1 = a1;
  v2 = sub_2676CA43C();
  OUTLINED_FUNCTION_3();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_2();
  v8 = v7 - v6;
  v9 = *(v4 + 104);
  v9(v7 - v6, *MEMORY[0x277D5E478], v2);
  v10 = sub_2676308A4(v1);
  v17 = v8;
  v11 = sub_2676A2650(sub_267630B6C, v16, v10);

  v12 = *(v4 + 8);
  v12(v8, v2);
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v9(v8, *MEMORY[0x277D5E470], v2);
    v14 = sub_2676308A4(v1);
    MEMORY[0x28223BE20](v14);
    *&v16[-16] = v8;
    v13 = sub_2676A2650(sub_267630B90, &v16[-32], v14);

    v12(v8, v2);
  }

  return v13 & 1;
}

uint64_t sub_26762F9E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_2676308A4(a1);
  v11[2] = a2;
  v4 = sub_26762EC60(sub_267630B4C, v11, v3);

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v8 = *(v4 + 16);
  while (1)
  {
    if (v8 == v6)
    {

      return v7;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    if (*(v4 + 8 * v6++ + 32))
    {

      MEMORY[0x26D5FDDA0](v10);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2676CC11C();
      }

      result = sub_2676CC15C();
      v7 = v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26762FB04@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  MEMORY[0x28223BE20](v1 - 8);
  v74 = &v61 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v61 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v61 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB50, &qword_2676D05A8);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v61 - v27;
  if (sub_2676CA4DC())
  {
    v71 = v25;
    sub_2676CA38C();
    sub_2676CA66C();
    sub_2676CA5AC();

    if (v76)
    {

      v29 = sub_2676CB80C();
      v72 = v28;
      __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
      v30 = sub_2676CA6BC();
      v67 = v31;
      v68 = v30;
      v32 = sub_2676CA6CC();
      v65 = v33;
      v66 = v32;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
      v70 = v19;
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v69);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v64);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v63);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
      v35 = v73;
      v62 = v34;
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v34);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v61);
      v36 = v13;
      v37 = v10;
      v38 = v7;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v39);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v40);
      v42 = v70;
      v41 = v71;
      sub_2676CA7BC();
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v39);
      __swift_storeEnumTagSinglePayload(v42, 1, 1, v69);
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v64);
      __swift_storeEnumTagSinglePayload(v36, 1, 1, v63);
      __swift_storeEnumTagSinglePayload(v37, 1, 1, v62);
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v61);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
      __swift_storeEnumTagSinglePayload(v74, 1, 1, v43);
      __swift_storeEnumTagSinglePayload(v35, 1, 1, v40);
      v44 = v75;
      sub_2676CA7DC();

      v45 = v44;
      v46 = 0;
      v47 = v43;
      return __swift_storeEnumTagSinglePayload(v45, v46, 1, v47);
    }

    v25 = v71;
  }

  v48 = sub_2676CA4EC();
  if (v49)
  {
    v71 = v48;
    v50 = sub_2676CB80C();
    v72 = v28;
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v50);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v51);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v52);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v53);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v54);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v55);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v56);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    __swift_storeEnumTagSinglePayload(v74, 1, 1, v57);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
    __swift_storeEnumTagSinglePayload(v73, 1, 1, v58);
    v59 = v75;
    sub_2676CA7DC();
    v45 = v59;
    v46 = 0;
    v47 = v57;
  }

  else
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
    v45 = v75;
    v46 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v45, v46, 1, v47);
}

uint64_t sub_26763035C(int a1, unsigned int *a2)
{
  LODWORD(v63) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v58 = v5;
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v62 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - v12;
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v14;
  v15 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_2();
  v21 = v20 - v19;
  v22 = sub_2676CA43C();
  OUTLINED_FUNCTION_3();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3_2();
  v28 = v27 - v26;
  (*(v24 + 104))(v27 - v26, *a2, v22);
  v29 = sub_26762F9E8(v63, v28);
  (*(v24 + 8))(v28, v22);
  v55 = v17;
  v56 = v15;
  v30 = *(v17 + 16);
  v63 = v21;
  v30(v21, v2, v15);
  v31 = sub_26762EC3C(v29);
  if (!v31)
  {

    v35 = MEMORY[0x277D84F90];
LABEL_14:
    (*(v55 + 8))(v63, v56);
    v40 = *(v35 + 16);
    v41 = v59;
    if (v40)
    {
      OUTLINED_FUNCTION_4_5();
      v43 = v35 + v42;
      v45 = *(v44 + 72);
      v46 = (v58 + 32);
      v47 = MEMORY[0x277D84F90];
      do
      {
        v48 = v60;
        sub_2675F6744(v43, v60);
        sub_2675F66D4(v48, v10);
        if (__swift_getEnumTagSinglePayload(v10, 1, v41) == 1)
        {
          sub_2675E35CC(v10, &qword_2801CC168, &unk_2676CF510);
        }

        else
        {
          v49 = *v46;
          (*v46)(v61, v10, v41);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_267606BD8();
            v47 = v53;
          }

          v50 = *(v47 + 16);
          if (v50 >= *(v47 + 24) >> 1)
          {
            sub_267606BD8();
            v47 = v54;
          }

          *(v47 + 16) = v50 + 1;
          v41 = v59;
          OUTLINED_FUNCTION_4_5();
          v49((v47 + v51 + *(v52 + 72) * v50), v61, v41);
        }

        v43 += v45;
        --v40;
      }

      while (v40);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v47;
  }

  v32 = v31;
  v64 = MEMORY[0x277D84F90];
  result = sub_2676C2A88(0, v31 & ~(v31 >> 63), 0);
  if (v32 < 0)
  {
    goto LABEL_29;
  }

  v34 = 0;
  v35 = v64;
  v57 = v29 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D5FE0E0](v34, v29);
      goto LABEL_9;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *(v57 + 16))
    {
      goto LABEL_28;
    }

LABEL_9:
    sub_26762FB04(v13);

    v64 = v35;
    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_2676C2A88((v36 > 1), v37 + 1, 1);
      v35 = v64;
    }

    ++v34;
    *(v35 + 16) = v37 + 1;
    OUTLINED_FUNCTION_4_5();
    result = sub_2675F66D4(v13, v35 + v38 + *(v39 + 72) * v37);
    if (v32 == v34)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2676308A4(char a1)
{
  v2 = sub_26762EDE0();
  if (a1)
  {
    if (a1 == 1)
    {
      if (!v2)
      {
        goto LABEL_13;
      }

      sub_2676CA50C();

      if (!v6)
      {
        goto LABEL_13;
      }

      v3 = sub_2676CA53C();
    }

    else
    {
      if (!v2)
      {
        goto LABEL_13;
      }

      sub_2676CA50C();

      if (!v6)
      {
        goto LABEL_13;
      }

      v3 = sub_2676CA54C();
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_13;
    }

    sub_2676CA50C();

    if (!v6)
    {
      goto LABEL_13;
    }

    v3 = sub_2676CA51C();
  }

  v4 = v3;

  if (!v4)
  {
LABEL_13:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_267630970()
{
  result = sub_2676CA47C();
  if (result)
  {
    v1 = sub_2676CA49C();
    v3 = v2;
    v4 = sub_2676CA42C();
    if (v3)
    {
      if (v1 == v4 && v3 == v5)
      {

        return 1;
      }

      v7 = sub_2676CC59C();

      if (v7)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_267630A54@<X0>(void *a1@<X8>)
{
  result = sub_2676CA47C();
  if (result)
  {
    v3 = sub_2676CA49C();
    v5 = v4;
    v6 = sub_2676CA42C();
    if (v5)
    {
      if (v3 == v6 && v5 == v7)
      {

LABEL_13:
        sub_2676CA4AC();

        v10 = v11;
        goto LABEL_14;
      }

      v9 = sub_2676CC59C();

      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v10 = 0;
LABEL_14:
  *a1 = v10;
  return result;
}

void sub_267630BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v21);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_9_1();
  v399 = v23;
  v396 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v401 = v24;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_9_1();
  v388 = v26;
  OUTLINED_FUNCTION_7_3();
  v368 = sub_2676CB71C();
  OUTLINED_FUNCTION_3();
  v376 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v29);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB58, &qword_2676D05B8);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB60, &qword_2676D05C0);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2801CCB68, &qword_2676D05C8);
  OUTLINED_FUNCTION_4_1(v37);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB70, &qword_2676D05D0);
  OUTLINED_FUNCTION_3();
  v383 = v41;
  v384 = v40;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v43);
  v393 = sub_2676CB6CC();
  OUTLINED_FUNCTION_3();
  v395 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v46);
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB78, &qword_2676D05D8);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_10_4();
  v389 = v49;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB80, &unk_2676D2A90);
  v53 = OUTLINED_FUNCTION_4_1(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_10_4();
  v385 = v58;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_10_4();
  v386 = v60;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v66 = OUTLINED_FUNCTION_4_1(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_4();
  v391 = v68;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v70);
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_3();
  v397 = v71;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_4();
  v398 = v74;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  OUTLINED_FUNCTION_4_1(v77);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_108();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2801CCB88, &qword_2676D05E0);
  OUTLINED_FUNCTION_4_1(v79);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v80);
  v82 = v362 - v81;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB90, &qword_2676D05E8);
  OUTLINED_FUNCTION_3();
  v390 = v83;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_9_1();
  v394 = v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_4_1(v86);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v87);
  v89 = v362 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3();
  v92 = v91;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v93);
  v95 = v362 - v94;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC658, &qword_2676D45A0);
  sub_267638E90(&qword_2801CC670, MEMORY[0x277D5C808], MEMORY[0x277D5C7F0]);
  sub_267638E90(&qword_2801CBF68, MEMORY[0x277D5C8D8], MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_65_0();
  v96 = v90;
  sub_2676CA3EC();

  OUTLINED_FUNCTION_17_11(v89);
  if (v103)
  {
    sub_2675EB7EC(v89, &qword_2801CC428, &unk_2676CEDD0);
    goto LABEL_60;
  }

  v364 = v92;
  v97 = OUTLINED_FUNCTION_73_0();
  v98(v97);
  v99 = OUTLINED_FUNCTION_61_0();
  MEMORY[0x26D5FC5D0](v99);
  sub_2676CB53C();
  OUTLINED_FUNCTION_41_2();
  v102 = sub_267638E90(v100, v101, MEMORY[0x277D5C3D0]);
  sub_2676CA8EC();
  OUTLINED_FUNCTION_21_3(v82, 1, v400);
  v387 = v90;
  v403 = v95;
  v104 = v20;
  if (v103)
  {
    sub_2675EB7EC(v82, &off_2801CCB88, &qword_2676D05E0);
    v381 = 0;
    v105 = v401;
    v106 = v402;
    v107 = v398;
    v108 = v399;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_14_11();
  v109();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_16();
  sub_267638E90(v110, v111, MEMORY[0x277D5C570]);
  v112 = v379;
  OUTLINED_FUNCTION_88_0();
  sub_2676CA87C();

  v113 = v402;
  OUTLINED_FUNCTION_21_3(v112, 1, v402);
  if (v114)
  {
    sub_2675EB7EC(v112, &qword_2801CC048, &qword_2676CDAB0);
    v115 = 0;
    OUTLINED_FUNCTION_91_0();
    v116 = v383;
    v117 = v400;
    goto LABEL_20;
  }

  v362[1] = v102;
  v363 = v20;
  v118 = v397;
  OUTLINED_FUNCTION_57_2();
  v119 = OUTLINED_FUNCTION_112();
  v120(v119, v112, v113);
  swift_getKeyPath();
  v20 = v374;
  sub_2676CA84C();

  v121 = OUTLINED_FUNCTION_65_1();
  v122 = v393;
  v123(v121);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v122);
  v127 = *(v392 + 48);
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v128, v129, v130, v131);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v132, v133, v134, v135);
  OUTLINED_FUNCTION_15_11(v112);
  if (!v136)
  {
    v144 = v118;
    v20 = v113;
    sub_2675F95E4(v112, v366, &qword_2801CCB80, &unk_2676D2A90);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v112 + v127, 1, v122);
    v146 = v395;
    v116 = v383;
    v143 = v112;
    if (EnumTagSinglePayload != 1)
    {
      v155 = v371;
      (*(v395 + 32))(v371, v112 + v127, v122);
      OUTLINED_FUNCTION_0_18();
      sub_267638E90(v156, v157, MEMORY[0x277D5C588]);
      v158 = sub_2676CBF1C();
      v159 = *(v146 + 8);
      v159(v155, v122);
      v20 = &unk_2676D2A90;
      OUTLINED_FUNCTION_69_0();
      sub_2675EB7EC(v160, v161, v162);
      OUTLINED_FUNCTION_66_1();
      OUTLINED_FUNCTION_69_0();
      sub_2675EB7EC(v163, v164, v165);
      v115 = v158;
      (*(v144 + 8))(v373, v402);
      v159(v366, v122);
      v166 = OUTLINED_FUNCTION_58_1();
      sub_2675EB7EC(v166, v167, &unk_2676D2A90);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v147, v148, v149);
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v150, v151, v152);
    (*(v144 + 8))(v373, v113);
    v153 = OUTLINED_FUNCTION_85_0();
    v154(v153);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v137, v138, v139);
  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v140, v141, v142);
  (*(v118 + 8))(v89, v113);
  OUTLINED_FUNCTION_15_11(v112 + v127);
  v116 = v383;
  v143 = v112;
  if (!v103)
  {
LABEL_17:
    sub_2675EB7EC(v143, &qword_2801CCB78, &qword_2676D05D8);
    v115 = 0;
    goto LABEL_19;
  }

  sub_2675EB7EC(v112, &qword_2801CCB80, &unk_2676D2A90);
  v115 = 1;
LABEL_19:
  v104 = v363;
  OUTLINED_FUNCTION_91_0();
  v117 = v400;
LABEL_20:
  swift_getKeyPath();
  OUTLINED_FUNCTION_42_1();
  sub_267638E90(v168, v169, MEMORY[0x277D5C5E0]);
  v170 = v380;
  v171 = v394;
  sub_2676CA87C();

  v172 = v384;
  OUTLINED_FUNCTION_21_3(v170, 1, v384);
  v381 = v115;
  if (!v103)
  {
    v173 = v116;
    OUTLINED_FUNCTION_57_2();
    v174 = v375;
    v175(v375, v170, v172);
    KeyPath = swift_getKeyPath();
    sub_2676CA84C();

    OUTLINED_FUNCTION_127();
    v177 = OUTLINED_FUNCTION_112();
    v178 = v368;
    v179(v177);
    v180 = OUTLINED_FUNCTION_29_5();
    __swift_storeEnumTagSinglePayload(v180, v181, v182, v178);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v183, v184, v185, v186);
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v187, v188, v189, v190);
    OUTLINED_FUNCTION_15_11(v20);
    if (v191)
    {
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v192, v193, v194);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v195, v196, v197);
      (*(v173 + 8))(v174, v384);
      v198 = OUTLINED_FUNCTION_54_2();
      v199(v198);
      OUTLINED_FUNCTION_15_11(v20 + KeyPath);
      v105 = v401;
      v108 = v399;
      if (v103)
      {
        sub_2675EB7EC(v20, &qword_2801CCB60, &qword_2676D05C0);
        v381 = 1;
LABEL_33:
        v96 = v387;
        v107 = v398;
        goto LABEL_34;
      }
    }

    else
    {
      OUTLINED_FUNCTION_131(v20, &qword_2801CCB60, &qword_2676D05C0, &v392);
      OUTLINED_FUNCTION_15_11(v20 + KeyPath);
      if (!v200)
      {
        OUTLINED_FUNCTION_80();
        v319 = OUTLINED_FUNCTION_65_1();
        v320(v319);
        OUTLINED_FUNCTION_39_2();
        sub_267638E90(v321, v322, MEMORY[0x277D5C5F8]);
        OUTLINED_FUNCTION_63_0();
        v323 = sub_2676CBF1C();
        v324 = v104;
        v325 = off_2801CCB68;
        v326 = OUTLINED_FUNCTION_68_0();
        v325(v326);
        OUTLINED_FUNCTION_70_0();
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v327, v328, v329);
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v330, v331, v332);
        v333 = OUTLINED_FUNCTION_123();
        v334(v333);
        v335 = OUTLINED_FUNCTION_54_2();
        v336(v335);
        (v325)(v117, v178);
        v104 = v324;
        v337 = v381;
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v338, v339, v340);
        v381 = v323 | v337;
        v96 = v387;
        v107 = v398;
        v105 = v401;
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_70_0();
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v201, v202, v203);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v204, v205, v206);
      v207 = OUTLINED_FUNCTION_123();
      v208(v207);
      v209 = OUTLINED_FUNCTION_54_2();
      v210(v209);
      OUTLINED_FUNCTION_27_5();
      v211(v117, v178);
      v105 = v401;
      v108 = v399;
    }

    sub_2675EB7EC(v20, &qword_2801CCB58, &qword_2676D05B8);
    goto LABEL_33;
  }

  (*(v390 + 8))(v171, v117);
  sub_2675EB7EC(v170, &off_2801CCB68, &qword_2676D05C8);
  v105 = v401;
  v96 = v387;
  v107 = v398;
LABEL_23:
  v108 = v399;
LABEL_34:
  v106 = v402;
LABEL_35:
  v394 = "SendMail#IntentHandled";
  v212 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D5FC5D0](v212);
  v213 = v104;
  v214 = sub_2676CB6EC();
  OUTLINED_FUNCTION_7_16();
  v217 = sub_267638E90(v215, v216, MEMORY[0x277D5C570]);
  v218 = v391;
  v390 = v214;
  sub_2676CA8EC();
  OUTLINED_FUNCTION_17_11(v218);
  v400 = v217;
  if (v103)
  {
    sub_2675EB7EC(v218, &qword_2801CC048, &qword_2676CDAB0);
    v219 = v396;
    v223 = v106;
    OUTLINED_FUNCTION_92();
    v220 = v105;
    goto LABEL_48;
  }

  v363 = v213;
  v221 = v397;
  (*(v397 + 32))(v107, v218, v106);
  swift_getKeyPath();
  v222 = v386;
  sub_2676CA84C();

  v223 = v395;
  v224 = v385;
  v225 = v393;
  (*(v395 + 104))(v385, *MEMORY[0x277D5C578], v393);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v226, v227, v228, v225);
  v229 = *(v392 + 48);
  v230 = v389;
  OUTLINED_FUNCTION_46_0();
  sub_2675F95E4(v231, v232, v233, &unk_2676D2A90);
  sub_2675F95E4(v224, v230 + v229, &qword_2801CCB80, &unk_2676D2A90);
  OUTLINED_FUNCTION_15_11(v230);
  if (v234)
  {
    OUTLINED_FUNCTION_30_4();
    sub_2675EB7EC(v235, v236, v237);
    v238 = v389;
    sub_2675EB7EC(v222, &qword_2801CCB80, &unk_2676D2A90);
    (*(v221 + 8))(v398, v106);
    OUTLINED_FUNCTION_15_11(v238 + v229);
    v223 = v106;
    v219 = v396;
    v108 = v399;
    if (v103)
    {
      sub_2675EB7EC(v238, &qword_2801CCB80, &unk_2676D2A90);
      LODWORD(v106) = 1;
      v96 = v387;
LABEL_46:
      v220 = v401;
      goto LABEL_48;
    }

LABEL_45:
    sub_2675EB7EC(v238, &qword_2801CCB78, &qword_2676D05D8);
    v96 = v387;
    OUTLINED_FUNCTION_92();
    goto LABEL_46;
  }

  sub_2675F95E4(v230, v369, &qword_2801CCB80, &unk_2676D2A90);
  v239 = __swift_getEnumTagSinglePayload(v230 + v229, 1, v225);
  LODWORD(v106) = v223 + 8;
  v219 = v396;
  if (v239 == 1)
  {
    OUTLINED_FUNCTION_30_4();
    sub_2675EB7EC(v240, v241, v242);
    v238 = v389;
    sub_2675EB7EC(v386, &qword_2801CCB80, &unk_2676D2A90);
    v243 = OUTLINED_FUNCTION_109();
    v244(v243);
    v245 = OUTLINED_FUNCTION_85_0();
    v246(v245);
    v108 = v399;
    goto LABEL_45;
  }

  v247 = *(v223 + 32);
  v223 += 32;
  v248 = v230 + v229;
  v249 = v371;
  v247(v371, v248, v225);
  OUTLINED_FUNCTION_0_18();
  sub_267638E90(v250, v251, MEMORY[0x277D5C588]);
  OUTLINED_FUNCTION_102_0();
  v252 = v230;
  v253 = sub_2676CBF1C();
  v254 = *(v223 - 24);
  v254(v249, v225);
  sub_2675EB7EC(v385, &qword_2801CCB80, &unk_2676D2A90);
  sub_2675EB7EC(v386, &qword_2801CCB80, &unk_2676D2A90);
  v255 = OUTLINED_FUNCTION_109();
  v256(v255);
  v257 = OUTLINED_FUNCTION_85_0();
  (v254)(v257);
  v220 = v401;
  sub_2675EB7EC(v252, &qword_2801CCB80, &unk_2676D2A90);
  OUTLINED_FUNCTION_92();
  LODWORD(v106) = v253 | v106;
  v108 = v399;
  v96 = v387;
LABEL_48:
  v258 = OUTLINED_FUNCTION_106();
  MEMORY[0x26D5FC5D0](v258, 0xEA00000000007374, v96);
  sub_2676CB91C();
  OUTLINED_FUNCTION_34_4();
  sub_267638E90(v259, v260, MEMORY[0x277D5C6D8]);
  sub_2676CA8EC();
  OUTLINED_FUNCTION_9_15(v108);
  if (v103)
  {
    v261 = &qword_2801CC038;
    v262 = &qword_2676D5A40;
    v263 = v108;
LABEL_54:
    sub_2675EB7EC(v263, v261, v262);
    goto LABEL_55;
  }

  (*(v220 + 32))(v388, v108, v219);
  v264 = OUTLINED_FUNCTION_119();
  MEMORY[0x26D5FC5D0](v264);
  v265 = v382;
  sub_2676CA8EC();
  OUTLINED_FUNCTION_16_8(v265);
  if (v266)
  {
    v267 = OUTLINED_FUNCTION_29_0();
    v268(v267);
    v261 = &qword_2801CC048;
    v262 = &qword_2676CDAB0;
    v263 = v265;
    goto LABEL_54;
  }

  v381 = v106;
  (*(v397 + 32))(v377, v265, v223);
  swift_getKeyPath();
  v279 = v370;
  sub_2676CA84C();

  v106 = v393;
  (*(v395 + 104))(v378, *MEMORY[0x277D5C578], v393);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v280, v281, v282, v106);
  v283 = *(v392 + 48);
  v284 = v372;
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v285, v286, v287, v288);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v289, v290, v291, v292);
  OUTLINED_FUNCTION_17_11(v284);
  if (v293)
  {
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v294, v295, v296);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v297, v298, v299);
    v300 = OUTLINED_FUNCTION_95_0();
    v301(v300);
    v302 = OUTLINED_FUNCTION_53_2();
    v303(v302);
    OUTLINED_FUNCTION_17_11(v284 + v283);
    if (v103)
    {
      sub_2675EB7EC(v284, &qword_2801CCB80, &unk_2676D2A90);
      LOBYTE(v106) = 1;
LABEL_70:
      v96 = v387;
      goto LABEL_55;
    }
  }

  else
  {
    v304 = v365;
    sub_2675F95E4(v284, v365, &qword_2801CCB80, &unk_2676D2A90);
    OUTLINED_FUNCTION_17_11(v284 + v283);
    v306 = v106;
    if (!v305)
    {
      v341 = v279;
      v342 = v395;
      v343 = OUTLINED_FUNCTION_65_1();
      v344(v343);
      OUTLINED_FUNCTION_0_18();
      sub_267638E90(v345, v346, MEMORY[0x277D5C588]);
      OUTLINED_FUNCTION_65_0();
      v347 = sub_2676CBF1C();
      v348 = *(v342 + 8);
      v348(v283, v306);
      OUTLINED_FUNCTION_60();
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v349, v350, v351);
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v352, v353, v354);
      v355 = OUTLINED_FUNCTION_90_0();
      v356(v355);
      v357 = OUTLINED_FUNCTION_53_2();
      v358(v357);
      v348(v304, v306);
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v359, v360, v361);
      OUTLINED_FUNCTION_92();
      LOBYTE(v106) = v347 | v341;
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v307, v308, v309);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v310, v311, v312);
    v313 = OUTLINED_FUNCTION_90_0();
    v314(v313);
    v315 = OUTLINED_FUNCTION_53_2();
    v316(v315);
    v317 = OUTLINED_FUNCTION_102_0();
    v318(v317);
  }

  sub_2675EB7EC(v284, &qword_2801CCB78, &qword_2676D05D8);
  v96 = v387;
  OUTLINED_FUNCTION_92();
LABEL_55:
  v269 = v364;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v270 = sub_2676CBE4C();
  __swift_project_value_buffer(v270, qword_2801CDC90);
  v271 = sub_2676CBE2C();
  v272 = sub_2676CC23C();
  if (OUTLINED_FUNCTION_5_5(v272))
  {
    v273 = swift_slowAlloc();
    *v273 = 67109120;
    v273[1] = v106 & 1;
    OUTLINED_FUNCTION_3_7();
    _os_log_impl(v274, v275, v276, v277, v278, 8u);
    v96 = v387;
    OUTLINED_FUNCTION_2_5();
  }

  (*(v269 + 8))(v403, v96);
LABEL_60:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676325D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v844 = v23;
  v885 = sub_2676CB6FC();
  OUTLINED_FUNCTION_3();
  v823 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v26);
  v873 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBD0, &qword_2676D06E8);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v868 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBD8, &qword_2676D06F0);
  v31 = OUTLINED_FUNCTION_4_1(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_4();
  v867 = v34;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v38);
  v883 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBE0, &qword_2676D06F8);
  v875 = *(v883 - 8);
  MEMORY[0x28223BE20](v883 - 8);
  OUTLINED_FUNCTION_4();
  v866 = v39;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBE8, &qword_2676D0700);
  OUTLINED_FUNCTION_4_1(v42);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  v46 = OUTLINED_FUNCTION_4_1(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v48);
  v862 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_3();
  v853 = v49;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v52);
  v858 = sub_2676CB5AC();
  OUTLINED_FUNCTION_3();
  v855 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v55);
  v846 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC610, &unk_2676D0C10);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  v60 = OUTLINED_FUNCTION_4_1(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC618, &qword_2676CF520);
  v64 = OUTLINED_FUNCTION_4_1(v63);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBF0, &qword_2676D0708);
  v72 = OUTLINED_FUNCTION_4_1(v71);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  v77 = OUTLINED_FUNCTION_4_1(v76);
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCBF8, &qword_2676D0710);
  v84 = OUTLINED_FUNCTION_4_1(v83);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC788, &qword_2676CF838);
  v88 = OUTLINED_FUNCTION_4_1(v87);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v91);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC6F0, "м");
  OUTLINED_FUNCTION_3();
  v848 = v93;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_9_1();
  v880 = v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v97 = OUTLINED_FUNCTION_4_1(v96);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_4();
  v879 = v98;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v869 = v102;
  v870 = v101;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_4();
  v878 = v103;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v106);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v107);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v109);
  v872 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v830 = v110;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_9_1();
  v874 = v112;
  OUTLINED_FUNCTION_7_3();
  v811 = sub_2676CB71C();
  OUTLINED_FUNCTION_3();
  v810 = v113;
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v115);
  v809 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB58, &qword_2676D05B8);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB60, &qword_2676D05C0);
  v119 = OUTLINED_FUNCTION_4_1(v118);
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v122);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2801CCB68, &qword_2676D05C8);
  OUTLINED_FUNCTION_4_1(v123);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v125);
  v828 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB70, &qword_2676D05D0);
  OUTLINED_FUNCTION_3();
  v816 = v126;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v128);
  v871 = sub_2676CB6CC();
  OUTLINED_FUNCTION_3();
  v847 = v129;
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v131);
  v835 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB78, &qword_2676D05D8);
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB80, &unk_2676D2A90);
  v137 = OUTLINED_FUNCTION_4_1(v136);
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v141);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_128();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v146);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  v148 = OUTLINED_FUNCTION_4_1(v147);
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v150);
  v152 = &v794 - v151;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_3();
  v877 = v154;
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v158);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC608, &unk_2676CF500);
  v160 = OUTLINED_FUNCTION_4_1(v159);
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_4_13();
  MEMORY[0x28223BE20](v162);
  v164 = &v794 - v163;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2801CCB88, &qword_2676D05E0);
  OUTLINED_FUNCTION_4_1(v165);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v166);
  v168 = (&v794 - v167);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCB90, &qword_2676D05E8);
  OUTLINED_FUNCTION_3();
  v171 = v170;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_125();
  v173 = OUTLINED_FUNCTION_61_0();
  v884 = v92;
  v881 = v20;
  MEMORY[0x26D5FC5D0](v173);
  sub_2676CB53C();
  OUTLINED_FUNCTION_41_2();
  v176 = sub_267638E90(v174, v175, MEMORY[0x277D5C3D0]);
  OUTLINED_FUNCTION_67_0();
  sub_2676CA8EC();
  OUTLINED_FUNCTION_16_8(v168);
  v882 = v164;
  v876 = v153;
  v829 = v21;
  if (v186)
  {
    v177 = v874;
    sub_2675EB7EC(v168, &off_2801CCB88, &qword_2676D05E0);
    OUTLINED_FUNCTION_45_1(2);
    OUTLINED_FUNCTION_81_0();
    v178 = v164;
    v179 = v833;
    v180 = MEMORY[0x277D84F70];
    v169 = v872;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_69_0();
  v181();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_16();
  sub_267638E90(v182, v183, MEMORY[0x277D5C570]);
  OUTLINED_FUNCTION_100_0();
  v794 = v176;
  v807 = v22;
  sub_2676CA87C();

  v184 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_21_3(v184, v185, v153);
  v796 = v169;
  v795 = v171;
  if (v186)
  {
    sub_2675EB7EC(v152, &qword_2801CC048, &qword_2676CDAB0);
    OUTLINED_FUNCTION_45_1(2);
    v178 = v821;
    goto LABEL_21;
  }

  v187 = OUTLINED_FUNCTION_22_2();
  v188(v187);
  swift_getKeyPath();
  sub_2676CA84C();

  OUTLINED_FUNCTION_51_2();
  v190 = v871;
  (*(v189 + 104))(v815);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v191, v192, v193, v190);
  v194 = *(v835 + 48);
  v195 = v806;
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v196, v197, v198, v199);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v200, v201, v202, v203);
  v204 = OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_21_3(v204, v205, v190);
  if (!v206)
  {
    v216 = v798;
    sub_2675F95E4(v195, v798, &qword_2801CCB80, &unk_2676D2A90);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v195 + v194, 1, v190);
    v153 = (v21 + 8);
    if (EnumTagSinglePayload != 1)
    {
      v225 = *(v21 + 32);
      v21 += 32;
      v226 = v195 + v194;
      v227 = v812;
      v225(v812, v226, v871);
      OUTLINED_FUNCTION_0_18();
      sub_267638E90(v228, v229, MEMORY[0x277D5C588]);
      v230 = sub_2676CBF1C();
      v231 = *(v21 - 24);
      v231(v227, v871);
      v232 = OUTLINED_FUNCTION_35_2(v840);
      sub_2675EB7EC(v232, v233, &unk_2676D2A90);
      v234 = OUTLINED_FUNCTION_35_2(&v884);
      sub_2675EB7EC(v234, v235, &unk_2676D2A90);
      OUTLINED_FUNCTION_114();
      v236(v814);
      v231(v216, v871);
      OUTLINED_FUNCTION_46_0();
      sub_2675EB7EC(v237, v238, v239);
      if (v230)
      {
        v240 = 1;
      }

      else
      {
        v240 = 2;
      }

      OUTLINED_FUNCTION_45_1(v240);
      v178 = v821;
      v169 = v796;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v218, v219, v220);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v221, v222, v223);
    OUTLINED_FUNCTION_114();
    v224(v814);
    (*v153)(v216, v190);
    v169 = v796;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v207, v208, v209);
  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v210, v211, v212);
  v213 = OUTLINED_FUNCTION_71_0();
  v214(v213);
  OUTLINED_FUNCTION_21_3(v195 + v194, 1, v190);
  v169 = v796;
  if (!v186)
  {
LABEL_14:
    sub_2675EB7EC(v195, &qword_2801CCB78, &qword_2676D05D8);
    v215 = 2;
    goto LABEL_15;
  }

  sub_2675EB7EC(v195, &qword_2801CCB80, &unk_2676D2A90);
  v215 = 1;
LABEL_15:
  OUTLINED_FUNCTION_45_1(v215);
  v178 = v821;
LABEL_20:
  v171 = v795;
LABEL_21:
  swift_getKeyPath();
  OUTLINED_FUNCTION_42_1();
  v168 = sub_267638E90(v241, v242, MEMORY[0x277D5C5E0]);
  v243 = v820;
  OUTLINED_FUNCTION_100_0();
  v244 = v807;
  sub_2676CA87C();
  v177 = v243;

  v245 = v243;
  v164 = v828;
  OUTLINED_FUNCTION_21_3(v245, 1, v828);
  if (!v186)
  {
    v246 = v805;
    v169 = v808;
    OUTLINED_FUNCTION_51_2();
    (*(v247 + 32))(v169, v177, v164);
    swift_getKeyPath();
    sub_2676CA84C();

    v164 = v810;
    v248 = v811;
    (*(v810 + 13))(v246, *MEMORY[0x277D5C5E8], v811);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v249, v250, v251, v248);
    OUTLINED_FUNCTION_94_0();
    v168 = &qword_2801CCB60;
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v252, v253, v254, v255);
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v256, v257, v258, v259);
    v260 = OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_21_3(v260, v261, v248);
    if (v262)
    {
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v263, v264, v265);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v266, v267, v268);
      (*(v21 + 8))(v169, v828);
      v269 = OUTLINED_FUNCTION_13_13();
      v270(v269);
      OUTLINED_FUNCTION_21_3(v153 + v178, 1, v248);
      v271 = v882;
      v169 = v872;
      if (v186)
      {
        sub_2675EB7EC(v178, &qword_2801CCB60, &qword_2676D05C0);
        OUTLINED_FUNCTION_45_1(1);
LABEL_34:
        v177 = v874;
        OUTLINED_FUNCTION_81_0();
        v178 = v271;
        goto LABEL_35;
      }
    }

    else
    {
      v272 = v799;
      sub_2675F95E4(v178, v799, &qword_2801CCB60, &qword_2676D05C0);
      OUTLINED_FUNCTION_21_3(v153 + v178, 1, v248);
      if (!v273)
      {
        v716 = v797;
        (*(v164 + 4))(v797, v153 + v178, v248);
        OUTLINED_FUNCTION_39_2();
        sub_267638E90(v717, v718, MEMORY[0x277D5C5F8]);
        OUTLINED_FUNCTION_105();
        LODWORD(v821) = sub_2676CBF1C();
        v719 = *(v164 + 1);
        v719(v716, v248);
        v164 = v272;
        v168 = v178;
        v178 = v248;
        v177 = &qword_2676D05C0;
        OUTLINED_FUNCTION_46_0();
        sub_2675EB7EC(v720, v721, v722);
        v723 = OUTLINED_FUNCTION_35_2(&v851);
        sub_2675EB7EC(v723, v724, &qword_2676D05C0);
        OUTLINED_FUNCTION_27_5();
        v725(v169, v828);
        v726 = OUTLINED_FUNCTION_13_13();
        v727(v726);
        v719(v164, v178);
        OUTLINED_FUNCTION_46_0();
        sub_2675EB7EC(v728, v729, v730);
        v731 = v856;
        if (v821)
        {
          v731 = 1;
        }

        OUTLINED_FUNCTION_45_1(v731);
        goto LABEL_24;
      }

      v274 = v272;
      v168 = &qword_2801CCB60;
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v275, v276, v277);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v278, v279, v280);
      OUTLINED_FUNCTION_27_5();
      v281(v169, v828);
      v282 = OUTLINED_FUNCTION_13_13();
      v283(v282);
      v284 = *(v164 + 1);
      v164 += 8;
      v284(v274, v248);
      v271 = v882;
      v169 = v872;
    }

    sub_2675EB7EC(v178, &qword_2801CCB58, &qword_2676D05B8);
    goto LABEL_34;
  }

  (*(v171 + 8))(v244, v169);
  sub_2675EB7EC(v177, &off_2801CCB68, &qword_2676D05C8);
LABEL_24:
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_81_0();
LABEL_35:
  v179 = v833;
  v180 = MEMORY[0x277D84F70];
LABEL_36:
  v824[0] = "SendMail#IntentHandled";
  v828 = 0xD000000000000010;
  MEMORY[0x26D5FC5D0]();
  v285 = sub_2676CB6EC();
  OUTLINED_FUNCTION_7_16();
  v288 = sub_267638E90(v286, v287, MEMORY[0x277D5C570]);
  v289 = v180;
  v821 = v285;
  sub_2676CA8EC();
  v290 = OUTLINED_FUNCTION_59_0();
  v291 = v876;
  OUTLINED_FUNCTION_21_3(v290, v292, v876);
  v293 = v850;
  v833 = v288;
  if (v186)
  {
    sub_2675EB7EC(v179, &qword_2801CC048, &qword_2676CDAB0);
    v294 = v834;
    v295 = v836;
    goto LABEL_51;
  }

  (v168[4])(v850, v179, v291);
  swift_getKeyPath();
  v177 = v829;
  sub_2676CA84C();

  OUTLINED_FUNCTION_51_2();
  v169 = v871;
  (*(v296 + 104))(v164);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v297, v298, v299, v169);
  v300 = *(v835 + 48);
  v178 = v164;
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v301, v302, v303, v304);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v305, v306, v307, v308);
  OUTLINED_FUNCTION_16_8(v164);
  if (v309)
  {
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v310, v311, v312);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v313, v314, v315);
    (*(v877 + 8))(v293, v291);
    OUTLINED_FUNCTION_16_8(&v164[v300]);
    v295 = v836;
    if (v186)
    {
      sub_2675EB7EC(v164, &qword_2801CCB80, &unk_2676D2A90);
      OUTLINED_FUNCTION_45_1(1);
LABEL_47:
      OUTLINED_FUNCTION_78_0();
      v294 = v834;
      goto LABEL_51;
    }

LABEL_46:
    sub_2675EB7EC(v164, &qword_2801CCB78, &qword_2676D05D8);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_131(v164, &qword_2801CCB80, &unk_2676D2A90, &v835);
  v316 = __swift_getEnumTagSinglePayload(&v164[v300], 1, v169);
  v291 = (v289 + 8);
  if (v316 == 1)
  {
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v317, v318, v319);
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v320, v321, v322);
    OUTLINED_FUNCTION_114();
    v323(v850);
    (*v291)(v164, v169);
    v295 = v836;
    goto LABEL_46;
  }

  (*(v289 + 32))(v812, &v164[v300], v169);
  OUTLINED_FUNCTION_0_18();
  sub_267638E90(v324, v325, MEMORY[0x277D5C588]);
  v326 = sub_2676CBF1C();
  v327 = *(v289 + 8);
  v328 = OUTLINED_FUNCTION_100_0();
  v327(v328);
  v177 = &unk_2676D2A90;
  v329 = OUTLINED_FUNCTION_35_2(&v878);
  sub_2675EB7EC(v329, v330, &unk_2676D2A90);
  v331 = OUTLINED_FUNCTION_35_2(&v857);
  sub_2675EB7EC(v331, v332, &unk_2676D2A90);
  OUTLINED_FUNCTION_114();
  v333(v850);
  (v327)(v164, v169);
  OUTLINED_FUNCTION_46_0();
  sub_2675EB7EC(v334, v335, v336);
  v337 = v856;
  if (v326)
  {
    v337 = 1;
  }

  OUTLINED_FUNCTION_45_1(v337);
  OUTLINED_FUNCTION_78_0();
  v295 = v836;
  v294 = v834;
LABEL_51:
  v338 = OUTLINED_FUNCTION_106();
  MEMORY[0x26D5FC5D0](v338, 0xEA00000000007374, v884);
  sub_2676CB91C();
  OUTLINED_FUNCTION_34_4();
  sub_267638E90(v339, v340, MEMORY[0x277D5C6D8]);
  OUTLINED_FUNCTION_47_1();
  sub_2676CA8EC();
  OUTLINED_FUNCTION_16_8(v295);
  if (v186)
  {
    v341 = &qword_2801CC038;
    v342 = &qword_2676D5A40;
  }

  else
  {
    OUTLINED_FUNCTION_80();
    v343 = OUTLINED_FUNCTION_102_0();
    v344(v343);
    MEMORY[0x26D5FC5D0](v828, v824[0] | 0x8000000000000000, v169);
    OUTLINED_FUNCTION_51_2();
    sub_2676CA8EC();
    v345 = OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_21_3(v345, v346, v876);
    if (!v347)
    {
      v177 = v294;
      v386 = v877;
      v387 = OUTLINED_FUNCTION_120();
      v388(v387);
      swift_getKeyPath();
      sub_2676CA84C();

      OUTLINED_FUNCTION_127();
      v389 = v871;
      v390(v817);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v391, v392, v393, v389);
      OUTLINED_FUNCTION_94_0();
      v394 = v813;
      OUTLINED_FUNCTION_25_5();
      sub_2675F95E4(v395, v396, v397, v398);
      OUTLINED_FUNCTION_25_5();
      sub_2675F95E4(v399, v400, v401, v402);
      v403 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_3(v403, v404, v389);
      v350 = v884;
      if (v405)
      {
        OUTLINED_FUNCTION_14_11();
        sub_2675EB7EC(v406, v407, v408);
        OUTLINED_FUNCTION_14_11();
        sub_2675EB7EC(v409, v410, v411);
        (*(v386 + 8))(v294, v876);
        OUTLINED_FUNCTION_27_5();
        v412(v874, v872);
        OUTLINED_FUNCTION_21_3(v291 + v394, 1, v389);
        v169 = v862;
        v352 = v838;
        if (v186)
        {
          sub_2675EB7EC(v394, &qword_2801CCB80, &unk_2676D2A90);
          OUTLINED_FUNCTION_45_1(1);
LABEL_152:
          v351 = v870;
          v178 = v882;
          goto LABEL_58;
        }
      }

      else
      {
        v544 = v294;
        v169 = v800;
        sub_2675F95E4(v394, v800, &qword_2801CCB80, &unk_2676D2A90);
        OUTLINED_FUNCTION_21_3(v291 + v394, 1, v389);
        v352 = v838;
        if (!v545)
        {
          OUTLINED_FUNCTION_80();
          v753 = OUTLINED_FUNCTION_65_1();
          v754(v753);
          OUTLINED_FUNCTION_0_18();
          sub_267638E90(v755, v756, MEMORY[0x277D5C588]);
          OUTLINED_FUNCTION_71_0();
          LODWORD(v851) = sub_2676CBF1C();
          v757 = off_2801CCB88;
          off_2801CCB88(v291, v389);
          v177 = &unk_2676D2A90;
          sub_2675EB7EC(v817, &qword_2801CCB80, &unk_2676D2A90);
          sub_2675EB7EC(v818, &qword_2801CCB80, &unk_2676D2A90);
          (*(v877 + 8))(v544, v876);
          OUTLINED_FUNCTION_27_5();
          v758(v874, v872);
          v759 = OUTLINED_FUNCTION_22_2();
          v757(v759);
          v178 = v882;
          sub_2675EB7EC(v394, &qword_2801CCB80, &unk_2676D2A90);
          v760 = v856;
          if (v851)
          {
            v760 = 1;
          }

          OUTLINED_FUNCTION_45_1(v760);
          v351 = v870;
          OUTLINED_FUNCTION_89_0();
          goto LABEL_58;
        }

        OUTLINED_FUNCTION_14_11();
        sub_2675EB7EC(v546, v547, v548);
        OUTLINED_FUNCTION_14_11();
        sub_2675EB7EC(v549, v550, v551);
        (*(v877 + 8))(v177, v876);
        OUTLINED_FUNCTION_27_5();
        v552(v874, v872);
        OUTLINED_FUNCTION_27_5();
        v553 = OUTLINED_FUNCTION_22_2();
        v554(v553);
        OUTLINED_FUNCTION_89_0();
      }

      sub_2675EB7EC(v394, &qword_2801CCB78, &qword_2676D05D8);
      goto LABEL_152;
    }

    v348 = OUTLINED_FUNCTION_100_0();
    v349(v348);
    v341 = &qword_2801CC048;
    v342 = &qword_2676CDAB0;
  }

  sub_2675EB7EC(v295, v341, v342);
  v350 = v884;
  OUTLINED_FUNCTION_89_0();
  v351 = v870;
  v352 = v838;
LABEL_58:
  v886 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x26D5FC5D0]();
  v353 = sub_2676CB86C();
  v876 = sub_267638E90(&qword_2801CBF70, MEMORY[0x277D5C6D0], MEMORY[0x277D5C6A8]);
  v877 = v353;
  sub_2676CA8EC();
  OUTLINED_FUNCTION_9_15(v352);
  if (!v186)
  {
    v376 = v869;
    v177 = *(v869 + 32);
    v377 = v839;
    v378 = OUTLINED_FUNCTION_8_10();
    (v177)(v378);
    v379 = v822;
    (*(v376 + 16))(v822, v377, v351);
    sub_267606BD8();
    v381 = v380;
    v382 = *(v380 + 16);
    v383 = (v382 + 1);
    v178 = v169;
    if (v382 >= *(v380 + 24) >> 1)
    {
      goto LABEL_231;
    }

    goto LABEL_73;
  }

  sub_2675EB7EC(v352, &qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_96_0();
  v354 = sub_2676CA82C();
  v355 = *(v354 + 16);
  if (v355)
  {
    v356 = *(v848 + 16);
    v357 = (*(v848 + 80) + 32) & ~*(v848 + 80);
    v851 = v354;
    v358 = v354 + v357;
    v359 = *(v848 + 72);
    v360 = (v848 + 8);
    v871 = (v869 + 32);
    v872 = v359;
    v874 = MEMORY[0x277D84F90];
    do
    {
      v361 = v880;
      v362 = OUTLINED_FUNCTION_67_0();
      v177 = v884;
      v356(v362);
      (v356)(v178, v361, v177);
      v363 = OUTLINED_FUNCTION_29_5();
      __swift_storeEnumTagSinglePayload(v363, v364, v365, v177);
      v366 = v178;
      v367 = v879;
      v352 = v366;
      sub_2676CA8EC();
      (*v360)(v361, v177);
      OUTLINED_FUNCTION_9_15(v367);
      if (v186)
      {
        sub_2675EB7EC(v367, &qword_2801CC168, &unk_2676CF510);
        v178 = v352;
      }

      else
      {
        v368 = *v871;
        (*v871)(v878, v367, v351);
        v352 = v874;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_64_1();
          sub_267606BD8();
          v352 = v374;
        }

        v370 = *(v352 + 16);
        v177 = (v370 + 1);
        if (v370 >= *(v352 + 24) >> 1)
        {
          OUTLINED_FUNCTION_64_1();
          sub_267606BD8();
          v352 = v375;
        }

        *(v352 + 16) = v177;
        OUTLINED_FUNCTION_4_5();
        v874 = v352;
        v373 = v352 + v371 + *(v372 + 72) * v370;
        v351 = v870;
        (v368)(v373, v878, v870);
        v178 = v882;
      }

      v358 += v872;
      --v355;
    }

    while (v355);

    v385 = v874;
  }

  else
  {

    v385 = MEMORY[0x277D84F90];
  }

  v350 = v884;
  if (*(v385 + 16))
  {
    v177 = v840[0];
    v352 = v837;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v413 = sub_2676CBE4C();
    __swift_project_value_buffer(v413, qword_2801CDC90);
    v414 = sub_2676CBE2C();
    v415 = sub_2676CC23C();
    if (OUTLINED_FUNCTION_5_5(v415))
    {
      v416 = OUTLINED_FUNCTION_17_3();
      OUTLINED_FUNCTION_9_4(v416);
      OUTLINED_FUNCTION_3_7();
      _os_log_impl(v417, v418, v419, v420, v421, 2u);
      OUTLINED_FUNCTION_4_6();
    }

    sub_2676A1D90(v385);
    OUTLINED_FUNCTION_89_0();
  }

  else
  {

    OUTLINED_FUNCTION_89_0();
    OUTLINED_FUNCTION_103_0();
  }

LABEL_87:
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x26D5FC5D0]();
  OUTLINED_FUNCTION_17_11(v352);
  if (v186)
  {
    sub_2675EB7EC(v352, &qword_2801CC608, &unk_2676CF500);
  }

  else
  {
    sub_2676CA83C();
    v423 = v422;
    (*(v848 + 8))(v352, v350);
    if (v423)
    {
      OUTLINED_FUNCTION_107();
      v424 = v858;
      goto LABEL_96;
    }
  }

  OUTLINED_FUNCTION_96_0();
  MEMORY[0x26D5FC5D0]();
  OUTLINED_FUNCTION_17_11(v177);
  v424 = v858;
  if (v186)
  {
    sub_2675EB7EC(v177, &qword_2801CC608, &unk_2676CF500);
  }

  else
  {
    sub_2676CA83C();
    OUTLINED_FUNCTION_27_5();
    v425(v177, v350);
  }

  OUTLINED_FUNCTION_107();

LABEL_96:
  OUTLINED_FUNCTION_96_0();
  MEMORY[0x26D5FC5D0]();
  sub_2676CB67C();
  sub_267638E90(&qword_2801CCC00, MEMORY[0x277D5C540], MEMORY[0x277D5C518]);
  v426 = v861;
  OUTLINED_FUNCTION_29_0();
  sub_2676CA8EC();
  OUTLINED_FUNCTION_131(v426, &qword_2801CC788, &qword_2676CF838, &v867);
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC7B0, &qword_2676CF860);
  v428 = OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_21_3(v428, v429, v427);
  if (v186)
  {
    sub_2675EB7EC(v178, &qword_2801CC788, &qword_2676CF838);
    sub_2676CB65C();
    v435 = v841;
    v430 = OUTLINED_FUNCTION_33_4();
    __swift_storeEnumTagSinglePayload(v430, v431, 1, v432);
    v433 = v852;
LABEL_101:
    sub_2675EB7EC(v435, &qword_2801CCBF8, &qword_2676D0710);
    v438 = v854;
    goto LABEL_102;
  }

  swift_getKeyPath();
  v434 = v841;
  sub_2676CA84C();
  v435 = v434;

  OUTLINED_FUNCTION_14_2();
  (*(v436 + 8))(v178, v427);
  sub_2676CB65C();
  OUTLINED_FUNCTION_9_15(v434);
  v433 = v852;
  if (v437)
  {
    goto LABEL_101;
  }

  OUTLINED_FUNCTION_5_11();
  v448 = OUTLINED_FUNCTION_11_16();
  v449(v448);
  OUTLINED_FUNCTION_118();
  v450 = *MEMORY[0x277D5C520];
  v451 = OUTLINED_FUNCTION_117();
  v452(v451);
  v433 = v852;
  v186 = v435 == v450;
  v424 = v858;
  v438 = v854;
  if (v186)
  {
    LODWORD(v852) = 1;
    v177 = v883;
    goto LABEL_112;
  }

LABEL_102:
  v439 = OUTLINED_FUNCTION_60();
  sub_2675F95E4(v439, v433, v440, v441);
  OUTLINED_FUNCTION_21_3(v433, 1, v427);
  if (v186)
  {
    sub_2675EB7EC(v433, &qword_2801CC788, &qword_2676CF838);
    sub_2676CB65C();
    v442 = OUTLINED_FUNCTION_56_0();
    __swift_storeEnumTagSinglePayload(v442, v443, 1, v444);
    v177 = v883;
LABEL_107:
    sub_2675EB7EC(v438, &qword_2801CCBF8, &qword_2676D0710);
    v458 = 2;
    goto LABEL_111;
  }

  swift_getKeyPath();
  sub_2676CA84C();
  v438 = v854;

  OUTLINED_FUNCTION_14_2();
  v445 = OUTLINED_FUNCTION_102_0();
  v446(v445);
  sub_2676CB65C();
  OUTLINED_FUNCTION_9_15(v438);
  v177 = v883;
  if (v447)
  {
    goto LABEL_107;
  }

  OUTLINED_FUNCTION_5_11();
  v453 = OUTLINED_FUNCTION_47_1();
  v455 = v454(v453) != *MEMORY[0x277D5C528];
  v456 = OUTLINED_FUNCTION_47_1();
  v457(v456);
  v458 = 2 * v455;
LABEL_111:
  LODWORD(v852) = v458;
LABEL_112:
  v459 = OUTLINED_FUNCTION_79_0();
  MEMORY[0x26D5FC5D0](v459);
  v460 = sub_2676CBB1C();
  sub_267638E90(&qword_2801CCC08, MEMORY[0x277D5C8E8], MEMORY[0x277D5C8E0]);
  OUTLINED_FUNCTION_58_1();
  sub_2676CA8EC();
  MEMORY[0x26D5FC5D0](0x507473694C6F7375, 0xEF6E6F697469736FLL, v350);
  v461 = sub_2676CB64C();
  v462 = sub_267638E90(&qword_2801CCC10, MEMORY[0x277D5C510], MEMORY[0x277D5C4D0]);
  OUTLINED_FUNCTION_121();
  *(v463 - 256) = v461;
  sub_2676CA8EC();
  v464 = v842;
  sub_2675F95E4(v460, v842, &qword_2801CC058, &unk_2676D0C50);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  v465 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v465, v466, v382);
  v847 = v462;
  v844 = v382;
  if (v186)
  {
    sub_2675EB7EC(v464, &qword_2801CC058, &unk_2676D0C50);
    sub_2676CB62C();
    v472 = v843;
    v467 = OUTLINED_FUNCTION_33_4();
    __swift_storeEnumTagSinglePayload(v467, v468, 1, v469);
LABEL_117:
    v475 = &qword_2801CCBF0;
    v476 = &qword_2676D0708;
    v477 = v472;
    goto LABEL_118;
  }

  swift_getKeyPath();
  v470 = v843;
  v471 = v464;
  sub_2676CA84C();
  v472 = v470;

  OUTLINED_FUNCTION_14_2();
  (*(v473 + 8))(v471, v382);
  sub_2676CB62C();
  OUTLINED_FUNCTION_9_15(v470);
  if (v474)
  {
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_5_11();
  v486 = OUTLINED_FUNCTION_11_16();
  v487(v486);
  OUTLINED_FUNCTION_118();
  v488 = *MEMORY[0x277D5C4D8];
  v489 = OUTLINED_FUNCTION_117();
  v490(v489);
  if (v470 == v488)
  {
    OUTLINED_FUNCTION_50_1();
    sub_2676CB5CC();
    OUTLINED_FUNCTION_37_3();
    sub_267638E90(v491, v492, MEMORY[0x277D5C470]);
    v493 = v801;
    OUTLINED_FUNCTION_88_0();
    sub_2676CA8EC();
    v494 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
    OUTLINED_FUNCTION_21_3(v493, 1, v494);
    if (v186)
    {
      sub_2675EB7EC(v493, &qword_2801CC050, &unk_2676D0C20);
      v382 = v803;
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_64_1();
      __swift_storeEnumTagSinglePayload(v495, v496, v497, v498);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_51_2();
      sub_2676CA84C();

      OUTLINED_FUNCTION_14_2();
      (*(v732 + 8))(v493, v494);
    }

    v733 = v802;
    v734 = v804;
    OUTLINED_FUNCTION_127();
    v735(v734);
    v736 = OUTLINED_FUNCTION_29_5();
    __swift_storeEnumTagSinglePayload(v736, v737, v738, v424);
    OUTLINED_FUNCTION_94_0();
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v739, v740, v741, v742);
    OUTLINED_FUNCTION_25_5();
    sub_2675F95E4(v743, v744, v745, v746);
    OUTLINED_FUNCTION_21_3(v733, 1, v424);
    if (v186)
    {
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v747, v748, v749);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v750, v751, v752);
      OUTLINED_FUNCTION_21_3(v733 + v494, 1, v424);
      v477 = v733;
      v177 = v883;
      if (v186)
      {
        sub_2675EB7EC(v477, &qword_2801CC618, &qword_2676CF520);
        v478 = 1;
        goto LABEL_119;
      }
    }

    else
    {
      OUTLINED_FUNCTION_131(v733, &qword_2801CC618, &qword_2676CF520, v824);
      OUTLINED_FUNCTION_21_3(v733 + v494, 1, v424);
      if (!v761)
      {
        OUTLINED_FUNCTION_51_2();
        v779 = OUTLINED_FUNCTION_65_1();
        v780(v779);
        OUTLINED_FUNCTION_38_2();
        sub_267638E90(v781, v782, MEMORY[0x277D5C490]);
        OUTLINED_FUNCTION_63_0();
        LODWORD(v880) = sub_2676CBF1C();
        v783 = *(v382 + 8);
        v382 += 8;
        v783(v494, v858);
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v784, v785, v786);
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v787, v788, v789);
        v783(v734, v858);
        v424 = v858;
        OUTLINED_FUNCTION_30_4();
        sub_2675EB7EC(v790, v791, v792);
        if (v880)
        {
          v555 = 1;
        }

        else
        {
          v555 = 2;
        }

        goto LABEL_154;
      }

      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v762, v763, v764);
      OUTLINED_FUNCTION_14_11();
      sub_2675EB7EC(v765, v766, v767);
      (*(v855 + 8))(v734, v424);
      v477 = v733;
      v177 = v883;
    }

    v475 = &qword_2801CC610;
    v476 = &unk_2676D0C10;
LABEL_118:
    sub_2675EB7EC(v477, v475, v476);
    v478 = 2;
LABEL_119:
    OUTLINED_FUNCTION_111(v478);
    goto LABEL_120;
  }

  v555 = 2;
LABEL_154:
  OUTLINED_FUNCTION_111(v555);
  v177 = v883;
LABEL_120:
  v842 = "associatedDateTime";
  v479 = OUTLINED_FUNCTION_79_0();
  MEMORY[0x26D5FC5D0](v479);
  v480 = sub_2676CB7DC();
  v481 = sub_267638E90(&qword_2801CCC18, MEMORY[0x277D5C670], MEMORY[0x277D5C648]);
  v482 = v845;
  v840[1] = v480;
  sub_2676CA8EC();
  OUTLINED_FUNCTION_16_8(v482);
  v843 = v481;
  if (v186)
  {
    sub_2675EB7EC(v482, &qword_2801CC040, &qword_2676CDAA8);
    v483 = v832;
  }

  else
  {
    OUTLINED_FUNCTION_110();
    OUTLINED_FUNCTION_69_0();
    v484();
    swift_getKeyPath();
    OUTLINED_FUNCTION_51_2();
    sub_2676CA84C();

    sub_2676CB79C();
    OUTLINED_FUNCTION_9_15(v382);
    if (v485)
    {
      sub_2675EB7EC(v382, &qword_2801CCBE8, &qword_2676D0700);
    }

    else
    {
      OUTLINED_FUNCTION_5_11();
      v499 = OUTLINED_FUNCTION_29_0();
      v501 = v500(v499);
      v502 = *MEMORY[0x277D5C650];
      v503 = OUTLINED_FUNCTION_29_0();
      v504(v503);
      v505 = v854;
      if (v501 == v502)
      {
        v505 = 1;
      }

      OUTLINED_FUNCTION_111(v505);
    }

    v178 = v865;
    v177 = v863;
    swift_getKeyPath();
    OUTLINED_FUNCTION_36_4();
    sub_267638E90(v506, v507, MEMORY[0x277D5C5A8]);
    OUTLINED_FUNCTION_105();
    v879 = v508;
    v383 = sub_2676CA8CC();

    v880 = v383;
    v509 = v864;
    v878 = *(v383 + 2);
    if (v878)
    {
      v379 = 0;
      OUTLINED_FUNCTION_4_5();
      v877 = v880 + v510;
      v876 = (v511 + 16);
      LODWORD(v874) = *MEMORY[0x277D5C5B0];
      v872 = v823 + 104;
      v848 = v823 + 32;
      v870 = (v823 + 8);
      v871 = (v511 + 8);
      while (1)
      {
        if (v379 >= *(v880 + 16))
        {
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          sub_267606BD8();
          v381 = v793;
LABEL_73:
          v384 = v870;
          v352 = v869 + 8;
          (*(v869 + 8))(v839, v870);
          *(v381 + 16) = v383;
          (v177)(v381 + ((*(v352 + 72) + 32) & ~*(v352 + 72)) + *(v352 + 64) * v382, v379, v384);
          v886 = v381;
          OUTLINED_FUNCTION_103_0();
          goto LABEL_87;
        }

        v350 = v883;
        (*(v875 + 16))(v177, v877 + *(v875 + 72) * v379, v883);
        swift_getKeyPath();
        sub_2676CA84C();
        v383 = v885;

        (*v872)(v178, v874, v383);
        v512 = OUTLINED_FUNCTION_29_5();
        __swift_storeEnumTagSinglePayload(v512, v513, v514, v383);
        v515 = *(v873 + 48);
        v516 = v868;
        v382 = &qword_2676D06F0;
        sub_2675F95E4(v509, v868, &qword_2801CCBD8, &qword_2676D06F0);
        sub_2675F95E4(v178, v516 + v515, &qword_2801CCBD8, &qword_2676D06F0);
        v517 = OUTLINED_FUNCTION_59_0();
        OUTLINED_FUNCTION_21_3(v517, v518, v383);
        if (v186)
        {
          break;
        }

        OUTLINED_FUNCTION_116();
        sub_2675F95E4(v524, v525, &qword_2801CCBD8, &qword_2676D06F0);
        OUTLINED_FUNCTION_21_3(v516 + v515, 1, v383);
        if (v526)
        {
          v178 = v865;
          v527 = OUTLINED_FUNCTION_63_0();
          sub_2675EB7EC(v527, v528, &qword_2676D06F0);
          OUTLINED_FUNCTION_91_0();
          v529 = OUTLINED_FUNCTION_71_0();
          sub_2675EB7EC(v529, v530, &qword_2676D06F0);
          v531 = OUTLINED_FUNCTION_72_0();
          v532(v531);
          v533 = OUTLINED_FUNCTION_67_0();
          v534(v533);
          v523 = v516;
LABEL_144:
          sub_2675EB7EC(v523, &qword_2801CCBD0, &qword_2676D06E8);
          goto LABEL_146;
        }

        v177 = v860;
        (*v848)(v860, v516 + v515, v383);
        OUTLINED_FUNCTION_40_0();
        sub_267638E90(&qword_2801CCC28, v535, MEMORY[0x277D5C5C0]);
        LODWORD(v869) = sub_2676CBF1C();
        v383 = *v870;
        (*v870)(v177, v885);
        v178 = v865;
        v536 = OUTLINED_FUNCTION_63_0();
        sub_2675EB7EC(v536, v537, &qword_2676D06F0);
        OUTLINED_FUNCTION_91_0();
        v538 = OUTLINED_FUNCTION_71_0();
        sub_2675EB7EC(v538, v539, &qword_2676D06F0);
        v540 = OUTLINED_FUNCTION_72_0();
        v541(v540);
        v383(v350, v885);
        sub_2675EB7EC(v516, &qword_2801CCBD8, &qword_2676D06F0);
        if (v869)
        {
          goto LABEL_155;
        }

LABEL_146:
        v379 = (v379 + 1);
        if (v878 == v379)
        {
          goto LABEL_147;
        }
      }

      v519 = OUTLINED_FUNCTION_63_0();
      sub_2675EB7EC(v519, v520, &qword_2676D06F0);
      v521 = OUTLINED_FUNCTION_71_0();
      sub_2675EB7EC(v521, v522, &qword_2676D06F0);
      (*v871)(v177, v350);
      OUTLINED_FUNCTION_21_3(v516 + v515, 1, v383);
      v523 = v516;
      if (v186)
      {
        sub_2675EB7EC(v516, &qword_2801CCBD8, &qword_2676D06F0);
LABEL_155:
        OUTLINED_FUNCTION_110();
        v556 = OUTLINED_FUNCTION_48_1();
        v557(v556);

        OUTLINED_FUNCTION_111(1);
        goto LABEL_156;
      }

      goto LABEL_144;
    }

LABEL_147:

    OUTLINED_FUNCTION_110();
    v542 = OUTLINED_FUNCTION_48_1();
    v543(v542);
LABEL_156:
    v177 = v883;
    v350 = v884;
    v424 = v858;
    v483 = v832;
  }

  OUTLINED_FUNCTION_50_1();
  sub_2676CB5CC();
  OUTLINED_FUNCTION_37_3();
  sub_267638E90(v558, v559, MEMORY[0x277D5C470]);
  OUTLINED_FUNCTION_88_0();
  v561 = v560;
  sub_2676CA8EC();
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  v563 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v563, v564, v562);
  if (v186)
  {
    sub_2675EB7EC(v561, &qword_2801CC050, &unk_2676D0C20);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v565, v566, v567, v568);
  }

  else
  {
    swift_getKeyPath();
    sub_2676CA84C();
    v177 = v883;

    OUTLINED_FUNCTION_14_2();
    (*(v569 + 8))(v561, v562);
  }

  OUTLINED_FUNCTION_127();
  v570 = OUTLINED_FUNCTION_112();
  v571(v570);
  v572 = OUTLINED_FUNCTION_29_5();
  __swift_storeEnumTagSinglePayload(v572, v573, v574, v424);
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v575, v576, v577, v578);
  OUTLINED_FUNCTION_25_5();
  sub_2675F95E4(v579, v580, v581, v582);
  OUTLINED_FUNCTION_21_3(v350, 1, v424);
  if (!v186)
  {
    v589 = v819;
    sub_2675F95E4(v350, v819, &qword_2801CC618, &qword_2676CF520);
    OUTLINED_FUNCTION_21_3(v350 + v562, 1, v424);
    if (!v590)
    {
      OUTLINED_FUNCTION_51_2();
      v612 = OUTLINED_FUNCTION_65_1();
      v613(v612);
      OUTLINED_FUNCTION_38_2();
      sub_267638E90(v614, v615, MEMORY[0x277D5C490]);
      OUTLINED_FUNCTION_105();
      v616 = sub_2676CBF1C();
      v617 = *(v483 + 8);
      v617(v562, v424);
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v618, v619, v620);
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v621, v622, v623);
      v617(v589, v424);
      v177 = v883;
      OUTLINED_FUNCTION_30_4();
      sub_2675EB7EC(v624, v625, v626);
      if (v616)
      {
        goto LABEL_176;
      }

LABEL_169:
      v599 = v882;
      MEMORY[0x26D5FC5D0](0x507473694C6F7375, 0xEF6E6F697469736FLL, v884);
      OUTLINED_FUNCTION_121();
      v178 = v847;
      sub_2676CA8EC();
      v600 = v825;
      sub_2675F95E4(v589, v825, &qword_2801CC058, &unk_2676D0C50);
      v601 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_3(v601, v602, v844);
      if (v186)
      {
        sub_2675EB7EC(v600, &qword_2801CC058, &unk_2676D0C50);
        sub_2676CB62C();
        v607 = v826;
        v603 = OUTLINED_FUNCTION_33_4();
        __swift_storeEnumTagSinglePayload(v603, v604, 1, v605);
      }

      else
      {
        swift_getKeyPath();
        v606 = v826;
        sub_2676CA84C();
        v607 = v606;

        OUTLINED_FUNCTION_14_2();
        v608 = OUTLINED_FUNCTION_95_0();
        v609(v608);
        sub_2676CB62C();
        v599 = 1;
        OUTLINED_FUNCTION_9_15(v607);
        if (!v610)
        {
          OUTLINED_FUNCTION_5_11();
          v633 = OUTLINED_FUNCTION_11_16();
          v634(v633);
          OUTLINED_FUNCTION_118();
          v635 = *MEMORY[0x277D5C4D8];
          v636 = OUTLINED_FUNCTION_117();
          v637(v636);
          v177 = v883;
          if (v607 == v635)
          {
            v611 = 1;
          }

          else
          {
            v611 = 2;
          }

LABEL_180:
          LODWORD(v872) = v611;
          OUTLINED_FUNCTION_129();
          v638 = v831;
          v639 = OUTLINED_FUNCTION_66_1();
          v382 = v827;
          sub_2675F95E4(v639, v827, v640, v641);
          OUTLINED_FUNCTION_16_8(v382);
          if (v186)
          {
            sub_2675EB7EC(v382, &qword_2801CC058, &unk_2676D0C50);
            sub_2676CB62C();
            v642 = OUTLINED_FUNCTION_33_4();
            __swift_storeEnumTagSinglePayload(v642, v643, 1, v644);
          }

          else
          {
            swift_getKeyPath();
            sub_2676CA84C();
            v638 = v831;

            OUTLINED_FUNCTION_14_2();
            v645 = OUTLINED_FUNCTION_95_0();
            v646(v645);
            sub_2676CB62C();
            OUTLINED_FUNCTION_9_15(v638);
            if (!v647)
            {
              OUTLINED_FUNCTION_5_11();
              v649 = v648;
              v650 = OUTLINED_FUNCTION_11_16();
              v651(v650);
              OUTLINED_FUNCTION_118();
              v652 = *MEMORY[0x277D5C4E8];
              v599 = v649 + 8;
              v653 = OUTLINED_FUNCTION_117();
              v654(v653);
              OUTLINED_FUNCTION_129();
              v186 = v638 == v652;
              v177 = v883;
              v655 = v872;
              if (v186)
              {
                v655 = 1;
              }

              LODWORD(v872) = v655;
LABEL_190:
              v656 = OUTLINED_FUNCTION_79_0();
              MEMORY[0x26D5FC5D0](v656);
              OUTLINED_FUNCTION_51_2();
              sub_2676CA8EC();
              v657 = OUTLINED_FUNCTION_30_0();
              v658 = v862;
              OUTLINED_FUNCTION_21_3(v657, v659, v862);
              if (v186)
              {
                OUTLINED_FUNCTION_66_1();
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v660, v661, v662);
                OUTLINED_FUNCTION_70_0();
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v663, v664, v665);
                v666 = OUTLINED_FUNCTION_60();
                sub_2675EB7EC(v666, v667, v668);
                v669 = &qword_2801CC040;
                v670 = &qword_2676CDAA8;
                v671 = v382;
              }

              else
              {
                OUTLINED_FUNCTION_110();
                (*(v672 + 32))(v824[1], v382, v658);
                swift_getKeyPath();
                OUTLINED_FUNCTION_36_4();
                sub_267638E90(v673, v674, MEMORY[0x277D5C5A8]);
                OUTLINED_FUNCTION_105();
                v882 = v675;
                v383 = sub_2676CA8CC();

                v884 = v383;
                v676 = v849;
                v881 = *(v383 + 2);
                if (v881)
                {
                  v677 = 0;
                  OUTLINED_FUNCTION_4_5();
                  v879 = v884 + v678;
                  v878 = (v679 + 16);
                  LODWORD(v877) = *MEMORY[0x277D5C5B0];
                  v876 = (v823 + 104);
                  v871 = (v823 + 32);
                  v874 = (v823 + 8);
                  v880 = v679 + 8;
                  v379 = &qword_2801CCBD8;
                  v350 = &qword_2676D06F0;
                  while (1)
                  {
                    if (v677 >= v884[2])
                    {
                      goto LABEL_230;
                    }

                    v382 = v866;
                    (*(v875 + 16))(v866, v879 + *(v875 + 72) * v677, v177);
                    swift_getKeyPath();
                    v178 = v177;
                    v680 = v867;
                    sub_2676CA84C();
                    v383 = v885;

                    (*v876)(v599, v877, v383);
                    OUTLINED_FUNCTION_17_2();
                    __swift_storeEnumTagSinglePayload(v681, v682, v683, v383);
                    v684 = *(v873 + 48);
                    sub_2675F95E4(v680, v676, &qword_2801CCBD8, &qword_2676D06F0);
                    sub_2675F95E4(v599, v676 + v684, &qword_2801CCBD8, &qword_2676D06F0);
                    v685 = OUTLINED_FUNCTION_59_0();
                    OUTLINED_FUNCTION_21_3(v685, v686, v383);
                    if (v186)
                    {
                      break;
                    }

                    v693 = v857;
                    sub_2675F95E4(v676, v857, &qword_2801CCBD8, &qword_2676D06F0);
                    OUTLINED_FUNCTION_21_3(v676 + v684, 1, v383);
                    if (v694)
                    {
                      OUTLINED_FUNCTION_129();
                      v695 = OUTLINED_FUNCTION_68_0();
                      sub_2675EB7EC(v695, v696, &qword_2676D06F0);
                      sub_2675EB7EC(v867, &qword_2801CCBD8, &qword_2676D06F0);
                      OUTLINED_FUNCTION_124();
                      v697 = v883;
                      v698(v866, v883);
                      v699 = v693;
                      v177 = v697;
                      (*v874)(v699, v383);
LABEL_204:
                      sub_2675EB7EC(v676, &qword_2801CCBD0, &qword_2676D06E8);
                      goto LABEL_206;
                    }

                    v700 = OUTLINED_FUNCTION_112();
                    v701(v700);
                    OUTLINED_FUNCTION_40_0();
                    sub_267638E90(&qword_2801CCC28, v702, MEMORY[0x277D5C5C0]);
                    v703 = sub_2676CBF1C();
                    v382 = v874;
                    v383 = *v874;
                    v676 = v849;
                    (*v874)(v178, v885);
                    OUTLINED_FUNCTION_129();
                    v704 = OUTLINED_FUNCTION_68_0();
                    sub_2675EB7EC(v704, v705, &qword_2676D06F0);
                    sub_2675EB7EC(v867, &qword_2801CCBD8, &qword_2676D06F0);
                    OUTLINED_FUNCTION_124();
                    v178 = v883;
                    v706(v866, v883);
                    v707 = v693;
                    v177 = v178;
                    v383(v707, v885);
                    sub_2675EB7EC(v676, &qword_2801CCBD8, &qword_2676D06F0);
                    if (v703)
                    {
                      goto LABEL_225;
                    }

LABEL_206:
                    if (v881 == ++v677)
                    {
                      goto LABEL_207;
                    }
                  }

                  v687 = OUTLINED_FUNCTION_68_0();
                  sub_2675EB7EC(v687, v688, &qword_2676D06F0);
                  v689 = OUTLINED_FUNCTION_85_0();
                  sub_2675EB7EC(v689, v690, &qword_2676D06F0);
                  OUTLINED_FUNCTION_124();
                  v691 = OUTLINED_FUNCTION_73_0();
                  v692(v691);
                  OUTLINED_FUNCTION_21_3(v676 + v684, 1, v383);
                  v177 = v178;
                  if (v186)
                  {
                    sub_2675EB7EC(v676, &qword_2801CCBD8, &qword_2676D06F0);
LABEL_225:

                    OUTLINED_FUNCTION_27_5();
                    v768 = OUTLINED_FUNCTION_48_1();
                    v769(v768);
                    OUTLINED_FUNCTION_66_1();
                    OUTLINED_FUNCTION_14_11();
                    sub_2675EB7EC(v770, v771, v772);
                    OUTLINED_FUNCTION_70_0();
                    OUTLINED_FUNCTION_14_11();
                    sub_2675EB7EC(v773, v774, v775);
                    v776 = OUTLINED_FUNCTION_60();
                    sub_2675EB7EC(v776, v777, v778);
                    goto LABEL_209;
                  }

                  goto LABEL_204;
                }

LABEL_207:

                OUTLINED_FUNCTION_27_5();
                v708 = OUTLINED_FUNCTION_48_1();
                v709(v708);
                OUTLINED_FUNCTION_66_1();
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v710, v711, v712);
                OUTLINED_FUNCTION_70_0();
                OUTLINED_FUNCTION_14_11();
                sub_2675EB7EC(v713, v714, v715);
                v671 = OUTLINED_FUNCTION_60();
              }

              sub_2675EB7EC(v671, v669, v670);
              goto LABEL_209;
            }
          }

          sub_2675EB7EC(v638, &qword_2801CCBF0, &qword_2676D0708);
          goto LABEL_190;
        }
      }

      sub_2675EB7EC(v607, &qword_2801CCBF0, &qword_2676D0708);
      v611 = 2;
      goto LABEL_180;
    }

    v591 = v589;
    OUTLINED_FUNCTION_14_11();
    sub_2675EB7EC(v592, v593, v594);
    OUTLINED_FUNCTION_14_11();
    v589 = v859;
    sub_2675EB7EC(v595, v596, v597);
    OUTLINED_FUNCTION_27_5();
    v598(v591, v424);
LABEL_168:
    sub_2675EB7EC(v589, &qword_2801CC610, &unk_2676D0C10);
    goto LABEL_169;
  }

  OUTLINED_FUNCTION_14_11();
  sub_2675EB7EC(v583, v584, v585);
  OUTLINED_FUNCTION_14_11();
  v589 = v859;
  sub_2675EB7EC(v586, v587, v588);
  OUTLINED_FUNCTION_21_3(v589 + v562, 1, v424);
  if (!v186)
  {
    goto LABEL_168;
  }

  sub_2675EB7EC(v589, &qword_2801CC618, &qword_2676CF520);
LABEL_176:
  v627 = OUTLINED_FUNCTION_70_0();
  sub_2675EB7EC(v627, v628, v629);
  v630 = OUTLINED_FUNCTION_60();
  sub_2675EB7EC(v630, v631, v632);
LABEL_209:
  OUTLINED_FUNCTION_20_1();
}

void sub_267636AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  v94 = v20;
  v25 = v24;
  sub_2676CA07C();
  OUTLINED_FUNCTION_3();
  v90 = v27;
  v91 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_5();
  v89 = v28;
  OUTLINED_FUNCTION_7_3();
  sub_2676CA22C();
  OUTLINED_FUNCTION_3();
  v87 = v30;
  v88 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_5();
  v86 = v31;
  OUTLINED_FUNCTION_7_3();
  v93 = sub_2676CA0DC();
  OUTLINED_FUNCTION_3();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_108();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC148, &unk_2676CDD90);
  v36 = OUTLINED_FUNCTION_4_1(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  v92 = v37;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_115();
  v39 = sub_2676CA00C();
  OUTLINED_FUNCTION_3();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_3_2();
  v45 = v44 - v43;
  v46 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_125();
  (*(v48 + 16))(v22, v94, v46);
  v50 = OUTLINED_FUNCTION_120();
  if (v51(v50) != *MEMORY[0x277D5C160])
  {
    *v25 = 0u;
    v25[1] = 0u;
    v59 = OUTLINED_FUNCTION_120();
    v60(v59);
    goto LABEL_13;
  }

  v95 = v25;
  v52 = OUTLINED_FUNCTION_120();
  v53(v52);
  (*(v41 + 32))(v45, v22, v39);
  sub_2676C9FFC();
  v54 = sub_2676CA0CC();
  v85 = *(v33 + 8);
  v85(v23, v93);
  sub_267698E5C(v54);

  v55 = sub_2676CA19C();
  OUTLINED_FUNCTION_9_15(v21);
  if (v56)
  {
    v57 = OUTLINED_FUNCTION_82_0();
    v58(v57);
    sub_2675EB7EC(v21, &qword_2801CC148, &unk_2676CDD90);
LABEL_11:
    v96 = 0u;
    v97 = 0u;
LABEL_12:
    sub_2675EB7EC(&v96, &qword_2801CC158, &qword_2676CDDA0);
    *v95 = 0u;
    v95[1] = 0u;
    goto LABEL_13;
  }

  v61 = sub_26762AC20();
  OUTLINED_FUNCTION_14_2();
  v63 = *(v62 + 8);
  v63(v21, v55);
  if (!v61)
  {
    v64 = OUTLINED_FUNCTION_82_0();
    v65(v64);
    goto LABEL_11;
  }

  sub_2676CA56C();

  if (!*(&v97 + 1))
  {
    v66 = OUTLINED_FUNCTION_82_0();
    v67(v66);
    goto LABEL_12;
  }

  sub_267619E0C(&v96, v98);
  sub_2675EB89C(v98, &v96);
  sub_2676CA5EC();
  if (swift_dynamicCast() || (v68 = sub_2676CA71C(), OUTLINED_FUNCTION_10_12(v68)) || (v69 = sub_2676CA62C(), OUTLINED_FUNCTION_10_12(v69)) || (v70 = sub_2676CA72C(), OUTLINED_FUNCTION_10_12(v70)) || (v71 = sub_2676CA6AC(), OUTLINED_FUNCTION_10_12(v71)) || (v72 = sub_2676CA69C(), OUTLINED_FUNCTION_10_12(v72)) || (v73 = sub_2676CA59C(), OUTLINED_FUNCTION_10_12(v73)) || (v81 = sub_2676CA5FC(), OUTLINED_FUNCTION_10_12(v81)) || (v82 = sub_2676CA65C(), OUTLINED_FUNCTION_10_12(v82)) || (v83 = sub_2676CA64C(), OUTLINED_FUNCTION_10_12(v83)) || (v84 = sub_2676CA5BC(), OUTLINED_FUNCTION_10_12(v84)))
  {
  }

  __swift_destroy_boxed_opaque_existential_1(&v96);
  sub_2676C9FFC();
  v74 = sub_2676CA0CC();
  v75 = OUTLINED_FUNCTION_95_0();
  (v85)(v75);
  sub_267698E5C(v74);

  OUTLINED_FUNCTION_9_15(v92);
  if (v56)
  {
    OUTLINED_FUNCTION_27_5();
    v76 = OUTLINED_FUNCTION_87_0();
    v77(v76);
    sub_2675EB7EC(v92, &qword_2801CC148, &unk_2676CDD90);
  }

  else
  {
    sub_2676CA15C();
    v78 = OUTLINED_FUNCTION_58_1();
    (v63)(v78);
    sub_2676CA1FC();
    (*(v87 + 8))(v86, v88);
    sub_2676CA06C();
    (*(v90 + 8))(v89, v91);
    sub_267638B3C();

    OUTLINED_FUNCTION_27_5();
    v79 = OUTLINED_FUNCTION_87_0();
    v80(v79);
  }

  sub_267619E0C(v98, v95);
LABEL_13:
  OUTLINED_FUNCTION_20_1();
}