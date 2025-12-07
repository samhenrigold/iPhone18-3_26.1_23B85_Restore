void sub_2219F3E58(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_73_0(v7, v8, v9, v10, v11, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_93_0(v15);
  sub_221BCC558();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_0();
  v43 = v6;
  if (*(v4 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_payloadPrivacy))
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v17 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v17, qword_27CFDEDB0);
    v18 = v5;
    v19 = v3;
    v20 = v6;
    v21 = sub_221BCCD68();
    v22 = sub_221BCDA98();

    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_61_1();
      v23 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_124(v23);
      *v3 = 136315651;
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      OUTLINED_FUNCTION_60_1();
      v24 = [v19 identifier];
      OUTLINED_FUNCTION_133_0();

      v25 = sub_2219AC8D8();
      OUTLINED_FUNCTION_88_0(v25);
      v26 = OUTLINED_FUNCTION_6_6();
      v27(v26);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      *(v3 + 14) = v4;
      OUTLINED_FUNCTION_50_1(2117);
      OUTLINED_FUNCTION_84_0(&dword_221989000, v21, v22);
      sub_2219A1CC8(v4, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_34_1();
    }
  }

  else
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
    }

    v28 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v28, qword_27CFDEDB0);
    v29 = v5;
    v30 = v3;
    v31 = v6;
    v32 = sub_221BCCD68();
    v33 = sub_221BCDA98();

    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_61_1();
      v34 = OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_124(v34);
      *v3 = 136315651;
      OUTLINED_FUNCTION_53_1();
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      OUTLINED_FUNCTION_60_1();
      v35 = [v30 identifier];
      OUTLINED_FUNCTION_133_0();

      v36 = sub_2219AC8D8();
      OUTLINED_FUNCTION_88_0(v36);
      v37 = OUTLINED_FUNCTION_6_6();
      v38(v37);
      OUTLINED_FUNCTION_26_3();
      OUTLINED_FUNCTION_75();

      *(v3 + 14) = v4;
      OUTLINED_FUNCTION_50_1(2113);
      OUTLINED_FUNCTION_84_0(&dword_221989000, v32, v33);
      sub_2219A1CC8(v4, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_30_1();
      OUTLINED_FUNCTION_34_1();
    }
  }

  v39 = sub_221BCD7F8();
  v40 = OUTLINED_FUNCTION_102_0(v39);
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v43;
  v40[5] = v5;
  v41 = v5;
  v42 = v43;
  OUTLINED_FUNCTION_109_0();

  OUTLINED_FUNCTION_22();
}

uint64_t sub_2219F4230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 192) = a4;
  *(v5 + 200) = a5;
  return MEMORY[0x2822009F8](sub_2219F4250, 0, 0);
}

uint64_t sub_2219F4250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = [*(v16 + 192) result];
  v18 = [v17 output];
  *(v16 + 208) = v18;

  v19 = [v18 dialog];
  *(v16 + 216) = v19;
  if (v19)
  {
    v20 = swift_task_alloc();
    *(v16 + 224) = v20;
    *v20 = v16;
    OUTLINED_FUNCTION_57_1(v20);
    OUTLINED_FUNCTION_28_0();

    return sub_22199B0DC();
  }

  else
  {
    *(v16 + 256) = 0;
    *(v16 + 264) = 0;
    *(v16 + 272) = 0;
    if (qword_280FA8FE0 != -1)
    {
      OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    }

    v23 = *(v16 + 200);
    v24 = sub_221BCCD88();
    *(v16 + 280) = OUTLINED_FUNCTION_178(v24, qword_280FA9008);
    v25 = v23;
    v26 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_97_0())
    {
      v27 = *(v16 + 200);
      OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_115();
      *v25 = 136315138;
      OUTLINED_FUNCTION_52_1();
      v28 = OUTLINED_FUNCTION_69_0();
      sub_2219A6360(v28, v29, v30);
      OUTLINED_FUNCTION_108_0();
      *(v25 + 1) = v27;
      OUTLINED_FUNCTION_10_3(&dword_221989000, v31, v32, "[%s] NeedsActionConfirmation: waiting for client response...");
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_20_1();
    }

    v33 = *(v16 + 200);
    v34 = *(v16 + 208);
    v62 = *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
    v35 = OUTLINED_FUNCTION_14_5();
    sub_2219F6C8C(v35, v36, v37);
    v38 = [v34 confirmationActionName];
    __swift_project_boxed_opaque_existential_0((v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), *(v33 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24));
    OUTLINED_FUNCTION_40_0();
    v39 = OUTLINED_FUNCTION_69_0();
    v40(v39);
    if (v38)
    {
      sub_2219B7680(v38, v16 + 144);
      OUTLINED_FUNCTION_49();
      v41 = swift_allocObject();
      *&v42 = OUTLINED_FUNCTION_116_0(v41).n128_u64[0];
      v43 = &off_283513A88;
      v44 = &type metadata for AnyConfirmationActionName;
    }

    else
    {

      v44 = 0;
      v43 = 0;
      v41 = 0;
    }

    v45 = [*(v16 + 208) viewSnippet];
    if (v45)
    {
      v46 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
      v47 = &protocol witness table for LNViewSnippet;
    }

    else
    {
      v47 = 0;
      v46 = 0;
    }

    v48 = *(v16 + 208);
    swift_getObjectType();
    [v48 shouldShowPrompt];
    OUTLINED_FUNCTION_117_0();
    *(v16 + 48) = 0;
    *(v16 + 56) = v41;
    *(v16 + 64) = 0;
    *(v16 + 72) = 0;
    *(v16 + 80) = v44;
    *(v16 + 88) = v43;
    *(v16 + 96) = v45;
    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
    *(v16 + 120) = v46;
    *(v16 + 128) = v47;
    *(v16 + 136) = v49;
    OUTLINED_FUNCTION_43_1();
    v61 = v50 + *v50;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v16 + 288) = v51;
    *v51 = v52;
    OUTLINED_FUNCTION_28_2(v51);
    OUTLINED_FUNCTION_28_0();

    return v56(v53, v54, v55, v56, v57, v58, v59, v60, a9, v62 + 32, v61, v62, a13, a14, a15, a16);
  }
}

uint64_t sub_2219F464C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 216);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v9[29] = v7;
  v9[30] = v8;
  v9[31] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219F474C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_170();
  v22 = *(v20 + 240);
  v21 = *(v20 + 248);
  v23 = *(v20 + 232);
  *(v20 + 264) = v22;
  *(v20 + 272) = v21;
  *(v20 + 256) = v23;
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v24 = *(v20 + 200);
  v25 = sub_221BCCD88();
  *(v20 + 280) = OUTLINED_FUNCTION_178(v25, qword_280FA9008);
  v26 = v24;
  v27 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_105_0())
  {
    v28 = *(v20 + 200);
    OUTLINED_FUNCTION_74_0();
    a17 = OUTLINED_FUNCTION_138();
    *v26 = 136315138;
    OUTLINED_FUNCTION_80_0();
    v29 = OUTLINED_FUNCTION_64_0();
    sub_2219A6360(v29, v30, v31);
    OUTLINED_FUNCTION_132_0();
    *(v26 + 1) = v28;
    OUTLINED_FUNCTION_18_3();
    _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
    OUTLINED_FUNCTION_29_2();
    OUTLINED_FUNCTION_21_3();
  }

  v38 = *(v20 + 200);
  v37 = *(v20 + 208);
  v71 = *(v38 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate);
  v72 = *(v38 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
  v39 = OUTLINED_FUNCTION_118();
  sub_2219F6C8C(v39, v40, v21);
  v41 = [v37 confirmationActionName];
  __swift_project_boxed_opaque_existential_0((v38 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), *(v38 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24));
  v42 = OUTLINED_FUNCTION_27_3();
  v43(v42);
  if (v41)
  {
    sub_2219B7680(v41, v20 + 144);
    OUTLINED_FUNCTION_49();
    v44 = swift_allocObject();
    *&v45 = OUTLINED_FUNCTION_116_0(v44).n128_u64[0];
    v69 = &off_283513A88;
    v68 = &type metadata for AnyConfirmationActionName;
  }

  else
  {

    v68 = 0;
    v69 = 0;
    v44 = 0;
  }

  v46 = [*(v20 + 208) viewSnippet];
  if (v46)
  {
    v65 = sub_2219A1D20(0, &qword_27CFB7DE8, 0x277D23CE8);
    v66 = &protocol witness table for LNViewSnippet;
  }

  else
  {
    v65 = 0;
    v66 = 0;
  }

  if (v21)
  {
    v47 = &off_283512A28;
  }

  else
  {
    v47 = 0;
  }

  if (v21)
  {
    v48 = &type metadata for AnyDialog;
  }

  else
  {
    v48 = 0;
  }

  if (v21)
  {
    v49 = v22;
  }

  else
  {
    v49 = 0;
  }

  if (v21)
  {
    v50 = v23;
  }

  else
  {
    v50 = 0;
  }

  v51 = *(v20 + 208);
  ObjectType = swift_getObjectType();
  v52 = [v51 shouldShowPrompt];
  *(v20 + 16) = v50;
  *(v20 + 24) = v49;
  *(v20 + 32) = v21;
  *(v20 + 40) = v48;
  *(v20 + 48) = v47;
  *(v20 + 56) = v44;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = v68;
  *(v20 + 88) = v69;
  *(v20 + 96) = v46;
  *(v20 + 104) = 0;
  *(v20 + 112) = 0;
  *(v20 + 120) = v65;
  *(v20 + 128) = v66;
  *(v20 + 136) = v52;
  OUTLINED_FUNCTION_43_1();
  v70 = v53 + *v53;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v20 + 288) = v54;
  *v54 = v55;
  OUTLINED_FUNCTION_28_2(v54);
  OUTLINED_FUNCTION_109();

  return v59(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, v66, ObjectType, v72 + 32, v70, v71, v72, a17, a18, a19, a20);
}

uint64_t sub_2219F4ACC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 137) = v5;
  *(v3 + 296) = v0;

  sub_2219F6CCC(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2219F4BDC()
{
  v1 = *(v0 + 200);
  v2 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_97_0())
  {
    v3 = *(v0 + 200);
    OUTLINED_FUNCTION_74_0();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_114_0();
    *v1 = 136315138;
    OUTLINED_FUNCTION_52_1();
    v4 = OUTLINED_FUNCTION_69_0();
    sub_2219A6360(v4, v5, v6);
    OUTLINED_FUNCTION_108_0();
    *(v1 + 1) = v3;
    OUTLINED_FUNCTION_10_3(&dword_221989000, v7, v8, "[%s] NeedsActionConfirmation: responding to app request");
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_20_1();
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 208);
  [*(v0 + 192) respondWithConfirmation_];
  v11 = OUTLINED_FUNCTION_118_0();
  sub_2219F6D20(v11, v12, v9);

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_2219F4D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v13 = v12[37];
  v15 = v12[25];
  v14 = v12[26];
  sub_2219F6D20(v12[32], v12[33], v12[34]);

  v16 = v15;
  v17 = v13;
  v18 = sub_221BCCD68();
  sub_221BCDA78();

  if (OUTLINED_FUNCTION_104_0())
  {
    OUTLINED_FUNCTION_103();
    v19 = OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_68();
    OUTLINED_FUNCTION_114_0();
    *v13 = 136315394;
    v20 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_58_0(v20, v21);
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_128_0();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v22;
    *v19 = v22;
    OUTLINED_FUNCTION_77_0(&dword_221989000, v23, v24, "[%s] NeedsActionConfirmation: failed with error %@");
    sub_2219A1CC8(v19, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_13_4();
    OUTLINED_FUNCTION_8_5();
    OUTLINED_FUNCTION_34_1();
  }

  v25 = v12[37];
  v26 = sub_221BCC328();
  v27 = OUTLINED_FUNCTION_103_0();
  [v27 v28];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_2219F4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  return MEMORY[0x2822009F8](sub_2219F4F48, 0, 0);
}

uint64_t sub_2219F4F48()
{
  OUTLINED_FUNCTION_1_5();
  *(v0 + 88) = [*(v0 + 72) dialog];
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_57_1(v1);

  return sub_22199B0DC();
}

uint64_t sub_2219F4FEC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  v4 = *(v3 + 88);
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v9[13] = v7;
  v9[14] = v8;
  v9[15] = v10;

  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2219F50EC()
{
  OUTLINED_FUNCTION_104();
  v20 = v0;
  *(v0 + 16) = *(v0 + 104);
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  *(v0 + 40) = &type metadata for AnyDialog;
  *(v0 + 48) = &off_283512A28;
  *(v0 + 32) = v1;
  *(v0 + 56) = [v2 isThrowing];
  *(v0 + 57) = [v2 requestConfirmation];
  *(v0 + 64) = [v2 type];
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v3 = *(v0 + 80);
  v4 = sub_221BCCD88();
  *(v0 + 128) = OUTLINED_FUNCTION_178(v4, qword_280FA9008);
  v5 = v3;
  v6 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_104_0())
  {
    v7 = *(v0 + 80);
    v8 = OUTLINED_FUNCTION_74_0();
    v19 = OUTLINED_FUNCTION_68();
    *v8 = 136315138;
    v9 = OUTLINED_FUNCTION_106_0();
    OUTLINED_FUNCTION_135_0(v9, v10, &v19);
    OUTLINED_FUNCTION_134_0();
    *(v8 + 4) = v7;
    OUTLINED_FUNCTION_49_1(&dword_221989000, v11, v12, "[%s] NeedsContinueInApp: waiting for client response...");
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_22_3();
  }

  v13 = *(*(v0 + 80) + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_clientDelegate + 8);
  ObjectType = swift_getObjectType();
  OUTLINED_FUNCTION_43_1();
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_57_1(v16);

  return v18(v0 + 16, ObjectType, v13);
}

uint64_t sub_2219F535C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3 & 1;
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219F5470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  if (*(v20 + 152) == 1)
  {
    v27 = *(v20 + 80);
    v28 = sub_221BCCD68();
    sub_221BCDA98();

    if (OUTLINED_FUNCTION_97_0())
    {
      v29 = *(v20 + 80);
      OUTLINED_FUNCTION_74_0();
      a9 = OUTLINED_FUNCTION_42_0();
      *v27 = 136315138;
      OUTLINED_FUNCTION_52_1();
      v30 = OUTLINED_FUNCTION_69_0();
      sub_2219A6360(v30, v31, v32);
      OUTLINED_FUNCTION_108_0();
      *(v27 + 1) = v29;
      OUTLINED_FUNCTION_10_3(&dword_221989000, v33, v34, "[%s] NeedsContinueInApp: responding to app request");
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_20_1();
    }

    [*(v20 + 72) respondWithSuccess];
    sub_2219F6BAC(v20 + 16);
  }

  else
  {
    v35 = sub_2219A1218(v24, v25, v26);
    v36 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v35);
    OUTLINED_FUNCTION_59_0(v37, 1);
    v38 = *(v20 + 80);
    sub_2219F6BAC(v20 + 16);
    v39 = v38;
    v40 = OUTLINED_FUNCTION_55_1();
    v41 = sub_221BCCD68();
    sub_221BCDA78();

    if (OUTLINED_FUNCTION_98_0())
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_101_0();
      *v38 = 136315394;
      v42 = OUTLINED_FUNCTION_39_1();
      OUTLINED_FUNCTION_91_0(v42, v43, &a9);
      OUTLINED_FUNCTION_90_0();
      OUTLINED_FUNCTION_12_2();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_65_0(v44);
      OUTLINED_FUNCTION_131(&dword_221989000, v45, v46, "[%s] NeedsContinueInApp: failed with error %@");
      sub_2219A1CC8(v21, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_20_1();
    }

    v47 = sub_221BCC328();
    OUTLINED_FUNCTION_94_0(v47, sel_respondWithError_);
  }

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12);
}

uint64_t sub_2219F56A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v14 = *(v12 + 144);
  v15 = *(v12 + 80);
  sub_2219F6BAC(v12 + 16);
  v16 = v15;
  v17 = OUTLINED_FUNCTION_55_1();
  v18 = sub_221BCCD68();
  sub_221BCDA78();

  if (OUTLINED_FUNCTION_98_0())
  {
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_121_0();
    *v15 = 136315394;
    v19 = OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_58_0(v19, v20);
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_12_2();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_65_0(v21);
    OUTLINED_FUNCTION_131(&dword_221989000, v22, v23, "[%s] NeedsContinueInApp: failed with error %@");
    sub_2219A1CC8(v13, &unk_27CFB7630, qword_221BD0790);
    OUTLINED_FUNCTION_21_3();
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_20_1();
  }

  v24 = sub_221BCC328();
  OUTLINED_FUNCTION_94_0(v24, sel_respondWithError_);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_2219F58AC()
{
  OUTLINED_FUNCTION_1_5();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  OUTLINED_FUNCTION_8_1(v3);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = sub_221BCC588();
  OUTLINED_FUNCTION_43_1();
  v1[8] = v4;
  v1[9] = swift_task_alloc();
  v1[10] = sub_221BCC558();
  OUTLINED_FUNCTION_43_1();
  v1[11] = v5;
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2219F59F4()
{
  v74 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v2 = v0[3];
  v1 = v0[4];
  v71 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v71, qword_27CFDEDB0);
  v3 = v1;
  v4 = v2;
  v5 = sub_221BCCD68();
  v6 = sub_221BCDA98();

  if (os_log_type_enabled(v5, v6))
  {
    v65 = v0[3];
    v67 = v0[10];
    v7 = OUTLINED_FUNCTION_103();
    v73 = OUTLINED_FUNCTION_105();
    *v7 = 136315394;
    OUTLINED_FUNCTION_54_1();
    v8 = OUTLINED_FUNCTION_122_0();
    v11 = sub_2219A6360(v8, v9, v10);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v65 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    sub_221BCE168();
    v13 = OUTLINED_FUNCTION_125_0();
    v14(v13, v67);
    v15 = sub_2219A6360(v12, &qword_27CFB8000, &v73);

    *(v7 + 14) = v15;
    OUTLINED_FUNCTION_129_0(&dword_221989000, v16, v17, "[%s] %s Received environmentForViewSnippet request");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_13_4();
  }

  v18 = v0[4];
  v19 = *(v18 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 32);
  __swift_project_boxed_opaque_existential_0((v18 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment), *(v18 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_environment + 24));
  v20 = OUTLINED_FUNCTION_75();
  v21(v20, v19);
  sub_221BCC568();
  v22 = v18 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment;
  v23 = *(v18 + OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 96);
  if (v23 == 2)
  {
    v24 = 0;
  }

  else
  {
    v26 = v0[6];
    v25 = v0[7];
    v27 = v0[5];
    v28 = *(v22 + 99);
    v29 = *(v22 + 98);
    v30 = *(v22 + 97);
    v31 = *(v22 + 80);
    v68 = *(v22 + 72);
    v69 = *(v22 + 88);
    v64 = *(v22 + 56);
    v66 = *(v22 + 64);
    v33 = *(v22 + 40);
    v32 = *(v22 + 48);
    v35 = *v22;
    v34 = *(v22 + 8);
    (*(v0[8] + 16))(v26, v0[9], v25);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
    v36 = OUTLINED_FUNCTION_118();
    sub_2219BAF0C(v36, v37, &qword_27CFB82E0, v38);
    v39 = objc_allocWithZone(MEMORY[0x277D23C80]);
    v24 = sub_221A6C6C4(v27, v33, v32, v64, v66, v68, v69, v23 & 1, v35, v34, v31, v30 & 1, v29 & 1, v28 & 1);
    sub_2219A1CC8(v26, &qword_27CFB82E0, &qword_221BD2C30);
  }

  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
  }

  v40 = v0[4];
  OUTLINED_FUNCTION_178(v71, qword_280FA9008);
  v41 = v24;
  v42 = v40;
  v43 = sub_221BCCD68();
  sub_221BCDA98();

  v44 = OUTLINED_FUNCTION_105_0();
  v46 = v0[8];
  v45 = v0[9];
  v47 = v0[7];
  if (v44)
  {
    v72 = v0[9];
    v70 = v0[7];
    v48 = OUTLINED_FUNCTION_103();
    v73 = OUTLINED_FUNCTION_105();
    *v48 = 136315394;
    OUTLINED_FUNCTION_54_1();
    v49 = OUTLINED_FUNCTION_122_0();
    v52 = sub_2219A6360(v49, v50, v51);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v0[2] = v24;
    v53 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E8, &qword_221BD2C38);
    v54 = sub_221BCD3F8();
    v56 = sub_2219A6360(v54, v55, &v73);

    *(v48 + 14) = v56;
    OUTLINED_FUNCTION_18_3();
    _os_log_impl(v57, v58, v59, v60, v61, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_21_3();

    (*(v46 + 8))(v72, v70);
  }

  else
  {

    (*(v46 + 8))(v45, v47);
  }

  v62 = v0[1];

  return v62(v24);
}

uint64_t sub_2219F5F20(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2219F5FE4;

  return sub_2219F58AC();
}

uint64_t sub_2219F5FE4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_0();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_0_0();
  v10(v9);
  _Block_release(v4);

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_2219F6130()
{
  OUTLINED_FUNCTION_1_5();
  v1[5] = v2;
  v1[6] = v0;
  v1[7] = sub_221BCC558();
  OUTLINED_FUNCTION_43_1();
  v1[8] = v3;
  v1[9] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2219F61E0()
{
  v41 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v39 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v39, qword_27CFDEDB0);
  v3 = v1;
  v4 = v2;
  v5 = sub_221BCCD68();
  v6 = sub_221BCDA98();

  if (os_log_type_enabled(v5, v6))
  {
    v37 = *(v0 + 40);
    v38 = *(v0 + 56);
    v7 = OUTLINED_FUNCTION_103();
    v40 = OUTLINED_FUNCTION_105();
    *v7 = 136315394;
    OUTLINED_FUNCTION_54_1();
    v8 = OUTLINED_FUNCTION_122_0();
    v11 = sub_2219A6360(v8, v9, v10);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = [v37 identifier];
    sub_221BCC528();

    sub_2219AC8D8();
    sub_221BCE168();
    v13 = OUTLINED_FUNCTION_125_0();
    v14(v13, v38);
    v15 = sub_2219A6360(v12, "yProperty", &v40);

    *(v7 + 14) = v15;
    OUTLINED_FUNCTION_129_0(&dword_221989000, v16, v17, "[%s] %s Received preferredContentSizeForViewSnippet request");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_13_4();
  }

  v18 = *(v0 + 48);
  if (v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 96] == 2)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *&v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 16];
  }

  if (v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 96] == 2)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *&v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 24];
  }

  v21 = (v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 96] == 2) | v18[OBJC_IVAR____TtCC18AppIntentsServices19InProcessDispatcher29PerformActionExecutorDelegate_snippetEnvironment + 32];
  if (qword_280FA8FE0 != -1)
  {
    OUTLINED_FUNCTION_2_16(&qword_280FA8FE0);
    v18 = *(v0 + 48);
  }

  OUTLINED_FUNCTION_178(v39, qword_280FA9008);
  v22 = v18;
  v23 = sub_221BCCD68();
  sub_221BCDA98();

  if (OUTLINED_FUNCTION_104_0())
  {
    v24 = *(v0 + 48);
    v25 = OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_115();
    *v25 = 136315394;
    OUTLINED_FUNCTION_52_1();
    v26 = OUTLINED_FUNCTION_69_0();
    sub_2219A6360(v26, v27, v28);
    OUTLINED_FUNCTION_108_0();
    *(v25 + 4) = v24;
    *(v25 + 12) = 2080;
    *(v0 + 16) = v19;
    *(v0 + 24) = v20;
    *(v0 + 32) = v21 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82D0, &qword_221BD2C10);
    v29 = sub_221BCD3F8();
    v31 = sub_2219A6360(v29, v30, &v40);

    *(v25 + 14) = v31;
    OUTLINED_FUNCTION_77_0(&dword_221989000, v32, v33, "[%s] PreferredContentSizeForViewSnippet: responding to app request | size=%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_34_1();
  }

  if (v21)
  {
    v34 = 0;
  }

  else
  {
    v34 = [objc_opt_self() valueWithSize_];
  }

  v35 = *(v0 + 8);

  return v35(v34);
}

uint64_t sub_2219F65B8(void *a1, int a2, void *a3, void *aBlock, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = v7;
  v8[4] = a1;
  v9 = a3;
  v10 = a1;
  v11 = OUTLINED_FUNCTION_0_0();

  return sub_221A65FB8(v11, v12);
}

uint64_t sub_2219F6638(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2219F70E8;

  return sub_2219F6130();
}

void sub_2219F673C(uint64_t a1)
{
  sub_2219F6848(319);
  if (v1 <= 0x3F)
  {
    sub_2219F68D4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2219F6848(uint64_t a1)
{
  if (!qword_27CFB8290)
  {
    sub_2219A1D20(255, &qword_27CFB80A0, 0x277D23CA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
    v1 = sub_221BCD7A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFB8290);
    }
  }
}

void sub_2219F68D4(uint64_t a1)
{
  if (!qword_27CFB82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82B0, &unk_221BD2990);
    v1 = sub_221BCC888();
    if (!v2)
    {
      atomic_store(v1, &qword_27CFB82A8);
    }
  }
}

uint64_t sub_2219F6938(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2219F69A8()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_71(v1);

  return v3(v2);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2219F6A88()
{
  OUTLINED_FUNCTION_8_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_71(v1);

  return v3(v2);
}

uint64_t sub_2219F6B20()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_253();

  return sub_2219F4F28(v3, v4, v5, v6, v7);
}

uint64_t sub_2219F6C00()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_253();

  return sub_2219F4230(v3, v4, v5, v6, v7);
}

uint64_t sub_2219F6C8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t sub_2219F6D20(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    return swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_2219F6D64()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_253();

  return sub_2219F2FAC(v3, v4, v5, v6, v7);
}

uint64_t sub_2219F6E44()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_253();

  return sub_2219F1CA0(v3, v4, v5, v6, v7);
}

uint64_t sub_2219F6ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2219F6EE0()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_253();

  return sub_2219F0828(v3, v4, v5, v6, v7);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2219F7008()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_253();

  return sub_2219EF6B0(v3, v4, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_9()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_8_5()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_10_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_12_2()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;

  return v0;
}

void OUTLINED_FUNCTION_13_4()
{

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_20_1()
{

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_21_3()
{

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_22_3()
{

  JUMPOUT(0x223DA4C00);
}

unint64_t OUTLINED_FUNCTION_26_3()
{

  return sub_2219A6360(v0, v1, (v2 - 88));
}

void OUTLINED_FUNCTION_29_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_30_1()
{

  JUMPOUT(0x223DA4C00);
}

void OUTLINED_FUNCTION_34_1()
{

  JUMPOUT(0x223DA4C00);
}

uint64_t OUTLINED_FUNCTION_39_1()
{
}

uint64_t OUTLINED_FUNCTION_42_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_44_0()
{

  JUMPOUT(0x223DA4C00);
}

uint64_t OUTLINED_FUNCTION_48_1()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_49_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_50_1@<X0>(__int16 a1@<W8>)
{
  *(v1 + 22) = a1;
  *(v1 + 24) = v2;
  **(v3 - 152) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_52_1()
{
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_54_1()
{
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_58_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2219A6360(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_59_0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 5;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_61_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_68()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_74_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_77_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_80_0()
{
}

uint64_t OUTLINED_FUNCTION_83_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_84_0(void *a1, NSObject *a2, os_log_type_t a3)
{
  v6 = *(v4 - 136);

  _os_log_impl(a1, a2, a3, v6, v3, 0x20u);
}

uint64_t OUTLINED_FUNCTION_88_0(uint64_t a1)
{

  return sub_221BCE168();
}

uint64_t OUTLINED_FUNCTION_90_0()
{
}

unint64_t OUTLINED_FUNCTION_91_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_2219A6360(v3, v4, a3);
}

id OUTLINED_FUNCTION_94_0(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_96_0(uint64_t a1)
{

  sub_2219BCDE0(v3, v2, v1, (a1 + 16));
}

BOOL OUTLINED_FUNCTION_97_0()
{

  return os_log_type_enabled(v1, v0);
}

BOOL OUTLINED_FUNCTION_98_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(*(v1 - 120), 1, 1, a1);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_104_0()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_105_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_106_0()
{
}

uint64_t OUTLINED_FUNCTION_107_0(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 3;

  return sub_221BCC328();
}

uint64_t OUTLINED_FUNCTION_108_0()
{
}

void OUTLINED_FUNCTION_109_0()
{

  sub_2219F7E3C();
}

id OUTLINED_FUNCTION_110_0@<X0>(__int16 a1@<W8>)
{
  *(v2 + 22) = a1;
  *(v2 + 24) = v3;
  *v1 = *(v4 - 112);
  *(v2 + 32) = a1;

  return v3;
}

id OUTLINED_FUNCTION_111()
{
  *(v3 + 4) = v1;
  *(v3 + 12) = 2080;
  v5 = *(v2 + 3752);

  return [v0 v5];
}

uint64_t OUTLINED_FUNCTION_112_0()
{
}

__n128 OUTLINED_FUNCTION_116_0(uint64_t a1)
{
  v2 = *(v1 + 160);
  *(a1 + 16) = *(v1 + 144);
  *(a1 + 32) = v2;
  result = *(v1 + 176);
  *(a1 + 48) = result;
  return result;
}

double OUTLINED_FUNCTION_117_0()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_124(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_127_0()
{
  *(v2 - 116) = v0;
  *(v2 - 104) = v1;

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_128_0()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2112;

  return v1;
}

void OUTLINED_FUNCTION_129_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

id OUTLINED_FUNCTION_130_0@<X0>(__int16 a1@<W8>)
{
  *(v3 + 22) = a1;
  *(v3 + 24) = v1;
  *v2 = v4;
  *(v3 + 32) = a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_131_0()
{
  *(v3 - 156) = v0;
  *(v3 - 144) = v1;
  *(v3 - 136) = v2;

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_132_0()
{
}

uint64_t OUTLINED_FUNCTION_133_0()
{

  return sub_221BCC528();
}

uint64_t OUTLINED_FUNCTION_134_0()
{
}

unint64_t OUTLINED_FUNCTION_135_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_2219A6360(v3, v4, a3);
}

void (*sub_2219F7AAC(void (*result)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3))(void *__return_ptr, uint64_t)
{
  v4 = result;
  v5 = 0;
  v6 = *(a3 + 16);
  v22 = MEMORY[0x277D84F90];
  v7 = a3 + 32;
  v17 = a3 + 32;
LABEL_2:
  for (i = v7 + 40 * v5; ; i += 40)
  {
    if (v6 == v5)
    {
      return v22;
    }

    if (v5 >= v6)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_18;
    }

    (v4)(v21, i, a2);
    if (v3)
    {
      v16 = v22;

      return v16;
    }

    OUTLINED_FUNCTION_88_1(v20);
    if (sub_2219A1200(v20) != 1)
    {
      OUTLINED_FUNCTION_88_1(__src);
      v10 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219B3CC4();
        v10 = v14;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      v22 = v10;
      if (v12 >= v11 >> 1)
      {
        sub_2219B3CC4();
        v22 = v15;
      }

      memcpy(__dst, __src, sizeof(__dst));
      v13 = v22;
      *(v22 + 16) = v12 + 1;
      result = memcpy((v13 + (v12 << 7) + 32), __dst, 0x80uLL);
      v5 = v9;
      v7 = v17;
      goto LABEL_2;
    }

    OUTLINED_FUNCTION_88_1(__src);
    result = sub_221A01F0C(__src, &qword_27CFB7698, &qword_221BD0838);
    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id sub_2219F7C68(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  result = sub_2219A69A0();
  v7 = result;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v14 = a1;
  while (1)
  {
    if (v7 == v8)
    {
      return v9;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x223DA3BF0](v8, a3);
    }

    else
    {
      if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v8 + 32);
    }

    v10 = result;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    v19 = result;
    a1(v18, &v19);
    if (v3)
    {

      return v9;
    }

    OUTLINED_FUNCTION_88_1(v17);
    if (sub_2219A1200(v17) == 1)
    {
      OUTLINED_FUNCTION_88_1(__src);
      result = sub_221A01F0C(__src, &qword_27CFB7698, &qword_221BD0838);
    }

    else
    {
      OUTLINED_FUNCTION_88_1(__src);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2219B3CC4();
        v9 = v12;
      }

      v11 = *(v9 + 16);
      if (v11 >= *(v9 + 24) >> 1)
      {
        sub_2219B3CC4();
        v9 = v13;
      }

      memcpy(__dst, __src, sizeof(__dst));
      *(v9 + 16) = v11 + 1;
      result = memcpy((v9 + (v11 << 7) + 32), __dst, 0x80uLL);
      a1 = v14;
    }

    ++v8;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_2219F7E3C()
{
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_75_0();
  v8 = &qword_221BD2C40;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_25_3();
  sub_2219A02E8(v11, v12, &unk_27CFB82F0, &qword_221BD2C40);
  v13 = sub_221BCD7F8();
  OUTLINED_FUNCTION_53_2(v13);
  if (&qword_221BD2C40 == 1)
  {
    sub_221A01F0C(v0, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    v8 = sub_221BCD7E8();
    OUTLINED_FUNCTION_0_6();
    (*(v14 + 8))(v0, &unk_27CFB82F0);
  }

  OUTLINED_FUNCTION_91_1();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_90_1(ObjectType);
    OUTLINED_FUNCTION_59_1();
    if (v1)
    {
LABEL_6:
      sub_221BCD408();
      OUTLINED_FUNCTION_94_1();
      OUTLINED_FUNCTION_49_2();
      v16 = swift_allocObject();
      *(v16 + 16) = v7;
      *(v16 + 24) = v5;

      if (v8 | v0)
      {
        OUTLINED_FUNCTION_36_2();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_48_2(v17);
      swift_task_create();
      OUTLINED_FUNCTION_144();

      sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_49_2();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v5;
  if (v8 | v0)
  {
    OUTLINED_FUNCTION_35_2();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_22();
}

void sub_2219F8084()
{
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_75_0();
  v8 = &qword_221BD2C40;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_25_3();
  sub_2219A02E8(v11, v12, &unk_27CFB82F0, &qword_221BD2C40);
  v13 = sub_221BCD7F8();
  OUTLINED_FUNCTION_53_2(v13);
  if (&qword_221BD2C40 == 1)
  {
    sub_221A01F0C(v0, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    v8 = sub_221BCD7E8();
    OUTLINED_FUNCTION_0_6();
    (*(v14 + 8))(v0, &unk_27CFB82F0);
  }

  OUTLINED_FUNCTION_91_1();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_90_1(ObjectType);
    OUTLINED_FUNCTION_59_1();
    if (v1)
    {
LABEL_6:
      sub_221BCD408();
      OUTLINED_FUNCTION_94_1();
      OUTLINED_FUNCTION_49_2();
      v16 = swift_allocObject();
      *(v16 + 16) = v7;
      *(v16 + 24) = v5;
      sub_221BCC7E8();

      if (v8 | v0)
      {
        OUTLINED_FUNCTION_36_2();
      }

      else
      {
        v17 = 0;
      }

      OUTLINED_FUNCTION_48_2(v17);
      swift_task_create();
      OUTLINED_FUNCTION_144();

      sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_49_2();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v5;
  sub_221BCC7E8();
  OUTLINED_FUNCTION_92_0();
  if (v19)
  {
    OUTLINED_FUNCTION_35_2();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_22();
}

void sub_2219F82D4()
{
  OUTLINED_FUNCTION_21();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_75_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_25_3();
  sub_2219A02E8(v10, v11, &unk_27CFB82F0, &qword_221BD2C40);
  v12 = sub_221BCD7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_221A01F0C(v0, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    sub_221BCD7E8();
    OUTLINED_FUNCTION_0_6();
    (*(v14 + 8))(v0, v12);
  }

  OUTLINED_FUNCTION_91_1();

  if (v3)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_90_1(ObjectType);
    OUTLINED_FUNCTION_59_1();
    if (v1)
    {
LABEL_6:
      sub_221BCD408();
      OUTLINED_FUNCTION_94_1();
      OUTLINED_FUNCTION_49_2();
      v16 = swift_allocObject();
      *(v16 + 16) = v7;
      *(v16 + 24) = v5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8350, &qword_221BD2EF0);
      OUTLINED_FUNCTION_92_0();
      if (v17)
      {
        OUTLINED_FUNCTION_36_2();
      }

      OUTLINED_FUNCTION_48_2(v17);
      swift_task_create();

      sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);

      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    if (v1)
    {
      goto LABEL_6;
    }
  }

  sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_49_2();
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8350, &qword_221BD2EF0);
  OUTLINED_FUNCTION_92_0();
  if (v19)
  {
    OUTLINED_FUNCTION_35_2();
  }

  swift_task_create();
LABEL_13:
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_22();
}

void sub_2219F8548()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = *v7;
  LOBYTE(v7) = v7[1];
  *(v1 + 152) = sub_221BC5570(6);
  *(v1 + 160) = v19;
  *(v1 + 16) = v13;
  *(v1 + 24) = v11;
  sub_221A0149C(v9, v1 + 32);
  *(v1 + 72) = v18;
  *(v1 + 73) = v7;
  *(v1 + 74) = v5;
  sub_2219EBEE4(v3, v1 + 80);
  v20 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v20);
  OUTLINED_FUNCTION_49_2();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;

  *(v1 + 144) = sub_2219F89DC(0, 0, v17, &unk_221BD2F08, v21);
  if (qword_27CFB73A8 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_27CFB73A8);
  }

  v22 = sub_221BCCD88();
  __swift_project_value_buffer(v22, qword_27CFDEE40);

  v23 = sub_221BCCD68();
  v24 = sub_221BCDA98();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v35 = v9;
    v36 = v26;
    *v25 = 136315394;
    v28 = *(v1 + 152);
    v27 = *(v1 + 160);

    v29 = sub_2219A6360(v28, v27, &v36);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v30 = OUTLINED_FUNCTION_70_0();
    v33 = sub_2219A6360(v30, v31, v32);

    *(v25 + 14) = v33;
    _os_log_impl(&dword_221989000, v23, v24, "[%s] Initialized XPC dispatcher for %s", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();

    sub_2219EBE90(v3);
    v34 = v35;
  }

  else
  {

    sub_2219EBE90(v3);
    v34 = v9;
  }

  __swift_destroy_boxed_opaque_existential_0(v34);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2219F87F8(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_2219F8890;

  return sub_221A14CCC();
}

uint64_t sub_2219F8890()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_25();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_2219F89A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 25) = *(v0 + 41);
  *v1 = v2;
  v1[1] = v3;
  OUTLINED_FUNCTION_4_3();
  return v4();
}

uint64_t sub_2219F89DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2219A02E8(a3, v21 - v9, &unk_27CFB82F0, &qword_221BD2C40);
  v11 = sub_221BCD7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_221A01F0C(v10, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    sub_221BCD7E8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_221BCD778();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_221BCD408() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_221A01F0C(a3, &unk_27CFB82F0, &qword_221BD2C40);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_221A01F0C(a3, &unk_27CFB82F0, &qword_221BD2C40);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_2219F8C64()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  v8 = v15 - v7;
  sub_2219A02E8(v2, v15 - v7, &unk_27CFB82F0, &qword_221BD2C40);
  v9 = sub_221BCD7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v9);

  if (EnumTagSinglePayload == 1)
  {
    sub_221A01F0C(v8, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    EnumTagSinglePayload = sub_221BCD7E8();
    OUTLINED_FUNCTION_0_6();
    (*(v11 + 8))(v8, v9);
  }

  OUTLINED_FUNCTION_91_1();

  if (v0)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_90_1(ObjectType);
    OUTLINED_FUNCTION_59_1();
    if (v4)
    {
LABEL_6:
      v13 = sub_221BCD408() + 32;

      if (EnumTagSinglePayload | v8)
      {
        OUTLINED_FUNCTION_36_2();
      }

      else
      {
        v14 = 0;
      }

      v15[1] = 7;
      v15[2] = v14;
      v15[3] = v13;
      OUTLINED_FUNCTION_98_1();

      sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_221A01F0C(v2, &unk_27CFB82F0, &qword_221BD2C40);
  if (EnumTagSinglePayload | v8)
  {
    OUTLINED_FUNCTION_35_2();
  }

  OUTLINED_FUNCTION_98_1();
LABEL_14:
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_22();
}

void sub_2219F8E84()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = &qword_221BD2C40;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_25_3();
  sub_2219A02E8(v9, v10, &unk_27CFB82F0, &qword_221BD2C40);
  v11 = sub_221BCD7F8();
  OUTLINED_FUNCTION_53_2(v11);
  if (&qword_221BD2C40 == 1)
  {
    sub_221A01F0C(v0, &unk_27CFB82F0, &qword_221BD2C40);
  }

  else
  {
    v6 = sub_221BCD7E8();
    OUTLINED_FUNCTION_0_6();
    (*(v12 + 8))(v0, &unk_27CFB82F0);
  }

  OUTLINED_FUNCTION_91_1();

  if (v1)
  {
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_90_1(ObjectType);
    OUTLINED_FUNCTION_59_1();
    if (v5)
    {
LABEL_6:
      sub_221BCD408();
      OUTLINED_FUNCTION_94_1();
      type metadata accessor for RemoteAppIntentsDispatcher();

      if (v6 | v0)
      {
        OUTLINED_FUNCTION_36_2();
      }

      else
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_48_2(v14);
      swift_task_create();
      OUTLINED_FUNCTION_144();

      sub_221A01F0C(v3, &unk_27CFB82F0, &qword_221BD2C40);

      goto LABEL_14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_79();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  sub_221A01F0C(v3, &unk_27CFB82F0, &qword_221BD2C40);
  type metadata accessor for RemoteAppIntentsDispatcher();
  OUTLINED_FUNCTION_92_0();
  if (v15)
  {
    OUTLINED_FUNCTION_35_2();
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_80_1();
  OUTLINED_FUNCTION_22();
}

void *sub_2219F9090()
{
  v1 = v0;
  if (qword_27CFB73A8 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_27CFB73A8);
  }

  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEE40);

  v3 = sub_221BCCD68();
  v4 = sub_221BCDA68();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_2219A6360(v1[19], v1[20], &v8);
    _os_log_impl(&dword_221989000, v3, v4, "[%s] Deinit", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  __swift_destroy_boxed_opaque_existential_0(v1 + 4);
  sub_2219EBE90((v1 + 10));

  return v1;
}

uint64_t sub_2219F91DC()
{
  sub_2219F9090();

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t sub_2219F9234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  return MEMORY[0x2822009F8](sub_2219F9260, 0, 0);
}

uint64_t sub_2219F9260()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_39_2();
  *v1 = v2;
  v1[1] = sub_2219F9318;
  v3 = OUTLINED_FUNCTION_51_1();

  return MEMORY[0x282200430](v3);
}

uint64_t sub_2219F9318()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F9410()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  *(v0 + 41) = *(v0 + 89);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 184) = v2;
  *v2 = v3;
  v2[1] = sub_2219F94BC;
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 112);

  return sub_2219FA080(v9, v0 + 16, v8, v6, v7, v4, v5);
}

uint64_t sub_2219F94BC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F95B4()
{
  OUTLINED_FUNCTION_8_0();

  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219F9620()
{
  OUTLINED_FUNCTION_8_0();
  sub_221A00E2C(v0 + 16);

  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219F9694()
{
  OUTLINED_FUNCTION_8_0();
  sub_221A00E2C(v0 + 16);

  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219F970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x2822009F8](sub_2219F9730, 0, 0);
}

uint64_t sub_2219F9730()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_39_2();
  *v1 = v2;
  v1[1] = sub_2219F97E8;
  v3 = OUTLINED_FUNCTION_51_1();

  return MEMORY[0x282200430](v3);
}

uint64_t sub_2219F97E8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F98E0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_7_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 160) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_2(v1);

  return v4(v3);
}

uint64_t sub_2219F998C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F9A8C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A00E2C(v0 + 16);
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219F9AE4()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A00E2C(v0 + 16);
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219F9B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x2822009F8](sub_2219F9B64, 0, 0);
}

uint64_t sub_2219F9B64()
{
  OUTLINED_FUNCTION_1_5();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  OUTLINED_FUNCTION_39_2();
  *v1 = v2;
  v1[1] = sub_2219F9C1C;
  v3 = OUTLINED_FUNCTION_51_1();

  return MEMORY[0x282200430](v3);
}

uint64_t sub_2219F9C1C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F9D14()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_7_5();
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 160) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_30_2(v1);

  return v4(v3);
}

uint64_t sub_2219F9DC0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219F9EB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(a2 + 8);
  *(v3 + 32) = *a2;
  *(v3 + 40) = v4;
  *(v3 + 48) = *(a2 + 16);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219F9EDC()
{
  OUTLINED_FUNCTION_8_0();

  v1 = OUTLINED_FUNCTION_0_0();
  sub_221998178(v1, v2);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_2219F9FA0;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return sub_2219F9234(v9, v10, v7, v8, v5, v6, v10);
}

uint64_t sub_2219F9FA0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219FA080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v7[22] = a2;
  v7[23] = a3;
  v7[21] = a1;
  return MEMORY[0x2822009F8](sub_2219FA0AC, 0, 0);
}

uint64_t sub_2219FA0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_96_1();
  a25 = v27;
  a26 = v28;
  a24 = v26;
  if (qword_27CFB73A8 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_27CFB73A8);
  }

  v29 = sub_221BCCD88();
  __swift_project_value_buffer(v29, qword_27CFDEE40);
  OUTLINED_FUNCTION_144();

  v30 = OUTLINED_FUNCTION_70_0();
  sub_221998178(v30, v31);
  v32 = sub_221BCCD68();
  v33 = sub_221BCDA98();

  v34 = OUTLINED_FUNCTION_70_0();
  sub_2219982C4(v34, v35);
  if (os_log_type_enabled(v32, v33))
  {
    v37 = (v26 + 184);
    v36 = *(v26 + 184);
    v38 = *(v26 + 208);
    v39 = *(v26 + 192);
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    a11 = v41;
    a12 = v36;
    *v40 = 136315138;
    a13 = v39;
    if (v38 == 2)
    {
      v42 = *(v26 + 192);
    }

    else
    {
      v44 = *(v26 + 200);
      v43 = *(v26 + 208);
      a14 = 32;
      a15 = 0xE100000000000000;

      sub_221998178(v44, v43);
      v45 = sub_2219988C4(v44, v43);
      MEMORY[0x223DA31F0](v45);

      v37 = &a12;
      MEMORY[0x223DA31F0](a14, a15);

      v42 = a13;
    }

    v46 = sub_2219A6360(*v37, v42, &a11);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_221989000, v32, v33, "Attempting to fetch app protection state for app %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  v48 = *(v26 + 208);
  v47 = *(v26 + 216);
  v50 = *(v26 + 192);
  v49 = *(v26 + 200);
  v51 = *(v26 + 184);
  v53 = *(v47 + 16);
  v52 = *(v47 + 24);
  v54 = *(v47 + 73);
  v55 = objc_opt_self();

  v56 = OUTLINED_FUNCTION_0_0();
  sub_221998178(v56, v57);

  v58 = [v55 sharedInstance];
  v59 = [v58 optInApple];

  *(v26 + 16) = v51;
  *(v26 + 24) = v50;
  *(v26 + 32) = v49;
  *(v26 + 40) = v48;
  *(v26 + 48) = v53;
  *(v26 + 56) = v52;
  *(v26 + 64) = v59;
  *(v26 + 65) = v54;
  v60 = *(v26 + 32);
  *(v26 + 104) = *(v26 + 48);
  v61 = *(v26 + 16);
  *(v26 + 88) = v60;
  *(v26 + 120) = *(v26 + 64);
  *(v26 + 72) = v61;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v26 + 224) = v62;
  *v62 = v63;
  v62[1] = sub_2219FA38C;
  OUTLINED_FUNCTION_67_0();

  return sub_221A02CC8();
}

uint64_t sub_2219FA38C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (!v0)
  {
    sub_221A020D8(v3 + 16);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FA48C()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 128);
  v2 = *(v0 + 160);
  if (v2 < 0)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 168);

    sub_221A0212C(v1, v3, v4, v5, v2);
    *v8 = v7;
    *(v8 + 8) = v6;
    *(v8 + 16) = xmmword_221BD0800;
    *(v8 + 32) = v2 & 1;
    *(v8 + 33) = BYTE1(v2) & 1;
    OUTLINED_FUNCTION_4_3();
  }

  return v9();
}

uint64_t sub_2219FA56C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A020D8(v0 + 16);
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219FA5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v14;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a8;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  OUTLINED_FUNCTION_27_0();
  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2219FA60C()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 32);
  *(v7 + 16) = v3;
  *(v7 + 24) = v1;
  *(v7 + 32) = v6;
  *(v7 + 40) = v8;
  *(v7 + 56) = v2;
  *(v7 + 64) = v5;
  *(v7 + 72) = v4;
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  type metadata accessor for AppIntentFetchOptionsResult(0, v3, v1, v10);
  *v9 = v0;
  v9[1] = sub_2219FA71C;
  v11 = *(v0 + 16);

  return sub_2219F9B40(v11, &unk_221BD2EC0, v7);
}

uint64_t sub_2219FA71C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_2219FA838()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219FA894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = v10;
  v8[54] = v11;
  v8[51] = a7;
  v8[52] = a8;
  v8[49] = a5;
  v8[50] = a6;
  v8[47] = a3;
  v8[48] = a4;
  v8[45] = a1;
  v8[46] = a2;
  return MEMORY[0x2822009F8](sub_2219FA8CC, 0, 0);
}

uint64_t sub_2219FA8CC()
{
  OUTLINED_FUNCTION_57_2();
  v29 = v0;
  if (qword_27CFB73A8 != -1)
  {
    OUTLINED_FUNCTION_14_6(&qword_27CFB73A8);
  }

  v1 = *(v0 + 392);
  v2 = sub_221BCCD88();
  __swift_project_value_buffer(v2, qword_27CFDEE40);
  sub_2219EB748(v1, v0 + 200);

  v3 = sub_221BCCD68();
  v4 = sub_221BCDA98();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 376);
    v5 = *(v0 + 384);
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(v6, v5, &v28);
    *(v7 + 12) = 2080;
    v8 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_0((v0 + 200), *(v0 + 224));
    v9 = OUTLINED_FUNCTION_144();
    v11 = v10(v9, v8);
    v13 = v12;
    sub_2219B397C(v0 + 200);
    sub_2219A6360(v11, v13, &v28);
    OUTLINED_FUNCTION_144();

    *(v7 + 14) = v11;
    _os_log_impl(&dword_221989000, v3, v4, "Attempting to fetch options for parameter %s in intent %s", v7, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_23();
  }

  else
  {

    sub_2219B397C(v0 + 200);
  }

  v15 = *(v0 + 408);
  v14 = *(v0 + 416);
  v16 = *(v0 + 400);
  v18 = *(v0 + 376);
  v17 = *(v0 + 384);
  sub_2219EB748(*(v0 + 392), v0 + 16);
  sub_221A0149C(v16 + 32, v0 + 56);
  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  v21 = *(v16 + 73);
  v22 = objc_opt_self();

  v23 = [v22 sharedInstance];
  v24 = [v23 optInApple];

  *(v0 + 96) = v18;
  *(v0 + 104) = v17;
  *(v0 + 112) = v20;
  *(v0 + 120) = v19;
  *(v0 + 128) = v24;
  *(v0 + 129) = v21;
  *(v0 + 136) = v15;
  *(v0 + 144) = v14;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 440) = v25;
  *v25 = v26;
  v25[1] = sub_2219FABA8;

  return sub_221A03890();
}

uint64_t sub_2219FABA8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 448) = v0;

  sub_221A02084(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FACA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_96_1();
  a24 = v25;
  a25 = v26;
  a23 = v24;
  v28 = *(v24 + 280);
  v27 = *(v24 + 288);
  *(v24 + 456) = v28;
  *(v24 + 464) = v27;
  v29 = *(v24 + 296);
  v30 = *(v24 + 304);
  *(v24 + 472) = v29;
  *(v24 + 480) = v30;
  v31 = *(v24 + 312);
  *(v24 + 313) = *(v24 + 312);
  if (v31 < 0)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_67_0();

    return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, *(&a11 + 1), a13, *(&a13 + 1), a14, a15, a16, a17);
  }

  else
  {
    v32 = *(v24 + 392);
    v55 = *(v24 + 400);
    v56 = v27;
    v34 = v32[3];
    v33 = v32[4];
    __swift_project_boxed_opaque_existential_0(v32, v34);
    v35 = *(v33 + 8);

    v35(&a11, v34, v33);
    v36 = a11;
    sub_2219982C4(a13, *(&a13 + 1));
    a11 = v36;
    a13 = xmmword_221BD0800;
    swift_unknownObjectRetain();
    _IntentValueConversionContext.init(origin:dispatcher:)(&a11, v55, &off_283514A68, v24 + 152);
    *(v24 + 320) = v28;
    *(v24 + 328) = v56;
    *(v24 + 336) = v29;
    *(v24 + 344) = v30;
    *(v24 + 352) = v31 & 1;
    *(v24 + 264) = &type metadata for _IntentValueConversionContext;
    *(v24 + 272) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v37 = swift_allocObject();
    *(v24 + 240) = v37;
    sub_2219EB180(v24 + 152, v37 + 16);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v24 + 488) = v38;
    *v38 = v39;
    v38[1] = sub_2219FAE88;
    OUTLINED_FUNCTION_67_0();

    return sub_2219B01E4(v40, v41, v42, v43, v44);
  }
}

uint64_t sub_2219FAE88()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (!v0)
  {
    v8 = *(v3 + 472);
    v7 = *(v3 + 480);
    v9 = *(v3 + 313);
    __swift_destroy_boxed_opaque_existential_0((v3 + 240));
    v10 = OUTLINED_FUNCTION_70_0();
    sub_2219EC114(v10, v11, v8, v7, v9);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2219FAFB8()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EC114(*(v0 + 456), *(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 313));
  sub_22199C274(v0 + 152);
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_2219FB028()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_83_1();
  sub_22199C274(v0 + 152);
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_2219FB0B0()
{
  OUTLINED_FUNCTION_1_5();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v1[27] = v5;
  memcpy(v1 + 2, v6, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FB124()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = swift_task_alloc();
  *(v0 + 256) = v3;
  v4 = *(v0 + 232);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v0 + 16;
  *(v3 + 40) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 264) = v5;
  *v5 = v6;
  v5[1] = sub_2219FB200;
  v7 = *(v0 + 216);

  return sub_2219F970C(v7, &unk_221BD2DD0, v3);
}

uint64_t sub_2219FB200()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_2219FB31C()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219FB378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v7[17] = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  v7[18] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2219FB444, 0, 0);
}

uint64_t sub_2219FB444()
{
  v28 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_2219EB748(*(v0 + 96), v1);
  sub_221A0149C(v4 + 32, v1 + 40);
  sub_221BCC548();
  v16 = v3[1];
  v17 = *v3;
  v18 = *(v3 + 3);
  v19 = v3[32];
  *(v0 + 16) = *(v3 + 40);
  v20 = *(v3 + 7);
  v21 = *(v3 + 8);
  *(v0 + 32) = *(v3 + 72);
  v22 = v3[89];
  v23 = *(v4 + 74);
  v24[14] = v3[16];
  *&v24[6] = *(v3 + 1);
  *&v25[5] = *(v3 + 40);
  *&v26[7] = *(v3 + 72);
  memcpy(&__src[7], v3 + 96, 0x64uLL);
  __src[110] = 0;
  v5 = *(v4 + 24);
  v14 = *(v4 + 16);
  v15 = *(v4 + 73);
  v6 = objc_opt_self();
  sub_2219A02E8(v0 + 16, v0 + 48, &qword_27CFB8338, &unk_221BD2DE0);
  sub_2219A02E8(v0 + 32, v0 + 64, &qword_27CFB8338, &unk_221BD2DE0);

  v7 = [v6 sharedInstance];
  v8 = [v7 optInApple];

  LOBYTE(v7) = *(v4 + 72);
  v9 = v1 + v2[7];
  *v9 = v17;
  *(v9 + 1) = v16;
  *(v9 + 2) = *v24;
  *(v9 + 9) = *&v24[7];
  *(v9 + 24) = v18;
  *(v9 + 32) = 0;
  *(v9 + 33) = 1;
  *(v9 + 34) = v19;
  *(v9 + 35) = *v25;
  *(v9 + 48) = *&v25[13];
  *(v9 + 56) = v20;
  *(v9 + 64) = 0;
  *(v9 + 72) = v21;
  *(v9 + 80) = 0;
  *(v9 + 96) = *&v26[15];
  *(v9 + 81) = *v26;
  *(v9 + 104) = v22;
  memcpy((v9 + 105), __src, 0x6BuLL);
  *(v9 + 212) = v23;
  *(v9 + 214) = 0;
  v10 = v1 + v2[8];
  *v10 = v14;
  *(v10 + 8) = v5;
  *(v10 + 16) = v8;
  *(v10 + 17) = v15;
  *(v1 + v2[9]) = v7;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 160) = v11;
  *v11 = v12;
  v11[1] = sub_2219FB710;

  return sub_221A040F4();
}

uint64_t sub_2219FB710()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  sub_221A01F60(v5, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2219FB838()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  v6 = *(v0 + 120);
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  *(v5 + 32) = v4;
  *(v5 + 40) = v6;
  *(v5 + 56) = v2;
  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  *v7 = v0;
  v7[1] = sub_2219FB958;
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822008A0](v8);
}

uint64_t sub_2219FB958()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FBA58()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_0_21();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_2219FBAC8()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219FBB2C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 152);

  OUTLINED_FUNCTION_0_21();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_2219FBBA8(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *__src)
{
  v11 = *a4;
  memcpy(__dst, __src, 0xC4uLL);
  return sub_2219FBC2C(a3, v11, a1, a5, a6, __dst);
}

uint64_t sub_2219FBC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6)
{
  v144 = a6;
  v138 = a5;
  v139 = a4;
  v145 = a1;
  v146 = a3;
  v140 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  v130 = *(v6 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v137 = (&v120 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60);
  v128 = *(v10 - 8);
  v11 = *(v128 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v136 = (&v120 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  v126 = *(v14 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v127 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v135 = (&v120 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0);
  v124 = *(v18 - 8);
  v19 = *(v124 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v134 = (&v120 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93D0, &qword_221BD2E10);
  v122 = *(v22 - 8);
  v23 = *(v122 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v123 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v133 = (&v120 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8348, &qword_221BD2E18);
  v121 = *(v26 - 8);
  v27 = *(v121 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v132 = (&v120 - v30);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v142 = *(v149 - 8);
  v141 = *(v142 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = &v120 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  MEMORY[0x28223BE20](v32 - 8);
  v148 = &v120 - v33;
  v34 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v34);
  v36 = (&v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v152, v144, 0xC4uLL);
  sub_221A0150C(v145, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v151[0] = *v36;
      return sub_221BCD788();
    case 2:
      v62 = v132;
      sub_2219A182C(v36, v132, &qword_27CFB8348, &qword_221BD2E18);
      v63 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v63);
      sub_2219A02E8(v62, v28, &qword_27CFB8348, &qword_221BD2E18);
      v64 = v142;
      (*(v142 + 16))(v147, v146, v149);
      v65 = (*(v121 + 80) + 48) & ~*(v121 + 80);
      v66 = (v27 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
      v68 = (*(v64 + 80) + v67 + 8) & ~*(v64 + 80);
      v69 = (v141 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
      v70 = swift_allocObject();
      *(v70 + 2) = 0;
      *(v70 + 3) = 0;
      v71 = v138;
      *(v70 + 4) = v139;
      *(v70 + 5) = v71;
      sub_2219A182C(v28, &v70[v65], &qword_27CFB8348, &qword_221BD2E18);
      *&v70[v66] = v140;
      *&v70[v67] = v143;
      (*(v64 + 32))(&v70[v68], v147, v149);
      memcpy(&v70[v69], v152, 0xC4uLL);

      swift_unknownObjectRetain();

      sub_2219EB864(v152, v151);
      sub_2219F8C64();

      v48 = v132;
      v49 = &qword_27CFB8348;
      v50 = &qword_221BD2E18;
      return sub_221A01F0C(v48, v49, v50);
    case 3:
      v72 = v135;
      sub_2219A182C(v36, v135, &unk_27CFB93F0, &unk_221BD2E00);
      v73 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v73);
      v74 = v127;
      sub_2219A02E8(v72, v127, &unk_27CFB93F0, &unk_221BD2E00);
      v75 = v142;
      (*(v142 + 16))(v147, v146, v149);
      v76 = (*(v126 + 80) + 48) & ~*(v126 + 80);
      v77 = (v15 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
      v78 = (v77 + 15) & 0xFFFFFFFFFFFFFFF8;
      v79 = (*(v75 + 80) + v78 + 8) & ~*(v75 + 80);
      v80 = (v141 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = swift_allocObject();
      *(v81 + 2) = 0;
      *(v81 + 3) = 0;
      v82 = v138;
      *(v81 + 4) = v139;
      *(v81 + 5) = v82;
      sub_2219A182C(v74, &v81[v76], &unk_27CFB93F0, &unk_221BD2E00);
      *&v81[v77] = v140;
      *&v81[v78] = v143;
      (*(v75 + 32))(&v81[v79], v147, v149);
      memcpy(&v81[v80], v152, 0xC4uLL);

      swift_unknownObjectRetain();

      sub_2219EB864(v152, v151);
      sub_2219F8C64();

      v48 = v135;
      v49 = &unk_27CFB93F0;
      v50 = &unk_221BD2E00;
      return sub_221A01F0C(v48, v49, v50);
    case 4:
      v51 = v133;
      sub_2219A182C(v36, v133, &unk_27CFB93D0, &qword_221BD2E10);
      v52 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v52);
      v53 = v123;
      sub_2219A02E8(v51, v123, &unk_27CFB93D0, &qword_221BD2E10);
      v54 = v142;
      (*(v142 + 16))(v147, v146, v149);
      v55 = (*(v122 + 80) + 48) & ~*(v122 + 80);
      v56 = (v23 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = (*(v54 + 80) + v57 + 8) & ~*(v54 + 80);
      v59 = (v141 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      *(v60 + 2) = 0;
      *(v60 + 3) = 0;
      v61 = v138;
      *(v60 + 4) = v139;
      *(v60 + 5) = v61;
      sub_2219A182C(v53, &v60[v55], &unk_27CFB93D0, &qword_221BD2E10);
      *&v60[v56] = v140;
      *&v60[v57] = v143;
      (*(v54 + 32))(&v60[v58], v147, v149);
      memcpy(&v60[v59], v152, 0xC4uLL);

      swift_unknownObjectRetain();

      sub_2219EB864(v152, v151);
      sub_2219F8C64();

      v48 = v133;
      v49 = &unk_27CFB93D0;
      v50 = &qword_221BD2E10;
      return sub_221A01F0C(v48, v49, v50);
    case 5:
      v95 = v136;
      sub_2219A182C(v36, v136, &unk_27CFB93A0, &unk_221BE4F60);
      v96 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v96);
      v97 = v129;
      sub_2219A02E8(v95, v129, &unk_27CFB93A0, &unk_221BE4F60);
      v98 = v142;
      (*(v142 + 16))(v147, v146, v149);
      v99 = (*(v128 + 80) + 48) & ~*(v128 + 80);
      v100 = (v11 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
      v101 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
      v102 = (*(v98 + 80) + v101 + 8) & ~*(v98 + 80);
      v103 = (v141 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
      v104 = swift_allocObject();
      *(v104 + 2) = 0;
      *(v104 + 3) = 0;
      v105 = v138;
      *(v104 + 4) = v139;
      *(v104 + 5) = v105;
      sub_2219A182C(v97, &v104[v99], &unk_27CFB93A0, &unk_221BE4F60);
      *&v104[v100] = v140;
      *&v104[v101] = v143;
      (*(v98 + 32))(&v104[v102], v147, v149);
      memcpy(&v104[v103], v152, 0xC4uLL);

      swift_unknownObjectRetain();

      sub_2219EB864(v152, v151);
      sub_2219F8C64();

      v48 = v136;
      v49 = &unk_27CFB93A0;
      v50 = &unk_221BE4F60;
      return sub_221A01F0C(v48, v49, v50);
    case 6:
      v106 = v134;
      sub_2219A182C(v36, v134, &qword_27CFB8340, &unk_221BE57E0);
      v107 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v107);
      v108 = v125;
      sub_2219A02E8(v106, v125, &qword_27CFB8340, &unk_221BE57E0);
      v109 = v142;
      (*(v142 + 16))(v147, v146, v149);
      v110 = (*(v124 + 80) + 48) & ~*(v124 + 80);
      v111 = (v19 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF8;
      v113 = (*(v109 + 80) + v112 + 8) & ~*(v109 + 80);
      v114 = (v141 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
      v115 = swift_allocObject();
      *(v115 + 2) = 0;
      *(v115 + 3) = 0;
      v116 = v138;
      *(v115 + 4) = v139;
      *(v115 + 5) = v116;
      sub_2219A182C(v108, &v115[v110], &qword_27CFB8340, &unk_221BE57E0);
      *&v115[v111] = v140;
      *&v115[v112] = v143;
      (*(v109 + 32))(&v115[v113], v147, v149);
      memcpy(&v115[v114], v152, 0xC4uLL);

      swift_unknownObjectRetain();

      sub_2219EB864(v152, v151);
      sub_2219F8C64();

      v48 = v134;
      v49 = &qword_27CFB8340;
      v50 = &unk_221BE57E0;
      return sub_221A01F0C(v48, v49, v50);
    case 7:
      v83 = v137;
      sub_2219A182C(v36, v137, &unk_27CFB93E0, &unk_221BD2DF0);
      v84 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v84);
      v85 = v83;
      v86 = v131;
      sub_2219A02E8(v85, v131, &unk_27CFB93E0, &unk_221BD2DF0);
      v87 = v142;
      (*(v142 + 16))(v147, v146, v149);
      v88 = (*(v130 + 80) + 40) & ~*(v130 + 80);
      v89 = (v7 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
      v90 = (*(v87 + 80) + v89 + 8) & ~*(v87 + 80);
      v91 = (v141 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = swift_allocObject();
      *(v92 + 2) = 0;
      *(v92 + 3) = 0;
      *(v92 + 4) = v140;
      sub_2219A182C(v86, &v92[v88], &unk_27CFB93E0, &unk_221BD2DF0);
      *&v92[v89] = v143;
      (*(v87 + 32))(&v92[v90], v147, v149);
      v93 = &v92[v91];
      v94 = v138;
      *v93 = v139;
      v93[1] = v94;
      memcpy(&v92[(v91 + 23) & 0xFFFFFFFFFFFFFFF8], v152, 0xC4uLL);

      swift_unknownObjectRetain();

      sub_2219EB864(v152, v151);
      sub_2219F8C64();

      v48 = v137;
      v49 = &unk_27CFB93E0;
      v50 = &unk_221BD2DF0;
      return sub_221A01F0C(v48, v49, v50);
    case 8:
      sub_2219A1218(EnumCaseMultiPayload, v38, v39);
      v118 = swift_allocError();
      *v119 = 4;
      *(v119 + 8) = 0;
      *(v119 + 16) = 0;
      *(v119 + 24) = 0;
      *(v119 + 32) = 5;
      v151[0] = v118;
      return sub_221BCD788();
    default:
      v40 = v36[28];
      v41 = v36[29];
      memcpy(v151, v36, sizeof(v151));
      v42 = sub_221BCD7F8();
      __swift_storeEnumTagSinglePayload(v148, 1, 1, v42);
      sub_2219A02E8(v151, v150, &unk_27CFBB7A0, &qword_221BD2930);
      v43 = v142;
      v44 = v147;
      v45 = v149;
      (*(v142 + 16))(v147, v146, v149);
      v46 = (*(v43 + 80) + 280) & ~*(v43 + 80);
      v47 = swift_allocObject();
      *(v47 + 2) = 0;
      *(v47 + 3) = 0;
      *(v47 + 4) = v40;
      *(v47 + 5) = v41;
      *(v47 + 6) = v143;
      memcpy(v47 + 56, v150, 0xE0uLL);
      (*(v43 + 32))(&v47[v46], v44, v45);

      sub_2219F7E3C();

      v48 = v151;
      v49 = &unk_27CFBB7A0;
      v50 = &qword_221BD2930;
      return sub_221A01F0C(v48, v49, v50);
  }
}

uint64_t sub_2219FCD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[78] = a8;
  v8[77] = a7;
  v8[76] = a6;
  v8[75] = a5;
  v8[74] = a4;
  return MEMORY[0x2822009F8](sub_2219FCD64, 0, 0);
}

uint64_t sub_2219FCD64()
{
  OUTLINED_FUNCTION_67();
  v8 = v0;
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  *&v7[0] = v0[74];
  *(&v7[0] + 1) = v3;
  v7[1] = xmmword_221BD0800;

  _IntentValueConversionContext.init(origin:dispatcher:)(v7, v2, &off_283514A68, (v0 + 68));
  sub_2219A02E8(v1, (v0 + 7), &unk_27CFBB7A0, &qword_221BD2930);
  v0[5] = &type metadata for _IntentValueConversionContext;
  v0[6] = &protocol witness table for _IntentValueConversionContext;
  OUTLINED_FUNCTION_49();
  v4 = swift_allocObject();
  v0[2] = v4;
  sub_2219EB180((v0 + 68), v4 + 16);
  sub_2219A02E8((v0 + 2), (v0 + 35), &qword_27CFB8048, &qword_221BE5700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  sub_221BCD798();
  sub_221A01F0C((v0 + 2), &qword_27CFB8048, &qword_221BE5700);
  sub_22199C274((v0 + 68));
  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_2219FCEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v16;
  v8[7] = v17;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0);
  v11 = swift_task_alloc();
  v8[9] = v11;
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_2219FCFF8;

  return sub_221B240E4(v11, a6, ObjectType, a5);
}

uint64_t sub_2219FCFF8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_0_5();
  *v2 = v0;
  *v2 = *v1;

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  v4[1] = sub_2219FD14C;

  return sub_221A049CC();
}

uint64_t sub_2219FD14C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FD2CC()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_46_1();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_38();

  return v3();
}

uint64_t sub_2219FD33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v16;
  v8[7] = v17;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0);
  v11 = swift_task_alloc();
  v8[9] = v11;
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_2219FD474;

  return sub_221B24510(v11, a6, ObjectType, a5);
}

uint64_t sub_2219FD474()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_0_5();
  *v2 = v0;
  *v2 = *v1;

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  v4[1] = sub_2219FD5C8;

  return sub_221A04F1C();
}

uint64_t sub_2219FD5C8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FD748()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_45_1();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_38();

  return v3();
}

uint64_t sub_2219FD7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v16;
  v8[7] = v17;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0);
  v11 = swift_task_alloc();
  v8[9] = v11;
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_2219FD8F0;

  return sub_221B24998(v11, a6, ObjectType, a5);
}

uint64_t sub_2219FD8F0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_0_5();
  *v2 = v0;
  *v2 = *v1;

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  v4[1] = sub_2219FDA44;

  return sub_221A05364();
}

uint64_t sub_2219FDA44()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FDBC4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_44_1();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_38();

  return v3();
}

uint64_t sub_2219FDC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v16;
  v8[7] = v17;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
  v11 = swift_task_alloc();
  v8[9] = v11;
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_2219FDD6C;

  return sub_221B24DEC(v11, a6, ObjectType, a5);
}

uint64_t sub_2219FDD6C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_0_5();
  *v2 = v0;
  *v2 = *v1;

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  v4[1] = sub_2219FDEC0;

  return sub_221A057AC();
}

uint64_t sub_2219FDEC0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FE040()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_43_2();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_38();

  return v3();
}

uint64_t sub_2219FE0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v16;
  v8[7] = v17;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a4;
  v8[3] = a5;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[8] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0);
  v11 = swift_task_alloc();
  v8[9] = v11;
  ObjectType = swift_getObjectType();
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_2219FE1E8;

  return sub_221B25358(v11, a6, ObjectType, a5);
}

uint64_t sub_2219FE1E8()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  OUTLINED_FUNCTION_0_5();
  *v2 = v0;
  *v2 = *v1;

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_37(v3);
  *v4 = v5;
  v4[1] = sub_2219FE33C;

  return sub_221A05BF4();
}

uint64_t sub_2219FE33C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FE4BC()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_42_1();
  sub_221A01F60(v1, v2);

  OUTLINED_FUNCTION_38();

  return v3();
}

uint64_t sub_2219FE52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = v12;
  v8[18] = v13;
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  v8[19] = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  v8[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2219FE6EC, 0, 0);
}

uint64_t sub_2219FE6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, int *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_96_1();
  v18 = *(v17 + 248);
  v20 = *(v17 + 232);
  v19 = *(v17 + 240);
  v21 = *(v17 + 224);
  v22 = *(v17 + 136);
  v23 = *(v17 + 112);
  v24 = *(v17 + 120);
  v25 = *(v17 + 104);
  sub_2219A02E8(v25, *(v17 + 256), &unk_27CFB93E0, &unk_221BD2DF0);
  (*(v20 + 16))(v19, v24, v21);
  ObjectType = swift_getObjectType();
  v27 = (v25 + *(v18 + 28));
  v29 = v27[13];
  v28 = v27[14];
  *(v17 + 40) = &type metadata for AnyEntityQueryDispatching;
  *(v17 + 48) = &protocol witness table for AnyEntityQueryDispatching;
  OUTLINED_FUNCTION_49();
  v30 = swift_allocObject();
  *(v17 + 16) = v30;
  *(v30 + 16) = v23;
  *(v30 + 24) = &off_283514A68;
  *(v30 + 32) = v29;
  *(v30 + 40) = v28;
  *(v30 + 48) = xmmword_221BD0800;
  v31 = *(v22 + 24);

  v31(v27 + 2, v27 + 7, v17 + 16, ObjectType, v22);
  v32 = OUTLINED_FUNCTION_144();
  __swift_destroy_boxed_opaque_existential_0(v32);
  v33 = v27[12];
  v34 = OUTLINED_FUNCTION_0_0();
  sub_2219C0C28(v34, v35, v36);

  *(v17 + 264) = a11;
  *(v17 + 280) = a12;
  *(v17 + 288) = a13;
  *(v17 + 296) = a14;
  if (a13)
  {
    v64 = a13 + *a13;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v17 + 304) = v40;
    *v40 = v41;
    v40[1] = sub_2219FEA0C;
    OUTLINED_FUNCTION_67_0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v64, a11, *(&a11 + 1), a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v51 = *(v17 + 256);
    v52 = *(v17 + 184);
    v53 = *(v17 + 152);
    v54 = sub_2219A1218(v37, v38, v39);
    *(v17 + 320) = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v54);
    *v55 = v33;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    *(v55 + 24) = 0;
    *(v55 + 32) = 2;
    v56 = v33;
    v57 = sub_221BCC328();
    *(v17 + 328) = v57;
    sub_221BCC558();
    OUTLINED_FUNCTION_2_1();
    (*(v58 + 16))(v52, v51);
    v59 = v52 + *(v53 + 20);
    *v59 = v57;
    *(v59 + 8) = 1;
    v60 = v57;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v17 + 336) = v61;
    *v61 = v62;
    v61[1] = sub_2219FEB04;
    OUTLINED_FUNCTION_67_0();

    return sub_221A06048();
  }
}

uint64_t sub_2219FEA0C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FEB04()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FEC14()
{
  v15 = v0;
  v1 = *(v0 + 328);
  v12 = *(v0 + 256);
  v13 = *(v0 + 320);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 136);
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);
  memcpy(__dst, *(v0 + 144), 0xC4uLL);
  sub_2219FBC2C(v5, v8, v3, v7, v6, __dst);

  OUTLINED_FUNCTION_0_21();
  sub_221A01F60(v5, v9);
  (*(v2 + 8))(v3, v4);
  sub_221A01F0C(v12, &unk_27CFB93E0, &unk_221BD2DF0);

  OUTLINED_FUNCTION_27_4();

  OUTLINED_FUNCTION_4_3();

  return v10();
}

void sub_2219FED68()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 224);

  (*(v4 + 8))(v3, v5);
  sub_221A01F0C(v2, &unk_27CFB93E0, &unk_221BD2DF0);

  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2219FEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_67();
  v19 = v18[10];
  v20 = v18[11];
  __swift_project_boxed_opaque_existential_0(v18 + 7, v19);
  v21 = (*(v20 + 16))(v19, v20);
  v18[44] = v21;
  v22 = v18[32];
  v23 = v18[19];
  if (v21)
  {
    v24 = v21;
    v25 = v18[21];
    __swift_destroy_boxed_opaque_existential_0(v18 + 7);
    v26 = sub_221BCC558();
    OUTLINED_FUNCTION_2_1();
    v28 = *(v27 + 16);
    v29 = v24;
    v28(v25, v22, v26);
    v30 = v25 + *(v23 + 20);
    *v30 = v24;
    *(v30 + 8) = 0;
    v31 = v29;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v18[45] = v32;
    *v32 = v33;
    v32[1] = sub_2219FF090;
  }

  else
  {
    v34 = __swift_destroy_boxed_opaque_existential_0(v18 + 7);
    v37 = sub_2219A1218(v34, v35, v36);
    v18[47] = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v37);
    *v38 = 10;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = 5;
    v39 = sub_221BCC328();
    v18[48] = v39;
    sub_221BCC558();
    OUTLINED_FUNCTION_2_1();
    v40 = OUTLINED_FUNCTION_0_0();
    v41(v40);
    OUTLINED_FUNCTION_32_3(*(v23 + 20));
    v42 = v39;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v18[49] = v43;
    *v43 = v44;
    v43[1] = sub_2219FF258;
  }

  return sub_221A06048();
}

uint64_t sub_2219FF090()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 368) = v0;

  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_8_0();
  v21 = OUTLINED_FUNCTION_85_0(*(v19 + 312));
  OUTLINED_FUNCTION_84_1(v21);
  OUTLINED_FUNCTION_2_1();
  v22 = OUTLINED_FUNCTION_0_0();
  v23(v22);
  OUTLINED_FUNCTION_32_3(*(v20 + 20));
  v24 = v18;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v19 + 424) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_12_3(v25);

  return sub_221A06048();
}

uint64_t sub_2219FF258()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FF368(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8[48];
  v10 = v8[29];
  v11 = v8[30];
  v12 = v8[28];
  v13 = v8[26];
  v14 = OUTLINED_FUNCTION_77_1(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v8[32], v8[33], v8[47], v8[34], v8[35], v8[36], v8[37]);
  OUTLINED_FUNCTION_76(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v29, v31, v33, v35, v37, v39, v41);

  OUTLINED_FUNCTION_0_21();
  sub_221A01F60(v13, v22);
  (*(v10 + 8))(v11, v12);
  sub_221A01F0C(v30, &unk_27CFB93E0, &unk_221BD2DF0);

  sub_2219F6ED0(v32, v36, v38, v40, v42);
  OUTLINED_FUNCTION_27_4();

  OUTLINED_FUNCTION_4_3();

  return v23();
}

uint64_t sub_2219FF4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_8_0();
  v21 = *(v19 + 376);

  v22 = OUTLINED_FUNCTION_85_0(*(v19 + 400));
  OUTLINED_FUNCTION_84_1(v22);
  OUTLINED_FUNCTION_2_1();
  v23 = OUTLINED_FUNCTION_0_0();
  v24(v23);
  OUTLINED_FUNCTION_32_3(*(v20 + 20));
  v25 = v18;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v19 + 424) = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_12_3(v26);

  return sub_221A06048();
}

uint64_t sub_2219FF57C()
{
  v19 = v0;
  v1 = *(v0 + 352);
  v16 = *(v0 + 288);
  v17 = *(v0 + 296);
  v14 = *(v0 + 272);
  v15 = *(v0 + 280);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 136);
  v7 = *(v0 + 128);
  v8 = *(v0 + 96);
  memcpy(__dst, *(v0 + 144), 0xC4uLL);
  sub_2219FBC2C(v5, v8, v3, v7, v6, __dst);

  OUTLINED_FUNCTION_0_21();
  sub_221A01F60(v5, v9);
  (*(v2 + 8))(v3, v4);
  sub_221A01F0C(v12, &unk_27CFB93E0, &unk_221BD2DF0);
  sub_2219F6ED0(v13, v14, v15, v16, v17);

  OUTLINED_FUNCTION_27_4();

  OUTLINED_FUNCTION_4_3();

  return v10();
}

uint64_t sub_2219FF6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_8_0();
  v21 = v19[44];

  v22 = OUTLINED_FUNCTION_85_0(v19[46]);
  OUTLINED_FUNCTION_84_1(v22);
  OUTLINED_FUNCTION_2_1();
  v23 = OUTLINED_FUNCTION_0_0();
  v24(v23);
  OUTLINED_FUNCTION_32_3(*(v20 + 20));
  v25 = v18;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v19[53] = v26;
  *v26 = v27;
  OUTLINED_FUNCTION_12_3(v26);

  return sub_221A06048();
}

uint64_t sub_2219FF7B4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2219FF8C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8[52];
  v10 = v8[29];
  v11 = v8[30];
  v12 = v8[28];
  v13 = v8[24];
  v14 = OUTLINED_FUNCTION_77_1(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v8[32], v8[33], v8[34], v8[35], v8[36], v8[37], v8[51]);
  OUTLINED_FUNCTION_76(v14, v15, v16, v17, v18, v19, v20, v21, v26, v28, v29, v31, v33, v35, v37, v39, v41);

  OUTLINED_FUNCTION_0_21();
  sub_221A01F60(v13, v22);
  (*(v10 + 8))(v11, v12);
  sub_221A01F0C(v30, &unk_27CFB93E0, &unk_221BD2DF0);
  sub_2219F6ED0(v32, v34, v36, v38, v40);

  OUTLINED_FUNCTION_27_4();

  OUTLINED_FUNCTION_4_3();

  return v23();
}

void sub_2219FFA10()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);
  v12 = *(v0 + 296);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);

  (*(v7 + 8))(v8, v9);
  sub_221A01F0C(v6, &unk_27CFB93E0, &unk_221BD2DF0);

  sub_2219F6ED0(v5, v4, v3, v2, v12);
  OUTLINED_FUNCTION_71_0();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2219FFB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 80) = *a3;
  *(v4 + 40) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_2219FFB60()
{
  OUTLINED_FUNCTION_14_3();
  v9 = *(v0 + 40);
  v1 = *(v0 + 80);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v9;
  *(v4 + 48) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 64) = v5;
  *v5 = v6;
  v5[1] = sub_2219FFC4C;
  v7 = *(v0 + 16);

  return sub_2219F9B40(v7, &unk_221BD2DA8, v4);
}

uint64_t sub_2219FFC4C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_2219FFD68()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_2219FFDC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 344) = a6;
  *(v7 + 352) = a7;
  *(v7 + 226) = a4;
  *(v7 + 328) = a3;
  *(v7 + 336) = a5;
  *(v7 + 312) = a1;
  *(v7 + 320) = a2;
  return MEMORY[0x2822009F8](sub_2219FFDF0, 0, 0);
}

uint64_t sub_2219FFDF0()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 328);
  v18 = *(v0 + 336);
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v1 + 24);
  v15 = *(v1 + 16);
  v16 = *(v1 + 73);
  v17 = *(v0 + 226);
  v9 = objc_opt_self();

  sub_221998178(v6, v7);

  v10 = [v9 sharedInstance];
  v11 = [v10 optInApple];

  sub_2219AC930((v3 + 4), v0 + 96);
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 48) = v17;
  *(v0 + 56) = v18;
  *(v0 + 64) = v2;
  *(v0 + 72) = v15;
  *(v0 + 80) = v8;
  *(v0 + 88) = v11;
  *(v0 + 89) = v16;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 360) = v12;
  *v12 = v13;
  v12[1] = sub_2219FFF7C;

  return sub_221A0649C();
}

uint64_t sub_2219FFF7C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 368) = v0;

  sub_221A00F98(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A0007C()
{
  OUTLINED_FUNCTION_104();
  if (*(v0 + 264))
  {
    swift_willThrow();
  }

  else
  {
    v1 = *(v0 + 232);
    v2 = [v1 valueType];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v3 = [v1 value];
      sub_221BCDCF8();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
      v4 = swift_dynamicCast();
      if (v4)
      {
        v7 = *(v0 + 352);
        v8 = *(v0 + 328);
        v9 = *(v0 + 312);

        v10 = *(v0 + 304);
        v11 = swift_task_alloc();
        *(v11 + 16) = v8;
        *(v11 + 24) = v7;
        v12 = sub_2219F7C68(sub_221A01094, v11, v10);
        sub_221A01040(v0 + 232);

        v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8030, &qword_221BD28E0);
        v9[4] = sub_221A010B0();
        *v9 = v12;
        OUTLINED_FUNCTION_4_3();
        goto LABEL_10;
      }

      v19 = sub_221A00FEC(v4, v5, v6);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.SerializationError, v19);
      OUTLINED_FUNCTION_86_0(v20, &type metadata for AnyQueryOutput);
      sub_221A01040(v0 + 232);
    }

    else
    {

      v17 = sub_221A00FEC(v14, v15, v16);
      OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.SerializationError, v17);
      OUTLINED_FUNCTION_86_0(v18, &type metadata for AnyQueryOutput);
      sub_221A01040(v0 + 232);
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_10:

  return v13();
}

void sub_221A002E0(id *a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1;

  sub_221998178(v4, v5);

  sub_22199BCCC(v3);
}

uint64_t sub_221A0037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a2;
  v6[4] = a4;
  v6[2] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221A00398()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  sub_221BCDC98();
  OUTLINED_FUNCTION_39_2();
  *v4 = v5;
  v4[1] = sub_221A00480;
  v6 = *(v0 + 16);

  return sub_2219F9B40(v6, &unk_221BD2D80, v3);
}

uint64_t sub_221A00480()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221A0059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  return MEMORY[0x2822009F8](sub_221A005C4, 0, 0);
}

uint64_t sub_221A005C4()
{
  OUTLINED_FUNCTION_57_2();
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = v1[7];
  *(v0 + 264) = v3;
  v4 = v1[8];
  *(v0 + 272) = v4;
  v5 = v1[9];
  v6 = v1[10];
  sub_221A0149C((v1 + 2), v0 + 48);
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v2 + 24);
  v15 = *(v2 + 16);
  v16 = *(v2 + 73);
  v10 = objc_opt_self();

  sub_221998178(v5, v6);

  v11 = [v10 sharedInstance];
  v12 = [v11 optInApple];

  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v5;
  *(v0 + 40) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v15;
  *(v0 + 112) = v9;
  *(v0 + 120) = v12;
  *(v0 + 121) = v16;
  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_221A00744;

  return sub_221A06D90();
}

uint64_t sub_221A00744()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 288) = v7;
  *(v5 + 296) = v0;

  if (!v0)
  {
    *(v5 + 122) = v3;
  }

  sub_221A00E80(v5 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A00868()
{
  OUTLINED_FUNCTION_104();
  v11 = v0;
  if (*(v0 + 122))
  {
    swift_willThrow();
    OUTLINED_FUNCTION_25();
  }

  else
  {
    v2 = *(v0 + 288);
    v3 = *(v0 + 272);
    v5 = *(v0 + 248);
    v4 = *(v0 + 256);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    *&v10[0] = *(v0 + 264);
    *(&v10[0] + 1) = v3;
    v10[1] = xmmword_221BD0800;

    _IntentValueConversionContext.init(origin:dispatcher:)(v10, v6, &off_283514A68, v0 + 128);
    *(v0 + 200) = &type metadata for _IntentValueConversionContext;
    *(v0 + 208) = &protocol witness table for _IntentValueConversionContext;
    OUTLINED_FUNCTION_49();
    v8 = swift_allocObject();
    *(v0 + 176) = v8;
    sub_2219EB180(v0 + 128, v8 + 16);
    sub_221B8BC18(v2, v5, v4, v7);

    sub_22199C274(v0 + 128);
    __swift_destroy_boxed_opaque_existential_0((v0 + 176));
    OUTLINED_FUNCTION_4_3();
  }

  return v1();
}

uint64_t sub_221A009A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2219CA70C;

  return sub_2219F9EB8(a1, a2);
}

uint64_t sub_221A00A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2219EC5F0;

  return sub_2219FA5C8(a1, a2, a3, a4, a5, a6, v16, a8);
}

uint64_t sub_221A00B44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_2219FB0B0();
}

uint64_t sub_221A00C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_2219FFB38(a1, a2, a3);
}

uint64_t sub_221A00CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221A0037C(a1, a2, v10, a4, a5);
}

uint64_t sub_221A00D7C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_50_2(v6);

  return sub_221A0059C(v8, v9, v4, v3, v1, v2);
}

uint64_t sub_221A00ED4()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_15(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_50_2(v7);

  return sub_2219FFDC4(v9, v10, v1, v2, v3, v4, v5);
}

unint64_t sub_221A00FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB610;
  if (!qword_27CFBB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB610);
  }

  return result;
}

unint64_t sub_221A010B0()
{
  result = qword_27CFB8038;
  if (!qword_27CFB8038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB8030, &qword_221BD28E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8038);
  }

  return result;
}

uint64_t sub_221A01114(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221A02528;

  return v6(a1);
}

uint64_t sub_221A0120C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_221A01304;

  return v6(a1);
}

uint64_t sub_221A01304()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221A013E4()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_50_2(v4);
  OUTLINED_FUNCTION_24_2();

  return sub_2219FB378(v6, v7, v8, v9, v10, v1, v2);
}

uint64_t sub_221A0149C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_0_6();
  (*v3)(a2);
  return a2;
}

uint64_t sub_221A0150C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221A01570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_58_1();
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_73_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93E0, &unk_221BD2DF0);
  OUTLINED_FUNCTION_18_4(v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  OUTLINED_FUNCTION_18_4(v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_31_2(v13);
  *v14 = v15;
  v14[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_40_1();

  return sub_2219FE52C(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221A01D78()
{
  OUTLINED_FUNCTION_67();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  OUTLINED_FUNCTION_8_1(v1);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_15(v3);
  *v4 = v5;
  v4[1] = sub_2219CA70C;
  OUTLINED_FUNCTION_24_2();

  return sub_2219FCD34(v6, v7, v8, v9, v10, v2, v11, v12);
}

uint64_t sub_221A01E7C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_12(v1);

  return v4(v3);
}

uint64_t sub_221A01F0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_221A01F60(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_11_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_221A01FB4()
{
  OUTLINED_FUNCTION_104();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_24_2();
  OUTLINED_FUNCTION_95_0();

  return sub_2219FA894(v3, v4, v5, v6, v7, v8, v9, v10);
}

void sub_221A0212C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  if (a5 < 0)
  {
  }

  else
  {

    sub_2219982C4(a3, a4);
  }
}

uint64_t sub_221A02184(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_221A02278;

  return v5(v2 + 32);
}

uint64_t sub_221A02278()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = v1;
  OUTLINED_FUNCTION_17_3();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_4_3();

  return v8();
}

uint64_t sub_221A0236C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_12(v1);

  return v4(v3);
}

uint64_t sub_221A023FC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_2_15(v1);
  *v2 = v3;
  v2[1] = sub_2219CA70C;

  return sub_2219F87F8(v0);
}

uint64_t sub_221A02498()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_63_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_3_12(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  return a11;
}

__n128 OUTLINED_FUNCTION_7_5()
{
  v1 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v1;
  result = *(v0 + 89);
  *(v0 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_6()
{
}

uint64_t OUTLINED_FUNCTION_10_4()
{

  return sub_221A01F60(v0, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse);
}

uint64_t OUTLINED_FUNCTION_14_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_2219FBC2C(v2, v4, v3, v6, v5, va);
}

void *OUTLINED_FUNCTION_23_3(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v11 = *(v9 + 56);

  return memcpy(va, v11, 0xC4uLL);
}

uint64_t OUTLINED_FUNCTION_27_4()
{
}

void OUTLINED_FUNCTION_32_3(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 1;
}

void OUTLINED_FUNCTION_35_2()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

void OUTLINED_FUNCTION_36_2()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

void OUTLINED_FUNCTION_48_2(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_71_0()
{
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  return sub_2219FBC2C(v17, v20, v21, v18, v19, va);
}

void *OUTLINED_FUNCTION_77_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  v19 = *(v17 + 144);

  return memcpy(va, v19, 0xC4uLL);
}

void OUTLINED_FUNCTION_83_1()
{

  sub_2219EC114(v3, v2, v0, v1, v4);
}

uint64_t OUTLINED_FUNCTION_84_1(uint64_t a1)
{
  *(v1 + 416) = a1;

  return sub_221BCC558();
}

uint64_t OUTLINED_FUNCTION_85_0(uint64_t a1)
{
  *(v1 + 408) = a1;

  return sub_221BCC328();
}

uint64_t OUTLINED_FUNCTION_86_0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_87_1()
{

  return sub_221BCC558();
}

void *OUTLINED_FUNCTION_88_1(void *a1)
{

  return memcpy(a1, (v1 - 216), 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_89_0()
{
  sub_2219982C4(v1, v0);
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1)
{

  return sub_221BCD778();
}

uint64_t OUTLINED_FUNCTION_91_1()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_98_1()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_99_0()
{
}

uint64_t sub_221A02CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0;
  *(v4 + 24) = MEMORY[0x277D84F98];
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 56) = a4;
  return v4;
}

uint64_t sub_221A02CC8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 240) = v4;
  v5 = sub_221BCC7A8();
  *(v1 + 264) = v5;
  OUTLINED_FUNCTION_18_4(v5);
  *(v1 + 272) = v6;
  *(v1 + 280) = OUTLINED_FUNCTION_210();
  v7 = sub_221BCC6C8();
  *(v1 + 288) = v7;
  OUTLINED_FUNCTION_18_4(v7);
  *(v1 + 296) = v8;
  *(v1 + 304) = OUTLINED_FUNCTION_210();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8358, &qword_221BD2F40);
  *(v1 + 312) = v9;
  OUTLINED_FUNCTION_18_4(v9);
  *(v1 + 320) = v10;
  *(v1 + 328) = OUTLINED_FUNCTION_210();
  v11 = sub_221BCC768();
  *(v1 + 336) = v11;
  OUTLINED_FUNCTION_18_4(v11);
  *(v1 + 344) = v12;
  *(v1 + 352) = OUTLINED_FUNCTION_210();
  v13 = *(v3 + 16);
  *(v1 + 16) = *v3;
  *(v1 + 32) = v13;
  *(v1 + 48) = *(v3 + 32);
  *(v1 + 64) = *(v3 + 48);
  v14 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A02E7C()
{
  OUTLINED_FUNCTION_67();
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0 + 352);
    v2 = *(v0 + 248);
    OUTLINED_FUNCTION_46_2();
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    *(v0 + 176) = *(v2 + 24);
    *(v0 + 144) = v4;
    *(v0 + 160) = v5;
    *(v0 + 128) = v3;
    sub_221A0871C(v0 + 16, v0 + 184);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    v6 = sub_221BCC6E8();
    v9 = sub_221A08778(v6, v7, v8);
    v12 = sub_221A087CC(v9, v10, v11);
    v13 = OUTLINED_FUNCTION_31_3(v12);
    if (v1)
    {
      v19 = OUTLINED_FUNCTION_59_2();
      v20(v19);
      v21 = OUTLINED_FUNCTION_70();
      v22(v21);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_122_1();

      __asm { BRAA            X1, X16 }
    }

    v16 = sub_221A08820(v13, v14, v15);
    sub_221A08874(v16, v17, v18);
    OUTLINED_FUNCTION_24_3();
    sub_221BCC738();
    OUTLINED_FUNCTION_99_1();
    sub_221BCC6D8();
    v35 = swift_task_alloc();
    *(v0 + 360) = v35;
    type metadata accessor for RunnerServiceDispatcherActor(0);
    OUTLINED_FUNCTION_0_22();
    sub_221A0E654(v36, v37, &protocol conformance descriptor for RunnerServiceDispatcherActor);
    OUTLINED_FUNCTION_58_2();
    *v35 = v38;
    v35[1] = sub_221A0315C;
    OUTLINED_FUNCTION_74_1(v39);
    OUTLINED_FUNCTION_6_8(v40);
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2821E7748](v41);
  }

  else
  {
    v25 = *(v0 + 248);
    v27 = *(v25 + 16);
    v26 = *(v25 + 32);
    v28 = *(v25 + 48);
    *(v0 + 72) = *v25;
    *(v0 + 120) = v28;
    *(v0 + 104) = v26;
    *(v0 + 88) = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 368) = v29;
    *v29 = v30;
    v29[1] = sub_221A03328;
    OUTLINED_FUNCTION_122_1();

    return sub_221A08608(v31, v32);
  }
}

uint64_t sub_221A0315C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A03258()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221A03328()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_70_1();

  return v3();
}

uint64_t sub_221A0347C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_8_7();
  v12 = sub_221A0E654(v10, v11, MEMORY[0x277D7E9B0]);
  v13 = OUTLINED_FUNCTION_90_2(v12);
  v15 = OUTLINED_FUNCTION_49_3(v13, v14);
  v16(v15);
  v17 = OUTLINED_FUNCTION_4();
  v18(v17);
  v19 = OUTLINED_FUNCTION_59_2();
  v20(v19);
  v21 = OUTLINED_FUNCTION_4();
  v22(v21);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_221A03584(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A03734;

  return sub_221A02CC8();
}

void sub_221A03734()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();
  v4(v3);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A03890()
{
  OUTLINED_FUNCTION_1_5();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_221BCC7A8();
  v1[22] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[23] = v5;
  v1[24] = OUTLINED_FUNCTION_210();
  v6 = sub_221BCC6C8();
  v1[25] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v1[26] = v7;
  v1[27] = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8380, &qword_221BD77D0);
  v1[28] = v8;
  OUTLINED_FUNCTION_18_4(v8);
  v1[29] = v9;
  v1[30] = OUTLINED_FUNCTION_210();
  v10 = sub_221BCC768();
  v1[31] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[32] = v11;
  v1[33] = OUTLINED_FUNCTION_210();
  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A03A28()
{
  OUTLINED_FUNCTION_67();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[33];
    v2 = v0[20];
    OUTLINED_FUNCTION_46_2();
    sub_221A09690(v2, (v0 + 2));
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    v3 = sub_221BCC6E8();
    v6 = sub_221A096EC(v3, v4, v5);
    v9 = sub_221A09740(v6, v7, v8);
    v10 = OUTLINED_FUNCTION_31_3(v9);
    if (v1)
    {
      v16 = OUTLINED_FUNCTION_59_2();
      v17(v16);
      v18 = OUTLINED_FUNCTION_70();
      v19(v18);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_122_1();

      __asm { BRAA            X1, X16 }
    }

    v13 = sub_221A09794(v10, v11, v12);
    sub_221A097E8(v13, v14, v15);
    OUTLINED_FUNCTION_24_3();
    sub_221BCC738();
    OUTLINED_FUNCTION_99_1();
    sub_221BCC6D8();
    v26 = swift_task_alloc();
    v0[34] = v26;
    type metadata accessor for RunnerServiceDispatcherActor(0);
    OUTLINED_FUNCTION_0_22();
    sub_221A0E654(v27, v28, &protocol conformance descriptor for RunnerServiceDispatcherActor);
    OUTLINED_FUNCTION_58_2();
    *v26 = v29;
    v26[1] = sub_221A03CCC;
    OUTLINED_FUNCTION_74_1(v30);
    OUTLINED_FUNCTION_6_8(v31);
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2821E7748](v32);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[35] = v22;
    *v22 = v23;
    v22[1] = sub_221A03E98;
    OUTLINED_FUNCTION_122_1();

    return sub_221A08AC4();
  }
}

uint64_t sub_221A03CCC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A03DC8()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221A03E98()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_70_1();

  return v3();
}

uint64_t sub_221A03FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_8_7();
  v12 = sub_221A0E654(v10, v11, MEMORY[0x277D7E9B0]);
  v13 = OUTLINED_FUNCTION_90_2(v12);
  v15 = OUTLINED_FUNCTION_49_3(v13, v14);
  v16(v15);
  v17 = OUTLINED_FUNCTION_4();
  v18(v17);
  v19 = OUTLINED_FUNCTION_59_2();
  v20(v19);
  v21 = OUTLINED_FUNCTION_4();
  v22(v21);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_152();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_221A040F4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8398, &qword_221BD3098);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A04290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    v13 = *(v12 + 144);
    OUTLINED_FUNCTION_46_2();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    sub_221BCC6E8();
    v17 = sub_221A0E654(&unk_27CFBB300, type metadata accessor for AppIntentsProtocol.PerformAction.Request, &unk_221BE4348);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB83A0);
    OUTLINED_FUNCTION_16_5(v18);
    if (v13)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v12 + 144);
      sub_221BCC738();
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v41);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v42, v43, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v47);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A099EC(v38, v39);
  }
}

uint64_t sub_221A0455C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A04658()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_221A04734()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_81_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A048A8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_8_7();
  v2 = sub_221A0E654(v0, v1, MEMORY[0x277D7E9B0]);
  v3 = OUTLINED_FUNCTION_90_2(v2);
  v5 = OUTLINED_FUNCTION_49_3(v3, v4);
  v6(v5);
  v7 = OUTLINED_FUNCTION_4();
  v8(v7);
  v9 = OUTLINED_FUNCTION_59_2();
  v10(v9);
  v11 = OUTLINED_FUNCTION_4();
  v12(v11);

  OUTLINED_FUNCTION_25();

  return v13();
}

uint64_t sub_221A049CC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83B0, &qword_221BD3140);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A04B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_65_1();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2(30);
    v17 = sub_221A0E654(&unk_27CFBB2B0, type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse, &unk_221BE42A8);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB83B8);
    OUTLINED_FUNCTION_16_5(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v13 + 144);
      sub_221BCC738();
      sub_221BCC6D8();
      v39 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v39);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v40, v41, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v42;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v43);
      OUTLINED_FUNCTION_6_8(v44);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A0B5E8();
  }
}

uint64_t sub_221A04E20()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A04F1C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83C0, &qword_221BD31F8);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A050B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_64_1();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2(24);
    v17 = sub_221A0E654(&unk_27CFBB280, type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse, &unk_221BE4258);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB83C8);
    OUTLINED_FUNCTION_16_5(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v13 + 144);
      sub_221BCC738();
      OUTLINED_FUNCTION_110_1();
      v39 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v39);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v40, v41, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v42;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v43);
      OUTLINED_FUNCTION_6_8(v44);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A0BBD4();
  }
}

uint64_t sub_221A05364()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83D0, &qword_221BD32B8);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A05500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_63_2();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2(26);
    v17 = sub_221A0E654(&unk_27CFBB220, type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse, &unk_221BE4208);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB83D8);
    OUTLINED_FUNCTION_16_5(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v13 + 144);
      sub_221BCC738();
      OUTLINED_FUNCTION_110_1();
      v39 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v39);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v40, v41, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v42;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v43);
      OUTLINED_FUNCTION_6_8(v44);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A0C524();
  }
}

uint64_t sub_221A057AC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83E0, &qword_221BD3378);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A05948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_62_1();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2(18);
    v17 = sub_221A0E654(&unk_27CFBB1F0, type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse, &unk_221BE41B8);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB83E8);
    OUTLINED_FUNCTION_16_5(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v13 + 144);
      sub_221BCC738();
      OUTLINED_FUNCTION_110_1();
      v39 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v39);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v40, v41, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v42;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v43);
      OUTLINED_FUNCTION_6_8(v44);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A0C9D8();
  }
}

uint64_t sub_221A05BF4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83F0, &qword_221BD3430);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A05D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_61_2();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2(25);
    v17 = sub_221A0E654(&unk_27CFBB250, type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse, &unk_221BE4168);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB83F8);
    OUTLINED_FUNCTION_16_5(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v13 + 144);
      sub_221BCC738();
      sub_221BCC6D8();
      v39 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v39);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v40, v41, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v42;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v43);
      OUTLINED_FUNCTION_6_8(v44);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A0C088();
  }
}

uint64_t sub_221A06048()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_17_4(v1, v2);
  v3 = sub_221BCC7A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v5 = OUTLINED_FUNCTION_210();
  v6 = OUTLINED_FUNCTION_105_1(v5);
  v0[8] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v0[9] = v7;
  v8 = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_89_1(v8);
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(v9);
  OUTLINED_FUNCTION_29_3(v10);
  v0[12] = OUTLINED_FUNCTION_210();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8400, &qword_221BD7290);
  v0[13] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_104_1(v13);
  v0[16] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v0[17] = v15;
  v0[18] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A061E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_14_7();
    OUTLINED_FUNCTION_46_2();
    OUTLINED_FUNCTION_60_2();
    v14 = OUTLINED_FUNCTION_221();
    sub_221A0D340(v14, v15, v16);
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2(22);
    v17 = sub_221A0E654(&unk_27CFBB1D0, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse, &unk_221BE4118);
    v18 = OUTLINED_FUNCTION_102_1(&qword_27CFB8408);
    OUTLINED_FUNCTION_16_5(v18);
    if (v12)
    {
      v22 = OUTLINED_FUNCTION_5_11();
      v23(v22);
      v24 = OUTLINED_FUNCTION_28_3();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_101_1();
      OUTLINED_FUNCTION_1_22();
      sub_221A0E654(v19, v17, &unk_221BE42F8);
      v20 = OUTLINED_FUNCTION_7_6(&qword_27CFB83A8);
      OUTLINED_FUNCTION_22_5(v20);
      v21 = *(v13 + 144);
      sub_221BCC738();
      sub_221BCC6D8();
      v39 = swift_task_alloc();
      OUTLINED_FUNCTION_68_0(v39);
      OUTLINED_FUNCTION_0_22();
      sub_221A0E654(v40, v41, &protocol conformance descriptor for RunnerServiceDispatcherActor);
      OUTLINED_FUNCTION_58_2();
      *v21 = v42;
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_74_1(v43);
      OUTLINED_FUNCTION_6_8(v44);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821E7748](v45);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_27_5(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A0D03C();
  }
}

uint64_t sub_221A0649C()
{
  OUTLINED_FUNCTION_1_5();
  v1[40] = v2;
  v1[41] = v0;
  v1[39] = v3;
  v4 = sub_221BCC7A8();
  v1[42] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[43] = v5;
  v1[44] = OUTLINED_FUNCTION_210();
  v6 = sub_221BCC6C8();
  v1[45] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v1[46] = v7;
  v1[47] = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8410, &qword_221BD35A8);
  v1[48] = v8;
  OUTLINED_FUNCTION_18_4(v8);
  v1[49] = v9;
  v1[50] = OUTLINED_FUNCTION_210();
  v10 = sub_221BCC768();
  v1[51] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[52] = v11;
  v1[53] = OUTLINED_FUNCTION_210();
  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A06634()
{
  OUTLINED_FUNCTION_67();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[53];
    v2 = v0[40];
    OUTLINED_FUNCTION_46_2();
    sub_221A0D54C(v2, (v0 + 2));
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    v3 = sub_221BCC6E8();
    v6 = sub_221A0D5A8(v3, v4, v5);
    v9 = sub_221A0D5FC(v6, v7, v8);
    v10 = OUTLINED_FUNCTION_31_3(v9);
    if (v1)
    {
      (*(v0[49] + 8))(v0[50], v0[48]);
      v16 = OUTLINED_FUNCTION_70();
      v17(v16);
      OUTLINED_FUNCTION_96_2();

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_124_0();

      __asm { BRAA            X1, X16 }
    }

    v13 = sub_221A0D650(v10, v11, v12);
    sub_221A0D6A4(v13, v14, v15);
    OUTLINED_FUNCTION_24_3();
    sub_221BCC738();
    OUTLINED_FUNCTION_99_1();
    sub_221BCC6D8();
    v26 = swift_task_alloc();
    v0[54] = v26;
    type metadata accessor for RunnerServiceDispatcherActor(0);
    OUTLINED_FUNCTION_0_22();
    sub_221A0E654(v27, v28, &protocol conformance descriptor for RunnerServiceDispatcherActor);
    OUTLINED_FUNCTION_58_2();
    *v26 = v29;
    v26[1] = sub_221A068DC;
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_123_0();

    return MEMORY[0x2821E7748](v30);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[55] = v20;
    *v20 = v21;
    v20[1] = sub_221A06ACC;
    OUTLINED_FUNCTION_124_0();

    return sub_221A07A64(v22, v23);
  }
}

uint64_t sub_221A068DC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A069D8()
{
  OUTLINED_FUNCTION_104();
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);
  v5 = *(v0 + 304);
  v9 = *(v0 + 288);
  v10 = *(v0 + 272);
  OUTLINED_FUNCTION_96_2();
  v6 = *(v0 + 312);

  *v6 = v10;
  *(v6 + 16) = v9;
  *(v6 + 32) = v5;
  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_221A06ACC()
{
  OUTLINED_FUNCTION_81_0();
  v2 = v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v0;
  v4 = *v1;
  *v3 = *v1;

  v5 = *(v0 + 264);
  v6 = *(v0 + 312);
  v9 = *(v2 + 248);
  v10 = *(v2 + 232);

  *v6 = v10;
  *(v6 + 16) = v9;
  *(v6 + 32) = v5;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t sub_221A06C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  v17 = v16[52];
  v40 = v16[51];
  v41 = v16[53];
  v39 = v16[50];
  v19 = v16[48];
  v18 = v16[49];
  v20 = v16[42];
  OUTLINED_FUNCTION_8_7();
  v23 = sub_221A0E654(v21, v22, MEMORY[0x277D7E9B0]);
  v24 = OUTLINED_FUNCTION_17_2(v20, v23);
  v26 = OUTLINED_FUNCTION_100_1(v24, v25);
  v27(v26);
  v28 = OUTLINED_FUNCTION_69_0();
  v29(v28);
  (*(v18 + 8))(v39, v19);
  (*(v17 + 8))(v41, v40);
  OUTLINED_FUNCTION_96_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, a11, v40, v41, a14, a15, a16);
}

uint64_t sub_221A06D90()
{
  OUTLINED_FUNCTION_1_5();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_221BCC7A8();
  v1[20] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[21] = v4;
  v1[22] = OUTLINED_FUNCTION_210();
  v5 = sub_221BCC6C8();
  v1[23] = v5;
  OUTLINED_FUNCTION_18_4(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8428, &qword_221BD3650);
  v1[26] = v7;
  OUTLINED_FUNCTION_18_4(v7);
  v1[27] = v8;
  v1[28] = OUTLINED_FUNCTION_210();
  v9 = sub_221BCC768();
  v1[29] = v9;
  OUTLINED_FUNCTION_18_4(v9);
  v1[30] = v10;
  v1[31] = OUTLINED_FUNCTION_210();
  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221A06F24()
{
  OUTLINED_FUNCTION_67();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[31];
    v2 = v0[18];
    OUTLINED_FUNCTION_46_2();
    sub_221A0DA18(v2, (v0 + 2));
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    v3 = sub_221BCC6E8();
    v6 = sub_221A0DA74(v3, v4, v5);
    v9 = sub_221A0DAC8(v6, v7, v8);
    v10 = OUTLINED_FUNCTION_31_3(v9);
    if (v1)
    {
      (*(v0[27] + 8))(v0[28], v0[26]);
      v16 = OUTLINED_FUNCTION_70();
      v17(v16);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_124_0();

      __asm { BRAA            X1, X16 }
    }

    v13 = sub_221A0DB1C(v10, v11, v12);
    sub_221A0DB70(v13, v14, v15);
    OUTLINED_FUNCTION_24_3();
    sub_221BCC738();
    OUTLINED_FUNCTION_99_1();
    sub_221BCC6D8();
    v23 = swift_task_alloc();
    v0[32] = v23;
    type metadata accessor for RunnerServiceDispatcherActor(0);
    OUTLINED_FUNCTION_0_22();
    sub_221A0E654(v24, v25, &protocol conformance descriptor for RunnerServiceDispatcherActor);
    OUTLINED_FUNCTION_58_2();
    *v23 = v26;
    v23[1] = sub_221A071D4;
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_123_0();

    return MEMORY[0x2821E7748](v27);
  }

  else
  {
    v20 = swift_task_alloc();
    v0[33] = v20;
    *v20 = v0;
    v20[1] = sub_221A073B0;
    OUTLINED_FUNCTION_124_0();

    return sub_221A07EA4();
  }
}

uint64_t sub_221A071D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A072D0()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[24] + 8))(v0[25], v0[23]);
  v1 = OUTLINED_FUNCTION_48_3();
  v2(v1);
  v3 = OUTLINED_FUNCTION_70();
  v4(v3);

  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_125_1();

  return v8(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_221A073B0(uint64_t a1)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;

  OUTLINED_FUNCTION_125_1();

  return v7(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_221A07524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  v17 = v16[30];
  v40 = v16[29];
  v41 = v16[31];
  v39 = v16[28];
  v19 = v16[26];
  v18 = v16[27];
  v20 = v16[20];
  OUTLINED_FUNCTION_8_7();
  v23 = sub_221A0E654(v21, v22, MEMORY[0x277D7E9B0]);
  v24 = OUTLINED_FUNCTION_17_2(v20, v23);
  v26 = OUTLINED_FUNCTION_100_1(v24, v25);
  v27(v26);
  v28 = OUTLINED_FUNCTION_69_0();
  v29(v28);
  (*(v18 + 8))(v39, v19);
  (*(v17 + 8))(v41, v40);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_28_0();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, v39, a11, v40, v41, a14, a15, a16);
}

uint64_t RunnerServiceDispatcherActor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
  sub_221BCC7B8();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t RunnerServiceDispatcherActor.__allocating_init(actorSystem:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_97_1();
  RunnerServiceDispatcherActor.init(actorSystem:)(v1);
  return v0;
}

uint64_t RunnerServiceDispatcherActor.init(actorSystem:)(uint64_t a1)
{
  v3 = sub_221BCC7B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem;
  *(v1 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem) = a1;
  type metadata accessor for RunnerServiceDispatcherActor(0);
  v14 = a1;
  sub_221BCC868();
  OUTLINED_FUNCTION_19_3();
  sub_221A0E654(v7, v8, MEMORY[0x277D7E980]);
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v9, v10, &protocol conformance descriptor for RunnerServiceDispatcherActor);

  OUTLINED_FUNCTION_119_1();
  sub_221BCC618();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8448, &qword_221BD3710);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = MEMORY[0x277D84F98];
  *(v11 + 32) = nullsub_1;
  *(v11 + 40) = 0;
  *(v11 + 48) = nullsub_1;
  *(v11 + 56) = 0;
  *(v1 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_inFlightPerformStore) = v11;
  v14 = *(v1 + v13);

  OUTLINED_FUNCTION_119_1();
  sub_221BCC5F8();

  return v1;
}

uint64_t sub_221A07948@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8498, &unk_221BD38E0);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  sub_221BCC868();
  sub_221BCC798();
  v6 = sub_221BCC858();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_221A0E69C(v5);
    v8 = 0uLL;
    v9 = 1;
    v10 = 0uLL;
  }

  else
  {
    sub_221BCC838();
    v11 = v14;
    v12 = v13;
    v9 = v15;
    result = (*(*(v6 - 8) + 8))(v5, v6);
    v10 = v11;
    v8 = v12;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_221A07A64(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  return OUTLINED_FUNCTION_23_4();
}

uint64_t sub_221A07A7C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *v1;
  v3 = v1[1];
  v5._countAndFlagsBits = *v1;
  v5._object = v3;
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v5);
  if (v6)
  {
    sub_221BCC328();

    v7 = *(v0 + 464);
    *v7 = v2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    __asm { BRAA            X1, X16 }
  }

  v10 = *(v0 + 472);
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v0 + 408) = v4;
  *(v0 + 416) = v3;
  *(v0 + 424) = v11;
  *(v0 + 432) = v12;
  sub_2219AC930(v10 + 80, v0 + 272);
  type metadata accessor for LocalQueryExecutor();
  *(v0 + 488) = swift_initStackObject();

  sub_221998178(v11, v12);
  *(v0 + 496) = sub_2219AA560((v0 + 408), (v0 + 272));
  v14 = *(v10 + 40);
  v13 = *(v10 + 48);
  *(v0 + 440) = *(v10 + 32);
  *(v0 + 448) = v14;
  *(v0 + 456) = v13;

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 504) = v15;
  *v15 = v16;
  v15[1] = sub_221A07C00;
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_253();

  return sub_2219AA698(v17);
}

uint64_t sub_221A07C00()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v5[64] = v0;

  if (v0)
  {
    v9 = v5[60];

    v10 = sub_221A07E20;
  }

  else
  {
    v9 = v5[60];
    v5[65] = v3;

    v10 = sub_221A07D2C;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_221A07D2C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 520);
  sub_221A07948(v0 + 236);
  *(v0 + 528) = *(v0 + 268);
  v2 = swift_allocObject();
  v3 = *(v0 + 252);
  *(v2 + 16) = *(v0 + 236);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 528);
  *(v2 + 49) = *(v0 + 226);
  *(v2 + 52) = *(v0 + 229);
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  v4 = OUTLINED_FUNCTION_53_3();
  sub_221BB8ED4(v4, v5, v2);
  v7 = v6;

  v8 = *(v0 + 464);
  *v8 = v7;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_221A07E20()
{
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 512);
  v2 = sub_221BCC328();

  v3 = *(v0 + 464);
  *v3 = v2;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221A07EA4()
{
  OUTLINED_FUNCTION_1_5();
  *(v1 + 280) = v2;
  *(v1 + 288) = v0;

  return MEMORY[0x2822009F8](sub_221A07F30, v0, 0);
}

uint64_t sub_221A07F30()
{
  OUTLINED_FUNCTION_104();
  v1._countAndFlagsBits = OUTLINED_FUNCTION_69_0();
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v1);
  v3 = v2;
  if (v2)
  {
LABEL_4:
    sub_221BCC328();

    OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_238();

    __asm { BRAA            X3, X16 }
  }

  v4 = v0[35];
  type metadata accessor for CachedLinkMetadataProvider();
  v0[37] = swift_initStackObject();
  v0[38] = sub_221BB6B80();
  v5 = v4[8];
  __swift_project_boxed_opaque_existential_0(v4 + 4, v4[7]);
  v6 = OUTLINED_FUNCTION_75();
  v7(v6, v5);
  OUTLINED_FUNCTION_69_0();
  v8 = sub_221BB7510();
  v0[39] = v8;

  v11 = [objc_opt_self() policyWithEntityMetadata_];
  v0[33] = 0;
  v12 = [v11 connectionWithError_];
  v0[40] = v12;

  v13 = v0[33];
  if (!v12)
  {
    v23 = v13;
    v3 = sub_221BCC338();

    swift_willThrow();

    goto LABEL_4;
  }

  v14 = v13;
  v15 = sub_221BCD358();
  v0[41] = v15;
  v16 = v4[7];
  v17 = v4[8];
  __swift_project_boxed_opaque_existential_0(v4 + 4, v16);
  v18 = sub_22199B82C(v16, v17);
  v19 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithIdentifier_];
  v0[42] = v19;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_221A08280;
  v20 = swift_continuation_init();
  v0[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F70, &qword_221BD8080);
  v0[25] = MEMORY[0x277D85DD0];
  v0[26] = 1107296256;
  v0[27] = sub_221A34B38;
  v0[28] = &block_descriptor_63;
  v0[29] = v20;
  [v12 fetchValueForPropertyWithIdentifier:v15 entity:v19 completionHandler:v0 + 25];
  OUTLINED_FUNCTION_238();

  return MEMORY[0x282200938](v21);
}

uint64_t sub_221A08280()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 344) = v4;
  v5 = *(v3 + 288);
  if (v4)
  {
    v6 = sub_221A08538;
  }

  else
  {
    v6 = sub_221A083C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221A083C4()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 272);

  sub_221A07948(v0 + 360);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  *(v0 + 352) = *(v0 + 392);
  v5 = *(v0 + 312);
  v6 = *(v0 + 320);
  if (v2)
  {
    v12 = v3;
    v13 = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = v13;
    *(v7 + 32) = v12;
    *(v7 + 48) = *(v0 + 352);
    *(v7 + 49) = *(v0 + 353);
    *(v7 + 52) = *(v0 + 356);
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    sub_221BB8ED4(v2, sub_2219B1AA8, v7);
    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  OUTLINED_FUNCTION_114_1();

  return v10(v9, 0);
}

void sub_221A08538()
{
  OUTLINED_FUNCTION_67();
  v1 = v0[42];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  swift_willThrow();

  sub_221BCC328();

  OUTLINED_FUNCTION_114_1();
  OUTLINED_FUNCTION_123_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_221A08608(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return OUTLINED_FUNCTION_23_4();
}

uint64_t sub_221A08624()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = objc_opt_self();

  OUTLINED_FUNCTION_0_0();
  v5 = sub_221BCD358();
  v6 = [v4 applicationWithBundleIdentifier_];

  v7 = [v6 isHidden];
  v8 = [v6 isLocked];

  if (v8)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *v3 = v1;
  *(v3 + 8) = v2;
  *(v3 + 16) = xmmword_221BD04D0;
  *(v3 + 32) = v9 | v7;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_221A08778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB570;
  if (!qword_27CFBB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB570);
  }

  return result;
}

unint64_t sub_221A087CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8360;
  if (!qword_27CFB8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8360);
  }

  return result;
}

unint64_t sub_221A08820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB540;
  if (!qword_27CFBB540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB540);
  }

  return result;
}

unint64_t sub_221A08874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8368;
  if (!qword_27CFB8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8368);
  }

  return result;
}

uint64_t type metadata accessor for RunnerServiceDispatcherActor(uint64_t a1)
{
  result = qword_27CFB8478;
  if (!qword_27CFB8478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221A08914(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A03890();
}

uint64_t sub_221A08AC4()
{
  OUTLINED_FUNCTION_1_5();
  v1[25] = v2;
  v1[26] = v0;
  v1[24] = v3;

  return MEMORY[0x2822009F8](sub_221A08B54, v0, 0);
}

uint64_t sub_221A08B54()
{
  sub_2219EB748(v0[25], (v0 + 18));
  v1 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v2 = OUTLINED_FUNCTION_97_1();
  v3(v2, v1);
  sub_2219982C4(v70, v71);
  v4._countAndFlagsBits = OUTLINED_FUNCTION_70();
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v4);
  v6 = v5;
  if (v5)
  {
    sub_2219B397C((v0 + 18));

LABEL_30:
    sub_221BCC328();

    OUTLINED_FUNCTION_116_1();
    OUTLINED_FUNCTION_25();

    return v61();
  }

  if (qword_27CFB7348 != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_98(&qword_27CFB7348);
  }

  v7 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v8 = OUTLINED_FUNCTION_75();
  v9(v8, v7);
  sub_2219982C4(v70, v71);
  v10 = v0[21];
  v11 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v10);
  (*(v11 + 16))(v10, v11);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_4();
  v17 = sub_221BB8738(v14, v15, v69, v16, v13);
  v0[27] = v17;
  v0[28] = v6;
  if (v6)
  {

LABEL_29:
    sub_2219B397C((v0 + 18));
    goto LABEL_30;
  }

  v18 = v17;
  v19 = v0[25];

  v20 = *(v19 + 88);
  v67 = *(v19 + 80);

  v66 = v18;
  v21 = [v18 parameters];
  sub_2219A1D20(0, &qword_27CFB7A68, 0x277D23748);
  v6 = sub_221BCD668();

  v22 = sub_2219A69A0();
  for (i = 0; ; ++i)
  {
    if (v22 == i)
    {

      v33 = sub_2219ACADC(v30, v31, v32);
      v6 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v33);
      *v34 = v67;
      *(v34 + 8) = v20;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 32) = 3;
      swift_willThrow();

      goto LABEL_29;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x223DA3BF0](i, v6);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v24 = *(v6 + 8 * i + 32);
    }

    v25 = v24;
    v0[29] = v24;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v26 = sub_2219ACA70(v24);
    if (!v27)
    {
      goto LABEL_18;
    }

    if (v26 == v67 && v27 == v20)
    {
      break;
    }

    v29 = sub_221BCE1B8();

    if (v29)
    {
      goto LABEL_22;
    }

LABEL_18:
  }

LABEL_22:

  v35 = v0[22];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  v36 = OUTLINED_FUNCTION_75();
  v38 = v37(v36, v35);
  v39 = *(v38 + 16);
  if (v39)
  {
    sub_221BCDF28();
    v40 = (v38 + 48);
    do
    {
      v41 = *(v40 - 2);
      v42 = *(v40 - 1);
      v43 = *v40;
      v40 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v44 = v43;

      sub_2219A62D8(v41, v42, v43);
      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v39;
    }

    while (v39);
  }

  v45 = [objc_opt_self() policyWithActionMetadata_];
  v0[30] = v45;
  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v46 = sub_221BCD658();

  v47 = [v45 actionWithParameters_];
  v0[31] = v47;

  v0[10] = 0;
  v48 = [v45 connectionWithError_];
  v0[32] = v48;
  v49 = v0[10];
  if (!v48)
  {
    v60 = v49;
    v6 = sub_221BCC338();

    swift_willThrow();
    goto LABEL_29;
  }

  v50 = v48;
  v68 = v47;
  v51 = v0[25];
  v52 = v51[8];
  v53 = v51[9];
  __swift_project_boxed_opaque_existential_0(v51 + 5, v52);
  v54 = *(v53 + 24);
  v55 = v49;
  v0[33] = v54(v52, v53);
  v0[34] = v56;
  if (v51[16])
  {
    v57 = v68;
    v58 = v68;
    v59 = sub_221BCD358();
  }

  else
  {
    v57 = v68;
    v63 = v68;
    v59 = 0;
  }

  v0[35] = v59;
  v64 = sub_221BCD358();
  v0[36] = v64;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221A09278;
  v65 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80C0, &qword_221BD29C0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221A34BBC;
  v0[13] = &block_descriptor_79;
  v0[14] = v65;
  [v50 fetchOptionsForAction:v57 actionMetadata:v66 parameterMetadata:v25 searchTerm:v59 localeIdentifier:v64 completionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221A09278()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = *(v1 + 208);

    v6 = sub_221A09594;
    v7 = v5;
  }

  else
  {
    v7 = *(v1 + 208);
    v6 = sub_221A093E4;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_221A093E4()
{
  v23 = v0;
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 184);

  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_2219AF2D0(v6, v2, v3, v2, &v18);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 216);
  if (v5)
  {
    sub_2219B397C(v0 + 144);

    swift_bridgeObjectRelease_n();

    sub_221BCC328();
    OUTLINED_FUNCTION_116_1();
  }

  else
  {
    v12 = *(v0 + 192);
    sub_2219B397C(v0 + 144);

    swift_bridgeObjectRelease_n();

    v13 = v19;
    v14 = v20;
    v15 = v21;
    *v12 = v18;
    *(v12 + 16) = v13;
    *(v12 + 24) = v14;
    *(v12 + 32) = v15;
  }

  OUTLINED_FUNCTION_25();

  return v16();
}

void sub_221A09594()
{
  OUTLINED_FUNCTION_104();
  v1 = v0[36];
  v2 = v0[35];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
  swift_willThrow();

  sub_2219B397C((v0 + 18));
  v8 = v0[37];
  v9 = v0[24];
  v10 = sub_221BCC328();

  *v9 = v10;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0x80;
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_238();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_221A096EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB420;
  if (!qword_27CFBB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB420);
  }

  return result;
}

unint64_t sub_221A09740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8388;
  if (!qword_27CFB8388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8388);
  }

  return result;
}

unint64_t sub_221A09794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB3F0;
  if (!qword_27CFBB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB3F0);
  }

  return result;
}

unint64_t sub_221A097E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8390;
  if (!qword_27CFB8390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8390);
  }

  return result;
}

uint64_t sub_221A0983C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A040F4();
}

uint64_t sub_221A099EC(uint64_t a1, uint64_t a2)
{
  v3[187] = v2;
  v3[186] = a2;
  v3[185] = a1;
  return OUTLINED_FUNCTION_23_4();
}

uint64_t sub_221A09A08()
{
  sub_2219EB748(*(v0 + 1488), v0 + 1344);
  sub_22198B358((v0 + 1344), v0 + 1304);
  v1 = *(v0 + 1336);
  __swift_project_boxed_opaque_existential_0((v0 + 1304), *(v0 + 1328));
  v2 = OUTLINED_FUNCTION_97_1();
  v3(v2, v1);
  sub_2219982C4(v38, v39);
  v4._countAndFlagsBits = OUTLINED_FUNCTION_70();
  RunnerServiceDispatcherActor.validateExecutionPermission(for:)(v4);
  if (v5)
  {
    v6 = *(v0 + 1480);

    __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
    v7 = sub_221BCC328();

    *v6 = v7;
    type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    OUTLINED_FUNCTION_25();

    return v8();
  }

  sub_2219A1B08(v0 + 1304, v0 + 1384);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 1488);
    v11 = *(v0 + 1192);
    v12 = *(v0 + 1200);
    *(v0 + 1504) = v12;
    v13 = *(v0 + 1208);
    *(v0 + 1512) = v13;
    v14 = *(v0 + 1232);
    *(v0 + 1528) = v14;
    v15 = *(v0 + 1240);
    *(v0 + 1536) = v15;
    *(v0 + 1248) = v11;
    *(v0 + 1256) = v12;
    *(v0 + 1264) = v13;
    v16 = *(v0 + 1216);
    *(v0 + 1520) = v16;
    *(v0 + 1272) = v16;
    *(v0 + 1288) = v14;
    *(v0 + 1296) = v15;
    v17 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
    v18 = v17[7];
    memcpy((v0 + 232), (v10 + v18), 0xD7uLL);
    memcpy((v0 + 448), (v10 + v18), 0xD7uLL);
    v19 = (v10 + v17[8]);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v19 + 16);
    LOBYTE(v19) = *(v19 + 17);
    *(v0 + 1456) = v20;
    *(v0 + 1464) = v21;
    *(v0 + 1472) = v22;
    *(v0 + 1473) = v19;
    *(v0 + 231) = *(v10 + v17[9]);
    sub_221A0E888(v0 + 232, v0 + 664);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1544) = v23;
    *v23 = v24;
    v23[1] = sub_221A09E1C;

    return sub_221A0A950();
  }

  else
  {
    v25 = swift_dynamicCast();
    if (!v25)
    {
      v34 = sub_2219A1218(v25, v26, v27);
      v35 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v34);
      OUTLINED_FUNCTION_118_1(v36, 8);
      v37 = sub_221BCC328();
      OUTLINED_FUNCTION_103_1(v37);
      OUTLINED_FUNCTION_52_2();

      __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
      __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
      goto LABEL_3;
    }

    memcpy((v0 + 984), (v0 + 880), 0x68uLL);
    memcpy((v0 + 1088), (v0 + 880), 0x68uLL);
    v28 = OUTLINED_FUNCTION_70();
    __swift_project_boxed_opaque_existential_0(v28, v29);
    v30 = OUTLINED_FUNCTION_4();
    v31(v30);
    *(v0 + 1552) = *(v0 + 1432);
    sub_2219982C4(*(v0 + 1440), *(v0 + 1448));
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1560) = v32;
    *v32 = v33;
    v32[1] = sub_221A0A054;

    return sub_221A0A388();
  }
}

uint64_t sub_221A09E1C()
{
  OUTLINED_FUNCTION_104();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  v4 = *(v1 + 1496);
  *v3 = *v0;

  memcpy((v2 + 16), (v2 + 448), 0xD7uLL);
  sub_221A0E8E4(v2 + 16);

  v5 = OUTLINED_FUNCTION_221();
  sub_2219982C4(v5, v6);

  return MEMORY[0x2822009F8](sub_221A09FF4, v4, 0);
}

uint64_t sub_221A09FF4()
{
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A0A054()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 1496);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_221A0A170, v2, 0);
}

uint64_t sub_221A0A170()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 984);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
  __swift_destroy_boxed_opaque_existential_0((v0 + 1304));
  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A0A1D8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A049CC();
}

uint64_t sub_221A0A388()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  memcpy(v1 + 10, v5, 0x68uLL);
  v6 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221A0A3F0()
{
  OUTLINED_FUNCTION_67();
  v16 = v0;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20(&qword_27CFB7370);
  }

  v1 = sub_221BCCD88();
  __swift_project_value_buffer(v1, qword_27CFDEDB0);
  v2 = sub_221BCCD68();
  v3 = sub_221BCDA98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    v6 = static Instrumentation.currentActivityId.getter();
    v8 = sub_2219A6360(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_221989000, v2, v3, "%sPerforming LNURLLaunchRequest", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x223DA4C00](v5, -1, -1);
    MEMORY[0x223DA4C00](v4, -1, -1);
  }

  v9 = sub_2219B5FDC();
  v10 = [objc_allocWithZone(MEMORY[0x277D23CC8]) initWithAction_];
  v0[35] = v10;

  v0[2] = v0;
  v0[3] = sub_221A0A62C;
  v11 = swift_continuation_init();
  v0[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  v0[23] = MEMORY[0x277D85DD0];
  v0[24] = 1107296256;
  v0[25] = sub_2219C5280;
  v0[26] = &block_descriptor_3;
  v0[27] = v11;
  [v10 performWithCompletionHandler_];
  OUTLINED_FUNCTION_123_0();

  return MEMORY[0x282200938](v12);
}

uint64_t sub_221A0A62C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 288) = v4;
  v5 = *(v3 + 272);
  if (v4)
  {
    v6 = sub_221A0A80C;
  }

  else
  {
    v6 = sub_221A0A740;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221A0A740()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  *(v4 + 112) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;

  *(v4 + 120) = 0;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0;
  *(v4 + 224) = v3;
  *(v4 + 232) = v2;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25();
  v7 = v5;

  return v7();
}

void sub_221A0A80C()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[35];
  swift_willThrow();

  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98(&qword_27CFB7348);
  }

  v2 = sub_221BB85FC(v0[32], v0[33]);
  v5 = v0[36];
  if (v2)
  {
    v6 = v0[31];
    v7 = sub_2219A1218(v2, v3, v4);
    v8 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.ExecutionError, v7);
    OUTLINED_FUNCTION_118_1(v9, 3);
  }

  else
  {
    v14 = v0[32];
    v13 = v0[33];
    v6 = v0[31];
    v15 = sub_2219ACADC(v2, v3, v4);
    v8 = OUTLINED_FUNCTION_17_2(&type metadata for IntentsServices.MetadataError, v15);
    *v16 = v14;
    *(v16 + 8) = v13;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 1;
  }

  v10 = sub_221BCC328();

  *v6 = v10;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_52_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221A0A950()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  *(v1 + 232) = *v6;
  *(v1 + 304) = v8;
  *(v1 + 312) = v0;
  *(v1 + 288) = v9;
  *(v1 + 296) = v10;
  *(v1 + 248) = v7;
  *(v1 + 264) = *(v6 + 32);
  *(v1 + 280) = *(v6 + 48);
  memcpy((v1 + 16), v11, 0xD7uLL);
  *(v1 + 320) = *v5;
  *(v1 + 231) = *(v5 + 16);
  *(v1 + 360) = *(v5 + 17);
  *(v1 + 361) = *v3;
  v12 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A0AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  LODWORD(v37) = *(v16 + 360);
  HIDWORD(v37) = *(v16 + 361);
  v17 = *(v16 + 231);
  v19 = *(v16 + 320);
  v18 = *(v16 + 328);
  v20 = *(v16 + 312);
  type metadata accessor for RunnerServiceDispatcherActor(0);
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v21, v22, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  v36 = *(v16 + 296);
  *(v16 + 336) = sub_221BCC668();
  v23 = swift_task_alloc();
  *(v16 + 344) = v23;
  *(v23 + 16) = v16 + 232;
  *(v23 + 24) = v16 + 16;
  *(v23 + 32) = v20;
  *(v23 + 40) = v36;
  *(v23 + 56) = v19;
  *(v23 + 64) = v18;
  *(v23 + 72) = v17;
  *(v23 + 73) = v37;
  *(v23 + 74) = BYTE4(v37);
  v24 = swift_task_alloc();
  *(v16 + 352) = v24;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_58_2();
  *v24 = v25;
  v24[1] = sub_221A0AB98;
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2822007B8](v26, v27, v28, v29, v30, v31, v32, v33, v36, *(&v36 + 1), a11, v37, "inFlightPerformStore", a14, a15, a16);
}

uint64_t sub_221A0AB98()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_25();

  return v3();
}

void sub_221A0ACB0(void *a1, uint64_t *a2, void *a3, char *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, unsigned __int8 a10)
{
  v100 = a7;
  v101 = a8;
  v102 = a6;
  v103 = a3;
  v99 = a5;
  v97 = a4;
  v105 = a1;
  v108[5] = *MEMORY[0x277D85DE8];
  v104 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  MEMORY[0x28223BE20](v104);
  v12 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v96 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v98 = &v87 - v21;
  if (qword_27CFB7348 != -1)
  {
    swift_once();
  }

  v22 = sub_221BB8738(qword_27CFDED38, *a2, a2[1], a2[4], a2[5]);
  v92 = v19;
  v93 = v22;
  v23 = a2[6];
  v24 = *(v23 + 16);
  v94 = v14;
  v95 = v13;
  v91 = v16;
  if (v24)
  {
    v107[0] = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v25 = (v23 + 48);
    do
    {
      v26 = *(v25 - 2);
      v27 = *(v25 - 1);
      v28 = *v25;
      v25 += 5;
      v29 = objc_allocWithZone(MEMORY[0x277D238D8]);
      v30 = v28;

      sub_2219A62D8(v26, v27, v28);
      sub_221BCDEF8();
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v24;
    }

    while (v24);
  }

  v31 = v103[12];
  if (v31)
  {
    v32 = v103[11];
    v33 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
    sub_221A55F28(v32, v31, v33);
  }

  else
  {
    v33 = 0;
  }

  v34 = objc_opt_self();
  v35 = v93;
  v36 = [v34 policyWithActionMetadata:v93 signals:v33];

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v37 = sub_221BCD658();

  v38 = [v36 actionWithParameters_];

  v107[0] = 0;
  v39 = [v36 connectionWithError_];
  v40 = v107[0];
  if (v39)
  {
    v41 = v39;
    v90 = v38;
    v104 = v36;
    v89 = a10;
    v88 = a9;
    v42 = v98;
    (*(v96 + 16))(v98, v105, v20);
    v43 = *&v97[OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_inFlightPerformStore];
    v44 = v35;

    v45 = v40;
    v105 = v41;
    v46 = [v41 bundleIdentifier];
    v47 = sub_221BCD388();
    v93 = v48;

    v49 = v99;
    sub_2219A1B08(v99, v108);
    v50 = v92;
    v51 = v102;
    v96 = *(v94 + 16);
    (v96)(v92, v102, v95);
    v106[0] = BYTE1(v88) & 1;
    v52 = v103;
    memcpy(v107, v103 + 14, 0x64uLL);
    v53 = objc_allocWithZone(_s14descr283510E01V29PerformActionExecutorDelegateCMa(0));
    v97 = v44;
    v54 = sub_221A0FE30(v44, v42, v43, v47, v93, v108, v50, v106, v107);
    sub_221A349CC(v54, v51);
    memcpy(v107, v52, 0xD7uLL);
    v55 = v49[3];
    __swift_project_boxed_opaque_existential_0(v49, v55);
    v56 = sub_2219AD2F4(v55);
    v57 = 0;
    if (v89 != 11)
    {
      LOBYTE(v108[0]) = v89;
      v57 = sub_221AE7140();
    }

    v58 = sub_221AE7294(v100, v101, v56, v57);

    v59 = v90;
    v103 = v54;
    v60 = [v105 executorForAction:v90 options:v58 delegate:v54];
    [v60 perform];
    if (qword_27CFB7370 != -1)
    {
      swift_once();
    }

    v61 = sub_221BCCD88();
    __swift_project_value_buffer(v61, qword_27CFDEDB0);
    v62 = v91;
    v63 = v95;
    (v96)(v91, v102, v95);
    v64 = v60;
    v65 = sub_221BCCD68();
    v66 = sub_221BCDA98();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v102 = v58;
      v68 = v67;
      v101 = swift_slowAlloc();
      v107[0] = v101;
      *v68 = 136315650;
      v69 = static Instrumentation.currentActivityId.getter();
      LODWORD(v100) = v66;
      v71 = sub_2219A6360(v69, v70, v107);

      *(v68 + 4) = v71;
      *(v68 + 12) = 2080;
      sub_221A0E654(&qword_27CFB7A60, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v72 = sub_221BCE168();
      v73 = v62;
      v75 = v74;
      v76 = *(v94 + 8);
      v76(v73, v63);
      v77 = sub_2219A6360(v72, v75, v107);

      *(v68 + 14) = v77;
      *(v68 + 22) = 2080;
      v78 = [v64 identifier];
      v79 = v92;
      sub_221BCC528();

      v80 = sub_221BCE168();
      v82 = v81;
      v76(v79, v63);
      v83 = sub_2219A6360(v80, v82, v107);

      *(v68 + 24) = v83;
      _os_log_impl(&dword_221989000, v65, v100, "%sexecutionIdentifier: %s, LNActionExecutor: %s", v68, 0x20u);
      v84 = v101;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v84, -1, -1);
      MEMORY[0x223DA4C00](v68, -1, -1);
    }

    else
    {

      (*(v94 + 8))(v62, v63);
    }
  }

  else
  {
    v85 = v107[0];
    v86 = sub_221BCC338();

    swift_willThrow();
    *v12 = sub_221BCC328();
    swift_storeEnumTagMultiPayload();
    sub_221BCD798();
  }
}

uint64_t sub_221A0B5E8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A0B8EC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  swift_unknownObjectRelease();

  v3 = OUTLINED_FUNCTION_39_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A0BA24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A04F1C();
}

uint64_t sub_221A0BBD4()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A0BED8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A05364();
}

uint64_t sub_221A0C088()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A0C38C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v2 = v1;

  swift_unknownObjectRelease();

  v3 = OUTLINED_FUNCTION_39_3();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221A0C4C4()
{
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A0C524()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A0C828(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A057AC();
}

uint64_t sub_221A0C9D8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A0CCDC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A05BF4();
}

uint64_t sub_221A0CE8C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A06048();
}

uint64_t sub_221A0D03C()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_17_4(v1, v2);
  v4 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(v3);
  OUTLINED_FUNCTION_8_1(v4);
  *(v0 + 40) = OUTLINED_FUNCTION_210();
  v5 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221A0D340(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_0_0();
  v5(v4);
  return a2;
}

uint64_t sub_221A0D39C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_221A0E954;

  return sub_221A0649C();
}

unint64_t sub_221A0D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB170;
  if (!qword_27CFBB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB170);
  }

  return result;
}

unint64_t sub_221A0D5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8418;
  if (!qword_27CFB8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8418);
  }

  return result;
}

unint64_t sub_221A0D650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB140;
  if (!qword_27CFBB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB140);
  }

  return result;
}

unint64_t sub_221A0D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8420;
  if (!qword_27CFB8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8420);
  }

  return result;
}

uint64_t sub_221A0D6F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_221BCC728();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_221A0D894;

  return sub_221A06D90();
}

void sub_221A0D894()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v1 = *(v0 + 16);
  *v1 = v2;
  *(v1 + 8) = v3 & 1;

  v4 = OUTLINED_FUNCTION_4();
  v5(v4);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_221A0DA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB510;
  if (!qword_27CFBB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB510);
  }

  return result;
}

unint64_t sub_221A0DAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8430;
  if (!qword_27CFB8430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8430);
  }

  return result;
}

unint64_t sub_221A0DB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFBB4E0;
  if (!qword_27CFBB4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBB4E0);
  }

  return result;
}

unint64_t sub_221A0DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB8438;
  if (!qword_27CFB8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB8438);
  }

  return result;
}

uint64_t static RunnerServiceDispatcherActor.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RunnerServiceDispatcherActor(0);
  sub_221BCC868();
  OUTLINED_FUNCTION_19_3();
  sub_221A0E654(v5, v6, MEMORY[0x277D7E980]);
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v7, v8, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  v9 = sub_221BCC608();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
    sub_221BCC7B8();
    OUTLINED_FUNCTION_2_1();
    (*(v12 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_actorSystem) = a2;
  }

  return v10;
}

uint64_t RunnerServiceDispatcherActor.deinit()
{
  v1 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
  sub_221BCC868();
  OUTLINED_FUNCTION_19_3();
  sub_221A0E654(v2, v3, MEMORY[0x277D7E980]);
  sub_221BCC628();
  sub_221BCC7B8();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RunnerServiceDispatcherActor.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC18AppIntentsServices28RunnerServiceDispatcherActor_id;
    sub_221BCC7B8();
    OUTLINED_FUNCTION_2_1();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    RunnerServiceDispatcherActor.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221A0DE70()
{
  sub_221BCE308();
  type metadata accessor for RunnerServiceDispatcherActor(0);
  OUTLINED_FUNCTION_0_22();
  sub_221A0E654(v0, v1, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t RunnerServiceDispatcherActor.unownedExecutor.getter()
{
  if ((sub_221BCC6B8() & 1) == 0)
  {
    type metadata accessor for RunnerServiceDispatcherActor(0);
    OUTLINED_FUNCTION_0_22();
    sub_221A0E654(v1, v2, &protocol conformance descriptor for RunnerServiceDispatcherActor);
    OUTLINED_FUNCTION_70();
    return sub_221BCC5E8();
  }

  return v0;
}

uint64_t sub_221A0DF64@<X0>(uint64_t *a1@<X8>)
{
  result = RunnerServiceDispatcherActor.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_221A0DFF0(uint64_t a1)
{
  type metadata accessor for RunnerServiceDispatcherActor(0);
  sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  return sub_221BCC688();
}

uint64_t sub_221A0E06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_221BCE308();
  type metadata accessor for RunnerServiceDispatcherActor(0);
  sub_221BCD318();
  return sub_221BCE358();
}

uint64_t sub_221A0E1A0(uint64_t a1)
{
  result = sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221A0E2AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for RunnerServiceDispatcherActor(0);
  v5 = sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);

  return MEMORY[0x2821FF4E0](v2, v3, v4, v5);
}

uint64_t sub_221A0E338(uint64_t a1)
{
  type metadata accessor for RunnerServiceDispatcherActor(0);
  sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  sub_221A0E654(&qword_27CFB8490, MEMORY[0x277D7E9B8], MEMORY[0x277D7E9C0]);
  return sub_221BCC698();
}

uint64_t sub_221A0E400@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RunnerServiceDispatcherActor(0);
  sub_221A0E654(&qword_27CFB8370, type metadata accessor for RunnerServiceDispatcherActor, &protocol conformance descriptor for RunnerServiceDispatcherActor);
  sub_221A0E654(&qword_27CFB8488, MEMORY[0x277D7E9B8], MEMORY[0x277D7E9D0]);
  result = sub_221BCC6A8();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_221A0E4D8(uint64_t a1)
{
  result = sub_221BCC7B8();
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

void sub_221A0E5D4(void *a1)
{
  if (*(v1 + 73))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_221A0ACB0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), v2 | *(v1 + 72), *(v1 + 74));
}

uint64_t sub_221A0E654(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_221A0E69C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8498, &unk_221BD38E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_221A0E704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CFB9440;
  if (!qword_27CFB9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9440);
  }

  return result;
}

uint64_t sub_221A0E80C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_4_9()
{
  *(v1 + 8) = v0;
  v6 = *(v2 + 56);
  v5[6] = v4;
  v5[7] = v6;
  v5[5] = v3;
}

uint64_t OUTLINED_FUNCTION_7_6(unint64_t *a1)
{
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1)
{

  return MEMORY[0x2821E7760](v1, v2, v3, a1);
}

uint64_t OUTLINED_FUNCTION_17_4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2)
{
  *a2 = 2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 9;

  return sub_221BCC328();
}

uint64_t OUTLINED_FUNCTION_22_5(uint64_t a1)
{

  return MEMORY[0x2821E7768](v1, v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_24_3()
{

  return MEMORY[0x2821E7768](v0, v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{

  return MEMORY[0x2821E7760](v2, v1, v3, a1);
}

uint64_t OUTLINED_FUNCTION_38_0(uint64_t result)
{
  *(v2 + 64) = result;
  *(result + 16) = v1;
  *(result + 24) = v3;
  return result;
}

void OUTLINED_FUNCTION_42_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return sub_221BCC558();
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return MEMORY[0x2821E7780]();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  *(v1 + 152) = a1;

  return type metadata accessor for RunnerServiceDispatcherActor(0);
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return type metadata accessor for RunnerServiceDispatcherActor(0);
}

uint64_t OUTLINED_FUNCTION_73_2(uint64_t a1)
{
  *(v1 + 72) = a1;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_74_1(uint64_t result)
{
  v3[3] = result;
  v3[4] = v1;
  v3[2] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{

  return sub_221BCC6E8();
}

unint64_t OUTLINED_FUNCTION_80_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219A6360(v9, v10, &a9);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return sub_221BCCD88();
}

BOOL OUTLINED_FUNCTION_83_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_90_2(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_102_1(unint64_t *a1)
{

  return sub_221A0E654(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_103_1(uint64_t a1)
{
  *v1 = a1;

  return type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
}

uint64_t OUTLINED_FUNCTION_104_1(uint64_t a1)
{
  *(v1 + 120) = a1;

  return sub_221BCC768();
}

uint64_t OUTLINED_FUNCTION_105_1(uint64_t a1)
{
  *(v1 + 56) = a1;

  return sub_221BCC6C8();
}

uint64_t OUTLINED_FUNCTION_106_1()
{
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{

  return sub_221BCE168();
}

uint64_t OUTLINED_FUNCTION_108_1(uint64_t a1)
{

  return sub_221BCC668();
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return sub_221BCC6D8();
}

unint64_t OUTLINED_FUNCTION_111_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2219A6360(a1, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_116_1()
{
  *v0 = v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0x80;
}

void OUTLINED_FUNCTION_118_1(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 5;
}

uint64_t sub_221A0F190(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v51 - v6;
  v8 = sub_221BCC418();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v55 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v51 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v51 - v16;
  v18 = [v3 fileURL];
  if (v18)
  {
    v19 = v18;
    v54 = v3;
    sub_221BCC3B8();

    v20 = *(v9 + 32);
    v20(v17, v13, v8);
    v21 = v17;
    if (sub_221BCC3C8())
    {
      v22 = v8;
      if (*(a1 + 32))
      {
        if (qword_27CFB73C8 != -1)
        {
          OUTLINED_FUNCTION_0_23();
          swift_once();
        }

        v23 = sub_221BCCD88();
        __swift_project_value_buffer(v23, qword_27CFDEEA0);
        v24 = sub_221BCCD68();
        v25 = sub_221BCDA78();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_221989000, v24, v25, "Unable to obtain audit token", v26, 2u);
          MEMORY[0x223DA4C00](v26, -1, -1);
        }

        v21 = type metadata accessor for IntentsServices.SecurityError(0);
        v27 = sub_221A0FA60();
        OUTLINED_FUNCTION_1_23(v27);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v9 + 8))(v17, v8);
      }

      else
      {
        v38 = sub_221BC4328(v17, 0, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
        if (v2)
        {
          (*(v9 + 8))(v17, v8);
        }

        else
        {
          v41 = v55;
          v53 = v39;
          sub_221BC48B0(v38, v39, 1, v55);
          v42 = *(v9 + 8);
          v51[2] = v9 + 8;
          v52 = v42;
          v42(v17, v22);
          v20(v17, v41, v22);
          sub_221BCC3A8();
          v51[1] = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
          v43 = v41;
          (*(v9 + 16))(v41, v17, v22);
          v44 = v54;
          v45 = [v54 filename];
          v46 = sub_221BCD388();
          v48 = v47;

          v49 = sub_221B8B5A4(v44);
          v21 = sub_221B86580(v43, v46, v48, v49, v50);
          v52(v17, v22);
        }
      }

      return v21;
    }

    (*(v9 + 8))(v17, v8);
    v3 = v54;
  }

  if (qword_27CFB73C8 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v28 = sub_221BCCD88();
  __swift_project_value_buffer(v28, qword_27CFDEEA0);
  v29 = sub_221BCCD68();
  v30 = sub_221BCDA78();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_221989000, v29, v30, "Failed to obtain secure access", v31, 2u);
    MEMORY[0x223DA4C00](v31, -1, -1);
  }

  v21 = type metadata accessor for IntentsServices.SecurityError(0);
  v32 = sub_221A0FA60();
  OUTLINED_FUNCTION_1_23(v32);
  v34 = v33;
  v35 = [v3 fileURL];
  if (v35)
  {
    v36 = v35;
    sub_221BCC3B8();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v37, 1, v8);
  sub_221A0FAB8(v7, v34);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v21;
}

void sub_221A0F6D8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 displayRepresentation];
  if (v6)
  {
    v7 = v6;
    v8 = sub_221B85444(*(a2 + 40), *(a2 + 48));
  }

  else
  {
    v8 = 0;
  }

  v9 = [a1 valueType];
  v10 = objc_opt_self();
  v11 = [v10 fileValueType];
  sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
  v12 = sub_221BCDC58();

  if ((v12 & 1) == 0)
  {
    v19 = [a1 exportedContent];
    if (v19)
    {

      v20 = [a1 value];
      sub_221BCDCF8();
      swift_unknownObjectRelease();
      *(a3 + 32) = [a1 valueType];
      *(a3 + 40) = v8;
      *(a3 + 48) = [a1 exportedContent];
      v21 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v21 = 0;
    *a3 = v8;
    *(a3 + 8) = 0;
    goto LABEL_15;
  }

  v13 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v14 = sub_2219A1D20(0, &qword_27CFB84A0, 0x277CD3C08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CFB73C8 != -1)
    {
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v15 = sub_221BCCD88();
    __swift_project_value_buffer(v15, qword_27CFDEEA0);
    v16 = sub_221BCCD68();
    v17 = sub_221BCDA78();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_221989000, v16, v17, "Unable to update Intent File", v18, 2u);
      MEMORY[0x223DA4C00](v18, -1, -1);
    }

    goto LABEL_14;
  }

  v22 = sub_221A0F190(a2);
  v23 = [a1 exportedContent];
  if (v23)
  {
    v24 = v23;
    sub_2219A1D20(0, &qword_27CFB84A8, 0x277D23C10);
    v25 = sub_221A5C6AC([v24 contentType], v22);
  }

  else
  {
    v25 = 0;
  }

  *(a3 + 24) = v14;
  *a3 = v22;
  v26 = v22;
  v27 = [v10 fileValueType];

  *(a3 + 32) = v27;
  *(a3 + 40) = v8;
  v21 = 1;
  *(a3 + 48) = v25;
LABEL_15:
  *(a3 + 56) = v21;
}

unint64_t sub_221A0FA60()
{
  result = qword_27CFB84B0;
  if (!qword_27CFB84B0)
  {
    type metadata accessor for IntentsServices.SecurityError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB84B0);
  }

  return result;
}

uint64_t sub_221A0FAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7DD0, &unk_221BD19F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}