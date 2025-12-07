uint64_t sub_2660EB11C()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_2660EB3D0;
  }

  else
  {

    v4 = sub_2660EB258;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2660EB258()
{
  sub_2660C5864(*(v0 + 176) + 72, v0 + 56);
  sub_2660C5864(v0 + 16, v0 + 96);
  v1 = swift_allocObject();
  sub_2660B9EB8((v0 + 96), v1 + 16);
  sub_26618AC90();
  swift_allocObject();
  *(v0 + 160) = sub_26618AC80();
  sub_26618B340();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  OUTLINED_FUNCTION_54();

  return v2();
}

void *sub_2660EB44C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  sub_2660D31B4((v0 + 19));
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);
  __swift_destroy_boxed_opaque_existential_1(v0 + 41);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents19LaunchQuickNoteFlow_input);
  return v0;
}

uint64_t sub_2660EB4B4()
{
  sub_2660EB44C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for LaunchQuickNoteFlow(uint64_t a1)
{
  result = qword_28005C250;
  if (!qword_28005C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660EB560(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660EB658()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660E1B2C;

  return sub_2660EA248();
}

uint64_t sub_2660EB740(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660EB808(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LaunchQuickNoteFlow(0);

  return sub_26618AFE0();
}

unint64_t sub_2660EB844(uint64_t a1)
{
  result = sub_2660EB86C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660EB86C()
{
  result = qword_28005C260;
  if (!qword_28005C260)
  {
    type metadata accessor for LaunchQuickNoteFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C260);
  }

  return result;
}

uint64_t sub_2660EB8C4()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2660DF700;

  return sub_2660E17D0(v3, v0 + 16);
}

uint64_t sub_2660EB994(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26618B790();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660EBA98(uint64_t a1, uint64_t a2)
{
  type metadata accessor for QRCodeFlow(0);
  OUTLINED_FUNCTION_0_6();
  sub_2660ED5F4(v2, v3, &unk_2661907E0);
  return sub_26618AFB0();
}

uint64_t sub_2660EBB18()
{
  OUTLINED_FUNCTION_18();
  v1[21] = v2;
  v1[22] = v0;
  v1[23] = *v0;
  v3 = sub_26618B840();
  v1[24] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[25] = v4;
  v1[26] = swift_task_alloc();
  v5 = sub_26618B800();
  v1[27] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[28] = v6;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v7 = sub_26618B790();
  v1[31] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[32] = v8;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1[35] = swift_task_alloc();
  v9 = sub_26618C6B0();
  v1[36] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[37] = v10;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660EBD58, 0, 0);
}

uint64_t sub_2660EBD58()
{
  if (sub_2660ECAC0())
  {
    v1 = v0[35];
    v2 = v0[31];
    v3 = v0[22];
    v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input;
    swift_beginAccess();
    sub_2660CFA28(v3 + v4, v1);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
    v6 = v0[35];
    if (EnumTagSinglePayload)
    {
      v7 = &qword_28005C060;
      v8 = &qword_26618FD10;
      v9 = v0[35];
LABEL_4:
      sub_2660C8040(v9, v7, v8);
LABEL_5:
      if (qword_2814B2C40 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
      }

      __swift_project_value_buffer(v0[36], qword_2814B4A98);
      v10 = OUTLINED_FUNCTION_8_3();
      v11(v10);
      v12 = sub_26618C690();
      v13 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_16_4(v13))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_7(&dword_2660B7000, v14, v15, "QRCodeFlow.execute missing usoTask in it's input, returning generic error output");
        OUTLINED_FUNCTION_7_2();
      }

      v16 = OUTLINED_FUNCTION_9_5();
      v17(v16);
      v18 = swift_task_alloc();
      v0[45] = v18;
      OUTLINED_FUNCTION_0_6();
      sub_2660ED5F4(v19, v20, &unk_266190840);
      OUTLINED_FUNCTION_8_6();
      *v18 = v21;
      OUTLINED_FUNCTION_2_11();
      OUTLINED_FUNCTION_20_2();

      return sub_2660F1894();
    }

    v37 = v0[34];
    v38 = v0[31];
    v39 = v0[32];
    v40 = v0[30];
    v41 = v0[27];
    v42 = v0[28];
    (*(v39 + 16))(v37, v0[35], v38);
    sub_2660C8040(v6, &qword_28005C060, &qword_26618FD10);
    sub_26618B770();
    v43 = *(v39 + 8);
    v43(v37, v38);
    sub_2660C87C0();
    (*(v42 + 8))(v40, v41);
    v44 = v0[5];
    if (!v44)
    {
      v7 = &qword_28005C148;
      v8 = &unk_26618FF00;
      v9 = (v0 + 2);
      goto LABEL_4;
    }

    v45 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v46 = (*(v45 + 8))(v44, v45);
    v0[42] = v46;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (!v46)
    {
      goto LABEL_5;
    }

    v47 = sub_2660ECB48();
    if (v48)
    {
      v49 = v48;
      v50 = v0[28];
      v51 = v0[29];
      v74 = v0[27];
      v75 = v0[33];
      v71 = v47;
      v72 = v0[26];
      v52 = v0[25];
      v73 = v0[24];
      v53 = v0[22];
      v76 = v0[31];
      type metadata accessor for LaunchAppWrapperFlow(0);
      sub_2660C5864(v53 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_outputPublisher, (v0 + 7));
      sub_2660C5864(v53 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_aceService, (v0 + 12));
      sub_2660E2DA4();
      v55 = v54;
      sub_26617D5D4((v53 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider), v71, v49, v72);

      (*(v52 + 16))(v51, v72, v73);
      (*(v50 + 104))(v51, *MEMORY[0x277D5C160], v74);
      sub_26618B780();
      sub_2660E34E0();
      v43(v75, v76);
      v0[20] = v55;
      sub_2660ED5F4(qword_2814B3C80, type metadata accessor for LaunchAppWrapperFlow, &unk_2661904F0);
      sub_26618B340();

      (*(v52 + 8))(v72, v73);

      OUTLINED_FUNCTION_11_3();

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_20_2();

      __asm { BRAA            X2, X16 }
    }

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    __swift_project_value_buffer(v0[36], qword_2814B4A98);
    v58 = OUTLINED_FUNCTION_8_3();
    v59(v58);
    v60 = sub_26618C690();
    v61 = sub_26618CA90();
    if (OUTLINED_FUNCTION_16_4(v61))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v62, v63, "QRCodeFlow.execute could not resolve app, returning noAppsFound dialog");
      OUTLINED_FUNCTION_7_2();
    }

    v64 = OUTLINED_FUNCTION_9_5();
    v65(v64);
    v66 = swift_task_alloc();
    v0[43] = v66;
    OUTLINED_FUNCTION_0_6();
    sub_2660ED5F4(v67, v68, &unk_266190840);
    OUTLINED_FUNCTION_8_6();
    *v66 = v69;
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_20_2();

    return sub_2660F2244();
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    __swift_project_value_buffer(v0[36], qword_2814B4A98);
    v24 = OUTLINED_FUNCTION_8_3();
    v25(v24);
    v26 = sub_26618C690();
    v27 = sub_26618CA90();
    if (OUTLINED_FUNCTION_16_4(v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_7(&dword_2660B7000, v28, v29, "QRCodeFlow.execute unsupported device, returning generic 'unsupportedOnDevice' output");
      OUTLINED_FUNCTION_7_2();
    }

    v30 = OUTLINED_FUNCTION_9_5();
    v31(v30);
    v32 = swift_task_alloc();
    v0[41] = v32;
    OUTLINED_FUNCTION_0_6();
    sub_2660ED5F4(v33, v34, &unk_266190840);
    OUTLINED_FUNCTION_8_6();
    *v32 = v35;
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_20_2();

    return sub_2660F1D34();
  }
}

uint64_t sub_2660EC4F0(unint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v12 = OUTLINED_FUNCTION_6_5(v4, v5, v6, v7, v8, v9, v10, v11, v15, a1);

  return v13(v12);
}

uint64_t sub_2660EC6F4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 352) = v0;

  return MEMORY[0x2822009F8](sub_2660EC7EC, 0, 0);
}

uint64_t sub_2660EC7EC()
{

  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_2660EC8BC(unint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  v12 = OUTLINED_FUNCTION_6_5(v4, v5, v6, v7, v8, v9, v10, v11, v15, a1);

  return v13(v12);
}

uint64_t sub_2660ECAC0()
{
  v1 = (v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState);
  v2 = *(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState + 24);
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if (sub_2660C8128(v2, v3))
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v4 = sub_26618B190() ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2660ECB48()
{
  v1 = sub_26618C6B0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v50 - v7);
  MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v57 = sub_266144324();
  if (qword_2814B2C40 != -1)
  {
LABEL_20:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v11 = __swift_project_value_buffer(v1, qword_2814B4A98);
  v12 = v2[2];
  v54 = (v2 + 2);
  v55 = v11;
  v53 = v12;
  v12(v10);
  v13 = sub_26618C690();
  v14 = sub_26618CA90();
  v15 = os_log_type_enabled(v13, v14);
  v50 = v8;
  v51 = v5;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v56[0] = v17;
    *v16 = 136315138;

    MEMORY[0x26677BD80](v18, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_15_4();
    v19 = sub_266103A98(v1, v2, v56);
    v2 = &unk_26618F000;

    *(v16 + 4) = v19;
    v1 = v0;
    _os_log_impl(&dword_2660B7000, v13, v14, "QRCodeFlow.resolveApp apps referenced in usoTask: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v8 = v50;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v20 = 67672;
    MEMORY[0x10858](v10, v0);
  }

  else
  {

    v20 = v2[1];
    (v20)(v10, v1);
  }

  v53(v8, v55, v1);
  v21 = sub_26618C690();
  v22 = sub_26618CA90();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v56[0] = v8;
    *v23 = 136315138;

    MEMORY[0x26677BD80](v24, MEMORY[0x277D837D0]);
    OUTLINED_FUNCTION_15_4();
    v25 = sub_266103A98(v1, v2, v56);
    v2 = &unk_26618F000;

    *(v23 + 4) = v25;
    v1 = v0;
    _os_log_impl(&dword_2660B7000, v21, v22, "QRCodeFlow.resolveApp adding the code scanner to list of candidate apps: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v26 = v50;
    v27 = v0;
  }

  else
  {

    v26 = v8;
    v27 = v1;
  }

  (v20)(v26, v27);
  v28 = v51;
  OUTLINED_FUNCTION_12_3();
  sub_266129488();
  v29 = *(v57 + 16);
  sub_26612955C();
  v0 = v57;
  *(v57 + 16) = v29 + 1;
  v30 = v0 + 16 * v29;
  *(v30 + 32) = 0xD000000000000018;
  *(v30 + 40) = v8;
  v57 = v0;
  swift_endAccess();
  v53(v28, v55, v1);
  v31 = sub_26618C690();
  v32 = sub_26618CA90();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v55 = v2;
    v2 = v33;
    v8 = swift_slowAlloc();
    v56[0] = v8;
    *v2 = 136315138;

    v35 = v1;
    v36 = MEMORY[0x26677BD80](v34, MEMORY[0x277D837D0]);
    v38 = v37;

    v1 = sub_266103A98(v36, v38, v56);

    *(v2 + 4) = v1;
    _os_log_impl(&dword_2660B7000, v31, v32, "QRCodeFlow.resolveApp adding the camera to list of candidate apps: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v39 = v28;
    v40 = v35;
  }

  else
  {

    v39 = v28;
    v40 = v1;
  }

  (v20)(v39, v40);
  OUTLINED_FUNCTION_12_3();
  sub_266129488();
  v41 = *(v57 + 16);
  sub_26612955C();
  v42 = v57;
  v54 = (v41 + 1);
  *(v57 + 16) = v41 + 1;
  v43 = v42 + 16 * v41;
  *(v43 + 32) = 0xD000000000000010;
  *(v43 + 40) = v8;
  swift_endAccess();
  v5 = (v52 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider);

  v10 = 0;
  v55 = v42;
  for (i = (v42 + 40); ; i += 2)
  {
    if (v54 == v10)
    {
      swift_bridgeObjectRelease_n();
      return 0;
    }

    if (v10 >= v55[2])
    {
      __break(1u);
      goto LABEL_20;
    }

    v1 = *(i - 1);
    v8 = *i;
    v2 = v5[3];
    v45 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v2);
    v0 = v45 + 16;
    v46 = *(v45 + 16);

    v47 = v46(v1, v8, 1, v2, v45);
    if (v47)
    {
      break;
    }

    ++v10;
  }

  v48 = v47;
  swift_bridgeObjectRelease_n();

  return v1;
}

uint64_t sub_2660ED180()
{
  sub_2660C8040(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_input, &qword_28005C060, &qword_26618FD10);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_installedAppProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_aceService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_outputPublisher));
  sub_2660D3208(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_dialogProvider);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents10QRCodeFlow_eventSender));
  return v0;
}

uint64_t sub_2660ED218()
{
  sub_2660ED180();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for QRCodeFlow(uint64_t a1)
{
  result = qword_28005C2A0;
  if (!qword_28005C2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660ED2C4(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660ED3B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660E1B2C;

  return sub_2660EBB18();
}

uint64_t sub_2660ED498(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660DF700;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660ED560(uint64_t a1, uint64_t a2)
{
  type metadata accessor for QRCodeFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660ED59C(uint64_t a1)
{
  result = sub_2660ED5F4(&qword_28005C2B0, type metadata accessor for QRCodeFlow, &unk_2661907E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2660ED5F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_7_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_3()
{
}

uint64_t OUTLINED_FUNCTION_12_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_4()
{
}

BOOL OUTLINED_FUNCTION_16_4(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_2660ED764()
{
  v0 = type metadata accessor for BaseDialogProvider();
  v1 = swift_allocObject();
  sub_26618B600();
  v2 = sub_26618B470();
  OUTLINED_FUNCTION_41_0(v2);
  v3 = sub_26618B460();
  sub_26618B810();
  v37[3] = sub_26618C460();
  v37[4] = &off_2877CC660;
  v37[0] = sub_26618C450();
  sub_26618B040();
  v35[3] = v0;
  v35[4] = &off_2877CAA90;
  v35[0] = v1;
  v33 = v2;
  v34 = MEMORY[0x277D5BD58];
  *&v32 = v3;
  v30 = &type metadata for ReferenceResolver;
  v31 = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v29[0] = swift_allocObject();
  sub_2660CFC00(v37, v29[0] + 16);
  v27 = &type metadata for AppLaunchFlowFactoryImpl;
  v28 = &off_2877CD5D8;
  v4 = type metadata accessor for RemoveAppFlow(0);
  v5 = OUTLINED_FUNCTION_41_0(v4);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v35, v0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v14 = *v8;
  v25[3] = v0;
  v25[4] = &off_2877CAA90;
  v25[0] = v14;
  *(v5 + 256) = &type metadata for ReferenceResolver;
  *(v5 + 264) = &off_2877CC6F0;
  OUTLINED_FUNCTION_4_5();
  v15 = swift_allocObject();
  *(v5 + 232) = v15;
  v16 = *(v12 + 1);
  *(v15 + 16) = *v12;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v12 + 4);
  *(v5 + 336) = &type metadata for AppLaunchFlowFactoryImpl;
  *(v5 + 344) = &off_2877CD5D8;
  v17 = OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input;
  v18 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v5 + v17, 1, 1, v18);
  sub_2660F1290(v39, v5 + 112);
  sub_2660F1290(v38, v5 + 152);
  sub_2660F1290(v25, v5 + 192);
  sub_2660F1290(v38, v5 + 16);
  sub_2660F1290(&v32, v5 + 56);

  v19 = sub_26618C8A0();
  LODWORD(v1) = MGGetSInt32Answer();

  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v25);
  *(v5 + 104) = v1 == 1;
  sub_2660F1290(v5 + 16, v24);
  type metadata accessor for LocUtil();
  OUTLINED_FUNCTION_4_5();
  v20 = swift_allocObject();
  sub_2660B9EB8(v24, v20 + 16);
  *(v5 + 96) = v20;
  sub_2660B9EB8(&v32, v5 + 272);
  sub_2660F1290(v5 + 152, v24);
  OUTLINED_FUNCTION_4_5();
  v21 = swift_allocObject();
  sub_2660B9EB8(v24, v21 + 16);
  *(v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_locUtil) = v21;
  sub_2660B9EB8(&v36, v5 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_eventSender);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_2660CFC5C(v37);
  return v5;
}

uint64_t sub_2660EDB94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v2 = OUTLINED_FUNCTION_3_0(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = sub_26618B790();
  OUTLINED_FUNCTION_4_0();
  v6 = OUTLINED_FUNCTION_42_1();
  v7(v6);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v4, v0 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660EDC8C()
{
  type metadata accessor for RemoveAppFlow(0);
  OUTLINED_FUNCTION_0_7();
  sub_2660F10F4(v0, v1, &unk_266190928);
  OUTLINED_FUNCTION_42_1();
  return sub_26618AFB0();
}

uint64_t sub_2660EDD08()
{
  OUTLINED_FUNCTION_18();
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = *v0;
  v3 = sub_26618AB50();
  OUTLINED_FUNCTION_3_0(v3);
  v1[37] = OUTLINED_FUNCTION_8_2();
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  OUTLINED_FUNCTION_3_0(v4);
  v1[38] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v5);
  v1[39] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[40] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[41] = v7;
  v1[42] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618C6B0();
  v1[43] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[44] = v9;
  v1[45] = OUTLINED_FUNCTION_25_0();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v10 = sub_26618B800();
  v1[51] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[52] = v11;
  v1[53] = OUTLINED_FUNCTION_25_0();
  v1[54] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  OUTLINED_FUNCTION_3_0(v12);
  v1[55] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B790();
  v1[56] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[57] = v14;
  v1[58] = OUTLINED_FUNCTION_25_0();
  v1[59] = swift_task_alloc();
  v15 = sub_26618B500();
  v1[60] = v15;
  OUTLINED_FUNCTION_0_4(v15);
  v1[61] = v16;
  v1[62] = OUTLINED_FUNCTION_8_2();
  v17 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2660EDFE4()
{
  v109 = v0;
  v1 = *(v0 + 488);
  OUTLINED_FUNCTION_28_2((*(v0 + 280) + 152));
  sub_26618B4F0();
  OUTLINED_FUNCTION_42_1();
  v2 = sub_26618B110();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_11_2();
  v3(v4);
  v107 = v2;
  if ((v2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C068, &unk_26618F7D0);
    v20 = sub_26618AE80();
    OUTLINED_FUNCTION_0_4(v20);
    *(swift_allocObject() + 16) = xmmword_26618E190;
    sub_26618B4F0();
    sub_26618AE70();
    v21 = OUTLINED_FUNCTION_11_2();
    v3(v21);
    v22 = sub_26618AC10();

    *(v0 + 256) = v22;
    sub_26618AE60();
    sub_26618B330();

    goto LABEL_23;
  }

  v6 = *(v0 + 440);
  v5 = *(v0 + 448);
  v7 = *(v0 + 280);
  v8 = OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v7 + v8, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_2660BDDF8(*(v0 + 440), &qword_28005C060, &qword_26618FD10);
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
    (*(v10 + 16))(v9);
    v11 = sub_26618C690();
    v12 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v12))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_9_6();
      _os_log_impl(v13, v14, v15, v16, v17, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    v18 = OUTLINED_FUNCTION_11_2();
    v19(v18);
    sub_26618B360();
    goto LABEL_23;
  }

  (*(*(v0 + 456) + 32))(*(v0 + 472), *(v0 + 440), *(v0 + 448));
  sub_26618B770();
  sub_2660C87C0();
  v23 = OUTLINED_FUNCTION_11_2();
  v24(v23);
  if (!*(v0 + 40))
  {
    sub_2660BDDF8(v0 + 16, &qword_28005C148, &unk_26618FF00);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v25 = OUTLINED_FUNCTION_11_2();
  v27 = v26(v25);
  *(v0 + 504) = v27;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v27)
  {
LABEL_17:
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v38 = *(v0 + 464);
    v37 = *(v0 + 472);
    v40 = *(v0 + 448);
    v39 = *(v0 + 456);
    v41 = *(v0 + 376);
    v42 = *(v0 + 352);
    OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
    (*(v42 + 16))(v41);
    (*(v39 + 16))(v38, v37, v40);
    v43 = sub_26618C690();
    v44 = sub_26618CAB0();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 448);
    if (v45)
    {
      v47 = *(v0 + 424);
      v101 = *(v0 + 352);
      v102 = *(v0 + 344);
      v104 = *(v0 + 376);
      v48 = OUTLINED_FUNCTION_49_0();
      v100 = v46;
      v49 = OUTLINED_FUNCTION_45_1();
      v108 = v49;
      *v48 = 136315138;
      sub_26618B770();
      sub_266145588(v47);
      v50 = OUTLINED_FUNCTION_39_0();
      v44(v50, v100);
      v51 = OUTLINED_FUNCTION_31_0();
      v54 = sub_266103A98(v51, v52, v53);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_2660B7000, v43, v44, "RemoveAppFlow.execute() Unexpected parse type or unable to get USO task: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v101 + 8))(v104, v102);
    }

    else
    {

      v55 = OUTLINED_FUNCTION_39_0();
      v44(v55, v46);
      v56 = OUTLINED_FUNCTION_31_0();
      v57(v56);
    }

    v58 = *(v0 + 472);
    v59 = *(v0 + 448);
    sub_26618B360();
    v44(v58, v59);
LABEL_23:

    LOBYTE(v108) = (v107 & 1) == 0;
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_20_2();

    __asm { BRAA            X2, X16 }
  }

  v28 = *(v0 + 280);
  sub_26613BA0C();
  v30 = v29;
  v31 = __swift_project_boxed_opaque_existential_1((v28 + 232), *(v28 + 256));
  v32 = sub_2660FA19C(v31, v27);
  *(v0 + 512) = v32;
  v33 = *(v32 + 16);
  *(v0 + 520) = v33;
  if (sub_266145BC4(v30) == 0x64616F6C66666FLL && v34 == 0xE700000000000000)
  {

    v36 = 1;
  }

  else
  {
    v36 = sub_26618D000();
  }

  if (v30 > 8u || ((1 << v30) & 0x1A0) == 0)
  {

    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    v84 = *(v0 + 384);
    v85 = *(v0 + 352);
    OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
    (*(v85 + 16))(v84);
    v86 = sub_26618C690();
    v87 = sub_26618CAB0();
    v88 = OUTLINED_FUNCTION_15_1(v87);
    v89 = *(v0 + 384);
    v91 = *(v0 + 344);
    v90 = *(v0 + 352);
    if (v88)
    {
      v92 = OUTLINED_FUNCTION_49_0();
      v93 = OUTLINED_FUNCTION_45_1();
      v108 = v93;
      *v92 = 136315138;
      *(v0 + 680) = v30;
      v94 = sub_26618C8D0();
      v106 = v89;
      v96 = sub_266103A98(v94, v95, &v108);

      *(v92 + 4) = v96;
      _os_log_impl(&dword_2660B7000, v86, v87, "RemoveAppFlow.execute() Unexpected verb: %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();

      (*(v90 + 8))(v106, v91);
    }

    else
    {

      (*(v90 + 8))(v89, v91);
    }

    v97 = *(v0 + 472);
    v99 = *(v0 + 448);
    v98 = *(v0 + 456);
    sub_26618B360();

    (*(v98 + 8))(v97, v99);
    goto LABEL_23;
  }

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v62 = *(v0 + 352);
  *(v0 + 528) = OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
  *(v0 + 536) = *(v62 + 16);
  *(v0 + 544) = (v62 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v63 = OUTLINED_FUNCTION_13_2();
  v64(v63);
  v65 = sub_26618C690();
  v66 = sub_26618CAA0();
  v67 = OUTLINED_FUNCTION_15_1(v66);
  v68 = *(v0 + 400);
  v69 = *(v0 + 344);
  v70 = *(v0 + 352);
  if (v67)
  {
    v103 = v33 != 0;
    v71 = swift_slowAlloc();
    v108 = OUTLINED_FUNCTION_45_1();
    v72 = v108;
    *v71 = 136315906;
    *(v0 + 681) = v30;
    v73 = sub_26618C8D0();
    v105 = v68;
    v75 = v36;
    v76 = sub_266103A98(v73, v74, &v108);

    *(v71 + 4) = v76;
    *(v71 + 12) = 1024;
    *(v71 + 14) = v103;
    *(v71 + 18) = 1024;
    *(v71 + 20) = v75 & 1;
    *(v71 + 24) = 1024;
    *(v71 + 26) = 0;
    _os_log_impl(&dword_2660B7000, v65, v66, "RemoveAppFlow.execute() verb: %s and isAppInstalled: %{BOOL}d and isOffload: %{BOOL}d and uninstallNotSupported: %{BOOL}d", v71, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1(v72);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v77 = *(v70 + 8);
    v77(v105, v69);
  }

  else
  {

    v77 = *(v70 + 8);
    v77(v68, v69);
  }

  *(v0 + 552) = v77;
  v78 = swift_task_alloc();
  *(v0 + 560) = v78;
  *v78 = v0;
  v78[1] = sub_2660EEA2C;
  OUTLINED_FUNCTION_20_2();

  return sub_2660C515C(v79, v80, v81);
}

uint64_t sub_2660EEA2C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 568) = v5;
  *(v3 + 576) = v0;

  if (v0)
  {

    v6 = sub_2660EFF40;
  }

  else
  {
    v6 = sub_2660EEB40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2660EEB40(uint64_t a1)
{
  v2 = v1[35];
  sub_26618B1B0();
  sub_26618B620();
  OUTLINED_FUNCTION_28_2((v2 + 152));
  OUTLINED_FUNCTION_12_1();
  if (sub_26618B1A0() & 1) != 0 || (OUTLINED_FUNCTION_28_2((v1[35] + 152)), OUTLINED_FUNCTION_12_1(), (sub_26618B190()))
  {
    v3 = v1[71];
    v4 = v1[35];

    OUTLINED_FUNCTION_28_2((v4 + 272));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v5 = swift_allocObject();
    v1[73] = v5;
    *(v5 + 16) = xmmword_26618F7E0;
    *(v5 + 32) = v3;
    v6 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v1[74] = v7;
    *v7 = v8;
    v7[1] = sub_2660EF264;
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB488](v9, v10, v11, v12, v13);
  }

  v15 = v1[35];
  v17 = v15[22];
  v16 = v15[23];
  __swift_project_boxed_opaque_existential_1(v15 + 19, v17);
  if (sub_2660C80B8(v17, v16) & 1) != 0 || (OUTLINED_FUNCTION_28_2((v1[35] + 152)), OUTLINED_FUNCTION_12_1(), (sub_26618B180()))
  {
    v18 = v1[65];

    sub_26617CA00(0xD000000000000015, 0x8000000266198D00);
    v20 = v19;

    v21 = v1[64];
    if (v18)
    {
      if (!v21[2])
      {
        __break(1u);
LABEL_28:
        OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
LABEL_17:
        v46 = v1[67];
        v47 = v1[49];
        OUTLINED_FUNCTION_37_0(v1[43], qword_2814B4A98);
        v46(v47);
        v48 = sub_26618C690();
        v49 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_15_1(v49))
        {
          *OUTLINED_FUNCTION_6_2() = 0;
          OUTLINED_FUNCTION_9_6();
          _os_log_impl(v50, v51, v52, v53, v54, 2u);
          OUTLINED_FUNCTION_7_3();
        }

        v55 = v1[71];
        v56 = v1[69];
        v57 = v1[41];
        v89 = v1[42];
        v58 = v1[40];

        v59 = OUTLINED_FUNCTION_11_2();
        v56(v59);
        sub_2660D3004();
        v60 = swift_allocError();
        *v61 = 7;
        swift_willThrow();

        v63 = *(v57 + 8);
        v62 = (v57 + 8);
        v63(v89, v58);
        v1[82] = v60;
        v64 = OUTLINED_FUNCTION_4_9();
        v65(v64);
        v66 = v60;
        v67 = sub_26618C690();
        v68 = sub_26618CAC0();

        if (os_log_type_enabled(v67, v68))
        {
          v69 = OUTLINED_FUNCTION_49_0();
          v62 = swift_slowAlloc();
          *v69 = 138412290;
          v70 = v60;
          v71 = _swift_stdlib_bridgeErrorToNSError();
          *(v69 + 4) = v71;
          *v62 = v71;
          OUTLINED_FUNCTION_27_1();
          _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
          sub_2660BDDF8(v62, &qword_28005C1F8, &unk_266190550);
          OUTLINED_FUNCTION_7_2();
          OUTLINED_FUNCTION_7_2();
        }

        OUTLINED_FUNCTION_16_5();
        v77 = OUTLINED_FUNCTION_11_2();
        v62(v77);
        v78 = swift_task_alloc();
        OUTLINED_FUNCTION_40_0(v78);
        OUTLINED_FUNCTION_0_7();
        sub_2660F10F4(v79, v80, &unk_266190988);
        OUTLINED_FUNCTION_18_5();
        v67->isa = v81;
        OUTLINED_FUNCTION_1_9();
        OUTLINED_FUNCTION_22_0();

        return sub_2660F1894();
      }

      v18 = v21[4];
      v22 = v21[5];
    }

    else
    {
      v22 = 0;
    }

    sub_26617B14C(v18, v22);
    v18 = v23;

    v1[79] = v18;
    if (v20)
    {
      v24 = v1[71];
      v25 = v1[38];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_26618E190;
      v27 = sub_26618AB80();
      v28 = MEMORY[0x277D63778];
      *(v26 + 56) = v27;
      *(v26 + 64) = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v26 + 32));
      *boxed_opaque_existential_0 = v18;
      *(boxed_opaque_existential_0 + 8) = 0;
      OUTLINED_FUNCTION_4_0();
      (*(v30 + 104))();
      v31 = v18;
      sub_26618AB60();
      AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
      v1[15] = OUTLINED_FUNCTION_47_1();
      OUTLINED_FUNCTION_14_4();
      v1[16] = sub_2660F10F4(v32, v33, &protocol conformance descriptor for AppLaunchDataModels);
      v34 = __swift_allocate_boxed_opaque_existential_0(v1 + 12);
      sub_2660F113C(v25, v34);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
      v35 = swift_allocObject();
      v1[80] = v35;
      *(v35 + 16) = xmmword_26618F7E0;
      *(v35 + 32) = v24;
      v36 = v24;
      swift_task_alloc();
      OUTLINED_FUNCTION_28_0();
      v1[81] = v37;
      *v37 = v38;
      OUTLINED_FUNCTION_8_7(v37);
      OUTLINED_FUNCTION_22_0();

      return MEMORY[0x2821BB478](v39, v40, v41, v42, v43, v44);
    }

    if (qword_2814B2C40 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  v83 = sub_26617CA00(0xD000000000000013, 0x8000000266198CE0);
  v85 = v84;
  v1[30] = v83;
  v1[31] = v84;

  v1[75] = v85;
  v86 = swift_task_alloc();
  v1[76] = v86;
  *v86 = v1;
  v86[1] = sub_2660EF50C;
  OUTLINED_FUNCTION_22_0();

  return sub_2660F0310();
}

uint64_t sub_2660EF264()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660EF364()
{
  OUTLINED_FUNCTION_20_3();
  sub_2660F1290(v1 + 56, v1 + 176);
  OUTLINED_FUNCTION_4_5();
  v3 = swift_allocObject();
  sub_2660B9EB8((v1 + 176), v3 + 16);
  v4 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v4);
  *(v1 + 264) = OUTLINED_FUNCTION_12_4();
  sub_26618B340();

  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  v5 = OUTLINED_FUNCTION_31_0();
  v6(v5);
  (*(v2 + 8))();

  OUTLINED_FUNCTION_5_6();

  OUTLINED_FUNCTION_54();

  return v7();
}

uint64_t sub_2660EF50C(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 616) = v1;

  if (v1)
  {

    v9 = sub_2660F00B0;
  }

  else
  {
    *(v5 + 624) = a1;
    v9 = sub_2660EF62C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2660EF62C()
{
  v1 = v0[78];
  v2 = v0[75];
  v0[79] = v1;
  if (v2)
  {
    v3 = v0[71];
    v4 = v0[38];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26618E190;
    v6 = sub_26618AB80();
    v7 = MEMORY[0x277D63778];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v5 + 32));
    *boxed_opaque_existential_0 = v1;
    *(boxed_opaque_existential_0 + 8) = 0;
    OUTLINED_FUNCTION_4_0();
    (*(v9 + 104))();
    v10 = v1;
    sub_26618AB60();
    OUTLINED_FUNCTION_42_1();
    AppLaunchDataModels.ButtonFallbackModel.init(buttonLabel:actionProperty:)();
    v0[15] = OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_14_4();
    v0[16] = sub_2660F10F4(v11, v12, &protocol conformance descriptor for AppLaunchDataModels);
    v13 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2660F113C(v4, v13);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v14 = swift_allocObject();
    v0[80] = v14;
    *(v14 + 16) = xmmword_26618F7E0;
    *(v14 + 32) = v3;
    v15 = v3;
    swift_task_alloc();
    OUTLINED_FUNCTION_28_0();
    v0[81] = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_8_7(v16);
    OUTLINED_FUNCTION_22_0();

    return MEMORY[0x2821BB478](v18, v19, v20, v21, v22, v23);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v25 = v0[67];
    OUTLINED_FUNCTION_37_0(v0[43], qword_2814B4A98);
    v26 = OUTLINED_FUNCTION_13_2();
    v25(v26);
    v27 = sub_26618C690();
    v28 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v28))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v29, v30, v31, v32, v33, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v34 = v0[71];
    v35 = v0[69];
    v36 = v0[41];
    v62 = v0[42];
    v37 = v0[40];

    v38 = OUTLINED_FUNCTION_12_1();
    v35(v38);
    sub_2660D3004();
    v39 = swift_allocError();
    *v40 = 7;
    swift_willThrow();

    v42 = *(v36 + 8);
    v41 = v36 + 8;
    v42(v62, v37);
    v0[82] = v39;
    v43 = OUTLINED_FUNCTION_4_9();
    v44(v43);
    v45 = v39;
    v46 = sub_26618C690();
    v47 = sub_26618CAC0();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_49_0();
      v37 = OUTLINED_FUNCTION_34_1();
      *v41 = 138412290;
      v48 = v39;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v49;
      *v37 = v49;
      OUTLINED_FUNCTION_9_6();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      sub_2660BDDF8(v37, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_16_5();
    v55 = OUTLINED_FUNCTION_11_2();
    v37(v55);
    v56 = swift_task_alloc();
    OUTLINED_FUNCTION_40_0(v56);
    OUTLINED_FUNCTION_0_7();
    sub_2660F10F4(v57, v58, &unk_266190988);
    OUTLINED_FUNCTION_18_5();
    v46->isa = v59;
    OUTLINED_FUNCTION_1_9();
    OUTLINED_FUNCTION_22_0();

    return sub_2660F1894();
  }
}

uint64_t sub_2660EFA60()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2660EFB64()
{
  v3 = *(v1 + 304);

  sub_2660F11A0(v3);
  OUTLINED_FUNCTION_20_3();
  sub_2660F1290(v1 + 56, v1 + 176);
  OUTLINED_FUNCTION_4_5();
  v4 = swift_allocObject();
  sub_2660B9EB8((v1 + 176), v4 + 16);
  v5 = sub_26618AC90();
  OUTLINED_FUNCTION_41_0(v5);
  *(v1 + 264) = OUTLINED_FUNCTION_12_4();
  sub_26618B340();

  __swift_destroy_boxed_opaque_existential_1((v1 + 56));
  v6 = OUTLINED_FUNCTION_31_0();
  v7(v6);
  (*(v2 + 8))();

  OUTLINED_FUNCTION_5_6();

  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_2660EFD20()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 672) = v3;

  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_2660EFE0C()
{
  v1 = *(v0 + 656);

  v2 = OUTLINED_FUNCTION_12_1();
  v3(v2);
  OUTLINED_FUNCTION_5_6();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_20_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2660EFF40(uint64_t a1)
{
  v4 = *(v1 + 576);
  *(v1 + 656) = v4;
  v5 = OUTLINED_FUNCTION_4_9();
  v6(v5);
  v7 = v4;
  v8 = sub_26618C690();
  v9 = sub_26618CAC0();

  if (os_log_type_enabled(v8, v9))
  {
    OUTLINED_FUNCTION_49_0();
    v3 = OUTLINED_FUNCTION_34_1();
    *v2 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v11;
    *v3 = v11;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660BDDF8(v3, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_16_5();
  v17 = OUTLINED_FUNCTION_11_2();
  v3(v17);
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_40_0(v18);
  OUTLINED_FUNCTION_0_7();
  sub_2660F10F4(v19, v20, &unk_266190988);
  OUTLINED_FUNCTION_18_5();
  v8->isa = v21;
  OUTLINED_FUNCTION_1_9();

  return sub_2660F1894();
}

uint64_t sub_2660F00B0()
{
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 320);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 616);
  *(v0 + 656) = v6;
  v7 = OUTLINED_FUNCTION_4_9();
  v8(v7);
  v9 = v6;
  v10 = sub_26618C690();
  LOBYTE(v4) = sub_26618CAC0();

  if (os_log_type_enabled(v10, v4))
  {
    OUTLINED_FUNCTION_49_0();
    v2 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v12;
    *v2 = v12;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_2660BDDF8(v2, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_16_5();
  v18 = OUTLINED_FUNCTION_11_2();
  v2(v18);
  v19 = swift_task_alloc();
  OUTLINED_FUNCTION_40_0(v19);
  OUTLINED_FUNCTION_0_7();
  sub_2660F10F4(v20, v21, &unk_266190988);
  OUTLINED_FUNCTION_18_5();
  v10->isa = v22;
  OUTLINED_FUNCTION_1_9();

  return sub_2660F1894();
}

uint64_t sub_2660F0248()
{
  sub_26618B650();
  sub_26618B680();
  return sub_26618B640();
}

uint64_t sub_2660F0294(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660F02B4, 0, 0);
}

uint64_t sub_2660F02B4()
{
  OUTLINED_FUNCTION_18();
  sub_2660F1290(*(v0 + 24), *(v0 + 16));
  OUTLINED_FUNCTION_5_3();

  return v1();
}

uint64_t sub_2660F0310()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  v2 = sub_26618A500();
  v1[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_25_0();
  v1[6] = swift_task_alloc();
  v4 = sub_26618C6B0();
  v1[7] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_25_0();
  v1[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  OUTLINED_FUNCTION_3_0(v6);
  v1[11] = OUTLINED_FUNCTION_8_2();
  v7 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2660F0444()
{
  v1 = v0[2];
  v0[12] = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  __swift_project_boxed_opaque_existential_1((v1 + 192), *(v1 + 216));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_2660F0530;

  return sub_2661080B4(0xD00000000000001FLL, 0x8000000266198CC0);
}

uint64_t sub_2660F0530(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 112) = v1;

  if (v1)
  {
    v9 = sub_2660F0B88;
  }

  else
  {
    *(v5 + 120) = a1;
    v9 = sub_2660F0648;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_2660F0648()
{
  v53 = v0;
  v1 = *(v0 + 120);
  v2 = [v1 dialog];

  sub_2660F10B0();
  v3 = sub_26618C9B0();

  if (sub_2661046B8())
  {
    sub_2661046C8();
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26677C150](0, v3);
    }

    else
    {
      v4 = *(v3 + 32);
    }

    v5 = v4;
    v6 = *(v0 + 88);
    v7 = *(v0 + 24);

    v8 = [v5 fullPrint];

    sub_26618C8B0();
    sub_26618A4F0();

    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_26618A4D0();
      v24 = OUTLINED_FUNCTION_12_1();
      v25(v24);
    }

    [*(v0 + 96) setPunchOutUri_];

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v26 = *(v0 + 96);
    OUTLINED_FUNCTION_37_0(*(v0 + 56), qword_2814B4A98);
    v27 = OUTLINED_FUNCTION_13_2();
    v28(v27);
    v29 = v26;
    v30 = sub_26618C690();
    v31 = sub_26618CAA0();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 96);
    if (v32)
    {
      v34 = OUTLINED_FUNCTION_49_0();
      v51 = OUTLINED_FUNCTION_45_1();
      v52 = v51;
      *v34 = 136315138;
      v35 = [v33 punchOutUri];

      if (!v35)
      {
        __break(1u);
        return;
      }

      v36 = *(v0 + 64);
      v49 = *(v0 + 56);
      v50 = *(v0 + 80);
      v38 = *(v0 + 40);
      v37 = *(v0 + 48);
      v40 = *(v0 + 24);
      v39 = *(v0 + 32);
      sub_26618A4E0();

      (*(v39 + 32))(v37, v38, v40);
      sub_2660F10F4(&qword_28005C2F0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v41 = sub_26618CFD0();
      v43 = v42;
      (*(v39 + 8))(v37, v40);
      v44 = sub_266103A98(v41, v43, &v52);

      *(v34 + 4) = v44;
      _os_log_impl(&dword_2660B7000, v30, v31, "Adding button punchout: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_3();

      (*(v36 + 8))(v50, v49);
    }

    else
    {

      v45 = OUTLINED_FUNCTION_11_2();
      v46(v45);
    }

    OUTLINED_FUNCTION_54();
    v48 = *(v0 + 96);

    v47(v48);
  }

  else
  {

    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    OUTLINED_FUNCTION_37_0(*(v0 + 56), qword_2814B4A98);
    v10 = OUTLINED_FUNCTION_13_2();
    v11(v10);
    v12 = sub_26618C690();
    v13 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_1(v13))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_27_1();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_7_2();
    }

    v19 = *(v0 + 96);

    v20 = OUTLINED_FUNCTION_12_1();
    v21(v20);
    sub_2660D3004();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();

    v23();
  }
}

uint64_t sub_2660F0B88()
{

  OUTLINED_FUNCTION_5_3();

  return v1();
}

void *sub_2660F0C28()
{
  sub_2660D31B4((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  sub_2660D3208((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  __swift_destroy_boxed_opaque_existential_1(v0 + 34);
  __swift_destroy_boxed_opaque_existential_1(v0 + 39);
  sub_2660BDDF8(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_input, &qword_28005C060, &qword_26618FD10);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents13RemoveAppFlow_eventSender));
  return v0;
}

uint64_t sub_2660F0CB8()
{
  sub_2660F0C28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RemoveAppFlow(uint64_t a1)
{
  result = qword_28005C2D0;
  if (!qword_28005C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660F0D64(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660F0E6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660E1B2C;

  return sub_2660EDD08();
}

uint64_t sub_2660F0F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660D2E00;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660F101C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RemoveAppFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660F1058(uint64_t a1)
{
  result = sub_2660F10F4(&qword_28005C2E0, type metadata accessor for RemoveAppFlow, &unk_266190928);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660F10B0()
{
  result = qword_28005C2E8;
  if (!qword_28005C2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C2E8);
  }

  return result;
}

uint64_t sub_2660F10F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2660F113C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660F11A0(uint64_t a1)
{
  v2 = type metadata accessor for AppLaunchDataModels.ButtonFallbackModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660F11FC()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_2660D2E00;

  return sub_2660F0294(v3, v0 + 16);
}

uint64_t sub_2660F1290(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4_0();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_6()
{
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_26618AC80();
}

void OUTLINED_FUNCTION_16_5()
{
}

uint64_t OUTLINED_FUNCTION_20_3()
{
  v2 = *(v0 + 280) + 112;

  return sub_2660F1290(v2, v0 + 136);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_1()
{
  __swift_project_boxed_opaque_existential_1((v0 + 272), *(v0 + 296));

  return type metadata accessor for AppLaunchDataModels(0);
}

uint64_t sub_2660F1584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a2;
  v11 = (*(a3 + 32) + **(a3 + 32));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v4[10] = v8;
  *v8 = v9;
  v8[1] = sub_2660F16B4;

  return v11(a1, a2, a3);
}

uint64_t sub_2660F16B4()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  *(v1 + 88) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2660F17A8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  (*(v2 + 24))(v3, v2);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2660F2734(v1 | ((HIDWORD(v1) & 1) << 32), v3, v2);
  sub_26618B050();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2660F1894()
{
  OUTLINED_FUNCTION_18();
  v0[14] = v1;
  v0[15] = v2;
  v0[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v4);
  v0[16] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B870();
  v0[17] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v0[18] = v6;
  v0[19] = *(v7 + 64);
  v0[20] = swift_task_alloc();
  v0[21] = swift_task_alloc();
  v8 = sub_26618B480();
  v0[22] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v0[23] = v9;
  v10 = OUTLINED_FUNCTION_8_2();
  v0[24] = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  v0[25] = v11;
  *v11 = v12;
  v11[1] = sub_2660F1A10;

  return MEMORY[0x2821BAED8](v10);
}

uint64_t sub_2660F1A10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660F1D34()
{
  OUTLINED_FUNCTION_18();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v5);
  v0[17] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B870();
  v0[18] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[19] = v7;
  v0[20] = *(v8 + 64);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v9 = sub_26618B480();
  v0[23] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v0[24] = v10;
  v0[25] = OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660F1E74()
{
  OUTLINED_FUNCTION_18();
  __swift_project_boxed_opaque_existential_1(*(v0 + 112), *(*(v0 + 112) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_0(v1);

  return sub_2660C77E8(v3, v4);
}

uint64_t sub_2660F1F08()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660F2244()
{
  OUTLINED_FUNCTION_18();
  v0[15] = v1;
  v0[16] = v2;
  v0[13] = v3;
  v0[14] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  OUTLINED_FUNCTION_3_0(v5);
  v0[17] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B870();
  v0[18] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v0[19] = v7;
  v0[20] = *(v8 + 64);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();
  v9 = sub_26618B480();
  v0[23] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v0[24] = v10;
  v0[25] = OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660F2384()
{
  OUTLINED_FUNCTION_18();
  __swift_project_boxed_opaque_existential_1(*(v0 + 112), *(*(v0 + 112) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 208) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_0(v1);

  return sub_2660C79D4(v3, v4);
}

uint64_t sub_2660F2418()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660F2734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26618B0D0();
  (*(a3 + 16))(a2, a3);
  return sub_26618B0B0();
}

uint64_t sub_2660F2864(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660F2C20, 0, 0);
}

uint64_t sub_2660F2884(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2660F28A4, 0, 0);
}

uint64_t sub_2660F28A4()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_26618B870();
  v4 = MEMORY[0x277D5C1D8];
  v1[3] = v3;
  v1[4] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, v2, v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_2660F2958()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_3_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_8(v2);

  return sub_2660F2884(v4, v5);
}

uint64_t sub_2660F2A1C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_3_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_8(v2);

  return sub_2660F2864(v4, v5);
}

uint64_t objectdestroyTm()
{
  sub_26618B870();
  OUTLINED_FUNCTION_26_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2660F2B5C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = sub_26618B870();
  OUTLINED_FUNCTION_3_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_28_0();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_8_8(v2);

  return sub_2660F2864(v4, v5);
}

double OUTLINED_FUNCTION_0_8(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_12(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_26618CE80();
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);

  return MEMORY[0x2821BAB78](v2, v1);
}

uint64_t OUTLINED_FUNCTION_11_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821BB060](v7, v6, v4 & 1, a4, 0, 1, v5, a4);
}

uint64_t OUTLINED_FUNCTION_12_5()
{

  return sub_26618AC80();
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return swift_allocObject();
}

uint64_t sub_2660F2DEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BCD0, &qword_26618E238);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C330, &qword_266190B80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C338, &qword_266190B88);
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26618E190;
  v6 = (v5 + v4);
  *v6 = 0xD000000000000019;
  *(v6 + 1) = 0x8000000266198E10;
  sub_26618A4F0();
  v7 = sub_26618A500();
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v7 - 8) + 32))(&v6[*(v3 + 48)], v2, v7);
    result = sub_26618C850();
    qword_28005D178 = result;
  }

  return result;
}

void *sub_2660F2FD0()
{
  sub_26618B0E0();
  v12[3] = sub_26618C460();
  v12[4] = &off_2877CC660;
  v12[0] = sub_26618C450();
  sub_26618B040();
  v10[3] = &type metadata for ReferenceResolver;
  v10[4] = &off_2877CC6F0;
  v10[0] = swift_allocObject();
  sub_2660CFC00(v12, v10[0] + 16);
  type metadata accessor for URLBasedLaunchFlow(0);
  v0 = swift_allocObject();
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v10, &type metadata for ReferenceResolver);
  MEMORY[0x28223BE20](v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3);
  v0[10] = &type metadata for ReferenceResolver;
  v0[11] = &off_2877CC6F0;
  v5 = swift_allocObject();
  v0[7] = v5;
  v6 = *(v3 + 1);
  *(v5 + 16) = *v3;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v3 + 4);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input;
  v8 = sub_26618B790();
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  sub_2660B9EB8(&v13, (v0 + 2));
  sub_2660B9EB8(&v11, (v0 + 12));
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_2660CFC5C(v12);
  return v0;
}

uint64_t sub_2660F3198(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_26618B790();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input;
  swift_beginAccess();
  sub_2660CFB90(v5, v1 + v7);
  swift_endAccess();
  return 1;
}

uint64_t sub_2660F329C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URLBasedLaunchFlow(0);
  sub_2660F46E8(&qword_28005C320, type metadata accessor for URLBasedLaunchFlow, &unk_266190AE8);
  return sub_26618AFB0();
}

uint64_t sub_2660F332C()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_26618A500();
  v1[7] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = sub_26618B8E0();
  v1[12] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618C6B0();
  v1[15] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[16] = v8;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v9 = sub_26618B790();
  v1[19] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C060, &qword_26618FD10);
  v1[22] = OUTLINED_FUNCTION_8_2();
  v11 = sub_26618B800();
  v1[23] = v11;
  OUTLINED_FUNCTION_0_4(v11);
  v1[24] = v12;
  v1[25] = OUTLINED_FUNCTION_8_2();
  v13 = sub_26618B840();
  v1[26] = v13;
  OUTLINED_FUNCTION_0_4(v13);
  v1[27] = v14;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660F35D8, 0, 0);
}

uint64_t sub_2660F35D8()
{
  v114 = v0;
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input;
  swift_beginAccess();
  sub_2660CFA28(v3 + v4, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2))
  {
    sub_2660CFA98(v0[22]);
LABEL_21:
    v112 = 0;
    v110 = 21;
    goto LABEL_22;
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];
  v8 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  (*(v10 + 16))(v9, v7, v11);
  sub_2660CFA98(v7);
  sub_26618B770();
  (*(v10 + 8))(v9, v11);
  if ((*(v6 + 88))(v5, v8) != *MEMORY[0x277D5C160])
  {
    (*(v0[24] + 8))(v0[25], v0[23]);
    goto LABEL_21;
  }

  v12 = v0[30];
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  (*(v0[24] + 96))(v15, v0[23]);
  (*(v14 + 32))(v12, v15, v13);
  if (qword_2814B2C40 != -1)
  {
LABEL_30:
    swift_once();
  }

  v17 = v0[29];
  v16 = v0[30];
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[18];
  v22 = v0[15];
  v21 = v0[16];
  v23 = __swift_project_value_buffer(v22, qword_2814B4A98);
  v105 = *(v21 + 16);
  v105(v20, v23, v22);
  v24 = *(v19 + 16);
  v24(v17, v16, v18);
  v25 = sub_26618C690();
  v26 = sub_26618CAA0();
  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[29];
  v106 = v23;
  v107 = (v21 + 16);
  if (v27)
  {
    v29 = v0[27];
    v30 = v0[28];
    v31 = v0[26];
    v108 = v0[18];
    v100 = v0[16];
    v102 = v0[15];
    v32 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v113 = v98;
    *v32 = 136315138;
    v24(v30, v28, v31);
    v33 = sub_26618C8D0();
    v34 = v26;
    v36 = v35;
    v111 = *(v29 + 8);
    v111(v28, v31);
    v37 = sub_266103A98(v33, v36, &v113);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_2660B7000, v25, v34, "Looking for url override matches in: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v98);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v38 = v108;
    v109 = *(v100 + 8);
    v109(v38, v102);
  }

  else
  {
    v39 = v0[26];
    v40 = v0[27];
    v41 = v0[18];
    v42 = v0[15];
    v43 = v0[16];

    v111 = *(v40 + 8);
    v111(v28, v39);
    v109 = *(v43 + 8);
    v109(v41, v42);
  }

  v45 = v0[13];
  v44 = v0[14];
  v46 = v0[12];
  sub_26618B820();
  v47 = sub_266144AE8();
  (*(v45 + 8))(v44, v46);
  if (v47)
  {
    v48 = __swift_project_boxed_opaque_existential_1((v0[6] + 56), *(v0[6] + 80));
    v49 = sub_2660FA19C(v48, v47);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);
  if (!v50)
  {
LABEL_20:
    v59 = v0[30];
    v60 = v0[26];

    v111(v59, v60);
    goto LABEL_21;
  }

  v51 = 0;
  v52 = (v49 + 40);
  while (1)
  {
    if (v51 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v54 = *(v52 - 1);
    v53 = *v52;
    v55 = qword_28005BC48;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = qword_28005D178;
    if (*(qword_28005D178 + 16))
    {
      v57 = sub_266129F20(v54, v53);
      if (v58)
      {
        break;
      }
    }

    ++v51;

    v52 += 2;
    if (v50 == v51)
    {
      goto LABEL_20;
    }
  }

  v99 = v0[17];
  v101 = v0[15];
  v64 = v0[10];
  v63 = v0[11];
  v65 = v0[8];
  v103 = v0[9];
  v66 = v0[7];
  v67 = *(v65 + 16);
  v67(v64, *(v56 + 56) + *(v65 + 72) * v57, v66);

  (*(v65 + 32))(v63, v64, v66);
  v105(v99, v106, v101);
  v67(v103, v63, v66);

  v68 = sub_26618C690();
  v69 = sub_26618CA90();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v0[17];
  v72 = v0[15];
  if (v70)
  {
    v104 = v0[15];
    v73 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    *v73 = 136315394;
    v74 = sub_266103A98(v54, v53, &v113);

    *(v73 + 4) = v74;
    *(v73 + 12) = 2080;
    sub_2660F46E8(&qword_28005C2F0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v75 = sub_26618CFD0();
    v77 = v76;
    v78 = OUTLINED_FUNCTION_1_10();
    v79(v78);
    v80 = sub_266103A98(v75, v77, &v113);

    *(v73 + 14) = v80;
    _os_log_impl(&dword_2660B7000, v68, v69, "Found matching url for bundle %s: %s", v73, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();

    v81 = v104;
    v82 = v71;
  }

  else
  {

    v83 = OUTLINED_FUNCTION_1_10();
    v84(v83);
    v82 = v71;
    v81 = v72;
  }

  v109(v82, v81);
  v85 = v0[30];
  v86 = v0[26];
  v87 = v0[11];
  v89 = v0[6];
  v88 = v0[7];
  v90 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C328, &unk_266190B70);
  v91 = swift_allocObject();
  *(v91 + 16) = xmmword_26618E180;
  v92 = sub_26618C8B0();
  v93 = MEMORY[0x277D837D0];
  *(v91 + 56) = MEMORY[0x277D837D0];
  *(v91 + 32) = v92;
  *(v91 + 40) = v94;
  v95 = sub_26618C8B0();
  *(v91 + 88) = v93;
  *(v91 + 64) = v95;
  *(v91 + 72) = v96;
  sub_2660F4678(v91, v90);
  v97 = sub_26618A4D0();
  [v90 setPunchOutUri_];

  __swift_project_boxed_opaque_existential_1((v89 + 16), *(v89 + 40));
  sub_26618B5C0();

  v107(v87, v88);
  v111(v85, v86);
  v110 = 0;
  v112 = 1;
LABEL_22:
  sub_26618B360();

  LOBYTE(v113) = v112;
  v61 = v0[1];

  return v61(v110 | (v112 << 32));
}

void *sub_2660F3EFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2660CFA98(v0 + OBJC_IVAR____TtC20SiriAppLaunchIntents18URLBasedLaunchFlow_input);
  return v0;
}

uint64_t sub_2660F3F3C()
{
  sub_2660F3EFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for URLBasedLaunchFlow(uint64_t a1)
{
  result = qword_28005C310;
  if (!qword_28005C310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2660F3FE8(uint64_t a1)
{
  sub_2660CF61C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2660F40B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660F4150;

  return sub_2660F332C();
}

uint64_t sub_2660F4150()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2 | ((HIDWORD(v2) & 1) << 32));
}

uint64_t sub_2660F4270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2660F4320;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2660F4320()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2660F4434(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = sub_2660F44FC;

  return sub_2660F1584(a1, a2, WitnessTable);
}

uint64_t sub_2660F44FC()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2660F45E4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for URLBasedLaunchFlow(0);

  return sub_26618AFE0();
}

uint64_t sub_2660F4620(uint64_t a1)
{
  result = sub_2660F46E8(&qword_28005C320, type metadata accessor for URLBasedLaunchFlow, &unk_266190AE8);
  *(a1 + 8) = result;
  return result;
}

void sub_2660F4678(uint64_t a1, void *a2)
{
  v3 = sub_26618C990();

  [a2 setLaunchOptions_];
}

uint64_t sub_2660F46E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2660F474C()
{
  v1 = [v0 disambiguationItems];
  v2 = sub_26618C9B0();

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  v5 = *(v2 + 16);
LABEL_2:
  v6 = v2 + 32 + 32 * v3;
  while (1)
  {
    if (v5 == v3)
    {

      return v4;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    sub_2660CD384(v6, v10);
    v7 = sub_2660F489C(v10);
    ++v3;
    v6 += 32;
    v8 = __swift_destroy_boxed_opaque_existential_1(v10);
    if (v7)
    {
      MEMORY[0x26677BD40](v8);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v4 = v11;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_1(v10);

  __break(1u);
  return result;
}

id sub_2660F489C(uint64_t a1)
{
  v2 = sub_26618C6B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  sub_2660CD384(a1, v23);
  type metadata accessor for Application();
  if (!swift_dynamicCast())
  {
    sub_2660CD384(a1, v23);
    sub_2660FA768();
    if (swift_dynamicCast())
    {
      v10 = v22;
      v11 = INTypedObjectWithCustomObject();
      if (v11)
      {
        v9 = v11;

        return v9;
      }

      if (qword_2814B2C38 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v2, qword_2814B4A80);
      (*(v3 + 16))(v6, v16, v2);
      v17 = sub_26618C690();
      v18 = sub_26618CAB0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2660B7000, v17, v18, "Could not convert disambiguation item to INObject", v19, 2u);
        MEMORY[0x26677CC30](v19, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v2);
    }

    else
    {
      if (qword_2814B2C38 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v2, qword_2814B4A80);
      (*(v3 + 16))(v8, v12, v2);
      v13 = sub_26618C690();
      v14 = sub_26618CAB0();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_2660B7000, v13, v14, "Unexpected disambiguation item type", v15, 2u);
        MEMORY[0x26677CC30](v15, -1, -1);
      }

      (*(v3 + 8))(v8, v2);
    }

    return 0;
  }

  return v22;
}

uint64_t sub_2660F4BE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a1;
  v148 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BF28, &qword_26618F960);
  v4 = OUTLINED_FUNCTION_3_0(v3);
  MEMORY[0x28223BE20](v4);
  v129 = &v122 - v5;
  OUTLINED_FUNCTION_18_2();
  v127 = sub_26618B8E0();
  OUTLINED_FUNCTION_2_2();
  v126 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v125 = v8;
  OUTLINED_FUNCTION_18_2();
  v128 = sub_26618B980();
  OUTLINED_FUNCTION_2_2();
  v124 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_6();
  v123 = v11;
  OUTLINED_FUNCTION_18_2();
  v130 = sub_26618B840();
  OUTLINED_FUNCTION_2_2();
  v133 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_6();
  v137 = v14;
  v15 = OUTLINED_FUNCTION_18_2();
  v16 = type metadata accessor for AppLaunchIntent(v15);
  v17 = OUTLINED_FUNCTION_3_0(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_6();
  v134 = v18;
  OUTLINED_FUNCTION_18_2();
  sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v135 = v20;
  v136 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_6();
  v140 = v21;
  OUTLINED_FUNCTION_18_2();
  sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v149 = v22;
  v150 = v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_69_0();
  v138 = v24;
  OUTLINED_FUNCTION_65_0();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v122 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v122 - v29;
  v139 = sub_26618B7F0();
  OUTLINED_FUNCTION_2_2();
  v146 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4_6();
  v145 = v33;
  OUTLINED_FUNCTION_18_2();
  v34 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_69_0();
  v132 = v38;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v39);
  v131 = &v122 - v40;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v41);
  v122 = &v122 - v42;
  OUTLINED_FUNCTION_65_0();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v122 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v122 - v47;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  OUTLINED_FUNCTION_37_0(v34, qword_2814B4A98);
  v49 = *(v36 + 16);
  v141 = v50;
  v142 = v49;
  v49(v48);
  v51 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = OUTLINED_FUNCTION_6_2();
    *v53 = 0;
    _os_log_impl(&dword_2660B7000, v51, v2, "CloseAppDisambiguationStrategy.actionForInput() called", v53, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v54 = v34;
  v143 = *(v36 + 8);
  v144 = v36 + 8;
  v143(v48, v34);
  sub_26618B770();
  v55 = v149;
  v56 = v150;
  v57 = *(v150 + 88);
  if ((v57)(v30, v149) != *MEMORY[0x277D5C150])
  {
    (*(v56 + 8))(v30, v55);
LABEL_13:
    sub_26618B770();
    v65 = OUTLINED_FUNCTION_48_1();
    v66 = v57(v65);
    v67 = v140;
    if (v66 == *MEMORY[0x277D5C128])
    {
      v68 = OUTLINED_FUNCTION_48_1();
      v69(v68);
      v71 = v135;
      v70 = v136;
      (*(v135 + 32))(v67, v28, v136);
      v72 = v134;
      (*(v71 + 16))(v134, v67, v70);
      if (sub_2660C97B4())
      {
        sub_26618B290();
        OUTLINED_FUNCTION_0_9();
        sub_2660FA810(v72, v73);
        v74 = OUTLINED_FUNCTION_53_0();
        return v75(v74);
      }

      OUTLINED_FUNCTION_0_9();
      sub_2660FA810(v72, v97);
      v98 = OUTLINED_FUNCTION_53_0();
      v99(v98);
      goto LABEL_29;
    }

    if (v66 == *MEMORY[0x277D5C160])
    {
      v77 = OUTLINED_FUNCTION_48_1();
      v78(v77);
      v79 = v133;
      v80 = v130;
      (*(v133 + 32))(v137, v28, v130);
      v81 = v125;
      sub_26618B820();
      v82 = sub_26618B8B0();
      (*(v126 + 8))(v81, v127);
      v83 = v129;
      sub_266139C58(v82, v129);

      v84 = v128;
      if (__swift_getEnumTagSinglePayload(v83, 1, v128) == 1)
      {
        sub_2660D30C4(v83, &qword_28005BF28, &qword_26618F960);
        if (qword_2814B2C38 != -1)
        {
          OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
        }

        OUTLINED_FUNCTION_37_0(v54, qword_2814B4A80);
        v142(v122);
        v85 = sub_26618C690();
        v86 = sub_26618CAB0();
        if (OUTLINED_FUNCTION_16_4(v86))
        {
          v87 = OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_43_0(v87);
          OUTLINED_FUNCTION_26_2(&dword_2660B7000, v88, v89, "CloseAppDisambiguationStrategy.actionForInputNLv4Uso() No user dialog act found in userParse");
          v79 = v133;
          OUTLINED_FUNCTION_7_2();
        }

        v90 = OUTLINED_FUNCTION_32_1();
        (v143)(v90);
        sub_26618B2B0();
        return (*(v79 + 8))(v137, v80);
      }

      (*(v124 + 32))(v123, v83, v84);
      if (sub_26618B940() & 1) != 0 || (sub_26618B930())
      {
        sub_26618B290();
        v118 = OUTLINED_FUNCTION_48_1();
        v119(v118);
        return (*(v79 + 8))(v137, v80);
      }

      v120 = OUTLINED_FUNCTION_48_1();
      v121(v120);
      (*(v79 + 8))(v137, v80);
    }

    else
    {
      v100 = OUTLINED_FUNCTION_48_1();
      v101(v100);
    }

LABEL_29:
    v102 = v138;
    sub_26618B770();
    v103 = sub_2661123A8(v102);
    v104 = OUTLINED_FUNCTION_53_0();
    v105(v104);
    if (v103)
    {
      v106 = v131;
      (v142)(v131, v141, v54);
      v107 = sub_26618C690();
      v108 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_16_4(v108))
      {
        v109 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_43_0(v109);
        OUTLINED_FUNCTION_26_2(&dword_2660B7000, v110, v111, "CloseAppDisambiguationStrategy.actionForInput() handling");
        OUTLINED_FUNCTION_7_2();
      }

      v143(v106, v54);
      return sub_26618B2A0();
    }

    else
    {
      v112 = v132;
      (v142)(v132, v141, v54);
      v113 = sub_26618C690();
      v114 = sub_26618CAA0();
      if (OUTLINED_FUNCTION_16_4(v114))
      {
        v115 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_43_0(v115);
        OUTLINED_FUNCTION_26_2(&dword_2660B7000, v116, v117, "CloseAppDisambiguationStrategy.actionForInput() ignoring");
        OUTLINED_FUNCTION_7_2();
      }

      v143(v112, v54);
      return sub_26618B2B0();
    }
  }

  (*(v56 + 96))(v30, v55);
  v58 = v30;
  v59 = v139;
  (*(v146 + 32))(v145, v58, v139);
  sub_26618B7D0();
  OUTLINED_FUNCTION_54_0();
  v63 = v63 && v62 == v61;
  if (v63)
  {
  }

  else
  {
    v64 = OUTLINED_FUNCTION_44_0(v60);

    if ((v64 & 1) == 0)
    {
      (*(v146 + 8))(v145, v59);
      goto LABEL_13;
    }
  }

  (v142)(v46, v141, v54);
  v91 = sub_26618C690();
  v92 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_16_4(v92))
  {
    v93 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_43_0(v93);
    OUTLINED_FUNCTION_26_2(&dword_2660B7000, v94, v95, "CloseAppDisambiguationStrategy.actionForInput() directInvocation handling");
    OUTLINED_FUNCTION_7_2();
  }

  v96 = OUTLINED_FUNCTION_32_1();
  (v143)(v96);
  sub_26618B2A0();
  return (*(v146 + 8))(v145, v59);
}

uint64_t sub_2660F5710()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_26618B1E0();
  OUTLINED_FUNCTION_3_0(v4);
  v1[5] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618B6A0();
  v1[6] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B440();
  v1[9] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[10] = v8;
  v1[11] = OUTLINED_FUNCTION_8_2();
  v9 = sub_26618C6B0();
  v1[12] = v9;
  OUTLINED_FUNCTION_0_4(v9);
  v1[13] = v10;
  v1[14] = OUTLINED_FUNCTION_8_2();
  v11 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2660F5870()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v1 = v0[13];
  v2 = v0[12];
  __swift_project_value_buffer(v2, qword_2814B4A98);
  v3 = OUTLINED_FUNCTION_8_3();
  v4(v3);
  v5 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v7);
    _os_log_impl(&dword_2660B7000, v5, v2, "CloseAppDisambiguationStrategy.makePromptForDisambiguation() called", v1, 2u);
    OUTLINED_FUNCTION_28_3();
  }

  v8 = v0[11];

  v9 = OUTLINED_FUNCTION_12_1();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v0[15] = sub_26618B610();
  sub_2661490E0();
  sub_26618B1C0();
  *(swift_task_alloc() + 16) = v8;
  sub_26618B620();

  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_2660F5A58;

  return sub_2660F5E64();
}

uint64_t sub_2660F5A58()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  *(v4 + 136) = v0;

  if (v0)
  {
    v5 = sub_2660F5C20;
  }

  else
  {
    v5 = sub_2660F5B78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2660F5B78()
{
  OUTLINED_FUNCTION_19();
  v0 = OUTLINED_FUNCTION_40_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_1();
  v3(v2);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_2660F5C20()
{
  OUTLINED_FUNCTION_19();
  v0 = OUTLINED_FUNCTION_40_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_12_1();
  v3(v2);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_2660F5CC8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26618B230();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_26618B650();
  sub_26618B680();
  v10 = sub_26618B440();
  (*(*(v10 - 8) + 16))(v9, a2, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_26618B660();
  (*(v4 + 104))(v6, *MEMORY[0x277D5BC50], v3);
  return sub_26618B630();
}

uint64_t sub_2660F5E64()
{
  OUTLINED_FUNCTION_18();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v5 = sub_26618C6B0();
  v1[14] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_8_2();
  v7 = sub_26618B6A0();
  v1[17] = v7;
  OUTLINED_FUNCTION_0_4(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_8_2();
  v9 = type metadata accessor for AppLaunchDataModels.App(0);
  OUTLINED_FUNCTION_0_4(v9);
  v1[20] = v10;
  v1[21] = OUTLINED_FUNCTION_8_2();
  v11 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  v1[22] = v11;
  OUTLINED_FUNCTION_3_0(v11);
  v1[23] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618C300();
  v1[24] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_8_2();
  v14 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2660F6010()
{
  v66 = v0;
  v1 = v0[12];
  v2 = sub_2661046B8();
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v62 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x26677C150](v3, v0[12]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_45;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v10 = sub_2660C9D24(v7);
    v12 = v11;

    ++v3;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266129600();
        v62 = v15;
      }

      v13 = *(v62 + 16);
      if (v13 >= *(v62 + 24) >> 1)
      {
        sub_266129600();
        v62 = v16;
      }

      *(v62 + 16) = v13 + 1;
      v14 = v62 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v12;
      v3 = v9;
    }
  }

  v59 = v6;
  v60 = v5;
  v61 = v4;
  v17 = 0;
  v18 = v0[25];
  v19 = *(v62 + 16);
  v20 = v62 + 40;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v0[27] = v21;
    if (v19 == v17)
    {
      break;
    }

    if (v17 >= *(v62 + 16))
    {
      goto LABEL_46;
    }

    sub_26618C2F0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_266129CA4(0, *(v21 + 16) + 1, 1, v21);
      v21 = v26;
    }

    v23 = *(v21 + 16);
    v22 = *(v21 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_266129CA4(v22 > 1, v23 + 1, 1, v21);
      v21 = v27;
    }

    v24 = v0[26];
    v25 = v0[24];
    *(v21 + 16) = v23 + 1;
    (*(v18 + 32))(v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v23, v24, v25);
    v20 += 16;
    ++v17;
  }

  v28 = sub_26617CA00(0x50415F4843494857, 0xE900000000000050);
  if (!v29)
  {

    if (qword_2814B2C40 == -1)
    {
LABEL_39:
      v46 = v0[15];
      v47 = v0[14];
      __swift_project_value_buffer(v47, qword_2814B4A98);
      v48 = OUTLINED_FUNCTION_8_3();
      v49(v48);
      v50 = sub_26618C690();
      sub_26618CAB0();
      OUTLINED_FUNCTION_59_0();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_6_2();
        OUTLINED_FUNCTION_30_0(v52);
        _os_log_impl(&dword_2660B7000, v50, v47, "Unable to get localized system text for snippet", v46, 2u);
        OUTLINED_FUNCTION_28_3();
      }

      v53 = OUTLINED_FUNCTION_12_1();
      v54(v53);
      sub_2660D3004();
      swift_allocError();
      *v55 = 7;
      swift_willThrow();
      OUTLINED_FUNCTION_63_0();

      OUTLINED_FUNCTION_5_3();

      return v56();
    }

LABEL_50:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    goto LABEL_39;
  }

  v30 = v28;
  v31 = v29;
  v32 = sub_2661046B8();
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = v32;
    v64 = MEMORY[0x277D84F90];
    sub_26612A648(0, v32 & ~(v32 >> 63), 0);
    if ((v34 & 0x8000000000000000) == 0)
    {
      v57 = v31;
      v58 = v30;
      v35 = 0;
      v36 = v0[20];
      v33 = v64;
      v63 = v34;
      while (1)
      {
        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_47;
        }

        if (v61)
        {
          v38 = MEMORY[0x26677C150](v35, v0[12]);
        }

        else
        {
          if (v35 >= *(v60 + 16))
          {
            goto LABEL_48;
          }

          v38 = *(v59 + 8 * v35);
        }

        v39 = v38;
        v40 = v0[21];
        v65[0] = v38;
        sub_2660F6B40(v65, v40);

        v42 = *(v64 + 16);
        v41 = *(v64 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_26612A648(v41 > 1, v42 + 1, 1);
        }

        v43 = v0[21];
        *(v64 + 16) = v42 + 1;
        sub_2660FA7AC(v43, v64 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v42);
        ++v35;
        if (v37 == v63)
        {
          v31 = v57;
          v30 = v58;
          goto LABEL_35;
        }
      }
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_35:
  v0[7] = v30;
  v0[8] = v31;
  sub_26618AB90();
  v0[9] = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C390, "Fi");
  sub_26618AB90();
  v44 = swift_task_alloc();
  v0[28] = v44;
  *v44 = v0;
  v44[1] = sub_2660F65C8;

  return sub_2660C072C(v21);
}

uint64_t sub_2660F65C8()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 232) = v0;

  if (v0)
  {
    v6 = sub_2660F6AAC;
  }

  else
  {
    *(v4 + 240) = v3;
    v6 = sub_2660F6700;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2660F6700()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[13];
  (*(v0[18] + 16))(v0[19], v0[11], v0[17]);
  sub_26618B640();
  v4 = v3[15];
  v5 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v4);
  v6 = OUTLINED_FUNCTION_60_0();
  v0[5] = type metadata accessor for AppLaunchDataModels(v6);
  v0[6] = sub_2660FA864(qword_2814B3FF0, 255, type metadata accessor for AppLaunchDataModels, &protocol conformance descriptor for AppLaunchDataModels);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_2660FA8AC(v2, boxed_opaque_existential_0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v8 = swift_allocObject();
  v0[31] = v8;
  *(v8 + 16) = xmmword_26618F7E0;
  *(v8 + 32) = v1;
  v9 = v1;
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_2660F68D0;
  v11 = v0[19];
  v12 = v0[10];

  return MEMORY[0x2821BB468](v12, v0 + 2, v8, v11, v4, v5);
}

uint64_t sub_2660F68D0()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660F69D8()
{
  v1 = *(v0 + 184);

  v2 = OUTLINED_FUNCTION_31_0();
  v3(v2);
  OUTLINED_FUNCTION_20_5();
  sub_2660FA810(v1, v4);

  OUTLINED_FUNCTION_5_3();

  return v5();
}

uint64_t sub_2660F6AAC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_20_5();
  sub_2660FA810(v0, v1);
  OUTLINED_FUNCTION_63_0();

  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_2660F6B40@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_26618AB50();
  v4 = *(v3 - 8);
  v37 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v36 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v39 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C080, &unk_26618FAC0);
  v14 = swift_allocObject();
  v36 = xmmword_26618E190;
  *(v14 + 16) = xmmword_26618E190;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C088, &unk_26618F940);
  inited = swift_initStackObject();
  *(inited + 16) = v36;
  v43 = 0x696669746E656469;
  v44 = 0xEA00000000007265;
  v16 = MEMORY[0x277D837D0];
  sub_26618CD20();
  v17 = sub_2660C9D30(v13);
  *(inited + 96) = v16;
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  *(inited + 72) = v19;
  *(inited + 80) = v20;
  sub_26618C850();
  v21 = sub_26618AB80();
  v22 = MEMORY[0x277D63778];
  *(v14 + 56) = v21;
  *(v14 + 64) = v22;
  __swift_allocate_boxed_opaque_existential_0((v14 + 32));
  sub_26618AB70();

  v38 = v12;
  sub_26618AB60();
  v23 = sub_2660C9D24(v13);
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_2660C9D30(v13);
  if (v28)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0;
  }

  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = *(v4 + 16);
  v32 = v39;
  v31(v39, v12, v3);
  v43 = v25;
  v44 = v26;
  sub_26618AB90();
  type metadata accessor for AppLaunchDataModels.App(0);
  v43 = v29;
  v44 = v30;
  sub_26618AB90();
  LOBYTE(v43) = 0;
  sub_26618AB90();
  v33 = v40;
  v31(v40, v32, v3);
  v31(v42, v33, v3);
  sub_26618AB90();
  v34 = *(v37 + 8);
  v34(v33, v3);
  v34(v32, v3);
  return (v34)(v38, v3);
}

void *sub_2660F6F00()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_2660D31B4((v0 + 17));

  sub_2660D3208((v0 + 30));
  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  return v0;
}

uint64_t sub_2660F6F50()
{
  sub_2660F6F00();

  return MEMORY[0x2821FE8D8](v0, 320, 7);
}

void sub_2660F6FAC()
{
  type metadata accessor for CloseAppDisambiguationStrategy();

  JUMPOUT(0x26677A120);
}

uint64_t sub_2660F7018(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2660F70C4;

  return sub_2660F71C8(a2);
}

uint64_t sub_2660F70C4(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_2660F71C8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_26618C6B0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660F7288, 0, 0);
}

uint64_t sub_2660F7288()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(*(v0 + 24), qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_84(&dword_2660B7000, v6, v7, "ApplicationNeedsDisambiguationStrategy.makeDisambiguationItemContainer() called");
    OUTLINED_FUNCTION_28_3();
  }

  v8 = OUTLINED_FUNCTION_12_1();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v10 = sub_26618B6C0();
  sub_2660F474C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C350, qword_266191BA0);
  swift_allocObject();
  sub_26618B720();

  v11 = OUTLINED_FUNCTION_72_0();

  return v12(v11);
}

uint64_t sub_2660F73F0()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v2 = sub_26618C6B0();
  v0[3] = v2;
  OUTLINED_FUNCTION_0_4(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_8_2();
  v4 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2660F7494()
{
  OUTLINED_FUNCTION_19();
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  __swift_project_value_buffer(*(v0 + 24), qword_2814B4A98);
  v1 = OUTLINED_FUNCTION_8_3();
  v2(v1);
  v3 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_59_0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_30_0(v5);
    OUTLINED_FUNCTION_84(&dword_2660B7000, v6, v7, "ApplicationNeedsDisambiguationStrategy.makeDisambiguationItemContainer() called");
    OUTLINED_FUNCTION_28_3();
  }

  v8 = OUTLINED_FUNCTION_12_1();
  v9(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v10 = sub_26618B6C0();
  sub_2660F474C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C350, qword_266191BA0);
  swift_allocObject();
  sub_26618B720();

  v11 = OUTLINED_FUNCTION_72_0();

  return v12(v11);
}

uint64_t sub_2660F75FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2660D3260;

  return sub_2660F76D4(a1, a2, a3, a4);
}

uint64_t sub_2660F76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_26618B8E0();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  v5[18] = swift_task_alloc();
  v5[19] = type metadata accessor for AppLaunchIntent(0);
  v5[20] = swift_task_alloc();
  v7 = sub_26618B790();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C360, &qword_266190D78);
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v9 = sub_26618B840();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v10 = sub_26618C0E0();
  v5[30] = v10;
  v5[31] = *(v10 - 8);
  v5[32] = swift_task_alloc();
  v11 = sub_26618B7F0();
  v5[33] = v11;
  v5[34] = *(v11 - 8);
  v5[35] = swift_task_alloc();
  v12 = sub_26618B800();
  v5[36] = v12;
  v5[37] = *(v12 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v13 = sub_26618C6B0();
  v5[43] = v13;
  v5[44] = *(v13 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660F7B00, 0, 0);
}

uint64_t sub_2660F7B00()
{
  v168 = v0;
  if (qword_2814B2C40 != -1)
  {
LABEL_80:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v6 = *(v0 + 400);
  v7 = *(v0 + 344);
  OUTLINED_FUNCTION_37_0(v7, qword_2814B4A98);
  v8 = OUTLINED_FUNCTION_55_0();
  v9(v8);
  v10 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v12);
    OUTLINED_FUNCTION_83(&dword_2660B7000, v13, v14, "ApplicationNeedsDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_62_0();
  v15 = OUTLINED_FUNCTION_11_2();
  v165 = v16;
  (v16)(v15);
  sub_26618B770();
  v17 = *(v4 + 88);
  v4 += 88;
  v18 = v17(v2, v3);
  if (v18 == *MEMORY[0x277D5C128])
  {
    v19 = *(v0 + 296);
    v4 = *(v0 + 248);
    v20 = OUTLINED_FUNCTION_11_5();
    v21(v20);
    v22 = OUTLINED_FUNCTION_27_2();
    v23(v22);
    v24 = OUTLINED_FUNCTION_10_5();
    v25(v24);
    v26 = OUTLINED_FUNCTION_13_5();
    v27(v26);
    v28 = sub_26618C690();
    sub_26618CAA0();
    OUTLINED_FUNCTION_46_1();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v30);
      OUTLINED_FUNCTION_13_1(&dword_2660B7000, v31, v32, "Parsing disambiguation result from NLv3IntentOnly");
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_61_0();
    v33 = OUTLINED_FUNCTION_9_7();
    v34(v33);
    v35 = OUTLINED_FUNCTION_80();
    v36(v35);
    if (qword_2814B3D40 != -1)
    {
      OUTLINED_FUNCTION_31_2(&qword_2814B3D40);
    }

    v1 = *(v0 + 152);
    v37 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = qword_2814B4AF8;
    v38 = _s11ApplicationVMa(0);
    OUTLINED_FUNCTION_21_5();
    sub_2660FA864(v39, 255, v40, &unk_2661939B8);
    OUTLINED_FUNCTION_3_10();
    sub_2660FA864(v41, 255, v42, &unk_26619303C);
    OUTLINED_FUNCTION_32_1();
    sub_26618BD90();
    if (__swift_getEnumTagSinglePayload(v2, 1, v38) == 1)
    {
      OUTLINED_FUNCTION_79();
      v43 = *(v0 + 248);
      v44 = *(v0 + 144);
      OUTLINED_FUNCTION_0_9();
      sub_2660FA810(v45, v46);
      v10 = v43 + 8;
      v47 = OUTLINED_FUNCTION_31_0();
      v48(v47);
      v49 = &qword_28005C220;
      v50 = &qword_266190D70;
      v51 = v44;
LABEL_61:
      sub_2660D30C4(v51, v49, v50);
      v142 = OUTLINED_FUNCTION_8_9();
      v143(v142);
LABEL_62:
      v166 = 0;
      v38 = 0;
      goto LABEL_63;
    }

    if (qword_2814B3D90 != -1)
    {
      OUTLINED_FUNCTION_30_2(&qword_2814B3D90);
    }

    OUTLINED_FUNCTION_75_0();
    v10 = qword_2814B4B20;
    OUTLINED_FUNCTION_3_10();
    v64 = sub_2660FA864(v62, 255, v63, &unk_26619300C);
    OUTLINED_FUNCTION_85(v64);
    OUTLINED_FUNCTION_0_9();
    sub_2660FA810(v3, v65);
    v66 = v19 + 8;
    v67 = OUTLINED_FUNCTION_31_0();
    v68(v67);
    OUTLINED_FUNCTION_19_4();
    goto LABEL_25;
  }

  if (v18 == *MEMORY[0x277D5C150])
  {
    v52 = OUTLINED_FUNCTION_24_2();
    v53(v52);
    v54 = *(v3 + 96);
    v3 += 96;
    v54(v6, v7);
    v55 = OUTLINED_FUNCTION_77();
    v56(v55);
    sub_26618B7D0();
    v6 = v57;
    OUTLINED_FUNCTION_54_0();
    v61 = v61 && v60 == v59;
    if (v61)
    {
    }

    else
    {
      v7 = OUTLINED_FUNCTION_44_0(v58);

      if ((v7 & 1) == 0)
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_40:
        if (qword_2814B2C38 != -1)
        {
          OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
        }

        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_37_0(v7, qword_2814B4A80);
        v164(v6);
        v94 = OUTLINED_FUNCTION_68_0();
        v95(v94);
        v96 = sub_26618C690();
        v97 = sub_26618CAB0();
        v98 = os_log_type_enabled(v96, v97);
        v10 = *(v0 + 352);
        v99 = *(v0 + 360);
        v100 = *(v0 + 344);
        if (v98)
        {
          v101 = *(v0 + 304);
          v102 = *(v0 + 168);
          OUTLINED_FUNCTION_49_0();
          v163 = v99;
          v103 = OUTLINED_FUNCTION_47_2();
          v167[0] = v103;
          *v10 = 136315138;
          sub_26618B770();
          v104 = sub_266145588(v101);
          v162 = v100;
          v106 = v105;
          v107 = OUTLINED_FUNCTION_22_1();
          v108(v107, v102);
          v109 = sub_266103A98(v104, v106, v167);

          *(v10 + 4) = v109;
          OUTLINED_FUNCTION_82(&dword_2660B7000, v110, v111, "Unable to process parse: %s");
          __swift_destroy_boxed_opaque_existential_1(v103);
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_7_2();

          v113 = v162;
          v112 = v163;
        }

        else
        {
          v121 = *(v0 + 168);

          v122 = OUTLINED_FUNCTION_22_1();
          v123(v122, v121);
          v112 = OUTLINED_FUNCTION_11_2();
        }

        v165(v112, v113);
        (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
        goto LABEL_62;
      }
    }

    v114 = sub_26618B7E0();
    v66 = *(v0 + 272);
    if (v114)
    {
      OUTLINED_FUNCTION_34_2(v114);

      v115 = OUTLINED_FUNCTION_8_9();
      v116(v115);
      if (*(v0 + 40))
      {
        v117 = OUTLINED_FUNCTION_89();
        v118 = *(v0 + 336);
        v119 = *(v0 + 288);
        v120 = *(v0 + 296);
        if (!v117)
        {
          (*(v120 + 8))(v118, v119);
          goto LABEL_62;
        }

        v38 = *(v0 + 72);
        v166 = *(v0 + 64);
        (*(v120 + 8))(v118, v119);

        goto LABEL_26;
      }
    }

    else
    {
      v140 = OUTLINED_FUNCTION_8_9();
      v141(v140);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    OUTLINED_FUNCTION_79();
    v49 = &qword_28005C0A8;
    v50 = qword_26618FAE0;
    v51 = v0 + 16;
    goto LABEL_61;
  }

  if (v18 != *MEMORY[0x277D5C160])
  {
    goto LABEL_40;
  }

  v38 = *(v0 + 344);
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v66 = *(v0 + 296);
  v4 = *(v0 + 224);
  v69 = *(v0 + 232);
  v10 = *(v0 + 216);
  v70 = OUTLINED_FUNCTION_11_5();
  v71(v70);
  v72 = OUTLINED_FUNCTION_27_2();
  v73(v72);
  v74 = OUTLINED_FUNCTION_10_5();
  v75(v74);
  v76 = OUTLINED_FUNCTION_13_5();
  v77(v76);
  v78 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v80);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v81, v82, "Parsing disambiguation result from USO");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_50_0();
  v83 = OUTLINED_FUNCTION_9_7();
  v84(v83);
  sub_26618B820();
  v37 = v5;
  v85 = sub_2660F9FD4(v10);
  v86 = OUTLINED_FUNCTION_57_0(v85);
  v87(v86);
  v88 = *(v69 + 8);
  v3 = v69 + 8;
  v88(v2);
LABEL_25:
  OUTLINED_FUNCTION_88();
  (v1)(v37, v2);
  if (!v38)
  {
LABEL_63:
    v144 = OUTLINED_FUNCTION_58_0();
    v145(v144);

    v146 = sub_26618C690();
    v147 = sub_26618CAB0();

    if (os_log_type_enabled(v146, v147))
    {
      OUTLINED_FUNCTION_49_0();
      v148 = OUTLINED_FUNCTION_47_2();
      v167[0] = v148;
      *v10 = 136315138;
      if (v38)
      {
        v149 = v166;
      }

      else
      {
        v149 = 7104878;
      }

      if (!v38)
      {
        v38 = 0xE300000000000000;
      }

      v150 = sub_266103A98(v149, v38, v167);

      *(v10 + 4) = v150;
      OUTLINED_FUNCTION_81(&dword_2660B7000, v151, v152, "No app id matched the selected app id: %s");
      __swift_destroy_boxed_opaque_existential_1(v148);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    v153 = OUTLINED_FUNCTION_73_0();
    v154(v153);
    OUTLINED_FUNCTION_14_5();
    swift_allocError();
    *v155 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();
    goto LABEL_72;
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v89 = sub_26618B610();
  sub_2661046B8();
  OUTLINED_FUNCTION_71_0();
  while (1)
  {
    if (v3 == v10)
    {

      goto LABEL_63;
    }

    if (v66)
    {
      v90 = MEMORY[0x26677C150](v10, v89);
    }

    else
    {
      if (v10 >= *(v1 + 16))
      {
        goto LABEL_79;
      }

      v90 = *(v89 + 8 * v10 + 32);
    }

    v2 = v90;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v91 = sub_2660C9D30(v90);
    if (!v92)
    {
      goto LABEL_38;
    }

    v4 = v92;
    if (v91 == v166 && v92 == v38)
    {
      break;
    }

    v5 = sub_26618D000();

    if (v5)
    {
      goto LABEL_53;
    }

LABEL_38:

    ++v10;
  }

LABEL_53:

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v124 = *(v0 + 376);
  OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
  v164(v124);
  v125 = v2;
  v126 = sub_26618C690();
  LOBYTE(v124) = sub_26618CAA0();

  if (os_log_type_enabled(v126, v124))
  {
    v127 = OUTLINED_FUNCTION_49_0();
    v128 = swift_slowAlloc();
    *v127 = 138412290;
    *(v127 + 4) = v125;
    *v128 = v125;
    v129 = v125;
    OUTLINED_FUNCTION_87(&dword_2660B7000, v130, v131, "Found app: %@");
    sub_2660D30C4(v128, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_2();
  }

  v132 = OUTLINED_FUNCTION_76_0();
  v133(v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C370, &qword_2661912D0);
  v134 = sub_26618B6B0();
  [v134 setApplication_];

  v135 = sub_26618B6B0();
  v136 = [v135 application];

  v137 = [v136 isOffloaded];
  v138 = sub_26618B6B0();
  v139 = [v138 application];

  if (v139)
  {
    type metadata accessor for Application();
  }

  else
  {
    v167[1] = 0;
    v167[2] = 0;
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_45_2();
  v167[0] = v139;
  v167[3] = v158;
  sub_26618B6B0();
  OUTLINED_FUNCTION_60_0();
  v159 = type metadata accessor for CloseAppIntent();
  OUTLINED_FUNCTION_86(v159);
  OUTLINED_FUNCTION_70_0();
  sub_26618B550();

  v160 = OUTLINED_FUNCTION_70_0();
  v161(v160);

  OUTLINED_FUNCTION_5_3();
LABEL_72:

  return v156();
}

uint64_t sub_2660F881C()
{
  OUTLINED_FUNCTION_18();
  v1[13] = v2;
  v1[14] = v0;
  v1[11] = v3;
  v1[12] = v4;
  v1[10] = v5;
  v6 = sub_26618B8E0();
  v1[15] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[16] = v7;
  v1[17] = OUTLINED_FUNCTION_8_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C220, &qword_266190D70);
  OUTLINED_FUNCTION_3_0(v8);
  v1[18] = OUTLINED_FUNCTION_8_2();
  v9 = type metadata accessor for AppLaunchIntent(0);
  v1[19] = v9;
  OUTLINED_FUNCTION_3_0(v9);
  v1[20] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618B790();
  v1[21] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[22] = v11;
  v1[23] = OUTLINED_FUNCTION_8_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C380, &unk_266190DA0);
  v1[24] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[25] = v13;
  v1[26] = OUTLINED_FUNCTION_8_2();
  v14 = sub_26618B840();
  v1[27] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[28] = v15;
  v1[29] = OUTLINED_FUNCTION_8_2();
  v16 = sub_26618C0E0();
  v1[30] = v16;
  OUTLINED_FUNCTION_0_4(v16);
  v1[31] = v17;
  v1[32] = OUTLINED_FUNCTION_8_2();
  v18 = sub_26618B7F0();
  v1[33] = v18;
  OUTLINED_FUNCTION_0_4(v18);
  v1[34] = v19;
  v1[35] = OUTLINED_FUNCTION_8_2();
  v20 = sub_26618B800();
  v1[36] = v20;
  OUTLINED_FUNCTION_0_4(v20);
  v1[37] = v21;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v22 = sub_26618C6B0();
  v1[43] = v22;
  OUTLINED_FUNCTION_0_4(v22);
  v1[44] = v23;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_2660F8BB4()
{
  v169 = v0;
  if (qword_2814B2C40 != -1)
  {
LABEL_80:
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v6 = *(v0 + 400);
  v7 = *(v0 + 344);
  OUTLINED_FUNCTION_37_0(v7, qword_2814B4A98);
  v8 = OUTLINED_FUNCTION_55_0();
  v9(v8);
  v10 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v12);
    OUTLINED_FUNCTION_83(&dword_2660B7000, v13, v14, "ApplicationNeedsDisambiguationStrategy.parseDisambiguationResult() called");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_62_0();
  v15 = OUTLINED_FUNCTION_11_2();
  v166 = v16;
  (v16)(v15);
  sub_26618B770();
  v17 = *(v4 + 88);
  v4 += 88;
  v18 = v17(v2, v3);
  if (v18 == *MEMORY[0x277D5C128])
  {
    v19 = *(v0 + 296);
    v4 = *(v0 + 248);
    v20 = OUTLINED_FUNCTION_11_5();
    v21(v20);
    v22 = OUTLINED_FUNCTION_27_2();
    v23(v22);
    v24 = OUTLINED_FUNCTION_10_5();
    v25(v24);
    v26 = OUTLINED_FUNCTION_13_5();
    v27(v26);
    v28 = sub_26618C690();
    sub_26618CAA0();
    OUTLINED_FUNCTION_46_1();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v30);
      OUTLINED_FUNCTION_13_1(&dword_2660B7000, v31, v32, "Parsing disambiguation result from NLv3IntentOnly");
      OUTLINED_FUNCTION_7_3();
    }

    OUTLINED_FUNCTION_61_0();
    v33 = OUTLINED_FUNCTION_9_7();
    v34(v33);
    v35 = OUTLINED_FUNCTION_80();
    v36(v35);
    if (qword_2814B3D40 != -1)
    {
      OUTLINED_FUNCTION_31_2(&qword_2814B3D40);
    }

    v1 = *(v0 + 152);
    v37 = *(v0 + 160);
    v2 = *(v0 + 144);
    v3 = qword_2814B4AF8;
    v38 = _s11ApplicationVMa(0);
    OUTLINED_FUNCTION_21_5();
    sub_2660FA864(v39, 255, v40, &unk_2661939B8);
    OUTLINED_FUNCTION_3_10();
    sub_2660FA864(v41, 255, v42, &unk_26619303C);
    OUTLINED_FUNCTION_32_1();
    sub_26618BD90();
    if (__swift_getEnumTagSinglePayload(v2, 1, v38) == 1)
    {
      OUTLINED_FUNCTION_79();
      v43 = *(v0 + 248);
      v44 = *(v0 + 144);
      OUTLINED_FUNCTION_0_9();
      sub_2660FA810(v45, v46);
      v10 = v43 + 8;
      v47 = OUTLINED_FUNCTION_31_0();
      v48(v47);
      v49 = &qword_28005C220;
      v50 = &qword_266190D70;
      v51 = v44;
LABEL_61:
      sub_2660D30C4(v51, v49, v50);
      v143 = OUTLINED_FUNCTION_8_9();
      v144(v143);
LABEL_62:
      v167 = 0;
      v38 = 0;
      goto LABEL_63;
    }

    if (qword_2814B3D90 != -1)
    {
      OUTLINED_FUNCTION_30_2(&qword_2814B3D90);
    }

    OUTLINED_FUNCTION_75_0();
    v10 = qword_2814B4B20;
    OUTLINED_FUNCTION_3_10();
    v64 = sub_2660FA864(v62, 255, v63, &unk_26619300C);
    OUTLINED_FUNCTION_85(v64);
    OUTLINED_FUNCTION_0_9();
    sub_2660FA810(v3, v65);
    v66 = v19 + 8;
    v67 = OUTLINED_FUNCTION_31_0();
    v68(v67);
    OUTLINED_FUNCTION_19_4();
    goto LABEL_25;
  }

  if (v18 == *MEMORY[0x277D5C150])
  {
    v52 = OUTLINED_FUNCTION_24_2();
    v53(v52);
    v54 = *(v3 + 96);
    v3 += 96;
    v54(v6, v7);
    v55 = OUTLINED_FUNCTION_77();
    v56(v55);
    sub_26618B7D0();
    v6 = v57;
    OUTLINED_FUNCTION_54_0();
    v61 = v61 && v60 == v59;
    if (v61)
    {
    }

    else
    {
      v7 = OUTLINED_FUNCTION_44_0(v58);

      if ((v7 & 1) == 0)
      {
        (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
LABEL_40:
        if (qword_2814B2C38 != -1)
        {
          OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
        }

        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_37_0(v7, qword_2814B4A80);
        v165(v6);
        v94 = OUTLINED_FUNCTION_68_0();
        v95(v94);
        v96 = sub_26618C690();
        v97 = sub_26618CAB0();
        v98 = os_log_type_enabled(v96, v97);
        v10 = *(v0 + 352);
        v99 = *(v0 + 360);
        v100 = *(v0 + 344);
        if (v98)
        {
          v101 = *(v0 + 304);
          v102 = *(v0 + 168);
          OUTLINED_FUNCTION_49_0();
          v164 = v99;
          v103 = OUTLINED_FUNCTION_47_2();
          v168[0] = v103;
          *v10 = 136315138;
          sub_26618B770();
          v104 = sub_266145588(v101);
          v163 = v100;
          v106 = v105;
          v107 = OUTLINED_FUNCTION_22_1();
          v108(v107, v102);
          v109 = sub_266103A98(v104, v106, v168);

          *(v10 + 4) = v109;
          OUTLINED_FUNCTION_82(&dword_2660B7000, v110, v111, "Unable to process parse: %s");
          __swift_destroy_boxed_opaque_existential_1(v103);
          OUTLINED_FUNCTION_28_3();
          OUTLINED_FUNCTION_7_2();

          v113 = v163;
          v112 = v164;
        }

        else
        {
          v121 = *(v0 + 168);

          v122 = OUTLINED_FUNCTION_22_1();
          v123(v122, v121);
          v112 = OUTLINED_FUNCTION_11_2();
        }

        v166(v112, v113);
        (*(*(v0 + 296) + 8))(*(v0 + 336), *(v0 + 288));
        goto LABEL_62;
      }
    }

    v114 = sub_26618B7E0();
    v66 = *(v0 + 272);
    if (v114)
    {
      OUTLINED_FUNCTION_34_2(v114);

      v115 = OUTLINED_FUNCTION_8_9();
      v116(v115);
      if (*(v0 + 40))
      {
        v117 = OUTLINED_FUNCTION_89();
        v118 = *(v0 + 336);
        v119 = *(v0 + 288);
        v120 = *(v0 + 296);
        if (!v117)
        {
          (*(v120 + 8))(v118, v119);
          goto LABEL_62;
        }

        v38 = *(v0 + 72);
        v167 = *(v0 + 64);
        (*(v120 + 8))(v118, v119);

        goto LABEL_26;
      }
    }

    else
    {
      v141 = OUTLINED_FUNCTION_8_9();
      v142(v141);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    OUTLINED_FUNCTION_79();
    v49 = &qword_28005C0A8;
    v50 = qword_26618FAE0;
    v51 = v0 + 16;
    goto LABEL_61;
  }

  if (v18 != *MEMORY[0x277D5C160])
  {
    goto LABEL_40;
  }

  v38 = *(v0 + 344);
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v66 = *(v0 + 296);
  v4 = *(v0 + 224);
  v69 = *(v0 + 232);
  v10 = *(v0 + 216);
  v70 = OUTLINED_FUNCTION_11_5();
  v71(v70);
  v72 = OUTLINED_FUNCTION_27_2();
  v73(v72);
  v74 = OUTLINED_FUNCTION_10_5();
  v75(v74);
  v76 = OUTLINED_FUNCTION_13_5();
  v77(v76);
  v78 = sub_26618C690();
  sub_26618CAA0();
  OUTLINED_FUNCTION_46_1();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_9_2(v80);
    OUTLINED_FUNCTION_13_1(&dword_2660B7000, v81, v82, "Parsing disambiguation result from USO");
    OUTLINED_FUNCTION_7_3();
  }

  OUTLINED_FUNCTION_50_0();
  v83 = OUTLINED_FUNCTION_9_7();
  v84(v83);
  sub_26618B820();
  v37 = v5;
  v85 = sub_2660F9FD4(v10);
  v86 = OUTLINED_FUNCTION_57_0(v85);
  v87(v86);
  v88 = *(v69 + 8);
  v3 = v69 + 8;
  v88(v2);
LABEL_25:
  OUTLINED_FUNCTION_88();
  (v1)(v37, v2);
  if (!v38)
  {
LABEL_63:
    v145 = OUTLINED_FUNCTION_58_0();
    v146(v145);

    v147 = sub_26618C690();
    v148 = sub_26618CAB0();

    if (os_log_type_enabled(v147, v148))
    {
      OUTLINED_FUNCTION_49_0();
      v149 = OUTLINED_FUNCTION_47_2();
      v168[0] = v149;
      *v10 = 136315138;
      if (v38)
      {
        v150 = v167;
      }

      else
      {
        v150 = 7104878;
      }

      if (!v38)
      {
        v38 = 0xE300000000000000;
      }

      v151 = sub_266103A98(v150, v38, v168);

      *(v10 + 4) = v151;
      OUTLINED_FUNCTION_81(&dword_2660B7000, v152, v153, "No app id matched the selected app id: %s");
      __swift_destroy_boxed_opaque_existential_1(v149);
      OUTLINED_FUNCTION_7_2();
      OUTLINED_FUNCTION_7_2();
    }

    else
    {
    }

    v154 = OUTLINED_FUNCTION_73_0();
    v155(v154);
    OUTLINED_FUNCTION_14_5();
    swift_allocError();
    *v156 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_5_3();
    goto LABEL_72;
  }

LABEL_26:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C368, &unk_266190D80);
  v89 = sub_26618B610();
  sub_2661046B8();
  OUTLINED_FUNCTION_71_0();
  while (1)
  {
    if (v3 == v10)
    {

      goto LABEL_63;
    }

    if (v66)
    {
      v90 = MEMORY[0x26677C150](v10, v89);
    }

    else
    {
      if (v10 >= *(v1 + 16))
      {
        goto LABEL_79;
      }

      v90 = *(v89 + 8 * v10 + 32);
    }

    v2 = v90;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v91 = sub_2660C9D30(v90);
    if (!v92)
    {
      goto LABEL_38;
    }

    v4 = v92;
    if (v91 == v167 && v92 == v38)
    {
      break;
    }

    v5 = sub_26618D000();

    if (v5)
    {
      goto LABEL_53;
    }

LABEL_38:

    ++v10;
  }

LABEL_53:

  if (qword_2814B2C38 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v124 = *(v0 + 376);
  OUTLINED_FUNCTION_37_0(*(v0 + 344), qword_2814B4A80);
  v165(v124);
  v125 = v2;
  v126 = sub_26618C690();
  LOBYTE(v124) = sub_26618CAA0();

  if (os_log_type_enabled(v126, v124))
  {
    v127 = OUTLINED_FUNCTION_49_0();
    v128 = swift_slowAlloc();
    *v127 = 138412290;
    *(v127 + 4) = v125;
    *v128 = v125;
    v129 = v125;
    OUTLINED_FUNCTION_87(&dword_2660B7000, v130, v131, "Found app: %@");
    sub_2660D30C4(v128, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_2();
  }

  v132 = OUTLINED_FUNCTION_76_0();
  v133(v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C388, qword_2661925C0);
  v134 = sub_26618B6B0();
  [v134 setApplication_];

  v135 = sub_26618B6B0();
  v136 = sub_26618B6B0();
  v137 = [v136 application];

  v138 = [v137 isOffloaded];
  [v135 setAutoInstallOffloaded_];

  v139 = sub_26618B6B0();
  v140 = [v139 application];

  if (v140)
  {
    type metadata accessor for Application();
  }

  else
  {
    v168[1] = 0;
    v168[2] = 0;
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_45_2();
  v168[0] = v140;
  v168[3] = v159;
  sub_26618B6B0();
  OUTLINED_FUNCTION_60_0();
  v160 = type metadata accessor for LaunchAppIntent();
  OUTLINED_FUNCTION_86(v160);
  OUTLINED_FUNCTION_70_0();
  sub_26618B550();

  v161 = OUTLINED_FUNCTION_70_0();
  v162(v161);

  OUTLINED_FUNCTION_5_3();
LABEL_72:

  return v157();
}

uint64_t sub_2660F98E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D2E00;

  return sub_2660F5710();
}

uint64_t sub_2660F9994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_2660D3260;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_2660F9A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v10 = v5;
  v10[1] = sub_2660D3260;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_2660F9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_2660F9BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_2660F9CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CloseAppDisambiguationStrategy();

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_2660F9D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v12 = v6;
  v12[1] = sub_2660D3260;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2660F9DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for CloseAppDisambiguationStrategy();
  *v14 = v7;
  v14[1] = sub_2660D3260;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_2660F9F0C()
{
  result = qword_28005C348;
  if (!qword_28005C348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005C350, qword_266191BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C348);
  }

  return result;
}

uint64_t sub_2660F9F7C(uint64_t a1, uint64_t a2)
{
  result = sub_2660FA864(&qword_28005C358, a2, type metadata accessor for CloseAppDisambiguationStrategy, &unk_266190CA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2660F9FD4(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_60_0();
  v4 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266144AE8();
  if (v10)
  {
    v11 = v10;
    v12 = __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
    if (*(sub_2660FA19C(v12, v11) + 16))
    {
    }
  }

  else
  {
    if (qword_2814B2C38 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    OUTLINED_FUNCTION_37_0(v4, qword_2814B4A80);
    (*(v6 + 16))(v9);
    v13 = sub_26618C690();
    v14 = sub_26618CAB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_9_2(v15);
      _os_log_impl(&dword_2660B7000, v13, v14, "ApplicationNeedsDisambiguationStrategy.parseDisambiguationResultNLv4Uso() No tasks found in input", v2, 2u);
      OUTLINED_FUNCTION_7_3();
    }

    (*(v6 + 8))(v9, v4);
  }

  return OUTLINED_FUNCTION_12_1();
}

uint64_t sub_2660FA19C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_60_0();
  v3 = sub_26618C7A0();
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for ReferenceResolver;
  v55 = &off_2877CC6F0;
  v53[0] = swift_allocObject();
  sub_2660CFC00(v2, v53[0] + 16);
  sub_26618BDF0();
  sub_2660D74A8(v52, v50);
  if (!v51)
  {
    goto LABEL_41;
  }

  sub_2660D74A8(v50, v49);
  sub_26618BE40();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_90();
    sub_26618BAF0();
    goto LABEL_7;
  }

  v9 = sub_26618BDD0();
  if ((OUTLINED_FUNCTION_6_7(v9) & 1) == 0)
  {
    v10 = sub_26618BF80();
    if ((OUTLINED_FUNCTION_6_7(v10) & 1) == 0)
    {
      v13 = sub_26618BF40();
      if (OUTLINED_FUNCTION_6_7(v13))
      {
        v14 = v48;

        sub_26618BAF0();

        if (v47)
        {
          v15 = sub_26618BB90();

          __swift_project_boxed_opaque_existential_1(v53, v54);
          v16 = sub_2661613B8();
          v17 = *(v16 + 16);
          if (v17)
          {
            v43[1] = v15;
            v43[2] = v14;
            v46 = v3;
            v47 = MEMORY[0x277D84F90];
            sub_26612A450(0, v17, 0);
            v12 = v47;
            v19 = *(v5 + 16);
            v18 = v5 + 16;
            v45 = v19;
            v20 = (*(v18 + 64) + 32) & ~*(v18 + 64);
            v43[0] = v16;
            v21 = v16 + v20;
            v44 = *(v18 + 56);
            v22 = (v18 - 8);
            do
            {
              v23 = v46;
              v24 = v18;
              v45(v8, v21, v46);
              v25 = sub_26618C770();
              v27 = v26;
              (*v22)(v8, v23);
              v47 = v12;
              v29 = *(v12 + 16);
              v28 = *(v12 + 24);
              v30 = v12;
              if (v29 >= v28 >> 1)
              {
                sub_26612A450(v28 > 1, v29 + 1, 1);
                v30 = v47;
              }

              *(v30 + 16) = v29 + 1;
              v31 = v30 + 16 * v29;
              *(v31 + 32) = v25;
              *(v31 + 40) = v27;
              v21 += v44;
              --v17;
              v12 = v30;
              v18 = v24;
            }

            while (v17);
            sub_2660D30C4(v52, &qword_28005C0A8, qword_26618FAE0);
          }

          else
          {

            sub_2660D30C4(v52, &qword_28005C0A8, qword_26618FAE0);
            v12 = MEMORY[0x277D84F90];
          }

          __swift_destroy_boxed_opaque_existential_1(v49);
          goto LABEL_39;
        }

        __swift_destroy_boxed_opaque_existential_1(v49);
        sub_2660D30C4(v50, &qword_28005C0A8, qword_26618FAE0);
        v37 = v52;
LABEL_42:
        sub_2660D30C4(v37, &qword_28005C0A8, qword_26618FAE0);
        v12 = MEMORY[0x277D84F90];
        goto LABEL_43;
      }

      v32 = sub_26618BE00();
      if (OUTLINED_FUNCTION_6_7(v32))
      {
        goto LABEL_6;
      }

      v33 = sub_26618BDE0();
      if (OUTLINED_FUNCTION_6_7(v33))
      {
        goto LABEL_6;
      }

      v34 = sub_26618BFA0();
      if (OUTLINED_FUNCTION_6_7(v34))
      {
        OUTLINED_FUNCTION_90();
        v35 = sub_26618C060();

        if (!v35)
        {
          goto LABEL_37;
        }

        if (!sub_2661046B8())
        {

          goto LABEL_37;
        }

        sub_2661046C8();
        if ((v35 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26677C150](0, v35);
        }

        else
        {
        }

        sub_26618BCF0();
        goto LABEL_25;
      }

      v38 = sub_26618BE90();
      if (OUTLINED_FUNCTION_6_7(v38))
      {
        goto LABEL_6;
      }

      v39 = sub_26618BF90();
      if (OUTLINED_FUNCTION_6_7(v39))
      {
        goto LABEL_6;
      }

      v40 = sub_26618BEA0();
      if (OUTLINED_FUNCTION_6_7(v40))
      {
        goto LABEL_6;
      }

      v41 = sub_26618C080();
      if (OUTLINED_FUNCTION_6_7(v41))
      {
        OUTLINED_FUNCTION_90();
        sub_26618BED0();
LABEL_25:

        if (v47)
        {
          v36 = sub_26618BD20();

          if (v36)
          {
            goto LABEL_8;
          }
        }

LABEL_37:

        v12 = MEMORY[0x277D84F90];
        goto LABEL_38;
      }

      __swift_destroy_boxed_opaque_existential_1(v49);
LABEL_41:
      sub_2660D30C4(v52, &qword_28005C0A8, qword_26618FAE0);
      v37 = v50;
      goto LABEL_42;
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_90();
  sub_26618BED0();
LABEL_7:

  if (!v47)
  {
    goto LABEL_37;
  }

LABEL_8:
  sub_26613C958();
  v12 = v11;

LABEL_38:
  sub_2660D30C4(v52, &qword_28005C0A8, qword_26618FAE0);
  __swift_destroy_boxed_opaque_existential_1(v49);
LABEL_39:
  sub_2660D30C4(v50, &qword_28005C0A8, qword_26618FAE0);
LABEL_43:
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v12;
}

unint64_t sub_2660FA768()
{
  result = qword_28005C378;
  if (!qword_28005C378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28005C378);
  }

  return result;
}

uint64_t sub_2660FA7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.App(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660FA810(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_26_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2660FA864(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2660FA8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLaunchDataModels.AppDisambiguationModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_14_5()
{
  *(v1 - 120) = *(v0 + 136);

  return sub_2660D3004();
}

uint64_t OUTLINED_FUNCTION_19_4()
{
  *(v2 - 120) = *(v1 + 48);

  return sub_2660FA810(v0, _s11ApplicationVMa);
}

void OUTLINED_FUNCTION_26_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_28_3()
{

  JUMPOUT(0x26677CC30);
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_2(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_34_2(uint64_t a1)
{

  return sub_266158220(0x696669746E656469, 0xEA00000000007265, a1, (v1 + 16));
}

uint64_t OUTLINED_FUNCTION_44_0(uint64_t a1)
{

  return sub_26618D000();
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_50_0()
{
}

void OUTLINED_FUNCTION_61_0()
{
}

void OUTLINED_FUNCTION_62_0()
{
}

uint64_t OUTLINED_FUNCTION_63_0()
{
}

void OUTLINED_FUNCTION_81(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_82(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_83(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void OUTLINED_FUNCTION_84(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

void *OUTLINED_FUNCTION_85(uint64_t a1)
{

  return sub_26618BDA0();
}

uint64_t OUTLINED_FUNCTION_86(uint64_t a1)
{

  return sub_26618B4A0();
}

void OUTLINED_FUNCTION_87(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_88()
{
}

uint64_t OUTLINED_FUNCTION_89()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_90()
{
}

id sub_2660FAFA0()
{
  result = [objc_allocWithZone(type metadata accessor for CloseAppIntentHandler()) init];
  qword_28005D180 = result;
  return result;
}

uint64_t sub_2660FAFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v111 = a1;
  sub_26618B790();
  OUTLINED_FUNCTION_2_2();
  v100 = v3;
  v101 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_6();
  v99 = v4;
  v5 = OUTLINED_FUNCTION_18_2();
  v102 = type metadata accessor for AppLaunchIntent(v5);
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_4_6();
  v103 = v6;
  OUTLINED_FUNCTION_18_2();
  sub_26618C0E0();
  OUTLINED_FUNCTION_2_2();
  v104 = v8;
  v105 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_6();
  v108 = v9;
  OUTLINED_FUNCTION_18_2();
  v112 = sub_26618B800();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_1();
  v97 = v13 - v14;
  OUTLINED_FUNCTION_65_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v95 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v95 - v19;
  OUTLINED_FUNCTION_18_2();
  v21 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_24_1();
  v109 = (v25 - v26);
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v27);
  v96 = &v95 - v28;
  OUTLINED_FUNCTION_65_0();
  MEMORY[0x28223BE20](v29);
  v106 = &v95 - v30;
  OUTLINED_FUNCTION_65_0();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v95 - v33;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    v32 = swift_once();
  }

  OUTLINED_FUNCTION_25_3(v32, qword_2814B4A98);
  v107 = *(v23 + 16);
  v107(v34);
  v35 = sub_26618C690();
  v36 = sub_26618CAA0();
  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_24_0();
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2660B7000, v35, v36, "CloseAppFlowStrategy.actionForInput() called", v37, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v38 = v23 + 8;
  v39 = *(v23 + 8);
  v39(v34, v21);
  sub_26618B770();
  v40 = v11;
  v41 = v20;
  v42 = v112;
  if ((*(v40 + 88))(v20, v112) == *MEMORY[0x277D5C128])
  {
    (*(v40 + 96))(v20, v42);
    v43 = v104;
    v44 = v108;
    v45 = v105;
    (*(v104 + 32))(v108, v20, v105);
    v46 = v103;
    (*(v43 + 16))(v103, v44, v45);
    if (qword_2814B3D30 != -1)
    {
      swift_once();
    }

    sub_2660FDBBC(&qword_2814B3D28, 255, type metadata accessor for AppLaunchIntent, &unk_2661939B8);
    sub_26618BDA0();
    v47 = v113[0];
    if (v113[0] == 11)
    {
      goto LABEL_9;
    }

    if (sub_266146C4C(v113[0]) == 0x65736F6C63 && v72 == 0xE500000000000000)
    {
    }

    else
    {
      v74 = sub_26618D000();

      if ((v74 & 1) == 0)
      {
LABEL_9:
        if (qword_2814B2C38 != -1)
        {
          v47 = OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
        }

        OUTLINED_FUNCTION_25_3(v47, qword_2814B4A80);
        v107(v106);
        v48 = sub_26618C690();
        v49 = sub_26618CA90();
        if (os_log_type_enabled(v48, v49))
        {
          OUTLINED_FUNCTION_24_0();
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_2660B7000, v48, v49, "Incorrect verb in intent for flow, ignoring input", v50, 2u);
          v44 = v108;
          OUTLINED_FUNCTION_10_2();
          MEMORY[0x26677CC30]();
        }

        v39(v106, v21);
        sub_26618B2B0();
        goto LABEL_46;
      }
    }

    sub_26618B2A0();
LABEL_46:
    sub_2660DD7D0(v46);
    return (*(v43 + 8))(v44, v45);
  }

  sub_26618B770();
  sub_2660C87C0();
  v51 = *(v40 + 8);
  v108 = v40 + 8;
  v106 = v51;
  (v51)(v18, v42);
  v52 = v114;
  if (!v114)
  {
    v55 = sub_2660C8040(v113, &qword_28005C148, &unk_26618FF00);
    v56 = v109;
    goto LABEL_38;
  }

  v53 = v115;
  __swift_project_boxed_opaque_existential_1(v113, v114);
  v54 = (*(v53 + 8))(v52, v53);
  v55 = __swift_destroy_boxed_opaque_existential_1(v113);
  v56 = v109;
  if (!v54)
  {
LABEL_38:
    v105 = v39;
    if (qword_2814B2C38 != -1)
    {
      v55 = OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
    }

    OUTLINED_FUNCTION_25_3(v55, qword_2814B4A80);
    v107(v56);
    v76 = v99;
    v75 = v100;
    v77 = v101;
    (*(v100 + 16))(v99, v111, v101);
    v78 = sub_26618C690();
    v79 = sub_26618CAB0();
    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_19_5();
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v111 = v38;
      v107 = v81;
      *v113 = v81;
      *v80 = 136315138;
      v82 = v41;
      v83 = v97;
      sub_26618B770();
      v84 = v83;
      v41 = v82;
      v85 = sub_266145588(v84);
      v86 = v77;
      v88 = v87;
      (*(v75 + 8))(v76, v86);
      v89 = sub_266103A98(v85, v88, v113);

      *(v80 + 4) = v89;
      _os_log_impl(&dword_2660B7000, v78, v79, "Unable to handle parse: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v107);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      v42 = v112;
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    else
    {

      (*(v75 + 8))(v76, v77);
    }

    v105(v109, v21);
    sub_26618B2B0();
    v70 = v41;
    v71 = v42;
    return (v106)(v70, v71);
  }

  sub_26613BA0C();
  v58 = v57;
  if (sub_266145BC4(v57) == 0x65736F6C63 && v59 == 0xE500000000000000)
  {
    goto LABEL_47;
  }

  v61 = sub_26618D000();

  if (v61)
  {
LABEL_48:
    v91 = __swift_project_boxed_opaque_existential_1((v98 + 16), *(v98 + 40));
    v92 = sub_2660FA19C(v91, v54);
    if (qword_28005BC80 != -1)
    {
      swift_once();
    }

    v93 = sub_26612EAB0(v92, qword_28005D1A0);

    v94 = v112;
    if (v93)
    {
      sub_26618B2A0();
    }

    else
    {
      sub_26618B2B0();
    }

    v70 = v20;
    v71 = v94;
    return (v106)(v70, v71);
  }

  if (sub_266145BC4(v58) == 1953068401 && v62 == 0xE400000000000000)
  {
LABEL_47:

    goto LABEL_48;
  }

  v64 = sub_26618D000();

  if (v64)
  {
    goto LABEL_48;
  }

  if (qword_2814B2C38 != -1)
  {
    v65 = OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  OUTLINED_FUNCTION_25_3(v65, qword_2814B4A80);
  v66 = v96;
  v107(v96);
  v67 = sub_26618C690();
  v68 = sub_26618CA90();
  if (os_log_type_enabled(v67, v68))
  {
    OUTLINED_FUNCTION_24_0();
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_2660B7000, v67, v68, "Incorrect verb in userDialogAct for flow, ignoring input", v69, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v39(v66, v21);
  sub_26618B2B0();

  v70 = v41;
  v71 = v112;
  return (v106)(v70, v71);
}

uint64_t sub_2660FBA94()
{
  OUTLINED_FUNCTION_18();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  v4 = sub_26618B7B0();
  v1[32] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[33] = v5;
  v1[34] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B7F0();
  v1[35] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[36] = v7;
  v1[37] = OUTLINED_FUNCTION_8_2();
  v8 = sub_26618B840();
  v1[38] = v8;
  OUTLINED_FUNCTION_0_4(v8);
  v1[39] = v9;
  v1[40] = OUTLINED_FUNCTION_8_2();
  type metadata accessor for AppLaunchIntent(0);
  v1[41] = OUTLINED_FUNCTION_8_2();
  v10 = sub_26618C0E0();
  v1[42] = v10;
  OUTLINED_FUNCTION_0_4(v10);
  v1[43] = v11;
  v1[44] = OUTLINED_FUNCTION_8_2();
  v12 = sub_26618B800();
  v1[45] = v12;
  OUTLINED_FUNCTION_0_4(v12);
  v1[46] = v13;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v14 = sub_26618C6B0();
  v1[50] = v14;
  OUTLINED_FUNCTION_0_4(v14);
  v1[51] = v15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660FBD54, 0, 0);
}

uint64_t sub_2660FBD54()
{
  v166 = v0;
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = *(v0 + 464);
  v3 = *(v0 + 408);
  v4 = __swift_project_value_buffer(*(v0 + 400), qword_2814B4A98);
  v6 = *(v3 + 16);
  v5 = (v3 + 16);
  v160 = v4;
  v162 = v6;
  (v6)(v2);
  v7 = sub_26618C690();
  v8 = sub_26618CAA0();
  v9 = OUTLINED_FUNCTION_21_6();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_24_0();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_2(v11);
    _os_log_impl(&dword_2660B7000, v7, v8, "CloseAppFlowStrategy.makeIntentFromParse() called", v1, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v12 = *(v0 + 464);
  v13 = *(v0 + 400);
  v14 = *(v0 + 408);
  v15 = *(v0 + 240);

  v17 = *(v14 + 8);
  v16 = (v14 + 8);
  v163 = v17;
  v17(v12, v13);
  if (v15)
  {
    v18 = *(v0 + 240);
  }

  else
  {
    v18 = [objc_allocWithZone(type metadata accessor for CloseAppIntent()) init];
  }

  v19 = *(v0 + 392);
  v21 = *(v0 + 360);
  v20 = *(v0 + 368);
  v22 = *(v20 + 16);
  v22(v19, *(v0 + 232), v21);
  v23 = (*(v20 + 88))(v19, v21);
  v164 = v18;
  if (v23 == *MEMORY[0x277D5C128])
  {
    OUTLINED_FUNCTION_17_4();
    v24 = *(v0 + 240);
    (*(v25 + 96))(v16);
    v26 = OUTLINED_FUNCTION_9_8();
    v27(v26);
    v28 = OUTLINED_FUNCTION_7_8();
    v29(v28);
    v30 = v24;
    v31 = sub_26618C690();
    v32 = sub_26618CAA0();
    v33 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_24_0();
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2660B7000, v31, v32, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from NLv3IntentOnly parse", v35, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v36 = *(v0 + 456);
    v157 = *(v0 + 448);
    v37 = *(v0 + 400);
    v38 = *(v0 + 344);
    v39 = *(v0 + 352);
    v41 = *(v0 + 328);
    v40 = *(v0 + 336);
    v42 = *(v0 + 248);

    v163(v36, v37);
    (*(v38 + 16))(v41, v39, v40);
    v43 = __swift_project_boxed_opaque_existential_1((v42 + 16), *(v42 + 40));
    sub_266107968(v41, v43, v164);
    v162(v157, v160, v37);
    v44 = v164;
    v45 = sub_26618C690();
    v46 = sub_26618CAD0();

    if (os_log_type_enabled(v45, v46))
    {
      OUTLINED_FUNCTION_19_5();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v44;
      *v48 = v44;
      v49 = v44;
      _os_log_impl(&dword_2660B7000, v45, v46, "Finished creating intent from parse: %@", v47, 0xCu);
      sub_2660C8040(v48, &qword_28005C1F8, &unk_266190550);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v51 = *(v0 + 344);
    v50 = *(v0 + 352);
    v53 = *(v0 + 328);
    v52 = *(v0 + 336);

    v54 = OUTLINED_FUNCTION_8_10();
    v55(v54);
    sub_2660DD7D0(v53);
    (*(v51 + 8))(v50, v52);
    goto LABEL_52;
  }

  if (v23 == *MEMORY[0x277D5C150])
  {
    v56 = *(v0 + 392);
    v57 = *(v0 + 288);
    v58 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 240);
    (*(*(v0 + 368) + 96))(v56, *(v0 + 360));
    (*(v57 + 32))(v58, v56, v59);
    v61 = v60;
    v62 = [v18 application];
    if (!v62)
    {
      type metadata accessor for Application();
      v63 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v62 = sub_2661038FC(0, 0, 0, 0xE000000000000000);
      [v18 setApplication_];
    }

    v64 = [v18 application];
    if (!v64)
    {
LABEL_42:
      v119 = [v18 application];
      if (!v119)
      {
LABEL_51:
        (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
        goto LABEL_52;
      }

      v120 = v119;
      v121 = sub_26618B7E0();
      if (v121)
      {
        sub_266158220(0x656D614E707061, 0xE700000000000000, v121, (v0 + 168));

        if (*(v0 + 192))
        {
          if (swift_dynamicCast())
          {
            v122 = sub_26618C8A0();

LABEL_50:
            [v120 setName_];

            goto LABEL_51;
          }

LABEL_49:
          v122 = 0;
          goto LABEL_50;
        }
      }

      else
      {
        *(v0 + 184) = 0u;
        *(v0 + 168) = 0u;
      }

      sub_2660C8040(v0 + 168, &qword_28005C0A8, qword_26618FAE0);
      goto LABEL_49;
    }

    v65 = v64;
    v66 = sub_26618B7E0();
    if (v66)
    {
      sub_266158220(0x746E656449707061, 0xED00007265696669, v66, (v0 + 136));

      if (*(v0 + 160))
      {
        if (swift_dynamicCast())
        {
          v67 = sub_26618C8A0();

LABEL_41:
          [v65 setAppId_];

          goto LABEL_42;
        }

LABEL_40:
        v67 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      *(v0 + 152) = 0u;
      *(v0 + 136) = 0u;
    }

    sub_2660C8040(v0 + 136, &qword_28005C0A8, qword_26618FAE0);
    goto LABEL_40;
  }

  if (v23 == *MEMORY[0x277D5C140])
  {
    OUTLINED_FUNCTION_17_4();
    v68 = OUTLINED_FUNCTION_12_6();
    v69(v68);
    v70 = OUTLINED_FUNCTION_9_8();
    v71(v70);
    v72 = OUTLINED_FUNCTION_7_8();
    v73(v72);
    v74 = v5;
    v75 = sub_26618C690();
    v76 = sub_26618CAA0();
    if (os_log_type_enabled(v75, v76))
    {
      OUTLINED_FUNCTION_24_0();
      v77 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_2(v77);
      OUTLINED_FUNCTION_83(&dword_2660B7000, v78, v79, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from Pegasus Result parse");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v81 = *(v0 + 264);
    v80 = *(v0 + 272);
    v82 = *(v0 + 256);

    v83 = OUTLINED_FUNCTION_8_10();
    v84(v83);
    *(v0 + 80) = v82;
    *(v0 + 88) = &off_2877CAAC8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    (*(v81 + 16))(boxed_opaque_existential_0, v80, v82);
    sub_2660FCB2C((v0 + 56), v164);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    v86 = (v0 + 56);
LABEL_34:
    __swift_destroy_boxed_opaque_existential_1(v86);
LABEL_52:
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_10_6();

    OUTLINED_FUNCTION_54();

    return v123(v164);
  }

  if (v23 == *MEMORY[0x277D5C148])
  {
    OUTLINED_FUNCTION_17_4();
    v87 = OUTLINED_FUNCTION_12_6();
    v88(v87);
    v89 = *v16;
    v90 = OUTLINED_FUNCTION_7_8();
    v91(v90);
    v92 = v5;
    v93 = sub_26618C690();
    v94 = sub_26618CAA0();
    if (os_log_type_enabled(v93, v94))
    {
      OUTLINED_FUNCTION_24_0();
      v95 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_2(v95);
      _os_log_impl(&dword_2660B7000, v93, v94, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from Pommes Response parse", v21, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v96 = *(v0 + 424);
    v97 = *(v0 + 400);

    v163(v96, v97);
    *(v0 + 40) = sub_26618C430();
    *(v0 + 48) = &off_2877CAAD8;
    *(v0 + 16) = v89;
    v98 = v89;
    sub_2660FCB2C((v0 + 16), v18);

    v86 = (v0 + 16);
    goto LABEL_34;
  }

  if (v23 == *MEMORY[0x277D5C160])
  {
    OUTLINED_FUNCTION_17_4();
    v99 = OUTLINED_FUNCTION_12_6();
    v100(v99);
    v101 = OUTLINED_FUNCTION_9_8();
    v102(v101);
    v103 = OUTLINED_FUNCTION_7_8();
    v104(v103);
    v105 = v5;
    v106 = sub_26618C690();
    v107 = sub_26618CAA0();
    if (os_log_type_enabled(v106, v107))
    {
      OUTLINED_FUNCTION_24_0();
      v108 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_2(v108);
      OUTLINED_FUNCTION_83(&dword_2660B7000, v109, v110, "CloseAppFlowStrategy.makeIntentFromParse() Creating intent from USO parse");
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    v112 = *(v0 + 312);
    v111 = *(v0 + 320);
    v113 = *(v0 + 304);

    v114 = OUTLINED_FUNCTION_8_10();
    v115(v114);
    *(v0 + 120) = v113;
    *(v0 + 128) = &off_2877CAAB8;
    v116 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
    (*(v112 + 16))(v116, v111, v113);
    sub_2660FCB2C((v0 + 96), v164);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    v86 = (v0 + 96);
    goto LABEL_34;
  }

  v124 = qword_2814B2C38;
  v125 = *(v0 + 240);
  if (v124 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_2814B2C38);
  }

  v126 = *(v0 + 416);
  v127 = *(v0 + 400);
  v128 = *(v0 + 384);
  v129 = *(v0 + 360);
  v130 = *(v0 + 232);
  v131 = __swift_project_value_buffer(v127, qword_2814B4A80);
  v162(v126, v131, v127);
  v22(v128, v130, v129);
  v132 = sub_26618C690();
  v133 = sub_26618CAB0();
  v134 = os_log_type_enabled(v132, v133);
  v135 = *(v0 + 416);
  v136 = *(v0 + 400);
  v137 = *(v0 + 384);
  if (v134)
  {
    v161 = *(v0 + 416);
    v158 = v133;
    v138 = *(v0 + 368);
    v139 = *(v0 + 376);
    v140 = *(v0 + 360);
    OUTLINED_FUNCTION_19_5();
    v159 = v136;
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v165 = v142;
    *v141 = 136315138;
    v22(v139, v137, v140);
    v143 = sub_266145588(v139);
    v145 = v144;
    v146 = v137;
    v147 = *(v138 + 8);
    v147(v146, v140);
    v148 = sub_266103A98(v143, v145, &v165);

    *(v141 + 4) = v148;
    _os_log_impl(&dword_2660B7000, v132, v158, "Unable to process parse: %s", v141, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v142);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();

    v149 = v161;
    v150 = v159;
  }

  else
  {
    v152 = *(v0 + 360);
    v151 = *(v0 + 368);

    v153 = v137;
    v147 = *(v151 + 8);
    v147(v153, v152);
    v149 = v135;
    v150 = v136;
  }

  v163(v149, v150);
  v154 = *(v0 + 392);
  v155 = *(v0 + 360);
  sub_2660D3004();
  swift_allocError();
  *v156 = 0;
  swift_willThrow();

  v147(v154, v155);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_10_6();

  v117 = *(v0 + 8);

  return v117();
}

void *sub_2660FCB2C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_26618C6B0();
  OUTLINED_FUNCTION_2_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_266106FB4(v19, v20, a2);
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v21 = __swift_project_value_buffer(v6, qword_2814B4A98);
    (*(v8 + 16))(v15, v21, v6);

    v22 = sub_26618C690();
    v23 = sub_26618CAD0();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_19_5();
      v24 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v24 = 136315138;
      v41 = v19;
      sub_26618C0D0();

      v25 = sub_26618C8D0();
      v40 = v6;
      v27 = v8;
      v28 = sub_266103A98(v25, v26, &v42);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2660B7000, v22, v23, "CloseAppFlowStrategy.makeIntentFromParse() Finished creating intent from USO task: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();

      (*(v27 + 8))(v15, v40);
    }

    else
    {

      (*(v8 + 8))(v15, v6);
    }

    v37 = a2;
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v29 = __swift_project_value_buffer(v6, qword_2814B4A98);
    v30 = v8;
    (*(v8 + 16))(v12, v29, v6);
    v31 = sub_26618C690();
    v32 = sub_26618CAB0();
    v33 = OUTLINED_FUNCTION_21_6();
    if (os_log_type_enabled(v33, v34))
    {
      OUTLINED_FUNCTION_24_0();
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2660B7000, v31, v32, "CloseAppFlowStrategy.makeIntentFromParse() No tasks found in input", v35, 2u);
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x26677CC30]();
    }

    (*(v30 + 8))(v12, v6);
    sub_2660D3004();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_2660FCF0C()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_26618B070();
  v0[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_8_2();
  v5 = sub_26618C6B0();
  v0[7] = v5;
  OUTLINED_FUNCTION_0_4(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_8_2();

  return MEMORY[0x2822009F8](sub_2660FD004, 0, 0);
}

uint64_t sub_2660FD004()
{
  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = __swift_project_value_buffer(v3, qword_2814B4A98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAD0();
  v7 = OUTLINED_FUNCTION_21_6();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_24_0();
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2660B7000, v5, v6, "CloseAppFlowStrategy.makeIntentExecutionBehavior", v9, 2u);
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x26677CC30]();
  }

  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  (*(v11 + 8))(v10, v12);
  sub_26618B0A0();
  v13 = qword_28005BC50;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = v0[5];
  v14 = v0[6];
  v17 = v0[3];
  v16 = v0[4];
  v18 = qword_28005D180;
  type metadata accessor for CloseAppIntent();
  v19 = v18;
  v20 = v17;
  sub_26618B060();
  v21 = sub_26618B090();
  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_54();

  return v22(v21);
}

uint64_t sub_2660FD218()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2660FD298()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660FD340;

  return sub_2660FBA94();
}

uint64_t sub_2660FD340()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;

  OUTLINED_FUNCTION_54();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2660FD430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CloseAppFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_2660FD47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2660FDC04;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_2660FD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CloseAppFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_2660FD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CloseAppFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2660F44FC;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_2660FD6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for CloseAppFlowStrategy();
  *v10 = v5;
  v10[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_2660FD7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CloseAppFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2660FDC04;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2660FD880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for CloseAppFlowStrategy();
  *v12 = v6;
  v12[1] = sub_2660FDC04;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_2660FD95C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660FD9F8;

  return sub_2660FCF0C();
}

uint64_t sub_2660FD9F8()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v4 = v3;

  OUTLINED_FUNCTION_54();

  return v5(v2);
}

uint64_t sub_2660FDBBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_2660FDCC0()
{
  if (qword_28005BC50 != -1)
  {
    swift_once();
  }

  v1 = qword_28005D180;
  qword_28005D188 = qword_28005D180;

  return v1;
}

uint64_t sub_2660FDD24()
{
  OUTLINED_FUNCTION_18();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = sub_26618C6B0();
  v1[18] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_8_2();
  sub_26618B1E0();
  v1[21] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618B6A0();
  v1[22] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[23] = v7;
  v1[24] = OUTLINED_FUNCTION_8_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660FDE80()
{
  v1 = v0[26];
  v2 = sub_26618B440();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3B8, &qword_2661910F8);
  v3 = sub_26618B5F0();
  v4 = [v3 application];

  if (v4)
  {
    v6 = v0[25];
    v5 = v0[26];
    sub_26618B430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26618F7E0;
    *(inited + 32) = v4;
    v8 = v4;
    sub_26614AC6C();
    swift_setDeallocating();
    sub_2661242E4();
    sub_26618B390();

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v2);
    sub_2660FFEE8(v6, v5);
  }

  v9 = sub_26618B5E0();
  v10 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  v11 = *&v9[v10];

  if (v11 == 100)
  {
    sub_2660FFE84(v0[17] + 56, (v0 + 2));
    v12 = sub_26618B5F0();
    v13 = [v12 application];

    if (v13 && (v14 = sub_26610410C(v13), v15))
    {
      v16 = v14;
      v17 = v15;
    }

    else
    {

      v16 = 0;
      v17 = 0xE000000000000000;
    }

    v0[27] = v17;
    v36 = swift_task_alloc();
    v0[28] = v36;
    *v36 = v0;
    v36[1] = sub_2660FE380;

    return sub_2660BFAD0(v16, v17);
  }

  else
  {
    if (qword_2814B2C40 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
    }

    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[18];
    v21 = __swift_project_value_buffer(v20, qword_2814B4A98);
    (*(v19 + 16))(v18, v21, v20);
    v22 = sub_26618C690();
    v23 = sub_26618CAA0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2660B7000, v22, v23, "CloseAppHandleIntentStrategy.makeIntentHandledResponse() called", v24, 2u);
      MEMORY[0x26677CC30](v24, -1, -1);
    }

    v25 = v0[25];
    v37 = v0[26];
    v27 = v0[19];
    v26 = v0[20];
    v28 = v0[17];
    v29 = v0[18];
    v30 = v0[15];

    (*(v27 + 8))(v26, v29);
    __swift_project_boxed_opaque_existential_1((v28 + 136), *(v28 + 160));
    sub_26618B0D0();
    sub_26618B0C0();
    sub_26618B050();

    __swift_project_boxed_opaque_existential_1((v28 + 136), *(v28 + 160));
    sub_26618B0B0();
    sub_26618B050();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_26618F7E0;
    *(v31 + 32) = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
    sub_2660FFDAC(v37, v25);
    v32 = sub_26618B870();
    v33 = MEMORY[0x277D5C1D8];
    v30[3] = v32;
    v30[4] = v33;
    __swift_allocate_boxed_opaque_existential_0(v30);
    sub_26618B850();
    OUTLINED_FUNCTION_8_11();

    OUTLINED_FUNCTION_5_3();

    return v34();
  }
}

uint64_t sub_2660FE380()
{
  OUTLINED_FUNCTION_19();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 232) = v0;

  if (v0)
  {
    sub_2660D3208(v4 + 16);

    v6 = sub_2660FE7E0;
  }

  else
  {
    *(v4 + 240) = v3;
    sub_2660D3208(v4 + 16);

    v6 = sub_2660FE4D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2660FE4D4()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[17];
  sub_26618B1B0();
  *(swift_task_alloc() + 16) = v2;
  sub_26618B620();

  __swift_project_boxed_opaque_existential_1((v3 + 176), *(v3 + 200));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v4 = swift_allocObject();
  v0[31] = v4;
  *(v4 + 16) = xmmword_26618F7E0;
  *(v4 + 32) = v1;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_2660FE628;
  OUTLINED_FUNCTION_13_6();

  return MEMORY[0x2821BB488](v7, v8, v9, v10, v11);
}

uint64_t sub_2660FE628()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660FE728()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_8_11();

  OUTLINED_FUNCTION_5_3();

  return v4();
}

uint64_t sub_2660FE7E0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_8_11();

  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_2660FE870(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2660FFDAC(a2, &v6 - v4);
  return sub_26618B660();
}

uint64_t sub_2660FE900()
{
  OUTLINED_FUNCTION_18();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  sub_26618B1E0();
  v1[9] = OUTLINED_FUNCTION_8_2();
  v4 = sub_26618B6A0();
  v1[10] = v4;
  OUTLINED_FUNCTION_0_4(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_8_2();
  v6 = sub_26618C6B0();
  v1[13] = v6;
  OUTLINED_FUNCTION_0_4(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_8_2();
  v8 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2660FEA18()
{
  v23 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3B8, &qword_2661910F8);
  v1 = sub_26618B5E0();
  v2 = OBJC_IVAR___CloseAppIntentResponse_code;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (qword_2814B2C40 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_2814B2C40);
  }

  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  v7 = __swift_project_value_buffer(v6, qword_2814B4A98);
  (*(v4 + 16))(v5, v7, v6);
  v8 = sub_26618C690();
  v9 = sub_26618CAA0();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[13];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136315138;
    v0[5] = v3;
    v16 = sub_26618C8D0();
    v18 = sub_266103A98(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2660B7000, v8, v9, "CloseAppHandleIntentStrategy.makeFailureHandlingIntentResponse() called with code %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x26677CC30](v15, -1, -1);
    MEMORY[0x26677CC30](v14, -1, -1);
  }

  (*(v11 + 8))(v12, v13);
  v19 = sub_26618B5F0();
  sub_266145AE0();

  v20 = swift_task_alloc();
  v0[16] = v20;
  *v20 = v0;
  v20[1] = sub_2660FEC90;

  return sub_2660C02E8();
}

uint64_t sub_2660FEC90(uint64_t a1)
{
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_1();
  *v7 = v6;

  if (v1)
  {

    OUTLINED_FUNCTION_5_3();

    return v8();
  }

  else
  {
    *(v5 + 136) = a1;
    v10 = OUTLINED_FUNCTION_3_6();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_2660FEDDC()
{
  OUTLINED_FUNCTION_19();
  v1 = v0[17];
  v2 = v0[8];
  sub_26618B1B0();
  sub_26618B620();
  __swift_project_boxed_opaque_existential_1((v2 + 176), *(v2 + 200));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C090, &qword_266190210);
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = xmmword_26618F7E0;
  *(v3 + 32) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_2660FEF10;
  OUTLINED_FUNCTION_13_6();

  return MEMORY[0x2821BB488](v6, v7, v8, v9, v10);
}

uint64_t sub_2660FEF10()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2660FF010()
{
  OUTLINED_FUNCTION_19();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_5_3();

  return v4();
}

void *sub_2660FF0B8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_2660D3208((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  return v0;
}

uint64_t sub_2660FF0F8()
{
  sub_2660FF0B8();

  return MEMORY[0x2821FE8D8](v0, 216, 7);
}

uint64_t sub_2660FF154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_2660FF218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_2660FF2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_2660FF3A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660FDD24();
}

uint64_t sub_2660FF44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D2E00;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_2660FF510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for CloseAppHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2660D3260;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_2660FF5D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2660D3260;

  return sub_2660FE900();
}

uint64_t sub_2660FF680(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2660FF734;

  return sub_2660FF898(a1, a2);
}

uint64_t sub_2660FF734()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5_7();

  return v4(v3);
}

unint64_t sub_2660FF818(uint64_t a1)
{
  result = sub_2660FF840();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2660FF840()
{
  result = qword_28005C3B0;
  if (!qword_28005C3B0)
  {
    type metadata accessor for CloseAppHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C3B0);
  }

  return result;
}

uint64_t sub_2660FF898(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_26618B070();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2660FF958, 0, 0);
}

uint64_t sub_2660FF958()
{
  sub_26618B0A0();
  v1 = qword_28005BC58;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = qword_28005D188;
  type metadata accessor for CloseAppIntent();
  v4 = v3;
  OUTLINED_FUNCTION_4_11(v2);
  sub_26618B090();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);

  v7 = OUTLINED_FUNCTION_5_7();

  return v8(v7);
}

uint64_t sub_2660FFA5C()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_26618B070();
  v0[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_8_2();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660FFB00()
{
  sub_26618B0A0();
  v1 = qword_28005BC60;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = qword_28005D190;
  type metadata accessor for DeepLaunchIntent();
  v4 = v3;
  OUTLINED_FUNCTION_4_11(v2);
  sub_26618B090();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);

  v7 = OUTLINED_FUNCTION_5_7();

  return v8(v7);
}

uint64_t sub_2660FFC04()
{
  OUTLINED_FUNCTION_18();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_26618B070();
  v0[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_8_2();
  v5 = OUTLINED_FUNCTION_3_6();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2660FFCA8()
{
  sub_26618B0A0();
  v1 = qword_28005BC68;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v3 = qword_28005D198;
  type metadata accessor for DeepLaunchIntent();
  v4 = v3;
  OUTLINED_FUNCTION_4_11(v2);
  sub_26618B090();
  v5 = OUTLINED_FUNCTION_6_8();
  v6(v5);

  v7 = OUTLINED_FUNCTION_5_7();

  return v8(v7);
}

uint64_t sub_2660FFDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2660FFE1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2660FFEE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C098, &unk_26618F950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_11(uint64_t a1)
{

  return sub_26618B060();
}

uint64_t OUTLINED_FUNCTION_8_11()
{
  v2 = *(v0 + 208);

  return sub_2660FFE1C(v2);
}

uint64_t sub_266100004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  v4 = MEMORY[0x28223BE20](v3);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 23899;
  }

  OUTLINED_FUNCTION_12_7();
  v31 = v9;
  v32 = v10;
  v30 = MEMORY[0x277D84F90];
  v12 = v11;
  sub_26612A450(0, v8, 0);
  v13 = v30;
  v14 = *(v12 + 16);
  v15 = (a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
  v27 = *(v12 + 72);
  v28 = v14;
  v26 = (v12 + 8);
  do
  {
    v16 = v28;
    v28(v7, v15, v3);
    v16(v29, v7, v3);
    v17 = sub_26618C8D0();
    v19 = v18;
    (*v26)(v7, v3);
    v30 = v13;
    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_26612A450(v20 > 1, v21 + 1, 1);
      v13 = v30;
    }

    *(v13 + 16) = v21 + 1;
    v22 = v13 + 16 * v21;
    *(v22 + 32) = v17;
    *(v22 + 40) = v19;
    v15 += v27;
    --v8;
  }

  while (v8);
  v30 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  sub_266104320();
  OUTLINED_FUNCTION_18_7();

  v23 = OUTLINED_FUNCTION_12_1();
  MEMORY[0x26677BCF0](v23);

  MEMORY[0x26677BCF0](23818, 0xE200000000000000);
  return v31;
}

void sub_2661002AC(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    if (!sub_26618CCD0())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  OUTLINED_FUNCTION_12_7();
  v4 = sub_2661005E8(a1);
  if (!v4)
  {
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
    sub_266104320();
    OUTLINED_FUNCTION_18_7();

    v15 = OUTLINED_FUNCTION_12_1();
    MEMORY[0x26677BCF0](v15);

    MEMORY[0x26677BCF0](23818, 0xE200000000000000);
    return;
  }

  v5 = v4;
  v16 = a2;
  v17 = MEMORY[0x277D84F90];
  sub_26612A450(0, v4 & ~(v4 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = a2;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26677C150](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v7(0);
      v9 = sub_26618C8D0();
      v11 = v10;
      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26612A450(v12 > 1, v13 + 1, 1);
        v7 = v16;
      }

      ++v6;
      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v5 != v6);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_26610047C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 23899;
  }

  OUTLINED_FUNCTION_12_7();
  v16 = v3;
  v15 = MEMORY[0x277D84F90];
  sub_26612A450(0, v1, 0);
  v4 = a1 + 40;
  do
  {

    v5 = sub_26618C8D0();
    v7 = v6;
    v9 = *(v15 + 16);
    v8 = *(v15 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_26612A450(v8 > 1, v9 + 1, 1);
    }

    *(v15 + 16) = v9 + 1;
    v10 = v15 + 16 * v9;
    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    v4 += 16;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005BD80, &qword_26618E528);
  sub_266104320();
  v11 = OUTLINED_FUNCTION_18_7();
  v13 = v12;

  MEMORY[0x26677BCF0](v11, v13);

  MEMORY[0x26677BCF0](23818, 0xE200000000000000);
  return v16;
}

uint64_t sub_2661005E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26618CCD0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id CloseAppIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloseAppIntentHandler.init()()
{
  sub_26618B0E0();
  if (qword_2814B4A70 != -1)
  {
    swift_once();
  }

  v0 = static InstalledAppProvider.shared;
  v19 = type metadata accessor for InstalledAppProvider();
  v20 = &protocol witness table for InstalledAppProvider;
  *&v18 = v0;
  v16 = &type metadata for CoreDuetAppSelectionResolver;
  v17 = &off_2877CC198;
  v1 = swift_allocObject();
  *&v15 = v1;
  *(v1 + 40) = &type metadata for CoreDuetKnowledgeStore;
  *(v1 + 48) = &off_2877CC1C8;
  v24 = &type metadata for AppsSearcher;
  v25 = &off_2877CC0A0;
  v2 = swift_allocObject();
  v23[0] = v2;
  v14[20] = 2;
  sub_2660C5864(&v18, v14);
  sub_2660C5864(&v18, v13);
  v3 = objc_opt_self();
  swift_retain_n();
  sub_266104130([v3 sharedPreferences], &selRef_languageCode);
  v14[8] = type metadata accessor for RegexAppsResolver(0);
  v14[9] = &off_2877CC718;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v14[5]);
  sub_2660C5864(v13, boxed_opaque_existential_0);
  sub_26618A600();
  __swift_destroy_boxed_opaque_existential_1(v13);
  if (v22)
  {
    v14[13] = &type metadata for AceAppResolver;
    v14[14] = &off_2877CC000;
    v5 = swift_allocObject();
    v14[10] = v5;
    sub_2660B9EB8(&v21, v5 + 56);
    sub_2660B9EB8(&v18, v5 + 16);
    *(v5 + 96) = 2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v18);
    sub_2660C8040(&v21, &qword_28005C3C0, &qword_266191100);
    memset(&v14[10], 0, 40);
  }

  sub_2660B9EB8(&v15, &v14[15]);
  memcpy((v2 + 16), v14, 0xA8uLL);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_26610419C(v8, v0);
  __swift_destroy_boxed_opaque_existential_1(v23);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t CloseAppIntentHandler.resolveApplication(for:)()
{
  OUTLINED_FUNCTION_18();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_26618C6B0();
  v1[12] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[13] = v4;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266100AD8()
{
  v177 = v0;
  v1 = v0;
  v2 = sub_266145AE0();
  v3 = *(v0 + 80);
  if (v2)
  {
    type metadata accessor for Application();
    v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    OUTLINED_FUNCTION_8();
    v8 = sub_2661038FC(v5, v6, v7, 0xE000000000000000);
    v9 = [v3 application];
    if (v9 && (sub_266104130(v9, &selRef_appId), v10))
    {
      sub_26618C8A0();
      OUTLINED_FUNCTION_30_3();
    }

    else
    {
      v4 = 0;
    }

    v29 = *(v0 + 80);
    [v8 setAppId_];

    v30 = [v29 application];
    if (v30 && (sub_266104130(v30, &selRef_name), v31))
    {
      sub_26618C8A0();
      OUTLINED_FUNCTION_30_3();
    }

    else
    {
      v4 = 0;
    }

    [v8 setName_];

    OUTLINED_FUNCTION_39_1();
    if (!v17)
    {
      goto LABEL_104;
    }

    goto LABEL_18;
  }

  v11 = [v3 application];
  v167 = v0;
  if (v11)
  {
    v12 = v11;
    v13 = sub_2660C9D30(v11);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      OUTLINED_FUNCTION_39_1();
      if (!v17)
      {
        OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
      }

      __swift_project_value_buffer(*(v0 + 96), qword_2814B4AB0);
      v18 = OUTLINED_FUNCTION_26_3();
      v19(v18);

      v20 = sub_26618C690();
      v21 = sub_26618CAD0();

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 168);
      v25 = *(v0 + 96);
      v24 = *(v0 + 104);
      if (v22)
      {
        v26 = OUTLINED_FUNCTION_49_0();
        v27 = OUTLINED_FUNCTION_45_1();
        v176 = v27;
        *v26 = 136315138;
        v28 = sub_266103A98(v15, v16, &v176);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_2660B7000, v20, v21, "Application resolved in previous turn, succeeding with %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      else
      {
      }

      (*(v24 + 8))(v23, v25);
      type metadata accessor for CloseAppApplicationResolutionResult();
      v121 = OUTLINED_FUNCTION_7_9();
      static ApplicationResolutionResult.success(with:)(v121);

      goto LABEL_73;
    }
  }

  v44 = sub_2661040AC(*(v0 + 80));
  if (!v44)
  {
    goto LABEL_77;
  }

  v45 = v44;
  v174 = sub_2661005E8(v44);
  if (!v174)
  {

LABEL_77:
    OUTLINED_FUNCTION_39_1();
    if (!v17)
    {
      OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
    }

    v124 = *(v0 + 144);
    v126 = *(v0 + 96);
    v125 = *(v1 + 104);
    v127 = __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
    *(v1 + 184) = v127;
    v128 = *(v125 + 16);
    *(v1 + 192) = v128;
    *(v1 + 200) = (v125 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v128(v124, v127, v126);
    v129 = sub_26618C690();
    v130 = sub_26618CAA0();
    if (OUTLINED_FUNCTION_15_2(v130))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_40_2(&dword_2660B7000, v131, v132, "No suggested applications found, falling back to appSearcher");
      OUTLINED_FUNCTION_7_2();
    }

    v133 = *(v1 + 144);
    v134 = *(v1 + 96);
    v135 = *(v1 + 104);
    v136 = *(v1 + 80);
    v137 = *(v1 + 88);

    v138 = *(v135 + 8);
    *(v1 + 208) = v138;
    v138(v133, v134);
    sub_2660C5864(v137 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_appsSearcher, v1 + 16);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v139 = [v136 requestedApplication];
    if (v139)
    {
      sub_266104130(v139, &selRef_name);
      v141 = v140;
    }

    else
    {
      v141 = 0;
    }

    *(v1 + 216) = v141;
    v142 = [*(v1 + 80) requestedApplication];
    if (v142)
    {
      v143 = sub_266104130(v142, &selRef_appId);
      v145 = v144;
    }

    else
    {
      v143 = 0;
      v145 = 0;
    }

    *(v1 + 224) = v145;
    v146 = swift_task_alloc();
    *(v1 + 232) = v146;
    *v146 = v1;
    OUTLINED_FUNCTION_38_1(v146);
    v147 = OUTLINED_FUNCTION_12_1();

    return sub_2661515C4(v147, v148, v143, v145, 0);
  }

  OUTLINED_FUNCTION_39_1();
  if (!v17)
  {
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  __swift_project_value_buffer(*(v0 + 96), qword_2814B4AB0);
  v46 = OUTLINED_FUNCTION_26_3();
  v168 = v47;
  v173 = v48;
  v48(v46);

  v49 = sub_26618C690();
  v50 = sub_26618CAA0();

  v51 = os_log_type_enabled(v49, v50);
  v8 = *(v0 + 160);
  v52 = *(v0 + 96);
  v53 = *(v0 + 104);
  if (v51)
  {
    v54 = OUTLINED_FUNCTION_49_0();
    v171 = v53;
    v55 = OUTLINED_FUNCTION_45_1();
    v176 = v55;
    *v54 = 136315138;
    OUTLINED_FUNCTION_1_11();
    sub_2661002AC(v45, v56);
    v59 = sub_266103A98(v57, v58, &v176);

    *(v54 + 4) = v59;
    OUTLINED_FUNCTION_41_1(&dword_2660B7000, v60, v61, "Suggested applications: %s");
    __swift_destroy_boxed_opaque_existential_1(v55);
    v53 = v171;
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_9_9();
  }

  v172 = *(v53 + 8);
  (v172)(v8, v52);
  v62 = 0;
  v1 = v0;
  v175 = MEMORY[0x277D84F90];
  v165 = (*(v0 + 88) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps);
  v169 = v45 & 0xFFFFFFFFFFFFFF8;
  v170 = v45 & 0xC000000000000001;
  v166 = MEMORY[0x277D84F90];
  v164 = v45;
  while (1)
  {
    if (v174 == v62)
    {

      if (qword_2814B2C48 != -1)
      {
        OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
      }

      v83 = *(v1 + 128);
      v8 = *(v1 + 104);
      __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
      v173(v83);
      v84 = v166;

      v85 = sub_26618C690();
      v86 = sub_26618CAA0();

      if (OUTLINED_FUNCTION_43_1())
      {
        v8 = OUTLINED_FUNCTION_49_0();
        v87 = OUTLINED_FUNCTION_45_1();
        v176 = v87;
        *v8 = 136315138;
        OUTLINED_FUNCTION_1_11();
        sub_2661002AC(v166, v88);
        v91 = sub_266103A98(v89, v90, &v176);

        *(v8 + 1) = v91;
        v84 = v166;
        _os_log_impl(&dword_2660B7000, v85, v86, "Apps before filtering: %s", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v92 = OUTLINED_FUNCTION_25_4();
      v172(v92);
      v93 = *(v167 + 88);
      v176 = MEMORY[0x277D84F90];
      v94 = sub_2661005E8(v84);
      v95 = 0;
      v1 = v93 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps;
      v96 = v84 & 0xC000000000000001;
      v97 = v84 & 0xFFFFFFFFFFFFFF8;
      while (v94 != v95)
      {
        if (v96)
        {
          v98 = MEMORY[0x26677C150](v95, v84);
        }

        else
        {
          if (v95 >= *(v97 + 16))
          {
            goto LABEL_103;
          }

          v98 = *(v84 + 8 * v95 + 32);
        }

        v99 = v98;
        if (__OFADD__(v95, 1))
        {
          goto LABEL_102;
        }

        sub_2660C9D30(v98);
        if (v100)
        {
          v8 = v100;
          __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
          v101 = OUTLINED_FUNCTION_11_0();
          v103 = v102(v101);

          if (v103)
          {
          }

          else
          {
            sub_26618CDE0();
            sub_26618CE10();
            sub_26618CE20();
            sub_26618CDF0();
          }

          v84 = v166;
        }

        else
        {
        }

        ++v95;
      }

      v104 = v176;
      v105 = OUTLINED_FUNCTION_28_4();
      v106(v105);

      v107 = sub_26618C690();
      sub_26618CAA0();

      if (OUTLINED_FUNCTION_43_1())
      {
        v108 = OUTLINED_FUNCTION_49_0();
        v109 = OUTLINED_FUNCTION_45_1();
        v176 = v109;
        *v108 = 136315138;
        OUTLINED_FUNCTION_1_11();
        sub_2661002AC(v104, v110);
        v113 = sub_266103A98(v111, v112, &v176);

        *(v108 + 4) = v113;
        OUTLINED_FUNCTION_81(&dword_2660B7000, v114, v115, "Apps after filtering: %s");
        __swift_destroy_boxed_opaque_existential_1(v109);
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      v116 = OUTLINED_FUNCTION_25_4();
      v172(v116);
      result = sub_2661005E8(v104);
      if (result != 1)
      {
        if (result >= 2)
        {
          type metadata accessor for CloseAppApplicationResolutionResult();
          v162 = OUTLINED_FUNCTION_7_9();
          static ApplicationResolutionResult.disambiguation(with:)(v162);
          OUTLINED_FUNCTION_7_9();
        }

        else
        {
          v149 = *(v167 + 80);

          v150 = [v149 requestedApplication];
          if (v150 && (sub_266104130(v150, &selRef_name), v151) || (v152 = [*(v167 + 80) requestedApplication]) != 0 && (sub_266104130(v152, &selRef_appId), v153))
          {

            v154 = OUTLINED_FUNCTION_28_4();
            v155(v154);
            v156 = sub_26618C690();
            v157 = sub_26618CAB0();
            if (OUTLINED_FUNCTION_15_2(v157))
            {
              *OUTLINED_FUNCTION_6_2() = 0;
              OUTLINED_FUNCTION_40_2(&dword_2660B7000, v158, v159, "No matching apps were found");
              OUTLINED_FUNCTION_7_2();
            }

            v160 = *(v167 + 112);
            v161 = *(v167 + 96);

            (v172)(v160, v161);
            type metadata accessor for CloseAppApplicationResolutionResult();
            static CloseAppApplicationResolutionResult.unsupported(forReason:)(2);
          }

          else
          {
            type metadata accessor for CloseAppApplicationResolutionResult();
            v163 = [swift_getObjCClassFromMetadata() needsValue];
          }
        }

        goto LABEL_73;
      }

      if ((v104 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x26677C150](0, v104);
      }

      else
      {
        if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v118 = *(v104 + 32);
      }

      v119 = v118;

      type metadata accessor for CloseAppApplicationResolutionResult();
      v120 = OUTLINED_FUNCTION_30_3();
      static ApplicationResolutionResult.success(with:)(v120);

      goto LABEL_73;
    }

    if (v170)
    {
      v63 = MEMORY[0x26677C150](v62, v45);
    }

    else
    {
      if (v62 >= *(v169 + 16))
      {
        goto LABEL_101;
      }

      v63 = *(v45 + 8 * v62 + 32);
    }

    v64 = v63;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    sub_2660C9D30(v63);
    if (v65 && (v8 = v65, __swift_project_boxed_opaque_existential_1(v165, v165[3]), v66 = OUTLINED_FUNCTION_11_0(), v68 = v67, v70 = v69(v66), , v70))
    {
      sub_2660C9D3C(v64);
      if (v82)
      {
        sub_26618C8A0();
        OUTLINED_FUNCTION_7_9();
      }

      else
      {
        v68 = 0;
      }

      [v70 setSceneId_];

      MEMORY[0x26677BD40]();
      v8 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26618C9D0();
      }

      sub_26618C9F0();
      v166 = v175;
      ++v62;
    }

    else
    {
      (v173)(*(v1 + 152), v168, *(v1 + 96));
      v71 = v64;
      v72 = sub_26618C690();
      v73 = sub_26618CAA0();

      v74 = os_log_type_enabled(v72, v73);
      v75 = *(v1 + 152);
      v76 = *(v1 + 96);
      if (v74)
      {
        v8 = OUTLINED_FUNCTION_49_0();
        v77 = OUTLINED_FUNCTION_45_1();
        v176 = v77;
        *v8 = 136315138;
        *(v1 + 56) = sub_2660C9D30(v71);
        *(v1 + 64) = v78;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3D8, qword_266192200);
        v79 = sub_26618C8D0();
        v81 = sub_266103A98(v79, v80, &v176);
        v1 = v167;

        *(v8 + 1) = v81;
        _os_log_impl(&dword_2660B7000, v72, v73, "%s is not found in installedApps", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v77);
        v45 = v164;
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_7_2();
      }

      (v172)(v75, v76);
      ++v62;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
LABEL_18:
  __swift_project_value_buffer(*(v1 + 96), qword_2814B4AB0);
  v32 = OUTLINED_FUNCTION_26_3();
  v33(v32);
  v34 = sub_26618C690();
  v35 = sub_26618CAA0();
  if (os_log_type_enabled(v34, v35))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v36, v37, v38, v39, v40, 2u);
    OUTLINED_FUNCTION_7_2();
  }

  v41 = OUTLINED_FUNCTION_11_2();
  v42(v41);
  type metadata accessor for CloseAppApplicationResolutionResult();
  v43 = OUTLINED_FUNCTION_7_9();
  static ApplicationResolutionResult.success(with:)(v43);

LABEL_73:

  v122 = OUTLINED_FUNCTION_5_7();

  return v123(v122);
}

uint64_t sub_2661019B0()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_6_1();
  v5 = v4;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266101ACC()
{
  v65 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[31];
  v61 = v0[26];
  v2 = v0[24];
  if (qword_2814B2C48 != -1)
  {
LABEL_41:
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v3 = v0[16];
  __swift_project_value_buffer(v0[12], qword_2814B4AB0);
  v2(v3);

  v4 = sub_26618C690();
  sub_26618CAA0();

  v63 = v1;
  if (OUTLINED_FUNCTION_43_1())
  {
    v5 = OUTLINED_FUNCTION_49_0();
    v6 = OUTLINED_FUNCTION_45_1();
    v64 = v6;
    *v5 = 136315138;
    OUTLINED_FUNCTION_1_11();
    sub_2661002AC(v1, v7);
    v10 = sub_266103A98(v8, v9, &v64);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_81(&dword_2660B7000, v11, v12, "Apps before filtering: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  v13 = OUTLINED_FUNCTION_25_4();
  v61(v13);
  v62 = v0;
  v14 = v0[11];
  v64 = MEMORY[0x277D84F90];
  v15 = sub_2661005E8(v1);
  v16 = 0;
  v17 = (v14 + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_installedApps);
  v2 = (v1 & 0xC000000000000001);
  v0 = (v1 & 0xFFFFFFFFFFFFFF8);
  while (v15 != v16)
  {
    if (v2)
    {
      v18 = MEMORY[0x26677C150](v16, v1);
    }

    else
    {
      if (v16 >= v0[2])
      {
        goto LABEL_40;
      }

      v18 = *(v1 + 8 * v16 + 32);
    }

    v19 = v18;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = sub_2660C9D30(v18);
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = v17[3];
      v25 = v17[4];
      __swift_project_boxed_opaque_existential_1(v17, v24);
      LOBYTE(v22) = (*(v25 + 40))(v22, v23, 2, v24, v25);

      if (v22)
      {
      }

      else
      {
        sub_26618CDE0();
        sub_26618CE10();
        sub_26618CE20();
        sub_26618CDF0();
      }

      v1 = v63;
    }

    else
    {
    }

    ++v16;
  }

  v26 = v64;
  v27 = OUTLINED_FUNCTION_36_0();
  v28(v27);

  v29 = sub_26618C690();
  sub_26618CAA0();

  v30 = OUTLINED_FUNCTION_43_1();
  v31 = v62[15];
  v32 = v62[12];
  if (v30)
  {
    v33 = OUTLINED_FUNCTION_49_0();
    v34 = OUTLINED_FUNCTION_45_1();
    v64 = v34;
    *v33 = 136315138;
    OUTLINED_FUNCTION_1_11();
    sub_2661002AC(v26, v35);
    v38 = sub_266103A98(v36, v37, &v64);

    *(v33 + 4) = v38;
    OUTLINED_FUNCTION_81(&dword_2660B7000, v39, v40, "Apps after filtering: %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_7_2();
  }

  (v61)(v31, v32);
  result = sub_2661005E8(v26);
  if (result == 1)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v42 = MEMORY[0x26677C150](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v42 = *(v26 + 32);
    }

    v43 = v42;

    type metadata accessor for CloseAppApplicationResolutionResult();
    v44 = OUTLINED_FUNCTION_7_9();
    static ApplicationResolutionResult.success(with:)(v44);
  }

  else if (result >= 2)
  {
    type metadata accessor for CloseAppApplicationResolutionResult();
    v48 = OUTLINED_FUNCTION_30_3();
    static ApplicationResolutionResult.disambiguation(with:)(v48);
    OUTLINED_FUNCTION_30_3();
  }

  else
  {
    v45 = v62[10];

    v46 = [v45 requestedApplication];
    if (v46 && (sub_266104130(v46, &selRef_name), v47) || (v49 = [v62[10] requestedApplication]) != 0 && (sub_266104130(v49, &selRef_appId), v50))
    {

      v51 = OUTLINED_FUNCTION_36_0();
      v52(v51);
      v53 = sub_26618C690();
      v54 = sub_26618CAB0();
      if (OUTLINED_FUNCTION_15_2(v54))
      {
        *OUTLINED_FUNCTION_6_2() = 0;
        OUTLINED_FUNCTION_14_0(&dword_2660B7000, v55, v56, "No matching apps were found");
        OUTLINED_FUNCTION_7_2();
      }

      v57 = OUTLINED_FUNCTION_12_1();
      v61(v57);
      type metadata accessor for CloseAppApplicationResolutionResult();
      static CloseAppApplicationResolutionResult.unsupported(forReason:)(2);
    }

    else
    {
      type metadata accessor for CloseAppApplicationResolutionResult();
      v58 = [swift_getObjCClassFromMetadata() needsValue];
    }
  }

  v59 = OUTLINED_FUNCTION_5_7();

  return v60(v59);
}

uint64_t sub_2661020B8()
{
  v25 = v0;
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[23];
  v4 = v0[17];
  v5 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_26618C690();
  LOBYTE(v4) = sub_26618CAB0();

  if (os_log_type_enabled(v7, v4))
  {
    v8 = v0[30];
    v23 = v0[26];
    v9 = OUTLINED_FUNCTION_49_0();
    v10 = OUTLINED_FUNCTION_45_1();
    v24 = v10;
    *v9 = 136315138;
    v0[9] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C020, &qword_266190120);
    v12 = sub_26618C8D0();
    v14 = sub_266103A98(v12, v13, &v24);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_41_1(&dword_2660B7000, v15, v16, "An error occurred trying to resolve the app: %s");
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_9_9();

    v17 = OUTLINED_FUNCTION_12_1();
    v23(v17);
  }

  else
  {
    v18 = v0[26];

    v19 = OUTLINED_FUNCTION_12_1();
    v18(v19);
  }

  type metadata accessor for CloseAppApplicationResolutionResult();
  static CloseAppApplicationResolutionResult.unsupported(forReason:)(1);

  v20 = OUTLINED_FUNCTION_5_7();

  return v21(v20);
}

void sub_266102300(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v14[2] = MEMORY[0x277D84F90];
  v6 = sub_2661005E8(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v9 = MEMORY[0x26677C150](v7, v4);
    }

    else
    {
      if (v7 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v14[0] = v9;
    v11 = a1(v14);
    if (v3)
    {

      return;
    }

    if (v11)
    {
      sub_26618CDE0();
      sub_26618CE10();
      v4 = v12;
      sub_26618CE20();
      sub_26618CDF0();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_26610249C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_266102560;

  return CloseAppIntentHandler.resolveApplication(for:)();
}

uint64_t sub_266102560()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_6_1();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  v9 = *(v7 + 8);

  return v9();
}

uint64_t CloseAppIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_26618C6B0();
  v0[2] = v1;
  OUTLINED_FUNCTION_0_4(v1);
  v0[3] = v2;
  v0[4] = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_266102760()
{
  OUTLINED_FUNCTION_1_0();
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = __swift_project_value_buffer(v3, qword_2814B4AB0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_26618C690();
  v6 = sub_26618CAA0();
  if (OUTLINED_FUNCTION_15_2(v6))
  {
    *OUTLINED_FUNCTION_6_2() = 0;
    OUTLINED_FUNCTION_14_0(&dword_2660B7000, v7, v8, "Confirm step: success");
    OUTLINED_FUNCTION_7_2();
  }

  v9 = OUTLINED_FUNCTION_12_1();
  v10(v9);
  objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  CloseAppIntentResponse.init(code:userActivity:)(1, 0);
  OUTLINED_FUNCTION_7_9();

  v11 = OUTLINED_FUNCTION_5_7();

  return v12(v11);
}

uint64_t sub_2661028AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2661046AC;

  return CloseAppIntentHandler.confirm(intent:)();
}

uint64_t CloseAppIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_26618C6B0();
  v1[4] = v3;
  OUTLINED_FUNCTION_0_4(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266102A2C()
{
  if (qword_2814B2C48 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2814B2C48);
  }

  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *(v0 + 72) = __swift_project_value_buffer(*(v0 + 32), qword_2814B4AB0);
  v3 = *(v1 + 16);
  *(v0 + 80) = v3;
  *(v0 + 88) = (v1 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v4 = OUTLINED_FUNCTION_11_0();
  v3(v4);
  v5 = v2;
  v6 = sub_26618C690();
  v7 = sub_26618CAA0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 16);
    OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_34_1();
    *v5 = 138412290;
    *(v5 + 1) = v8;
    *v9 = v8;
    v10 = v8;
    _os_log_impl(&dword_2660B7000, v6, v7, "Calling handle with %@", v5, 0xCu);
    sub_2660C8040(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  v11 = *(v0 + 40);

  v12 = *(v11 + 8);
  *(v0 + 96) = v12;
  *(v0 + 104) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = OUTLINED_FUNCTION_11_2();
  v12(v13);
  if (sub_266145AE0())
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider), *(*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider + 24));
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    OUTLINED_FUNCTION_38_1(v14);
    OUTLINED_FUNCTION_42_2();

    return sub_266153094();
  }

  v17 = [*(v0 + 16) application];
  if (v17)
  {
    sub_266104130(v17, &selRef_sceneId);
    *(v0 + 128) = v18;
    if (v18)
    {
      __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider), *(*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider + 24));
      v19 = swift_task_alloc();
      *(v0 + 136) = v19;
      *v19 = v0;
      OUTLINED_FUNCTION_38_1(v19);
      OUTLINED_FUNCTION_42_2();

      return sub_26615313C();
    }
  }

  v21 = [*(v0 + 16) application];
  if (!v21 || (v22 = sub_266104130(v21, &selRef_appId), (*(v0 + 152) = v23) == 0))
  {
    v29 = OUTLINED_FUNCTION_11_0();
    v3(v29);
    v30 = sub_26618C690();
    v31 = sub_26618CAB0();
    if (OUTLINED_FUNCTION_15_2(v31))
    {
      *OUTLINED_FUNCTION_6_2() = 0;
      OUTLINED_FUNCTION_14_0(&dword_2660B7000, v32, v33, "Missing required information to handle intent");
      OUTLINED_FUNCTION_7_2();
    }

    v34 = OUTLINED_FUNCTION_12_1();
    v12(v34);
    v35 = 5;
LABEL_24:
    v36 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
    CloseAppIntentResponse.init(code:userActivity:)(v35, 0);
    OUTLINED_FUNCTION_23_2();

    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_42_2();

    __asm { BRAA            X2, X16 }
  }

  v24 = v22;
  v25 = v23;
  v26 = (*(v0 + 24) + OBJC_IVAR____TtC20SiriAppLaunchIntents21CloseAppIntentHandler_terminationProvider);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  if ((sub_266152C70(v24, v25) & 1) == 0)
  {

    v35 = 100;
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  v27 = swift_task_alloc();
  *(v0 + 160) = v27;
  *v27 = v0;
  OUTLINED_FUNCTION_38_1(v27);
  OUTLINED_FUNCTION_42_2();

  return sub_266152E98();
}

uint64_t sub_266102E94()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266102F90()
{
  OUTLINED_FUNCTION_1_0();
  v0 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_5_7();

  return v2(v1);
}

uint64_t sub_26610300C()
{
  v3 = *(v0 + 120);
  v4 = OUTLINED_FUNCTION_5_8();
  v5(v4);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_31_3();
  v17 = OUTLINED_FUNCTION_11_2();
  v2(v17);
  v18 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_35_1();

  v19 = OUTLINED_FUNCTION_5_7();

  return v20(v19);
}

uint64_t sub_26610315C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266103258()
{
  OUTLINED_FUNCTION_1_0();

  v0 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_5_7();

  return v2(v1);
}

uint64_t sub_2661032DC()
{

  v3 = *(v0 + 144);
  v4 = OUTLINED_FUNCTION_5_8();
  v5(v4);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_31_3();
  v17 = OUTLINED_FUNCTION_11_2();
  v2(v17);
  v18 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_35_1();

  v19 = OUTLINED_FUNCTION_5_7();

  return v20(v19);
}

uint64_t sub_266103434()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266103530()
{
  OUTLINED_FUNCTION_1_0();

  v0 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_23_2();

  v1 = OUTLINED_FUNCTION_5_7();

  return v2(v1);
}

uint64_t sub_2661035B4()
{

  v3 = *(v0 + 168);
  v4 = OUTLINED_FUNCTION_5_8();
  v5(v4);
  v6 = v3;
  v7 = sub_26618C690();
  v8 = sub_26618CAB0();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_49_0();
    v9 = OUTLINED_FUNCTION_34_1();
    *v1 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_9_6();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_2660C8040(v9, &qword_28005C1F8, &unk_266190550);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_7_2();
  }

  OUTLINED_FUNCTION_31_3();
  v17 = OUTLINED_FUNCTION_11_2();
  v2(v17);
  v18 = objc_allocWithZone(type metadata accessor for CloseAppIntentResponse());
  OUTLINED_FUNCTION_35_1();

  v19 = OUTLINED_FUNCTION_5_7();

  return v20(v19);
}

uint64_t sub_26610372C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = v9;
  v10[4] = a1;
  v11 = a3;
  v12 = a1;

  return sub_266124ECC(a6, v10);
}

uint64_t sub_2661037B0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2661046AC;

  return CloseAppIntentHandler.handle(intent:)();
}

id CloseAppIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloseAppIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2661038FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_26618C8A0();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26618C8A0();

  v7 = [v4 initWithIdentifier:v5 displayString:v6];

  return v7;
}

uint64_t sub_266103990(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2661039DC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_266103A3C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_266103A98(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_266103A98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_8();
  v9 = sub_266103B58(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_2660CD384(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_266103B58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266103C58(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_26618CDD0();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_266103C58(uint64_t a1, unint64_t a2)
{
  v3 = sub_266103CA4(a1, a2);
  sub_266103DBC(&unk_2877C9830);
  return v3;
}

uint64_t sub_266103CA4(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_26618C940())
  {
    result = sub_266103EA0(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26618CD70();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_26618CDD0();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_266103DBC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_266103F10(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266103EA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3F0, &unk_266191190);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_266103F10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28005C3F0, &unk_266191190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_266104004(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_266104014(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_266104088(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_2661040AC(void *a1)
{
  v1 = [a1 suggestedApplications];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Application();
  v3 = sub_26618C9B0();

  return v3;
}

uint64_t sub_266104130(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_26618C8B0();

  return v4;
}

id sub_26610419C(const void *a1, uint64_t a2)
{
  v12[3] = &type metadata for AppsSearcher;
  v12[4] = &off_2877CC0A0;
  v12[0] = swift_allocObject();
  memcpy((v12[0] + 16), a1, 0xA8uLL);
  v11[3] = &type metadata for AppTerminationProvider;
  v11[4] = &off_2877CC0D0;
  v4 = objc_allocWithZone(type metadata accessor for CloseAppIntentHandler());
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for AppsSearcher);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  __swift_mutable_project_boxed_opaque_existential_1(v11, &type metadata for AppTerminationProvider);
  v9 = sub_266104598(v7, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

unint64_t sub_266104320()
{
  result = qword_28005C3E8;
  if (!qword_28005C3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28005BD80, &qword_26618E528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28005C3E8);
  }

  return result;
}