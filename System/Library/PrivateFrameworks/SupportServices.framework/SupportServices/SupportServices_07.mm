uint64_t sub_26BD85130()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v4 = v3;
  *v4 = *v1;
  v3[132] = v0;

  v5 = v2[93];
  v6 = v2[91];
  v7 = (v2[92] + 8);

  (*v7)(v5, v6);
  v8 = *(v3 + 5);
  v9 = *(v3 + 6);
  v10 = *(v3 + 8);
  if (v0)
  {
    *(v3 + 15) = *(v3 + 7);
    *(v3 + 16) = v10;
    *(v3 + 13) = v8;
    *(v3 + 14) = v9;
    sub_26BD89830((v3 + 26));
  }

  else
  {
    *(v3 + 19) = *(v3 + 7);
    *(v3 + 20) = v10;
    *(v3 + 17) = v8;
    *(v3 + 18) = v9;
    sub_26BD89830((v3 + 34));
  }

  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

void sub_26BD85304()
{
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[110];
  v4 = v0[101];
  v5 = v0[98];
  v6 = v0[95];
  v7 = v0[94];
  v8 = v0[84];

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v5, v9);
  OUTLINED_FUNCTION_4_4();
  sub_26BD89728(v4, v10);
  sub_26BD04E80(v3, &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_3_5();
  sub_26BD89728(v2, v11);
  sub_26BD89348();
  v12 = *(v6 + *(v7 + 20));
  OUTLINED_FUNCTION_230((v12 + 2), (v0 + 69));
  v13 = v12[3];
  *v8 = v12[2];
  v8[1] = v13;
  OUTLINED_FUNCTION_230((v12 + 62), (v0 + 72));
  v14 = v12[63];
  v8[2] = v12[62];
  v8[3] = v14;
  OUTLINED_FUNCTION_230((v12 + 70), (v0 + 75));
  v15 = v12[70];
  v16 = v12[71];

  sub_26BD89728(v6, type metadata accessor for ExecuteResponse);
  v8[4] = v15;
  v8[5] = v16;
  OUTLINED_FUNCTION_2_4();
  sub_26BD89728(v1, v17);

  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_99_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26BD8557C()
{
  v1 = *(v0 + 952);

  OUTLINED_FUNCTION_2_4();
  sub_26BD89728(v1, v2);
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD856C0()
{
  v1 = v0[119];
  v2 = v0[116];
  v3 = v0[110];
  v4 = v0[101];
  v5 = v0[98];

  OUTLINED_FUNCTION_5_4();
  sub_26BD89728(v5, v6);
  OUTLINED_FUNCTION_4_4();
  sub_26BD89728(v4, v7);
  sub_26BD04E80(v3, &qword_2804490F0, &qword_26BDA1A88);
  OUTLINED_FUNCTION_3_5();
  sub_26BD89728(v2, v8);
  OUTLINED_FUNCTION_2_4();
  sub_26BD89728(v1, v9);
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_8_6();
  OUTLINED_FUNCTION_49_0();

  OUTLINED_FUNCTION_25_1();

  return v10();
}

uint64_t sub_26BD85850(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_26BDA0370();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD85910, 0, 0);
}

uint64_t sub_26BD85910()
{
  OUTLINED_FUNCTION_31_4();
  sub_26BD8B050();
  v1 = v0[6];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  v0[8] = v4;
  *v4 = v5;
  v4[1] = sub_26BD85A2C;
  OUTLINED_FUNCTION_55_0();

  return sub_26BD878E0(v6, v7, v8);
}

uint64_t sub_26BD85A2C()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD85B2C()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD85BA0()
{
  OUTLINED_FUNCTION_31_4();

  v0 = OUTLINED_FUNCTION_259();
  v1(v0);

  OUTLINED_FUNCTION_25_1();

  return v2();
}

uint64_t sub_26BD85C24(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  a1[1] = v4;
  v7 = a2[2];
  v6 = a2[3];

  a1[4] = v7;
  a1[5] = v6;
  return result;
}

uint64_t sub_26BD85C98(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 184) = v23;
  *(v9 + 192) = v8;
  *(v9 + 168) = a7;
  *(v9 + 176) = a8;
  *(v9 + 152) = a4;
  *(v9 + 160) = a6;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  v12 = sub_26BDA08A0();
  *(v9 + 200) = v12;
  *(v9 + 208) = *(v12 - 8);
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = type metadata accessor for ExecuteSupportOptionRequest(0);
  *(v9 + 232) = swift_task_alloc();
  v13 = sub_26BDA04C0();
  *(v9 + 240) = v13;
  *(v9 + 248) = *(v13 - 8);
  *(v9 + 256) = swift_task_alloc();
  v14 = sub_26BDA0510();
  *(v9 + 264) = v14;
  *(v9 + 272) = *(v14 - 8);
  *(v9 + 280) = swift_task_alloc();
  *(v9 + 288) = swift_task_alloc();
  *(v9 + 296) = swift_task_alloc();
  v15 = sub_26BDA0750();
  *(v9 + 304) = v15;
  *(v9 + 312) = *(v15 - 8);
  *(v9 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B050, &qword_26BDA9CD0);
  *(v9 + 328) = swift_task_alloc();
  v16 = sub_26BDA03F0();
  *(v9 + 336) = v16;
  *(v9 + 344) = *(v16 - 8);
  *(v9 + 352) = swift_task_alloc();
  *(v9 + 360) = swift_task_alloc();
  *(v9 + 368) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  *(v9 + 376) = swift_task_alloc();
  v17 = sub_26BDA0370();
  *(v9 + 384) = v17;
  *(v9 + 392) = *(v17 - 8);
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v18 = a3[1];
  *(v9 + 16) = *a3;
  *(v9 + 32) = v18;
  v19 = a3[3];
  *(v9 + 48) = a3[2];
  *(v9 + 64) = v19;
  v20 = *(a5 + 16);
  *(v9 + 80) = *a5;
  *(v9 + 96) = v20;
  *(v9 + 112) = *(a5 + 32);

  return MEMORY[0x2822009F8](sub_26BD86044, 0, 0);
}

uint64_t sub_26BD86044()
{
  v1 = *(v0 + 192);
  v2 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator;
  sub_26BDA0710();
  v3 = sub_26BDA06E0();
  v4 = OUTLINED_FUNCTION_81_1();
  if (__swift_getEnumTagSinglePayload(v4, v5, v3) == 1)
  {
    sub_26BD04E80(*(v0 + 376), &qword_28044B058, &qword_26BDA9CD8);
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_26BDA0690();
    v7 = OUTLINED_FUNCTION_259();
    v8(v7);
    sub_26BDA03E0();

    OUTLINED_FUNCTION_0_12();
    sub_26BD88EC4(0, 1, 1, v9, v10, v11, v12, v13);
    v6 = v14;
    v15 = *(v14 + 16);
    if (v15 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_12();
      sub_26BD88EC4(v74, v15 + 1, 1, v6, v75, v76, v77, v78);
      v6 = v79;
    }

    v16 = OUTLINED_FUNCTION_58_2();
    v17(v16);
  }

  v18 = v1 + v2;
  v19 = *(v0 + 320);
  v20 = *(v0 + 328);
  v21 = *(v0 + 304);
  v22 = *(v0 + 312);
  sub_26BDA0760();
  sub_26BDA0730();
  (*(v22 + 8))(v19, v21);
  v23 = sub_26BDA06A0();
  OUTLINED_FUNCTION_23(v20);
  if (v24)
  {
    sub_26BD04E80(*(v0 + 328), &qword_28044B050, &qword_26BDA9CD0);
  }

  else
  {
    v25 = *(v0 + 328);
    sub_26BDA0690();
    (*(*(v23 - 8) + 8))(v25, v23);
    sub_26BDA03E0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_0_12();
      sub_26BD88EC4(0, v80 + 1, 1, v6, v81, v82, v83, v84);
      v6 = v85;
    }

    v27 = *(v6 + 16);
    if (v27 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_12();
      sub_26BD88EC4(v86, v27 + 1, 1, v6, v87, v88, v89, v90);
      v6 = v91;
    }

    v28 = OUTLINED_FUNCTION_58_2();
    v29(v28);
  }

  sub_26BD8C36C();
  sub_26BDA03E0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_12();
    sub_26BD88EC4(0, v60 + 1, 1, v6, v61, v62, v63, v64);
    v6 = v65;
  }

  v30 = *(v6 + 16);
  v31 = v30 + 1;
  v97 = v0 + 16;
  v32 = v18;
  if (v30 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_12();
    v66 = v6;
    v68 = v67;
    sub_26BD88EC4(v69, v67, 1, v66, v70, v71, v72, v73);
    v31 = v68;
  }

  else
  {
    v33 = v6;
  }

  v35 = *(v0 + 344);
  v34 = *(v0 + 352);
  v36 = *(v0 + 336);
  v37 = *(v0 + 288);
  v39 = *(v0 + 272);
  v38 = *(v0 + 280);
  v40 = *(v0 + 256);
  v92 = *(v0 + 264);
  v41 = *(v0 + 240);
  v42 = *(v0 + 248);
  v95 = *(v0 + 160);
  v96 = *(v0 + 184);
  v93 = *(v0 + 144);
  v94 = *(v0 + 168);
  *(v33 + 16) = v31;
  (*(v35 + 32))(v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v30, v34, v36);
  sub_26BD821AC();
  *(v0 + 120) = 0xD000000000000022;
  *(v0 + 128) = 0x800000026BDAFC60;
  (*(v42 + 104))(v40, *MEMORY[0x277CC91D8], v41);
  sub_26BD89E4C();
  sub_26BDA0500();
  (*(v42 + 8))(v40, v41);
  v43 = *(v39 + 8);
  v43(v38, v92);
  sub_26BDA04F0();
  v43(v37, v92);
  sub_26BDA0320();
  sub_26BDA0300();
  v44 = swift_task_alloc();
  *(v44 + 16) = v32;
  *(v44 + 24) = v0 + 80;
  *(v44 + 32) = v95;
  *(v44 + 40) = v93;
  *(v44 + 56) = v97;
  *(v44 + 64) = v96;
  *(v44 + 72) = v94;
  sub_26BD8A2E0(&qword_28044A568, type metadata accessor for ExecuteSupportOptionRequest, &protocol conformance descriptor for ExecuteSupportOptionRequest);
  sub_26BDA0A10();

  sub_26BDA0890();
  sub_26BDA09C0();
  v46 = *(v0 + 400);
  v45 = *(v0 + 408);
  v47 = *(v0 + 384);
  v48 = *(v0 + 392);
  v49 = *(v0 + 232);
  v50 = *(v0 + 192);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  OUTLINED_FUNCTION_259();
  sub_26BDA0350();
  OUTLINED_FUNCTION_45_2();
  sub_26BD89728(v49, v51);
  (*(v48 + 32))(v45, v46, v47);
  v52 = swift_task_alloc();
  *(v0 + 416) = v52;
  v52[2] = v50;
  v52[3] = v45;
  v52[4] = v97;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 424) = v53;
  *v53 = v54;
  v53[1] = sub_26BD86880;
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_99_1();

  return sub_26BD87DF8(v55, v56, v57);
}

uint64_t sub_26BD86880()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_17_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 432) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD86980()
{
  (*(v0[49] + 8))(v0[51], v0[48]);

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD86AAC()
{

  (*(v0[49] + 8))(v0[51], v0[48]);

  OUTLINED_FUNCTION_25_1();

  return v1();
}

uint64_t sub_26BD86BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  sub_26BDA0880();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD86C84, 0, 0);
}

uint64_t sub_26BD86C84()
{
  OUTLINED_FUNCTION_31_4();
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_22_2((v1 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent));
  v2 = swift_task_alloc();
  *(v0 + 128) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_15_1(v2);

  return sub_26BD90EF4();
}

uint64_t sub_26BD86D48(uint64_t a1)
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v6 = v5;
  OUTLINED_FUNCTION_17_5();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;
  v6[17] = v2;

  if (!v2)
  {
    v6[18] = v1;
    v6[19] = v4;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD86E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  type metadata accessor for AuthResponse(0);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v10 = sub_26BD8A2E0(&qword_2804498E0, type metadata accessor for AuthResponse, &unk_26BDA3C28);
  OUTLINED_FUNCTION_20_7(v10);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26BD86F1C()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

uint64_t sub_26BD86F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD86F9C, 0, 0);
}

uint64_t sub_26BD86F9C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0(v1);
  v2 = sub_26BD9E71C();
  v3 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v2;
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BD8700C()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 264) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_1(v9);

  return v12(v11);
}

uint64_t sub_26BD870C0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD871BC()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2(v17);
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      v39 = sub_26BD89884();
      v40 = OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v39);
      OUTLINED_FUNCTION_57_1(v40, v41);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_0();

  v5 = sub_26BDA0B20();
  v6 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v6))
  {
    v7 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v7);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v13 = *(v2 + 248);

  v14 = sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1(&type metadata for RequestManagerError, v14);
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD8742C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD87450, 0, 0);
}

uint64_t sub_26BD87450()
{
  OUTLINED_FUNCTION_30_2();
  v1 = type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0(v1);
  v2 = sub_26BD9E71C();
  v3 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v2;
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BD874C0()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 264) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_1(v9);

  return v12(v11);
}

uint64_t sub_26BD87574()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD87670()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2(v17);
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      v39 = sub_26BD89884();
      v40 = OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v39);
      OUTLINED_FUNCTION_57_1(v40, v41);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_0();

  v5 = sub_26BDA0B20();
  v6 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v6))
  {
    v7 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v7);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v13 = *(v2 + 248);

  v14 = sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1(&type metadata for RequestManagerError, v14);
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_48_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD878E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD87904, 0, 0);
}

uint64_t sub_26BD87904()
{
  OUTLINED_FUNCTION_30_2();
  v1 = type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0(v1);
  v2 = sub_26BD9E71C();
  v3 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v2;
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BD87974()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 264) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_1(v9);

  return v12(v11);
}

uint64_t sub_26BD87A28()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD87B24()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_21_2();

  return v1();
}

uint64_t sub_26BD87B88()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2(v17);
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      v39 = sub_26BD89884();
      v40 = OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v39);
      OUTLINED_FUNCTION_57_1(v40, v41);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_0();

  v5 = sub_26BDA0B20();
  v6 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v6))
  {
    v7 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v7);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v13 = *(v2 + 248);

  v14 = sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1(&type metadata for RequestManagerError, v14);
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD87DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  return MEMORY[0x2822009F8](sub_26BD87E1C, 0, 0);
}

uint64_t sub_26BD87E1C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = type metadata accessor for TelemetryEvent();
  OUTLINED_FUNCTION_109_0(v1);
  v2 = sub_26BD9E71C();
  v3 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  *(v0 + 232) = v2;
  *(v0 + 240) = v3;
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_93_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BD87E8C()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_67_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_1_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 264) = v9;
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_11_1(v9);

  return v12(v11);
}

uint64_t sub_26BD87F40()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD8803C()
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_53_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  OUTLINED_FUNCTION_259();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52_2();
  if (*(v2 + 184))
  {
    sub_26BD89F78(v1);
LABEL_12:
    OUTLINED_FUNCTION_51_1();
    v22 = v1;
    v23 = sub_26BDA0B20();
    sub_26BDA0D90();
    OUTLINED_FUNCTION_108_0();
    if (OUTLINED_FUNCTION_106_1())
    {
      OUTLINED_FUNCTION_65_3();
      v24 = OUTLINED_FUNCTION_68_0();
      OUTLINED_FUNCTION_105_0(5.7779e-34);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_2(v25);
      OUTLINED_FUNCTION_19_6();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      sub_26BD04E80(v24, &qword_28044B070, &unk_26BDA9D00);
      OUTLINED_FUNCTION_61_1();
      OUTLINED_FUNCTION_32_5();
    }

    OUTLINED_FUNCTION_104_0();

LABEL_15:
    v31 = OUTLINED_FUNCTION_64_2(v17);
    v32 = sub_26BDA0D90();
    if (OUTLINED_FUNCTION_63_1(v32))
    {
      v33 = OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_56_0(v33, 3.852e-34);
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_5();
    }

    if (!v0)
    {
      v39 = sub_26BD89884();
      v40 = OUTLINED_FUNCTION_72_1(&type metadata for HelpMeTroubleshootError, v39);
      OUTLINED_FUNCTION_57_1(v40, v41);
    }

    OUTLINED_FUNCTION_113_1();

    OUTLINED_FUNCTION_25_1();
    OUTLINED_FUNCTION_84_1();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49);
  }

  OUTLINED_FUNCTION_90_1();
  if (!v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_59_0();

  v5 = sub_26BDA0B20();
  v6 = sub_26BDA0D90();
  if (OUTLINED_FUNCTION_66_2(v6))
  {
    v7 = OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_94_1(v7);
    OUTLINED_FUNCTION_19_6();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    OUTLINED_FUNCTION_32_5();
  }

  v13 = *(v2 + 248);

  v14 = sub_26BD89FCC();
  v15 = OUTLINED_FUNCTION_72_1(&type metadata for RequestManagerError, v14);
  OUTLINED_FUNCTION_50_0(v15, v16);

  OUTLINED_FUNCTION_27_2();
  if (v3)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_26BD882AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  sub_26BDA0880();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD88344, 0, 0);
}

uint64_t sub_26BD88344()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_24_2();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_1(v1);

  return sub_26BD90EF4();
}

uint64_t sub_26BD883DC(uint64_t a1)
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v6 = v5;
  OUTLINED_FUNCTION_17_5();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;
  v6[18] = v2;

  if (!v2)
  {
    v6[19] = v1;
    v6[20] = v4;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD884E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v10 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for HMTSolutionResponse(v10);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v11 = sub_26BD8A2E0(&qword_280449D50, type metadata accessor for HMTSolutionResponse, &unk_26BDA5060);
  OUTLINED_FUNCTION_20_7(v11);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26BD885A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  sub_26BDA0880();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD88638, 0, 0);
}

uint64_t sub_26BD88638()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_24_2();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_1(v1);

  return sub_26BD90EF4();
}

uint64_t sub_26BD886D0(uint64_t a1)
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v6 = v5;
  OUTLINED_FUNCTION_17_5();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;
  v6[18] = v2;

  if (!v2)
  {
    v6[19] = v1;
    v6[20] = v4;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD887D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v10 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for AllSolutionsResponse(v10);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v11 = sub_26BD8A2E0(&qword_2804491D0, type metadata accessor for AllSolutionsResponse, &protocol conformance descriptor for AllSolutionsResponse);
  OUTLINED_FUNCTION_20_7(v11);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26BD88894()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

uint64_t sub_26BD888F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  sub_26BDA0880();
  v6[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD88988, 0, 0);
}

uint64_t sub_26BD88988()
{
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_24_2();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_15_1(v1);

  return sub_26BD90EF4();
}

uint64_t sub_26BD88A20(uint64_t a1)
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_28_4();
  v6 = v5;
  OUTLINED_FUNCTION_17_5();
  *v7 = v6;
  v8 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v9 = v8;
  v6[18] = v2;

  if (!v2)
  {
    v6[19] = v1;
    v6[20] = v4;
  }

  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_84_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26BD88B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_95_1();
  v10 = OUTLINED_FUNCTION_37_3();
  type metadata accessor for ExecuteResponse(v10);
  OUTLINED_FUNCTION_111_1();
  sub_26BDA0860();
  v11 = sub_26BD8A2E0(&qword_28044A580, type metadata accessor for ExecuteResponse, &protocol conformance descriptor for ExecuteResponse);
  OUTLINED_FUNCTION_20_7(v11);

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_101_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t HelpMeTroubleshootCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_logger;
  sub_26BDA0B40();
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  sub_26BD89728(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_environment, type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment);
  sub_26BD89780(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_overrideManager);
  sub_26BD89728(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator, type metadata accessor for HelpMeTroubleshootRequestGenerator);
  sub_26BD04E80(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse, &qword_28044AFE0, &qword_26BDA9B20);
  sub_26BD04E80(v0 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedSolutionsResponse, &qword_28044AFD0, &qword_26BDA9B08);
  return v0;
}

uint64_t HelpMeTroubleshootCoordinator.__deallocating_deinit()
{
  HelpMeTroubleshootCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_26BD88D7C(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_74_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF80, &qword_26BDA9738);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v9);
  }
}

void sub_26BD88EC4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_74_0();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_26BD890E4(v15, v12, a5, a6, a7);
  v17 = *(a8(0) - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_26BD891F0(a4 + v18, v15, v16 + v18, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26BD88FC4(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_74_0();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_73_1();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B080, &qword_26BDA9EE0);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_256();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B088, &unk_26BDA9D10);
    OUTLINED_FUNCTION_256();
    swift_arrayInitWithCopy();
  }
}

void *sub_26BD890E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
  v8 = a5(0);
  OUTLINED_FUNCTION_38_4(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26BD891F0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_184();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_34(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_89_1();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_89_1();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_26BD892AC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

uint64_t sub_26BD892D8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26BDA0BD0();

  return v3;
}

uint64_t sub_26BD89348()
{
  OUTLINED_FUNCTION_184();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_147();
  v3(v2);
  return v0;
}

uint64_t sub_26BD893FC()
{
  OUTLINED_FUNCTION_184();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_147();
  v3(v2);
  return v0;
}

uint64_t sub_26BD89454(_OWORD *a1, uint64_t a2, _OWORD *a3)
{
  v5 = type metadata accessor for HTTPRequestManager(0);
  v25 = v5;
  v26 = &off_287CB0E98;
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_26BD89348();
  type metadata accessor for HelpMeTroubleshootCoordinator(0);
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  MEMORY[0x28223BE20](v7);
  (*(v9 + 16))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23[3] = v5;
  v23[4] = &off_287CB0E98;
  __swift_allocate_boxed_opaque_existential_1(v23);
  sub_26BD89348();
  v10 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v10);
  if (v12)
  {
    sub_26BDA0B30();
    v13 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedAuthResponse;
    v14 = type metadata accessor for AuthResponse(0);
    __swift_storeEnumTagSinglePayload(v6 + v13, 1, 1, v14);
    v15 = OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_savedSolutionsResponse;
    v16 = type metadata accessor for AllSolutionsResponse(0);
    __swift_storeEnumTagSinglePayload(v6 + v15, 1, 1, v16);
    sub_26BD893FC();
    v17 = (v6 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_userAgent);
    v18 = a1[1];
    *v17 = *a1;
    v17[1] = v18;
    v19 = a1[3];
    v17[2] = a1[2];
    v17[3] = v19;
    sub_26BD893A0(a3, v6 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_overrideManager);
    sub_26BD8A3D8(v23, v6 + 16);
    *(v6 + 80) = &type metadata for LogTelemetryReporter;
    *(v6 + 88) = &off_287CB16F0;
    __swift_destroy_boxed_opaque_existential_1(v23);
    v20 = v6 + OBJC_IVAR____TtC15SupportServices29HelpMeTroubleshootCoordinator_requestGenerator;
    sub_26BD89348();
    v21 = (v20 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator(0) + 20));
    v22 = a3[1];
    *v21 = *a3;
    v21[1] = v22;
    v21[2] = a3[2];
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD89728(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_26BD89884()
{
  result = qword_28044AFE8;
  if (!qword_28044AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044AFE8);
  }

  return result;
}

uint64_t sub_26BD898D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490F0, &qword_26BDA1A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26BD89968()
{
  result = qword_28044B018;
  if (!qword_28044B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HelpMeTroubleshootError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26BD89A88);
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

void sub_26BD89AE8(uint64_t a1)
{
  sub_26BDA0B40();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HelpMeTroubleshootRequestGenerator(319);
      if (v3 <= 0x3F)
      {
        sub_26BD89CD0(319, &qword_28044B030, type metadata accessor for AuthResponse);
        if (v4 <= 0x3F)
        {
          sub_26BD89CD0(319, &qword_28044B038, type metadata accessor for AllSolutionsResponse);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_26BD89CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0DA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BD89D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BDA0510();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD89D94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_26BDA0510();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_26BD89DF4(uint64_t a1)
{
  v1 = sub_26BDA0510();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_26BD89E4C()
{
  result = qword_28044B060;
  if (!qword_28044B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B060);
  }

  return result;
}

uint64_t sub_26BD89ED8(uint64_t a1)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_36_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v2 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_3(v4);

  return sub_26BD888F0(v6, v7, v8, v9, v3, v1);
}

unint64_t sub_26BD89FCC()
{
  result = qword_28044B078;
  if (!qword_28044B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B078);
  }

  return result;
}

uint64_t sub_26BD8A020(uint64_t a1)
{
  OUTLINED_FUNCTION_86_3();
  OUTLINED_FUNCTION_34_3();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v1 + 16) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_14_3(v2);
  OUTLINED_FUNCTION_84_1();

  return sub_26BD86BEC(v4, v5, v6, v7, v8);
}

uint64_t sub_26BD8A0C0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v1 = *v0;
  OUTLINED_FUNCTION_9_4();
  *v2 = v1;

  OUTLINED_FUNCTION_25_1();

  return v3();
}

uint64_t sub_26BD8A1A0(uint64_t a1)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_36_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v2 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_3(v4);

  return sub_26BD885A0(v6, v7, v8, v9, v3, v1);
}

uint64_t sub_26BD8A240(uint64_t a1)
{
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_36_1();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v2 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_14_3(v4);

  return sub_26BD882AC(v6, v7, v8, v9, v3, v1);
}

uint64_t sub_26BD8A2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
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

uint64_t sub_26BD8A3D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_4()
{

  return sub_26BD89728(v0, type metadata accessor for ContactSupportOptions);
}

uint64_t OUTLINED_FUNCTION_7_4()
{

  return sub_26BD89348();
}

uint64_t OUTLINED_FUNCTION_10_1()
{

  return sub_26BD89348();
}

void OUTLINED_FUNCTION_16_2(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = a1;
}

uint64_t OUTLINED_FUNCTION_20_7(uint64_t a1)
{

  return MEMORY[0x28217E3E8](v1, v3, v2, v4, a1);
}

__n128 OUTLINED_FUNCTION_22_2@<Q0>(__int128 *a1@<X8>)
{
  result = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  *(v1 + 16) = v5;
  *(v1 + 32) = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_24_2()
{
  v1 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((*(v0 + 104) + 16), *(*(v0 + 104) + 40));
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = result;
  *(v0 + 64) = v3;
  return result;
}

void OUTLINED_FUNCTION_27_2()
{
  v2 = *(v1 + 256) + 1;
  *(v1 + 248) = v0;
  *(v1 + 256) = v2;
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1)
{
  *(a1 + 8) = sub_26BD85130;
  result = *(v1 + 768);
  *(v2 + 16) = *(v1 + 744);
  return result;
}

void OUTLINED_FUNCTION_32_5()
{

  JUMPOUT(0x26D6966B0);
}

uint64_t OUTLINED_FUNCTION_49_0()
{
}

void *OUTLINED_FUNCTION_50_0(int a1, void *__dst)
{

  return memcpy(__dst, v2, 0x51uLL);
}

void OUTLINED_FUNCTION_51_1()
{
  v2 = *(v0 + 192);
}

void *OUTLINED_FUNCTION_52_2()
{

  return memcpy((v0 - 88), v1, 0x51uLL);
}

id OUTLINED_FUNCTION_53_1()
{
  v2 = *(v0 + 272);
  *(v0 + 192) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_56_0(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = 3;
  return result;
}

unint64_t OUTLINED_FUNCTION_58_2()
{
  v4 = *(v3 + 344);
  *(v0 + 16) = v1;
  return v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2;
}

void OUTLINED_FUNCTION_61_1()
{

  JUMPOUT(0x26D6966B0);
}

BOOL OUTLINED_FUNCTION_63_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  return sub_26BDA0B20();
}

uint64_t OUTLINED_FUNCTION_65_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_66_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v8 + 256);

  return sub_26BD9E500(v10, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return swift_slowAlloc();
}

__n128 OUTLINED_FUNCTION_69_0@<Q0>(__int128 *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[3];
  v7[7] = a1[2];
  v7[8] = v11;
  v7[5] = v9;
  v7[6] = v10;
  result = a7;
  *v8 = a7;
  v8[1] = a6;
  return result;
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_77_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_85_2()
{
}

uint64_t OUTLINED_FUNCTION_88_2(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

__n128 OUTLINED_FUNCTION_98_2@<Q0>(__int128 *a1@<X8>)
{
  result = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  *(v1 + 112) = result;
  *(v1 + 128) = v3;
  *(v1 + 80) = v5;
  *(v1 + 96) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1)
{

  return sub_26BDA0A10();
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1)
{

  return sub_26BDA0FB0();
}

void OUTLINED_FUNCTION_104_0()
{
  v2 = *(v0 + 248);
}

id OUTLINED_FUNCTION_105_0(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_106_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_107_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_108_0()
{
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_110_0(uint64_t a1)
{

  return sub_26BD04E80(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_111_1()
{

  return MEMORY[0x28217E1C0]();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_26BD897D4(v0 + 16, v0 + 144);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return swift_willThrow();
}

uint64_t sub_26BD8AE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 32);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_26BD8AEE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HelpMeTroubleshootRequestGenerator(uint64_t a1)
{
  result = qword_28044B0B8;
  if (!qword_28044B0B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BD8AFDC(uint64_t a1)
{
  result = type metadata accessor for HelpMeTroubleshootCoordinator.ServerEnvironment(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BD8B050()
{
  OUTLINED_FUNCTION_246();
  v22 = v0;
  v23[2] = *MEMORY[0x277D85DE8];
  v1 = sub_26BDA04C0();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v7 = v6 - v5;
  v8 = sub_26BDA0510();
  OUTLINED_FUNCTION_18();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_57();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  sub_26BD821AC();
  v23[0] = 0xD000000000000016;
  v23[1] = 0x800000026BDAFD80;
  (*(v3 + 104))(v7, *MEMORY[0x277CC91D8], v1);
  sub_26BD89E4C();
  sub_26BDA0500();
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
  sub_26BDA0320();
  sub_26BDA0300();
  sub_26BDA0B70();
  v16 = objc_opt_self();
  v17 = sub_26BDA0B50();

  v23[0] = 0;
  v18 = [v16 dataWithJSONObject:v17 options:1 error:v23];

  v19 = v23[0];
  if (v18)
  {
    sub_26BDA05D0();

    sub_26BDA0350();
  }

  else
  {
    v20 = v19;
    sub_26BDA04B0();

    swift_willThrow();
    sub_26BDA0370();
    OUTLINED_FUNCTION_34();
    (*(v21 + 8))(v22);
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BD8B378()
{
  OUTLINED_FUNCTION_246();
  v75 = v0;
  v3 = v2;
  v83 = v4;
  v82 = sub_26BDA04C0();
  OUTLINED_FUNCTION_18();
  v80 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30();
  v78 = v7;
  OUTLINED_FUNCTION_176();
  v81 = sub_26BDA0510();
  OUTLINED_FUNCTION_18();
  v79 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_57();
  v74 = v10 - v11;
  v13 = MEMORY[0x28223BE20](v12);
  v76 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v77 = &v71 - v15;
  OUTLINED_FUNCTION_176();
  v72 = sub_26BDA0750();
  OUTLINED_FUNCTION_18();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_44();
  v21 = v20 - v19;
  v87 = sub_26BDA03F0();
  OUTLINED_FUNCTION_18();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_57();
  v84 = v25 - v26;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v71 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  OUTLINED_FUNCTION_110(v33);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v34);
  v36 = &v71 - v35;
  v73 = v3;
  sub_26BDA0710();
  v37 = sub_26BDA06E0();
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    sub_26BD04E80(v36, &qword_28044B058, &qword_26BDA9CD8);
    v38 = MEMORY[0x277D84F90];
  }

  else
  {
    v71 = v1;
    sub_26BDA0690();
    (*(*(v37 - 8) + 8))(v36, v37);
    sub_26BDA03E0();

    sub_26BD88E98(0);
    v38 = v39;
    v41 = *(v39 + 16);
    v40 = *(v39 + 24);
    if (v41 >= v40 >> 1)
    {
      v69 = OUTLINED_FUNCTION_5_5(v40);
      sub_26BD88E98(v69);
      v38 = v70;
    }

    *(v38 + 16) = v41 + 1;
    OUTLINED_FUNCTION_7_5();
    v44(v38 + v42 + *(v43 + 40) * v41, v32, v87);
  }

  sub_26BDA0760();
  sub_26BDA0740();
  (*(v17 + 8))(v21, v72);
  OUTLINED_FUNCTION_15_2();
  sub_26BDA03E0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = OUTLINED_FUNCTION_12_4();
    sub_26BD88E98(v63);
    v38 = v64;
  }

  v46 = *(v38 + 16);
  v45 = *(v38 + 24);
  if (v46 >= v45 >> 1)
  {
    v65 = OUTLINED_FUNCTION_16_3(v45);
    sub_26BD88E98(v65);
    v38 = v66;
  }

  *(v38 + 16) = v46 + 1;
  v49 = *(v23 + 32);
  v48 = v23 + 32;
  v47 = v49;
  v50 = (*(v48 + 48) + 32) & ~*(v48 + 48);
  v51 = *(v48 + 40);
  v49(v38 + v50 + v51 * v46, v30, v87);
  v52 = sub_26BD8C36C();
  OUTLINED_FUNCTION_19_7(v52, v53, v52);

  v55 = *(v38 + 16);
  v54 = *(v38 + 24);
  if (v55 >= v54 >> 1)
  {
    v67 = OUTLINED_FUNCTION_5_5(v54);
    sub_26BD88E98(v67);
    v38 = v68;
  }

  *(v38 + 16) = v55 + 1;
  v47(v38 + v50 + v55 * v51, v84, v87);
  v56 = v74;
  sub_26BD821AC();
  v85 = 0xD000000000000018;
  v86 = 0x800000026BDAFDD0;
  v57 = v80;
  v58 = v78;
  v59 = v82;
  (*(v80 + 104))(v78, *MEMORY[0x277CC91D8], v82);
  sub_26BD89E4C();
  v60 = v76;
  sub_26BDA0500();
  (*(v57 + 8))(v58, v59);
  v61 = *(v79 + 8);
  v62 = v81;
  v61(v56, v81);
  sub_26BDA04F0();

  v61(v60, v62);
  sub_26BDA0320();
  sub_26BDA0300();
  OUTLINED_FUNCTION_247();
}

void sub_26BD8B998()
{
  OUTLINED_FUNCTION_246();
  v105 = v0;
  v3 = v2;
  v107 = v4;
  v106 = v5;
  v7 = v6;
  v9 = v8;
  v113 = v10;
  sub_26BDA08A0();
  OUTLINED_FUNCTION_18();
  v111 = v12;
  v112 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_145(v13);
  v108 = type metadata accessor for AllSolutionsRequest(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30();
  v110 = v16;
  OUTLINED_FUNCTION_176();
  v104 = sub_26BDA04C0();
  OUTLINED_FUNCTION_18();
  v103 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_145(v19);
  v102 = sub_26BDA0510();
  OUTLINED_FUNCTION_18();
  v101 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_145(&v94 - v24);
  v95 = sub_26BDA0750();
  OUTLINED_FUNCTION_18();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_44();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B050, &qword_26BDA9CD0);
  OUTLINED_FUNCTION_110(v31);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v32);
  v34 = &v94 - v33;
  v97 = sub_26BDA03F0();
  OUTLINED_FUNCTION_18();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  v41 = &v94 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  OUTLINED_FUNCTION_110(v42);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v43);
  v45 = &v94 - v44;
  v46 = *(v9 + 16);
  v116[0] = *v9;
  v116[1] = v46;
  v117 = *(v9 + 32);
  v47 = v7[1];
  v118[0] = *v7;
  v118[1] = v47;
  v48 = v7[3];
  v118[2] = v7[2];
  v118[3] = v48;
  v119 = v3;
  sub_26BDA0710();
  v49 = sub_26BDA06E0();
  if (__swift_getEnumTagSinglePayload(v45, 1, v49) == 1)
  {
    sub_26BD04E80(v45, &qword_28044B058, &qword_26BDA9CD8);
    v50 = MEMORY[0x277D84F90];
    v51 = v97;
  }

  else
  {
    sub_26BDA0690();
    (*(*(v49 - 8) + 8))(v45, v49);
    sub_26BDA03E0();

    sub_26BD88E98(0);
    v50 = v52;
    v54 = *(v52 + 16);
    v53 = *(v52 + 24);
    if (v54 >= v53 >> 1)
    {
      v88 = OUTLINED_FUNCTION_16_3(v53);
      sub_26BD88E98(v88);
      v50 = v89;
    }

    *(v50 + 16) = v54 + 1;
    OUTLINED_FUNCTION_7_5();
    v57 = v41;
    v51 = v97;
    v58(v50 + v55 + *(v56 + 40) * v54, v57, v97);
  }

  sub_26BDA0760();
  sub_26BDA0730();
  (*(v26 + 8))(v30, v95);
  v59 = sub_26BDA06A0();
  if (__swift_getEnumTagSinglePayload(v34, 1, v59) == 1)
  {
    sub_26BD04E80(v34, &qword_28044B050, &qword_26BDA9CD0);
    v60 = v105;
    v61 = v96;
  }

  else
  {
    sub_26BDA0690();
    (*(*(v59 - 8) + 8))(v34, v59);
    OUTLINED_FUNCTION_15_2();
    v62 = v94;
    sub_26BDA03E0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v96;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v90 = OUTLINED_FUNCTION_12_4();
      sub_26BD88E98(v90);
      v50 = v91;
    }

    v65 = *(v50 + 16);
    v64 = *(v50 + 24);
    v60 = v105;
    if (v65 >= v64 >> 1)
    {
      v92 = OUTLINED_FUNCTION_5_5(v64);
      sub_26BD88E98(v92);
      v50 = v93;
    }

    *(v50 + 16) = v65 + 1;
    OUTLINED_FUNCTION_7_5();
    v68(v50 + v66 + *(v67 + 40) * v65, v62, v51);
  }

  v69 = sub_26BD8C36C();
  OUTLINED_FUNCTION_19_7(v69, v70, v69);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = OUTLINED_FUNCTION_12_4();
    sub_26BD88E98(v84);
    v50 = v85;
  }

  v72 = *(v50 + 16);
  v71 = *(v50 + 24);
  if (v72 >= v71 >> 1)
  {
    v86 = OUTLINED_FUNCTION_5_5(v71);
    sub_26BD88E98(v86);
    v50 = v87;
  }

  *(v50 + 16) = v72 + 1;
  (*(v36 + 32))(v50 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v72, v61, v51);
  v73 = v98;
  sub_26BD821AC();
  v114 = 0xD000000000000020;
  v115 = 0x800000026BDAFDA0;
  v74 = v103;
  v75 = v100;
  v76 = v104;
  (*(v103 + 104))(v100, *MEMORY[0x277CC91D8], v104);
  sub_26BD89E4C();
  v77 = v99;
  sub_26BDA0500();
  (*(v74 + 8))(v75, v76);
  v78 = *(v101 + 8);
  v79 = v102;
  v78(v73, v102);
  sub_26BDA04F0();
  v78(v77, v79);
  v80 = v113;
  sub_26BDA0320();
  v81 = sub_26BDA0300();
  MEMORY[0x28223BE20](v81);
  *(&v94 - 6) = v60;
  *(&v94 - 5) = v116;
  *(&v94 - 4) = v106;
  *(&v94 - 3) = v118;
  *(&v94 - 2) = v107;
  *(&v94 - 1) = v119;
  sub_26BD904A4(&qword_2804491B8, type metadata accessor for AllSolutionsRequest, &protocol conformance descriptor for AllSolutionsRequest);
  sub_26BDA0A10();

  v82 = v109;
  sub_26BDA0890();
  sub_26BDA09C0();
  (*(v111 + 8))(v82, v112);
  if (v1)
  {
    OUTLINED_FUNCTION_6_5();
    sub_26BDA0370();
    OUTLINED_FUNCTION_34();
    (*(v83 + 8))(v80);
  }

  else
  {
    sub_26BDA0350();
    OUTLINED_FUNCTION_6_5();
  }

  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD8C36C()
{
  v1 = v0 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator(0) + 20);
  if (*v1 != 1 || (v2 = *(v1 + 32), v3 = *(v1 + 40), __swift_project_boxed_opaque_existential_1((v1 + 8), v2), (*(v3 + 8))(0xD00000000000001CLL, 0x800000026BDAFD60, v2, v3), !v4))
  {
    if (qword_280448F38 != -1)
    {
      swift_once();
    }
  }

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BD8C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v29 = a7;
  v39 = a6;
  v26 = a2;
  v27 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TriageRequest.ClientContext(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TriageRequest.CaseMetaData(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a2;
  v38 = a4;
  sub_26BD904A4(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData, &protocol conformance descriptor for TriageRequest.CaseMetaData);
  sub_26BDA0A10();
  v20 = type metadata accessor for AllSolutionsRequest(0);
  v21 = *(v20 + 20);
  sub_26BD04E80(a1 + v21, &qword_280448F68, &qword_26BDA1A30);
  sub_26BD90568(v19, a1 + v21, type metadata accessor for TriageRequest.CaseMetaData);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v17);
  v22 = type metadata accessor for AuthResponse(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v22);
  v30 = v28;
  v31 = v29;
  v32 = v26;
  v33 = v39;
  v34 = v27;
  v35 = v13;
  sub_26BD904A4(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext, &protocol conformance descriptor for TriageRequest.ClientContext);
  sub_26BDA0A10();
  sub_26BD04E80(v13, &qword_28044AFE0, &qword_26BDA9B20);
  v23 = *(v20 + 24);
  sub_26BD04E80(a1 + v23, &qword_280448F70, &qword_26BDA1A38);
  sub_26BD90568(v16, a1 + v23, type metadata accessor for TriageRequest.ClientContext);
  return __swift_storeEnumTagSinglePayload(a1 + v23, 0, 1, v14);
}

void sub_26BD8C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_246();
  v74[0] = v22;
  v79 = v23;
  v77 = v24;
  v92 = v25;
  v76 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v84 = a22;
  v85 = v33;
  v83 = a21;
  v34 = type metadata accessor for TriageRequest.HMTContext(0);
  v35 = OUTLINED_FUNCTION_110(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_30();
  v82 = v36;
  v37 = OUTLINED_FUNCTION_176();
  v81 = type metadata accessor for TriageRequest.Customer(v37);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_30();
  v80 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  OUTLINED_FUNCTION_110(v40);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v41);
  v43 = OUTLINED_FUNCTION_145(v74 - v42);
  v74[1] = type metadata accessor for TriageRequest.ClientContext(v43);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_30();
  v74[2] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  OUTLINED_FUNCTION_110(v46);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v47);
  v49 = v74 - v48;
  v50 = type metadata accessor for TriageRequest.ExecuteSupportOption(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_44();
  v54 = v53 - v52;
  v55 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_57();
  v59 = v57 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = v74 - v61;
  v78 = v30;
  v89 = v30;
  v90 = v32;
  v91 = v28;
  sub_26BD904A4(&unk_280449100, type metadata accessor for TriageRequest.CaseMetaData, &protocol conformance descriptor for TriageRequest.CaseMetaData);
  v63 = v74[0];
  sub_26BDA0A10();
  v86 = v76;
  v87 = v92;
  v76 = v32;
  v88 = v32;
  sub_26BD904A4(&qword_28044AC30, type metadata accessor for TriageRequest.ExecuteSupportOption, &protocol conformance descriptor for TriageRequest.ExecuteSupportOption);
  sub_26BDA0A10();
  v74[0] = v63;
  v64 = *(v55 + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *&v62[v64];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for TriageRequest.CaseMetaData._StorageClass(0);
    swift_allocObject();
    sub_26BD60B14();
    v66 = v67;
    *&v62[v64] = v67;
  }

  sub_26BD90568(v54, v49, type metadata accessor for TriageRequest.ExecuteSupportOption);
  __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
  v68 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest12CaseMetaDataP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__supportOption;
  swift_beginAccess();
  sub_26BD8F424(v49, v66 + v68);
  swift_endAccess();
  sub_26BD90424(v62, v59, type metadata accessor for TriageRequest.CaseMetaData);
  ExecuteSupportOptionRequest.caseMetaData.setter();
  v69 = v75;
  sub_26BD90424(v92, v75, type metadata accessor for AuthResponse);
  v70 = type metadata accessor for AuthResponse(0);
  v71 = __swift_storeEnumTagSinglePayload(v69, 0, 1, v70);
  MEMORY[0x28223BE20](v71);
  v72 = v79;
  v74[-6] = v77;
  v74[-5] = v72;
  v74[-4] = v76;
  v74[-3] = 0;
  v74[-2] = v78;
  v74[-1] = v69;
  sub_26BD904A4(&qword_2804490F8, type metadata accessor for TriageRequest.ClientContext, &protocol conformance descriptor for TriageRequest.ClientContext);
  sub_26BDA0A10();
  sub_26BD04E80(v69, &qword_28044AFE0, &qword_26BDA9B20);
  v73 = ExecuteSupportOptionRequest.clientContext.setter();
  MEMORY[0x28223BE20](v73);
  v74[-2] = v92;
  sub_26BD904A4(&qword_28044A668, type metadata accessor for TriageRequest.Customer, &protocol conformance descriptor for TriageRequest.Customer);
  sub_26BDA0A10();
  ExecuteSupportOptionRequest.customer.setter();
  sub_26BD90424(v83, v82, type metadata accessor for TriageRequest.HMTContext);
  ExecuteSupportOptionRequest.hmtContext.setter();

  ExecuteSupportOptionRequest.reportingContextMap.setter();
  sub_26BD904EC(v62, type metadata accessor for TriageRequest.CaseMetaData);
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD8CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TriageRequest.SymptomInformation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for TriageRequest.Product(0);
  MEMORY[0x28223BE20](v10);
  v13 = a2;
  v14 = a3;
  sub_26BD904A4(&qword_28044AC48, type metadata accessor for TriageRequest.Product, &protocol conformance descriptor for TriageRequest.Product);
  sub_26BDA0A10();
  TriageRequest.CaseMetaData.product.setter();
  sub_26BD90424(a4, v9, type metadata accessor for TriageRequest.SymptomInformation);
  return TriageRequest.CaseMetaData.symptomInformation.setter();
}

uint64_t sub_26BD8CF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a2 + 32))
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      v8 = *(a2 + 16);
      v9 = a3 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator(0) + 20);
      if (*v9 == 1)
      {
        v33 = v8;
        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        __swift_project_boxed_opaque_existential_1((v9 + 8), v10);
        v12 = *(v11 + 8);

        v13 = v12(0xD000000000000025, 0x800000026BDAFD30, v10, v11);
        if (v14)
        {
          v15 = v13;
          v16 = v14;

          v8 = v15;
          v7 = v16;
        }

        else
        {
          v8 = v33;
        }
      }

      else
      {
      }

      *(a1 + 64) = v8;
      *(a1 + 72) = v7;
    }

    goto LABEL_23;
  }

  v17 = (a3 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator(0) + 20));
  v18 = *v17;
  v19 = 0x280448000uLL;
  if (v18 == 1 && (v20 = v17[4], v21 = v17[5], __swift_project_boxed_opaque_existential_1(v17 + 1, v20), (*(v21 + 8))(0xD00000000000001ELL, 0x800000026BDAFCD0, v20, v21), v19 = 0x280448000, v22))
  {
  }

  else
  {
    if (*(v19 + 3888) != -1)
    {
      swift_once();
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v23 = v17[4];
  v24 = v17[5];
  __swift_project_boxed_opaque_existential_1(v17 + 1, v23);
  v25 = (*(v24 + 8))(0xD00000000000001ELL, 0x800000026BDAFCD0, v23, v24);
  if (v26)
  {
    v27 = v25;
    v28 = v26;

    goto LABEL_19;
  }

  v19 = 0x280448000uLL;
LABEL_16:
  if (*(v19 + 3888) != -1)
  {
    swift_once();
  }

  v27 = qword_280459FD0;
  v28 = qword_280459FD8;

LABEL_19:
  *(a1 + 64) = v27;
  *(a1 + 72) = v28;
  if (!v6)
  {
    goto LABEL_33;
  }

LABEL_23:

  if (sub_26BDA0C80())
  {

    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
  }

  else
  {
  }

  v30 = *a2;
  v29 = *(a2 + 8);
  v31 = *(a2 + 32);
  if ((v31 & 1) == 0 && !v29)
  {
LABEL_31:
    if (v6)
    {

      goto LABEL_36;
    }

LABEL_33:
    v5 = 0x3330304753;
    v6 = 0xE500000000000000;
    goto LABEL_37;
  }

  if (sub_26BDA0C80())
  {

    *(a1 + 16) = v30;
    *(a1 + 24) = v29;
    if ((v31 & 1) == 0)
    {
LABEL_30:
      v5 = v30;
      v6 = v29;
      goto LABEL_31;
    }
  }

  else
  {

    if ((v31 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v5 = v30;
  v6 = v29;
LABEL_36:
  if ((sub_26BDA0C80() & 1) == 0)
  {

    goto LABEL_39;
  }

LABEL_37:

  *a1 = v5;
  *(a1 + 8) = v6;
LABEL_39:
  *(a1 + 100) = 1;
  return result;
}

id sub_26BD8D32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v157 = a7;
  v156 = a6;
  v155 = a5;
  v152 = a4;
  v161 = a3;
  v160 = type metadata accessor for PhoneNumber(0);
  MEMORY[0x28223BE20](v160);
  v142 = (&v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v141 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v144 = &v139 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  MEMORY[0x28223BE20](v14 - 8);
  v146 = &v139 - v15;
  v162 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  MEMORY[0x28223BE20](v162);
  v158 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v139 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v143 = &v139 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v150 = &v139 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v148 = &v139 - v25;
  MEMORY[0x28223BE20](v24);
  v145 = &v139 - v26;
  v163 = type metadata accessor for AuthResponse.Account(0);
  v27 = MEMORY[0x28223BE20](v163);
  v140 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v151 = &v139 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v149 = &v139 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v139 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v139 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AFE0, &qword_26BDA9B20);
  MEMORY[0x28223BE20](v37 - 8);
  v154 = &v139 - v38;
  v153 = type metadata accessor for AuthResponse(0);
  MEMORY[0x28223BE20](v153);
  v159 = &v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_26BDA07C0();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v139 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = &v139 - v45;
  v48 = *(a2 + 48);
  v47 = *(a2 + 56);

  TriageRequest.ClientContext.deviceName.setter(v48, v47, v49, v50, v51, v52, v53);
  v167 = *(a2 + 16);
  v166 = v167;
  sub_26BD9034C(&v167, v165);
  MEMORY[0x26D695B80](32, 0xE100000000000000);
  MEMORY[0x26D695B80](*(a2 + 32), *(a2 + 40));
  TriageRequest.ClientContext.deviceOs.setter(v166, *(&v166 + 1), v54, v55, v56, v57, v58);
  sub_26BDA07B0();
  sub_26BD8E4FC();
  v59 = *(v41 + 8);
  v59(v46, v40);
  TriageRequest.ClientContext.timeZone.setter();
  sub_26BDA07B0();
  sub_26BDA0790();
  v59(v44, v40);
  TriageRequest.ClientContext.fullTimeZone.setter();
  sub_26BDA0680();
  TriageRequest.ClientContext.deviceLocale.setter();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v61 = result;
    v62 = [result isPasscodeSet];

    v63 = *(type metadata accessor for TriageRequest.ClientContext(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *(a1 + v63);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
      swift_allocObject();
      v65 = sub_26BD65E58(v65);
      *(a1 + v63) = v65;
    }

    v66 = v160;
    v67 = v163;
    swift_beginAccess();
    *(v65 + 200) = v62;
    if (qword_280448F40 != -1)
    {
      swift_once();
    }

    v69 = qword_280459FF0;
    v68 = *algn_280459FF8;

    TriageRequest.ClientContext.osBuildNumber.setter(v69, v68, v70, v71, v72, v73, v74, v75, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
    v76 = v152 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator(0) + 20);
    if (*v76 == 1 && (v77 = *(v76 + 32), v78 = *(v76 + 40), __swift_project_boxed_opaque_existential_1((v76 + 8), v77), v79 = *(v78 + 8), v80 = v78, v67 = v163, v81 = v79(0xD00000000000001ELL, 0x800000026BDAFCD0, v77, v80), v82))
    {
      v89 = v81;
      v90 = v82;
    }

    else
    {
      if (qword_280448F30 != -1)
      {
        swift_once();
      }

      v89 = qword_280459FD0;
      v90 = qword_280459FD8;
    }

    TriageRequest.ClientContext.currentDeviceSerialNumber.setter(v89, v90, v83, v84, v85, v86, v87, v88, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);
    v91 = v155;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v93 = *(a1 + v63);
    if ((v92 & 1) == 0)
    {
      type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
      swift_allocObject();
      v93 = sub_26BD65E58(v93);
      *(a1 + v63) = v93;
    }

    v94 = OBJC_IVAR____TtCVV15SupportServices13TriageRequest13ClientContextP33_A605A3A579A6A580D697BA01F9ED765C13_StorageClass__serviceConfig;
    swift_beginAccess();
    *(v93 + v94) = v91;
    if ((*(v156 + 32) & 1) == 0)
    {
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v96 = *(a1 + v63);
      if ((v95 & 1) == 0)
      {
        type metadata accessor for TriageRequest.ClientContext._StorageClass(0);
        swift_allocObject();
        v96 = sub_26BD65E58(v96);
        *(a1 + v63) = v96;
      }

      swift_beginAccess();
      *(v96 + 201) = 1;
    }

    v97 = v154;
    sub_26BD0E880(v157, v154, &qword_28044AFE0, &qword_26BDA9B20);
    v98 = v153;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v153);
    v100 = v158;
    if (EnumTagSinglePayload == 1)
    {
      return sub_26BD04E80(v97, &qword_28044AFE0, &qword_26BDA9B20);
    }

    else
    {
      v101 = v97;
      v102 = v159;
      sub_26BD90568(v101, v159, type metadata accessor for AuthResponse);
      v103 = *(v102 + *(v98 + 20));
      v104 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
      swift_beginAccess();
      v105 = v145;
      sub_26BD0E880(v103 + v104, v145, &qword_280449908, &unk_26BDA9DD0);
      v106 = __swift_getEnumTagSinglePayload(v105, 1, v67);
      v107 = MEMORY[0x277D84F90];
      if (v106 == 1)
      {
        *v36 = 0;
        *(v36 + 1) = 0;
        *(v36 + 2) = 0xE000000000000000;
        *(v36 + 3) = 0;
        *(v36 + 4) = 0xE000000000000000;
        *(v36 + 5) = 0;
        *(v36 + 6) = 0xE000000000000000;
        *(v36 + 7) = 0;
        *(v36 + 8) = 0xE000000000000000;
        *(v36 + 9) = 0;
        *(v36 + 10) = 0xE000000000000000;
        *(v36 + 11) = v107;
        v36[96] = 0;
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        __swift_storeEnumTagSinglePayload(&v36[*(v67 + 52)], 1, 1, v66);
        __swift_storeEnumTagSinglePayload(&v36[*(v67 + 56)], 1, 1, v162);
        if (__swift_getEnumTagSinglePayload(v105, 1, v67) != 1)
        {
          sub_26BD04E80(v105, &qword_280449908, &unk_26BDA9DD0);
        }
      }

      else
      {
        sub_26BD90568(v105, v36, type metadata accessor for AuthResponse.Account);
      }

      v108 = v146;
      sub_26BD0E880(&v36[*(v67 + 56)], v146, &qword_280449848, &qword_26BDA36E0);
      v109 = v162;
      if (__swift_getEnumTagSinglePayload(v108, 1, v162) == 1)
      {
        *v100 = 0;
        v100[1] = 0xE000000000000000;
        v100[2] = 0;
        v100[3] = 0;
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        sub_26BD904EC(v36, type metadata accessor for AuthResponse.Account);
        if (__swift_getEnumTagSinglePayload(v108, 1, v109) != 1)
        {
          sub_26BD04E80(v108, &qword_280449848, &qword_26BDA36E0);
        }
      }

      else
      {
        sub_26BD904EC(v36, type metadata accessor for AuthResponse.Account);
        sub_26BD90568(v108, v100, type metadata accessor for AuthResponse.AuthenticationToken);
      }

      v110 = v100[3];
      sub_26BD904EC(v100, type metadata accessor for AuthResponse.AuthenticationToken);
      v164 = v110;
      sub_26BDA0FA0();
      TriageRequest.ClientContext.dsID.setter();
      v111 = v148;
      sub_26BD0E880(v103 + v104, v148, &qword_280449908, &unk_26BDA9DD0);
      v112 = __swift_getEnumTagSinglePayload(v111, 1, v67);
      v113 = v149;
      v114 = v147;
      if (v112 == 1)
      {
        *v147 = 0;
        *(v114 + 1) = 0;
        *(v114 + 2) = 0xE000000000000000;
        *(v114 + 3) = 0;
        *(v114 + 4) = 0xE000000000000000;
        *(v114 + 5) = 0;
        *(v114 + 6) = 0xE000000000000000;
        *(v114 + 7) = 0;
        *(v114 + 8) = 0xE000000000000000;
        *(v114 + 9) = 0;
        *(v114 + 10) = 0xE000000000000000;
        *(v114 + 11) = MEMORY[0x277D84F90];
        v114[96] = 0;
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        __swift_storeEnumTagSinglePayload(&v114[*(v67 + 52)], 1, 1, v66);
        __swift_storeEnumTagSinglePayload(&v114[*(v67 + 56)], 1, 1, v162);
        if (__swift_getEnumTagSinglePayload(v111, 1, v67) != 1)
        {
          sub_26BD04E80(v111, &qword_280449908, &unk_26BDA9DD0);
        }
      }

      else
      {
        sub_26BD90568(v111, v147, type metadata accessor for AuthResponse.Account);
      }

      v115 = *(v114 + 7);
      v116 = *(v114 + 8);

      sub_26BD904EC(v114, type metadata accessor for AuthResponse.Account);
      TriageRequest.ClientContext.email.setter(v115, v116, v117, v118, v119, v120, v121);
      v122 = v150;
      sub_26BD0E880(v103 + v104, v150, &qword_280449908, &unk_26BDA9DD0);
      if (__swift_getEnumTagSinglePayload(v122, 1, v67) == 1)
      {
        *v113 = 0;
        *(v113 + 8) = 0;
        *(v113 + 16) = 0xE000000000000000;
        *(v113 + 24) = 0;
        *(v113 + 32) = 0xE000000000000000;
        *(v113 + 40) = 0;
        *(v113 + 48) = 0xE000000000000000;
        *(v113 + 56) = 0;
        *(v113 + 64) = 0xE000000000000000;
        *(v113 + 72) = 0;
        *(v113 + 80) = 0xE000000000000000;
        *(v113 + 88) = MEMORY[0x277D84F90];
        *(v113 + 96) = 0;
        _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
        __swift_storeEnumTagSinglePayload(v113 + *(v67 + 52), 1, 1, v66);
        __swift_storeEnumTagSinglePayload(v113 + *(v67 + 56), 1, 1, v162);
        v123 = __swift_getEnumTagSinglePayload(v122, 1, v67);
        v124 = v151;
        if (v123 != 1)
        {
          sub_26BD04E80(v122, &qword_280449908, &unk_26BDA9DD0);
        }
      }

      else
      {
        sub_26BD90568(v122, v113, type metadata accessor for AuthResponse.Account);
        v124 = v151;
      }

      v125 = *v113;
      sub_26BD904EC(v113, type metadata accessor for AuthResponse.Account);
      if (v125)
      {
        v126 = v143;
        sub_26BD0E880(v103 + v104, v143, &qword_280449908, &unk_26BDA9DD0);
        if (__swift_getEnumTagSinglePayload(v126, 1, v67) == 1)
        {
          *v124 = 0;
          *(v124 + 8) = 0;
          *(v124 + 16) = 0xE000000000000000;
          *(v124 + 24) = 0;
          *(v124 + 32) = 0xE000000000000000;
          *(v124 + 40) = 0;
          *(v124 + 48) = 0xE000000000000000;
          *(v124 + 56) = 0;
          *(v124 + 64) = 0xE000000000000000;
          *(v124 + 72) = 0;
          *(v124 + 80) = 0xE000000000000000;
          *(v124 + 88) = MEMORY[0x277D84F90];
          *(v124 + 96) = 0;
          _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
          v127 = v66;
          __swift_storeEnumTagSinglePayload(v124 + *(v67 + 52), 1, 1, v66);
          __swift_storeEnumTagSinglePayload(v124 + *(v67 + 56), 1, 1, v162);
          if (__swift_getEnumTagSinglePayload(v126, 1, v67) != 1)
          {
            sub_26BD04E80(v126, &qword_280449908, &unk_26BDA9DD0);
          }
        }

        else
        {
          v127 = v66;
          sub_26BD90568(v126, v124, type metadata accessor for AuthResponse.Account);
        }

        v128 = v144;
        sub_26BD0E880(v124 + *(v67 + 52), v144, &qword_280449840, &qword_26BDA36D8);
        sub_26BD904EC(v124, type metadata accessor for AuthResponse.Account);
        v129 = v67;
        v130 = __swift_getEnumTagSinglePayload(v128, 1, v127);
        sub_26BD04E80(v128, &qword_280449840, &qword_26BDA36D8);
        if (v130 != 1)
        {
          v131 = v103 + v104;
          v132 = v139;
          sub_26BD0E880(v131, v139, &qword_280449908, &unk_26BDA9DD0);
          if (__swift_getEnumTagSinglePayload(v132, 1, v129) == 1)
          {
            v133 = v140;
            *v140 = 0;
            *(v133 + 1) = 0;
            *(v133 + 2) = 0xE000000000000000;
            *(v133 + 3) = 0;
            *(v133 + 4) = 0xE000000000000000;
            *(v133 + 5) = 0;
            *(v133 + 6) = 0xE000000000000000;
            *(v133 + 7) = 0;
            *(v133 + 8) = 0xE000000000000000;
            *(v133 + 9) = 0;
            *(v133 + 10) = 0xE000000000000000;
            *(v133 + 11) = MEMORY[0x277D84F90];
            v133[96] = 0;
            _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
            __swift_storeEnumTagSinglePayload(&v133[*(v129 + 52)], 1, 1, v127);
            __swift_storeEnumTagSinglePayload(&v133[*(v129 + 56)], 1, 1, v162);
            v134 = __swift_getEnumTagSinglePayload(v132, 1, v129);
            v135 = v142;
            v136 = v141;
            if (v134 != 1)
            {
              sub_26BD04E80(v132, &qword_280449908, &unk_26BDA9DD0);
            }
          }

          else
          {
            v133 = v140;
            sub_26BD90568(v132, v140, type metadata accessor for AuthResponse.Account);
            v135 = v142;
            v136 = v141;
          }

          sub_26BD0E880(&v133[*(v163 + 52)], v136, &qword_280449840, &qword_26BDA36D8);
          if (__swift_getEnumTagSinglePayload(v136, 1, v127) == 1)
          {
            *v135 = 0;
            v135[1] = 0xE000000000000000;
            v135[2] = 0;
            v135[3] = 0xE000000000000000;
            _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
            sub_26BD904EC(v133, type metadata accessor for AuthResponse.Account);
            v137 = *(v127 + 28);
            v138 = sub_26BDA07E0();
            __swift_storeEnumTagSinglePayload(v135 + v137, 1, 1, v138);
            if (__swift_getEnumTagSinglePayload(v136, 1, v127) != 1)
            {
              sub_26BD04E80(v136, &qword_280449840, &qword_26BDA36D8);
            }
          }

          else
          {
            sub_26BD904EC(v133, type metadata accessor for AuthResponse.Account);
            sub_26BD90568(v136, v135, type metadata accessor for PhoneNumber);
          }

          TriageRequest.ClientContext.phoneNumber.setter();
        }
      }

      return sub_26BD904EC(v159, type metadata accessor for AuthResponse);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD8E4FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B0C8, &unk_26BDA9DE0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_26BDA05F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BDA05E0();
  sub_26BDA0780();
  (*(v4 + 8))(v6, v3);
  if (qword_280448F50 != -1)
  {
    swift_once();
  }

  v7 = sub_26BDA0770();
  v8 = __swift_project_value_buffer(v7, qword_28044B0A0);
  (*(*(v7 - 8) + 16))(v2, v8, v7);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  v9 = sub_26BDA07A0();
  sub_26BD04E80(v2, &qword_28044B0C8, &unk_26BDA9DE0);
  return v9;
}

void sub_26BD8E6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v156 = a4;
  v159 = a3;
  v158 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = &v145 - v9;
  v10 = type metadata accessor for PhoneNumber(0);
  v11 = MEMORY[0x28223BE20](v10);
  v151 = (&v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v147 = (&v145 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v149 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v145 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v155 = &v145 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v154 = &v145 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v145 - v23;
  v153 = type metadata accessor for AuthResponse.Account(0);
  v25 = MEMORY[0x28223BE20](v153);
  v150 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v146 = &v145 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v145 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v145 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v145 - v35;
  v37 = *(a2 + *(type metadata accessor for SupportOption(0) + 20));
  swift_beginAccess();
  v43 = *(v37 + 24);
  v152 = v8;
  if (v43 == 1 && *(v37 + 16) == 3)
  {
    v44 = 1413564483;
  }

  else
  {
    v44 = 1280065859;
  }

  TriageRequest.ExecuteSupportOption.solutionTypeString.setter(v44, 0xE400000000000000, v38, v39, v40, v41, v42);
  swift_beginAccess();
  v46 = *(v37 + 32);
  v45 = *(v37 + 40);

  TriageRequest.ExecuteSupportOption.solutionSubTypeString.setter(v46, v45, v47, v48, v49, v50, v51);
  sub_26BD8F4AC();
  if (v52)
  {
    TriageRequest.ExecuteSupportOption.uuid.setter();
  }

  v53 = sub_26BD8F6FC();
  v61 = v10;
  v62 = v153;
  if (v54)
  {
    TriageRequest.ExecuteSupportOption.chatTransactionID.setter(v53, v54, v55, v56, v57, v58, v59, v60, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  }

  v63 = *(v159 + *(type metadata accessor for AuthResponse(0) + 20));
  v64 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  swift_beginAccess();
  v159 = v63;
  sub_26BD0E880(v63 + v64, v24, &qword_280449908, &unk_26BDA9DD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v62);
  v66 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    *v36 = 0;
    *(v36 + 1) = 0;
    *(v36 + 2) = 0xE000000000000000;
    *(v36 + 3) = 0;
    *(v36 + 4) = 0xE000000000000000;
    *(v36 + 5) = 0;
    *(v36 + 6) = 0xE000000000000000;
    *(v36 + 7) = 0;
    *(v36 + 8) = 0xE000000000000000;
    *(v36 + 9) = 0;
    *(v36 + 10) = 0xE000000000000000;
    *(v36 + 11) = v66;
    v36[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    __swift_storeEnumTagSinglePayload(&v36[*(v62 + 52)], 1, 1, v61);
    v67 = *(v62 + 56);
    v68 = type metadata accessor for AuthResponse.AuthenticationToken(0);
    __swift_storeEnumTagSinglePayload(&v36[v67], 1, 1, v68);
    if (__swift_getEnumTagSinglePayload(v24, 1, v62) != 1)
    {
      sub_26BD04E80(v24, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v24, v36, type metadata accessor for AuthResponse.Account);
  }

  v69 = *(v36 + 7);
  v70 = *(v36 + 8);

  sub_26BD904EC(v36, type metadata accessor for AuthResponse.Account);
  TriageRequest.ExecuteSupportOption.appleID.setter(v69, v70, v71, v72, v73, v74, v75);
  v76 = v154;
  sub_26BD0E880(v159 + v64, v154, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v76, 1, v62) == 1)
  {
    *v34 = 0;
    *(v34 + 1) = 0;
    *(v34 + 2) = 0xE000000000000000;
    *(v34 + 3) = 0;
    *(v34 + 4) = 0xE000000000000000;
    *(v34 + 5) = 0;
    *(v34 + 6) = 0xE000000000000000;
    *(v34 + 7) = 0;
    *(v34 + 8) = 0xE000000000000000;
    *(v34 + 9) = 0;
    *(v34 + 10) = 0xE000000000000000;
    *(v34 + 11) = MEMORY[0x277D84F90];
    v34[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    __swift_storeEnumTagSinglePayload(&v34[*(v62 + 52)], 1, 1, v61);
    v77 = *(v62 + 56);
    v78 = type metadata accessor for AuthResponse.AuthenticationToken(0);
    __swift_storeEnumTagSinglePayload(&v34[v77], 1, 1, v78);
    if (__swift_getEnumTagSinglePayload(v76, 1, v62) != 1)
    {
      sub_26BD04E80(v76, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v76, v34, type metadata accessor for AuthResponse.Account);
  }

  v79 = *(v34 + 1);
  v80 = *(v34 + 2);

  sub_26BD904EC(v34, type metadata accessor for AuthResponse.Account);
  TriageRequest.ExecuteSupportOption.userEnteredFirstName.setter(v79, v80, v81, v82, v83, v84, v85, v86, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  v87 = v155;
  sub_26BD0E880(v159 + v64, v155, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v87, 1, v62) == 1)
  {
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = 0xE000000000000000;
    *(v31 + 3) = 0;
    *(v31 + 4) = 0xE000000000000000;
    *(v31 + 5) = 0;
    *(v31 + 6) = 0xE000000000000000;
    *(v31 + 7) = 0;
    *(v31 + 8) = 0xE000000000000000;
    *(v31 + 9) = 0;
    *(v31 + 10) = 0xE000000000000000;
    *(v31 + 11) = MEMORY[0x277D84F90];
    v31[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    __swift_storeEnumTagSinglePayload(&v31[*(v62 + 52)], 1, 1, v61);
    v88 = *(v62 + 56);
    v89 = type metadata accessor for AuthResponse.AuthenticationToken(0);
    __swift_storeEnumTagSinglePayload(&v31[v88], 1, 1, v89);
    if (__swift_getEnumTagSinglePayload(v87, 1, v62) != 1)
    {
      sub_26BD04E80(v87, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v87, v31, type metadata accessor for AuthResponse.Account);
  }

  v90 = *(v31 + 3);
  v91 = *(v31 + 4);

  sub_26BD904EC(v31, type metadata accessor for AuthResponse.Account);
  TriageRequest.ExecuteSupportOption.userEnteredLastName.setter(v90, v91, v92, v93, v94, v95, v96, v97, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  v98 = (v156 + *(type metadata accessor for HelpMeTroubleshootRequestGenerator(0) + 20));
  v99 = *v98;
  if ((v99 & 1) != 0 && (v100 = v98[4], v101 = v98[5], __swift_project_boxed_opaque_existential_1(v98 + 1, v100), v102 = (*(v101 + 8))(0xD00000000000001DLL, 0x800000026BDAFCF0, v100, v101), v103))
  {
    v110 = v102;
    v111 = v103;
  }

  else
  {
    v112 = v145;
    sub_26BD0E880(v159 + v64, v145, &qword_280449908, &unk_26BDA9DD0);
    if (__swift_getEnumTagSinglePayload(v112, 1, v62) == 1)
    {
      v113 = v146;
      *v146 = 0;
      *(v113 + 1) = 0;
      *(v113 + 2) = 0xE000000000000000;
      *(v113 + 3) = 0;
      *(v113 + 4) = 0xE000000000000000;
      *(v113 + 5) = 0;
      *(v113 + 6) = 0xE000000000000000;
      *(v113 + 7) = 0;
      *(v113 + 8) = 0xE000000000000000;
      *(v113 + 9) = 0;
      *(v113 + 10) = 0xE000000000000000;
      *(v113 + 11) = MEMORY[0x277D84F90];
      v113[96] = 0;
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      __swift_storeEnumTagSinglePayload(&v113[*(v62 + 52)], 1, 1, v61);
      v114 = *(v62 + 56);
      v115 = type metadata accessor for AuthResponse.AuthenticationToken(0);
      v116 = &v113[v114];
      v117 = v113;
      __swift_storeEnumTagSinglePayload(v116, 1, 1, v115);
      v118 = __swift_getEnumTagSinglePayload(v112, 1, v62) == 1;
      v119 = v112;
      v121 = v147;
      v120 = v148;
      if (!v118)
      {
        sub_26BD04E80(v119, &qword_280449908, &unk_26BDA9DD0);
      }
    }

    else
    {
      v117 = v146;
      sub_26BD90568(v112, v146, type metadata accessor for AuthResponse.Account);
      v121 = v147;
      v120 = v148;
    }

    sub_26BD0E880(&v117[*(v62 + 52)], v120, &qword_280449840, &qword_26BDA36D8);
    if (__swift_getEnumTagSinglePayload(v120, 1, v61) == 1)
    {
      *v121 = 0;
      v121[1] = 0xE000000000000000;
      v121[2] = 0;
      v121[3] = 0xE000000000000000;
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      sub_26BD904EC(v117, type metadata accessor for AuthResponse.Account);
      v122 = *(v61 + 28);
      v123 = sub_26BDA07E0();
      __swift_storeEnumTagSinglePayload(v121 + v122, 1, 1, v123);
      if (__swift_getEnumTagSinglePayload(v120, 1, v61) != 1)
      {
        sub_26BD04E80(v120, &qword_280449840, &qword_26BDA36D8);
      }
    }

    else
    {
      sub_26BD904EC(v117, type metadata accessor for AuthResponse.Account);
      sub_26BD90568(v120, v121, type metadata accessor for PhoneNumber);
    }

    v110 = v121[2];
    v111 = v121[3];

    sub_26BD904EC(v121, type metadata accessor for PhoneNumber);
  }

  TriageRequest.ExecuteSupportOption.userEnteredPhoneNumber.setter(v110, v111, v104, v105, v106, v107, v108, v109, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  if (v99 && (v124 = v98[4], v125 = v98[5], __swift_project_boxed_opaque_existential_1(v98 + 1, v124), v126 = (*(v125 + 8))(0xD00000000000001DLL, 0x800000026BDAFD10, v124, v125), v127))
  {
    v134 = v126;
    v135 = v127;
  }

  else
  {
    v136 = v149;
    sub_26BD0E880(v159 + v64, v149, &qword_280449908, &unk_26BDA9DD0);
    if (__swift_getEnumTagSinglePayload(v136, 1, v62) == 1)
    {
      v137 = v150;
      *v150 = 0;
      *(v137 + 1) = 0;
      *(v137 + 2) = 0xE000000000000000;
      *(v137 + 3) = 0;
      *(v137 + 4) = 0xE000000000000000;
      *(v137 + 5) = 0;
      *(v137 + 6) = 0xE000000000000000;
      *(v137 + 7) = 0;
      *(v137 + 8) = 0xE000000000000000;
      *(v137 + 9) = 0;
      *(v137 + 10) = 0xE000000000000000;
      *(v137 + 11) = MEMORY[0x277D84F90];
      v137[96] = 0;
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      __swift_storeEnumTagSinglePayload(&v137[*(v62 + 52)], 1, 1, v61);
      v138 = *(v62 + 56);
      v139 = type metadata accessor for AuthResponse.AuthenticationToken(0);
      __swift_storeEnumTagSinglePayload(&v137[v138], 1, 1, v139);
      v140 = __swift_getEnumTagSinglePayload(v136, 1, v62);
      v142 = v151;
      v141 = v152;
      if (v140 != 1)
      {
        sub_26BD04E80(v136, &qword_280449908, &unk_26BDA9DD0);
      }
    }

    else
    {
      v137 = v150;
      sub_26BD90568(v136, v150, type metadata accessor for AuthResponse.Account);
      v142 = v151;
      v141 = v152;
    }

    sub_26BD0E880(&v137[*(v62 + 52)], v141, &qword_280449840, &qword_26BDA36D8);
    if (__swift_getEnumTagSinglePayload(v141, 1, v61) == 1)
    {
      *v142 = 0;
      v142[1] = 0xE000000000000000;
      v142[2] = 0;
      v142[3] = 0xE000000000000000;
      _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
      sub_26BD904EC(v137, type metadata accessor for AuthResponse.Account);
      v143 = *(v61 + 28);
      v144 = sub_26BDA07E0();
      __swift_storeEnumTagSinglePayload(v142 + v143, 1, 1, v144);
      if (__swift_getEnumTagSinglePayload(v141, 1, v61) != 1)
      {
        sub_26BD04E80(v141, &qword_280449840, &qword_26BDA36D8);
      }
    }

    else
    {
      sub_26BD904EC(v137, type metadata accessor for AuthResponse.Account);
      sub_26BD90568(v141, v142, type metadata accessor for PhoneNumber);
    }

    v134 = *v142;
    v135 = v142[1];

    sub_26BD904EC(v142, type metadata accessor for PhoneNumber);
  }

  TriageRequest.ExecuteSupportOption.userEnteredCountryCode.setter(v134, v135, v128, v129, v130, v131, v132, v133, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
}

uint64_t sub_26BD8F424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044A8D8, &unk_26BDA9DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD8F4AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  v4 = type metadata accessor for SupportOption.BZCHTDetails(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + *(type metadata accessor for SupportOption(0) + 20));
  swift_beginAccess();

  v8 = sub_26BDA0F30();

  v9 = 0;
  if (v8 == 2)
  {
    v10 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
    swift_beginAccess();
    sub_26BD0E880(v7 + v10, v3, &qword_2804490B0, &qword_26BDA1A58);
    v11 = type metadata accessor for SupportOption.OneOf_Details(0);
    if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
    {
      sub_26BD04E80(v3, &qword_2804490B0, &qword_26BDA1A58);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_26BD90568(v3, v6, type metadata accessor for SupportOption.BZCHTDetails);
LABEL_8:
        v9 = *v6;

        sub_26BD904EC(v6, type metadata accessor for SupportOption.BZCHTDetails);
        return v9;
      }

      sub_26BD904EC(v3, type metadata accessor for SupportOption.OneOf_Details);
    }

    *v6 = 0;
    *(v6 + 1) = 0xE000000000000000;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0xE000000000000000;
    v6[32] = 0;
    *(v6 + 5) = 0;
    *(v6 + 6) = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  return v9;
}

uint64_t sub_26BD8F6FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804490B0, &qword_26BDA1A58);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  v4 = type metadata accessor for SupportOption.BZCHTDetails(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + *(type metadata accessor for SupportOption(0) + 20));
  swift_beginAccess();

  v8 = sub_26BDA0F30();

  v9 = 0;
  if (v8 == 2)
  {
    v10 = OBJC_IVAR____TtCV15SupportServices13SupportOptionP33_5B97FF930A7100CF5CEC0ED5A3D3C34B13_StorageClass__details;
    swift_beginAccess();
    sub_26BD0E880(v7 + v10, v3, &qword_2804490B0, &qword_26BDA1A58);
    v11 = type metadata accessor for SupportOption.OneOf_Details(0);
    if (__swift_getEnumTagSinglePayload(v3, 1, v11) == 1)
    {
      sub_26BD04E80(v3, &qword_2804490B0, &qword_26BDA1A58);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_26BD90568(v3, v6, type metadata accessor for SupportOption.BZCHTDetails);
LABEL_8:
        v9 = *(v6 + 2);

        sub_26BD904EC(v6, type metadata accessor for SupportOption.BZCHTDetails);
        return v9;
      }

      sub_26BD904EC(v3, type metadata accessor for SupportOption.OneOf_Details);
    }

    *v6 = 0;
    *(v6 + 1) = 0xE000000000000000;
    *(v6 + 2) = 0;
    *(v6 + 3) = 0xE000000000000000;
    v6[32] = 0;
    *(v6 + 5) = 0;
    *(v6 + 6) = 0xE000000000000000;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    goto LABEL_8;
  }

  return v9;
}

uint64_t sub_26BD8F94C(uint64_t *a1, uint64_t a2)
{
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v77 - v4;
  v5 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  MEMORY[0x28223BE20](v5);
  v77 = (&v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v83 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v81 = &v77 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v80 = &v77 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v79 = &v77 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v77 - v16;
  v18 = type metadata accessor for AuthResponse.Account(0);
  v19 = MEMORY[0x28223BE20](v18);
  v82 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v77 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v77 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v77 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v77 - v30;
  v32 = *(a2 + *(type metadata accessor for AuthResponse(0) + 20));
  v33 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__primaryAccount;
  swift_beginAccess();
  v85 = v32;
  sub_26BD0E880(v32 + v33, v17, &qword_280449908, &unk_26BDA9DD0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v18);
  v35 = MEMORY[0x277D84F90];
  v84 = v5;
  if (EnumTagSinglePayload == 1)
  {
    *v31 = 0;
    *(v31 + 1) = 0;
    *(v31 + 2) = 0xE000000000000000;
    *(v31 + 3) = 0;
    *(v31 + 4) = 0xE000000000000000;
    *(v31 + 5) = 0;
    *(v31 + 6) = 0xE000000000000000;
    *(v31 + 7) = 0;
    *(v31 + 8) = 0xE000000000000000;
    *(v31 + 9) = 0;
    *(v31 + 10) = 0xE000000000000000;
    *(v31 + 11) = v35;
    v31[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v36 = v33;
    v37 = *(v18 + 52);
    v38 = type metadata accessor for PhoneNumber(0);
    v39 = &v31[v37];
    v33 = v36;
    v5 = v84;
    __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
    __swift_storeEnumTagSinglePayload(&v31[*(v18 + 56)], 1, 1, v5);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
    {
      sub_26BD04E80(v17, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v17, v31, type metadata accessor for AuthResponse.Account);
  }

  v40 = v78;
  sub_26BD0E880(&v31[*(v18 + 56)], v78, &qword_280449848, &qword_26BDA36E0);
  v41 = __swift_getEnumTagSinglePayload(v40, 1, v5);
  v42 = v77;
  if (v41 == 1)
  {
    *v77 = 0;
    v42[1] = 0xE000000000000000;
    v42[2] = 0;
    v42[3] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    sub_26BD904EC(v31, type metadata accessor for AuthResponse.Account);
    if (__swift_getEnumTagSinglePayload(v40, 1, v5) != 1)
    {
      sub_26BD04E80(v40, &qword_280449848, &qword_26BDA36E0);
    }
  }

  else
  {
    sub_26BD904EC(v31, type metadata accessor for AuthResponse.Account);
    sub_26BD90568(v40, v42, type metadata accessor for AuthResponse.AuthenticationToken);
  }

  v43 = v42[3];
  sub_26BD904EC(v42, type metadata accessor for AuthResponse.AuthenticationToken);
  v87 = v43;
  v44 = sub_26BDA0FA0();
  v46 = v45;
  v47 = v86;

  *v47 = v44;
  v47[1] = v46;
  v48 = v79;
  sub_26BD0E880(v85 + v33, v79, &qword_280449908, &unk_26BDA9DD0);
  v49 = __swift_getEnumTagSinglePayload(v48, 1, v18);
  v50 = MEMORY[0x277D84F90];
  if (v49 == 1)
  {
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = 0xE000000000000000;
    *(v29 + 3) = 0;
    *(v29 + 4) = 0xE000000000000000;
    *(v29 + 5) = 0;
    *(v29 + 6) = 0xE000000000000000;
    *(v29 + 7) = 0;
    *(v29 + 8) = 0xE000000000000000;
    *(v29 + 9) = 0;
    *(v29 + 10) = 0xE000000000000000;
    *(v29 + 11) = v50;
    v29[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v51 = *(v18 + 52);
    v52 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(&v29[v51], 1, 1, v52);
    __swift_storeEnumTagSinglePayload(&v29[*(v18 + 56)], 1, 1, v84);
    if (__swift_getEnumTagSinglePayload(v48, 1, v18) != 1)
    {
      sub_26BD04E80(v48, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v48, v29, type metadata accessor for AuthResponse.Account);
  }

  v54 = *(v29 + 1);
  v53 = *(v29 + 2);

  sub_26BD904EC(v29, type metadata accessor for AuthResponse.Account);
  v55 = v86;

  v55[2] = v54;
  v55[3] = v53;
  v56 = v80;
  sub_26BD0E880(v85 + v33, v80, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v56, 1, v18) == 1)
  {
    *v26 = 0;
    *(v26 + 1) = 0;
    *(v26 + 2) = 0xE000000000000000;
    *(v26 + 3) = 0;
    *(v26 + 4) = 0xE000000000000000;
    *(v26 + 5) = 0;
    *(v26 + 6) = 0xE000000000000000;
    *(v26 + 7) = 0;
    *(v26 + 8) = 0xE000000000000000;
    *(v26 + 9) = 0;
    *(v26 + 10) = 0xE000000000000000;
    *(v26 + 11) = v50;
    v26[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v57 = *(v18 + 52);
    v58 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(&v26[v57], 1, 1, v58);
    __swift_storeEnumTagSinglePayload(&v26[*(v18 + 56)], 1, 1, v84);
    v59 = __swift_getEnumTagSinglePayload(v56, 1, v18);
    v60 = v82;
    if (v59 != 1)
    {
      sub_26BD04E80(v56, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v56, v26, type metadata accessor for AuthResponse.Account);
    v60 = v82;
  }

  v62 = *(v26 + 3);
  v61 = *(v26 + 4);

  sub_26BD904EC(v26, type metadata accessor for AuthResponse.Account);
  v63 = v86;

  v63[4] = v62;
  v63[5] = v61;
  v64 = v81;
  sub_26BD0E880(v85 + v33, v81, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v64, 1, v18) == 1)
  {
    *v23 = 0;
    *(v23 + 1) = 0;
    *(v23 + 2) = 0xE000000000000000;
    *(v23 + 3) = 0;
    *(v23 + 4) = 0xE000000000000000;
    *(v23 + 5) = 0;
    *(v23 + 6) = 0xE000000000000000;
    *(v23 + 7) = 0;
    *(v23 + 8) = 0xE000000000000000;
    *(v23 + 9) = 0;
    *(v23 + 10) = 0xE000000000000000;
    *(v23 + 11) = v50;
    v23[96] = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v65 = *(v18 + 52);
    v66 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(&v23[v65], 1, 1, v66);
    __swift_storeEnumTagSinglePayload(&v23[*(v18 + 56)], 1, 1, v84);
    if (__swift_getEnumTagSinglePayload(v64, 1, v18) != 1)
    {
      sub_26BD04E80(v64, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v64, v23, type metadata accessor for AuthResponse.Account);
  }

  v68 = *(v23 + 7);
  v67 = *(v23 + 8);

  sub_26BD904EC(v23, type metadata accessor for AuthResponse.Account);
  v69 = v86;

  v69[6] = v68;
  v69[7] = v67;
  v70 = v83;
  sub_26BD0E880(v85 + v33, v83, &qword_280449908, &unk_26BDA9DD0);
  if (__swift_getEnumTagSinglePayload(v70, 1, v18) == 1)
  {
    *v60 = 0;
    *(v60 + 8) = 0;
    *(v60 + 16) = 0xE000000000000000;
    *(v60 + 24) = 0;
    *(v60 + 32) = 0xE000000000000000;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0xE000000000000000;
    *(v60 + 56) = 0;
    *(v60 + 64) = 0xE000000000000000;
    *(v60 + 72) = 0;
    *(v60 + 80) = 0xE000000000000000;
    *(v60 + 88) = v50;
    *(v60 + 96) = 0;
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v71 = *(v18 + 52);
    v72 = type metadata accessor for PhoneNumber(0);
    __swift_storeEnumTagSinglePayload(v60 + v71, 1, 1, v72);
    __swift_storeEnumTagSinglePayload(v60 + *(v18 + 56), 1, 1, v84);
    if (__swift_getEnumTagSinglePayload(v70, 1, v18) != 1)
    {
      sub_26BD04E80(v70, &qword_280449908, &unk_26BDA9DD0);
    }
  }

  else
  {
    sub_26BD90568(v70, v60, type metadata accessor for AuthResponse.Account);
  }

  v74 = *(v60 + 72);
  v73 = *(v60 + 80);

  sub_26BD904EC(v60, type metadata accessor for AuthResponse.Account);
  v75 = v86;

  v75[8] = v74;
  v75[9] = v73;
  return result;
}

uint64_t sub_26BD903A8()
{
  v0 = sub_26BDA0770();
  __swift_allocate_value_buffer(v0, qword_28044B0A0);
  __swift_project_value_buffer(v0, qword_28044B0A0);
  return sub_26BDA0670();
}

uint64_t sub_26BD90424(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return a2;
}

uint64_t sub_26BD904A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD904EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26BD90568(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_147();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_5()
{

  return sub_26BD904EC(v0, type metadata accessor for AllSolutionsRequest);
}

uint64_t OUTLINED_FUNCTION_19_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26BDA03E0();
}

uint64_t sub_26BD9069C(uint64_t a1, uint64_t a2)
{
  v3 = sub_26BDA0BC0();
  v4 = [v2 stringForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_26BDA0BD0();

  return v5;
}

uint64_t sub_26BD9073C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26BD9077C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_26BD907EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26BDA0B40();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_26BD90888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26BDA0B40();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for HTTPRequestManager(uint64_t a1)
{
  result = qword_28044B0D0;
  if (!qword_28044B0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BD90954(uint64_t a1)
{
  sub_26BD909F0();
  if (v1 <= 0x3F)
  {
    sub_26BDA0B40();
    if (v2 <= 0x3F)
    {
      sub_26BD90A38(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_26BD909F0()
{
  result = qword_28044B0E0;
  if (!qword_28044B0E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_28044B0E0);
  }

  return result;
}

void sub_26BD90A38(uint64_t a1)
{
  if (!qword_28044B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B0F0, "xu");
    v1 = sub_26BDA0DA0();
    if (!v2)
    {
      atomic_store(v1, &qword_28044B0E8);
    }
  }
}

uint64_t sub_26BD90A9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v3 = OUTLINED_FUNCTION_9_5();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26BD90AC4()
{
  OUTLINED_FUNCTION_30_2();
  v0[4] = [objc_opt_self() sessionWithConfiguration_];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_26BD90B8C;
  v2 = v0[3];

  return MEMORY[0x28211ECF8](v2, 0);
}

uint64_t sub_26BD90B8C()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_40_3();
  v9 = v8;
  OUTLINED_FUNCTION_26_2();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v12 = v11;
  *(v9 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41_2();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {

    v16 = *(v11 + 8);

    return v16(v7, v5, v3);
  }
}

uint64_t sub_26BD90CE8()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_25_1();

  return v1();
}

uint64_t sub_26BD90D44@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AuthenticationHeadersProvider(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = [objc_opt_self() defaultStore];
  v11 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  *v9 = v10;
  *(v9 + 1) = v11;
  v9[16] = a1;
  v12 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v12);
  if (v14)
  {
    OUTLINED_FUNCTION_18_4();
    sub_26BDA0B30();
    v15 = sub_26BDA0B70();
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28044B148, &qword_26BDA9EF8);
    a2[4] = &off_287CB1338;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_26BD94748(v9, v7);
    sub_26BD93830(v7, v15, boxed_opaque_existential_1);
    return sub_26BD947AC(v9, type metadata accessor for AuthenticationHeadersProvider);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD90EF4()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  *(v1 + 280) = v4;
  *(v1 + 288) = v0;
  *(v1 + 545) = v5;
  *(v1 + 544) = v6;
  *(v1 + 272) = v7;
  v8 = sub_26BDA0C00();
  OUTLINED_FUNCTION_110(v8);
  *(v1 + 296) = OUTLINED_FUNCTION_78_1();
  v9 = sub_26BDA10E0();
  OUTLINED_FUNCTION_110(v9);
  *(v1 + 304) = OUTLINED_FUNCTION_78_1();
  v10 = sub_26BDA10C0();
  OUTLINED_FUNCTION_110(v10);
  *(v1 + 312) = OUTLINED_FUNCTION_78_1();
  v11 = sub_26BDA1130();
  OUTLINED_FUNCTION_110(v11);
  *(v1 + 320) = OUTLINED_FUNCTION_78_1();
  v12 = sub_26BDA1140();
  *(v1 + 328) = v12;
  OUTLINED_FUNCTION_38_4(v12);
  *(v1 + 336) = v13;
  *(v1 + 344) = OUTLINED_FUNCTION_78_1();
  v14 = sub_26BDA0EA0();
  *(v1 + 352) = v14;
  OUTLINED_FUNCTION_38_4(v14);
  *(v1 + 360) = v15;
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v16 = type metadata accessor for CompositeHTTPHeadersProvider(0);
  *(v1 + 384) = v16;
  OUTLINED_FUNCTION_110(v16);
  *(v1 + 392) = OUTLINED_FUNCTION_78_1();
  v17 = sub_26BDA0370();
  *(v1 + 400) = v17;
  OUTLINED_FUNCTION_38_4(v17);
  *(v1 + 408) = v18;
  *(v1 + 416) = OUTLINED_FUNCTION_78_1();
  v19 = v3[1];
  *(v1 + 88) = *v3;
  *(v1 + 104) = v19;
  v20 = v3[3];
  *(v1 + 120) = v3[2];
  *(v1 + 136) = v20;
  v21 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26BD91110()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v18 = *(v0 + 384);
  v19 = *(v0 + 352);
  v6 = *(v0 + 545);
  v7 = *(v0 + 544);
  v8 = *(v0 + 272);
  *(v0 + 424) = swift_allocBox();
  *(v0 + 432) = v9;
  v17 = v9;
  (*(v2 + 16))(v9, v8, v1);
  v10 = sub_26BD92310(v7, (v0 + 88), v6);
  *(v0 + 440) = v10;

  sub_26BDA0E90();
  *v3 = v10;
  (*(v5 + 32))(v3 + *(v18 + 20), v4, v19);
  v11 = [objc_opt_self() mainBundle];
  result = sub_26BD892D8(v11);
  if (v13)
  {
    OUTLINED_FUNCTION_18_4();
    sub_26BDA0B30();
    v14 = swift_task_alloc();
    *(v0 + 448) = v14;
    *v14 = v0;
    v14[1] = sub_26BD912C0;
    v15 = *(v0 + 416);
    v16 = *(v0 + 280);

    return sub_26BD92594(v15, v17, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26BD912C0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 456) = v0;

  if (v0)
  {
    v7 = *(v3 + 392);

    OUTLINED_FUNCTION_5_6();
    sub_26BD947AC(v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_5_6();
    sub_26BD947AC(v9, v10);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26BD913E0()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 280);
  (*(*(v0 + 408) + 40))(*(v0 + 432), *(v0 + 416), *(v0 + 400));
  *(v0 + 546) = sub_26BD92984() & 1;

  return MEMORY[0x2822009F8](sub_26BD9146C, v1, 0);
}

uint64_t sub_26BD9146C()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD9E554(*(v0 + 546), v1, v2, v3, v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26BD914CC()
{
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 424);
  v2 = *(v0 + 288);
  v3 = *(v0 + 544);
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = 0;
  sub_26BDA0E90();
  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  *(v4 + 40) = v0 + 176;
  v5 = swift_task_alloc();
  *(v0 + 472) = v5;
  *v5 = v0;
  v5[1] = sub_26BD915D8;

  return sub_26BD93348(0, 0, &unk_26BDA9EB0, v4);
}

uint64_t sub_26BD915D8()
{
  OUTLINED_FUNCTION_34_3();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;
  *v7 = *v1;
  v6[60] = v0;

  if (v0)
  {
    (*(v6[45] + 8))(v6[46], v6[44]);

    v8 = sub_26BD922B4;
    v9 = 0;
  }

  else
  {
    v11 = v6[45];
    v10 = v6[46];
    v12 = v6[44];
    v13 = v6[35];
    v6[61] = v3;
    v6[62] = v5;
    (*(v11 + 8))(v10, v12);

    v8 = sub_26BD9176C;
    v9 = v13;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_26BD9176C()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD9E364(*(v0 + 496), *(v0 + 488), 0xD000000000000012, 0x800000026BDAFE30);
  v1 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26BD917E4()
{
  v44 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B0F8, &qword_26BDA9EC0);
  v4 = sub_26BDA1110();
  OUTLINED_FUNCTION_38_4(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26BDA1990;
  sub_26BDA1100();
  sub_26BDA10F0();
  sub_26BD940F8(v5);
  sub_26BDA1120();
  sub_26BDA10B0();
  sub_26BDA10D0();
  sub_26BDA10A0();
  sub_26BD945AC(&qword_28044B100, MEMORY[0x277CC9FF0], MEMORY[0x277CC9FE8]);
  sub_26BDA1150();
  (*(v2 + 8))(v1, v3);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  type metadata accessor for HTTPRequestManager(0);

  v8 = sub_26BDA0B20();
  v9 = sub_26BDA0D70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_77_2();
    v11 = OUTLINED_FUNCTION_21_3();
    __dst[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_26BD93910(v6, v7, __dst);
    _os_log_impl(&dword_26BCD0000, v8, v9, "[SupportServices] Support service call completed in %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  v15 = *(v0 + 192);
  if (!v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = v15;
    if ([v17 statusCode] - 200 >= 0x64)
    {
      sub_26BDA03A0();
      swift_allocObject();
      v12 = sub_26BDA0390();
      if (*(v0 + 192))
      {
        v35 = *(v0 + 480);

        v36 = *(v0 + 176);
        v37 = *(v0 + 184);
        sub_26BCFEFC4(v36, v37);
        sub_26BD944FC();
        sub_26BDA0380();
        if (v35)
        {

          sub_26BCFF01C(v36, v37);

          v38 = [v17 statusCode];
          v43 = 0;
        }

        else
        {
          sub_26BCFF01C(v36, v37);

          memcpy(__dst, (v0 + 16), sizeof(__dst));
          v38 = [v17 statusCode];
          v43 = 1;
        }

        sub_26BD89FCC();
        v39 = swift_allocError();
        v41 = v40;
        *v40 = v38;
        memcpy(v40 + 1, __dst, 0x48uLL);
        *(v41 + 80) = v43;
        swift_willThrow();

        sub_26BD944BC(*(v0 + 176), *(v0 + 184), *(v0 + 192));
        *(v0 + 536) = v39;
        v12 = OUTLINED_FUNCTION_4_5();

        return MEMORY[0x2822009F8](v12, v13, v14);
      }

LABEL_30:
      __break(1u);
      return MEMORY[0x2822009F8](v12, v13, v14);
    }
  }

  v19 = sub_26BDA0B20();
  v20 = sub_26BDA0D80();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_77_2();
    v22 = OUTLINED_FUNCTION_21_3();
    __dst[0] = v22;
    *v21 = 136315138;
    v12 = swift_beginAccess();
    if (!*(v0 + 192))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    sub_26BCFEFC4(v23, v24);
    sub_26BDA0BF0();
    v25 = sub_26BDA0BE0();
    v27 = v26;
    sub_26BCFF01C(v23, v24);
    if (v27)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0x20676E6973726150;
    }

    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0xEE0064656C696166;
    }

    v30 = sub_26BD93910(v28, v29, __dst);

    *(v21 + 4) = v30;
    _os_log_impl(&dword_26BCD0000, v19, v20, "[SupportServices] API response body: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  v12 = swift_beginAccess();
  if (!*(v0 + 192))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v31 = *(v0 + 176);
  v32 = *(v0 + 184);
  sub_26BCFEFC4(v31, v32);

  sub_26BD944BC(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  v33 = *(v0 + 8);

  return v33(v31, v32);
}

uint64_t sub_26BD91E50()
{
  v1 = *(v0 + 456);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 152);
    v7 = *(v0 + 160);
    *(v0 + 504) = v7;
    sub_26BDA0DF0();

    MEMORY[0x26D695B80](v4, v7);

    *(v0 + 520) = 0xD00000000000001DLL;
    *(v0 + 528) = 0x800000026BDAFDF0;

    return MEMORY[0x2822009F8](sub_26BD92038, v3, 0);
  }

  else
  {
    OUTLINED_FUNCTION_0_13();
    swift_willThrow();

    OUTLINED_FUNCTION_25_1();

    return v5();
  }
}

uint64_t sub_26BD92038()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD9E418(*(v0 + 520), *(v0 + 528), v1, v2, v3, v4, v5, v6);

  v7 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD920A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_8();
  v17 = *(v16 + 512);

  OUTLINED_FUNCTION_0_13();
  v30 = v18;
  v31 = v19;
  v32 = v20;
  swift_willThrow();

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_20_8();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, a13, a14, a15, a16);
}

uint64_t sub_26BD9217C()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD9E418(0xD00000000000001ELL, 0x800000026BDAFE10, v0, v1, v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26BD921F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_19_8();
  OUTLINED_FUNCTION_0_13();
  v28 = v16;
  v29 = v17;
  v30 = v18;
  swift_willThrow();

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_20_8();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, v28, v29, v30, a13, a14, a15, a16);
}

uint64_t sub_26BD922B4()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD944BC(*(v0 + 176), *(v0 + 184), *(v0 + 192));
  *(v0 + 536) = *(v0 + 480);
  v1 = OUTLINED_FUNCTION_4_5();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26BD92310(char a1, _OWORD *a2, char a3)
{
  v7 = a2[1];
  v24[0] = *a2;
  v24[1] = v7;
  v8 = a2[3];
  v24[2] = a2[2];
  v24[3] = v8;
  v9 = *(type metadata accessor for HTTPRequestManager(0) + 28);
  if (*(v3 + v9))
  {
    v10 = *(v3 + v9);
  }

  else
  {
    v11 = *(&v24[0] + 1);
    if (*(&v24[0] + 1))
    {
      v12 = swift_allocObject();
      *&v20 = v12;
      *(v12 + 16) = *&v24[0];
      *(v12 + 24) = v11;
      v13 = a2[2];
      *(v12 + 32) = a2[1];
      *(v12 + 48) = v13;
      *(v12 + 64) = a2[3];
      v14 = &off_287CB14C0;
      v15 = &type metadata for UserAgentHeadersProvider;
    }

    else
    {
      v14 = &off_287CB13F0;
      v15 = &type metadata for SAUserAgentHeadersProvider;
    }

    v21 = v15;
    v22 = v14;
    sub_26BD94670(&v20, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B080, &qword_26BDA9EE0);
    if (a1)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26BDA19E0;
      *(v16 + 56) = &type metadata for TransactionIDHeadersProvider;
      *(v16 + 64) = &off_287CB1428;
      *(v16 + 96) = &type metadata for ContentTypeHeadersProvider;
      *(v16 + 104) = &off_287CB12C8;
      *(v16 + 136) = &type metadata for AnisetteHeadersProvider;
      *(v16 + 144) = &off_287CB0F88;
      sub_26BD8A3D8(v23, v16 + 152);
      v17 = *(v3 + 16);
      sub_26BD94688(v24, &v20);
      v17(a3 & 1);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_26BDA1A20;
      *(v16 + 56) = &type metadata for TransactionIDHeadersProvider;
      *(v16 + 64) = &off_287CB1428;
      *(v16 + 96) = &type metadata for ContentTypeHeadersProvider;
      *(v16 + 104) = &off_287CB12C8;
      sub_26BD8A3D8(v23, v16 + 112);
      sub_26BD94688(v24, &v20);
    }

    if (qword_280448F48 != -1)
    {
      swift_once();
    }

    if (byte_28045A000)
    {
      v18 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B080, &qword_26BDA9EE0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26BDA1A00;
      *(v18 + 56) = &type metadata for BAAHeadersProvider;
      *(v18 + 64) = &off_287CB10B8;
    }

    *&v20 = v16;
    sub_26BD93F90(v18);
    __swift_destroy_boxed_opaque_existential_1(v23);
    v10 = v20;
  }

  return v10;
}

uint64_t sub_26BD92594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BD925B8, 0, 0);
}

uint64_t sub_26BD925B8()
{
  OUTLINED_FUNCTION_30_2();
  v1 = v0[2];
  v2 = v0[3];
  v0[6] = sub_26BDA0370();
  OUTLINED_FUNCTION_18();
  v0[7] = v3;
  (*(v4 + 16))(v1, v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_26BD926B0;
  v6 = v0[4];
  v7 = v0[2];

  return sub_26BD99C88(v7, v6);
}

uint64_t sub_26BD926B0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_26_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26BD927B4()
{
  v1 = 0;
  v2 = *(v0 + 72);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_26BDA0360();
      }

      while (v5);
      continue;
    }
  }

  OUTLINED_FUNCTION_25_1();

  return v9();
}

uint64_t sub_26BD92918()
{
  OUTLINED_FUNCTION_30_2();
  (*(v0[7] + 8))(v0[2], v0[6]);
  OUTLINED_FUNCTION_25_1();

  return v1();
}

uint64_t sub_26BD92984()
{
  v0 = sub_26BDA0310();
  if (!v0)
  {
    goto LABEL_5;
  }

  if (!*(v0 + 16))
  {

LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  sub_26BD31908(0xD000000000000010, 0x800000026BDAFE50);
  v2 = v1;

  return v2 & 1;
}

uint64_t sub_26BD929F0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a3;
  *(v4 + 104) = a4;
  *(v4 + 88) = a2;
  *(v4 + 232) = a1;
  v5 = sub_26BDA0370();
  *(v4 + 112) = v5;
  *(v4 + 120) = *(v5 - 8);
  *(v4 + 128) = swift_task_alloc();
  sub_26BDA0C00();
  *(v4 + 136) = swift_task_alloc();
  v6 = sub_26BDA0510();
  *(v4 + 144) = v6;
  *(v4 + 152) = *(v6 - 8);
  *(v4 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_26BD92B88, 0, 0);
}

uint64_t sub_26BD92B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_19_8();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  if (*(v24 + 232) == 1)
  {
    if (qword_280448F58 != -1)
    {
      swift_once();
    }

    v27 = qword_28045A008;
  }

  else
  {
    v27 = [objc_opt_self() defaultSessionConfiguration];
  }

  *(v24 + 184) = v27;
  v28 = *(v24 + 88);
  type metadata accessor for HTTPRequestManager(0);

  v29 = sub_26BDA0B20();
  v30 = sub_26BDA0D70();

  if (os_log_type_enabled(v29, v30))
  {
    a11 = v28;
    v31 = *(v24 + 168);
    v32 = *(v24 + 144);
    v33 = OUTLINED_FUNCTION_77_2();
    v34 = OUTLINED_FUNCTION_21_3();
    a13 = v34;
    *v33 = 136315138;
    swift_beginAccess();
    sub_26BDA0330();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v32);
    v36 = *(v24 + 168);
    if (EnumTagSinglePayload)
    {
      sub_26BD94608(*(v24 + 168));
      swift_endAccess();
      v37 = 0xEB000000004C5255;
      v38 = 0x206E776F6E6B6E55;
    }

    else
    {
      v39 = *(v24 + 152);
      v40 = *(v24 + 160);
      a10 = *(v24 + 144);
      (*(v39 + 16))(v40, v36);
      sub_26BD94608(v36);
      swift_endAccess();
      v38 = sub_26BDA04D0();
      v37 = v41;
      (*(v39 + 8))(v40, a10);
    }

    v42 = sub_26BD93910(v38, v37, &a13);

    *(v33 + 4) = v42;
    _os_log_impl(&dword_26BCD0000, v29, v30, "[SupportServices] Making a SupportServices API request to %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  else
  {
  }

  swift_beginAccess();
  sub_26BDA0340();
  v44 = v43;
  swift_endAccess();
  v45 = sub_26BDA0B20();
  v46 = sub_26BDA0D80();
  v47 = os_log_type_enabled(v45, v46);
  if (v44 >> 60 == 15)
  {
    if (v47)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_26BCD0000, v45, v46, "[SupportServices] Empty API request body", v48, 2u);
      OUTLINED_FUNCTION_61_1();
    }

    goto LABEL_20;
  }

  if (v47)
  {
    v49 = OUTLINED_FUNCTION_77_2();
    v50 = OUTLINED_FUNCTION_21_3();
    a13 = v50;
    *v49 = 136315138;
    sub_26BDA0BF0();
    OUTLINED_FUNCTION_216();
    v51 = sub_26BDA0BE0();
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v51 = 0x20676E6973726150;
      v53 = 0xEE0064656C696166;
    }

    v54 = sub_26BD93910(v51, v53, &a13);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_26BCD0000, v45, v46, "[SupportServices] API request body: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
    v55 = OUTLINED_FUNCTION_216();
    sub_26BD945F4(v55, v56);
LABEL_20:

    goto LABEL_22;
  }

  v57 = OUTLINED_FUNCTION_216();
  sub_26BD945F4(v57, v58);
LABEL_22:
  v59 = *(v24 + 176);
  v60 = *(v24 + 120);
  v61 = *(v24 + 128);
  v62 = *(v24 + 112);
  v63 = **(v24 + 88);
  swift_beginAccess();
  (*(v60 + 16))(v61, v59, v62);
  v74 = v63 + *v63;
  v64 = swift_task_alloc();
  *(v24 + 192) = v64;
  *v64 = v24;
  v64[1] = sub_26BD9305C;
  OUTLINED_FUNCTION_20_8();

  return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, v74, a13, a14, a15, a16);
}

uint64_t sub_26BD9305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  *v10 = *v4;
  v9[25] = v3;

  v11 = v8[16];
  v12 = v8[15];
  v13 = v8[14];
  if (!v3)
  {
    v9[26] = a3;
    v9[27] = a2;
    v9[28] = a1;
  }

  (*(v12 + 8))(v11, v13);
  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26BD931EC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 104);
  v8 = *(v0 + 216);

  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v2 = vextq_s8(v8, v8, 8uLL);
  v2[2] = v1;
  sub_26BD944BC(v3, v4, v5);

  OUTLINED_FUNCTION_25_1();

  return v6();
}

uint64_t sub_26BD932B8()
{

  OUTLINED_FUNCTION_25_1();

  return v1();
}

uint64_t sub_26BD93348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v7 = sub_26BDA0E80();
  v5[7] = v7;
  OUTLINED_FUNCTION_38_4(v7);
  v5[8] = v8;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_26BDA0CC0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[11] = v9;
  v5[12] = v11;

  return MEMORY[0x2822009F8](sub_26BD9344C, v9, v11);
}

uint64_t sub_26BD9344C()
{
  OUTLINED_FUNCTION_34_3();
  v1 = v0[4];
  v0[13] = sub_26BDA0EA0();
  v0[14] = sub_26BD945AC(&qword_28044B130, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26BDA0FF0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_26BD935A0;

  return v4();
}

uint64_t sub_26BD935A0()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  v3[16] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[10], v3[7]);
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_26BD937CC;
  }

  else
  {
    v7 = v3[11];
    v8 = v3[12];
    v9 = sub_26BD936B8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26BD936B8()
{
  OUTLINED_FUNCTION_34_3();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  sub_26BDA0FF0();
  sub_26BD945AC(&qword_28044B138, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26BDA0EB0();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t sub_26BD937CC()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

void sub_26BD93830(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BD9480C(a1, a3);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28044B148, &qword_26BDA9EF8) + 36)) = a2;
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_26BDA0BD0();

    sub_26BDA0B30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BD93910(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_41_2();
  v9 = sub_26BD939D0(v6, v7, v8, 1, a1, a2);
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
    sub_26BD94550(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

unint64_t sub_26BD939D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26BD93AD0(a5, a6);
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
    result = sub_26BDA0E20();
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

uint64_t sub_26BD93AD0(uint64_t a1, unint64_t a2)
{
  v3 = sub_26BD93B1C(a1, a2);
  sub_26BD93C34(&unk_287CB0338);
  return v3;
}

uint64_t sub_26BD93B1C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_26BDA0C30())
  {
    result = sub_26BD93D18(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_26BDA0DE0();
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
          result = sub_26BDA0E20();
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

uint64_t sub_26BD93C34(uint64_t result)
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

    result = sub_26BD93D88(result, v7, 1, v3);
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

void *sub_26BD93D18(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B110, &qword_26BDA9EC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26BD93D88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B110, &qword_26BDA9EC8);
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

uint64_t sub_26BD93E7C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_26BD94080(result, 1, sub_26BD88E6C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for HMTSolution.Article(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26BD93F90(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26BD94080(result, 1, sub_26BD88FC4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B088, &unk_26BDA9D10);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26BD94080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_26BD940F8(uint64_t a1)
{
  v2 = sub_26BDA1110();
  OUTLINED_FUNCTION_18();
  v37 = v3;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v32 - v8;
  if (!*(a1 + 16))
  {
    v10 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B118, &unk_26BDA9ED0);
  result = sub_26BDA0DD0();
  v10 = result;
  v36 = *(a1 + 16);
  if (!v36)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v40 = result + 56;
  v12 = *(v37 + 80);
  v34 = a1;
  v35 = a1 + ((v12 + 32) & ~v12);
  v39 = v37 + 16;
  v13 = (v37 + 8);
  v33 = (v37 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v37 + 72);
    v38 = v11 + 1;
    v15 = *(v37 + 16);
    v15(v41, v35 + v14 * v11, v2);
    OUTLINED_FUNCTION_6_6();
    sub_26BD945AC(&qword_28044B120, v16, MEMORY[0x277CC9FD0]);
    v17 = sub_26BDA0B90();
    v18 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v40 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v10;
      v15(v7, *(v10 + 48) + v19 * v14, v2);
      OUTLINED_FUNCTION_6_6();
      sub_26BD945AC(&qword_28044B128, v24, MEMORY[0x277CC9FD8]);
      v25 = sub_26BDA0BB0();
      v26 = *v13;
      v27 = OUTLINED_FUNCTION_216();
      v26(v27);
      if (v25)
      {
        result = (v26)(v41, v2);
        v10 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v10 = v23;
    }

    v28 = v41;
    *(v40 + 8 * v20) = v22 | v21;
    result = (*v33)(*(v10 + 48) + v19 * v14, v28, v2);
    v29 = *(v10 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    *(v10 + 16) = v31;
LABEL_12:
    v11 = v38;
    a1 = v34;
    if (v38 == v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26BD9440C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26BD8A0C0;

  return sub_26BD929F0(v2, v3, v4, v5);
}

void sub_26BD944BC(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_26BCFF01C(a1, a2);
  }
}

unint64_t sub_26BD944FC()
{
  result = qword_28044B108;
  if (!qword_28044B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B108);
  }

  return result;
}

uint64_t sub_26BD94550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26BD945AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BD945F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26BCFF01C(result, a2);
  }

  return result;
}

uint64_t sub_26BD94608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF40, &qword_26BDA9580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BD94670(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26BD94688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B140, &unk_26BDA9EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD946F8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26BD94748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationHeadersProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD947AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BD9480C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthenticationHeadersProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_slowAlloc();
}

uint64_t sub_26BD9494C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *a1 == *a2;
  if ((*(a1 + 80) & 1) == 0)
  {
    return v3 & ~v2;
  }

  v4 = v2 & v3;
  if (*(a1 + 8) == *(a2 + 8))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD9499C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 80);
      if (v3 <= 1)
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

uint64_t sub_26BD949DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BD94AA0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB70]) init];
  [v1 ak_addClientInfoHeader];
  [v1 ak_addDeviceUDIDHeader];
  v2 = sub_26BD94D6C(v1);
  if (!v2)
  {
    v2 = sub_26BDA0B70();
  }

  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26BD9EE60(0xD000000000000022, 0x800000026BDAFE90, 0xD000000000000010, 0x800000026BDAFE70, isUniquelyReferenced_nonNull_native);

  v5 = *(v0 + 8);

  return v5(v3);
}

uint64_t sub_26BD94BE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD94A84();
}

uint64_t sub_26BD94C6C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_26BD94D6C(void *a1)
{
  v1 = [a1 allHTTPHeaderFields];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BDA0B60();

  return v3;
}

uint64_t sub_26BD94DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26BD31908(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

id sub_26BD94E3C()
{
  result = sub_26BD94E5C();
  qword_28045A008 = result;
  return result;
}

id sub_26BD94E5C()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v0 set:v1 appleIDContext:?];

  return v0;
}

uint64_t sub_26BD94EE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_26BDA0B40();
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

void *sub_26BD94F90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_26BDA0B40();
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AuthenticationHeadersProvider(uint64_t a1)
{
  result = qword_28044B158;
  if (!qword_28044B158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BD9505C(uint64_t a1)
{
  sub_26BD95130(319, &qword_28044B168, &qword_28044B170, 0x277CB8F48);
  if (v1 <= 0x3F)
  {
    sub_26BD95130(319, &qword_28044B178, &qword_28044B180, 0x277CF0178);
    if (v2 <= 0x3F)
    {
      sub_26BDA0B40();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD95130(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_26BD95188(255, a3, a4);
    v5 = sub_26BDA0DA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26BD95188(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26BD951E8()
{
  v1 = **(v0 + 112);
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 aida_accountForPrimaryiCloudAccount];
    *(v0 + 128) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = swift_task_alloc();
      *(v0 + 136) = v5;
      *v5 = v0;
      v5[1] = sub_26BD95328;

      return sub_26BD95674(v4);
    }
  }

  sub_26BD96B18();
  swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 1;
  swift_willThrow();
  OUTLINED_FUNCTION_25_1();

  return v8();
}

uint64_t sub_26BD95328()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3[10] = v1;
  v3[11] = v2;
  v3[12] = v4;
  v3[13] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v8 + 144) = v7;
  *(v8 + 152) = v0;

  if (v0)
  {
    v9 = sub_26BD95614;
  }

  else
  {
    v9 = sub_26BD95434;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BD95434()
{
  v1 = sub_26BD97234(*(v0 + 128));
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 88);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v21 = v1;
    v22 = v2;
    MEMORY[0x26D695B80](58, 0xE100000000000000);
    MEMORY[0x26D695B80](v4, v3);

    v7 = sub_26BD95A40(v21, v22);
    v9 = v8;
    v10 = sub_26BDA05B0();
    v12 = v11;
    sub_26BCFF01C(v7, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26BDA1A00;
    *(inited + 32) = 0xD000000000000010;
    *(inited + 40) = 0x800000026BDAFE50;
    *(inited + 48) = v10;
    *(inited + 56) = v12;
    v14 = sub_26BDA0B70();

    v15 = *(v0 + 8);

    return v15(v14);
  }

  else
  {
    v18 = *(v0 + 120);
    v17 = *(v0 + 128);

    sub_26BD96B18();
    swift_allocError();
    *v19 = 3;
    *(v19 + 8) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_25_1();

    return v20();
  }
}

uint64_t sub_26BD95614()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_25_1();

  return v2();
}

uint64_t sub_26BD95674(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BD95694, 0, 0);
}

uint64_t sub_26BD95694()
{
  if (*(v0[3] + 16))
  {
    type metadata accessor for AuthenticationHeadersProvider(0);
    v1 = sub_26BDA0B20();
    v2 = sub_26BDA0D70();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Forcing GS token refresh due to retry…";
LABEL_12:
      _os_log_impl(&dword_26BCD0000, v1, v2, v4, v3, 2u);
      MEMORY[0x26D6966B0](v3, -1, -1);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v5 = v0[2];
  v6 = sub_26BDA0BC0();
  v7 = [v5 aida:v6 tokenWithExpiryCheckForService:?];

  if (!v7)
  {
    type metadata accessor for AuthenticationHeadersProvider(0);
    v1 = sub_26BDA0B20();
    v2 = sub_26BDA0D70();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Did not find cached valid GS token, fetching a new one…";
      goto LABEL_12;
    }

LABEL_13:

    v16 = swift_task_alloc();
    v0[4] = v16;
    *v16 = v0;
    v16[1] = sub_26BD9593C;
    v17 = v0[2];

    return sub_26BD96090(v17);
  }

  v8 = sub_26BDA0BD0();
  v10 = v9;

  type metadata accessor for AuthenticationHeadersProvider(0);
  v11 = sub_26BDA0B20();
  v12 = sub_26BDA0D70();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26BCD0000, v11, v12, "Using cached GS token", v13, 2u);
    MEMORY[0x26D6966B0](v13, -1, -1);
  }

  v14 = v0[1];

  return v14(v8, v10);
}

uint64_t sub_26BD9593C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_3();
  v6 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v2)
  {
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9);
}

uint64_t sub_26BD95A40(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B198, &qword_26BDAA0B0);
  if (swift_dynamicCast())
  {
    sub_26BD94670(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_26BDA04A0();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_26BD97560(v40, &qword_28044B1A0, &qword_26BDAA0B8);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_26BDA0E20();
  }

  sub_26BD96B6C(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x26D6954E0](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v40[0]);
  v34[2] = v39;
  v11 = sub_26BD96C88(sub_26BD97334, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_26BDA0570();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_26BD97350(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_26BDA0C30();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_26BDA0C60();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_26BDA0E20();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_26BD97350(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_26BDA0C40();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_26BDA0590();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_26BDA0590();
    sub_26BD945F4(v35, v36);
    goto LABEL_58;
  }

  sub_26BD945F4(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_26BCFEFC4(*&v40[0], *(&v40[0] + 1));

  sub_26BCFF01C(v32, *(&v32 + 1));
  return v32;
}

unint64_t sub_26BD95F58(uint64_t a1, char a2)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        OUTLINED_FUNCTION_1_8();
        result = v8 + 15;
        break;
      case 2:
        OUTLINED_FUNCTION_1_8();
        result = v6 + 6;
        break;
      case 3:
        OUTLINED_FUNCTION_1_8();
        result = v7 + 7;
        break;
      default:
        result = 0xD000000000000012;
        break;
    }
  }

  else
  {
    sub_26BDA0DF0();
    MEMORY[0x26D695B80](0xD00000000000001FLL, 0x800000026BDAFFA0);
    type metadata accessor for ACAccountCredentialRenewResult(0, v3, v4, v5);
    sub_26BDA0EC0();
    return 0;
  }

  return result;
}

uint64_t sub_26BD96090(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_26BD960B0, 0, 0);
}

uint64_t sub_26BD960B0()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  v0[6] = v2;
  [v2 setAuthenticationType_];
  [v2 setIsUsernameEditable_];
  [v2 setServiceType_];
  v3 = sub_26BDA0BC0();
  [v2 setServiceIdentifier_];

  [v2 setShouldUpdatePersistentServiceTokens_];
  v4 = sub_26BD97234(v1);
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      sub_26BD97298(v4, v5, v2);
    }

    else
    {
    }
  }

  v7 = *(v0[5] + 8);
  v0[7] = v7;
  if (v7)
  {
    v8 = swift_task_alloc();
    v0[8] = v8;
    *(v8 + 16) = v7;
    *(v8 + 24) = v2;
    v9 = v7;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_26BD96314;
    v11 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x800000026BDAFEC0, sub_26BD9742C, v8, v11);
  }

  else
  {
    sub_26BD96B18();
    swift_allocError();
    *v12 = 1;
    *(v12 + 8) = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_25_1();

    return v13();
  }
}

uint64_t sub_26BD96314()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = sub_26BD96488;
  }

  else
  {

    v6 = sub_26BD96420;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BD96420()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_26BD96488()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_25_1();

  return v2();
}

void sub_26BD964F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  (*(v7 + 16))(aBlock - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, v9, v6);
  aBlock[4] = sub_26BD974BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BD968CC;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);

  [a2 authenticateWithContext:a3 completion:v12];
  _Block_release(v12);
}

void sub_26BD966AC(uint64_t a1, id a2)
{
  if (a2)
  {
    *&v14 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
    sub_26BDA0CD0();
    return;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  v4 = sub_26BDA0BD0();
  v6 = sub_26BD94DD0(v4, v5, a1);

  if (!v6)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v8 = 0;
    v14 = 0u;
    v15 = 0u;
LABEL_10:
    sub_26BD97560(&v14, &qword_28044B1B8, &qword_26BDAA0E8);
    goto LABEL_11;
  }

  *&v12 = 0xD000000000000022;
  *(&v12 + 1) = 0x800000026BDAFE90;
  v8 = v7;
  v9 = [v8 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v9)
  {
    sub_26BDA0DB0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14 = v12;
  v15 = v13;
  if (!*(&v13 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
    sub_26BDA0CE0();
    goto LABEL_12;
  }

LABEL_11:
  sub_26BD96B18();
  v10 = swift_allocError();
  *v11 = 2;
  *(v11 + 8) = 1;
  *&v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
  sub_26BDA0CD0();
LABEL_12:
}

uint64_t sub_26BD968CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1B0, &qword_26BDAA0E0);
    v4 = sub_26BDA0B60();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_26BD9699C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD96A28;

  return sub_26BD951C8();
}

uint64_t sub_26BD96A28()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  OUTLINED_FUNCTION_40_3();
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_26BD96B18()
{
  result = qword_28044B188;
  if (!qword_28044B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B188);
  }

  return result;
}

uint64_t sub_26BD96B6C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_26BDA0520();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_26BDA0490();
      swift_allocObject();
      v8 = sub_26BDA0450();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_26BDA0560();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_26BD96C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_26BD9711C(sub_26BD9740C, v5, a1, a2);
}

uint64_t sub_26BD96C88(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26BCFF01C(v7, v6);
      *v5 = xmmword_26BDA19C0;
      sub_26BCFF01C(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_26BDA0460() && __OFSUB__(v7, sub_26BDA0480()))
      {
        goto LABEL_24;
      }

      sub_26BDA0490();
      swift_allocObject();
      v14 = sub_26BDA0440();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_26BD97180(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_26BCFF01C(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_26BDA19C0;
      sub_26BCFF01C(0, 0xC000000000000000);
      sub_26BDA0530();
      v7 = v17;
      v10 = sub_26BD97180(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_26BCFF01C(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_26BD9705C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_26BDA0520();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D6954A0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D6954B0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_26BD970D4(uint64_t result)
{
  if (result)
  {
    result = sub_26BDA0E00();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26BD9711C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_26BD97180(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26BDA0460();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26BDA0480();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26BDA0470();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_26BD97234(void *a1)
{
  v1 = [a1 aida_alternateDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26BDA0BD0();

  return v3;
}

void sub_26BD97298(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26BDA0BC0();

  [a3 setAltDSID_];
}

void *sub_26BD972FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_26BD96C34(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_26BD97350(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26BDA0C70();
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
    v5 = MEMORY[0x26D695BB0](15, a1 >> 16);
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

uint64_t sub_26BD973CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BD970D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_26BD97434()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);
  OUTLINED_FUNCTION_5_7();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_26BD974BC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1A8, qword_26BDAA0C8);

  sub_26BD966AC(a1, a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BD97560(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_5_7();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BD975FC()
{
  sub_26BDA0DF0();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_26BDA0BD0();
  v4 = v3;

  MEMORY[0x26D695B80](v2, v4);

  qword_28044B1C0 = 0xD00000000000001ALL;
  *algn_28044B1C8 = 0x800000026BDB0070;
  return result;
}

uint64_t sub_26BD9770C()
{
  OUTLINED_FUNCTION_30_2();
  v1 = sub_26BDA0340();
  v0[3] = v1;
  v0[4] = v2;
  if (v2 >> 60 == 15)
  {
    v3 = sub_26BDA0B70();
    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v8 = swift_task_alloc();
    v0[5] = v8;
    *v8 = v0;
    v8[1] = sub_26BD97810;

    return sub_26BD979F4(v6, v7);
  }
}

uint64_t sub_26BD97810(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v4 + 48) = v1;

  if (v1)
  {
    v7 = sub_26BD97994;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_26BD97930;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BD97930()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD945F4(v0[3], v0[4]);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_26BD97994()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD945F4(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_26BD979F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return OUTLINED_FUNCTION_0_14();
}

uint64_t sub_26BD97A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1D0, &qword_26BDAA1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA4B30;
  *(inited + 32) = sub_26BDA0BD0();
  v2 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v3;
  *(inited + 48) = 0xD000000000000029;
  *(inited + 56) = 0x800000026BDAFFC0;
  *(inited + 80) = sub_26BDA0BD0();
  *(inited + 88) = v4;
  if (qword_280448F60 != -1)
  {
    swift_once();
  }

  v5 = qword_28044B1C0;
  v6 = *algn_28044B1C8;
  *(inited + 120) = v2;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  *(inited + 128) = sub_26BDA0BD0();
  v7 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = v8;
  *(inited + 144) = 60;
  *(inited + 176) = sub_26BDA0BD0();
  *(inited + 216) = v7;
  *(inited + 184) = v9;
  *(inited + 192) = 262800;
  *(inited + 224) = sub_26BDA0BD0();
  *(inited + 232) = v10;

  v11 = sub_26BD97F50();
  v13 = v0[43];
  v12 = v0[44];
  type metadata accessor for SecAccessControl(0, v14, v15, v16);
  *(inited + 264) = v17;
  *(inited + 240) = v11;
  *(inited + 272) = sub_26BDA0BD0();
  *(inited + 280) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044AF78, &qword_26BDAA1C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_26BDA1990;
  *(v19 + 32) = sub_26BDA0BD0();
  *(v19 + 40) = v20;
  *(v19 + 48) = sub_26BDA0BD0();
  *(v19 + 56) = v21;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E0, &qword_26BDAA1C8);
  *(inited + 288) = v19;
  v22 = sub_26BDA0B70();
  v0[45] = v22;
  v23 = swift_task_alloc();
  v0[46] = v23;
  v23[2] = v22;
  v23[3] = v13;
  v23[4] = v12;
  v24 = swift_task_alloc();
  v0[47] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
  *v24 = v0;
  v24[1] = sub_26BD97DB4;

  return MEMORY[0x2822008A0](v0 + 42, 0, 0, 0xD000000000000010, 0x800000026BDAFFF0, sub_26BD995CC, v23, v25);
}

uint64_t sub_26BD97DB4()
{
  OUTLINED_FUNCTION_30_2();
  v2 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v3 = v2;
  *(v2 + 384) = v0;

  if (v0)
  {
    v4 = sub_26BD97EE8;
  }

  else
  {

    v4 = sub_26BD97ECC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BD97EE8()
{
  OUTLINED_FUNCTION_30_2();

  v1 = *(v0 + 8);

  return v1();
}

SecAccessControlRef sub_26BD97F50()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v3 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, v16);
  if (!v3)
  {
    v4 = v16[0];
    if (v16[0])
    {
      type metadata accessor for CFError(0, v0, v1, v2);
      v6 = v5;
      v10 = sub_26BD99820(v5, v7, v8, v9);
      v11 = OUTLINED_FUNCTION_72_1(v6, v10);
      *v12 = v4;
    }

    else
    {
      v11 = 0;
    }

    v13 = sub_26BD99758();
    OUTLINED_FUNCTION_72_1(&type metadata for BAAHeadersProvider.BAASigningError, v13);
    *v14 = v11;
    *(v14 + 8) = 0;
    swift_willThrow();
  }

  return v3;
}

void sub_26BD98038(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  sub_26BD98244(a2);
  v12 = sub_26BDA0B50();

  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_26BD996A8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26BD98B40;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);
  sub_26BCFEFC4(a3, a4);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v15);
}

uint64_t sub_26BD98244(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B210, &qword_26BDAA1E8);
    v2 = sub_26BDA0F20();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_26BD94550(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_26BD99878(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_26BD99878(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_26BD99878(v31, v32);
    result = sub_26BDA0DC0();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_26BD99878(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

char *sub_26BD98508(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1 || !a2)
  {
    goto LABEL_8;
  }

  v9 = a1;
  v10 = sub_26BD9892C(a2);
  if (!v10)
  {

LABEL_8:
    sub_26BD99758();
    swift_allocError();
    *v12 = a3;
    *(v12 + 8) = 2;
    swift_willThrow();
    v13 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
    return sub_26BDA0CD0();
  }

  v11 = v10;
  if (!sub_26BD99548(v10))
  {

    goto LABEL_8;
  }

  v40 = sub_26BD98A18(a4, a5, v9);
  v41 = v15;
  v16 = sub_26BD99548(v11);
  v42 = v9;
  if (!v16)
  {
LABEL_18:

    sub_26BDA03D0();
    swift_allocObject();
    sub_26BDA03C0();
    sub_26BD997CC();
    v31 = sub_26BDA03B0();
    v33 = v32;

    v34 = sub_26BD98BF4();
    v36 = v35;
    sub_26BCFF01C(v31, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26BDA1990;
    strcpy((inited + 32), "X-Apple-Baa-S");
    *(inited + 46) = -4864;
    *(inited + 48) = sub_26BDA05B0();
    *(inited + 56) = v38;
    *(inited + 64) = 0x2D656C7070412D58;
    *(inited + 72) = 0xEB00000000616142;
    *(inited + 80) = sub_26BDA05B0();
    *(inited + 88) = v39;
    sub_26BDA0B70();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
    sub_26BDA0CE0();

    sub_26BCFF01C(v40, v41);
    sub_26BCFF01C(v34, v36);
  }

  v17 = v16;
  v44 = MEMORY[0x277D84F90];
  result = sub_26BD997AC(0, v16 & ~(v16 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v43 = v17;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D695D70](v18, v11);
      }

      else
      {
        v19 = *(v11 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = SecCertificateCopyData(v19);
      v22 = sub_26BDA05D0();
      v24 = v23;

      v25 = sub_26BDA05B0();
      v27 = v26;
      sub_26BCFF01C(v22, v24);

      v29 = *(v44 + 16);
      v28 = *(v44 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_26BD997AC((v28 > 1), v29 + 1, 1);
      }

      ++v18;
      *(v44 + 16) = v29 + 1;
      v30 = v44 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
    }

    while (v43 != v18);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BD9892C(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26BDA0E50();
  v3 = a1 + 32;
  if (!v2)
  {
    return v9;
  }

  while (1)
  {
    sub_26BD94550(v3, v8);
    type metadata accessor for SecCertificate(0, v4, v5, v6);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26BDA0E30();
    sub_26BDA0E60();
    sub_26BDA0E70();
    sub_26BDA0E40();
    v3 += 32;
    if (!--v2)
    {
      return v9;
    }
  }

  return 0;
}

uint64_t sub_26BD98A18(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_26BDA05A0();
  Signature = SecKeyCreateSignature(a3, v4, v5, v23);

  if (Signature)
  {
    v10 = Signature;
    v11 = sub_26BDA05D0();
  }

  else
  {
    v12 = v23[0];
    if (v23[0])
    {
      type metadata accessor for CFError(0, v7, v8, v9);
      v14 = v13;
      v18 = sub_26BD99820(v13, v15, v16, v17);
      v11 = OUTLINED_FUNCTION_72_1(v14, v18);
      *v19 = v12;
    }

    else
    {
      v11 = 0;
    }

    v20 = sub_26BD99758();
    OUTLINED_FUNCTION_72_1(&type metadata for BAAHeadersProvider.BAASigningError, v20);
    *v21 = v11;
    *(v21 + 8) = 1;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_26BD98B40(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_26BDA0C90();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void *sub_26BD98BF4()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = sub_26BDA05A0();
  v5[0] = 0;
  v1 = [v0 compressedDataUsingAlgorithm:3 error:v5];

  v2 = v5[0];
  if (v1)
  {
    v3 = sub_26BDA05D0();
  }

  else
  {
    v3 = v2;
    sub_26BDA04B0();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_26BD98CC8(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_4_6();
    sub_26BDA0DF0();

    OUTLINED_FUNCTION_1_9();
    v10 = v4 + 5;
    if (a1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    OUTLINED_FUNCTION_4_6();
    sub_26BDA0DF0();

    OUTLINED_FUNCTION_1_9();
    v10 = v3;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_6();
  sub_26BDA0DF0();

  OUTLINED_FUNCTION_1_9();
  v10 = v5 + 8;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getErrorValue();
  v6 = sub_26BDA1000();
  v8 = v7;
LABEL_10:
  MEMORY[0x26D695B80](v6, v8);

  return v10;
}

BOOL sub_26BD98E04(uint64_t a1, uint64_t a2)
{
  v2 = sub_26BDA0F30();

  return v2 != 0;
}

uint64_t sub_26BD98E60(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B218, &qword_26BDAA370);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BD99940();
  sub_26BDA1090();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E0, &qword_26BDAA1C8);
  sub_26BD99994(&qword_28044B228, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_26BDA0F80();
  return (*(v5 + 8))(v7, v4);
}

void *sub_26BD98FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B230, &qword_26BDAA378);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BD99940();
  sub_26BDA1080();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E0, &qword_26BDAA1C8);
    sub_26BD99994(&qword_28044B238, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26BDA0F70();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_26BD991B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26BD99248;

  return sub_26BD976F8(a1);
}

uint64_t sub_26BD99248()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_26BD9933C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1D8, &qword_26BDAA1B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_26BD993B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26BD98E04(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26BD993E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BD98E4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_26BD99414@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26BD98E04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26BD9945C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26BD343C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26BD99488(uint64_t a1)
{
  v2 = sub_26BD99940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BD994C4(uint64_t a1)
{
  v2 = sub_26BD99940();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_26BD99500@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_26BD98FE0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26BD99548(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t sub_26BD9956C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1D8, &qword_26BDAA1B8);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_26BD995D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_26BCFF01C(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

char *sub_26BD996A8(void *a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1F0, &qword_26BDAA1D8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return sub_26BD98508(a1, a2, a3, v7, v8);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BD99758()
{
  result = qword_28044B1F8;
  if (!qword_28044B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B1F8);
  }

  return result;
}

char *sub_26BD997AC(void *a1, int64_t a2, char a3)
{
  result = sub_26BD803F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_26BD997CC()
{
  result = qword_28044B200;
  if (!qword_28044B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B200);
  }

  return result;
}

unint64_t sub_26BD99820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_28044B208;
  if (!qword_28044B208)
  {
    type metadata accessor for CFError(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B208);
  }

  return result;
}

_OWORD *sub_26BD99878(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26BD998A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_26BD998E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_26BD99940()
{
  result = qword_28044B220;
  if (!qword_28044B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B220);
  }

  return result;
}

uint64_t sub_26BD99994(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B1E0, &qword_26BDAA1C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Attestation.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Attestation.CodingKeys(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26BD99AF0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26BD99B34()
{
  result = qword_28044B240;
  if (!qword_28044B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B240);
  }

  return result;
}

unint64_t sub_26BD99B8C()
{
  result = qword_28044B248;
  if (!qword_28044B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B248);
  }

  return result;
}

unint64_t sub_26BD99BE4()
{
  result = qword_28044B250;
  if (!qword_28044B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B250);
  }

  return result;
}

uint64_t sub_26BD99C88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  OUTLINED_FUNCTION_41_2();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26BD99CB8()
{
  OUTLINED_FUNCTION_31_4();
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 56) = v5;
  *v5 = v6;
  v5[1] = sub_26BD99DBC;

  return MEMORY[0x282200740](v0 + 16, v2, v2, 0, 0, &unk_26BDAA508, v3, v2);
}

uint64_t sub_26BD99DBC()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD99EDC()
{
  OUTLINED_FUNCTION_30_2();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

uint64_t sub_26BD99F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_26BDA0370();
  v5[20] = v6;
  v7 = *(v6 - 8);
  v5[21] = v7;
  v5[22] = *(v7 + 64);
  v5[23] = swift_task_alloc();
  v8 = *(type metadata accessor for CompositeHTTPHeadersProvider(0) - 8);
  v5[24] = v8;
  v5[25] = *(v8 + 64);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B258, &qword_26BDAA510);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B260, &qword_26BDAA518);
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9A114, 0, 0);
}

uint64_t sub_26BD9A114()
{
  v1 = **(v0 + 136);
  v2 = *(v1 + 16);
  if (v2)
  {
    v27 = *(v0 + 192);
    v3 = v1 + 32;
    v25 = **(v0 + 128);
    v26 = *(v0 + 168);
    v24 = *(v0 + 200) + 7;
    v23 = *(v0 + 176) + 7;
    v4 = sub_26BDA0D30();
    do
    {
      v32 = v2;
      v29 = *(v0 + 224);
      v31 = *(v0 + 216);
      v5 = *(v0 + 208);
      v6 = *(v0 + 184);
      v7 = *(v0 + 160);
      v28 = v6;
      v30 = *(v0 + 152);
      v8 = *(v0 + 136);
      v9 = *(v0 + 144);
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v4);
      sub_26BD9B360(v8, v5);
      sub_26BD8A3D8(v3, v0 + 16);
      (*(v26 + 16))(v6, v9, v7);
      v10 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v11 = (v24 + v10) & 0xFFFFFFFFFFFFFFF8;
      v12 = (*(v26 + 80) + v11 + 40) & ~*(v26 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      sub_26BD9B58C(v5, v13 + v10);
      sub_26BD94670((v0 + 16), v13 + v11);
      (*(v26 + 32))(v13 + v12, v28, v7);
      *(v13 + ((v23 + v12) & 0xFFFFFFFFFFFFFFF8)) = v30;
      sub_26BD9B778(v29, v31);
      LODWORD(v10) = __swift_getEnumTagSinglePayload(v31, 1, v4);

      v14 = *(v0 + 216);
      if (v10 == 1)
      {
        sub_26BD9B7E8(*(v0 + 216));
      }

      else
      {
        sub_26BDA0D20();
        (*(*(v4 - 8) + 8))(v14, v4);
      }

      if (*(v13 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_26BDA0CC0();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
      v18 = v17 | v15;
      if (v17 | v15)
      {
        v18 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v15;
        *(v0 + 80) = v17;
      }

      v19 = *(v0 + 224);
      *(v0 + 88) = 1;
      *(v0 + 96) = v18;
      *(v0 + 104) = v25;
      swift_task_create();

      sub_26BD9B7E8(v19);
      v3 += 40;
      v2 = v32 - 1;
    }

    while (v32 != 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B1E8, &qword_26BDAA1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B068, &qword_26BDA9EA0);
  sub_26BDA0D50();
  *(v0 + 256) = MEMORY[0x277D84F98];
  sub_26BD9B850();
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v0 + 264) = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_1_10(v20);

  return MEMORY[0x282200308](v0 + 112);
}

uint64_t sub_26BD9A500()
{
  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_40_3();
  v3 = v2;
  OUTLINED_FUNCTION_26_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v6 = v5;
  v3[34] = v0;

  if (v0)
  {
    (*(v3[30] + 8))(v3[31], v3[29]);
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26BD9A61C()
{
  v11 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[32];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2;
    sub_26BD9BFC4(v1, sub_26BD9C280, 0, isUniquelyReferenced_nonNull_native, &v10);
    v0[32] = v10;
    sub_26BD9B850();
    swift_task_alloc();
    OUTLINED_FUNCTION_35_4();
    v0[33] = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_1_10(v4);

    return MEMORY[0x282200308](v0 + 14);
  }

  else
  {
    v6 = v0[32];
    v7 = v0[15];
    (*(v0[30] + 8))(v0[31], v0[29]);
    *v7 = v6;

    OUTLINED_FUNCTION_25_1();

    return v8();
  }
}

uint64_t sub_26BD9A7A0()
{
  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_25_1();

  return v0();
}

uint64_t sub_26BD9A830(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_35_4();
  *(v3 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_26BD8A458;

  return sub_26BD99F38(a1, a2, v6, v7, v8);
}

uint64_t type metadata accessor for CompositeHTTPHeadersProvider(uint64_t a1)
{
  result = qword_28044B288;
  if (!qword_28044B288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BD9A93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v7[15] = a1;
  sub_26BDA10E0();
  v7[20] = swift_task_alloc();
  sub_26BDA10C0();
  v7[21] = swift_task_alloc();
  sub_26BDA1130();
  v7[22] = swift_task_alloc();
  v8 = sub_26BDA1140();
  v7[23] = v8;
  v7[24] = *(v8 - 8);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9AA88, 0, 0);
}

uint64_t sub_26BD9AA88()
{
  v19 = v0;
  v1 = *(v0 + 136);
  *(v0 + 264) = *(type metadata accessor for CompositeHTTPHeadersProvider(0) + 24);
  sub_26BD8A3D8(v1, v0 + 16);
  v2 = sub_26BDA0B20();
  v3 = sub_26BDA0D70();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    OUTLINED_FUNCTION_10_2();
    v9 = v8(v6, v7);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v12 = sub_26BD93910(v9, v11, &v18);

    *(v4 + 4) = v12;
    _os_log_impl(&dword_26BCD0000, v2, v3, "Computing headers using %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v13 = *(v0 + 152);
  *(v0 + 112) = 0;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  v15 = *(v0 + 136);
  *(v14 + 16) = v0 + 112;
  *(v14 + 24) = v15;
  *(v14 + 40) = v13;
  v16 = swift_task_alloc();
  *(v0 + 216) = v16;
  *v16 = v0;
  v16[1] = sub_26BD9ACC4;

  return sub_26BD93348(0, 0, &unk_26BDAA550, v14);
}

uint64_t sub_26BD9ACC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_40_3();
  v7 = v6;
  OUTLINED_FUNCTION_26_2();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_9_4();
  *v10 = v9;
  v7[28] = v2;

  if (!v2)
  {
    v7[29] = a2;
    v7[30] = a1;
  }

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26BD9ADEC()
{
  OUTLINED_FUNCTION_31_4();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_10_2();
  v0[31] = v5(v3, v4);
  v0[32] = v6;

  return MEMORY[0x2822009F8](sub_26BD9AE84, v1, 0);
}

uint64_t sub_26BD9AE84()
{
  OUTLINED_FUNCTION_30_2();
  sub_26BD9E364(*(v0 + 240), *(v0 + 232), *(v0 + 248), *(v0 + 256));

  OUTLINED_FUNCTION_41_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_26BD9AEF8()
{
  v23 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v21 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B0F8, &qword_26BDA9EC0);
  v4 = sub_26BDA1110();
  OUTLINED_FUNCTION_38_4(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26BDA1990;
  sub_26BDA1100();
  sub_26BDA10F0();
  sub_26BD940F8(v5);
  sub_26BDA1120();
  sub_26BDA10B0();
  sub_26BDA10D0();
  sub_26BDA10A0();
  sub_26BD9C404();
  sub_26BDA1150();
  (*(v2 + 8))(v1, v3);
  v7 = v0[12];
  v6 = v0[13];
  sub_26BD8A3D8(v21, (v0 + 7));

  v8 = sub_26BDA0B20();
  v9 = sub_26BDA0D70();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v10 = 136315394;
    v11 = v0[10];
    v12 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
    OUTLINED_FUNCTION_10_2();
    v14 = v13(v11, v12);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v17 = sub_26BD93910(v14, v16, &v22);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_26BD93910(v7, v6, &v22);
    _os_log_impl(&dword_26BCD0000, v8, v9, "Computed headers using %s in %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_61_1();
    OUTLINED_FUNCTION_61_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v18 = v0[14];
  if (v18)
  {
    v19 = v0[15];

    *v19 = v18;

    OUTLINED_FUNCTION_25_1();

    v20();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26BD9B244()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 136);

  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  OUTLINED_FUNCTION_10_2();
  v6 = v5(v3, v4);
  v8 = v7;
  sub_26BD9C3B0();
  swift_allocError();
  *v9 = v6;
  v9[1] = v8;
  v9[2] = v1;
  swift_willThrow();

  OUTLINED_FUNCTION_25_1();

  return v10();
}

uint64_t sub_26BD9B360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD9B3C4()
{
  v1 = (type metadata accessor for CompositeHTTPHeadersProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_26BDA0370();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 40) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v11 = v0 + v3;

  v12 = v1[7];
  sub_26BDA0EA0();
  OUTLINED_FUNCTION_5_7();
  (*(v13 + 8))(v11 + v12);
  v14 = v1[8];
  sub_26BDA0B40();
  OUTLINED_FUNCTION_5_7();
  (*(v15 + 8))(v11 + v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4));
  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v9 | 7);
}

uint64_t sub_26BD9B58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD9B5F0(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for CompositeHTTPHeadersProvider(0);
  OUTLINED_FUNCTION_38_4(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = sub_26BDA0370();
  OUTLINED_FUNCTION_38_4(v10);
  v12 = (v9 + *(v11 + 80) + 40) & ~*(v11 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + ((*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_26BD8A0C0;

  return sub_26BD9A93C(a1, v14, v15, v1 + v7, v1 + v9, v1 + v12, v16);
}

uint64_t sub_26BD9B778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B258, &qword_26BDAA510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD9B7E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B258, &qword_26BDAA510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BD9B850()
{
  result = qword_28044B268;
  if (!qword_28044B268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B260, &qword_26BDAA518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B268);
  }

  return result;
}

uint64_t sub_26BD9B8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BD9B8D8, 0, 0);
}

uint64_t sub_26BD9B8D8()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v8 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26BD9BA04;
  v6 = v0[4];
  v5 = v0[5];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_26BD9BA04()
{
  OUTLINED_FUNCTION_31_4();
  v3 = v2;
  OUTLINED_FUNCTION_40_3();
  v5 = v4;
  OUTLINED_FUNCTION_26_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_41_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_26BD9BB38()
{
  OUTLINED_FUNCTION_30_2();
  **(v0 + 16) = *(v0 + 56);

  OUTLINED_FUNCTION_25_1();

  return v1();
}

uint64_t sub_26BD9BBC0()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_26BD96A28;

  return sub_26BD99C88(v4, v2);
}

uint64_t sub_26BD9BC60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B278, &qword_26BDAA540);
  v36 = v4;
  result = sub_26BDA0F10();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_26BD9BF14(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_26BDA1050();
    sub_26BDA0C10();
    result = sub_26BDA1070();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_26BD9BF14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26BDAA4E0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26BD9BF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t sub_26BD9BFC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v51 = a5;
  sub_26BD9C2C4(a1, a2, a3, v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v42 = v50[5];
  v43 = v50[0];
  v9 = (v50[2] + 64) >> 6;

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v49[0] = v14;
      v49[1] = v15;
      v49[2] = v17;
      v49[3] = v18;

      v42(&v45, v49);

      v19 = v45;
      v20 = v46;
      v21 = v47;
      v22 = v48;
      v23 = *v51;
      v25 = sub_26BD31908(v45, v46);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B270, &qword_26BDAA538);
          sub_26BDA0EE0();
        }
      }

      else
      {
        sub_26BD9BC60(v28, v44 & 1);
        v30 = sub_26BD31908(v19, v20);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v51;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_26BD9C300(v43);
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_26BDA0FE0();
  __break(1u);
  return result;
}

uint64_t sub_26BD9C280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26BD9BF78(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t sub_26BD9C2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_26BD9C308()
{
  OUTLINED_FUNCTION_31_4();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26BD8A458;

  return sub_26BD9B8B4(v2, v3, v5, v4);
}

unint64_t sub_26BD9C3B0()
{
  result = qword_28044B280;
  if (!qword_28044B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B280);
  }

  return result;
}

unint64_t sub_26BD9C404()
{
  result = qword_28044B100;
  if (!qword_28044B100)
  {
    sub_26BDA1140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B100);
  }

  return result;
}

uint64_t sub_26BD9C470(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26BDA0EA0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_26BDA0B40();
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_26BD9C550(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_26BDA0EA0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_26BDA0B40();
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_26BD9C618(uint64_t a1)
{
  sub_26BD9C6B4(319);
  if (v1 <= 0x3F)
  {
    sub_26BDA0EA0();
    if (v2 <= 0x3F)
    {
      sub_26BDA0B40();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD9C6B4(uint64_t a1)
{
  if (!qword_28044B298[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B088, &unk_26BDA9D10);
    v1 = sub_26BDA0CB0();
    if (!v2)
    {
      atomic_store(v1, qword_28044B298);
    }
  }
}

uint64_t sub_26BD9C794()
{
  v1 = sub_26BDA0B70();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26BD9C830()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD9C778();
}

void sub_26BD9C8C4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26BD309DC();
    if (v2 <= 0x3F)
    {
      sub_26BDA0B40();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26BD9C964(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_26BDA0B40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v7 <= v10)
  {
    v11 = *(v9 + 84);
  }

  else
  {
    v11 = v7;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v6 + 64);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  if (a2 <= v12)
  {
    goto LABEL_26;
  }

  v16 = ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v14) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v20))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v20 <= 0xFF)
    {
      if (v20 < 2)
      {
        goto LABEL_26;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_18:
      v21 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v21 = 0;
      }

      if (v16)
      {
        if (v16 > 3)
        {
          LODWORD(v16) = 4;
        }

        switch(v16)
        {
          case 2:
            LODWORD(v16) = *a1;
            break;
          case 3:
            LODWORD(v16) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v16) = *a1;
            break;
          default:
            LODWORD(v16) = *a1;
            break;
        }
      }

      return v12 + (v16 | v21) + 1;
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_18;
    }
  }

LABEL_26:
  if (v7 == v12)
  {
    v22 = a1;
    v10 = v7;
    v15 = v5;
LABEL_33:

    return __swift_getEnumTagSinglePayload(v22, v10, v15);
  }

  v23 = ((a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v22 = ((v23 + v14 + 8) & ~v14);
    goto LABEL_33;
  }

  v24 = *v23;
  if (v24 >= 0xFFFFFFFF)
  {
    LODWORD(v24) = -1;
  }

  return (v24 + 1);
}

void sub_26BD9CBCC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_26BDA0B40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v9 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + *(*(v10 - 8) + 64);
  v18 = 8 * v17;
  if (a3 <= v14)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v22 = ((a3 - v14 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v17)
      {
        v24 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        return;
      case 2:
        *&a1[v17] = v21;
        return;
      case 3:
        goto LABEL_51;
      case 4:
        *&a1[v17] = v21;
        return;
      default:
        return;
    }
  }

  switch(v19)
  {
    case 1:
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_51:
      __break(1u);
      JUMPOUT(0x26BD9CEB8);
    case 4:
      *&a1[v17] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (!a2)
      {
        return;
      }

LABEL_30:
      if (v9 == v14)
      {
        v25 = a1;
        v26 = a2;
        v12 = v9;
        v10 = v7;
      }

      else
      {
        v27 = (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((v13 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v28 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v28 = (a2 - 1);
          }

          *v27 = v28;
          return;
        }

        v25 = ((v27 + v16 + 8) & ~v16);
        v26 = a2;
      }

      __swift_storeEnumTagSinglePayload(v25, v26, v12, v10);
      return;
  }
}

uint64_t sub_26BD9CEF8(uint64_t a1)
{
  sub_26BDA0DF0();
  v2 = (*(*(a1 + 24) + 8))(*(a1 + 16));

  MEMORY[0x26D695B80](0xD000000000000011, 0x800000026BDB0110);
  return v2;
}

uint64_t sub_26BD9CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  v9 = *(v7 + 16);
  v4[4] = v8;
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v4[5] = v10;
  *v10 = v4;
  v10[1] = sub_26BD9D0CC;

  return v12(a1, a2, v8, v7);
}

uint64_t sub_26BD9D0CC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BD9D208, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26BD9D208()
{
  v19 = v0;
  v1 = *(v0 + 48);
  v2 = v1;
  v3 = sub_26BDA0B20();
  v4 = sub_26BDA0D90();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v10 = sub_26BDA1190();
    v12 = sub_26BD93910(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_26BCD0000, v3, v4, "Failed to retrieve headers using %s: '%@'. using fallback value.", v7, 0x16u);
    sub_26BD9D4A0(v8);
    MEMORY[0x26D6966B0](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D6966B0](v9, -1, -1);
    MEMORY[0x26D6966B0](v7, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 8);

  return v17(v15);
}

uint64_t sub_26BD9D3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26BD94C6C;

  return sub_26BD9CF98(a1, a2, a3);
}

uint64_t sub_26BD9D4A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B070, &unk_26BDA9D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26BD9D54C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26BD9D58C(uint64_t result, int a2, int a3)
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

uint64_t sub_26BD9D624()
{
  OUTLINED_FUNCTION_30_2();
  v0[10] = objc_opt_self();
  v0[11] = sub_26BDA0D10();
  v1 = sub_26BDA0D00();
  v0[12] = v1;
  OUTLINED_FUNCTION_4_7(v1, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_3_6();
  v2 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D6B4()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 80);

  *(v0 + 104) = [v1 currentDevice];
  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D730()
{
  OUTLINED_FUNCTION_30_2();
  v1 = sub_26BDA0D00();
  *(v0 + 112) = v1;
  OUTLINED_FUNCTION_4_7(v1, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_3_6();
  v2 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D7A4()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 104);

  *(v0 + 120) = [v1 systemVersion];

  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D820()
{
  v1 = v0[15];
  v2 = sub_26BDA0BD0();
  v4 = v3;

  v0[16] = v2;
  v0[17] = v4;
  v5 = sub_26BDA0D00();
  v0[18] = v5;
  OUTLINED_FUNCTION_4_7(v5, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_3_6();
  v6 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26BD9D8BC()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 80);

  *(v0 + 152) = [v1 currentDevice];
  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D938()
{
  OUTLINED_FUNCTION_30_2();
  v1 = sub_26BDA0D00();
  *(v0 + 160) = v1;
  OUTLINED_FUNCTION_4_7(v1, MEMORY[0x277D85700]);
  OUTLINED_FUNCTION_3_6();
  v2 = OUTLINED_FUNCTION_0_15();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9D9AC()
{
  OUTLINED_FUNCTION_30_2();
  v1 = *(v0 + 152);

  *(v0 + 168) = [v1 model];

  v2 = OUTLINED_FUNCTION_9_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_26BD9DA28()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = sub_26BDA0BD0();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA1A00;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_26BDA0DF0();

  MEMORY[0x26D695B80](v3, v2);

  MEMORY[0x26D695B80](47, 0xE100000000000000);
  MEMORY[0x26D695B80](v4, v6);

  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000026BDB0130;
  v8 = sub_26BDA0B70();
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26BD9DBBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD9DC48;

  return sub_26BD9D608();
}

uint64_t sub_26BD9DC48()
{
  OUTLINED_FUNCTION_30_2();
  v3 = v2;
  v7 = *v1;

  v5 = *(v7 + 8);
  if (!v0)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t OUTLINED_FUNCTION_4_7(uint64_t a1, uint64_t a2)
{

  return sub_26BDA0CC0();
}

uint64_t sub_26BD9DDA4()
{
  v1 = sub_26BDA0620();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9DE60, 0, 0);
}

uint64_t sub_26BD9DE60()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA1A00;
  strcpy((inited + 32), "X-Apple-Txn-ID");
  *(inited + 47) = -18;
  sub_26BDA0610();
  v5 = sub_26BDA0600();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = sub_26BDA0B70();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26BD9DFA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD9DDA4();
}

uint64_t sub_26BD9E058()
{
  *(v1 + 80) = *v0;
  *(v1 + 96) = *(v0 + 32);
  *(v1 + 104) = *(v0 + 40);
  *(v1 + 120) = *(v0 + 56);
  return MEMORY[0x2822009F8](sub_26BD9E094, 0, 0);
}

uint64_t sub_26BD9E094()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B190, &qword_26BDAA1E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26BDA1A00;
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_26BDA0DF0();

  MEMORY[0x26D695B80](0xD000000000000010, 0x800000026BDB0150);
  MEMORY[0x26D695B80](v4, v3);
  MEMORY[0x26D695B80](47, 0xE100000000000000);
  MEMORY[0x26D695B80](v2, v1);
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  v8 = sub_26BDA0B70();
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_26BD9E224()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26BD94C6C;

  return sub_26BD9E058();
}

uint64_t sub_26BD9E2B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_26BD94670(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_26BD9ED10(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_26BD9EBC8(a2, a3);
    *v3 = v8;
  }

  else
  {
    sub_26BD9EA60(a1);
    sub_26BD9EAC8(a2, v9, a3);
    sub_26BD9EBC8(a2, a3);
    return sub_26BD9EA60(v9);
  }

  return result;
}

uint64_t sub_26BD9E364(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_26BDA1160();
  v7 = sub_26BDA1160();
  *&v17[3] = MEMORY[0x277D839F8];
  *&v17[4] = &off_287CB14F8;
  v17[0] = v8 * 1.0e-18 + v6;
  OUTLINED_FUNCTION_0_16(v7, v8, v9, v10, v11, v12, v13, v14, v16);

  sub_26BD9E2B0(v17, a3, a4);
  return swift_endAccess();
}

uint64_t sub_26BD9E418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = 102;
  if (!a2)
  {
    v10 = 115;
  }

  v32 = MEMORY[0x277D837D0];
  v33 = &off_287CB14D8;
  LOBYTE(v29) = v10;
  v30 = 0xE700000000000000;
  v11 = OUTLINED_FUNCTION_0_16(a1, a2, a3, a4, a5, a6, a7, a8, v25);
  v19 = OUTLINED_FUNCTION_1_11(v11, v12, v13, v14, v15, v16, v17, v18, v26, v27, v28, v29);
  sub_26BD9E2B0(v19, v20, 1uLL);
  if (a2)
  {
    v21 = &off_287CB14D8;
    v22 = MEMORY[0x277D837D0];
    v23 = a2;
  }

  else
  {
    v9 = 0;
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v31 = 0;
  }

  v29 = v9;
  v30 = v23;
  v32 = v22;
  v33 = v21;

  sub_26BD9E2B0(&v29, 0, 2uLL);
  return swift_endAccess();
}

uint64_t sub_26BD9E500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v8 = OUTLINED_FUNCTION_0_16(a1, a2, a3, a4, a5, a6, a7, a8, v19);
  v16 = OUTLINED_FUNCTION_1_11(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23);
  sub_26BD9E2B0(v16, v17, 3uLL);
  return swift_endAccess();
}

uint64_t sub_26BD9E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v8 = OUTLINED_FUNCTION_0_16(a1, a2, a3, a4, a5, a6, a7, a8, v19);
  v16 = OUTLINED_FUNCTION_1_11(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23);
  sub_26BD9E2B0(v16, v17, 6uLL);
  return swift_endAccess();
}

uint64_t sub_26BD9E5A8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26BD9E5D8()
{
  sub_26BD9E5A8();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_15SupportServices14TelemetryEventC3KeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BD9E640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD9E69C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_26BD9E6EC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *sub_26BD9E71C()
{
  swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B338, &qword_26BDAA950);
  sub_26BD9F0A0();
  v0[16] = sub_26BDA0B70();
  return v0;
}

uint64_t sub_26BD9E7AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      return !a4;
    case 1:
      return a4 == 1;
    case 2:
      return a4 == 2;
    case 3:
      return a4 == 3;
    case 4:
      return a4 == 4;
    case 5:
      return a4 == 5;
    case 6:
      return a4 == 6;
    default:
      if (a4 < 7)
      {
        return 0;
      }

      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      else
      {
        return sub_26BDA0FB0();
      }
  }
}

uint64_t sub_26BD9E868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(a3)
  {
    case 0:
      v3 = 0;
      goto LABEL_12;
    case 1:
      v3 = 2;
      goto LABEL_12;
    case 2:
      v3 = 3;
      goto LABEL_12;
    case 3:
      v3 = 4;
      goto LABEL_12;
    case 4:
      v3 = 5;
      goto LABEL_12;
    case 5:
      v3 = 6;
      goto LABEL_12;
    case 6:
      v3 = 7;
LABEL_12:
      result = MEMORY[0x26D695FC0](v3, a2);
      break;
    default:
      MEMORY[0x26D695FC0](1);

      result = sub_26BDA0C10();
      break;
  }

  return result;
}

uint64_t sub_26BD9E94C(uint64_t a1, uint64_t a2)
{
  sub_26BDA1050();
  sub_26BD9E868(v5, a1, a2);
  return sub_26BDA1070();
}

uint64_t sub_26BD9E9AC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_26BDA1050();
  sub_26BD9E868(v5, v2, v3);
  return sub_26BDA1070();
}

unint64_t sub_26BD9EA0C()
{
  result = qword_28044B320;
  if (!qword_28044B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B320);
  }

  return result;
}

uint64_t sub_26BD9EA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B328, &qword_26BDAA940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26BD9EAC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v5 = sub_26BD31934(a1, a3);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B330, &qword_26BDAA948);
    sub_26BDA0ED0();
    sub_26BD9EBC8(*(*(v9 + 48) + 16 * v7), *(*(v9 + 48) + 16 * v7 + 8));
    sub_26BD94670((*(v9 + 56) + 40 * v7), a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B338, &qword_26BDAA950);
    sub_26BD9F0A0();
    sub_26BDA0EF0();
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26BD9EBC8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

uint64_t sub_26BD9EBDC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26BD31908(a2, a3);
  OUTLINED_FUNCTION_2_5();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28044B348, &qword_26BDAA958);
  if ((sub_26BDA0ED0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_26BD31908(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_26BDA0FE0();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 88 * v11;

    return sub_26BD9F0F4(a1, v16);
  }

  else
  {
    sub_26BD9EFA8(v11, a2, a3, a1, v15);
  }
}

uint64_t sub_26BD9ED10(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_26BD31934(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B330, &qword_26BDAA948);
  if ((sub_26BDA0ED0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_26BD31934(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26BDA0FE0();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 40 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_26BD94670(a1, v17);
  }

  else
  {
    sub_26BD9F01C(v12, a2, a3, a1, v16);

    return sub_26BD9F08C(a2, a3);
  }
}

uint64_t sub_26BD9EE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_26BD31908(a3, a4);
  OUTLINED_FUNCTION_2_5();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B270, &qword_26BDAA538);
  if ((sub_26BDA0ED0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_26BD31908(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_26BDA0FE0();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_26BD9F150(v13, a3, a4, a1, a2, v17);
  }
}

void *sub_26BD9EFA8(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = memcpy((a5[7] + 88 * a1), __src, 0x58uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26BD9F01C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26BD94670(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26BD9F08C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

unint64_t sub_26BD9F0A0()
{
  result = qword_28044B340;
  if (!qword_28044B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28044B340);
  }

  return result;
}

unint64_t sub_26BD9F150(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

uint64_t sub_26BD9F1E4(void *a1)
{
  result = type metadata accessor for CachingTask.State(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD9F294()
{
  v1 = *(*v0 + 112);
  v2 = type metadata accessor for CachingTask.State(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26BD9F368()
{
  sub_26BD9F294();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26BD9F3C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28044B068, &qword_26BDA9EA0);
  result = sub_26BDA0D40();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD9F464(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_26BD9F598(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x26BD9F75CLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t Clock.measureInheritingActorContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v6[9] = *(AssociatedTypeWitness - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BD9F878, 0, 0);
}

uint64_t sub_26BD9F878()
{
  v1 = *(v0 + 24);
  sub_26BDA0FF0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_26BD9F978;

  return v4();
}

uint64_t sub_26BD9F978()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_26BD9FB98;
  }

  else
  {
    v2 = sub_26BD9FA8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BD9FA8C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  sub_26BDA0FF0();
  swift_getAssociatedConformanceWitness();
  sub_26BDA0EB0();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BD9FB98()
{
  (*(v0[9] + 8))(v0[11], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26BD9FC20@<X0>(char *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v66 = a3;
  v63 = a1;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28044B450, &unk_26BDAAA10);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B050, &qword_26BDA9CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v58 - v9;
  OUTLINED_FUNCTION_176();
  sub_26BDA0650();
  OUTLINED_FUNCTION_18();
  v70 = v11;
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_57();
  v69 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_252();
  v68 = v15;
  OUTLINED_FUNCTION_176();
  v16 = sub_26BDA0770();
  OUTLINED_FUNCTION_18();
  v62 = v17;
  MEMORY[0x28223BE20](v18);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_57();
  v65 = v21 - v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_252();
  v61 = v24;
  OUTLINED_FUNCTION_176();
  v25 = sub_26BDA06E0();
  OUTLINED_FUNCTION_18();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_57();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_252();
  v34 = v33;
  OUTLINED_FUNCTION_176();
  v35 = sub_26BDA06A0();
  OUTLINED_FUNCTION_18();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_57();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_252();
  v72 = a4;
  v73 = v43;
  if (v44)
  {
    sub_26BDA06B0();
  }

  else
  {
    v63 = v7;
    v45 = sub_26BDA06C0();
    if (*(v45 + 16))
    {
      v59 = *(v45 + 32);
    }

    else
    {
      v59 = 0x53552D6E65;
    }

    sub_26BDA06B0();
    v7 = v63;
  }

  (*(v37 + 32))(v73, v41, v35);
  if (v66)
  {
    v46 = v37;
    v47 = v35;
    sub_26BDA06F0();
  }

  else
  {
    v63 = v7;
    v48 = v60;
    sub_26BDA0720();
    v49 = v61;
    sub_26BDA0710();
    (*(v62 + 8))(v48, v16);
    v46 = v37;
    if (__swift_getEnumTagSinglePayload(v49, 1, v25) == 1)
    {
      sub_26BDA022C(v49);
    }

    else
    {
      sub_26BDA0690();
      (*(v27 + 8))(v49, v25);
    }

    v47 = v35;
    sub_26BDA06F0();
    v7 = v63;
  }

  (*(v27 + 32))(v34, v31, v25);
  v50 = v67;
  v51 = v73;
  (*(v46 + 16))(v67, v73, v47);
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v47);
  v52 = sub_26BDA0700();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v52);
  v53 = v65;
  __swift_storeEnumTagSinglePayload(v65, 1, 1, v25);
  v54 = v68;
  sub_26BDA0630();
  (*(v27 + 16))(v53, v34, v25);
  __swift_storeEnumTagSinglePayload(v53, 0, 1, v25);
  sub_26BDA0640();
  v55 = v70;
  v56 = v71;
  (*(v70 + 16))(v69, v54, v71);
  sub_26BDA0660();
  (*(v55 + 8))(v54, v56);
  (*(v27 + 8))(v34, v25);
  return (*(v46 + 8))(v51, v47);
}

uint64_t sub_26BDA022C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28044B058, &qword_26BDA9CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BDA02A4()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}