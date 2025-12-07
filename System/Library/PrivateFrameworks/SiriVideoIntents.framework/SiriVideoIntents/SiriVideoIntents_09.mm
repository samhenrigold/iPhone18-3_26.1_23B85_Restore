uint64_t sub_269768CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v25 = v22[46];
  v26 = v22[36];
  __swift_project_value_buffer(v22[26], qword_28033D928);
  v27 = OUTLINED_FUNCTION_86();
  v26(v27);

  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F24();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = v22[46];
    v33 = v22[42];
    v32 = v22[43];
    a9 = v22[29];
    a10 = v22[38];
    v34 = v22[26];
    v35 = swift_slowAlloc();
    OUTLINED_FUNCTION_90_1();
    a11 = swift_slowAlloc();
    *v35 = 136315394;
    v36 = sub_26974F520(v33, v32, &a11);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    v22[17] = v31;
    v37 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v38 = sub_269854AE4();
    v40 = sub_26974F520(v38, v39, &a11);

    *(v35 + 14) = v40;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v41, v42, v43, v44, v45, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    a10(a9, v34);
  }

  else
  {
    v46 = v22[38];

    v47 = OUTLINED_FUNCTION_34_0();
    v46(v47);
  }

  (v22[36])(v22[28], v22[35], v22[26]);
  v48 = sub_2698548B4();
  sub_269854F04();
  v49 = OUTLINED_FUNCTION_62_1();
  v51 = os_log_type_enabled(v49, v50);
  v52 = v22[46];
  if (v51)
  {
    OUTLINED_FUNCTION_9_17();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v53, v54, v55, v56, v57, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  else
  {
  }

  (v22[38])(v22[28], v22[26]);
  sub_269851C74();
  OUTLINED_FUNCTION_57();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_15_16();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_269769010()
{
  OUTLINED_FUNCTION_2_7();
  v1[113] = v0;
  v1[112] = v2;
  v1[111] = v3;
  v1[110] = v4;
  v1[109] = v5;
  v1[108] = v6;
  v7 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v7);
  v1[114] = OUTLINED_FUNCTION_4_7();
  v8 = sub_269853634();
  v1[115] = v8;
  OUTLINED_FUNCTION_5_12(v8);
  v1[116] = v9;
  v1[117] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269851DA4();
  v1[118] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[119] = v11;
  v1[120] = OUTLINED_FUNCTION_4_7();
  v12 = sub_269851C74();
  v1[121] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[122] = v13;
  v1[123] = OUTLINED_FUNCTION_4_7();
  v14 = sub_2698548D4();
  v1[124] = v14;
  OUTLINED_FUNCTION_5_12(v14);
  v1[125] = v15;
  v1[126] = OUTLINED_FUNCTION_37_0();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_8_9(v16);
  v1[130] = OUTLINED_FUNCTION_37_0();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_269769264()
{
  OUTLINED_FUNCTION_12_7();
  v1 = v0[113];
  v2 = v0[111];
  v3 = v0[110];
  sub_2696A73F8(v1 + 472, (v0 + 70));
  __swift_project_boxed_opaque_existential_1(v0 + 70, v0[73]);
  v0[133] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803239F8, &unk_26985BB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2698580D0;
  v0[134] = *MEMORY[0x277D0ABF0];
  v0[95] = sub_269854A94();
  v0[96] = v5;
  sub_2698551B4();
  v6 = MEMORY[0x277D839B0];
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = 1;
  v0[97] = sub_269854A94();
  v0[98] = v7;
  sub_2698551B4();
  __swift_project_boxed_opaque_existential_1((v1 + 752), *(v1 + 776));
  sub_2697ADE90(v3, v2, (v0 + 75));
  if (v0[78])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 75, v0[78]);
    v8 = OUTLINED_FUNCTION_44_0();
    v10 = v9(v8) & 1;
    __swift_destroy_boxed_opaque_existential_0(v0 + 75);
  }

  else
  {
    sub_26969B0C0((v0 + 75), &unk_2803263B0, &unk_26985D0B0);
    v10 = 0;
  }

  *(inited + 168) = v6;
  *(inited + 144) = v10;
  v0[135] = sub_269854A04();
  v11 = swift_task_alloc();
  v0[136] = v11;
  *v11 = v0;
  v11[1] = sub_2697694C4;
  OUTLINED_FUNCTION_44_4(v0[110]);
  OUTLINED_FUNCTION_28_1();

  return sub_2697B6CE4(v12, v13, v14);
}

uint64_t sub_2697694C4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 1096) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269769A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v24 = *MEMORY[0x277D85DE8];
  __swift_destroy_boxed_opaque_existential_0((v14 + 560));
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, v24, a12, a13, a14);
}

uint64_t sub_269769B84()
{
  OUTLINED_FUNCTION_2_7();
  sub_26983B96C();
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v0);
}

uint64_t sub_269769FA4()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_13();
  *v5 = v4;
  *(v7 + 1152) = v6;
  *(v7 + 1160) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26976A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_6();
  OUTLINED_FUNCTION_92_0();
  v86 = *MEMORY[0x277D85DE8];
  if (*(v16 + 1376) != 1)
  {
LABEL_4:
    sub_2696A73F8(*(v16 + 904) + 192, v16 + 640);
    OUTLINED_FUNCTION_114_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F8, &unk_26985F1C0);
    inited = swift_initStackObject();
    *(v16 + 1328) = inited;
    *(inited + 16) = xmmword_269857710;
    v20 = swift_task_alloc();
    *(v16 + 1336) = v20;
    *v20 = v16;
    OUTLINED_FUNCTION_32_6(v20);
    OUTLINED_FUNCTION_44_4(v21);
    OUTLINED_FUNCTION_7_8();

    return sub_26976C448();
  }

  v17 = *(v16 + 1040);
  v18 = *(v16 + 944);
  sub_2696F3F6C(*(v16 + 1056), v17, &qword_2803240F0, &qword_2698603D0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_26969B0C0(*(v16 + 1040), &qword_2803240F0, &qword_2698603D0);
    goto LABEL_4;
  }

  v24 = *(v16 + 1160);
  v25 = *(v16 + 1152);
  (*(*(v16 + 952) + 32))(*(v16 + 960), *(v16 + 1040), *(v16 + 944));
  sub_26969329C(0, &qword_280324100, 0x277D46F48);
  v26 = sub_26976BB44(v25);
  *(v16 + 1168) = v26;
  v27 = *(v16 + 1152);
  if (v24)
  {
    v28 = *(v16 + 1056);

    v29 = OUTLINED_FUNCTION_44_0();
    v30(v29);
    sub_26969B0C0(v28, &qword_2803240F0, &qword_2698603D0);
    OUTLINED_FUNCTION_3_29();
    v84 = *(v16 + 936);
    v85 = *(v16 + 912);

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_7_8();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, v84, v85, a12, v86, a14, a15, a16);
  }

  else
  {
    v39 = *(v16 + 904);
    v40 = [objc_opt_self() predicateMatchingHandle_];
    *(v16 + 1176) = v40;
    sub_26969329C(0, &qword_280324108, 0x277D46F80);
    v41 = swift_task_alloc();
    *(v41 + 16) = v40;
    v42 = sub_26976C06C(sub_26976FA1C, v41);

    v43 = *(v39 + 792);
    *(v39 + 792) = v42;

    v44 = [objc_opt_self() targetWithPid_];
    *(v16 + 1184) = v44;
    sub_26969329C(0, &qword_280324110, 0x277D46E38);
    v45 = sub_26976C1F0(0x6C7070612E6D6F63, 0xEE00697269732E65, 0xD000000000000012, 0x800000026987EB60);
    *(v16 + 1192) = v45;
    *(v16 + 1200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    OUTLINED_FUNCTION_51_4();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2698590C0;
    *(v46 + 32) = v45;
    objc_allocWithZone(MEMORY[0x277D46DB8]);
    v47 = v44;
    v48 = v45;
    v49 = sub_26976F8B4(0xD000000000000023, 0x800000026987EB80, v47, v46);
    *(v16 + 1208) = v49;
    *(v16 + 856) = 0;
    v50 = [v49 acquireWithError_];
    v51 = *(v16 + 856);
    if (v50)
    {
      v52 = v51;
    }

    else
    {
      v53 = v51;
      v54 = sub_269851BD4();

      swift_willThrow();
      if (qword_280322700 != -1)
      {
        swift_once();
      }

      v55 = *(v16 + 1120);
      __swift_project_value_buffer(*(v16 + 992), qword_281571B38);
      v56 = OUTLINED_FUNCTION_86();
      v55(v56);
      v57 = v54;
      v58 = sub_2698548B4();
      v59 = sub_269854F24();

      if (os_log_type_enabled(v58, v59))
      {
        OUTLINED_FUNCTION_40_4();
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        v62 = v54;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v63;
        *v61 = v63;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v64, v65, v66, v67, v68, 0xCu);
        sub_26969B0C0(v61, &qword_280324D50, &qword_26985D530);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {
      }

      (*(*(v16 + 1000) + 8))(*(v16 + 1008), *(v16 + 992));
    }

    (*(v16 + 1120))(*(v16 + 1024), *(v16 + 1112), *(v16 + 992));
    v69 = sub_2698548B4();
    sub_269854F14();
    v70 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v70, v71))
    {
      OUTLINED_FUNCTION_9_17();
      v72 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v72);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v73, v74, v75, v76, v77, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v78 = *(v16 + 1000);
    v79 = *(v16 + 904);

    *(v16 + 1216) = *(v78 + 8);
    v80 = OUTLINED_FUNCTION_22_3();
    v81(v80);
    OUTLINED_FUNCTION_95_1((v79 + 552), *(v79 + 576));
    v82 = swift_task_alloc();
    *(v16 + 1224) = v82;
    *v82 = v16;
    v82[1] = sub_26976A914;
    OUTLINED_FUNCTION_44_4(*(v16 + 960));
    OUTLINED_FUNCTION_7_8();

    return sub_26983BD74();
  }
}

uint64_t sub_26976A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v24 = *MEMORY[0x277D85DE8];
  sub_26969B0C0(*(v14 + 1056), &qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, v24, a12, a13, a14);
}

uint64_t sub_26976A914()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1377) = v3;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26976AA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_12_7();
  if (*(v14 + 1377))
  {
    v15 = *(v14 + 1208);
    v16 = *(v14 + 1192);
    v17 = *(v14 + 1184);
    v18 = *(v14 + 1176);
    v19 = *(v14 + 1168);
    sub_26976C284(v15, *(v14 + 904));

    v20 = OUTLINED_FUNCTION_22_3();
    v21(v20);
    sub_2696A73F8(*(v14 + 904) + 192, v14 + 640);
    OUTLINED_FUNCTION_114_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F8, &unk_26985F1C0);
    inited = swift_initStackObject();
    *(v14 + 1328) = inited;
    *(inited + 16) = xmmword_269857710;
    v23 = swift_task_alloc();
    *(v14 + 1336) = v23;
    *v23 = v14;
    OUTLINED_FUNCTION_32_6(v23);
    OUTLINED_FUNCTION_44_4(v24);
    OUTLINED_FUNCTION_28_1();

    return sub_26976C448();
  }

  else
  {
    v27 = (v14 + 744);
    (*(v14 + 1120))(*(v14 + 1016), *(v14 + 1112), *(v14 + 992));
    v28 = sub_2698548B4();
    sub_269854F24();
    v29 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v29, v30))
    {
      OUTLINED_FUNCTION_9_17();
      v31 = swift_slowAlloc();
      OUTLINED_FUNCTION_30_2(v31);
      OUTLINED_FUNCTION_18_8();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v37 = *(v14 + 1216);
    v38 = *(v14 + 904);

    v39 = OUTLINED_FUNCTION_34_0();
    v37(v39);
    sub_2696A73F8(v38 + 192, v14 + 720);
    v40 = *v27;
    *(v14 + 1232) = *v27;
    *(v14 + 1248) = __swift_project_boxed_opaque_existential_1((v14 + 720), v40);
    OUTLINED_FUNCTION_51_4();
    v41 = swift_allocObject();
    *(v14 + 1256) = v41;
    *(v41 + 16) = xmmword_2698590C0;
    OUTLINED_FUNCTION_95_1((v38 + 592), *(v38 + 616));
    v42 = swift_task_alloc();
    *(v14 + 1264) = v42;
    *v42 = v14;
    v42[1] = sub_26976ACEC;
    OUTLINED_FUNCTION_28_1();

    return sub_2697AF000();
  }
}

uint64_t sub_26976ACEC()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_6();
  *v4 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;

  v7 = swift_task_alloc();
  *(v3 + 1272) = v7;
  *v7 = v5;
  v7[1] = sub_26976AE54;

  return sub_2696C1CD0(v2);
}

uint64_t sub_26976AE54()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v4 + 1280) = v0;

  if (!v0)
  {
    *(v4 + 1288) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26976AF8C()
{
  OUTLINED_FUNCTION_8_5();
  v1 = v0;
  *(*(v0 + 1256) + 32) = *(v0 + 1288);
  sub_269852E94();
  OUTLINED_FUNCTION_1_24();
  sub_2698535C4();
  v2 = swift_task_alloc();
  *(v1 + 1296) = v2;
  *v2 = v1;
  v2[1] = sub_26976B098;
  v3 = *(v1 + 864);

  return MEMORY[0x2821BB488](v3);
}

uint64_t sub_26976B098()
{
  OUTLINED_FUNCTION_34();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_23();
  v4(v3);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26976B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v34 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_7();
  v24 = OUTLINED_FUNCTION_115_0((v17 + 720));
  sub_26976C284(v24, v19);

  (*(v16 + 8))(a9, v18);
  sub_26969B0C0(a10, &qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, v34, a12, a13, a14);
}

uint64_t sub_26976B360()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_6();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v7 = v6;
  *(v4 + 1344) = v0;

  if (!v0)
  {
    *(v4 + 1352) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26976B498()
{
  OUTLINED_FUNCTION_34();
  v1 = 0;
  *(v0[166] + 32) = v0[169];
  v2 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; ; v2 = i)
  {
    v0[170] = v2;
    if (v1)
    {
      break;
    }

    v3 = *(v0[166] + 32);
    if (!v3)
    {
      break;
    }

    v4 = v3;
    MEMORY[0x26D645B90]();
    OUTLINED_FUNCTION_104();
    if (v5)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
    v1 = 1;
  }

  swift_setDeallocating();
  sub_269819DC0();
  sub_269852E64();
  OUTLINED_FUNCTION_1_24();
  sub_2698535C4();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  v0[171] = v6;
  *v6 = v7;
  v6[1] = sub_26976B624;
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2821BB488](v8);
}

uint64_t sub_26976B624()
{
  OUTLINED_FUNCTION_34();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_23();
  v4(v3);
  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26976B7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v25 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 1056);

  sub_26969B0C0(v15, &qword_2803240F0, &qword_2698603D0);
  __swift_destroy_boxed_opaque_existential_0((v14 + 640));
  OUTLINED_FUNCTION_46_1();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, v25, a12, a13, a14);
}

uint64_t sub_26976B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v35 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_33_7();
  *(v24 + 16) = 0;

  v25 = OUTLINED_FUNCTION_115_0((v17 + 720));
  sub_26976C284(v25, v19);

  (*(v16 + 8))(a9, v18);
  sub_26969B0C0(a10, &qword_2803240F0, &qword_2698603D0);
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, v35, a12, a13, a14);
}

uint64_t sub_26976BA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v26 = *MEMORY[0x277D85DE8];
  v15 = *(v14 + 1328);
  v16 = *(v14 + 1056);

  sub_26969B0C0(v16, &qword_2803240F0, &qword_2698603D0);
  *(v15 + 16) = 0;
  swift_setDeallocating();
  sub_269819DC0();
  __swift_destroy_boxed_opaque_existential_0((v14 + 640));
  OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_70_1();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_116();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, v26, a12, a13, a14);
}

id sub_26976BB44(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() handleForLegacyHandle:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_269851BD4();

    swift_willThrow();
  }

  return v2;
}

void sub_26976BC18(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v4 setValues_];
  [a1 setStateDescriptor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2698590C0;
  *(v5 + 32) = a2;
  sub_26969329C(0, &qword_280324180, 0x277D46FA0);
  v6 = a2;
  v7 = sub_269854CA4();

  [a1 setPredicates_];

  v9[4] = sub_26976BD9C;
  v9[5] = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26976BFCC;
  v9[3] = &block_descriptor_56;
  v8 = _Block_copy(v9);
  [a1 setUpdateHandler_];
  _Block_release(v8);
}

uint64_t sub_26976BD9C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_2698548D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_281571B38);
  (*(v6 + 16))(v8, v9, v5);
  v10 = a2;
  v11 = a3;
  v12 = sub_2698548B4();
  v13 = sub_269854F14();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 67109378;
    *(v14 + 4) = [v10 pid];

    *(v14 + 8) = 2112;
    *(v14 + 10) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_269684000, v12, v13, "PlayVideoHandleIntentStrategy.handleCarPlayContinuityExecution received process state update for process: %d: stateUpdate: %@", v14, 0x12u);
    sub_26969B0C0(v15, &qword_280324D50, &qword_26985D530);
    MEMORY[0x26D647170](v15, -1, -1);
    MEMORY[0x26D647170](v14, -1, -1);
  }

  else
  {

    v12 = v10;
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_26976BFCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

id sub_26976C06C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v9[4] = sub_26976FA94;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26976C19C;
  v9[3] = &block_descriptor_13;
  v5 = _Block_copy(v9);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v7 = [ObjCClassFromMetadata monitorWithConfiguration_];
  _Block_release(v5);

  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26976C19C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id sub_26976C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_269854A64();

  v5 = sub_269854A64();

  v6 = [swift_getObjCClassFromMetadata() attributeWithDomain:v4 name:v5];

  return v6;
}

void sub_26976C284(void *a1, uint64_t a2)
{
  v4 = sub_2698548D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280322700 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281571B38);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2698548B4();
  v10 = sub_269854F04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_269684000, v9, v10, "PlayVideoIntentHandleStrategy.handleCarPlayContinuityExecution manually invalidating the assertion since playback has started or timed out", v11, 2u);
    MEMORY[0x26D647170](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  [a1 invalidate];
  [*(a2 + 792) invalidate];
  v12 = *(a2 + 792);
  *(a2 + 792) = 0;
}

uint64_t sub_26976C448()
{
  OUTLINED_FUNCTION_2_7();
  v1[19] = v2;
  v1[20] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v1[21] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[22] = v4;
  v1[23] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698548D4();
  v1[24] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[25] = v6;
  v1[26] = OUTLINED_FUNCTION_37_0();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26976C55C()
{
  v79 = v0;
  v1 = *(v0 + 160);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  OUTLINED_FUNCTION_22_3();
  v4 = sub_269852CF4();
  if ((v4 & 1) != 0 || *(*(v0 + 160) + 16))
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v4 = swift_once();
    }

    OUTLINED_FUNCTION_29_2(v4, qword_28033D910);
    v5 = OUTLINED_FUNCTION_12_11();
    v6(v5);
    v7 = sub_2698548B4();
    sub_269854F14();
    v8 = OUTLINED_FUNCTION_62_1();
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_9_17();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
    }

    v15 = OUTLINED_FUNCTION_22_3();
    v16(v15);
LABEL_8:

    v17 = *(v0 + 8);

    return v17(0);
  }

  v19 = sub_269853504();
  v20 = [v19 content];

  if (v20)
  {
    if ([v20 type] == 3)
    {
      v21 = [v20 show];
      if (v21)
      {
        sub_26978701C(v21);
        if (v22)
        {
          OUTLINED_FUNCTION_101_0();
          v23 = sub_269831F5C(v20);
          if (v24)
          {
            v25 = v23;
          }

          else
          {
            v25 = 0;
          }

          v76 = v25;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = 0xE000000000000000;
          }

          v27 = sub_26976F9BC(v20);
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

          if (qword_2803226E0 != -1)
          {
            OUTLINED_FUNCTION_0_22();
            swift_once();
          }

          v31 = *(v0 + 224);
          v33 = *(v0 + 192);
          v32 = *(v0 + 200);
          v34 = __swift_project_value_buffer(v33, qword_28033D910);
          (*(v32 + 16))(v31, v34, v33);

          v35 = sub_2698548B4();
          LOBYTE(v32) = sub_269854F14();

          v71 = v32;
          v36 = os_log_type_enabled(v35, v32);
          v37 = *(v0 + 224);
          v38 = *(v0 + 200);
          v74 = *(v0 + 192);
          if (v36)
          {
            log = v35;
            v39 = swift_slowAlloc();
            OUTLINED_FUNCTION_90_1();
            v78 = swift_slowAlloc();
            *v39 = 136315394;
            v70 = v37;
            v40 = v76;
            v41 = OUTLINED_FUNCTION_44_0();
            *(v39 + 4) = sub_26974F520(v41, v42, v43);
            *(v39 + 12) = 2080;
            *(v39 + 14) = sub_26974F520(v29, v30, &v78);
            _os_log_impl(&dword_269684000, log, v71, "Using show name in dialog if content type is TV episode - season:%s, episode:%s.", v39, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();

            (*(v38 + 8))(v70, v74);
          }

          else
          {

            (*(v38 + 8))(v37, v74);
            v40 = v76;
          }

          goto LABEL_34;
        }
      }
    }
  }

  v44 = sub_26976CDE8();
  if (!v45)
  {
    if (qword_2803226E0 != -1)
    {
      OUTLINED_FUNCTION_0_22();
      v44 = swift_once();
    }

    OUTLINED_FUNCTION_29_2(v44, qword_28033D910);
    v50 = OUTLINED_FUNCTION_12_11();
    v51(v50);
    v52 = OUTLINED_FUNCTION_47_2();
    v53(v52);
    v54 = sub_2698548B4();
    v55 = sub_269854F24();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 216);
    v59 = *(v0 + 192);
    v58 = *(v0 + 200);
    v61 = *(v0 + 176);
    v60 = *(v0 + 184);
    v62 = *(v0 + 168);
    if (v56)
    {
      OUTLINED_FUNCTION_40_4();
      v77 = v59;
      v63 = swift_slowAlloc();
      OUTLINED_FUNCTION_59_1();
      v75 = swift_slowAlloc();
      v78 = v75;
      *v63 = 136315138;
      v64 = sub_269853504();
      loga = v57;
      v65 = [v64 &off_279C6F378];

      *(v0 + 144) = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E8, &unk_26985F1B0);
      v66 = sub_269854AE4();
      v68 = v67;
      (*(v61 + 8))(v60, v62);
      v69 = sub_26974F520(v66, v68, &v78);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_269684000, v54, v55, "Unable to get title for content, skipping dialog. Intent content: %s", v63, 0xCu);
      OUTLINED_FUNCTION_115_0(v75);
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();
      OUTLINED_FUNCTION_8_25();
      MEMORY[0x26D647170]();

      (*(v58 + 8))(loga, v77);
    }

    else
    {

      (*(v61 + 8))(v60, v62);
      (*(v58 + 8))(v57, v59);
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_101_0();
  v40 = 0;
  v29 = 0;
  v26 = 0xE000000000000000;
  v30 = 0xE000000000000000;
LABEL_34:
  *(v0 + 80) = v2;
  *(v0 + 88) = v3;
  *(v0 + 96) = v40;
  *(v0 + 104) = v26;
  *(v0 + 112) = v29;
  *(v0 + 120) = v30;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v46 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v46;
  v47 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v47;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 232) = v48;
  *v48 = v49;
  v48[1] = sub_26976CBF8;

  return sub_2696BF438();
}

uint64_t sub_26976CBF8()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 240) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    sub_2696C28C4(v5 + 80);

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t sub_26976CD58()
{
  OUTLINED_FUNCTION_8_5();
  sub_2696C28C4(v0 + 80);

  OUTLINED_FUNCTION_7_7();

  return v1();
}

uint64_t sub_26976CDE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v0 = sub_269853504();
  v1 = [v0 content];

  if (v1)
  {
    v2 = [v1 show];

    if (v2)
    {
      v3 = sub_26978701C(v2);
      if (v4)
      {
        return v3;
      }
    }
  }

  v6 = sub_269853504();
  v7 = [v6 content];

  if (v7)
  {
    v5 = sub_26978701C(v7);
  }

  else
  {

    return 0;
  }

  return v5;
}

void sub_26976CEF0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v57 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v51[-v9];
  v11 = [a1 content];
  if (v11 && (v12 = v11, v13 = [v11 show], v12, v13) && (v14 = sub_26978701C(v13), v15))
  {
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v18 = [a1 content];
    if (v18)
    {
      v16 = sub_26978701C(v18);
      v17 = v19;
    }

    else
    {

      v16 = 0;
      v17 = 0;
    }
  }

  v20 = [a1 content];
  if (v20)
  {
    v21 = v20;
    if ([v20 type] == 3)
    {
      v22 = [v21 show];
      if (v22)
      {
        v23 = sub_26978701C(v22);
        if (v24)
        {
          v53 = v24;
          v54 = v23;

          v25 = sub_269831F5C(v21);
          if (v26)
          {
            v27 = v25;
          }

          else
          {
            v27 = 0;
          }

          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = 0xE000000000000000;
          }

          v29 = sub_26976F9BC(v21);
          if (v30)
          {
            v31 = v29;
          }

          else
          {
            v31 = 0;
          }

          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = 0xE000000000000000;
          }

          if (qword_2803226E0 != -1)
          {
            OUTLINED_FUNCTION_0_22();
            swift_once();
          }

          __swift_project_value_buffer(v56, qword_28033D910);
          v33 = OUTLINED_FUNCTION_12_11();
          v34(v33);

          v35 = sub_2698548B4();
          v36 = sub_269854F14();

          v52 = v36;
          v55 = v35;
          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            OUTLINED_FUNCTION_90_1();
            v59 = swift_slowAlloc();
            *v37 = 136315394;
            *(v37 + 4) = sub_26974F520(v27, v28, &v59);
            *(v37 + 12) = 2080;
            *(v37 + 14) = sub_26974F520(v31, v32, &v59);
            _os_log_impl(&dword_269684000, v55, v52, "Using show name in dialog if content type is TV episode - season:%s, episode:%s.", v37, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();
            OUTLINED_FUNCTION_8_25();
            MEMORY[0x26D647170]();
          }

          (*(v57 + 8))(v10, v56);
          v17 = v53;
          v16 = v54;
          goto LABEL_32;
        }
      }
    }
  }

  if (v17)
  {
    v27 = 0;
    v31 = 0;
    v28 = 0xE000000000000000;
    v32 = 0xE000000000000000;
LABEL_32:
    *a2 = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v27;
    *(a2 + 24) = v28;
    *(a2 + 32) = v31;
    *(a2 + 40) = v32;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0xE000000000000000;
    *(a2 + 64) = 0;
    return;
  }

  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    swift_once();
  }

  v38 = v56;
  v39 = __swift_project_value_buffer(v56, qword_28033D910);
  v40 = v57;
  (*(v57 + 16))(v8, v39, v38);
  v41 = a1;
  v42 = sub_2698548B4();
  v43 = sub_269854F24();

  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_40_4();
    v44 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_1();
    v45 = swift_slowAlloc();
    v59 = v45;
    *v44 = 136315138;
    v58 = [v41 content];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E8, &unk_26985F1B0);
    v46 = sub_269854AE4();
    v48 = sub_26974F520(v46, v47, &v59);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_269684000, v42, v43, "Unable to get title for content, skipping dialog. Intent content: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();

    (*(v57 + 8))(v8, v38);
  }

  else
  {

    (*(v40 + 8))(v8, v38);
  }

  sub_2696BAE9C();
  OUTLINED_FUNCTION_20_4();
  v49 = swift_allocError();
  *v50 = xmmword_26985EF70;
  OUTLINED_FUNCTION_81_0(v49, v50);
  swift_willThrow();
}

uint64_t sub_26976D464()
{
  OUTLINED_FUNCTION_2_7();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240E0, &unk_26985F1A0);
  v1[39] = v4;
  OUTLINED_FUNCTION_5_12(v4);
  v1[40] = v5;
  v1[41] = OUTLINED_FUNCTION_4_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323010, &unk_26985B640);
  OUTLINED_FUNCTION_8_9(v6);
  v1[42] = OUTLINED_FUNCTION_4_7();
  v7 = sub_2698532A4();
  v1[43] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[44] = v8;
  v1[45] = OUTLINED_FUNCTION_37_0();
  v1[46] = swift_task_alloc();
  v9 = sub_269852EB4();
  OUTLINED_FUNCTION_8_9(v9);
  v1[47] = OUTLINED_FUNCTION_4_7();
  v10 = sub_269853634();
  v1[48] = v10;
  OUTLINED_FUNCTION_5_12(v10);
  v1[49] = v11;
  v1[50] = OUTLINED_FUNCTION_4_7();
  v12 = sub_2698548D4();
  v1[51] = v12;
  OUTLINED_FUNCTION_5_12(v12);
  v1[52] = v13;
  v1[53] = OUTLINED_FUNCTION_37_0();
  v1[54] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v14);
}

uint64_t sub_26976D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E0 != -1)
  {
    OUTLINED_FUNCTION_0_22();
    v16 = swift_once();
  }

  v17 = *(v15 + 416);
  OUTLINED_FUNCTION_29_2(v16, qword_28033D910);
  v18 = *(v17 + 16);
  v19 = OUTLINED_FUNCTION_12_11();
  v18(v19);
  v20 = sub_2698548B4();
  v21 = sub_269854F14();
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_9_17();
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_30_2(v22);
    _os_log_impl(&dword_269684000, v20, v21, "PlayVideoHandleIntentStrategy.makeFailureHandlingIntentResponse() called", v14, 2u);
    OUTLINED_FUNCTION_8_25();
    MEMORY[0x26D647170]();
  }

  v23 = *(v15 + 416);

  v24 = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_22_3();
  v24(v25);
  v26 = sub_2698534E4();
  v27 = OBJC_IVAR___PlayVideoIntentResponse_code;
  swift_beginAccess();
  v28 = *&v26[v27];

  switch(v28)
  {
    case 'd':
      v30 = *(v15 + 304);
      sub_2696A73F8(v30 + 192, v15 + 176);
      v31 = *(v15 + 200);
      *(v15 + 440) = v31;
      *(v15 + 456) = __swift_project_boxed_opaque_existential_1((v15 + 176), v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      OUTLINED_FUNCTION_51_4();
      v32 = swift_allocObject();
      *(v15 + 464) = v32;
      *(v32 + 16) = xmmword_2698590C0;
      OUTLINED_FUNCTION_95_1((v30 + 112), *(v30 + 136));
      v33 = swift_task_alloc();
      *(v15 + 472) = v33;
      *v33 = v15;
      v33[1] = sub_26976DDA4;
      OUTLINED_FUNCTION_44_4(0x654E236F65646956);
      OUTLINED_FUNCTION_116();

      result = v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, sub_26977F2C4, a11, a12, a13, a14);
      break;
    case 'e':
      OUTLINED_FUNCTION_95_1((*(v15 + 304) + 112), *(*(v15 + 304) + 136));
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v15 + 504) = v58;
      *v58 = v59;
      v58[1] = sub_26976E1F4;
      OUTLINED_FUNCTION_116();

      result = sub_2696B98F4(v60, v61);
      break;
    case 'f':
      sub_2696A73F8(*(v15 + 304) + 192, v15 + 96);
      v48 = *(v15 + 120);
      *(v15 + 520) = v48;
      *(v15 + 536) = __swift_project_boxed_opaque_existential_1((v15 + 96), v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      OUTLINED_FUNCTION_51_4();
      v49 = swift_allocObject();
      *(v15 + 544) = v49;
      *(v49 + 16) = xmmword_2698590C0;
      sub_26976CDE8();
      OUTLINED_FUNCTION_101_0();
      *(v15 + 552) = v50;
      v51 = swift_task_alloc();
      *(v15 + 560) = v51;
      *v51 = v15;
      v51[1] = sub_26976E4DC;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_116();

      result = sub_2696C1440();
      break;
    case 'g':
      OUTLINED_FUNCTION_95_1((*(v15 + 304) + 112), *(*(v15 + 304) + 136));
      swift_task_alloc();
      OUTLINED_FUNCTION_23_2();
      *(v15 + 592) = v53;
      *v53 = v54;
      v53[1] = sub_26976E890;
      OUTLINED_FUNCTION_116();

      result = sub_2696B9AD0(v55, v56);
      break;
    case 'h':
      v43 = *(v15 + 304);
      sub_2696A73F8(v43 + 192, v15 + 16);
      v44 = *(v15 + 40);
      *(v15 + 608) = v44;
      *(v15 + 624) = __swift_project_boxed_opaque_existential_1((v15 + 16), v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
      OUTLINED_FUNCTION_51_4();
      v45 = swift_allocObject();
      *(v15 + 632) = v45;
      *(v45 + 16) = xmmword_2698590C0;
      OUTLINED_FUNCTION_95_1((v43 + 592), *(v43 + 616));
      v46 = swift_task_alloc();
      *(v15 + 640) = v46;
      *v46 = v15;
      v46[1] = sub_26976EB74;
      OUTLINED_FUNCTION_116();

      result = sub_2697AF000();
      break;
    default:
      if (qword_2803226E8 != -1)
      {
        v29 = OUTLINED_FUNCTION_0_30(&qword_2803226E8);
      }

      OUTLINED_FUNCTION_29_2(v29, qword_28033D928);
      v63 = OUTLINED_FUNCTION_12_11();
      v18(v63);
      v64 = OUTLINED_FUNCTION_47_2();
      v65(v64);
      v66 = sub_2698548B4();
      v67 = sub_269854F24();
      if (os_log_type_enabled(v66, v67))
      {
        OUTLINED_FUNCTION_40_4();
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        v69 = sub_2698534E4();
        v70 = OBJC_IVAR___PlayVideoIntentResponse_code;
        swift_beginAccess();
        v71 = *&v69[v70];

        v72 = OUTLINED_FUNCTION_22_10();
        v73(v72);
        *(v68 + 4) = v71;
        _os_log_impl(&dword_269684000, v66, v67, "Received unexpected intent code %ld for PlayVideoIntent.", v68, 0xCu);
        OUTLINED_FUNCTION_8_25();
        MEMORY[0x26D647170]();
      }

      else
      {
        v74 = OUTLINED_FUNCTION_22_10();
        v75(v74);
      }

      v76 = *(v15 + 424);
      v77 = *(v15 + 408);

      (v24)(v76, v77);
      type metadata accessor for PlayVideoIntent();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      result = sub_2696BBEF8(ObjCClassFromMetadata);
      if (v79)
      {
        OUTLINED_FUNCTION_101_0();
        v80 = sub_2698534E4();
        v81 = OBJC_IVAR___PlayVideoIntentResponse_code;
        swift_beginAccess();
        v82 = *&v80[v81];

        sub_2696BAE9C();
        OUTLINED_FUNCTION_20_4();
        swift_allocError();
        *v83 = v66;
        *(v83 + 8) = v77;
        *(v83 + 16) = v82;
        *(v83 + 24) = 2;
        swift_willThrow();
        OUTLINED_FUNCTION_11_23();

        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_116();

        result = v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14);
      }

      else
      {
        __break(1u);
      }

      break;
  }

  return result;
}

uint64_t sub_26976DDA4()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 480) = v0;

  if (!v0)
  {
    *(v5 + 488) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26976DEB0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_67_0(*(v0 + 488));
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_97_0(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 496) = v3;
  *v3 = v4;
  v3[1] = sub_26976DF58;
  v5 = OUTLINED_FUNCTION_79_0();

  return MEMORY[0x2821BB488](v5);
}

uint64_t sub_26976DF58()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26976E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  __swift_destroy_boxed_opaque_existential_0((v10 + 176));
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_76_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  *(*(v10 + 464) + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0((v10 + 176));
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976E1F4()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 512) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26976E2F0()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + 336);
  OUTLINED_FUNCTION_88_0();
  sub_269853234();
  v3 = OUTLINED_FUNCTION_50_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = sub_2698538F4();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v1[3] = v7;
  v1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_65_1(boxed_opaque_existential_1, v10, v11, MEMORY[0x277D84F90], v12, v13, v14, v15, v0 + 136);
  sub_26969B0C0(v0 + 136, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v2, &qword_280323010, &unk_26985B640);
  v16 = OUTLINED_FUNCTION_22_3();
  v17(v16);
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();

  return v18();
}

uint64_t sub_26976E444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_26976E4DC()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 568) = v0;

  if (!v0)
  {
    *(v5 + 576) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26976E5F0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_67_0(*(v0 + 576));
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_97_0(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 584) = v3;
  *v3 = v4;
  v3[1] = sub_26976E6A0;
  v5 = OUTLINED_FUNCTION_79_0();

  return MEMORY[0x2821BB488](v5);
}

uint64_t sub_26976E6A0()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26976E7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  __swift_destroy_boxed_opaque_existential_0((v10 + 96));
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_76_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976E890()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26976E98C()
{
  OUTLINED_FUNCTION_12_7();
  v2 = *(v0 + 336);
  OUTLINED_FUNCTION_88_0();
  sub_269853234();
  v3 = OUTLINED_FUNCTION_50_3();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = sub_2698538F4();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v1[3] = v7;
  v1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_65_1(boxed_opaque_existential_1, v10, v11, MEMORY[0x277D84F90], v12, v13, v14, v15, v0 + 56);
  sub_26969B0C0(v0 + 56, &qword_280323028, qword_26985AD20);
  sub_26969B0C0(v2, &qword_280323010, &unk_26985B640);
  v16 = OUTLINED_FUNCTION_22_3();
  v17(v16);
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();

  return v18();
}

uint64_t sub_26976EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_26976EB74()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  OUTLINED_FUNCTION_3_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v5 = v4;

  v6 = swift_task_alloc();
  *(v2 + 648) = v6;
  *v6 = v4;
  v6[1] = sub_26976ECAC;

  return sub_2696C1938();
}

uint64_t sub_26976ECAC()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_3_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 656) = v0;

  if (!v0)
  {
    *(v5 + 664) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26976EDB8()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_67_0(*(v0 + 664));
  OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_97_0(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_2();
  *(v0 + 672) = v3;
  *v3 = v4;
  v3[1] = sub_26976EE68;
  v5 = OUTLINED_FUNCTION_79_0();

  return MEMORY[0x2821BB488](v5);
}

uint64_t sub_26976EE68()
{
  OUTLINED_FUNCTION_8_5();
  OUTLINED_FUNCTION_14_6();
  v1 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12_23();
  v4(v3);
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26976EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_49();
  __swift_destroy_boxed_opaque_existential_0((v10 + 16));
  OUTLINED_FUNCTION_14_13();

  OUTLINED_FUNCTION_4_17();
  OUTLINED_FUNCTION_76_2();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  v11 = *(v10 + 544);

  *(v11 + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0((v10 + 96));
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_26976F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_49();
  *(*(v10 + 632) + 16) = 0;

  __swift_destroy_boxed_opaque_existential_0((v10 + 16));
  OUTLINED_FUNCTION_11_23();

  OUTLINED_FUNCTION_7_7();
  OUTLINED_FUNCTION_75_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_26976F1BC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  sub_269743AD8(v0 + 64);
  sub_2696D1E70(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 152));
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  sub_269759494(v0 + 352);
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  __swift_destroy_boxed_opaque_existential_0((v0 + 472));
  sub_26969B0C0(v0 + 512, &qword_280324188, &qword_26985F1D8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 552));
  __swift_destroy_boxed_opaque_existential_0((v0 + 592));
  __swift_destroy_boxed_opaque_existential_0((v0 + 632));
  __swift_destroy_boxed_opaque_existential_0((v0 + 672));
  __swift_destroy_boxed_opaque_existential_0((v0 + 712));
  __swift_destroy_boxed_opaque_existential_0((v0 + 752));

  return v0;
}

uint64_t sub_26976F284()
{
  sub_26976F1BC();

  return MEMORY[0x2821FE8D8](v0, 800, 7);
}

uint64_t sub_26976F2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_26976F3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_26976F464(uint64_t *a1)
{
  sub_269764850(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_26976F4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DAF80;

  return sub_269764BA4();
}

uint64_t sub_26976F580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_26976F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PlayVideoHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_2696DAF80;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_26976F708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2696DA938;

  return sub_26976D464();
}

uint64_t sub_26976F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_2697564B8(a1, a2, a3, a4, a5);
  v7 = *(v5 + 8);

  return v7(v6);
}

uint64_t sub_26976F814(uint64_t a1, uint64_t a2)
{
  result = sub_26976FC84(&qword_2803240D8, a2, type metadata accessor for PlayVideoHandleIntentStrategy);
  *(a1 + 8) = result;
  return result;
}

id sub_26976F8B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_269854A64();

  sub_26969329C(0, &qword_280324118, 0x277D46DD8);
  v7 = sub_269854CA4();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

uint64_t sub_26976F95C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_26976F9BC(void *a1)
{
  v1 = [a1 episodeNumber];
  if (v1)
  {
    v2 = v1;
    sub_269854A94();
  }

  return OUTLINED_FUNCTION_50_0();
}

uint64_t sub_26976FA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803240F0, &qword_2698603D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_26976FAD4(uint64_t a1, void *a2)
{
  sub_26969329C(0, &qword_2803239B0, 0x277D47140);
  OUTLINED_FUNCTION_86();
  v3 = sub_269854CA4();

  [a2 setViews_];
}

void sub_26976FB54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setDialogPhase_];
}

uint64_t sub_26976FBB8(void *a1)
{
  v2 = [a1 appBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_269854A94();

  return v3;
}

uint64_t sub_26976FC84(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_86();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26976FCC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_23()
{
}

uint64_t OUTLINED_FUNCTION_14_13()
{
}

uint64_t OUTLINED_FUNCTION_15_16()
{
}

uint64_t OUTLINED_FUNCTION_16_15()
{
}

uint64_t OUTLINED_FUNCTION_27_9()
{
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_3()
{
}

uint64_t OUTLINED_FUNCTION_46_1()
{
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  v0[21] = v1;
  v0[18] = 0x6564695669726953;
  v0[19] = 0xE90000000000006FLL;

  return sub_269854A94();
}

uint64_t OUTLINED_FUNCTION_64_0()
{
  v6 = *(v2 + 560);
  *v0 = *(v2 + 544);
  v0[1] = v6;
  v0[2] = *(v2 + 576);
  *(v2 + 520) = v3;
  *(v2 + 528) = v4;
  *(v2 + 536) = v1;

  return sub_2696C285C(v0);
}

uint64_t OUTLINED_FUNCTION_65_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_269853114();
}

uint64_t OUTLINED_FUNCTION_66_1()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 904) + 472), *(*(v0 + 904) + 496));

  return swift_initStackObject();
}

uint64_t OUTLINED_FUNCTION_67_0@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 32) = a2;

  return sub_269852E64();
}

uint64_t OUTLINED_FUNCTION_68_2()
{
}

unint64_t OUTLINED_FUNCTION_69_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_26974F520(v14, v15, va);
}

uint64_t OUTLINED_FUNCTION_70_1()
{
}

uint64_t OUTLINED_FUNCTION_82_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 824) = a1;
  *(v2 + 832) = a2;

  return sub_2698551B4();
}

uint64_t OUTLINED_FUNCTION_83_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 840) = a1;
  *(v2 + 848) = a2;

  return sub_2698551B4();
}

uint64_t OUTLINED_FUNCTION_84_1(uint64_t a1, uint64_t a2)
{
  *(v2 + 808) = a1;
  *(v2 + 816) = a2;

  return sub_2698551B4();
}

void OUTLINED_FUNCTION_85_1()
{
}

uint64_t OUTLINED_FUNCTION_88_0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 304) + 24), *(*(v0 + 304) + 48));

  return sub_269852CA4();
}

void OUTLINED_FUNCTION_93_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *(v12 + 14) = v11;
  *(v12 + 22) = 1024;
  *(v12 + 24) = a11;
}

uint64_t OUTLINED_FUNCTION_94_1()
{
  v2 = *(v0 + 856) + 352;

  return sub_26976FC28(v2, v0 + 176);
}

void OUTLINED_FUNCTION_96_1()
{
}

uint64_t OUTLINED_FUNCTION_97_0(uint64_t a1, uint64_t a2)
{

  return sub_2698535C4();
}

uint64_t OUTLINED_FUNCTION_99_0(uint64_t a1)
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_100_0()
{
  v1 = *(v0 + 560);
  *(v0 + 400) = *(v0 + 544);
  *(v0 + 416) = v1;
  result = *(v0 + 576);
  *(v0 + 432) = result;
  return result;
}

void OUTLINED_FUNCTION_110_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_113_0()
{

  return sub_2698551B4();
}

void *OUTLINED_FUNCTION_114_0()
{
  v1 = v0[83];
  v0[163] = v1;
  v0[164] = v0[84];
  result = __swift_project_boxed_opaque_existential_1(v0 + 80, v1);
  v0[165] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_116_0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 592), *(v0 + 616));

  return sub_269854604();
}

uint64_t sub_269770590(uint64_t a1, uint64_t a2)
{
  v2 = sub_269854A94();
  v4 = v3;
  v5 = sub_269854A94();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_269770608(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x496C656E6E616863;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 7107189;
    }

    if (v4 == 1)
    {
      v6 = 0x800000026987A7D0;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0x496C656E6E616863;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 7107189;
    }

    if (a2 == 1)
    {
      v2 = 0x800000026987A7D0;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_112_0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_2697706EC(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656C626179616C70;
  }

  else
  {
    v3 = 0x736C656E6E616863;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (a2)
  {
    v5 = 0x656C626179616C70;
  }

  else
  {
    v5 = 0x736C656E6E616863;
  }

  if (a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_269770784(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x656B6F547478656ELL;
  }

  else
  {
    v3 = 0x736D657469;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (a2)
  {
    v5 = 0x656B6F547478656ELL;
  }

  else
  {
    v5 = 0x736D657469;
  }

  if (a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_269770818(char a1, uint64_t a2)
{
  v2 = 0x656369766544;
  if (a1)
  {
    OUTLINED_FUNCTION_157();
    if (v3)
    {
      v5 = 1836019538;
    }

    else
    {
      v5 = 0x797469746E45;
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
    v6 = 0xE600000000000000;
    v5 = 0x656369766544;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_157();
    if (v7)
    {
      v2 = 1836019538;
    }

    else
    {
      v2 = 0x797469746E45;
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
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44_5(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_2697708E4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x6E65746E49707061;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x4974694B69726973;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 1)
    {
      v6 = 0xED0000746E65746ELL;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    v5 = 0x6E65746E49707061;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x4974694B69726973;
    }

    else
    {
      v3 = 0x726F707075736E75;
    }

    if (a2 == 1)
    {
      v2 = 0xED0000746E65746ELL;
    }

    else
    {
      v2 = 0xEB00000000646574;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_112_0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_269770A18(uint64_t a1, uint64_t a2)
{
  v2 = 5522759;
  if (a1)
  {
    OUTLINED_FUNCTION_157();
    if (v3)
    {
      v5 = 1414745936;
    }

    else
    {
      v5 = 0x4554454C4544;
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
    v5 = 5522759;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_157();
    if (v7)
    {
      v2 = 1414745936;
    }

    else
    {
      v2 = 0x4554454C4544;
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
    v11 = OUTLINED_FUNCTION_44_5(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_269770AFC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1684957542;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684957542;
  switch(v4)
  {
    case 1:
      v5 = 2036427888;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 6579297;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x65766F6D6572;
      break;
    case 4:
      v5 = 0x6170206863746566;
      v3 = 0xEA00000000006567;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 2036427888;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 6579297;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x65766F6D6572;
      break;
    case 4:
      v2 = 0x6170206863746566;
      v6 = 0xEA00000000006567;
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
    v8 = OUTLINED_FUNCTION_44_5(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_269770C40(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000747365;
  v3 = 0x42656D69546C6C41;
  v4 = a1;
  v5 = 0x42656D69546C6C41;
  v6 = 0xEB00000000747365;
  switch(v4)
  {
    case 1:
      v5 = 0x57656D69546C6C41;
      v6 = 0xEC0000007473726FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1953719650;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x7473726F77;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x72616C75706F70;
      break;
    case 5:
      v5 = 0x6E656D6D6F636572;
      v6 = 0xEB00000000646564;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v7 = 1702323566;
      goto LABEL_9;
    case 7:
      v6 = 0xE600000000000000;
      v7 = 1701080175;
LABEL_9:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
      break;
    case 8:
      v6 = 0xE800000000000000;
      v5 = 0x676E6973736F7267;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x57656D69546C6C41;
      v2 = 0xEC0000007473726FLL;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1953719650;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x7473726F77;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x72616C75706F70;
      break;
    case 5:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEB00000000646564;
      break;
    case 6:
      v2 = 0xE600000000000000;
      v8 = 1702323566;
      goto LABEL_19;
    case 7:
      v2 = 0xE600000000000000;
      v8 = 1701080175;
LABEL_19:
      v3 = v8 & 0xFFFF0000FFFFFFFFLL | 0x747300000000;
      break;
    case 8:
      v2 = 0xE800000000000000;
      v3 = 0x676E6973736F7267;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_112_0(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_269770E68(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x736472617761;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x736472617761;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x776F68735F7674;
      break;
    case 2:
      v5 = 0x6F736165735F7674;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x6F736970655F7674;
      v3 = 0xEA00000000006564;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x6569766F6DLL;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x6C656E6E616863;
      break;
    case 6:
      v5 = 0x656D6974776F6873;
      v3 = 0xE900000000000073;
      break;
    case 7:
      v5 = 0x73676E696874;
      break;
    case 8:
      v3 = 0xE700000000000000;
      v5 = 0x72656C69617274;
      break;
    case 9:
      v3 = 0xE700000000000000;
      v5 = 0x7374656B636974;
      break;
    case 10:
      v3 = 0xE800000000000000;
      v5 = 0x7372657461656874;
      break;
    case 11:
      v5 = 0x736F65646976;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x776F68735F7674;
      break;
    case 2:
      v2 = 0x6F736165735F7674;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0x6F736970655F7674;
      v6 = 0xEA00000000006564;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x6569766F6DLL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v2 = 0x6C656E6E616863;
      break;
    case 6:
      v2 = 0x656D6974776F6873;
      v6 = 0xE900000000000073;
      break;
    case 7:
      v2 = 0x73676E696874;
      break;
    case 8:
      v6 = 0xE700000000000000;
      v2 = 0x72656C69617274;
      break;
    case 9:
      v6 = 0xE700000000000000;
      v2 = 0x7374656B636974;
      break;
    case 10:
      v6 = 0xE800000000000000;
      v2 = 0x7372657461656874;
      break;
    case 11:
      v2 = 0x736F65646976;
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
    v8 = OUTLINED_FUNCTION_44_5(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_26977111C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x657469726F766166;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x7473696C68736977;
    }

    else
    {
      v5 = 0x73696C6863746177;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000074;
    }
  }

  else
  {
    v5 = 0x657469726F766166;
    v6 = 0xE900000000000073;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x7473696C68736977;
    }

    else
    {
      v3 = 0x73696C6863746177;
    }

    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
    }

    else
    {
      v2 = 0xE900000000000074;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_112_0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_269771208()
{
  OUTLINED_FUNCTION_149();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_153();
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1953718636;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v3 = 1954047342;
      break;
    case 4:
      v0 = 0xE800000000000000;
      v3 = 0x73756F6976657270;
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_156();
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1953718636;
      break;
    case 3:
      v5 = 0xE400000000000000;
      v2 = 1954047342;
      break;
    case 4:
      v5 = 0xE800000000000000;
      v2 = 0x73756F6976657270;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_5(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_269771328()
{
  OUTLINED_FUNCTION_149();
  v3 = 7105633;
  switch(v4)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_153();
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1953718636;
      break;
    case 3:
      v0 = 0xE700000000000000;
      v3 = 0x746E6572727563;
      break;
    default:
      break;
  }

  v5 = 0xE300000000000000;
  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_156();
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1953718636;
      break;
    case 3:
      v5 = 0xE700000000000000;
      v2 = 0x746E6572727563;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_44_5(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_269771428(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x65674178616DLL;
  }

  else
  {
    v2 = 0x6567416E696DLL;
  }

  if (a2)
  {
    v3 = 0x65674178616DLL;
  }

  else
  {
    v3 = 0x6567416E696DLL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_269855584();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2697714B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44_5(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_26977153C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x69736976656C6574;
  }

  else
  {
    v3 = 0x76745F656C707061;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v5 = 0x69736976656C6574;
  }

  else
  {
    v5 = 0x76745F656C707061;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_44_5(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_2697715D4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726F746361;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F746361;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x726F7461657263;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x726F746365726964;
      break;
    case 3:
      v5 = 0x6174537473657567;
      goto LABEL_11;
    case 4:
      v5 = 0xD000000000000014;
      v3 = 0x800000026987A760;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x72656375646F7270;
      break;
    case 6:
      v5 = 0x72656B616DLL;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x726574697277;
      break;
    case 8:
      v5 = 0x6574636172616863;
LABEL_11:
      v3 = 0xE900000000000072;
      break;
    case 9:
      v5 = 0x6669636570736E75;
      v3 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x726F7461657263;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x726F746365726964;
      break;
    case 3:
      v2 = 0x6174537473657567;
      goto LABEL_22;
    case 4:
      v2 = 0xD000000000000014;
      v6 = 0x800000026987A760;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x72656375646F7270;
      break;
    case 6:
      v2 = 0x72656B616DLL;
      break;
    case 7:
      v6 = 0xE600000000000000;
      v2 = 0x726574697277;
      break;
    case 8:
      v2 = 0x6574636172616863;
LABEL_22:
      v6 = 0xE900000000000072;
      break;
    case 9:
      v2 = 0x6669636570736E75;
      v6 = 0xEB00000000646569;
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
    v8 = OUTLINED_FUNCTION_44_5(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_269771828(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 0x206D7269666E6F63;
      v3 = 0xEF746361746E6F63;
      break;
    case 4:
      v5 = 0x63207463656A6572;
      v3 = 0xEE00746361746E6FLL;
      break;
    case 5:
      v5 = 0x726F6D20776F6873;
      v3 = 0xE900000000000065;
      break;
    case 6:
      v3 = 0xE700000000000000;
      v5 = 0x6B636162206F67;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 4:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    case 5:
      v2 = 0x726F6D20776F6873;
      v6 = 0xE900000000000065;
      break;
    case 6:
      v6 = 0xE700000000000000;
      v2 = 0x6B636162206F67;
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
    v8 = OUTLINED_FUNCTION_44_5(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_269771A0C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(a2 + 16);
  result = sub_26977DF3C(v2, result, 0);
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  if (v2 < v4)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_12_11();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_269771A6C(unint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_2698550B4();
    if (v7)
    {
      v8 = a3;
    }

    else
    {
      v8 = result;
    }

    if (v8 >> 14 >= a2 >> 14)
    {
      sub_2698550D4();
      OUTLINED_FUNCTION_68_1();

      return OUTLINED_FUNCTION_25_2();
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_269771B1C(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v15 = sub_269855384();

    return v15;
  }

  sub_26975004C();
  v5 = OUTLINED_FUNCTION_72_0();
  v6 = sub_26977DE98(v5, a1, v2);
  if (v7)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (v8 < 0)
  {
    goto LABEL_16;
  }

  v9 = OUTLINED_FUNCTION_159();
  sub_26977DEE4(v9, v10);
  v11 = OUTLINED_FUNCTION_7_16();
  sub_26977DEE4(v11, v12);
  if ((a2 & 0xC000000000000001) != 0 && v8)
  {
    type metadata accessor for Content();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_269855214();
      v13 = v14;
    }

    while (v8 != v14);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_269771C48(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    result = sub_26977DE98(0, result, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = result;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      v5 = OUTLINED_FUNCTION_160();
      sub_26977DE2C(v5, v6, v7);
      OUTLINED_FUNCTION_68_1();

      return OUTLINED_FUNCTION_25_2();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269771CE8()
{
  v3 = OUTLINED_FUNCTION_161();
  v4 = _s13MediaNLPersonVMa(v3);
  if (v2)
  {
    OUTLINED_FUNCTION_18_5();
    sub_26977E360(v1 + v5, v0, _s13MediaNLPersonVMa);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v6, 1, v4);
}

id sub_269771DC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_269855324();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_160();
  sub_269750050();
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 32);
  }

  v3 = OUTLINED_FUNCTION_159();
  return MEMORY[0x26D646120](v3);
}

uint64_t sub_269771E4C()
{
  v3 = OUTLINED_FUNCTION_161();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v0, v7, 1, v6);
}

void sub_269771EEC(id *a1@<X0>, void *a2@<X8>)
{
  v5 = [*a1 umcId];
  if (v5)
  {
    v6 = v5;
    sub_269854A94();
    OUTLINED_FUNCTION_68_1();
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  *a2 = v2;
  a2[1] = v3;
}

id PlayVideoIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PlayVideoIntentHandler.init()()
{
  OUTLINED_FUNCTION_19_1();
  sub_2698538C4();
  v127[3] = &type metadata for UTSProvider;
  v127[4] = &off_287A43FA8;
  OUTLINED_FUNCTION_129();
  v2 = swift_allocObject();
  v127[0] = v2;
  v125 = &type metadata for CoreAnalyticsService;
  v126 = &xmmword_287A41610;
  v2[5] = &type metadata for UTSNetworkProvider;
  v2[6] = &off_287A43DC0;
  v3 = swift_allocObject();
  v2[2] = v3;
  sub_2697D24B0(&v124, (v3 + 16));
  v2[10] = &type metadata for CoreAnalyticsService;
  v2[11] = &xmmword_287A41610;
  if (qword_2803226B0 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_2803226B0);
  }

  v4 = qword_28033D8E0;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v75 = sub_2697B9550();
  v5 = qword_280322688;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_75_2(&qword_280322688);
  }

  v6 = qword_28033D8B8;
  v7 = type metadata accessor for SiriSignalsRecorder();
  v125 = v7;
  v126 = &off_287A44CA0;
  *&v124 = v4;
  v77 = v4;
  v8 = type metadata accessor for TrialSignalCollectConfigProvider();
  v122 = v8;
  v123 = &off_287A44AE0;
  v121[0] = v6;
  v76 = type metadata accessor for ContentWith3pAppsProvider();
  OUTLINED_FUNCTION_129();
  v9 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v124, v7);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v12 = OUTLINED_FUNCTION_10_14(v11);
  v13(v12);
  __swift_mutable_project_boxed_opaque_existential_1(v121, v122);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_1();
  v16 = OUTLINED_FUNCTION_11_17(v15);
  v17(v16);
  v18 = *v0;
  v19 = *v1;
  v9[5] = v7;
  v9[6] = &off_287A44CA0;
  v9[2] = v18;
  v9[10] = v8;
  v9[11] = &off_287A44AE0;
  v9[7] = v19;

  __swift_destroy_boxed_opaque_existential_0(v121);
  __swift_destroy_boxed_opaque_existential_0(&v124);
  sub_2696A73F8(v128, &v124);
  if (qword_280322650 != -1)
  {
    swift_once();
  }

  v20 = qword_28033D888;
  v122 = &type metadata for LSApplicationRecordProvider;
  v123 = &xmmword_287A41430;
  v72 = type metadata accessor for CarPlaySupportProvider();
  OUTLINED_FUNCTION_25_3();
  v21 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v121, &type metadata for LSApplicationRecordProvider);
  *(v21 + 40) = &type metadata for LSApplicationRecordProvider;
  *(v21 + 48) = &xmmword_287A41430;
  v22 = v21;
  __swift_destroy_boxed_opaque_existential_0(v121);
  locked = type metadata accessor for DeviceLockedProvider();
  v23 = swift_allocObject();
  v122 = &type metadata for ContentResolver;
  v123 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v121[0] = swift_allocObject();
  sub_2696B2824(v127, v121[0] + 16);
  v119 = &type metadata for CoreAnalyticsService;
  v120 = &xmmword_287A41610;
  v117 = &off_287A44CA0;
  v116 = v7;
  v115[0] = v77;
  v114 = &off_287A40130;
  v113 = v76;
  v112[0] = v9;
  v110 = &type metadata for DefaultTipDonationService;
  v111 = &off_287A41DF8;
  v107 = &type metadata for LSApplicationRecordProvider;
  v108 = &xmmword_287A41430;
  v73 = type metadata accessor for CarSessionProvider();
  v105 = &off_287A41458;
  v104 = v73;
  v103[0] = v20;
  v102 = &off_287A41448;
  v101 = v72;
  v100[0] = v22;
  v99 = &off_287A41B20;
  v98 = locked;
  v97[0] = v23;
  v95 = &type metadata for TvProfileSelector;
  v96 = &off_287A41E28;
  v74 = type metadata accessor for PlayVideoIntentHandler();
  v24 = objc_allocWithZone(v74);
  v25 = v122;
  __swift_mutable_project_boxed_opaque_existential_1(v121, v122);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v28 = OUTLINED_FUNCTION_124_0(v27);
  v29(v28);
  __swift_mutable_project_boxed_opaque_existential_1(v118, v119);
  v30 = v116;
  __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_3_1();
  v33 = OUTLINED_FUNCTION_20_8(v32);
  v34(v33);
  v35 = v113;
  __swift_mutable_project_boxed_opaque_existential_1(v112, v113);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_1();
  v38 = OUTLINED_FUNCTION_12_16(v37);
  v39(v38);
  __swift_mutable_project_boxed_opaque_existential_1(v109, v110);
  __swift_mutable_project_boxed_opaque_existential_1(v106, v107);
  __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3_1();
  v42 = OUTLINED_FUNCTION_11_17(v41);
  v43(v42);
  __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3_1();
  v47 = (v46 - v45);
  (*(v48 + 16))(v46 - v45);
  __swift_mutable_project_boxed_opaque_existential_1(v97, v98);
  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_3_1();
  v51 = OUTLINED_FUNCTION_37_5(v50);
  v52(v51);
  __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  Kind = v25->Kind;
  v54 = *v30;
  v55 = *v35;
  v56 = *v47;
  v57 = *v9;
  v93[3] = &type metadata for ContentResolver;
  v93[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v58 = swift_allocObject();
  v93[0] = v58;
  v59 = *(v22 + 16);
  *(v58 + 16) = *v22;
  *(v58 + 32) = v59;
  *(v58 + 48) = *(v22 + 32);
  v92[3] = &type metadata for CoreAnalyticsService;
  v92[4] = &xmmword_287A41610;
  v91[4] = &off_287A44CA0;
  v91[3] = v7;
  v91[0] = Kind;
  v90[4] = &off_287A40130;
  v90[3] = v76;
  v90[0] = v54;
  v89[3] = &type metadata for DefaultTipDonationService;
  v89[4] = &off_287A41DF8;
  v88[3] = &type metadata for LSApplicationRecordProvider;
  v88[4] = &xmmword_287A41430;
  v87[3] = v73;
  v87[4] = &off_287A41458;
  v87[0] = v55;
  v86[3] = v72;
  v86[4] = &off_287A41448;
  v86[0] = v56;
  v85[3] = locked;
  v85[4] = &off_287A41B20;
  v85[0] = v57;
  v84[3] = &type metadata for TvProfileSelector;
  v84[4] = &off_287A41E28;
  v60 = OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver;
  sub_2696A73F8(v93, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver]);
  sub_2696A73F8(v92, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService]);
  sub_2696A73F8(&v24[v60], v83);
  __swift_mutable_project_boxed_opaque_existential_1(v83, v83[3]);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_3_1();
  v63 = OUTLINED_FUNCTION_20_8(v62);
  v64(v63);
  v82[3] = &type metadata for ContentResolver;
  v82[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v82[0] = swift_allocObject();
  OUTLINED_FUNCTION_140(v82[0]);
  v65 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v82, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_3_1();
  v68 = OUTLINED_FUNCTION_37_5(v67);
  v69(v68);
  v80 = &type metadata for ContentResolver;
  v81 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  *&v79 = swift_allocObject();
  OUTLINED_FUNCTION_139(v79);

  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  *(v65 + 152) = sub_269854A04();
  sub_26968E5D4(&v79, v65 + 112);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v83);
  *&v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch] = v65;
  sub_2696A73F8(v91, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder]);
  v70 = &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider];
  *v70 = v75;
  v70[1] = &off_287A41E38;
  sub_2696A73F8(v90, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentWith3pAppsProviding]);
  sub_2696A73F8(&v124, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState]);
  sub_2696A73F8(v89, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tipService]);
  sub_2696A73F8(v88, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_appProvider]);
  sub_2696A73F8(v87, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carSessionProvider]);
  sub_2696A73F8(v86, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider]);
  sub_2696A73F8(v85, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceLockedProvider]);
  sub_2696A73F8(v84, &v24[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tvProfileSelector]);
  v78.receiver = v24;
  v78.super_class = v74;
  objc_msgSendSuper2(&v78, sel_init);

  __swift_destroy_boxed_opaque_existential_0(&v124);
  __swift_destroy_boxed_opaque_existential_0(v128);
  __swift_destroy_boxed_opaque_existential_0(v84);
  __swift_destroy_boxed_opaque_existential_0(v85);
  __swift_destroy_boxed_opaque_existential_0(v86);
  __swift_destroy_boxed_opaque_existential_0(v87);
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v89);
  __swift_destroy_boxed_opaque_existential_0(v90);
  __swift_destroy_boxed_opaque_existential_0(v91);
  __swift_destroy_boxed_opaque_existential_0(v92);
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  __swift_destroy_boxed_opaque_existential_0(v97);
  __swift_destroy_boxed_opaque_existential_0(v100);
  __swift_destroy_boxed_opaque_existential_0(v103);
  __swift_destroy_boxed_opaque_existential_0(v106);
  __swift_destroy_boxed_opaque_existential_0(v109);
  __swift_destroy_boxed_opaque_existential_0(v112);
  __swift_destroy_boxed_opaque_existential_0(v115);
  __swift_destroy_boxed_opaque_existential_0(v118);
  __swift_destroy_boxed_opaque_existential_0(v121);
  sub_2696B28D4(v127);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_21_0();
}

void static PlayVideoIntentHandler.handlerForIntentExtension()()
{
  OUTLINED_FUNCTION_19_1();
  v0 = type metadata accessor for IntentExtensionExecutionDeviceState(0);
  OUTLINED_FUNCTION_4_3();
  v2 = MEMORY[0x28223BE20](v1);
  v122 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v110 - v4;
  v6 = *MEMORY[0x277D61C58];
  sub_269854304();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 104))(v5, v6);
  v8 = v0[5];
  v9 = *MEMORY[0x277D61D98];
  sub_269854334();
  OUTLINED_FUNCTION_4_3();
  (*(v10 + 104))(&v5[v8], v9);
  v11 = v0[6];
  v127 = v5;
  sub_26977F188(&v5[v11]);
  v12 = [objc_opt_self() sharedPreferences];
  v126 = sub_26977DCB4(v12, &selRef_languageCode);
  v14 = v13;
  v15 = AFIsHorseman();
  v16 = AFIsNano();
  v17 = AFIsMac();
  v18 = AFIsATV();
  v19 = AFCurrentUserInterfaceIdiom();
  v20 = sub_269854A94();
  v22 = v21;

  if (v20 == sub_269854A94() && v22 == v23)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_269855584();
  }

  v26 = AFIsPad();
  v27 = AFIsIPod();
  v28 = v127;
  v29 = &v127[v0[7]];
  *v29 = v126;
  v29[1] = v14;
  *(v28 + v0[8]) = v15;
  *(v28 + v0[9]) = v16;
  *(v28 + v0[10]) = v17;
  *(v28 + v0[11]) = v18;
  *(v28 + v0[12]) = v25 & 1;
  *(v28 + v0[13]) = v26;
  *(v28 + v0[14]) = v27;
  v177[3] = &type metadata for UTSProvider;
  v177[4] = &off_287A43FA8;
  OUTLINED_FUNCTION_129();
  v30 = swift_allocObject();
  v177[0] = v30;
  v175 = &type metadata for CoreAnalyticsService;
  v176 = &xmmword_287A41610;
  v30[5] = &type metadata for UTSNetworkProvider;
  v30[6] = &off_287A43DC0;
  v31 = swift_allocObject();
  v30[2] = v31;
  sub_2697D24B0(&v174, (v31 + 16));
  v30[10] = &type metadata for CoreAnalyticsService;
  v30[11] = &xmmword_287A41610;
  if (qword_2803226B0 != -1)
  {
    OUTLINED_FUNCTION_2_15(&qword_2803226B0);
  }

  v32 = qword_28033D8E0;
  type metadata accessor for UserDefaultsProviderImpl();
  swift_allocObject();
  v123 = sub_2697B9550();
  v33 = qword_280322688;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_75_2(&qword_280322688);
  }

  v34 = qword_28033D8B8;
  v35 = type metadata accessor for SiriSignalsRecorder();
  v175 = v35;
  v176 = &off_287A44CA0;
  *&v174 = v32;
  v36 = type metadata accessor for TrialSignalCollectConfigProvider();
  v172 = v36;
  v173 = &off_287A44AE0;
  v171[0] = v34;
  v124 = type metadata accessor for ContentWith3pAppsProvider();
  OUTLINED_FUNCTION_129();
  v37 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&v174, v35);
  OUTLINED_FUNCTION_8_19();
  v121 = v38;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3_1();
  v126 = v32;
  v41 = OUTLINED_FUNCTION_20_8(v40);
  v42(v41);
  __swift_mutable_project_boxed_opaque_existential_1(v171, v172);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3_1();
  v45 = OUTLINED_FUNCTION_162(v44);
  v46(v45);
  v47 = *v32;
  v48 = *v16;
  v125 = v37;
  v37[5] = v35;
  v113 = v35;
  v37[6] = &off_287A44CA0;
  v37[2] = v47;
  v37[10] = v36;
  v37[11] = &off_287A44AE0;
  v37[7] = v48;

  __swift_destroy_boxed_opaque_existential_0(v171);
  __swift_destroy_boxed_opaque_existential_0(&v174);
  v175 = v0;
  v176 = sub_26977E150(&qword_280324208, type metadata accessor for IntentExtensionExecutionDeviceState, &unk_26985F484);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v174);
  v50 = v127;
  sub_26977E360(v127, boxed_opaque_existential_1, type metadata accessor for IntentExtensionExecutionDeviceState);
  v51 = type metadata accessor for CarSessionProvider();
  v112 = v51;
  v52 = swift_allocObject();
  v53 = v50;
  v54 = v122;
  sub_26977E360(v53, v122, type metadata accessor for IntentExtensionExecutionDeviceState);
  v55 = sub_26977DF94(v54, v52);
  v116 = v55;
  v172 = &type metadata for LSApplicationRecordProvider;
  v173 = &xmmword_287A41430;
  v56 = type metadata accessor for CarPlaySupportProvider();
  v111 = v56;
  OUTLINED_FUNCTION_25_3();
  v57 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v171, &type metadata for LSApplicationRecordProvider);
  *(v57 + 40) = &type metadata for LSApplicationRecordProvider;
  *(v57 + 48) = &xmmword_287A41430;
  v58 = v57;
  v115 = v57;
  __swift_destroy_boxed_opaque_existential_0(v171);
  locked = type metadata accessor for DeviceLockedProvider();
  v110 = locked;
  v60 = swift_allocObject();
  v172 = &type metadata for ContentResolver;
  v173 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v171[0] = swift_allocObject();
  sub_2696B2824(v177, v171[0] + 16);
  v169 = &type metadata for CoreAnalyticsService;
  v170 = &xmmword_287A41610;
  v167 = &off_287A44CA0;
  v166 = v35;
  v165[0] = v126;
  v164 = &off_287A40130;
  v163 = v124;
  v162[0] = v125;
  v160 = &type metadata for DefaultTipDonationService;
  v161 = &off_287A41DF8;
  v157 = &type metadata for LSApplicationRecordProvider;
  v158 = &xmmword_287A41430;
  v155 = &off_287A41458;
  v154 = v51;
  v153[0] = v55;
  v152 = &off_287A41448;
  v151 = v56;
  v150[0] = v58;
  v149 = &off_287A41B20;
  v148 = locked;
  v147[0] = v60;
  v145 = &type metadata for TvProfileSelector;
  v146 = &off_287A41E28;
  v119 = type metadata accessor for PlayVideoIntentHandler();
  v61 = objc_allocWithZone(v119);
  __swift_mutable_project_boxed_opaque_existential_1(v171, v172);
  OUTLINED_FUNCTION_8_19();
  v122 = v62;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_3_1();
  v65 = OUTLINED_FUNCTION_162(v64);
  v66(v65);
  __swift_mutable_project_boxed_opaque_existential_1(v168, v169);
  __swift_mutable_project_boxed_opaque_existential_1(v165, v166);
  OUTLINED_FUNCTION_8_19();
  v121 = v67;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_3_1();
  v70 = OUTLINED_FUNCTION_11_17(v69);
  v71(v70);
  __swift_mutable_project_boxed_opaque_existential_1(v162, v163);
  OUTLINED_FUNCTION_8_19();
  v120 = v72;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_3_1();
  v75 = OUTLINED_FUNCTION_10_14(v74);
  v76(v75);
  __swift_mutable_project_boxed_opaque_existential_1(v159, v160);
  __swift_mutable_project_boxed_opaque_existential_1(v156, v157);
  __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
  OUTLINED_FUNCTION_8_19();
  v118 = v77;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_3_1();
  v80 = OUTLINED_FUNCTION_124_0(v79);
  v81(v80);
  __swift_mutable_project_boxed_opaque_existential_1(v150, v151);
  OUTLINED_FUNCTION_8_19();
  v117 = v82;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_3_1();
  v85 = OUTLINED_FUNCTION_12_16(v84);
  v86(v85);
  __swift_mutable_project_boxed_opaque_existential_1(v147, v148);
  OUTLINED_FUNCTION_8_19();
  v114 = v87;
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_3_1();
  v90 = OUTLINED_FUNCTION_37_5(v89);
  v91(v90);
  __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
  v92 = *v51;
  v93 = *locked;
  v94 = *v58;
  Kind = type metadata for LSApplicationRecordProvider.Kind;
  v96 = *v55;
  v143[3] = &type metadata for ContentResolver;
  v143[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v97 = swift_allocObject();
  v143[0] = v97;
  v98 = unk_287A41440;
  *(v97 + 16) = xmmword_287A41430;
  *(v97 + 32) = v98;
  *(v97 + 48) = qword_287A41450;
  v142[3] = &type metadata for CoreAnalyticsService;
  v142[4] = &xmmword_287A41610;
  v141[4] = &off_287A44CA0;
  v141[3] = v113;
  v141[0] = v92;
  v140[4] = &off_287A40130;
  v140[3] = v124;
  v140[0] = v93;
  v139[3] = &type metadata for DefaultTipDonationService;
  v139[4] = &off_287A41DF8;
  v138[3] = &type metadata for LSApplicationRecordProvider;
  v138[4] = &xmmword_287A41430;
  v137[3] = v112;
  v137[4] = &off_287A41458;
  v137[0] = v94;
  v136[3] = v111;
  v136[4] = &off_287A41448;
  v136[0] = Kind;
  v135[3] = v110;
  v135[4] = &off_287A41B20;
  v135[0] = v96;
  v134[3] = &type metadata for TvProfileSelector;
  v134[4] = &off_287A41E28;
  v99 = OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver;
  sub_2696A73F8(v143, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver]);
  sub_2696A73F8(v142, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService]);
  sub_2696A73F8(&v61[v99], v133);
  __swift_mutable_project_boxed_opaque_existential_1(v133, v133[3]);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_3_1();
  v102 = OUTLINED_FUNCTION_20_8(v101);
  v103(v102);
  v132[3] = &type metadata for ContentResolver;
  v132[4] = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  v132[0] = swift_allocObject();
  OUTLINED_FUNCTION_140(v132[0]);
  v104 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v132, &type metadata for ContentResolver);
  OUTLINED_FUNCTION_3_20();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_3_1();
  v107 = OUTLINED_FUNCTION_37_5(v106);
  v108(v107);
  v130 = &type metadata for ContentResolver;
  v131 = &off_287A42478;
  OUTLINED_FUNCTION_25_3();
  *&v129 = swift_allocObject();
  OUTLINED_FUNCTION_139(v129);

  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  *(v104 + 152) = sub_269854A04();
  sub_26968E5D4(&v129, v104 + 112);
  __swift_destroy_boxed_opaque_existential_0(v132);
  __swift_destroy_boxed_opaque_existential_0(v133);
  *&v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch] = v104;
  sub_2696A73F8(v141, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder]);
  v109 = &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_userDefaultsProvider];
  *v109 = v123;
  v109[1] = &off_287A41E38;
  sub_2696A73F8(v140, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentWith3pAppsProviding]);
  sub_2696A73F8(&v174, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState]);
  sub_2696A73F8(v139, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tipService]);
  sub_2696A73F8(v138, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_appProvider]);
  sub_2696A73F8(v137, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carSessionProvider]);
  sub_2696A73F8(v136, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider]);
  sub_2696A73F8(v135, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceLockedProvider]);
  sub_2696A73F8(v134, &v61[OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_tvProfileSelector]);
  v128.receiver = v61;
  v128.super_class = v119;
  objc_msgSendSuper2(&v128, sel_init);

  sub_26977E088(v127, type metadata accessor for IntentExtensionExecutionDeviceState);
  __swift_destroy_boxed_opaque_existential_0(&v174);
  __swift_destroy_boxed_opaque_existential_0(v134);
  __swift_destroy_boxed_opaque_existential_0(v135);
  __swift_destroy_boxed_opaque_existential_0(v136);
  __swift_destroy_boxed_opaque_existential_0(v137);
  __swift_destroy_boxed_opaque_existential_0(v138);
  __swift_destroy_boxed_opaque_existential_0(v139);
  __swift_destroy_boxed_opaque_existential_0(v140);
  __swift_destroy_boxed_opaque_existential_0(v141);
  __swift_destroy_boxed_opaque_existential_0(v142);
  __swift_destroy_boxed_opaque_existential_0(v143);
  __swift_destroy_boxed_opaque_existential_0(v144);
  __swift_destroy_boxed_opaque_existential_0(v147);
  __swift_destroy_boxed_opaque_existential_0(v150);
  __swift_destroy_boxed_opaque_existential_0(v153);
  __swift_destroy_boxed_opaque_existential_0(v156);
  __swift_destroy_boxed_opaque_existential_0(v159);
  __swift_destroy_boxed_opaque_existential_0(v162);
  __swift_destroy_boxed_opaque_existential_0(v165);
  __swift_destroy_boxed_opaque_existential_0(v168);
  __swift_destroy_boxed_opaque_existential_0(v171);
  sub_2696B28D4(v177);
  OUTLINED_FUNCTION_21_0();
}

uint64_t PlayVideoIntentHandler.resolveContent(for:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  OUTLINED_FUNCTION_8_9(v3);
  v1[7] = OUTLINED_FUNCTION_4_7();
  v4 = type metadata accessor for SignalRecordingContext(0);
  v1[8] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v1[9] = OUTLINED_FUNCTION_4_7();
  v5 = sub_269854824();
  v1[10] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_37_0();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v7 = sub_2698548D4();
  v1[15] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_37_0();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_269773E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v21 = *(v20 + 128);
  *(v20 + 232) = __swift_project_value_buffer(*(v20 + 120), qword_28033D928);
  v22 = *(v21 + 16);
  *(v20 + 240) = v22;
  *(v20 + 248) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23 = OUTLINED_FUNCTION_7_16();
  v22(v23);
  v24 = sub_2698548B4();
  v25 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v25))
  {
    v26 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_24(v26);
    OUTLINED_FUNCTION_97_1(&dword_269684000, v27, v25, "Resolve step");
    OUTLINED_FUNCTION_12_1();
  }

  v28 = *(v20 + 224);
  v29 = *(v20 + 128);
  v30 = *(v20 + 40);

  v31 = *(v29 + 8);
  *(v20 + 256) = v31;
  v32 = OUTLINED_FUNCTION_34_0();
  v31(v32);
  v33 = [v30 isRemoteExecution];
  OUTLINED_FUNCTION_72_0();
  sub_269694CBC();
  v34 = sub_269855034();
  v35 = v34;
  if (v28)
  {
    OUTLINED_FUNCTION_34_0();
    v36 = sub_269855064();

    if (v36)
    {
      v37 = *(v20 + 40);
      OUTLINED_FUNCTION_108(*(v20 + 48));
      sub_26974FAB0(v37, &selRef_crossDeviceRequestInitiator);
      sub_2697B8974();
    }
  }

  else
  {
  }

  __swift_project_boxed_opaque_existential_1((*(v20 + 48) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState), *(*(v20 + 48) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState + 24));
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D14())
  {
    v38 = OUTLINED_FUNCTION_7_16();
    v22(v38);
    v39 = sub_2698548B4();
    v40 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v40))
    {
      v41 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v41);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v42, v43, "No devices nearby HomePod eligible for handling intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

    v44 = OUTLINED_FUNCTION_22_3();
    v31(v44);
    type metadata accessor for PlayVideoContentResolutionResult();
    v45 = 6;
    goto LABEL_13;
  }

  v55 = [*(v20 + 40) content];
  if (v55 || (v55 = [*(v20 + 40) contentSearch]) != 0)
  {
  }

  else
  {
    if (!OUTLINED_FUNCTION_79_1(*(v20 + 40), &selRef_utsSearchParams))
    {
      v153 = OUTLINED_FUNCTION_7_16();
      v22(v153);
      v122 = sub_2698548B4();
      v154 = sub_269854F24();
      if (OUTLINED_FUNCTION_19_5(v154))
      {
        v155 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v155);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v156, v157, "Unexpectedly missing a content and search in the intent, returning failure");
        OUTLINED_FUNCTION_18_7();
      }

      goto LABEL_69;
    }
  }

  v56 = [*(v20 + 40) content];
  if (v56)
  {
    v57 = v56;
    sub_26974FAB0(v56, &selRef_appBundleIdentifier);
    if (v58)
    {
      v59 = *(v20 + 40);

      v60 = [v59 contentSearch];
      if (v60)
      {
        sub_26977DCB4(v60, &selRef_name);
        if (v61)
        {
          v62 = *(v20 + 120);

          v63 = OUTLINED_FUNCTION_7_16();
          v22(v63);
          v64 = sub_2698548B4();
          v65 = sub_269854F24();
          if (OUTLINED_FUNCTION_19_5(v65))
          {
            v66 = OUTLINED_FUNCTION_16_2();
            OUTLINED_FUNCTION_24(v66);
            OUTLINED_FUNCTION_11_19();
            _os_log_impl(v67, v68, v69, v70, v62, 2u);
            OUTLINED_FUNCTION_12_1();
          }

          v71 = *(v20 + 200);
          v72 = *(v20 + 120);

          (v31)(v71, v72);
          type metadata accessor for PlayVideoContentResolutionResult();
          v159 = static ContentResolutionResult.success(with:)(v57);

          goto LABEL_14;
        }
      }
    }
  }

  v73 = [*(v20 + 40) content];
  *(v20 + 264) = v73;
  if (v73)
  {
    v74 = v73;
    v75 = sub_26974FAB0(v73, &selRef_umcId);
    if (v76)
    {
      v77 = v75;
      v78 = v76;
      sub_26974FAB0(v74, &selRef_name);
      if (v79)
      {
        v80 = *(v20 + 120);

        v81 = OUTLINED_FUNCTION_7_16();
        v22(v81);
        v82 = sub_2698548B4();
        v83 = sub_269854F14();
        if (OUTLINED_FUNCTION_19_5(v83))
        {
          v84 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_64_1(v84);
          OUTLINED_FUNCTION_11_19();
          _os_log_impl(v85, v86, v87, v88, v80, 2u);
          OUTLINED_FUNCTION_31_6();
        }

        v89 = *(v20 + 192);
        v90 = *(v20 + 120);
        v91 = *(v20 + 40);
        v92 = *(v20 + 48);

        (v31)(v89, v90);
        *(v20 + 272) = *(v92 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
        v94 = OUTLINED_FUNCTION_146(v93);
        *(v20 + 280) = v94;
        *(v94 + 16) = xmmword_269857710;
        *(v94 + 32) = v77;
        *(v94 + 40) = v78;
        *(v20 + 288) = sub_26977DD18(v91, &selRef_channelIds);
        OUTLINED_FUNCTION_84();

        return MEMORY[0x2822009F8](v95);
      }
    }
  }

  if (OUTLINED_FUNCTION_20_13(*(v20 + 40), &selRef_suggestedContent))
  {

    v97 = swift_task_alloc();
    *(v20 + 296) = v97;
    *v97 = v20;
    v97[1] = sub_269774B04;
    OUTLINED_FUNCTION_84();

    return sub_269778F54();
  }

  v99 = [*(v20 + 40) contentSearch];
  *(v20 + 304) = v99;
  if (!v99)
  {
    v121 = OUTLINED_FUNCTION_7_16();
    v22(v121);
    v122 = sub_2698548B4();
    v123 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v123))
    {
      v124 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v124);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v125, v126, "Missing required search from intent, returning failure");
      OUTLINED_FUNCTION_18_7();
    }

LABEL_69:

    v158 = OUTLINED_FUNCTION_22_3();
    v31(v158);
    type metadata accessor for PlayVideoContentResolutionResult();
    v45 = 3;
LABEL_13:
    v159 = static PlayVideoContentResolutionResult.unsupported(forReason:)(v45);
LABEL_14:
    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_9_21();

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_84();

    return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, v159, a18, a19, a20);
  }

  *(v20 + 312) = sub_26974FAB0(v99, &selRef_umcId);
  *(v20 + 320) = v100;
  if (v100)
  {
    if (qword_280322710 != -1)
    {
      OUTLINED_FUNCTION_2_18(&qword_280322710);
    }

    v101 = sub_269854854();
    __swift_project_value_buffer(v101, qword_28033D958);
    sub_269854814();
    v102 = sub_269854844();
    v103 = sub_269854FF4();
    if (sub_269855074())
    {
      v104 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v104);
      v105 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v102, v103, v105, "playSingleItemResolve", "enableTelemetry=YES", &off_279C6F000, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v106 = *(v20 + 112);
    v108 = *(v20 + 80);
    v107 = *(v20 + 88);

    v109 = OUTLINED_FUNCTION_148();
    v110(v109, v106, v108);
    sub_269854894();
    swift_allocObject();
    *(v20 + 328) = OUTLINED_FUNCTION_24_9();
    (*(v107 + 8))(v106, v108);
    v111 = OUTLINED_FUNCTION_7_16();
    v22(v111);
    v112 = sub_2698548B4();
    v113 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v113))
    {
      v114 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v114);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v115, v116, "Content was not populated enough to skip the ID based lookup");
      OUTLINED_FUNCTION_18_7();
    }

    v117 = *(v20 + 48);

    v118 = OUTLINED_FUNCTION_22_3();
    v31(v118);
    __swift_project_boxed_opaque_existential_1((v117 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver), *(v117 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver + 24));
    v119 = swift_task_alloc();
    *(v20 + 336) = v119;
    *v119 = v20;
    OUTLINED_FUNCTION_123(v119);
    OUTLINED_FUNCTION_84();

    return sub_2697BC73C();
  }

  else
  {
    if (qword_280322710 != -1)
    {
      OUTLINED_FUNCTION_2_18(&qword_280322710);
    }

    v127 = sub_269854854();
    __swift_project_value_buffer(v127, qword_28033D958);
    sub_269854814();
    v128 = sub_269854844();
    v129 = sub_269854FF4();
    if (sub_269855074())
    {
      v130 = OUTLINED_FUNCTION_16_2();
      *v130 = 0;
      v131 = sub_269854804();
      _os_signpost_emit_with_name_impl(&dword_269684000, v128, v129, v131, "playDisambiguateResolve", "enableTelemetry=YES", v130, 2u);
      OUTLINED_FUNCTION_10();
    }

    v132 = *(v20 + 96);
    v133 = v128;
    v135 = *(v20 + 80);
    v134 = *(v20 + 88);

    v136 = OUTLINED_FUNCTION_148();
    v137(v136, v132, v135);
    sub_269854894();
    swift_allocObject();
    *(v20 + 392) = OUTLINED_FUNCTION_24_9();
    v139 = *(v134 + 8);
    v138 = (v134 + 8);
    v139(v132, v135);
    v140 = OUTLINED_FUNCTION_7_16();
    v22(v140);
    v141 = sub_2698548B4();
    v142 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_5(v142))
    {
      v143 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v143);
      OUTLINED_FUNCTION_11_19();
      _os_log_impl(v144, v145, v146, v147, v138, 2u);
      OUTLINED_FUNCTION_12_1();
    }

    v148 = *(v20 + 168);
    v149 = *(v20 + 120);
    v150 = *(v20 + 48);

    (v31)(v148, v149);
    __swift_project_boxed_opaque_existential_1((v150 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver), *(v150 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_contentResolver + 24));
    v151 = swift_task_alloc();
    *(v20 + 400) = v151;
    *v151 = v20;
    OUTLINED_FUNCTION_123(v151);
    OUTLINED_FUNCTION_84();

    return sub_2697BB34C();
  }
}

uint64_t sub_269774978()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v0, v1);

  v2 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_269774A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = *(v20 + 264);
  type metadata accessor for PlayVideoContentResolutionResult();
  v22 = OUTLINED_FUNCTION_11_16();
  v32 = static ContentResolutionResult.success(with:)(v22);

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_9_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, v32, a18, a19, a20);
}

uint64_t sub_269774B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v49 = v21;
  v22 = *v20;
  v23 = *v20;
  OUTLINED_FUNCTION_1_6();
  *v24 = v23;

  OUTLINED_FUNCTION_74_0();
  v41 = *(v22 + 160);
  OUTLINED_FUNCTION_74_0();
  v42 = *(v25 + 152);
  OUTLINED_FUNCTION_74_0();
  v43 = *(v26 + 144);
  OUTLINED_FUNCTION_74_0();
  v44 = *(v27 + 136);
  OUTLINED_FUNCTION_74_0();
  v45 = *(v28 + 112);
  OUTLINED_FUNCTION_74_0();
  v46 = *(v29 + 104);
  OUTLINED_FUNCTION_74_0();
  v47 = *(v30 + 96);
  OUTLINED_FUNCTION_74_0();
  v48 = *(v31 + 72);
  OUTLINED_FUNCTION_74_0();

  OUTLINED_FUNCTION_84();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, a18, a19, a20);
}

uint64_t sub_269774DD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_6();
  v7 = v6;
  OUTLINED_FUNCTION_6_13();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_1_6();
  *v10 = v9;
  v7[43] = v2;

  if (!v2)
  {
    v7[44] = a2;
    v7[45] = a1;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_269774EF4()
{
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService), *(v5 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService + 24));
  sub_2697B2608(v1);
  v0[46] = *(v5 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
  v7 = OUTLINED_FUNCTION_146(v6);
  v0[47] = v7;
  *(v7 + 16) = xmmword_269857710;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  v0[48] = sub_26977DD18(v4, &selRef_channelIds);

  return MEMORY[0x2822009F8](sub_269774FDC);
}

uint64_t sub_269774FDC()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v0, v1);

  v2 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_269775068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = *(v20 + 360);
  v22 = *(v20 + 304);
  type metadata accessor for PlayVideoContentResolutionResult();
  v23 = v21;
  v33 = static ContentResolutionResult.success(with:)(v23);

  sub_269778C38();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_9_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, v33, a18, a19, a20);
}

uint64_t sub_269775198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  v31 = v28[43];
  v32 = v28[30];
  v33 = v28[29];
  v34 = v28[22];
  v35 = v28[15];
  sub_269778C38();

  v32(v34, v33, v35);

  v36 = v31;
  v37 = sub_2698548B4();
  LOBYTE(v33) = sub_269854F24();

  if (os_log_type_enabled(v37, v33))
  {
    v38 = v28[43];
    v40 = v28[39];
    v39 = v28[40];
    a15 = v28[22];
    v66 = v28[32];
    v41 = v28[15];
    v42 = swift_slowAlloc();
    a17 = swift_slowAlloc();
    *v42 = 136315394;
    v43 = sub_26974F520(v40, v39, &a17);

    *(v42 + 4) = v43;
    *(v42 + 12) = 2080;
    v28[4] = v38;
    v44 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v45 = sub_269854AE4();
    v47 = sub_26974F520(v45, v46, &a17);

    *(v42 + 14) = v47;
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v48, v49, v50, v51, v52, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_31_6();

    v66(a15, v41);
  }

  else
  {
    v53 = v28[32];

    v54 = OUTLINED_FUNCTION_34_0();
    v53(v54);
  }

  v55 = v28[43];
  v56 = v28[38];
  type metadata accessor for PlayVideoContentResolutionResult();
  v67 = static PlayVideoContentResolutionResult.unsupported(forReason:)(1);

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, v67, a17, a18, a19, a20);
}

uint64_t sub_269775478()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v3 = v2;
  *v3 = *v1;
  v2[51] = v4;
  v2[52] = v5;
  v2[53] = v0;

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_269775580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  (*(v28 + 240))(*(v28 + 160), *(v28 + 232), *(v28 + 120));

  v31 = sub_2698548B4();
  v32 = sub_269854F44();
  if (OUTLINED_FUNCTION_19_5(v32))
  {
    v33 = OUTLINED_FUNCTION_27_2();
    *v33 = 134217984;
    *(v33 + 4) = sub_26975004C();

    OUTLINED_FUNCTION_11_19();
    _os_log_impl(v34, v35, v36, v37, v33, 0xCu);
    OUTLINED_FUNCTION_12_1();
  }

  else
  {
  }

  v38 = *(v28 + 304);
  v40 = *(v28 + 232);
  v39 = *(v28 + 240);
  v41 = *(v28 + 152);
  v42 = *(v28 + 120);
  v43 = *(v28 + 48);
  v105 = *(v28 + 248);
  v107 = *(v28 + 128) + 8;
  (*(v28 + 256))(*(v28 + 160), v42);

  sub_26977AAB0();
  v45 = v44;

  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService), *(v43 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_analyticsService + 24));
  sub_26975004C();
  v108 = v45;
  v46 = sub_26975004C();
  sub_2697B1F68();
  v39(v41, v40, v42);
  v47 = v38;
  v48 = sub_2698548B4();
  sub_269854F44();

  if (OUTLINED_FUNCTION_168())
  {
    v49 = *(v28 + 304);
    v50 = *(v28 + 256);
    v105 = *(v28 + 152);
    v51 = *(v28 + 120);
    OUTLINED_FUNCTION_27_2();
    v52 = OUTLINED_FUNCTION_40_2();
    a17 = v52;
    *v42 = 136315138;
    v53 = sub_26974FAB0(v49, &selRef_name);
    if (v54)
    {
      v55 = v54;
    }

    else
    {
      v53 = 0x6372616573206F6ELL;
      v55 = 0xEE006D7265742068;
    }

    v56 = sub_26974F520(v53, v55, &a17);

    *(v42 + 4) = v56;
    OUTLINED_FUNCTION_87_0();
    _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_68_3();

    v62 = v105;
  }

  else
  {
    v50 = *(v28 + 256);
    v63 = *(v28 + 152);
    v51 = *(v28 + 120);

    v62 = v63;
  }

  v50(v62, v51);
  if (v46 >= 2)
  {
    v70 = *(v28 + 304);
    v71 = *(v28 + 48);

    v72 = [v70 itemLimit];
    v73 = sub_2696D18D0(v72, v108);
    *(v28 + 432) = v73;

    *(v28 + 440) = *(v71 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);

    isUniquelyReferenced_nonNull_native = sub_269771B1C(5, v73);
    v75 = v74;
    v77 = v76;
    v79 = v78 >> 1;
    v80 = MEMORY[0x277D84F90];
    v81 = v76;
LABEL_16:
    *(v28 + 448) = v80;
    for (i = v81; v79 != i; ++i)
    {
      if (v81 < v77 || i >= v79)
      {
        __break(1u);
        goto LABEL_37;
      }

      v84 = *(v75 + 8 * i);
      v85 = [v84 umcId];
      if (v85)
      {
        v86 = v85;
        v87 = sub_269854A94();
        v106 = v88;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          v80 = isUniquelyReferenced_nonNull_native;
        }

        v89 = *(v80 + 16);
        v90 = v89 + 1;
        v91 = v87;
        if (v89 >= *(v80 + 24) >> 1)
        {
          sub_26977BCE4();
          v90 = v89 + 1;
          v80 = isUniquelyReferenced_nonNull_native;
        }

        v81 = i + 1;
        *(v80 + 16) = v90;
        v92 = v80 + 16 * v89;
        *(v92 + 32) = v91;
        *(v92 + 40) = v106;
        goto LABEL_16;
      }
    }

    v93 = *(v28 + 40);
    swift_unknownObjectRelease();
    *(v28 + 456) = sub_26977DD18(v93, &selRef_channelIds);
    goto LABEL_31;
  }

  if (v46 == 1)
  {
    isUniquelyReferenced_nonNull_native = sub_269771DC0(v108);
    *(v28 + 464) = isUniquelyReferenced_nonNull_native;
    if (isUniquelyReferenced_nonNull_native)
    {
      isUniquelyReferenced_nonNull_native = sub_26974FAB0(isUniquelyReferenced_nonNull_native, &selRef_umcId);
      if (v65)
      {
        OUTLINED_FUNCTION_68_1();
        v67 = *(v28 + 40);
        v66 = *(v28 + 48);

        *(v28 + 472) = *(v66 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
        v69 = OUTLINED_FUNCTION_146(v68);
        *(v28 + 480) = v69;
        *(v69 + 16) = xmmword_269857710;
        *(v69 + 32) = v48;
        *(v69 + 40) = 1;
        *(v28 + 488) = sub_26977DD18(v67, &selRef_channelIds);
        OUTLINED_FUNCTION_126();
LABEL_31:
        OUTLINED_FUNCTION_84();

        return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native);
      }
    }

    else
    {
LABEL_37:
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native);
  }

  v95 = *(v28 + 304);

  type metadata accessor for PlayVideoContentResolutionResult();
  v109 = static PlayVideoContentResolutionResult.unsupported(forReason:)(1);
  sub_269778C38();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v98(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, v105, v107, v109, a17, a18, a19, a20);
}

uint64_t sub_269775B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_85();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_103();
  a26 = v28;
  v31 = *(v28 + 424);
  sub_269778C38();

  *(v28 + 16) = v31;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  v33 = swift_dynamicCast();
  v34 = *(v28 + 424);
  if (v33)
  {
    v35 = *(v28 + 496) == 3;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    v55 = *(v28 + 304);

    type metadata accessor for PlayVideoContentResolutionResult();
    v71 = static PlayVideoContentResolutionResult.unsupported(forReason:)(5);
  }

  else
  {
    v37 = *(v28 + 240);
    v36 = *(v28 + 248);
    v38 = *(v28 + 232);
    v39 = *(v28 + 136);
    v40 = *(v28 + 120);

    v37(v39, v38, v40);
    v41 = v34;
    v42 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_168())
    {
      v43 = *(v28 + 424);
      a15 = *(v28 + 136);
      v70 = *(v28 + 256);
      v44 = *(v28 + 120);
      OUTLINED_FUNCTION_27_2();
      v45 = OUTLINED_FUNCTION_40_2();
      a17 = v45;
      *v36 = 136315138;
      *(v28 + 24) = v43;
      v46 = v43;
      v47 = sub_269854AE4();
      v49 = sub_26974F520(v47, v48, &a17);

      *(v36 + 4) = v49;
      OUTLINED_FUNCTION_87_0();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_68_3();

      v70(a15, v44);
    }

    else
    {
      v56 = *(v28 + 256);

      v57 = OUTLINED_FUNCTION_22_3();
      v56(v57);
    }

    v58 = *(v28 + 424);
    v59 = *(v28 + 304);
    type metadata accessor for PlayVideoContentResolutionResult();
    v60 = OUTLINED_FUNCTION_38_5();
    v71 = static PlayVideoContentResolutionResult.unsupported(forReason:)(v60);
  }

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_33_8();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v63(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, v71, a17, a18, a19, a20);
}

uint64_t sub_269775E7C()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v0, v1);

  v2 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v2);
}

void sub_269775F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v24 = v20[54];
  v25 = v20[5];
  OUTLINED_FUNCTION_108(v20[6]);
  v26 = OUTLINED_FUNCTION_22_3();
  v28 = sub_26975EE38(v26, v27);
  v29 = v20[54];
  if (v28)
  {
    a16 = v28;
    sub_26975004C();
    OUTLINED_FUNCTION_134();
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v24 == v21)
      {
        v42 = v20[38];
        v43 = v20[9];
        v45 = v20[6];
        v44 = v20[7];
        v46 = v20[5];

        sub_26977DC54(v57, v46);
        __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder), *(v45 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder + 24));
        OUTLINED_FUNCTION_141();
        sub_2697F99B8();
        OUTLINED_FUNCTION_12_24();
        sub_26977E088(v43, v47);
        sub_269851D24();
        v48 = sub_269851D34();
        __swift_storeEnumTagSinglePayload(v44, 0, 1, v48);
        sub_2697B8B5C(v44);
        type metadata accessor for PlayVideoContentResolutionResult();
        v58 = static ContentResolutionResult.disambiguation(with:)(a16);
        goto LABEL_18;
      }

      if (v22)
      {
        v30 = MEMORY[0x26D646120](v21, v20[54]);
      }

      else
      {
        if (v21 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v30 = *(v25 + 8 * v21);
      }

      v31 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v32 = v30;
      v33 = [v32 umcId];
      if (v33)
      {
        v34 = v33;
        v35 = sub_269854A94();
        a15 = v36;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          v57 = v40;
        }

        v38 = *(v57 + 16);
        v37 = *(v57 + 24);
        if (v38 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_85_2(v37);
          sub_26977BCE4();
          v57 = v41;
        }

        *(v57 + 16) = v38 + 1;
        v39 = v57 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = a15;
        v21 = v31;
      }

      else
      {

        ++v21;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v42 = v20[38];
    type metadata accessor for PlayVideoContentResolutionResult();
    v58 = static ContentResolutionResult.disambiguation(with:)(v29);
LABEL_18:

    sub_269778C38();

    OUTLINED_FUNCTION_2_23();
    OUTLINED_FUNCTION_9_21();

    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_84();

    v51(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, v58, a18, a19, a20);
  }
}

uint64_t sub_26977621C()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v0, v1);

  v2 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2697762A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_103();
  v21 = *(v20 + 464);
  v22 = *(v20 + 304);
  type metadata accessor for PlayVideoContentResolutionResult();
  v23 = OUTLINED_FUNCTION_11_16();
  v33 = static ContentResolutionResult.success(with:)(v23);

  sub_269778C38();

  OUTLINED_FUNCTION_2_23();
  OUTLINED_FUNCTION_9_21();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_84();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, v33, a18, a19, a20);
}

uint64_t sub_2697763EC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2697764B0;

  return PlayVideoIntentHandler.resolveContent(for:)();
}

uint64_t sub_2697764B0()
{
  OUTLINED_FUNCTION_8_5();
  v2 = v1;
  OUTLINED_FUNCTION_14_6();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_50_0();
  v10(v9);
  _Block_release(v4);

  v11 = *(v7 + 8);

  return v11();
}

uint64_t PlayVideoIntentHandler.confirm(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1 = sub_2698548D4();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_12(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_4_7();
  v3 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2697766A0()
{
  OUTLINED_FUNCTION_8_5();
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  __swift_project_value_buffer(*(v0 + 16), qword_28033D928);
  v1 = OUTLINED_FUNCTION_2_8();
  v2(v1);
  v3 = sub_2698548B4();
  v4 = sub_269854F04();
  if (OUTLINED_FUNCTION_19_5(v4))
  {
    v5 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v5);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v6, v7, "Confirm step: success");
    OUTLINED_FUNCTION_18_7();
  }

  v8 = OUTLINED_FUNCTION_22_3();
  v9(v8);
  objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
  PlayVideoIntentResponse.init(code:userActivity:)(1, 0);
  OUTLINED_FUNCTION_11_16();

  v10 = OUTLINED_FUNCTION_8_23();

  return v11(v10);
}

uint64_t sub_2697767D8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26977E464;

  return PlayVideoIntentHandler.confirm(intent:)();
}

uint64_t PlayVideoIntentHandler.handle(intent:)()
{
  OUTLINED_FUNCTION_2_7();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_269851C74();
  v1[14] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_37_0();
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for SignalRecordingContext(0);
  v1[18] = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v1[19] = OUTLINED_FUNCTION_4_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0);
  OUTLINED_FUNCTION_8_9(v6);
  v1[20] = OUTLINED_FUNCTION_37_0();
  v1[21] = swift_task_alloc();
  v7 = sub_269854824();
  v1[22] = v7;
  OUTLINED_FUNCTION_5_12(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_37_0();
  v1[25] = swift_task_alloc();
  v9 = sub_2698548D4();
  v1[26] = v9;
  OUTLINED_FUNCTION_5_12(v9);
  v1[27] = v10;
  v1[28] = OUTLINED_FUNCTION_37_0();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_269776AE8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_150();
  a32 = v34;
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v37 = *(v34 + 336);
  v38 = *(v34 + 208);
  v39 = *(v34 + 216);
  v40 = __swift_project_value_buffer(v38, qword_28033D928);
  *(v34 + 344) = v40;
  v41 = *(v39 + 16);
  *(v34 + 352) = v41;
  *(v34 + 360) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v41(v37, v40, v38);
  v42 = sub_2698548B4();
  v43 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v43))
  {
    v44 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v44);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v45, v46, "Handle step");
    OUTLINED_FUNCTION_18_7();
  }

  v47 = *(v34 + 216);
  v48 = *(v34 + 96);

  *(v34 + 368) = *(v47 + 8);
  v49 = OUTLINED_FUNCTION_22_3();
  v140 = v50;
  (v50)(v49);
  v51 = [v48 content];
  *(v34 + 376) = v51;
  if (v51)
  {
    v52 = v51;
    v53 = sub_26974FAB0(v51, &selRef_name);
    if (v54)
    {
      v55 = v53;
      v56 = v54;
      v57 = sub_26974FAB0(v52, &selRef_umcId);
      *(v34 + 384) = v57;
      *(v34 + 392) = v58;
      if (v58)
      {
        v138 = v57;
        v139 = v58;
        v59 = [*(v34 + 96) isRemoteExecution];
        *(v34 + 400) = sub_269694CBC();
        v60 = sub_269855034();
        v61 = v60;
        if (v59)
        {
          OUTLINED_FUNCTION_22_3();
          v62 = sub_269855064();

          if (v62)
          {
            OUTLINED_FUNCTION_108(*(v34 + 104));
            sub_2697B85E4();
          }
        }

        else
        {
        }

        v41(*(v34 + 328), v40, *(v34 + 208));

        v88 = v139;

        v89 = sub_2698548B4();
        v90 = sub_269854F04();

        v91 = os_log_type_enabled(v89, v90);
        v92 = *(v34 + 328);
        v135 = *(v34 + 208);
        if (v91)
        {
          v133 = *(v34 + 328);
          v93 = swift_slowAlloc();
          a23 = swift_slowAlloc();
          *v93 = 136315394;
          v94 = sub_26974F520(v55, v56, &a23);

          *(v93 + 4) = v94;
          *(v93 + 12) = 2080;
          *(v93 + 14) = sub_26974F520(v138, v139, &a23);
          v88 = v89;
          _os_log_impl(&dword_269684000, v89, v90, "Handling content, title: '%s', umcId: %s)", v93, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_10();
          OUTLINED_FUNCTION_4_16();

          v95 = v133;
        }

        else
        {

          v95 = v92;
        }

        v140(v95, v135);
        if (qword_280322710 != -1)
        {
          OUTLINED_FUNCTION_2_18(&qword_280322710);
        }

        v96 = sub_269854854();
        __swift_project_value_buffer(v96, qword_28033D958);
        sub_269854814();
        v97 = sub_269854844();
        v98 = sub_269854FF4();
        if (sub_269855074())
        {
          v99 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_30_2(v99);
          v100 = sub_269854804();
          _os_signpost_emit_with_name_impl(&dword_269684000, v97, v98, v100, "PlayableWaitTime", "enableTelemetry=YES", v88, 2u);
          OUTLINED_FUNCTION_18_7();
        }

        v101 = *(v34 + 320);
        v102 = *(v34 + 200);
        v103 = *(v34 + 176);
        v134 = *(v34 + 208);
        v136 = *(v34 + 96);

        v104 = OUTLINED_FUNCTION_148();
        v105(v104, v102, v103);
        sub_269854894();
        swift_allocObject();
        *(v34 + 408) = OUTLINED_FUNCTION_24_9();
        v106 = OUTLINED_FUNCTION_128();
        v107(v106);
        v41(v101, v40, v134);
        v108 = v136;
        v109 = sub_2698548B4();
        sub_269854F14();

        v110 = OUTLINED_FUNCTION_168();
        v111 = *(v34 + 320);
        v112 = *(v34 + 208);
        if (v110)
        {
          v113 = *(v34 + 96);
          OUTLINED_FUNCTION_27_2();
          v137 = v111;
          v114 = OUTLINED_FUNCTION_40_2();
          a23 = v114;
          *v103 = 136315138;
          v115 = sub_26977DD18(v113, &selRef_channelIds);
          if (v115)
          {
            v116 = v115;
          }

          else
          {
            v116 = &unk_287A39D08;
          }

          v117 = MEMORY[0x26D645BC0](v116, MEMORY[0x277D837D0]);
          v119 = v118;

          v120 = sub_26974F520(v117, v119, &a23);

          *(v103 + 4) = v120;
          OUTLINED_FUNCTION_87_0();
          _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          OUTLINED_FUNCTION_4_16();
          OUTLINED_FUNCTION_68_3();

          v126 = v137;
        }

        else
        {

          v126 = v111;
        }

        v140(v126, v112);
        v127 = *(v34 + 104);
        v128 = sub_26977DD18(*(v34 + 96), &selRef_channelIds);
        if (v128)
        {
          v129 = v128;
        }

        else
        {
          v129 = MEMORY[0x277D84F90];
        }

        *(v34 + 416) = *(v127 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        if (*(v129 + 16))
        {
          v130 = *(v129 + 40);
        }

        else
        {
          v130 = 0;
        }

        *(v34 + 424) = v130;

        v131 = swift_task_alloc();
        *(v34 + 432) = v131;
        *v131 = v34;
        v131[1] = sub_26977739C;
        OUTLINED_FUNCTION_69_3();

        return sub_2697C0978();
      }
    }

    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    OUTLINED_FUNCTION_33_0(*(v34 + 208), qword_281571B38);
    v71 = OUTLINED_FUNCTION_12_11();
    (v41)(v71);
    v72 = sub_2698548B4();
    v73 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v73))
    {
      v74 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v74);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v75, v76, "Missing requried information in handle step");
      OUTLINED_FUNCTION_18_7();
    }

    v77 = OUTLINED_FUNCTION_22_3();
    (v140)(v77);
    v78 = objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
    v141 = OUTLINED_FUNCTION_144();
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    OUTLINED_FUNCTION_33_0(*(v34 + 208), qword_281571B38);
    v63 = OUTLINED_FUNCTION_12_11();
    (v41)(v63);
    v64 = sub_2698548B4();
    v65 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v65))
    {
      v66 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v66);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v67, v68, "Missing content in handle step");
      OUTLINED_FUNCTION_18_7();
    }

    v69 = OUTLINED_FUNCTION_22_3();
    (v140)(v69);
    v70 = objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
    v141 = OUTLINED_FUNCTION_144();
  }

  sub_2697C2F08();

  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_15_17();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_69_3();

  return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, log, a17, a18, a19, a20, a21, v141, a23, a24, a25, a26);
}

uint64_t sub_26977739C()
{
  OUTLINED_FUNCTION_8_5();
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 440) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697774D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t, uint64_t, uint64_t), void (*a21)(uint64_t, uint64_t), uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  a33 = v36;
  a34 = v37;
  OUTLINED_FUNCTION_150();
  a32 = v34;
  (*(v34 + 352))(*(v34 + 312), *(v34 + 344), *(v34 + 208));
  v38 = OUTLINED_FUNCTION_22_3();
  sub_26977E0E0(v38, v39);
  v40 = sub_2698548B4();
  v41 = sub_269854F14();
  v42 = os_log_type_enabled(v40, v41);
  v43 = *(v34 + 368);
  v44 = *(v34 + 312);
  v45 = *(v34 + 208);
  v46 = *(v34 + 160);
  if (v42)
  {
    OUTLINED_FUNCTION_27_2();
    v35 = OUTLINED_FUNCTION_16_8();
    a23 = v35;
    *v44 = 136315138;
    _s8PlayableVMa(0);
    a21 = v43;
    sub_26977E150(&qword_280322EB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v47 = sub_269855544();
    v49 = v48;
    sub_26969B0C0(v46, &unk_280324210, &qword_26985F1D0);
    v50 = sub_26974F520(v47, v49, &a23);

    *(v44 + 4) = v50;
    _os_log_impl(&dword_269684000, v40, v41, "Setting punchout URL on PlayVideo response from Playable response: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();

    a21(v44, v45);
  }

  else
  {

    sub_26969B0C0(v46, &unk_280324210, &qword_26985F1D0);
    v43(v44, v45);
  }

  v51 = type metadata accessor for PlayVideoIntentResponse();
  v52 = objc_allocWithZone(v51);
  v53 = OUTLINED_FUNCTION_38_5();
  v54 = PlayVideoIntentResponse.init(code:userActivity:)(v53, 0);
  _s8PlayableVMa(0);
  v55 = v54;
  v56 = sub_269851C24();
  [v55 setUrlToLaunch_];

  v57 = sub_269854D24();
  [v55 setIsEntitled_];

  sub_2697CF838();
  if (v58)
  {
    v59 = sub_269854A64();
  }

  else
  {
    v59 = 0;
  }

  v60 = *(v34 + 376);
  [v55 setAppBundleIdentifier_];

  v61 = [v60 appDisambiguation];
  v62 = sub_269855034();
  v63 = v62;
  if (!v61)
  {

LABEL_13:
    v68 = *(v34 + 168);
    goto LABEL_14;
  }

  v64 = sub_269855064();

  if ((v64 & 1) == 0)
  {
    goto LABEL_13;
  }

  v65 = [v55 appBundleIdentifier];
  if (!v65)
  {
    goto LABEL_13;
  }

  v66 = *(v34 + 96);

  v67 = sub_26977DD18(v66, &selRef_allUmcIds);
  v68 = *(v34 + 168);
  if (v67)
  {
    v44 = *(v34 + 144);
    v69 = *(v34 + 152);
    OUTLINED_FUNCTION_108(*(v34 + 104));
    OUTLINED_FUNCTION_141();
    sub_2697F9BE8();
    OUTLINED_FUNCTION_12_24();
    sub_26977E088(v69, v70);
  }

LABEL_14:
  sub_26969B0C0(v68, &unk_280324210, &qword_26985F1D0);
  *(v34 + 448) = v55;
  v71 = [v55 urlToLaunch];
  if (v71)
  {
    v72 = v71;
    sub_269851C44();

    v73 = sub_269851BF4();
    v75 = OUTLINED_FUNCTION_92_1(v73, v74);
    LOBYTE(v72) = OUTLINED_FUNCTION_163(v75, MEMORY[0x277D837D0], v76, v75);

    if (v72)
    {
      OUTLINED_FUNCTION_108(*(v34 + 104));
      OUTLINED_FUNCTION_101_1();
      if (!*(v34 + 40))
      {
        v103 = *(v34 + 352);
        v104 = *(v34 + 344);
        v105 = *(v34 + 304);
        v106 = *(v34 + 208);
        sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
        v103(v105, v104, v106);
        v107 = sub_2698548B4();
        v108 = sub_269854F24();
        if (OUTLINED_FUNCTION_55_2(v108))
        {
          v109 = OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_64_1(v109);
          OUTLINED_FUNCTION_49_5();
          _os_log_impl(v110, v111, v112, v113, v114, 2u);
          OUTLINED_FUNCTION_31_6();
        }

        v115 = *(v34 + 368);
        a20 = *(v34 + 352);
        a21 = *(v34 + 360);
        v117 = *(v34 + 296);
        v116 = *(v34 + 304);
        v118 = *(v34 + 208);
        a18 = *(v34 + 136);
        a19 = *(v34 + 344);
        v119 = *(v34 + 120);
        a17 = *(v34 + 112);

        v115(v116, v118);
        v120 = objc_allocWithZone(v51);
        v138 = PlayVideoIntentResponse.init(code:userActivity:)(100, 0);
        (*(v119 + 8))(a18, a17);
        a20(v117, a19, v118);
        v121 = v55;
        v122 = sub_2698548B4();
        v123 = sub_269854F14();

        if (os_log_type_enabled(v122, v123))
        {
          OUTLINED_FUNCTION_27_2();
          v124 = OUTLINED_FUNCTION_25_7();
          OUTLINED_FUNCTION_143(v124, 5.7779e-34);
          OUTLINED_FUNCTION_104_0(&dword_269684000, v125, v126, "Final intent response: %@");
          sub_26969B0C0(v124, &qword_280324D50, &qword_26985D530);
          OUTLINED_FUNCTION_31_6();
          OUTLINED_FUNCTION_12_1();
        }

        v128 = *(v34 + 368);
        v127 = *(v34 + 376);

        v129 = OUTLINED_FUNCTION_44_0();
        v128(v129);

        sub_269778C38();

        sub_2697C2F08();

        goto LABEL_36;
      }

      v77 = OUTLINED_FUNCTION_73_0();
      v78(v77);
      sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
    }

    else
    {
      v79 = OUTLINED_FUNCTION_73_0();
      v80(v79);
    }
  }

  __swift_project_boxed_opaque_existential_1((*(v34 + 104) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState), *(*(v34 + 104) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState + 24));
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D04())
  {
    v81 = OUTLINED_FUNCTION_122_0();
    v82(v81);
    v83 = sub_2698548B4();
    v84 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v84))
    {
      v85 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v85);
      OUTLINED_FUNCTION_97_1(&dword_269684000, v86, v84, "Attempting to play video content while in CarPlay");
      OUTLINED_FUNCTION_12_1();
    }

    v87 = *(v34 + 368);

    v88 = OUTLINED_FUNCTION_34_0();
    v87(v88);
    *(v34 + 456) = [v55 isEntitled];
    v89 = [v55 appBundleIdentifier];
    if (v89)
    {
      v90 = v89;
      sub_269854A94();
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    *(v34 + 464) = v92;
    v100 = swift_task_alloc();
    *(v34 + 472) = v100;
    *v100 = v34;
    OUTLINED_FUNCTION_47_3(v100);
    OUTLINED_FUNCTION_69_3();

    return sub_26977B044();
  }

  v93 = OUTLINED_FUNCTION_116_1();
  v94(v93);
  v95 = v55;
  sub_2698548B4();
  sub_269854F14();

  if (OUTLINED_FUNCTION_169())
  {
    OUTLINED_FUNCTION_27_2();
    v96 = OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_115_1(v96, 5.7779e-34);
    OUTLINED_FUNCTION_70_2(&dword_269684000, v97, v98, "Final intent response: %@");
    sub_26969B0C0(v96, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_106_1();
  v99 = OUTLINED_FUNCTION_34_0();
  (v35)(v99);
  sub_269778C38();

  sub_2697C2F08();

  v138 = *(v34 + 448);
LABEL_36:
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_15_17();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_69_3();

  return v132(v130, v131, v132, v133, v134, v135, v136, v137, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v138, a23, a24, a25, a26);
}

uint64_t sub_269777DB0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  v4 = *(v3 + 456);
  v5 = *v0;
  OUTLINED_FUNCTION_1_6();
  *v6 = v5;
  *(v8 + 480) = v7;

  v9 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_269777ECC()
{
  v1 = v0[60];
  v2 = v0[56];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  v6 = v0[26];
  if (v1 == 4)
  {
    v7 = OUTLINED_FUNCTION_7_16();
    v4(v7);
    v8 = v2;
    sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_27_2();
      v9 = OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_115_1(v9, 5.7779e-34);
      OUTLINED_FUNCTION_70_2(&dword_269684000, v10, v11, "Final intent response: %@");
      sub_26969B0C0(v9, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_18_7();
    }

    OUTLINED_FUNCTION_106_1();
    v12 = OUTLINED_FUNCTION_34_0();
    v4(v12);
    sub_269778C38();

    sub_2697C2F08();

    v26 = v0[56];
  }

  else
  {
    v13 = v0[35];
    v14 = objc_allocWithZone(type metadata accessor for PlayVideoIntentResponse());
    v26 = PlayVideoIntentResponse.init(code:userActivity:)(v1, 0);
    (v4)(v13, v5, v6);
    v15 = v2;
    v16 = sub_2698548B4();
    sub_269854F14();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_27_2();
      v17 = OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_115_1(v17, 5.7779e-34);
      OUTLINED_FUNCTION_70_2(&dword_269684000, v18, v19, "Final intent response: %@");
      sub_26969B0C0(v17, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_12_1();
      OUTLINED_FUNCTION_18_7();
    }

    v20 = v0[56];
    v22 = v0[46];
    v21 = v0[47];

    v23 = OUTLINED_FUNCTION_34_0();
    v22(v23);

    sub_269778C38();

    sub_2697C2F08();
  }

  OUTLINED_FUNCTION_80_0();

  OUTLINED_FUNCTION_28_2();

  return v24(v26);
}

uint64_t sub_26977821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void (*a19)(uint64_t, uint64_t, uint64_t), uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  a33 = v35;
  a34 = v36;
  OUTLINED_FUNCTION_150();
  a32 = v34;
  v37 = *(v34 + 440);
  v38 = *(v34 + 352);
  v39 = *(v34 + 344);
  v40 = *(v34 + 248);
  v41 = *(v34 + 208);
  v170 = type metadata accessor for PlayVideoIntentResponse();
  v42 = objc_allocWithZone(v170);
  v43 = OUTLINED_FUNCTION_38_5();
  v44 = PlayVideoIntentResponse.init(code:userActivity:)(v43, 0);
  v38(v40, v39, v41);

  v45 = v37;
  v46 = sub_2698548B4();
  sub_269854F24();

  if (OUTLINED_FUNCTION_168())
  {
    v47 = v44;
    v48 = *(v34 + 440);
    a20 = *(v34 + 248);
    a21 = *(v34 + 368);
    a19 = *(v34 + 208);
    v49 = swift_slowAlloc();
    a23 = swift_slowAlloc();
    *v49 = 136315394;
    v50 = OUTLINED_FUNCTION_22_3();
    v53 = sub_26974F520(v50, v51, v52);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    *(v34 + 88) = v48;
    v54 = v48;
    v44 = v47;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v56 = sub_269854AE4();
    v58 = sub_26974F520(v56, v57, &a23);

    *(v49 + 14) = v58;
    OUTLINED_FUNCTION_87_0();
    _os_log_impl(v59, v60, v61, v62, v63, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_68_3();

    (a21)(a20, a19);
  }

  else
  {
    v64 = *(v34 + 368);

    v65 = OUTLINED_FUNCTION_34_0();
    v64(v65);
  }

  v66 = [*(v34 + 376) detailsUrl];
  v67 = *(v34 + 352);
  v68 = *(v34 + 208);
  if (!v66)
  {
    a21 = v44;
    v82 = OUTLINED_FUNCTION_50_0();
    v67(v82);
    v83 = sub_2698548B4();
    v84 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v84))
    {
      v85 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_16_6(v85);
      OUTLINED_FUNCTION_111_0(&dword_269684000, v86, v68, "Details URL missing for fallback");
      OUTLINED_FUNCTION_4_16();
    }

    v87 = *(v34 + 440);
    v88 = *(v34 + 368);
    a20 = *(v34 + 360);
    v89 = *(v34 + 344);
    v90 = *(v34 + 352);
    v92 = *(v34 + 224);
    v91 = *(v34 + 232);
    v93 = *(v34 + 208);

    v88(v91, v93);
    v94 = objc_allocWithZone(v170);
    v171 = OUTLINED_FUNCTION_144();

    v90(v92, v89, v93);
    v95 = a21;
    v96 = sub_2698548B4();
    LOBYTE(v89) = sub_269854F14();

    if (os_log_type_enabled(v96, v89))
    {
      OUTLINED_FUNCTION_27_2();
      v97 = OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_143(v97, 5.7779e-34);
      OUTLINED_FUNCTION_104_0(&dword_269684000, v98, v99, "Final intent response: %@");
      sub_26969B0C0(v97, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_31_6();
      OUTLINED_FUNCTION_12_1();
    }

    v101 = *(v34 + 368);
    v100 = *(v34 + 376);
    goto LABEL_14;
  }

  v69 = v66;
  sub_269851C44();

  v70 = OUTLINED_FUNCTION_50_0();
  v67(v70);
  v71 = sub_2698548B4();
  v72 = sub_269854F14();
  if (OUTLINED_FUNCTION_55_2(v72))
  {
    v73 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v73);
    OUTLINED_FUNCTION_111_0(&dword_269684000, v74, v68, "Falling back to using detailsUrl for punchout");
    OUTLINED_FUNCTION_4_16();
  }

  v75 = *(v34 + 368);
  v76 = *(v34 + 216);

  v77 = OUTLINED_FUNCTION_34_0();
  v75(v77);
  v78 = sub_269851C24();
  [v44 setUrlToLaunch_];

  v79 = sub_269855034();
  [v44 setIsEntitled_];

  sub_2697CF838();
  if (v80)
  {
    v81 = sub_269854A64();
  }

  else
  {
    v81 = 0;
  }

  v103 = *(v34 + 440);
  [v44 setAppBundleIdentifier_];

  v104 = OUTLINED_FUNCTION_34_0();
  v105(v104);
  *(v34 + 448) = v44;
  v106 = [v44 urlToLaunch];
  if (!v106)
  {
    goto LABEL_21;
  }

  v107 = v106;
  sub_269851C44();

  v108 = sub_269851BF4();
  v110 = OUTLINED_FUNCTION_92_1(v108, v109);
  LOBYTE(v107) = OUTLINED_FUNCTION_163(v110, MEMORY[0x277D837D0], v111, v110);

  if ((v107 & 1) == 0)
  {
    v114 = OUTLINED_FUNCTION_73_0();
    v115(v114);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_108(*(v34 + 104));
  OUTLINED_FUNCTION_101_1();
  if (!*(v34 + 40))
  {
    a21 = v44;
    v146 = *(v34 + 352);
    v147 = *(v34 + 344);
    v148 = *(v34 + 304);
    v149 = *(v34 + 208);
    sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
    v146(v148, v147, v149);
    v150 = sub_2698548B4();
    v151 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v151))
    {
      v152 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v152);
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v153, v154, v155, v156, v157, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    v158 = *(v34 + 368);
    a19 = *(v34 + 352);
    a20 = *(v34 + 360);
    a18 = *(v34 + 344);
    v160 = *(v34 + 296);
    v159 = *(v34 + 304);
    v161 = *(v34 + 208);
    v162 = *(v34 + 136);
    v164 = *(v34 + 112);
    v163 = *(v34 + 120);

    v158(v159, v161);
    v165 = objc_allocWithZone(v170);
    v171 = PlayVideoIntentResponse.init(code:userActivity:)(100, 0);
    (*(v163 + 8))(v162, v164);
    a19(v160, a18, v161);
    v95 = a21;
    v96 = sub_2698548B4();
    v166 = sub_269854F14();

    if (os_log_type_enabled(v96, v166))
    {
      OUTLINED_FUNCTION_27_2();
      v167 = OUTLINED_FUNCTION_25_7();
      OUTLINED_FUNCTION_143(v167, 5.7779e-34);
      OUTLINED_FUNCTION_104_0(&dword_269684000, v168, v169, "Final intent response: %@");
      sub_26969B0C0(v167, &qword_280324D50, &qword_26985D530);
      OUTLINED_FUNCTION_31_6();
      OUTLINED_FUNCTION_12_1();
    }

    v101 = *(v34 + 368);
    v100 = *(v34 + 376);
LABEL_14:

    v102 = OUTLINED_FUNCTION_44_0();
    v101(v102);

    sub_269778C38();

    sub_2697C2F08();

    goto LABEL_29;
  }

  v112 = OUTLINED_FUNCTION_73_0();
  v113(v112);
  sub_26969B0C0(v34 + 16, &unk_2803263B0, &unk_26985D0B0);
LABEL_21:
  __swift_project_boxed_opaque_existential_1((*(v34 + 104) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState), *(*(v34 + 104) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_deviceState + 24));
  OUTLINED_FUNCTION_34_0();
  if (sub_269852D04())
  {
    v116 = OUTLINED_FUNCTION_122_0();
    v117(v116);
    v118 = sub_2698548B4();
    v119 = sub_269854F14();
    if (OUTLINED_FUNCTION_19_4(v119))
    {
      v120 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_24(v120);
      OUTLINED_FUNCTION_97_1(&dword_269684000, v121, v119, "Attempting to play video content while in CarPlay");
      OUTLINED_FUNCTION_12_1();
    }

    v122 = *(v34 + 368);

    v123 = OUTLINED_FUNCTION_34_0();
    v122(v123);
    *(v34 + 456) = [v44 isEntitled];
    v124 = [v44 appBundleIdentifier];
    if (v124)
    {
      v125 = v124;
      sub_269854A94();
      v127 = v126;
    }

    else
    {
      v127 = 0;
    }

    *(v34 + 464) = v127;
    v144 = swift_task_alloc();
    *(v34 + 472) = v144;
    *v144 = v34;
    OUTLINED_FUNCTION_47_3(v144);
    OUTLINED_FUNCTION_69_3();

    return sub_26977B044();
  }

  v128 = OUTLINED_FUNCTION_116_1();
  v129(v128);
  v130 = v103;
  sub_2698548B4();
  sub_269854F14();

  if (OUTLINED_FUNCTION_169())
  {
    OUTLINED_FUNCTION_27_2();
    v131 = OUTLINED_FUNCTION_114_1();
    OUTLINED_FUNCTION_115_1(v131, 5.7779e-34);
    OUTLINED_FUNCTION_70_2(&dword_269684000, v132, v133, "Final intent response: %@");
    sub_26969B0C0(v131, &qword_280324D50, &qword_26985D530);
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_18_7();
  }

  OUTLINED_FUNCTION_106_1();
  v134 = OUTLINED_FUNCTION_34_0();
  v76(v134);
  sub_269778C38();

  sub_2697C2F08();

  v171 = *(v34 + 448);
LABEL_29:
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_15_17();

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_69_3();

  return v137(v135, v136, v137, v138, v139, v140, v141, v142, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v171, a23, a24, a25, a26);
}

void sub_269778C38()
{
  OUTLINED_FUNCTION_19_1();
  v23 = v0;
  v2 = v1;
  v3 = sub_269854864();
  OUTLINED_FUNCTION_3_20();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_1();
  v9 = v8 - v7;
  v10 = sub_269854824();
  OUTLINED_FUNCTION_3_20();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  if (qword_280322710 != -1)
  {
    OUTLINED_FUNCTION_2_18(&qword_280322710);
  }

  v17 = sub_269854854();
  __swift_project_value_buffer(v17, qword_28033D958);
  v18 = sub_269854844();
  sub_269854874();
  v19 = sub_269854FE4();
  if (sub_269855074())
  {

    sub_2698548A4();

    if ((*(v5 + 88))(v9, v3) == *MEMORY[0x277D85B00])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v9, v3);
      v20 = "";
    }

    v21 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_64_1(v21);
    v22 = sub_269854804();
    _os_signpost_emit_with_name_impl(&dword_269684000, v18, v19, v22, v23, v20, v2, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_269778E90(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_26977E464;

  return PlayVideoIntentHandler.handle(intent:)();
}

uint64_t sub_269778F54()
{
  OUTLINED_FUNCTION_2_7();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280322D50, &unk_2698583F0);
  OUTLINED_FUNCTION_8_9(v3);
  v1[4] = OUTLINED_FUNCTION_4_7();
  v4 = type metadata accessor for SignalRecordingContext(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_8_9(v4);
  v1[6] = OUTLINED_FUNCTION_4_7();
  v5 = sub_2698548D4();
  v1[7] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_37_0();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26977906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  if (qword_2803226E8 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v15 = *(v14 + 64);
  *(v14 + 104) = OUTLINED_FUNCTION_33_0(*(v14 + 56), qword_28033D928);
  *(v14 + 112) = *(v15 + 16);
  *(v14 + 120) = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = OUTLINED_FUNCTION_12_11();
  v17(v16);
  v18 = sub_2698548B4();
  v19 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_5(v19))
  {
    v20 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_30_2(v20);
    OUTLINED_FUNCTION_31_0(&dword_269684000, v21, v22, "Found suggested content in the intent, attempting to use it");
    OUTLINED_FUNCTION_18_7();
  }

  v23 = *(v14 + 64);
  v24 = *(v14 + 16);

  *(v14 + 128) = *(v23 + 8);
  v25 = OUTLINED_FUNCTION_22_3();
  v26(v25);
  v27 = [v24 isRemoteExecution];
  sub_269694CBC();
  v28 = sub_269855034();
  v29 = v28;
  if (v27)
  {
    OUTLINED_FUNCTION_22_3();
    v30 = sub_269855064();

    if (v30)
    {
      v31 = swift_task_alloc();
      *(v14 + 136) = v31;
      *v31 = v14;
      v31[1] = sub_2697795CC;
      OUTLINED_FUNCTION_116();

      return sub_26977A220();
    }
  }

  else
  {
  }

  v34 = OUTLINED_FUNCTION_20_13(*(v14 + 16), &selRef_suggestedContent);
  *(v14 + 152) = v34;
  if (v34)
  {
    v35 = v34;
    v36 = sub_26975004C();
    if (v36 == 1)
    {
      if (sub_26975004C())
      {
        OUTLINED_FUNCTION_160();
        sub_269750050();
        if ((v35 & 0xC000000000000001) != 0)
        {
          v99 = OUTLINED_FUNCTION_159();
          v37 = MEMORY[0x26D646120](v99);
        }

        else
        {
          v37 = *(v35 + 32);
        }

        v38 = v37;
        *(v14 + 160) = v37;

        v39 = sub_26974FAB0(v38, &selRef_umcId);
        if (v40)
        {
          v41 = v39;
          v42 = v40;
          v43 = *(v14 + 16);
          *(v14 + 168) = *(*(v14 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
          v45 = OUTLINED_FUNCTION_146(v44);
          *(v14 + 176) = v45;
          *(v45 + 16) = xmmword_269857710;
          *(v45 + 32) = v41;
          *(v45 + 40) = v42;
          v46 = sub_26977DD18(v43, &selRef_channelIds);
          OUTLINED_FUNCTION_57_3(v46);
LABEL_35:
          OUTLINED_FUNCTION_116();

          return MEMORY[0x2822009F8](v69);
        }
      }

      else
      {
      }

      v71 = OUTLINED_FUNCTION_125();
      v72(v71);
      v73 = sub_2698548B4();
      v74 = sub_269854F14();
      v75 = OUTLINED_FUNCTION_55_2(v74);
      v76 = *(v14 + 128);
      if (v75)
      {
        v77 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_64_1(v77);
        OUTLINED_FUNCTION_49_5();
        _os_log_impl(v78, v79, v80, v81, v82, 2u);
        OUTLINED_FUNCTION_31_6();
      }

      v83 = OUTLINED_FUNCTION_22_3();
      v76(v83);
    }

    else
    {
      if (v36 >= 2)
      {
        a11 = *(*(v14 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
        *(v14 + 192) = a11;

        a10 = sub_269771B1C(5, v35);
        v48 = v47;
        v50 = v49;
        v52 = v51 >> 1;
        v53 = MEMORY[0x277D84F90];
        v54 = v49;
LABEL_21:
        *(v14 + 200) = v53;
        v55 = v54;
        while (v52 != v55)
        {
          if (v54 < v50 || v55 >= v52)
          {
            __break(1u);
            goto LABEL_49;
          }

          v57 = v55 + 1;
          v58 = sub_26974FAB0(*(v48 + 8 * v55), &selRef_umcId);
          v55 = v57;
          if (v59)
          {
            v60 = v58;
            v61 = v59;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_5();
              sub_26977BCE4();
              v53 = v65;
            }

            v62 = *(v53 + 16);
            v63 = v62 + 1;
            if (v62 >= *(v53 + 24) >> 1)
            {
              a9 = v62 + 1;
              sub_26977BCE4();
              v63 = v62 + 1;
              v53 = v66;
            }

            *(v53 + 16) = v63;
            v64 = v53 + 16 * v62;
            *(v64 + 32) = v60;
            *(v64 + 40) = v61;
            v54 = v57;
            goto LABEL_21;
          }
        }

        v67 = *(v14 + 16);
        swift_unknownObjectRelease();
        v68 = sub_26977DD18(v67, &selRef_channelIds);
        OUTLINED_FUNCTION_59_2(v68);
        goto LABEL_35;
      }
    }

    (*(v14 + 112))(*(v14 + 80), *(v14 + 104), *(v14 + 56));
  }

  else
  {
    (*(v14 + 112))(*(v14 + 72), *(v14 + 104), *(v14 + 56));
  }

  v84 = sub_2698548B4();
  v85 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v85))
  {
    v86 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v86);
    OUTLINED_FUNCTION_111_0(&dword_269684000, v87, v85, "Failure while using suggested content");
    OUTLINED_FUNCTION_4_16();
  }

  v88 = *(v14 + 128);

  v89 = OUTLINED_FUNCTION_22_3();
  v88(v89);
  type metadata accessor for PlayVideoContentResolutionResult();
  v90 = OUTLINED_FUNCTION_38_5();
  static PlayVideoContentResolutionResult.unsupported(forReason:)(v90);
  OUTLINED_FUNCTION_71_3();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_116();

  return v93(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2697795CC()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2697796B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_121_0();
  OUTLINED_FUNCTION_150();
  v35 = OUTLINED_FUNCTION_20_13(*(v34 + 16), &selRef_suggestedContent);
  v36 = MEMORY[0x277D84F90];
  v142 = v34;
  if (v35)
  {
    v37 = v35;
    v38 = sub_26975004C();
    v39 = 0;
    v40 = v37 & 0xC000000000000001;
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v38 == v39)
      {

        v34 = v142;
        v36 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }

      if (v40)
      {
        v42 = MEMORY[0x26D646120](v39, v37);
      }

      else
      {
        if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v42 = *(v37 + 8 * v39 + 32);
      }

      v43 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v44 = v42;
      v45 = [v44 umcId];
      if (v45)
      {
        v46 = v45;
        v47 = sub_269854A94();
        a13 = v48;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          v41 = v52;
        }

        v50 = *(v41 + 16);
        v49 = *(v41 + 24);
        if (v50 >= v49 >> 1)
        {
          OUTLINED_FUNCTION_85_2(v49);
          sub_26977BCE4();
          v41 = v53;
        }

        *(v41 + 16) = v50 + 1;
        v51 = v41 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = a13;
        v39 = v43;
      }

      else
      {

        ++v39;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    v140 = OUTLINED_FUNCTION_159();
    v78 = MEMORY[0x26D646120](v140);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
LABEL_18:
    v54 = *(v34 + 144);
    sub_2697F1EE0(v41);
    v56 = v55;
    a14 = v36;
    v57 = sub_26975004C();
    v58 = 0;
    a12 = v54 & 0xFFFFFFFFFFFFFF8;
    a13 = v54 & 0xC000000000000001;
    v40 = v54 + 32;
    while (v58 != v57)
    {
      if (a13)
      {
        v59 = MEMORY[0x26D646120](v58, *(v142 + 144));
      }

      else
      {
        if (v58 >= *(a12 + 16))
        {
          goto LABEL_79;
        }

        v59 = *(v40 + 8 * v58);
      }

      v60 = v59;
      if (__OFADD__(v58++, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v62 = sub_26974FAB0(v59, &selRef_umcId);
      if (v63)
      {
        v64 = v63;
        if (*(v56 + 16))
        {
          v65 = v62;
          sub_269855674();
          sub_269854B34();
          v66 = sub_2698556C4();
          v67 = ~(-1 << *(v56 + 32));
          while (1)
          {
            v68 = v66 & v67;
            if (((*(v56 + 56 + (((v66 & v67) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v66 & v67)) & 1) == 0)
            {
              break;
            }

            v69 = (*(v56 + 48) + 16 * v68);
            if (*v69 != v65 || v64 != v69[1])
            {
              v71 = sub_269855584();
              v66 = v68 + 1;
              if ((v71 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_34;
          }
        }

        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
      }

      else
      {
LABEL_34:
      }
    }

    v40 = v142;
    v72 = *(v142 + 16);

    v73 = sub_26977DBF0(v72, &selRef_suggestedContent, type metadata accessor for Content);
    v74 = MEMORY[0x277D84F90];
    if (v73)
    {
      v74 = v73;
    }

    a15 = v74;
    sub_26980BB94(a14);
    sub_269763C54(a15, v72);
    v75 = sub_26977DBF0(*(v142 + 16), &selRef_suggestedContent, type metadata accessor for Content);
    *(v142 + 152) = v75;
    if (!v75)
    {
      (*(v142 + 112))(*(v142 + 72), *(v142 + 104), *(v142 + 56));
      goto LABEL_73;
    }

    v76 = v75;
    v77 = sub_26975004C();
    if (v77 != 1)
    {
      if (v77 < 2)
      {

        goto LABEL_72;
      }

      a13 = *(*(v142 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
      *(v142 + 192) = a13;

      a12 = sub_269771B1C(5, v76);
      v89 = v88;
      v91 = v90;
      v93 = v92 >> 1;
      v94 = MEMORY[0x277D84F90];
      v95 = v90;
LABEL_50:
      *(v40 + 200) = v94;
      v96 = v95;
      while (v93 != v96)
      {
        if (v95 < v91 || v96 >= v93)
        {
          goto LABEL_82;
        }

        v98 = v96 + 1;
        v99 = sub_26974FAB0(*(v89 + 8 * v96), &selRef_umcId);
        v96 = v98;
        if (v100)
        {
          v101 = v99;
          v102 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_5();
            sub_26977BCE4();
            v94 = v106;
          }

          v103 = *(v94 + 16);
          v104 = v103 + 1;
          if (v103 >= *(v94 + 24) >> 1)
          {
            a10 = v103 + 1;
            sub_26977BCE4();
            v104 = v103 + 1;
            v94 = v107;
          }

          *(v94 + 16) = v104;
          v105 = v94 + 16 * v103;
          *(v105 + 32) = v101;
          *(v105 + 40) = v102;
          v95 = v98;
          v40 = v142;
          goto LABEL_50;
        }
      }

      v108 = *(v142 + 16);
      swift_unknownObjectRelease();
      v109 = sub_26977DD18(v108, &selRef_channelIds);
      OUTLINED_FUNCTION_59_2(v109);
      goto LABEL_64;
    }

    if (!sub_26975004C())
    {

      goto LABEL_69;
    }

    OUTLINED_FUNCTION_160();
    sub_269750050();
    if ((v76 & 0xC000000000000001) != 0)
    {
      goto LABEL_83;
    }

    v78 = *(v76 + 32);
  }

  v79 = v78;
  *(v40 + 160) = v78;

  v80 = sub_26974FAB0(v79, &selRef_umcId);
  if (v81)
  {
    v82 = v80;
    v83 = v81;
    v84 = *(v40 + 16);
    *(v40 + 168) = *(*(v40 + 24) + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_backgroundFetch);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v86 = OUTLINED_FUNCTION_146(v85);
    *(v40 + 176) = v86;
    *(v86 + 16) = xmmword_269857710;
    *(v86 + 32) = v82;
    *(v86 + 40) = v83;
    v87 = sub_26977DD18(v84, &selRef_channelIds);
    OUTLINED_FUNCTION_57_3(v87);
LABEL_64:
    OUTLINED_FUNCTION_69_3();

    return MEMORY[0x2822009F8](v110);
  }

LABEL_69:
  v112 = OUTLINED_FUNCTION_125();
  v113(v112);
  v114 = sub_2698548B4();
  v115 = sub_269854F14();
  v116 = OUTLINED_FUNCTION_55_2(v115);
  v117 = *(v40 + 128);
  if (v116)
  {
    v118 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_64_1(v118);
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v119, v120, v121, v122, v123, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  v124 = OUTLINED_FUNCTION_22_3();
  v117(v124);
LABEL_72:
  (*(v40 + 112))(*(v40 + 80), *(v40 + 104), *(v40 + 56));
LABEL_73:
  v125 = sub_2698548B4();
  v126 = sub_269854F14();
  if (OUTLINED_FUNCTION_19_4(v126))
  {
    v127 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_16_6(v127);
    OUTLINED_FUNCTION_111_0(&dword_269684000, v128, v126, "Failure while using suggested content");
    OUTLINED_FUNCTION_4_16();
  }

  v129 = *(v40 + 128);

  v130 = OUTLINED_FUNCTION_22_3();
  v129(v130);
  type metadata accessor for PlayVideoContentResolutionResult();
  v131 = OUTLINED_FUNCTION_38_5();
  static PlayVideoContentResolutionResult.unsupported(forReason:)(v131);
  OUTLINED_FUNCTION_71_3();

  OUTLINED_FUNCTION_8_23();
  OUTLINED_FUNCTION_69_3();

  return v134(v132, v133, v134, v135, v136, v137, v138, v139, a9, a10, v142, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_269779DE0()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v0, v1);

  v2 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_269779E6C()
{
  v1 = *(v0 + 160);
  type metadata accessor for PlayVideoContentResolutionResult();
  v2 = OUTLINED_FUNCTION_11_16();
  static ContentResolutionResult.success(with:)(v2);

  OUTLINED_FUNCTION_71_3();

  v3 = OUTLINED_FUNCTION_8_23();

  return v4(v3);
}

uint64_t sub_269779F18()
{
  OUTLINED_FUNCTION_8_5();
  v0 = OUTLINED_FUNCTION_22_3();
  sub_2697C067C(v0, v1);

  v2 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v2);
}

void sub_269779FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_29_4();
  OUTLINED_FUNCTION_28_6();
  v18 = v14[19];
  v19 = v14[2];
  OUTLINED_FUNCTION_108(v14[3]);
  v20 = OUTLINED_FUNCTION_22_3();
  v22 = sub_26975EE38(v20, v21);
  v23 = v14[19];
  if (v22)
  {
    a10 = v22;
    sub_26975004C();
    OUTLINED_FUNCTION_134();
    a11 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 == v15)
      {
        v36 = v14[6];
        v37 = v14[3];
        v38 = v14[4];
        v39 = v14[2];

        sub_26977DC54(a11, v39);
        __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder), *(v37 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_signalRecorder + 24));
        *v36 = a11;
        OUTLINED_FUNCTION_44_0();
        swift_storeEnumTagMultiPayload();
        sub_2697F99B8();
        OUTLINED_FUNCTION_12_24();
        sub_26977E088(v36, v40);
        sub_269851D24();
        v41 = sub_269851D34();
        __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
        sub_2697B8B5C(v38);
        v23 = a10;
        goto LABEL_17;
      }

      if (v16)
      {
        v24 = MEMORY[0x26D646120](v15, v14[19]);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v24 = *(v19 + 8 * v15);
      }

      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v26 = v24;
      v27 = [v26 umcId];
      if (v27)
      {
        v28 = v27;
        v29 = sub_269854A94();
        a9 = v30;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_26977BCE4();
          a11 = v34;
        }

        v32 = *(a11 + 16);
        v31 = *(a11 + 24);
        if (v32 >= v31 >> 1)
        {
          OUTLINED_FUNCTION_85_2(v31);
          sub_26977BCE4();
          a11 = v35;
        }

        *(a11 + 16) = v32 + 1;
        v33 = a11 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = a9;
        v15 = v25;
      }

      else
      {

        ++v15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    type metadata accessor for PlayVideoContentResolutionResult();
    static ContentResolutionResult.disambiguation(with:)(v23);

    OUTLINED_FUNCTION_71_3();

    OUTLINED_FUNCTION_8_23();
    OUTLINED_FUNCTION_116();

    v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_26977A220()
{
  OUTLINED_FUNCTION_2_7();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_2698548D4();
  v1[5] = v3;
  OUTLINED_FUNCTION_5_12(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_4_7();
  v5 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_26977A2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_2_7();
  v15 = OUTLINED_FUNCTION_79_1(*(v14 + 24), &selRef_utsSearchParams);
  *(v14 + 64) = v15;
  if (v15)
  {
    if (sub_26975004C())
    {
      OUTLINED_FUNCTION_108(*(v14 + 32));
      v16 = swift_task_alloc();
      *(v14 + 72) = v16;
      *v16 = v14;
      OUTLINED_FUNCTION_123(v16);

      return sub_2697BBCB0();
    }
  }

  v18 = [*(v14 + 24) contentSearch];
  *(v14 + 88) = v18;
  if (v18)
  {
    OUTLINED_FUNCTION_108(*(v14 + 32));
    v19 = swift_task_alloc();
    *(v14 + 96) = v19;
    *v19 = v14;
    OUTLINED_FUNCTION_123(v19);

    return sub_2697BB34C();
  }

  else
  {

    OUTLINED_FUNCTION_28_2();
    v21 = MEMORY[0x277D84F90];

    return v20(v21);
  }
}

uint64_t sub_26977A474()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_6_7();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(v3);
  }
}

uint64_t sub_26977A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;

  v25 = v22[10];
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v27 = v22[6];
  v26 = v22[7];
  OUTLINED_FUNCTION_33_0(v22[5], qword_28033D928);
  (*(v27 + 16))(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F24();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v22[6];
  v33 = v22[7];
  v34 = v22[5];
  if (v31)
  {
    OUTLINED_FUNCTION_27_2();
    a10 = v33;
    v35 = OUTLINED_FUNCTION_16_8();
    a11 = v35;
    *v33 = 136315138;
    v22[2] = v25;
    v36 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a11);

    *(v33 + 4) = v39;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v40, v41, "Remote device content resolver error: %s. No items added to suggestedContents list from remote device");
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();
  }

  (*(v32 + 8))(v33, v34);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26977A77C()
{
  OUTLINED_FUNCTION_8_5();
  v3 = v2;
  OUTLINED_FUNCTION_14_6();
  v5 = v4;
  OUTLINED_FUNCTION_6_13();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v8 = v7;
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_6_7();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_26977A88C()
{
  OUTLINED_FUNCTION_2_7();

  v1 = OUTLINED_FUNCTION_8_23();

  return v2(v1);
}

uint64_t sub_26977A8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_29_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_6();
  a20 = v22;

  v25 = *(v22 + 104);
  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  v27 = *(v22 + 48);
  v26 = *(v22 + 56);
  OUTLINED_FUNCTION_33_0(*(v22 + 40), qword_28033D928);
  (*(v27 + 16))(v26);
  v28 = v25;
  v29 = sub_2698548B4();
  v30 = sub_269854F24();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v22 + 48);
  v33 = *(v22 + 56);
  v34 = *(v22 + 40);
  if (v31)
  {
    OUTLINED_FUNCTION_27_2();
    a10 = v33;
    v35 = OUTLINED_FUNCTION_16_8();
    a11 = v35;
    *v33 = 136315138;
    *(v22 + 16) = v25;
    v36 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v37 = sub_269854AE4();
    v39 = sub_26974F520(v37, v38, &a11);

    *(v33 + 4) = v39;
    OUTLINED_FUNCTION_14_2(&dword_269684000, v40, v41, "Remote device content resolver error: %s. No items added to suggestedContents list from remote device");
    __swift_destroy_boxed_opaque_existential_0(v35);
    OUTLINED_FUNCTION_68_3();
    OUTLINED_FUNCTION_10();
  }

  (*(v32 + 8))(v33, v34);

  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_116();

  return v44(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
}

void sub_26977AAB0()
{
  OUTLINED_FUNCTION_19_1();
  v1 = v0;
  v3 = v2;
  v4 = 0;
  v5 = sub_2698548D4();
  OUTLINED_FUNCTION_3_20();
  v7 = v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  if ([v1 sort])
  {

    sub_269771B1C(1, v3);
    v4 = v14;
    v16 = v15;
    if (v15)
    {
      sub_2698555A4();
      swift_unknownObjectRetain_n();
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
        swift_unknownObjectRelease();
        v29 = MEMORY[0x277D84F90];
      }

      v30 = *(v29 + 16);

      if (__OFSUB__(v16 >> 1, v4))
      {
LABEL_50:
        __break(1u);
      }

      else if (v30 == (v16 >> 1) - v4)
      {
        v31 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v31)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_46;
      }

      swift_unknownObjectRelease();
    }

    v17 = OUTLINED_FUNCTION_7_16();
    sub_2697E0BB4(v17, v18, v4, v16);
    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  sub_26974FAB0(v1, &selRef_name);
  if (!v19)
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    OUTLINED_FUNCTION_33_0(v5, qword_28033D928);
    v40 = OUTLINED_FUNCTION_148();
    v41(v40);
    v42 = sub_2698548B4();
    v43 = sub_269854F04();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v44);
      _os_log_impl(&dword_269684000, v42, v43, "Skipping content filtering due to no title present in search", v7, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v7 + 8))(v13, v5);

    goto LABEL_46;
  }

  v48 = v5;
  v49 = v11;
  v47 = v7;
  v20 = MEMORY[0x277D84F90];

  v52 = v20;
  v50 = sub_26975004C();
  v21 = 0;
  v22 = v3 & 0xC000000000000001;
  v16 = v3 & 0xFFFFFFFFFFFFFF8;
  while (v50 != v21)
  {
    if (v22)
    {
      v23 = MEMORY[0x26D646120](v21, v3);
    }

    else
    {
      if (v21 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v23 = *(v3 + 8 * v21 + 32);
    }

    v24 = v23;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v25 = [v23 isInWatchList];
    sub_269694CBC();
    v26 = sub_269855034();
    v27 = v26;
    if (v25)
    {
      v28 = sub_269855064();

      if (v28)
      {
        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_16:
    ++v21;
  }

  v32 = v52;
  if (sub_26975004C())
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    v33 = v48;
    OUTLINED_FUNCTION_33_0(v48, qword_28033D928);
    v34 = v47;
    (*(v47 + 16))(v49);
    v35 = sub_2698548B4();
    v36 = sub_269854F44();
    if (OUTLINED_FUNCTION_19_4(v36))
    {
      v37 = OUTLINED_FUNCTION_16_2();
      *v37 = 0;
      _os_log_impl(&dword_269684000, v35, v36, "Re-ranking content to prioritize items on user's WatchList", v37, 2u);
      OUTLINED_FUNCTION_10();
    }

    (*(v34 + 8))(v49, v33);
    v16 = 0;
    v52 = MEMORY[0x277D84F90];
    while (v50 != v16)
    {
      sub_269750050();
      if (v22)
      {
        v38 = MEMORY[0x26D646120](v16, v3);
      }

      else
      {
        v38 = *(v3 + 8 * v16 + 32);
      }

      v39 = v38;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_49;
      }

      v51 = v38;
      MEMORY[0x28223BE20](v38);
      *(&v46 - 2) = &v51;
      if (sub_26983387C(sub_26977E3E0, (&v46 - 4), v32))
      {
      }

      else
      {
        sub_269855284();
        sub_2698552B4();
        sub_2698552C4();
        sub_269855294();
      }

      ++v16;
    }

    v45 = v52;
    v52 = v32;
    sub_26980BB94(v45);
  }

  else
  {
  }

LABEL_46:
  OUTLINED_FUNCTION_21_0();
}

uint64_t sub_26977B044()
{
  OUTLINED_FUNCTION_2_7();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v5 = sub_2698548D4();
  v1[16] = v5;
  OUTLINED_FUNCTION_5_12(v5);
  v1[17] = v6;
  v1[18] = OUTLINED_FUNCTION_37_0();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26977B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_108(*(v28 + 120));
  v29 = swift_task_alloc();
  *(v28 + 192) = v29;
  *v29 = v28;
  OUTLINED_FUNCTION_123(v29);

  return sub_2697AEB90();
}

uint64_t sub_26977B1C0()
{
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_6_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = v3;

  v4 = OUTLINED_FUNCTION_3_16();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_26977B2AC(uint64_t a1)
{
  if (*(v1 + 200) != 1)
  {
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    __swift_project_value_buffer(*(v1 + 128), qword_28033D928);
    v34 = OUTLINED_FUNCTION_2_8();
    v35(v34);
    v36 = sub_2698548B4();
    v37 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v37))
    {
      v38 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v38);
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v39, v40, v41, v42, v43, 2u);
      OUTLINED_FUNCTION_31_6();
    }

    goto LABEL_34;
  }

  v2 = *(v1 + 112);
  if (!v2)
  {
LABEL_30:
    if (qword_2803226E8 != -1)
    {
      OUTLINED_FUNCTION_0_30(&qword_2803226E8);
    }

    __swift_project_value_buffer(*(v1 + 128), qword_28033D928);
    v44 = OUTLINED_FUNCTION_2_8();
    v45(v44);
    v36 = sub_2698548B4();
    v46 = sub_269854F24();
    if (OUTLINED_FUNCTION_55_2(v46))
    {
      v47 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_64_1(v47);
      OUTLINED_FUNCTION_49_5();
      _os_log_impl(v48, v49, v50, v51, v52, 2u);
      OUTLINED_FUNCTION_31_6();
    }

LABEL_34:

    v53 = OUTLINED_FUNCTION_22_3();
    v54(v53);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_108(*(v1 + 120));
  v3 = OUTLINED_FUNCTION_7_16();
  sub_2697ADE90(v3, v4, v5);
  if (!*(v1 + 80))
  {
    sub_26969B0C0(v1 + 56, &unk_2803263B0, &unk_26985D0B0);
    goto LABEL_30;
  }

  v6 = *(v1 + 120);
  v7 = *(v1 + 104);
  sub_26968E5D4((v1 + 56), v1 + 16);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider), *(v6 + OBJC_IVAR____TtC16SiriVideoIntents22PlayVideoIntentHandler_carPlaySupportProvider + 24));
  if (sub_2697AE1AC(v7, v2))
  {
    goto LABEL_11;
  }

  if (qword_2803226E8 != -1)
  {
    OUTLINED_FUNCTION_0_30(&qword_2803226E8);
  }

  __swift_project_value_buffer(*(v1 + 128), qword_28033D928);
  v8 = OUTLINED_FUNCTION_25_2();
  v71 = v9;
  v9(v8);
  v10 = sub_2698548B4();
  v11 = sub_269854F14();
  if (OUTLINED_FUNCTION_55_2(v11))
  {
    v12 = OUTLINED_FUNCTION_16_2();
    OUTLINED_FUNCTION_64_1(v12);
    OUTLINED_FUNCTION_49_5();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_31_6();
  }

  v18 = *(v1 + 136);
  v19 = *(v1 + 96);

  v20 = *(v18 + 8);
  v21 = OUTLINED_FUNCTION_44_0();
  v20(v21);
  if (v19 && ([*(v1 + 96) BOOLValue] & 1) != 0)
  {
LABEL_11:
    v22 = *(v1 + 104) == 0x6C7070612E6D6F63 && *(v1 + 112) == 0xEC00000076742E65;
    if (v22 || (sub_269855584() & 1) != 0 || (OUTLINED_FUNCTION_108(*(v1 + 120)), (sub_2697B5594() & 1) == 0) || (__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)), v23 = OUTLINED_FUNCTION_22_3(), (v24(v23) & 1) != 0) || (sub_2697B94C0() & 1) != 0)
    {
      if (qword_2803226E8 != -1)
      {
        OUTLINED_FUNCTION_0_30(&qword_2803226E8);
      }

      __swift_project_value_buffer(*(v1 + 128), qword_28033D928);
      v25 = OUTLINED_FUNCTION_2_8();
      v26(v25);
      v27 = sub_2698548B4();
      v28 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v28))
      {
        v29 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v29);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v30, v31, "CarPlay mode supports video playback and user is entitled and has app installed. Proceeding with playback");
        OUTLINED_FUNCTION_18_7();
      }
    }

    else
    {
      if (qword_2803226E8 != -1)
      {
        OUTLINED_FUNCTION_0_30(&qword_2803226E8);
      }

      __swift_project_value_buffer(*(v1 + 128), qword_28033D928);
      v65 = OUTLINED_FUNCTION_2_8();
      v66(v65);
      v27 = sub_2698548B4();
      v67 = sub_269854F14();
      if (OUTLINED_FUNCTION_19_5(v67))
      {
        v68 = OUTLINED_FUNCTION_16_2();
        OUTLINED_FUNCTION_30_2(v68);
        OUTLINED_FUNCTION_31_0(&dword_269684000, v69, v70, "Device is locked and the app does not support background playback, therefore reject request");
        OUTLINED_FUNCTION_18_7();
      }
    }

    v32 = OUTLINED_FUNCTION_22_3();
    v33(v32);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

  else
  {
    v58 = OUTLINED_FUNCTION_25_2();
    v71(v58);
    v59 = sub_2698548B4();
    v60 = sub_269854F24();
    if (OUTLINED_FUNCTION_19_5(v60))
    {
      v61 = OUTLINED_FUNCTION_16_2();
      OUTLINED_FUNCTION_30_2(v61);
      OUTLINED_FUNCTION_31_0(&dword_269684000, v62, v63, "CarPlay mode supports video playback, but user is not entitled to content");
      OUTLINED_FUNCTION_18_7();
    }

    v64 = OUTLINED_FUNCTION_22_3();
    v20(v64);
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
  }

LABEL_35:

  v55 = OUTLINED_FUNCTION_8_23();

  return v56(v55);
}

id PlayVideoIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayVideoIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26977B9CC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26977BA60()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26977BCE4();
    *v0 = v3;
  }
}

void sub_26977BAAC()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26977C3CC();
    *v0 = v3;
  }
}

void sub_26977BB2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26977D340();
    *v2 = v5;
  }
}

void sub_26977BBB8()
{
  OUTLINED_FUNCTION_86_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_26977BCE4();
    *v0 = v4;
  }
}

void sub_26977BBEC()
{
  OUTLINED_FUNCTION_86_0();
  if (!(v2 ^ v3 | v1))
  {
    sub_26977C3CC();
    *v0 = v4;
  }
}

uint64_t sub_26977BC40(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_269854CD4();
  }

  return result;
}

void sub_26977BC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_86_0();
  if (!(v6 ^ v7 | v5))
  {
    sub_26977D340();
    *v4 = v8;
  }
}

void sub_26977BCE4()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    v7 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_22_11();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977BDB4()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324328, &qword_26985F398);
    v7 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v7);
    OUTLINED_FUNCTION_32_7(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977BE84()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_118_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324230, &qword_26985F270);
    v7 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_22_11();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_26977BF50()
{
  OUTLINED_FUNCTION_27_10();
  if (v2)
  {
    OUTLINED_FUNCTION_26_13();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_99_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_103_0();
  sub_26977D794(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_72_0();
  sub_2698519E4();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277CB9E20], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C020()
{
  OUTLINED_FUNCTION_27_10();
  if (v2)
  {
    OUTLINED_FUNCTION_26_13();
    if (v3 != v4)
    {
      OUTLINED_FUNCTION_99_1();
      if (v3)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  v5 = *(v0 + 16);
  OUTLINED_FUNCTION_102_0();
  sub_26977D794(v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_72_0();
  sub_269851A04();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277CBA000], v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C0F0()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324388, &unk_26985F400);
    v8 = OUTLINED_FUNCTION_60_1(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977C1C0()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324360, &unk_26985F3D0);
    v8 = OUTLINED_FUNCTION_60_1(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 40 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977C2D8()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242C8, &qword_26985F308);
    v8 = OUTLINED_FUNCTION_51_5(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_127();
      v12 = OUTLINED_FUNCTION_44_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242D0, &qword_26985F310);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977C3CC()
{
  OUTLINED_FUNCTION_82_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_66_2(v11);
    v11[2] = v9;
    v11[3] = 2 * (v12 / 40);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[5 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_128();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_61_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_128();
    swift_arrayInitWithCopy();
  }
}

void sub_26977C4D4()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v2, v5, &qword_280324310, &qword_26985F380);
  OUTLINED_FUNCTION_72_0();
  sub_269852EF4();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277D5BAF8], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C5AC()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v2, v5, &unk_280324330, &unk_26985F3A0);
  OUTLINED_FUNCTION_72_0();
  sub_269852FE4();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277D5BCB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C684()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v2, v5, &qword_280324318, &qword_26985F388);
  OUTLINED_FUNCTION_72_0();
  sub_269854934();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277D5FEB0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C75C()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324368, &qword_26985F3E0);
    v8 = OUTLINED_FUNCTION_51_5(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_127();
      v12 = OUTLINED_FUNCTION_44_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324370, &qword_26985F3E8);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977C82C()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v2, v5, &qword_280324320, &qword_26985F390);
  v8 = OUTLINED_FUNCTION_72_0();
  type metadata accessor for VideoDataModels.VideoResult(v8);
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(type metadata accessor for VideoDataModels.VideoResult, v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}

void sub_26977C904()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324358, &qword_26985F3C8);
    v8 = OUTLINED_FUNCTION_60_1(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v12)
    {
      v13 = v11 > v9;
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      memmove(v9, v10, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977C9D4()
{
  OUTLINED_FUNCTION_48_4();
  if (v3)
  {
    OUTLINED_FUNCTION_7_29();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_42_4();
      if (v4)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324340, &unk_26985F3B0);
    v7 = OUTLINED_FUNCTION_51_5(v6);
    OUTLINED_FUNCTION_3_30(v7);
  }

  OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    OUTLINED_FUNCTION_152();
    if (v10)
    {
      v11 = v9 > v8;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_127();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977CAC0()
{
  OUTLINED_FUNCTION_82_2();
  if (v7)
  {
    OUTLINED_FUNCTION_7_29();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_42_4();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  v12 = sub_26977D6A0(v11, v8, v5, v6);
  v13 = OUTLINED_FUNCTION_61_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v3)
  {
    sub_26977DA48(v0 + v15, v11, v12 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977CBAC()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_118_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243A0, &qword_26985F418);
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_66_2(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * (v8 / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[24 * v3] <= v9)
    {
      memmove(v9, v10, 24 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977CC9C()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_118_0();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803243A8, &qword_26985F420);
    v7 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v7);
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * (v8 / 8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_26977CD70()
{
  OUTLINED_FUNCTION_48_4();
  if (v6)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324300, &qword_26985F370);
    v9 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_22_11();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_44_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324308, &qword_26985F378);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977CE54()
{
  OUTLINED_FUNCTION_48_4();
  if (v6)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E0, &unk_2698591D0);
    v9 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v9);
    OUTLINED_FUNCTION_32_7(v10);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    if (v9 != v0 || v5 + 32 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_44_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242E8, &qword_26985F328);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977CF38()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803242D8, &unk_26985F318);
    v7 = OUTLINED_FUNCTION_117_0();
    OUTLINED_FUNCTION_66_2(v7);
    OUTLINED_FUNCTION_32_7(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = OUTLINED_FUNCTION_98_1();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26977D050()
{
  OUTLINED_FUNCTION_82_2();
  if (v5)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  else
  {
    v6 = v2;
  }

  v9 = v0[2];
  if (v6 <= v9)
  {
    v10 = v0[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_66_2(v11);
    v11[2] = v9;
    v11[3] = 2 * (v12 / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[3 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_128();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_61_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_128();
    swift_arrayInitWithCopy();
  }
}

void sub_26977D1A0()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324250, &qword_26985F290);
    v8 = OUTLINED_FUNCTION_51_5(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_127();
      v12 = OUTLINED_FUNCTION_44_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324258, &qword_26985F298);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977D270()
{
  OUTLINED_FUNCTION_48_4();
  if (v4)
  {
    OUTLINED_FUNCTION_7_29();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_42_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324280, &unk_26985F2C0);
    v8 = OUTLINED_FUNCTION_51_5(v7);
    OUTLINED_FUNCTION_3_30(v8);
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    OUTLINED_FUNCTION_83_2();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_127();
      v12 = OUTLINED_FUNCTION_44_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324288, &unk_269867D30);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977D340()
{
  OUTLINED_FUNCTION_48_4();
  if (v6)
  {
    OUTLINED_FUNCTION_7_29();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_42_4();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_6_28();
    }
  }

  OUTLINED_FUNCTION_11_24();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    v11 = OUTLINED_FUNCTION_117_0();
    _swift_stdlib_malloc_size(v11);
    OUTLINED_FUNCTION_22_11();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_100_1();
  if (v1)
  {
    if (v11 != v0 || v5 + 16 * v2 <= v4)
    {
      v14 = OUTLINED_FUNCTION_44_0();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324240, &qword_26985F280);
    OUTLINED_FUNCTION_29_9();
  }
}

void sub_26977D41C()
{
  OUTLINED_FUNCTION_27_10();
  if (v4)
  {
    OUTLINED_FUNCTION_26_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_99_1();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_9();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_136(v2, v5, &qword_280324220, &unk_26985F260);
  OUTLINED_FUNCTION_72_0();
  sub_269851DA4();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_18_5();
  if (v1)
  {
    OUTLINED_FUNCTION_67_1(MEMORY[0x277CC95F0], v8);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
  }
}