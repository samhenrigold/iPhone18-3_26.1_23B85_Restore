BOOL sub_227A30830()
{
  v1 = v0;
  v2 = sub_227A4BBE8();
  swift_beginAccess();
  return v2 == *(*(v1 + 152) + 16);
}

uint64_t sub_227A30888()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_125(v0 + 152, v13);
  swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + 152);
  v5 = OUTLINED_FUNCTION_82();
  sub_227A62630(v5, v6, v7, v8);
  *(v0 + 152) = v12;
  swift_endAccess();
  result = sub_227A30830();
  if (result)
  {
    v10 = sub_227A71C2C();
    OUTLINED_FUNCTION_32_2(v10);
    v11 = OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate;
    OUTLINED_FUNCTION_125(v2 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate, v13);
    sub_227A346D0(v1, v2 + v11);
    return swift_endAccess();
  }

  return result;
}

void sub_227A30998(double a1)
{
  if (*(v1 + 160) == 1)
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v2 = sub_227A7227C();
    __swift_project_value_buffer(v2, qword_27D7DE210);
    v3 = sub_227A7226C();
    sub_227A728AC();
    v4 = OUTLINED_FUNCTION_20_1();
    if (os_log_type_enabled(v4, v5))
    {
      OUTLINED_FUNCTION_28_0();
      v6 = swift_slowAlloc();
      OUTLINED_FUNCTION_41_2(v6);
      OUTLINED_FUNCTION_23_1();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      v12 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x22AAA1930](v12);
    }
  }

  else
  {
    *(v1 + 160) = 1;
    sub_227A4CF78(a1);
  }
}

uint64_t sub_227A30A74()
{
  OUTLINED_FUNCTION_31();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_227A72BEC();
  v1[22] = v4;
  OUTLINED_FUNCTION_34(v4);
  v1[23] = v5;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v6 = sub_227A72BFC();
  v1[26] = v6;
  OUTLINED_FUNCTION_34(v6);
  v1[27] = v7;
  v1[28] = swift_task_alloc();
  v8 = sub_227A71C2C();
  v1[29] = v8;
  OUTLINED_FUNCTION_34(v8);
  v1[30] = v9;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  OUTLINED_FUNCTION_149(v10);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A30C50, v0, 0);
}

uint64_t sub_227A30C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_56_1();
  v23 = v20[37];
  v24 = v20[29];
  v25 = v20[21];
  v26 = OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate;
  v20[38] = OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate;
  swift_beginAccess();
  sub_227A34844(v26 + v25, v23, &qword_27D7DD358, &unk_227AA3BF0);
  v27 = OUTLINED_FUNCTION_17_3();
  LODWORD(v24) = __swift_getEnumTagSinglePayload(v27, v28, v24);
  v29 = OUTLINED_FUNCTION_76();
  sub_227A04918(v29, v30, &unk_227AA3BF0);
  if (v24 == 1)
  {
    v31 = v20[36];
    v32 = v20[29];
    v21 = v20[21];
    sub_227A71C1C();
    sub_227A71BCC();
    v33 = OUTLINED_FUNCTION_76();
    v34(v33);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
    OUTLINED_FUNCTION_125(v26 + v25, (v20 + 5));
    sub_227A346D0(v31, v26 + v25);
    swift_endAccess();
  }

  else
  {
    if (qword_27D7DC4E0 != -1)
    {
      OUTLINED_FUNCTION_0_15();
      swift_once();
    }

    v35 = sub_227A7227C();
    OUTLINED_FUNCTION_104(v35, qword_27D7DE210);
    v36 = sub_227A7226C();
    sub_227A728AC();
    v37 = OUTLINED_FUNCTION_20_1();
    if (os_log_type_enabled(v37, v38))
    {
      OUTLINED_FUNCTION_28_0();
      v39 = swift_slowAlloc();
      OUTLINED_FUNCTION_36_1(v39);
      OUTLINED_FUNCTION_10_4();
      _os_log_impl(v40, v41, v42, v43, v44, 2u);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
    }
  }

  v45 = v20[29];
  sub_227A34844(v20[21] + v20[38], v20[35], &qword_27D7DD358, &unk_227AA3BF0);
  v46 = OUTLINED_FUNCTION_17_3();
  if (__swift_getEnumTagSinglePayload(v46, v47, v45) == 1)
  {
    sub_227A04918(v20[35], &qword_27D7DD358, &unk_227AA3BF0);
    goto LABEL_17;
  }

  v48 = v20[29];
  v49 = v20[30];
  v50 = OUTLINED_FUNCTION_49_1();
  v51(v50);
  sub_227A71C1C();
  v45 = sub_227A71BEC();
  v26 = *(v49 + 8);
  v20[39] = v26;
  v20[40] = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v52 = OUTLINED_FUNCTION_76();
  v26(v52);
  if ((v45 & 1) == 0)
  {
    v58 = OUTLINED_FUNCTION_54_1();
    v26(v58);
LABEL_17:
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_48_1(&qword_27D7DD358, &unk_227AA3BF0, v59);
    v60 = OUTLINED_FUNCTION_17_3();
    if (__swift_getEnumTagSinglePayload(v60, v61, v45) == 1)
    {
      sub_227A04918(v20[34], &qword_27D7DD358, &unk_227AA3BF0);
    }

    else
    {
      v62 = v20[31];
      v63 = v20[29];
      v64 = OUTLINED_FUNCTION_27_2();
      v65(v64);
      sub_227A71C1C();
      OUTLINED_FUNCTION_3_8();
      v68 = sub_227A34740(v66, v67, MEMORY[0x277CC9590]);
      OUTLINED_FUNCTION_45_1(v68);
      v69 = OUTLINED_FUNCTION_51_2();
      v21(v69);
      if ((v62 & 1) == 0)
      {
        if (qword_27D7DC4E0 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        v70 = sub_227A7227C();
        OUTLINED_FUNCTION_104(v70, qword_27D7DE210);
        sub_227A7226C();
        sub_227A7289C();
        v71 = OUTLINED_FUNCTION_20_1();
        if (os_log_type_enabled(v71, v72))
        {
          OUTLINED_FUNCTION_28_0();
          v73 = swift_slowAlloc();
          OUTLINED_FUNCTION_36_1(v73);
          OUTLINED_FUNCTION_10_4();
          _os_log_impl(v74, v75, v76, v77, v78, 2u);
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
        }

        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_11_6();
        sub_227A346D0(v26, v22 + v63);
        swift_endAccess();
        sub_227A326B4();
        OUTLINED_FUNCTION_95_0();
        v79 = swift_allocError();
        OUTLINED_FUNCTION_47_1(v79, v80);
        OUTLINED_FUNCTION_95_0();
        v81 = swift_allocError();
        *v82 = v63;
        v82[1] = 0;
        OUTLINED_FUNCTION_2_11(v81, v82);
        swift_willThrow();
        v83 = OUTLINED_FUNCTION_82();
        v21(v83);

        OUTLINED_FUNCTION_41();
        goto LABEL_27;
      }

      (v21)(v20[31], v20[29]);
    }

    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_41();
LABEL_27:
    OUTLINED_FUNCTION_106_0();

    return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v53 = v20[21];
  if (sub_227A30830())
  {
    OUTLINED_FUNCTION_5_6();
    sub_227A346D0(v53, v48 + v45);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2822009F8](v54, v55, v56);
}

uint64_t sub_227A31194()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  OUTLINED_FUNCTION_19_2();
  v6 = sub_227A34740(v4, v5, MEMORY[0x277D85930]);
  sub_227A72EBC();
  OUTLINED_FUNCTION_18_3();
  sub_227A34740(v7, v8, MEMORY[0x277D85920]);
  sub_227A72C0C();
  v9 = *(v2 + 8);
  v0[43] = v9;
  v0[44] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v3);
  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  v10[1] = sub_227A312F8;
  v12 = v0[25];
  v11 = v0[26];

  return MEMORY[0x2822008C8](v12, v0 + 14, v11, v6);
}

uint64_t sub_227A312F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
    (*(v3 + 344))(*(v3 + 200), *(v3 + 176));
    v7 = sub_227A3181C;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 344);
    v10 = *(v3 + 200);
    v12 = v3 + 168;
    v11 = *(v3 + 168);
    v9(v10, *(v12 + 8));
    v13 = OUTLINED_FUNCTION_76();
    v14(v13);
    v7 = sub_227A31440;
    v8 = v11;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_227A31440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_56_1();
  v24 = OUTLINED_FUNCTION_54_1();
  v25(v24);
  v26 = v20[29];
  OUTLINED_FUNCTION_48_1(&qword_27D7DD358, &unk_227AA3BF0, v20[38]);
  v27 = OUTLINED_FUNCTION_17_3();
  if (__swift_getEnumTagSinglePayload(v27, v28, v26) == 1)
  {
    sub_227A04918(v20[35], &qword_27D7DD358, &unk_227AA3BF0);
    goto LABEL_10;
  }

  v29 = v20[29];
  v30 = v20[30];
  v31 = OUTLINED_FUNCTION_49_1();
  v32(v31);
  sub_227A71C1C();
  v26 = sub_227A71BEC();
  v33 = *(v30 + 8);
  v20[39] = v33;
  v20[40] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34 = OUTLINED_FUNCTION_76();
  v33(v34);
  if ((v26 & 1) == 0)
  {
    v40 = OUTLINED_FUNCTION_54_1();
    v33(v40);
LABEL_10:
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_48_1(&qword_27D7DD358, &unk_227AA3BF0, v41);
    v42 = OUTLINED_FUNCTION_17_3();
    if (__swift_getEnumTagSinglePayload(v42, v43, v26) == 1)
    {
      sub_227A04918(v20[34], &qword_27D7DD358, &unk_227AA3BF0);
    }

    else
    {
      v44 = v20[31];
      v45 = v20[29];
      v46 = OUTLINED_FUNCTION_27_2();
      v47(v46);
      sub_227A71C1C();
      OUTLINED_FUNCTION_3_8();
      v50 = sub_227A34740(v48, v49, MEMORY[0x277CC9590]);
      OUTLINED_FUNCTION_45_1(v50);
      v51 = OUTLINED_FUNCTION_51_2();
      v22(v51);
      if ((v44 & 1) == 0)
      {
        if (qword_27D7DC4E0 != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        v52 = sub_227A7227C();
        OUTLINED_FUNCTION_104(v52, qword_27D7DE210);
        sub_227A7226C();
        sub_227A7289C();
        v53 = OUTLINED_FUNCTION_20_1();
        if (os_log_type_enabled(v53, v54))
        {
          OUTLINED_FUNCTION_28_0();
          v55 = swift_slowAlloc();
          OUTLINED_FUNCTION_36_1(v55);
          OUTLINED_FUNCTION_10_4();
          _os_log_impl(v56, v57, v58, v59, v60, 2u);
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
        }

        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_11_6();
        sub_227A346D0(v21, v23 + v45);
        swift_endAccess();
        sub_227A326B4();
        OUTLINED_FUNCTION_95_0();
        v61 = swift_allocError();
        OUTLINED_FUNCTION_47_1(v61, v62);
        OUTLINED_FUNCTION_95_0();
        v63 = swift_allocError();
        *v64 = v45;
        v64[1] = 0;
        OUTLINED_FUNCTION_2_11(v63, v64);
        swift_willThrow();
        v65 = OUTLINED_FUNCTION_82();
        v22(v65);

        OUTLINED_FUNCTION_41();
        goto LABEL_20;
      }

      (v22)(v20[31], v20[29]);
    }

    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_41();
LABEL_20:
    OUTLINED_FUNCTION_106_0();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v35 = v20[21];
  if (sub_227A30830())
  {
    OUTLINED_FUNCTION_5_6();
    sub_227A346D0(v35, v29 + v26);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2822009F8](v36, v37, v38);
}

uint64_t sub_227A3181C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[21];
  (*(v0[27] + 8))(v0[28], v0[26]);

  return MEMORY[0x2822009F8](sub_227A31894, v1, 0);
}

uint64_t sub_227A31894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t (*a13)(uint64_t, uint64_t (*)(uint64_t)), uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_56_1();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v31 = &qword_27D7DC000;
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v100 = sub_227A7227C();
  OUTLINED_FUNCTION_104(v100, qword_27D7DE210);

  v32 = sub_227A7226C();
  v33 = sub_227A7289C();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v28[46];
  if (v34)
  {
    a13 = v28[39];
    a14 = v28[40];
    v36 = v28[32];
    v37 = v28[29];
    OUTLINED_FUNCTION_29_2();
    v38 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_2();
    v39 = swift_slowAlloc();
    a16 = v39;
    *v38 = 136315138;
    v40 = sub_227A72F7C();
    v42 = sub_227A46730(v40, v41, &a16);

    *(v38 + 4) = v42;
    v31 = &qword_27D7DC000;
    _os_log_impl(&dword_227904000, v32, v33, "Failed to sleep %s waiting for leader election responses.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();

    a13(v36, v37);
  }

  else
  {
    v43 = v28[39];
    v44 = v28[32];
    v45 = v28[29];

    v43(v44, v45);
  }

  v46 = v28[29];
  OUTLINED_FUNCTION_48_1(&qword_27D7DD358, &unk_227AA3BF0, v28[38]);
  v47 = OUTLINED_FUNCTION_17_3();
  if (__swift_getEnumTagSinglePayload(v47, v48, v46) == 1)
  {
    sub_227A04918(v28[35], &qword_27D7DD358, &unk_227AA3BF0);
    goto LABEL_15;
  }

  v49 = v28[33];
  v51 = v28[29];
  v50 = v28[30];
  (*(v50 + 32))(v28[32], v28[35], v51);
  sub_227A71C1C();
  OUTLINED_FUNCTION_76();
  v52 = sub_227A71BEC();
  v55 = *(v50 + 8);
  v53 = v50 + 8;
  v54 = v55;
  v28[39] = v55;
  v28[40] = v53 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v55)(v49, v51);
  if ((v52 & 1) == 0)
  {
    v61 = OUTLINED_FUNCTION_54_1();
    v54(v61);
LABEL_15:
    v62 = v28[29];
    OUTLINED_FUNCTION_48_1(&qword_27D7DD358, &unk_227AA3BF0, v28[38]);
    v63 = OUTLINED_FUNCTION_17_3();
    if (__swift_getEnumTagSinglePayload(v63, v64, v62) == 1)
    {
      sub_227A04918(v28[34], &qword_27D7DD358, &unk_227AA3BF0);
    }

    else
    {
      v65 = v28[33];
      v66 = v28[30];
      v67 = v28[29];
      v68 = OUTLINED_FUNCTION_27_2();
      v69(v68);
      sub_227A71C1C();
      OUTLINED_FUNCTION_3_8();
      sub_227A34740(v70, v71, MEMORY[0x277CC9590]);
      v72 = sub_227A7247C();
      v73 = *(v66 + 8);
      v73(v65, v67);
      if ((v72 & 1) == 0)
      {
        if (v31[156] != -1)
        {
          OUTLINED_FUNCTION_0_15();
          swift_once();
        }

        OUTLINED_FUNCTION_104(v100, qword_27D7DE210);
        v74 = sub_227A7226C();
        sub_227A7289C();
        v75 = OUTLINED_FUNCTION_20_1();
        if (os_log_type_enabled(v75, v76))
        {
          OUTLINED_FUNCTION_28_0();
          v77 = swift_slowAlloc();
          OUTLINED_FUNCTION_36_1(v77);
          OUTLINED_FUNCTION_10_4();
          _os_log_impl(v78, v79, v80, v81, v82, 2u);
          OUTLINED_FUNCTION_13_2();
          MEMORY[0x22AAA1930]();
        }

        v83 = v28[38];
        v84 = v28[36];
        a9 = v28[35];
        a10 = v28[34];
        a11 = v28[33];
        a12 = v28[32];
        a13 = v28[28];
        a14 = v28[25];
        v100 = v28[24];
        v85 = v28[21];

        OUTLINED_FUNCTION_11_6();
        sub_227A346D0(v84, v85 + v83);
        swift_endAccess();
        sub_227A326B4();
        OUTLINED_FUNCTION_95_0();
        v86 = swift_allocError();
        OUTLINED_FUNCTION_47_1(v86, v87);
        OUTLINED_FUNCTION_95_0();
        v88 = swift_allocError();
        *v89 = v83;
        v89[1] = 0;
        OUTLINED_FUNCTION_2_11(v88, v89);
        swift_willThrow();
        v90 = OUTLINED_FUNCTION_82();
        (v73)(v90);

        OUTLINED_FUNCTION_41();
        goto LABEL_25;
      }

      v73(v28[31], v28[29]);
    }

    OUTLINED_FUNCTION_15_5();

    OUTLINED_FUNCTION_41();
LABEL_25:
    OUTLINED_FUNCTION_106_0();

    return v92(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, v100, a16, a17, a18, a19, a20);
  }

  v56 = v28[21];
  if (sub_227A30830())
  {
    OUTLINED_FUNCTION_5_6();
    sub_227A346D0(v56, v52 + v53);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_16_4();
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_106_0();

  return MEMORY[0x2822009F8](v57, v58, v59);
}

uint64_t sub_227A31E24()
{
  v2 = v1;
  v3 = sub_227A4BBE8();
  swift_beginAccess();
  if (v3 != *(*(v0 + 152) + 16))
  {
    if (qword_27D7DC4E0 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_21;
  }

  v62 = sub_227A32DC8(v4);
  sub_227A33218(&v62, sub_227A33A74, sub_227A3348C);
  if (v1)
  {

    __break(1u);
    return result;
  }

  v5 = v62;
  if (qword_27D7DC4E0 != -1)
  {
    OUTLINED_FUNCTION_0_15();
    swift_once();
  }

  v6 = sub_227A7227C();
  __swift_project_value_buffer(v6, qword_27D7DE210);

  v7 = sub_227A7226C();
  v8 = sub_227A728AC();

  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_29_2();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_55_2();
    v10 = swift_slowAlloc();
    v62 = v10;
    *v9 = 136315138;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD440, &unk_227AA40B0);
    v12 = MEMORY[0x22AA9FF60](v5, v11);
    v14 = sub_227A46730(v12, v13, &v62);

    *(v9 + 4) = v14;
    OUTLINED_FUNCTION_23_1();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAA1930]();
    v20 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v20);
  }

  v21 = v5[2];
  v22 = (v5 + 6);
  v23 = v21 + 1;
  do
  {
    if (!--v23)
    {

      v42 = sub_227A7226C();
      sub_227A728AC();
      v45 = OUTLINED_FUNCTION_20_1();
      if (os_log_type_enabled(v45, v46))
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v24 = v22 + 3;
    v25 = *v22;
    v26 = *v22 < 0.0;
    v22 += 3;
  }

  while (v26);
  v27 = *(v24 - 4);
  v61 = *(v24 - 5);

  v28 = 0;
  v29 = MEMORY[0x277D84F90];
LABEL_11:
  v30 = 3 * v28;
  while (1)
  {
    if (v21 == v28)
    {
      if (v29[2] == 1)
      {

        v56 = sub_227A7226C();
        v57 = sub_227A7289C();

        if (!os_log_type_enabled(v56, v57))
        {

          return v61;
        }

        OUTLINED_FUNCTION_29_2();
        v58 = swift_slowAlloc();
        OUTLINED_FUNCTION_55_2();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v58 = 136315138;

        v54 = v61;
      }

      else
      {
        v62 = v29;

        sub_227A33218(&v62, sub_227A3350C, sub_227A333B0);

        if (!v62[2])
        {

          return 0;
        }

        v54 = v62[4];
        v27 = v62[5];
        swift_bridgeObjectRetain_n();

        v56 = sub_227A7226C();
        v57 = sub_227A7289C();

        if (!os_log_type_enabled(v56, v57))
        {
LABEL_35:

          return v54;
        }

        OUTLINED_FUNCTION_29_2();
        v58 = swift_slowAlloc();
        OUTLINED_FUNCTION_55_2();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v58 = 136315138;
      }

      v60 = sub_227A46730(v54, v27, &v62);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_227904000, v56, v57, "Best host player handle is %s.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      OUTLINED_FUNCTION_13_2();
      MEMORY[0x22AAA1930]();
      goto LABEL_35;
    }

    if (v28 >= v5[2])
    {
      break;
    }

    ++v28;
    v31 = v30 * 8 + 24;
    v32 = *&v5[v30 + 6];
    v30 += 3;
    if (v32 == v25)
    {
      v33 = *(v5 + v31 + 8);
      v34 = *(v5 + v31 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v29;
      v36 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_227A204E8(0, v29[2] + 1, 1);
        v29 = v62;
      }

      v38 = v29[2];
      v37 = v29[3];
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        sub_227A204E8(v37 > 1, v38 + 1, 1);
        v39 = v38 + 1;
        v29 = v62;
      }

      v29[2] = v39;
      v40 = &v29[3 * v38];
      *(v40 + 4) = v33;
      *(v40 + 5) = v34;
      v40[6] = v32;
      v2 = v36;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_39:
  OUTLINED_FUNCTION_0_15();
  swift_once();
LABEL_21:
  v41 = sub_227A7227C();
  __swift_project_value_buffer(v41, qword_27D7DE210);
  v42 = sub_227A7226C();
  sub_227A728BC();
  v43 = OUTLINED_FUNCTION_20_1();
  if (os_log_type_enabled(v43, v44))
  {
LABEL_24:
    OUTLINED_FUNCTION_28_0();
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_41_2(v47);
    OUTLINED_FUNCTION_23_1();
    _os_log_impl(v48, v49, v50, v51, v52, 2u);
    v53 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x22AAA1930](v53);
  }

LABEL_25:

  return 0;
}

uint64_t sub_227A32410()
{
  v3 = sub_227A31E24();
  if (!v1)
  {
    if (v4)
    {
      v2 = v3;
      *(v0 + 136) = v3;
      *(v0 + 144) = v4;
    }

    else
    {
      sub_227A326B4();
      OUTLINED_FUNCTION_95_0();
      v6 = swift_allocError();
      *v7 = 0;
      sub_227A1387C();
      OUTLINED_FUNCTION_95_0();
      v8 = swift_allocError();
      *v9 = v6;
      v9[1] = 0;
      OUTLINED_FUNCTION_2_11(v8, v9);
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t sub_227A324C0()
{

  sub_227A04918(v0 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_scoreQueryReceivingTimeoutDate, &qword_27D7DD358, &unk_227AA3BF0);
  sub_22790D450(v0 + OBJC_IVAR____TtC20GameCenterFoundation21FastSyncLeaderElector_support);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_227A32528()
{
  sub_227A324C0();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for FastSyncLeaderElector(uint64_t a1)
{
  result = qword_27D7DD428;
  if (!qword_27D7DD428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227A325A8(uint64_t a1)
{
  sub_227A2A954(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_227A326B4()
{
  result = qword_27D7DD438;
  if (!qword_27D7DD438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD438);
  }

  return result;
}

uint64_t sub_227A32708()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_24(v3);
  *v4 = v5;
  v4[1] = sub_227A327F4;

  return v7(v1);
}

uint64_t sub_227A327F4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_36();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return v3();
}

uint64_t sub_227A328D8()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_227A72BEC();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_34(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x2822009F8](sub_227A329CC, 0, 0);
}

uint64_t sub_227A329CC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_227A72BFC();
  OUTLINED_FUNCTION_19_2();
  v7 = sub_227A34740(v5, v6, MEMORY[0x277D85930]);
  sub_227A72EBC();
  OUTLINED_FUNCTION_18_3();
  sub_227A34740(v8, v9, MEMORY[0x277D85920]);
  sub_227A72C0C();
  v10 = *(v3 + 8);
  v0[12] = v10;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_227A32B3C;
  v12 = v0[11];

  return MEMORY[0x2822008C8](v12, v0 + 2, v4, v7);
}

uint64_t sub_227A32B3C()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_36();
  v3 = v2;
  OUTLINED_FUNCTION_32();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_7();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227A32CE0, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_41();

    return v11();
  }
}

uint64_t sub_227A32CE0()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_41();

  return v0();
}

void *sub_227A32D44(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD448, &unk_227AA40C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 24);
  return v4;
}

void *sub_227A32DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_227A32D44(*(a1 + 16), 0);
  v4 = sub_227A3455C(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_2279F34F8(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_227A32E84(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_2279FD9FC((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_1_8();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_227A32F74(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_2();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v16 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD478, &qword_227AA4128);
  v11 = sub_227A7212C();
  OUTLINED_FUNCTION_34(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v17 = _swift_stdlib_malloc_size(v16);
  if (!v13)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v17 - v15 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_23;
  }

  v16[2] = v9;
  v16[3] = 2 * ((v17 - v15) / v13);
LABEL_18:
  v19 = *(sub_227A7212C() - 8);
  if (a1)
  {
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    sub_2279FDA1C(a4 + v20, v9, v16 + v20);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_227A33110(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_2();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD448, &unk_227AA40C0);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      *(v11 + 16) = v9;
      *(v11 + 24) = 2 * ((v12 - 32) / 24);
      if (a1)
      {
LABEL_12:
        sub_2279FDAD0((a4 + 32), v9, (v11 + 32));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD440, &unk_227AA40B0);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    OUTLINED_FUNCTION_1_8();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_227A33218(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227A346BC(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_227A3329C(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_227A3329C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_227A72E0C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD440, &unk_227AA40B0);
        v10 = sub_227A726CC();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_227A333B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_227A72E5C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = v12[3];
        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227A3348C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 - 1) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v9;
        v11 = *(v9 + 1);
        *v9 = *(v9 - 3);
        v9[2] = *(v9 - 1);
        *(v9 - 2) = v11;
        *(v9 - 1) = v7;
        *(v9 - 3) = v10;
        v9 -= 3;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 24;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_227A3350C(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v97 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_227A72E5C();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_227A72E5C()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v30 = *v26;
              *v25 = *(v26 - 1);
              v25[2] = v30;
              *(v26 - 2) = v27;
              *(v26 - 1) = v28;
              *v26 = v29;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v7 < v31)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return;
          }

          if (v7 != v32)
          {
            v33 = *a3;
            v34 = *a3 + 24 * v7 - 24;
            v94 = v9;
            v35 = v9 - v7;
            do
            {
              v36 = (v33 + 24 * v7);
              v37 = *v36;
              v38 = v36[1];
              v39 = v35;
              v40 = v34;
              do
              {
                v41 = v37 == *v40 && v38 == v40[1];
                if (v41 || (sub_227A72E5C() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_125;
                }

                v37 = v40[3];
                v38 = v40[4];
                v42 = v40[5];
                v43 = v40[2];
                *(v40 + 3) = *v40;
                v40[5] = v43;
                *v40 = v37;
                v40[1] = v38;
                v40[2] = v42;
                v40 -= 3;
              }

              while (!__CFADD__(v39++, 1));
              ++v7;
              v34 += 24;
              --v35;
            }

            while (v7 != v32);
            v7 = v32;
            v9 = v94;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2279FD91C();
        v8 = v89;
      }

      v45 = v8[2];
      v46 = v45 + 1;
      if (v45 >= v8[3] >> 1)
      {
        sub_2279FD91C();
        v8 = v90;
      }

      v8[2] = v46;
      v47 = v8 + 4;
      v48 = &v8[2 * v45 + 4];
      *v48 = v9;
      v48[1] = v7;
      v95 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v45)
      {
        v93 = v8 + 4;
        while (1)
        {
          v49 = v46 - 1;
          v50 = &v47[2 * v46 - 2];
          v51 = &v8[2 * v46];
          if (v46 >= 4)
          {
            break;
          }

          if (v46 == 3)
          {
            v52 = v8[4];
            v53 = v8[5];
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
LABEL_70:
            if (v55)
            {
              goto LABEL_110;
            }

            v67 = *v51;
            v66 = v51[1];
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_113;
            }

            v71 = v50[1];
            v72 = v71 - *v50;
            if (__OFSUB__(v71, *v50))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v69, v72))
            {
              goto LABEL_118;
            }

            if (v69 + v72 >= v54)
            {
              if (v54 < v72)
              {
                v49 = v46 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v46 < 2)
          {
            goto LABEL_112;
          }

          v74 = *v51;
          v73 = v51[1];
          v62 = __OFSUB__(v73, v74);
          v69 = v73 - v74;
          v70 = v62;
LABEL_85:
          if (v70)
          {
            goto LABEL_115;
          }

          v76 = *v50;
          v75 = v50[1];
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_117;
          }

          if (v77 < v69)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v49 - 1 >= v46)
          {
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v81 = &v47[2 * v49 - 2];
          v82 = *v81;
          v83 = v49;
          v84 = &v47[2 * v49];
          v85 = v84[1];
          sub_227A340D8((*a3 + 24 * *v81), (*a3 + 24 * *v84), *a3 + 24 * v85, v95);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v85 < v82)
          {
            goto LABEL_105;
          }

          v86 = v8;
          v87 = v8[2];
          if (v83 > v87)
          {
            goto LABEL_106;
          }

          *v81 = v82;
          v81[1] = v85;
          if (v83 >= v87)
          {
            goto LABEL_107;
          }

          v46 = v87 - 1;
          memmove(v84, v84 + 2, 16 * (v87 - 1 - v83));
          v86[2] = v87 - 1;
          v88 = v87 > 2;
          v8 = v86;
          v5 = 0;
          v47 = v93;
          if (!v88)
          {
            goto LABEL_99;
          }
        }

        v56 = &v47[2 * v46];
        v57 = *(v56 - 8);
        v58 = *(v56 - 7);
        v62 = __OFSUB__(v58, v57);
        v59 = v58 - v57;
        if (v62)
        {
          goto LABEL_108;
        }

        v61 = *(v56 - 6);
        v60 = *(v56 - 5);
        v62 = __OFSUB__(v60, v61);
        v54 = v60 - v61;
        v55 = v62;
        if (v62)
        {
          goto LABEL_109;
        }

        v63 = v51[1];
        v64 = v63 - *v51;
        if (__OFSUB__(v63, *v51))
        {
          goto LABEL_111;
        }

        v62 = __OFADD__(v54, v64);
        v65 = v54 + v64;
        if (v62)
        {
          goto LABEL_114;
        }

        if (v65 >= v59)
        {
          v79 = *v50;
          v78 = v50[1];
          v62 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v54 < v80)
          {
            v49 = v46 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v97 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_227A33F9C(&v97, *result, a3, sub_227A340D8);
LABEL_103:
}

void sub_227A33A74(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v84 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 24 * v9 + 16);
        v11 = *a3 + 24 * v7;
        v12 = 24 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 64);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 3;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 24 * v6 - 8;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = v24[2];
                v29 = *v25;
                *v24 = *(v25 - 1);
                v24[2] = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 24;
              v12 += 24;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 24 * v9;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 24 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 - 1) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *v35;
                v37 = *(v35 + 1);
                *v35 = *(v35 - 3);
                v35[2] = *(v35 - 1);
                *(v35 - 2) = v37;
                *(v35 - 1) = v33;
                *(v35 - 3) = v36;
                v35 -= 3;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 24;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v86 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2279FD91C();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_2279FD91C();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v7;
      v42[1] = v86;
      v87 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_56:
            if (v49)
            {
              goto LABEL_96;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_99;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_104;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v40 < 2)
          {
            goto LABEL_98;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_71:
          if (v64)
          {
            goto LABEL_101;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_103;
          }

          if (v71 < v63)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_227A342A0((*a3 + 24 * *v75), (*a3 + 24 * *v77), *a3 + 24 * v78, v87);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v78 < v76)
          {
            goto LABEL_91;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_92;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_93;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          v5 = 0;
          if (!v81)
          {
            goto LABEL_85;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_94;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_95;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_97;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_100;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_105;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v86;
      a4 = v84;
      if (v86 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_227A33F9C(&v89, *result, a3, sub_227A342A0);
LABEL_89:
}

uint64_t sub_227A33F9C(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(uint64_t, unint64_t, int64_t, uint64_t))
{
  i = a1;
  v17 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_227A34448(v17);
    v17 = result;
  }

  v13 = i;
  *i = v17;
  v7 = (v17 + 16);
  for (i = *(v17 + 16); ; *v7 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v13 = v17;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v8 = (v17 + 16 * i);
    v9 = *v8;
    v10 = &v7[2 * i];
    v11 = v10[1];
    a4(*a3 + 24 * *v8, *a3 + 24 * *v10, *a3 + 24 * v11, a2);
    if (v4)
    {
      goto LABEL_10;
    }

    if (v11 < v9)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v7)
    {
      goto LABEL_12;
    }

    *v8 = v9;
    v8[1] = v11;
    v12 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v10, v10 + 2, 16 * v12);
  }

  *v13 = v17;
  __break(1u);
  return result;
}

uint64_t sub_227A340D8(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2279FDAD0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_227A72E5C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_2279FDAD0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_227A72E5C() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

uint64_t sub_227A342A0(char *a1, char *a2, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_2279FDAD0(a1, (a2 - a1) / 24, a4);
    v10 = &v4[3 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (v4[2] >= v6[2])
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 3;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 3;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = v12[2];
    *v7 = v14;
    goto LABEL_13;
  }

  sub_2279FDAD0(a2, (a3 - a2) / 24, a4);
  v10 = &v4[3 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 3;
      v13 = v5 + 24 == v6;
      v6 -= 3;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = v17[2];
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 3);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 3;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[3 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

char *sub_227A3445C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC880, &unk_227AA0E20);
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
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_227A3455C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227A346D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD358, &unk_227AA3BF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A34740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227A34788()
{
  OUTLINED_FUNCTION_56();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_24(v8);
  *v9 = v10;
  v9[1] = sub_2279E5A6C;

  return sub_227A2F450(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_227A34844(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227A348AC(uint64_t a1)
{
  ScoresResponseActionMessage = type metadata accessor for QueryScoresResponseActionMessage(0);
  (*(*(ScoresResponseActionMessage - 8) + 8))(a1, ScoresResponseActionMessage);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FastSyncLeaderElector.ErrorState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227A349E8()
{
  result = qword_27D7DD480[0];
  if (!qword_27D7DD480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7DD480);
  }

  return result;
}

uint64_t (*OUTLINED_FUNCTION_1_16())()
{
  *(v2 + 136) = v1;
  *(v2 + 144) = v0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 1;
  return sub_227A31194;
}

void OUTLINED_FUNCTION_2_11(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 64;
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  __swift_storeEnumTagSinglePayload(*(v0 + 288), 1, 1, *(v0 + 232));

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_15_5()
{
}

uint64_t OUTLINED_FUNCTION_16_4()
{
  v2 = v0[21];
  v0[41] = *(v2 + 120);
  v0[42] = *(v2 + 128);

  return MEMORY[0x2822008D8]();
}

void OUTLINED_FUNCTION_25_2()
{
}

uint64_t OUTLINED_FUNCTION_32_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_33_2()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  sub_227A203A8(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_45_1(uint64_t a1)
{

  return sub_227A7247C();
}

uint64_t OUTLINED_FUNCTION_46_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_47_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return sub_227A1387C();
}

uint64_t OUTLINED_FUNCTION_48_1@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_227A34844(v3 + a3, v4, a1, a2);
}

id static EntitledContextProvider.getCurrentDeviceName()()
{
  v0 = sub_227A34FC8(0xD000000000000040, 0x8000000227A995C0, 0xD000000000000016, 0x8000000227A995A0);
  if (v0 == 2 || (v0 & 1) == 0)
  {
    result = [objc_opt_self() currentDevice];
    if (result)
    {

      return sub_227A35560(result);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    return sub_227A34E2C();
  }

  return result;
}

void *sub_227A34E2C()
{
  result = MGGetStringAnswer();
  if (result)
  {
    v1 = result;
    v2 = sub_227A724EC();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_227A34F34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EntitledContextProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A34FC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = SecTaskCreateFromSelf(0);
  if (v8)
  {
    v9 = v8;
    v10 = sub_227A35158(MEMORY[0x277D839B0], a1, a2, a3, a4);

    return v10;
  }

  else
  {
    if (qword_280B551E0 != -1)
    {
      swift_once();
    }

    v12 = sub_227A7227C();
    __swift_project_value_buffer(v12, qword_280B551E8);

    v13 = sub_227A7226C();
    v14 = sub_227A728BC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_227A46730(a3, a4, &v17);
      _os_log_impl(&dword_227904000, v13, v14, "Failed to create task for: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x22AAA1930](v16, -1, -1);
      MEMORY[0x22AAA1930](v15, -1, -1);
    }

    return 2;
  }
}

uint64_t sub_227A35158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_227909CE8(a2, a3, a4, a5);
  if (!v7)
  {
    return 2;
  }

  v8 = v7;
  if (qword_280B551E0 != -1)
  {
    swift_once();
  }

  v9 = sub_227A7227C();
  __swift_project_value_buffer(v9, qword_280B551E8);
  swift_unknownObjectRetain();
  v10 = sub_227A7226C();
  v11 = sub_227A728AC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v8;
    v34 = v13;
    *v12 = 136315138;
    swift_unknownObjectRetain();
    v14 = sub_227A7251C();
    v16 = sub_227A46730(v14, v15, &v34);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_227904000, v10, v11, "SecTask: rawValue = %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AAA1930](v13, -1, -1);
    MEMORY[0x22AAA1930](v12, -1, -1);
  }

  v34 = v8;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {

    v18 = sub_227A7226C();
    v26 = sub_227A728BC();

    if (os_log_type_enabled(v18, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_227A46730(a4, a5, &v34);
      *(v27 + 12) = 2080;
      v29 = sub_227A72FBC();
      v31 = sub_227A46730(v29, v30, &v34);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_227904000, v18, v26, "Failed to cast entitlement for: %s to: %s", v27, 0x16u);
      v17 = 2;
      swift_arrayDestroy();
      MEMORY[0x22AAA1930](v28, -1, -1);
      v25 = v27;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
    return 2;
  }

  v17 = v33;
  swift_unknownObjectRetain();
  v18 = sub_227A7226C();
  v19 = sub_227A728AC();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(v18, v19))
  {
    swift_unknownObjectRelease();

    return v17;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v34 = v21;
  *v20 = 136315138;
  swift_unknownObjectRetain();
  v22 = sub_227A7251C();
  v24 = sub_227A46730(v22, v23, &v34);

  *(v20 + 4) = v24;
  _os_log_impl(&dword_227904000, v18, v19, "SecTask: value = %s", v20, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v21);
  MEMORY[0x22AAA1930](v21, -1, -1);
  v25 = v20;
LABEL_11:
  MEMORY[0x22AAA1930](v25, -1, -1);

  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_227A35560(void *a1)
{
  v2 = [a1 deviceType];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_227A724EC();

  return v3;
}

uint64_t sub_227A355F4(uint64_t a1)
{
  result = swift_checkMetadataState();
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

char *sub_227A356B0()
{
  v1 = *v0;

  OUTLINED_FUNCTION_0_20();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 104)]);
  OUTLINED_FUNCTION_0_20();
  sub_227A359A4(&v0[*(v3 + 112)]);
  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_0_20();

  OUTLINED_FUNCTION_0_20();

  return v0;
}

uint64_t sub_227A35790()
{
  sub_227A356B0();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_227A358DC@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_227A35934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0A8, &qword_227AA3638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227A359A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD0A8, &qword_227AA3638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_227A35A44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1C && *(a1 + 33))
    {
      v2 = *a1 + 27;
    }

    else
    {
      v2 = (*(a1 + 32) & 0x18 | (*(a1 + 32) >> 5)) ^ 0x1F;
      if (v2 >= 0x1B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_227A35A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 28;
    *(result + 8) = 0;
    if (a3 >= 0x1C)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_227A35B18(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD530, &qword_227AA4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v86 - v5;
  v93 = sub_227A71D2C();
  OUTLINED_FUNCTION_10_5();
  v91 = v7;
  MEMORY[0x28223BE20](v8);
  v10 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD538, &unk_227AA4618);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v86 - v15;
  v17 = sub_227A71D4C();
  OUTLINED_FUNCTION_10_5();
  v92 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v86 - v23;
  OUTLINED_FUNCTION_10_5();
  v26 = MEMORY[0x28223BE20](v25);
  (*(v28 + 16))(v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v29 = v94;
  v30 = v95;
  v31 = v96;
  v32 = v97;
  v33 = v98;
  if ((v98 & 0xE0) != 0x60)
  {
    v37 = v96;
    v38 = v97;
    goto LABEL_8;
  }

  v89 = v6;
  v90 = v94;
  v88 = v10;
  v34 = v98 & 0x1F;
  v35 = v98;
  v36 = v95;

  sub_227A3715C(v31, v32, v34);

  if (v31 != 1)
  {
    sub_227A20464(v31, v32, v34);
    v29 = v90;
    v30 = v36;
    v37 = v31;
    v38 = v32;
    v33 = v35;
    goto LABEL_8;
  }

  v86[1] = v36;
  v87 = v35;
  if (v34)
  {
    sub_227A20464(1, v32, v34);
    v29 = OUTLINED_FUNCTION_0_21();
LABEL_8:
    sub_227A203A8(v29, v30, v37, v38, v33);
    goto LABEL_9;
  }

  v94 = v32;
  v41 = OUTLINED_FUNCTION_1_17();
  sub_227A3715C(v41, v42, v43);
  v44 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    v45 = v92;
    (*(v92 + 32))(v24, v16, v17);
    (*(v45 + 104))(v21, *MEMORY[0x277CFD148], v17);
    v39 = sub_227A71D3C();
    v46 = OUTLINED_FUNCTION_1_17();
    sub_227A20464(v46, v47, v48);
    v49 = OUTLINED_FUNCTION_1_17();
    sub_227A20464(v49, v50, v51);
    v52 = OUTLINED_FUNCTION_0_21();
    sub_227A203A8(v52, v53, v54, v55, v56);
    v57 = *(v45 + 8);
    v57(v21, v17);
    v57(v24, v17);
    return v39 & 1;
  }

  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  sub_227A04918(v16, &qword_27D7DD538, &unk_227AA4618);
  v94 = v32;
  v58 = v32;
  v59 = v89;
  v60 = v93;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
    v61 = v91;
    (*(v91 + 32))(v13, v59, v60);
    v62 = v88;
    (*(v61 + 104))(v88, *MEMORY[0x277CFD140], v60);
    v39 = sub_227A71D1C();
    v63 = OUTLINED_FUNCTION_1_17();
    sub_227A20464(v63, v64, v65);
    v66 = OUTLINED_FUNCTION_1_17();
    sub_227A20464(v66, v67, v68);
    v69 = OUTLINED_FUNCTION_0_21();
    sub_227A203A8(v69, v70, v71, v72, v73);
    v74 = *(v61 + 8);
    v74(v62, v60);
    v74(v13, v60);
    return v39 & 1;
  }

  v75 = OUTLINED_FUNCTION_1_17();
  sub_227A20464(v75, v76, v77);
  v78 = OUTLINED_FUNCTION_0_21();
  sub_227A203A8(v78, v79, v80, v81, v82);
  v83 = OUTLINED_FUNCTION_1_17();
  sub_227A20464(v83, v84, v85);
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
  sub_227A04918(v59, &qword_27D7DD530, &qword_227AA4610);
LABEL_9:
  v39 = 0;
  return v39 & 1;
}

unint64_t sub_227A360D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_227A72CFC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_227A3611C(char a1)
{
  result = 0x6C4572656461656CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x724F657461647075;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_227A36204@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227A360D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_227A36234@<X0>(unint64_t *a1@<X8>)
{
  result = sub_227A3611C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_227A36260(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v3 = 0;
    v1 = OUTLINED_FUNCTION_3_9();
    goto LABEL_5;
  }

  if (a1 >> 6 == 1)
  {
    OUTLINED_FUNCTION_2_12();
    sub_227A72B1C();
    OUTLINED_FUNCTION_4_6();
    v1 = OUTLINED_FUNCTION_8_9();
LABEL_5:
    MEMORY[0x22AA9FE40](v1);
    sub_227A72C1C();
    return v3;
  }

  return 0xD000000000000015;
}

void sub_227A36318(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 >> 6)
  {
    if (a1 >> 6 != 1)
    {
      return;
    }

    v1 = a1 & 0x3F;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
  *(swift_allocObject() + 16) = xmmword_227AA00E0;
  OUTLINED_FUNCTION_85();
  v2[4] = 0xD000000000000011;
  v2[5] = v3;
  v4 = 0xEE006E6F69746365;
  v5 = 0x6C4572656461656CLL;
  switch(v1)
  {
    case 1u:
      OUTLINED_FUNCTION_85();
      v5 = 0xD000000000000011;
      break;
    case 2u:
      OUTLINED_FUNCTION_85();
      v5 = 0xD00000000000001CLL;
      break;
    case 3u:
      OUTLINED_FUNCTION_85();
      v5 = 0xD000000000000012;
      break;
    case 4u:
      v4 = 0xEC0000006E696F4ALL;
      v5 = 0x724F657461647075;
      break;
    default:
      break;
  }

  v2[6] = v5;
  v2[7] = v4;
}

uint64_t sub_227A36450(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  switch(a3)
  {
    case 1:
      OUTLINED_FUNCTION_2_12();
      sub_227A72B1C();
      OUTLINED_FUNCTION_4_6();
      v19 = OUTLINED_FUNCTION_3_9();
      goto LABEL_6;
    case 2:
    case 4:
      OUTLINED_FUNCTION_2_12();
      sub_227A72B1C();
      OUTLINED_FUNCTION_4_6();
      v19 = OUTLINED_FUNCTION_8_9();
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_2_12();
      sub_227A72B1C();
      OUTLINED_FUNCTION_4_6();
      v19 = 0x657373654D6C694ELL;
LABEL_6:
      MEMORY[0x22AA9FE40](v19);
      type metadata accessor for GKMatchSendDataMode(0);
      OUTLINED_FUNCTION_9_7(v20, v21, v20, MEMORY[0x277D84698], MEMORY[0x277D846A8], v22, v23, v24, v32, v4);
      sub_227A72C1C();
      MEMORY[0x22AA9FE40](8236, 0xE200000000000000);
      v25 = GKMatchSendDataScope.description.getter(a2);
      MEMORY[0x22AA9FE40](v25);

      return v34;
    case 5:
      v34 = 0;
      MEMORY[0x22AA9FE40](0x6970696365526F4ELL, 0xED0000203A746E65);
      type metadata accessor for GKMatchSendDataMode(0);
      OUTLINED_FUNCTION_9_7(v26, v27, v26, MEMORY[0x277D84698], MEMORY[0x277D846A8], v28, v29, v30, v32, v4);
      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_2_12();
      sub_227A72B1C();
      OUTLINED_FUNCTION_4_6();
      MEMORY[0x22AA9FE40](0x6C616E7265746E49, 0xEF203A726F727245);
      type metadata accessor for GKMatchSendDataMode(0);
      OUTLINED_FUNCTION_9_7(v5, v6, v5, v7, v8, v9, v10, v11, v32, v4);
      sub_227A72C1C();
      MEMORY[0x22AA9FE40](8236, 0xE200000000000000);
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
      OUTLINED_FUNCTION_9_7(v12, v13, v12, v14, v15, v16, v17, v18, v33, a2);
LABEL_8:
      sub_227A72C1C();
      return v34;
  }
}

uint64_t sub_227A3668C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC658, &qword_227AA4120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227AA00E0;
  OUTLINED_FUNCTION_85();
  v7[4] = 0xD000000000000015;
  v7[5] = v8;
  v9 = 0xE800000000000000;
  v10 = 0x656C6261696C6572;
  v11 = 0xE700000000000000;
  v12 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v12 = 0x6261696C65726E75;
    v11 = 0xEA0000000000656CLL;
  }

  if (a1)
  {
    v10 = v12;
    v9 = v11;
  }

  v7[6] = v10;
  v7[7] = v9;
  if ((v5 - 1) <= 3)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227AA00F0;
    *(inited + 32) = GKMatchSendDataScope.description.getter(a2);
    *(inited + 40) = v14;
    sub_227A36F48(inited);
  }

  return v6;
}

uint64_t sub_227A367C0(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC878, &unk_227AA0E10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227AA00F0;
  *(v3 + 32) = a2;
  v5 = a2;
  return v3;
}

uint64_t sub_227A36858()
{
  v0 = sub_227A719AC();
  __swift_allocate_value_buffer(v0, qword_27D7DD508);
  __swift_project_value_buffer(v0, qword_27D7DD508);
  return sub_227A7199C();
}

uint64_t sub_227A368B0()
{
  sub_227A36964();
  if (qword_27D7DC010 != -1)
  {
    swift_once();
  }

  v0 = sub_227A719AC();
  __swift_project_value_buffer(v0, qword_27D7DD508);
  sub_2279FF084();
  v1 = sub_227A729CC();

  return v1;
}

uint64_t sub_227A36964()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  switch(v4 >> 5)
  {
    case 1u:
      sub_227A72B1C();

      strcpy(v12, "IllegalState: ");
      HIBYTE(v12[1]) = -18;
      v10 = sub_227A36260(v1);
      goto LABEL_15;
    case 2u:
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_227A72B1C();
      v5 = 0xD000000000000015;
      v6 = 0x8000000227A996F0;
      goto LABEL_5;
    case 3u:
      v7 = v0[3];

      sub_227A72B1C();

      v12[0] = 0xD000000000000012;
      v12[1] = 0x8000000227A996D0;
      if (v2)
      {
        v8 = v1;
      }

      else
      {
        v8 = 0;
      }

      if (v2)
      {
        v9 = v2;
      }

      else
      {
        v9 = 0xE000000000000000;
      }

      MEMORY[0x22AA9FE40](v8, v9);

      MEMORY[0x22AA9FE40](8236, 0xE200000000000000);
      v10 = sub_227A36450(v3, v7, v4 & 0x1F);
LABEL_15:
      MEMORY[0x22AA9FE40](v10);

      return v12[0];
    case 4u:
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_227A72B1C();
      MEMORY[0x22AA9FE40](0xD000000000000019, 0x8000000227A996B0);
      MEMORY[0x22AA9FE40](v1, v2);
      MEMORY[0x22AA9FE40](8236, 0xE200000000000000);
      goto LABEL_6;
    default:
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      sub_227A72B1C();
      v5 = 0x6C616E7265746E49;
      v6 = 0xEF203A726F727245;
LABEL_5:
      MEMORY[0x22AA9FE40](v5, v6);
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
      sub_227A72C1C();
      return v12[0];
  }
}

uint64_t sub_227A36BDC()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  switch(v3 >> 5)
  {
    case 1u:
      sub_227A36E08();
      v4 = swift_allocError();
      *v5 = v1;
      goto LABEL_6;
    case 3u:
      v11 = *(v0 + 24);
      v12 = v3 & 0x1F;
      sub_227A37108();
      v4 = swift_allocError();
      *v13 = v2;
      *(v13 + 8) = v11;
      *(v13 + 16) = v12;
      sub_227A3715C(v2, v11, v12);
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC878, &unk_227AA0E10);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_227AA00F0;
      *(v14 + 32) = v4;
      swift_getErrorValue();
      v15 = v4;
      v16 = sub_227A138F8(v21, v22);
      v20 = v14;
      sub_227A3701C(v16);
      v10 = v4;
      goto LABEL_7;
    case 4u:
      v1 = *(v0 + 16);
      goto LABEL_4;
    default:
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC878, &unk_227AA0E10);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_227AA00F0;
      *(v6 + 32) = v1;
      swift_getErrorValue();
      v7 = v1;
      v8 = v1;
      v9 = sub_227A138F8(v18, v19);
      v20 = v6;
      sub_227A3701C(v9);
      v10 = v1;
LABEL_7:

      return v20;
  }
}

unint64_t sub_227A36DE0(uint64_t a1)
{
  result = sub_227A1387C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227A36E08()
{
  result = qword_27D7DD520;
  if (!qword_27D7DD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD520);
  }

  return result;
}

uint64_t sub_227A36E5C(uint64_t a1)
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

  result = sub_227A37170(result, 1, sub_2279FD654);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC8E8, &qword_227AA3620);
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

uint64_t sub_227A36F48(uint64_t a1)
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

  result = sub_227A37170(result, 1, sub_2279FD74C);
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

uint64_t sub_227A3701C(uint64_t a1)
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

  result = sub_227A37170(result, 1, sub_2279FD824);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
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

unint64_t sub_227A37108()
{
  result = qword_27D7DD528;
  if (!qword_27D7DD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD528);
  }

  return result;
}

id sub_227A3715C(int a1, id a2, char a3)
{
  if (!a3)
  {
    return a2;
  }

  return result;
}

uint64_t sub_227A37170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

_BYTE *sub_227A371E8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_227A372D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 17))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 5)
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

uint64_t sub_227A37314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_227A3736C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1E)
  {
    if (a2 + 226 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 226) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 227;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v5 >= 0x1D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *sub_227A37404(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1D)
  {
    v6 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
          *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227A374DC(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_227A374F8(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 7 | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 6) & 7 | 0x80;
  }

  *result = v2;
  return result;
}

unint64_t sub_227A37530(uint64_t a1)
{
  result = sub_227A36E08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227A3755C()
{
  result = qword_27D7DD540;
  if (!qword_27D7DD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DD540);
  }

  return result;
}

uint64_t _s20GameCenterFoundation23EntitledContextProviderC29hasPrivateContactsEntitlementSbyFZ_0()
{
  v0 = OUTLINED_FUNCTION_5_8(0xD00000000000001ALL, "ContactsEntitlement");
  if (v0 == 2 || (v0 & 1) == 0)
  {
    v1 = OUTLINED_FUNCTION_5_8(0xD00000000000001CLL, "com.apple.private.contacts");
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

unint64_t sub_227A37730(uint64_t a1, uint64_t a2)
{
  v2 = sub_227A72CFC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_227A3777C(char a1)
{
  result = 0xD000000000000040;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_2_13(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_227A46730(v2, v1, va);
}

uint64_t OUTLINED_FUNCTION_5_8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_227A34FC8(a1, a2 | 0x8000000000000000, 0xD000000000000013, v2 | 0x8000000000000000);
}

id MetricsReportingSessionDelegate.__allocating_init(reporter:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___GKMetricsReportingSessionDelegate_reporter] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MetricsReportingSessionDelegate.init(reporter:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___GKMetricsReportingSessionDelegate_reporter] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall MetricsReportingSessionDelegate.urlSession(_:task:didFinishCollecting:)(NSURLSession _, NSURLSessionTask task, NSURLSessionTaskMetrics didFinishCollecting)
{
  v5 = sub_227A71ADC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_0_22();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD560, &qword_227AA48E8);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_0_22();
  v19 = v17 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = &v49 - v22;
  if ([(objc_class *)task.super.isa _gkHasValidServerURLRequest])
  {
    sub_227A3861C();
    v24 = task.super.isa;
    v25 = sub_227A37EF0(v24, didFinishCollecting.super.isa);
    v26 = [objc_opt_self() loadURLEventPromiseWithContext_];
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v24;
    aBlock[4] = sub_227A38660;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_227A2E088;
    aBlock[3] = &block_descriptor_8;
    v29 = _Block_copy(aBlock);
    v30 = v24;

    [v26 addSuccessBlock_];
    _Block_release(v29);

    return;
  }

  v51 = v6;
  if (qword_280B551E0 != -1)
  {
    swift_once();
  }

  v31 = sub_227A7227C();
  __swift_project_value_buffer(v31, qword_280B551E8);
  v32 = task.super.isa;
  v52 = sub_227A7226C();
  v33 = sub_227A728AC();

  if (os_log_type_enabled(v52, v33))
  {
    v34 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v34 = 136315138;
    v35 = [(objc_class *)v32 currentRequest];
    if (v35)
    {
      v36 = v35;
      sub_227A7190C();

      v37 = sub_227A7192C();
      v38 = 0;
    }

    else
    {
      v37 = sub_227A7192C();
      v38 = 1;
    }

    __swift_storeEnumTagSinglePayload(v19, v38, 1, v37);
    sub_227A385AC(v19, v23);
    sub_227A7192C();
    if (__swift_getEnumTagSinglePayload(v23, 1, v37) == 1)
    {
      v40 = 7104878;
      v41 = &qword_27D7DD560;
      v42 = &qword_227AA48E8;
      v43 = v23;
    }

    else
    {
      sub_227A7191C();
      (*(*(v37 - 8) + 8))(v23, v37);
      sub_227A2B7B4(v15, v12);
      if (__swift_getEnumTagSinglePayload(v12, 1, v5) != 1)
      {
        v45 = v51;
        (*(v51 + 32))(v8, v12, v5);
        v40 = sub_227A71A9C();
        v44 = v46;
        (*(v45 + 8))(v8, v5);
        sub_227A04918(v15, &qword_27D7DD3A0, &qword_227AA48E0);
        goto LABEL_18;
      }

      v40 = 7104878;
      v41 = &qword_27D7DD3A0;
      v42 = &qword_227AA48E0;
      v43 = v15;
    }

    sub_227A04918(v43, v41, v42);
    v44 = 0xE300000000000000;
LABEL_18:
    v47 = sub_227A46730(v40, v44, aBlock);

    *(v34 + 4) = v47;
    _os_log_impl(&dword_227904000, v52, v33, "GKMetricsReportingSessionDelegate ignoring request with URL: %s)", v34, 0xCu);
    v48 = v50;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x22AAA1930](v48, -1, -1);
    MEMORY[0x22AAA1930](v34, -1, -1);

    return;
  }

  v39 = v52;
}

id sub_227A37EF0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTask:a1 metrics:a2];

  return v4;
}

void sub_227A37F4C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR___GKMetricsReportingSessionDelegate_reporter);
    AMSMetricsLoadURLEvent.metricsFields(task:)(a3);
    v7 = sub_227A7240C();

    [v6 recordLoadUrlMetrics_];
  }
}

uint64_t AMSMetricsLoadURLEvent.metricsFields(task:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD560, &qword_227AA48E8);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_0_22();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v38[-4] - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-4] - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v38[-4] - v17;
  v19 = [a1 currentRequest];
  if (v19)
  {
    v20 = v19;
    sub_227A7190C();

    v21 = sub_227A7192C();
    v22 = 0;
  }

  else
  {
    v21 = sub_227A7192C();
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v22, 1, v21);
  sub_227A385AC(v14, v18);
  sub_227A7192C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
  {
    sub_227A04918(v18, &qword_27D7DD560, &qword_227AA48E8);
  }

  else
  {
    v23 = v18;
    sub_227A718FC();
    OUTLINED_FUNCTION_1_18();
    (*(v24 + 8))(v18, v21);
    if (v2)
    {
      goto LABEL_13;
    }
  }

  v25 = [a1 originalRequest];
  if (v25)
  {
    v26 = v25;
    sub_227A7190C();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v8, v27, 1, v21);
  sub_227A385AC(v8, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v21) == 1)
  {
    sub_227A04918(v11, &qword_27D7DD560, &qword_227AA48E8);

LABEL_14:
    v35 = [v3 underlyingDictionary];
    v34 = sub_227A7241C();

    return v34;
  }

  v23 = v11;
  sub_227A718FC();
  OUTLINED_FUNCTION_1_18();
  (*(v28 + 8))(v11, v21);

  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_13:
  v29 = [v3 underlyingDictionary];
  v30 = sub_227A7241C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD570, qword_227AA48F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227AA00F0;
  strcpy(v38, "requestMethod");
  v38[7] = -4864;
  v32 = MEMORY[0x277D837D0];
  sub_227A72ABC();
  *(inited + 96) = v32;
  *(inited + 72) = v23;
  *(inited + 80) = v2;
  v33 = sub_227A7243C();
  return sub_227A38528(v33, v30);
}

id MetricsReportingSessionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MetricsReportingSessionDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A38528(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227A3876C(a1, sub_227A38758, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227A385AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD560, &qword_227AA48E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_227A3861C()
{
  result = qword_27D7DD568;
  if (!qword_27D7DD568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DD568);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_227A386D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2279F4900(a4, a1);

  return a2;
}

uint64_t sub_227A38710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2279FEF6C(a3, a1);

  return sub_2279F4900(a4, a2);
}

uint64_t sub_227A3876C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_227A389B8(a1, a2, a3, v39);
  v35 = v39[0];
  v36 = v39[1];
  v37 = v39[2];
  v38 = v40;

  while (1)
  {
    sub_227A38B44(&v31);
    if (!*(&v32 + 1))
    {
      sub_2279F34F8(v35);
    }

    v28 = v31;
    v29 = v32;
    v30 = v33;
    sub_2279FF11C(&v34, v27);
    v7 = *a5;
    v9 = sub_2279FDAF8();
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD5E0, &qword_227AA4950);
        sub_227A72C3C();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_227A3FF5C(v12, a4 & 1);
      v14 = sub_2279FDAF8();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_2279F4900(*(*a5 + 56) + 32 * v9, v26);
        __swift_destroy_boxed_opaque_existential_0Tm(v27);
        sub_2279FEFC8(&v28);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        sub_2279FF11C(v26, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v28;
    v21 = v29;
    *(v19 + 32) = v30;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_2279FF11C(v27, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_227A72EAC();
  __break(1u);
  return result;
}

uint64_t sub_227A389B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
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

uint64_t sub_227A389F4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_2279F4900(*(v3 + 56) + 32 * v10, v18);
    *&v19 = v13;
    *(&v19 + 1) = v12;
    sub_2279FF11C(v18, &v20);

    v15 = *(&v19 + 1);
    v16 = v19;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v20;
      v18[2] = v21;
      v17(v18);
      return sub_227A04918(v18, &unk_27D7DD5F0, &unk_227AA4960);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_227A38B44@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_2279FEF6C(*(v3 + 48) + 40 * v10, &v14);
    sub_2279F4900(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_2279FF11C(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_227A04918(&v14, &qword_27D7DD5E8, &qword_227AA4958);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227A38CE4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v22[1] = a1;
  v22[2] = a2;
  v22[0] = sub_227A71A6C();
  v5 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0]);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227A71D0C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_227A7249C();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_227A71A7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;

  sub_227A724AC();
  v17 = sub_227A71CCC();
  v18 = GKGameCenterFoundationBundle(v17);
  v19 = [v18 bundleURL];

  sub_227A71ABC();
  (*(v5 + 104))(v7, *MEMORY[0x277CC9118], v22[0]);
  sub_227A71A8C();
  (*(v11 + 16))(v13, v16, v10);
  v20 = sub_227A7250C();
  (*(v11 + 8))(v16, v10);
  return v20;
}

uint64_t sub_227A38FD4()
{
  result = sub_227A38CE4("ACCEPT_INVITE_BUTTON_TITLE", 26, 2u, 0x747065636341, 0xE600000000000000);
  qword_280B54FF8 = result;
  unk_280B55000 = v1;
  return result;
}

uint64_t sub_227A39060()
{
  result = sub_227A38CE4("ANONYMOUS_PLAYER_NICKNAME", 25, 2u, 0x756F6D796E6F6E41, 0xE900000000000073);
  qword_27D7DD660 = result;
  *algn_27D7DD668 = v1;
  return result;
}

id sub_227A390F4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_227A724BC();

  return v3;
}

uint64_t sub_227A39140()
{
  result = sub_227A38CE4("APPLE_ID_PASSWORD", 17, 2u, 0xD000000000000016, 0x8000000227A9F3B0);
  qword_27D7DD670 = result;
  *algn_27D7DD678 = v1;
  return result;
}

uint64_t sub_227A391D4()
{
  result = sub_227A38CE4("APP_STORE", 9, 2u, 0x726F745320707041, 0xE900000000000065);
  qword_280B54F68 = result;
  unk_280B54F70 = v1;
  return result;
}

uint64_t sub_227A39268()
{
  result = sub_227A38CE4("AUTOMATCH_PLAYER", 16, 2u, 0xD000000000000012, 0x8000000227A9F330);
  qword_27D7DD680 = result;
  *algn_27D7DD688 = v1;
  return result;
}

uint64_t sub_227A392FC()
{
  result = sub_227A38CE4("AUTOMATCH_PLAYER_SHORT", 22, 2u, 0x6374616D6F747541, 0xE900000000000068);
  qword_27D7DD690 = result;
  *algn_27D7DD698 = v1;
  return result;
}

uint64_t sub_227A39390()
{
  result = sub_227A38CE4("BULLETIN_ACCEPT", 15, 2u, 0x747065636341, 0xE600000000000000);
  qword_280B55058 = result;
  unk_280B55060 = v1;
  return result;
}

uint64_t sub_227A3941C()
{
  result = sub_227A38CE4("BULLETIN_IGNORE", 15, 2u, 0x65726F6E6749, 0xE600000000000000);
  qword_280B55040 = result;
  *algn_280B55048 = v1;
  return result;
}

uint64_t sub_227A394A8()
{
  result = sub_227A38CE4("BULLETIN_VIEW", 13, 2u, 2003134806, 0xE400000000000000);
  qword_280B55070 = result;
  *algn_280B55078 = v1;
  return result;
}

uint64_t sub_227A39530()
{
  result = sub_227A38CE4("BULLETIN_VIEW_PROFILE", 21, 2u, 0x6F72502077656956, 0xEC000000656C6966);
  qword_280B55028 = result;
  unk_280B55030 = v1;
  return result;
}

uint64_t sub_227A395C8()
{
  result = sub_227A38CE4("CANCEL_BUTTON", 13, 2u, 0x6C65636E6143, 0xE600000000000000);
  qword_27D7DD6A0 = result;
  *algn_27D7DD6A8 = v1;
  return result;
}

uint64_t sub_227A39654()
{
  result = sub_227A38CE4("CHALLENGE_DETAIL_ACHIEVEMENT_GOAL_FORMAT", 40, 2u, 0x1000000000000018, 0x8000000227A9F170);
  qword_27D7DD6B0 = result;
  *algn_27D7DD6B8 = v1;
  return result;
}

uint64_t sub_227A396E8()
{
  result = sub_227A38CE4("CHALLENGE_DETAIL_GOAL_FORMAT", 28, 2u, 0x1000000000000013, 0x8000000227A9F110);
  qword_27D7DD6C0 = result;
  *algn_27D7DD6C8 = v1;
  return result;
}

uint64_t sub_227A3977C()
{
  result = sub_227A38CE4("CHALLENGE_DETAIL_SCORE_GOAL_FORMAT", 34, 2u, 0x1000000000000026, 0x8000000227A9F060);
  qword_27D7DD6D0 = result;
  *algn_27D7DD6D8 = v1;
  return result;
}

uint64_t sub_227A39810()
{
  result = sub_227A38CE4("CHALLENGE_RECEIVED_DECLINE", 26, 2u, 0x656E696C636544, 0xE700000000000000);
  qword_280B54FE0 = result;
  *algn_280B54FE8 = v1;
  return result;
}

uint64_t sub_227A398A0()
{
  result = sub_227A38CE4("CHALLENGE_RECEIVED_IGNORE", 25, 2u, 0x65726F6E6749, 0xE600000000000000);
  qword_280B55010 = result;
  *algn_280B55018 = v1;
  return result;
}

uint64_t sub_227A3992C()
{
  result = sub_227A38CE4("CHALLENGE_RECEIVED_LAUNCH_GAME", 30, 2u, 0x472068636E75614CLL, 0xEB00000000656D61);
  qword_280B54FB0 = result;
  *algn_280B54FB8 = v1;
  return result;
}

uint64_t sub_227A399C4()
{
  result = sub_227A38CE4("CHALLENGE_RECEIVED_LAUNCH_STORE", 31, 2u, 0x7041206F74206F47, 0xEF65726F74532070);
  qword_27D7DD6E0 = result;
  *algn_27D7DD6E8 = v1;
  return result;
}

uint64_t sub_227A39A60()
{
  result = sub_227A38CE4("CLOSE_TURN_BASED_ALERT_BUTTON_TITLE", 35, 2u, 0x65736F6C43, 0xE500000000000000);
  qword_27D7DD6F0 = result;
  *algn_27D7DD6F8 = v1;
  return result;
}

uint64_t sub_227A39AEC()
{
  result = sub_227A38CE4("DECLINE_INVITE_BUTTON_TITLE", 27, 2u, 0x656E696C636544, 0xE700000000000000);
  qword_280B54FC8 = result;
  unk_280B54FD0 = v1;
  return result;
}

uint64_t sub_227A39B7C()
{
  result = sub_227A38CE4("ERROR_API_FRIEND_LIST_DENIED", 28, 2u, 0xD00000000000003DLL, 0x8000000227A9EE80);
  qword_27D7DD700 = result;
  *algn_27D7DD708 = v1;
  return result;
}

uint64_t sub_227A39C10()
{
  result = sub_227A38CE4("ERROR_API_FRIEND_LIST_DESCRIPTION_MISSING", 41, 2u, 0x1000000000000094, 0x8000000227A9EDA0);
  qword_27D7DD710 = result;
  *algn_27D7DD718 = v1;
  return result;
}

uint64_t sub_227A39CA4()
{
  result = sub_227A38CE4("ERROR_API_FRIEND_LIST_RESTRICTED", 32, 2u, 0xD000000000000041, 0x8000000227A9ED10);
  qword_27D7DD720 = result;
  *algn_27D7DD728 = v1;
  return result;
}

uint64_t sub_227A39D38()
{
  result = sub_227A38CE4("ERROR_API_FRIEND_REQUEST_NOT_AVAILABLE", 38, 2u, 0xD000000000000054, 0x8000000227A9EC40);
  qword_27D7DD730 = result;
  *algn_27D7DD738 = v1;
  return result;
}

uint64_t sub_227A39DCC()
{
  result = sub_227A38CE4("ERROR_API_NOT_AVAILABLE", 23, 2u, 0xD000000000000031, 0x8000000227A9EBC0);
  qword_27D7DD740 = result;
  *algn_27D7DD748 = v1;
  return result;
}

uint64_t sub_227A39E60()
{
  result = sub_227A38CE4("ERROR_API_OBSOLETE", 18, 2u, 0xD00000000000002ELL, 0x8000000227A9EB50);
  qword_27D7DD750 = result;
  *algn_27D7DD758 = v1;
  return result;
}

uint64_t sub_227A39EF4()
{
  result = sub_227A38CE4("ERROR_APP_UNLISTED", 18, 2u, 0xD000000000000043, 0x8000000227A9EAE0);
  qword_27D7DD760 = result;
  *algn_27D7DD768 = v1;
  return result;
}

uint64_t sub_227A39F88()
{
  result = sub_227A38CE4("ERROR_AUTHENTICATIONINPROGRESS_DESCRIPTION", 42, 2u, 0xD00000000000005ELL, 0x8000000227A9EA50);
  qword_280B54F98 = result;
  unk_280B54FA0 = v1;
  return result;
}

uint64_t sub_227A3A01C()
{
  result = sub_227A38CE4("ERROR_BAD_CONTAINER", 19, 2u, 0xD000000000000057, 0x8000000227A9E9C0);
  qword_27D7DD770 = result;
  *algn_27D7DD778 = v1;
  return result;
}

uint64_t sub_227A3A0B0()
{
  result = sub_227A38CE4("ERROR_CANCELED_DESCRIPTION", 26, 2u, 0xD000000000000042, 0x8000000227A9E950);
  qword_27D7DD780 = result;
  *algn_27D7DD788 = v1;
  return result;
}

uint64_t sub_227A3A144()
{
  result = sub_227A38CE4("ERROR_CLOUD_DRIVE_DISABLED", 26, 2u, 0xD00000000000006ALL, 0x8000000227A9E8A0);
  qword_27D7DD790 = result;
  *algn_27D7DD798 = v1;
  return result;
}

uint64_t sub_227A3A1D8()
{
  result = sub_227A38CE4("ERROR_CLOUD_QUOTA_EXCEEDED", 26, 2u, 0x1000000000000063, 0x8000000227A9E7F0);
  qword_27D7DD7A0 = result;
  *algn_27D7DD7A8 = v1;
  return result;
}

uint64_t sub_227A3A26C()
{
  result = sub_227A38CE4("ERROR_COMMUNICATIONSFAILURE_DESCRIPTION", 39, 2u, 0xD00000000000005DLL, 0x8000000227A9E190);
  qword_280B55118 = result;
  unk_280B55120 = v1;
  return result;
}

uint64_t sub_227A3A300()
{
  result = sub_227A38CE4("ERROR_CONNECTION_TIMEOUT_DESCRIPTION", 36, 2u, 0xD000000000000050, 0x8000000227A9E730);
  qword_27D7DD7B0 = result;
  *algn_27D7DD7B8 = v1;
  return result;
}

uint64_t sub_227A3A394()
{
  result = sub_227A38CE4("ERROR_GAMEUNRECOGNIZED_DESCRIPTION", 34, 2u, 0xD000000000000069, 0x8000000227A9E690);
  qword_27D7DD7C0 = result;
  *algn_27D7DD7C8 = v1;
  return result;
}

uint64_t sub_227A3A428()
{
  result = sub_227A38CE4("ERROR_ICLOUD_NOT_AUTHENTICATED_DESCRIPTION", 42, 2u, 0xD000000000000057, 0x8000000227A9E600);
  qword_280B54F80 = result;
  *algn_280B54F88 = v1;
  return result;
}

uint64_t sub_227A3A4BC()
{
  result = sub_227A38CE4("ERROR_INVALIDCREDENTIALS_DESCRIPTION", 36, 2u, 0xD000000000000062, 0x8000000227A9E560);
  qword_27D7DD7D0 = result;
  *algn_27D7DD7D8 = v1;
  return result;
}

uint64_t sub_227A3A550()
{
  result = sub_227A38CE4("ERROR_INVALIDPARAMETER_DESCRIPTION", 34, 2u, 0xD00000000000005BLL, 0x8000000227A9E4D0);
  qword_27D7DD7E0 = result;
  *algn_27D7DD7E8 = v1;
  return result;
}

uint64_t sub_227A3A5E4()
{
  result = sub_227A38CE4("ERROR_INVALIDPLAYER_DESCRIPTION", 31, 2u, 0xD00000000000004DLL, 0x8000000227A9E450);
  qword_27D7DD7F0 = result;
  *algn_27D7DD7F8 = v1;
  return result;
}

uint64_t sub_227A3A678()
{
  result = sub_227A38CE4("ERROR_INVALID_CHALLENGE", 23, 2u, 0xD00000000000003BLL, 0x8000000227A9E3E0);
  qword_27D7DD800 = result;
  *algn_27D7DD808 = v1;
  return result;
}

uint64_t sub_227A3A70C()
{
  result = sub_227A38CE4("ERROR_INVITATIONS_DISABLED_DESCRIPTION", 38, 2u, 0xD00000000000005ELL, 0x8000000227A9E350);
  qword_27D7DD810 = result;
  *algn_27D7DD818 = v1;
  return result;
}

uint64_t sub_227A3A7A0()
{
  result = sub_227A38CE4("ERROR_MATCHNOTCONNECTED_DESCRIPTION", 35, 2u, 0xD000000000000063, 0x8000000227A9E2B0);
  qword_27D7DD820 = result;
  *algn_27D7DD828 = v1;
  return result;
}

uint64_t sub_227A3A834()
{
  result = sub_227A38CE4("ERROR_MATCHREQUESTINVALID_DESCRIPTION", 37, 2u, 0xD000000000000054, 0x8000000227A9E220);
  qword_27D7DD830 = result;
  *algn_27D7DD838 = v1;
  return result;
}

uint64_t sub_227A3A8C8()
{
  result = sub_227A38CE4("ERROR_NETWORK_FAILURE", 21, 2u, 0xD00000000000005DLL, 0x8000000227A9E190);
  qword_27D7DD840 = result;
  *algn_27D7DD848 = v1;
  return result;
}

uint64_t sub_227A3A95C()
{
  result = sub_227A38CE4("ERROR_NOTAUTHENTICATED_DESCRIPTION", 34, 2u, 0xD00000000000005FLL, 0x8000000227A9E100);
  qword_280B55178 = result;
  unk_280B55180 = v1;
  return result;
}

uint64_t sub_227A3A9F0()
{
  result = sub_227A38CE4("ERROR_PARENTALCONTROLSBLOCKED_DESCRIPTION", 41, 2u, 0xD000000000000066, 0x8000000227A9E060);
  qword_27D7DD850 = result;
  *algn_27D7DD858 = v1;
  return result;
}

uint64_t sub_227A3AA84()
{
  result = sub_227A38CE4("ERROR_PLAYERPHOTOFAILURE_DESCRIPTION", 36, 2u, 0xD00000000000004FLL, 0x8000000227A9DFE0);
  qword_27D7DD860 = result;
  *algn_27D7DD868 = v1;
  return result;
}

uint64_t sub_227A3AB18()
{
  result = sub_227A38CE4("ERROR_SCORENOTSET_DESCRIPTION", 29, 2u, 0xD000000000000058, 0x8000000227A9DF60);
  qword_27D7DD870 = result;
  *algn_27D7DD878 = v1;
  return result;
}

uint64_t sub_227A3ABAC()
{
  result = sub_227A38CE4("ERROR_SEND_DATA_NOT_CONNECTED_DESCRIPTION", 41, 2u, 0xD00000000000005CLL, 0x8000000227A9DEC0);
  qword_27D7DD880 = result;
  *algn_27D7DD888 = v1;
  return result;
}

uint64_t sub_227A3AC40()
{
  result = sub_227A38CE4("ERROR_SEND_DATA_NO_RECIPIENTS_DESCRIPTION", 41, 2u, 0xD000000000000064, 0x8000000227A9DE10);
  qword_27D7DD890 = result;
  *algn_27D7DD898 = v1;
  return result;
}

uint64_t sub_227A3ACD4()
{
  result = sub_227A38CE4("ERROR_SEND_DATA_PLAYERS_NOT_REACHABLE", 37, 2u, 0xD00000000000005CLL, 0x8000000227A9DD70);
  qword_27D7DD8A0 = result;
  *algn_27D7DD8A8 = v1;
  return result;
}

uint64_t sub_227A3AD68()
{
  result = sub_227A38CE4("ERROR_SEND_RATE_LIMIT_REACHED", 29, 2u, 0xD00000000000007ALL, 0x8000000227A9DCB0);
  qword_27D7DD8B0 = result;
  *algn_27D7DD8B8 = v1;
  return result;
}

uint64_t sub_227A3ADFC()
{
  result = sub_227A38CE4("ERROR_SESSION_CONFLICT_DESCRIPTION", 34, 2u, 0xD000000000000076, 0x8000000227A9DC00);
  qword_27D7DD8C0 = result;
  *algn_27D7DD8C8 = v1;
  return result;
}

uint64_t sub_227A3AE90()
{
  result = sub_227A38CE4("ERROR_SESSION_CONNECTION_CANCELLED_BY_USER", 42, 2u, 0xD000000000000062, 0x8000000227A9DB50);
  qword_27D7DD8D0 = result;
  *algn_27D7DD8D8 = v1;
  return result;
}

uint64_t sub_227A3AF24()
{
  result = sub_227A38CE4("ERROR_SESSION_CONNECTION_FAILED_DESCRIPTION", 43, 2u, 0xD00000000000006ELL, 0x8000000227A9DAB0);
  qword_27D7DD8E0 = result;
  *algn_27D7DD8E8 = v1;
  return result;
}

uint64_t sub_227A3AFB8()
{
  result = sub_227A38CE4("ERROR_SESSION_HAS_MAX_CONNECTED_PLAYERS_DESCRIPTION", 51, 2u, 0xD000000000000077, 0x8000000227A9D9F0);
  qword_27D7DD8F0 = result;
  *algn_27D7DD8F8 = v1;
  return result;
}

uint64_t sub_227A3B04C()
{
  result = sub_227A38CE4("ERROR_SESSION_INVALID", 21, 2u, 0xD000000000000085, 0x8000000227A9D930);
  qword_27D7DD900 = result;
  *algn_27D7DD908 = v1;
  return result;
}

uint64_t sub_227A3B0E0()
{
  result = sub_227A38CE4("ERROR_SESSION_NOT_SHARED_DESCRIPTION", 36, 2u, 0xD00000000000006BLL, 0x8000000227A9D890);
  qword_27D7DD910 = result;
  *algn_27D7DD918 = v1;
  return result;
}

uint64_t sub_227A3B174()
{
  result = sub_227A38CE4("ERROR_TBG_INVALID_PARTICIPANT", 29, 2u, 0xD00000000000005CLL, 0x8000000227A9D800);
  qword_27D7DD920 = result;
  *algn_27D7DD928 = v1;
  return result;
}

uint64_t sub_227A3B208()
{
  result = sub_227A38CE4("ERROR_TBG_INVALID_STATE", 23, 2u, 0xD00000000000005ALL, 0x8000000227A9D770);
  qword_27D7DD930 = result;
  *algn_27D7DD938 = v1;
  return result;
}

uint64_t sub_227A3B29C()
{
  result = sub_227A38CE4("ERROR_TBG_INVALID_TURN", 22, 2u, 0xD000000000000077, 0x8000000227A9D6C0);
  qword_27D7DD940 = result;
  *algn_27D7DD948 = v1;
  return result;
}

uint64_t sub_227A3B330()
{
  result = sub_227A38CE4("ERROR_TBG_MATCH_DATA_TO_LARGE", 29, 2u, 0xD000000000000054, 0x8000000227A9D630);
  qword_27D7DD950 = result;
  *algn_27D7DD958 = v1;
  return result;
}

uint64_t sub_227A3B3C4()
{
  result = sub_227A38CE4("ERROR_TBG_TOO_MANY_SESSIONS", 27, 2u, 0xD000000000000066, 0x8000000227A9D590);
  qword_27D7DD960 = result;
  *algn_27D7DD968 = v1;
  return result;
}

uint64_t sub_227A3B458()
{
  result = sub_227A38CE4("ERROR_UBIQUITY_CONTAINER_INVALID", 32, 2u, 0xD000000000000078, 0x8000000227A9D4E0);
  qword_280B55130 = result;
  unk_280B55138 = v1;
  return result;
}

uint64_t sub_227A3B4EC()
{
  result = sub_227A38CE4("ERROR_UNDERAGE_DESCRIPTION", 26, 2u, 0xD000000000000065, 0x8000000227A9D450);
  qword_27D7DD970 = result;
  *algn_27D7DD978 = v1;
  return result;
}

uint64_t sub_227A3B580()
{
  result = sub_227A38CE4("ERROR_UNEXPECTEDCONNECTION_DESCRIPTION", 38, 2u, 0xD00000000000002ELL, 0x8000000227A9D3F0);
  qword_27D7DD980 = result;
  *algn_27D7DD988 = v1;
  return result;
}

uint64_t sub_227A3B614()
{
  result = sub_227A38CE4("ERROR_UNKNOWN_DESCRIPTION", 25, 2u, 0xD000000000000047, 0x8000000227A9D380);
  qword_27D7DD990 = result;
  *algn_27D7DD998 = v1;
  return result;
}

uint64_t sub_227A3B6A8()
{
  result = sub_227A38CE4("ERROR_USERDENIED_DESCRIPTION", 28, 2u, 0xD000000000000051, 0x8000000227A9D300);
  qword_27D7DD9A0 = result;
  *algn_27D7DD9A8 = v1;
  return result;
}

uint64_t sub_227A3B73C()
{
  result = sub_227A38CE4("GAME_CENTER", 11, 2u, 0x6E654320656D6147, 0xEB00000000726574);
  qword_27D7DD9B0 = result;
  *algn_27D7DD9B8 = v1;
  return result;
}

uint64_t sub_227A3B7D4()
{
  result = sub_227A38CE4("GAME_CENTER_FRIEND_REQUEST_ACCEPTED", 35, 2u, 0xD000000000000024, 0x8000000227A9D280);
  qword_27D7DD9C0 = result;
  *algn_27D7DD9C8 = v1;
  return result;
}

uint64_t sub_227A3B868()
{
  result = sub_227A38CE4("GAME_CENTER_IS_NOT_SUPPORTED", 28, 2u, 0xD00000000000001DLL, 0x8000000227A9D240);
  qword_27D7DD9D0 = result;
  *algn_27D7DD9D8 = v1;
  return result;
}

uint64_t sub_227A3B8FC()
{
  result = sub_227A38CE4("GAME_INVITE_NOTIFICATION_TITLE", 30, 2u, 0xD000000000000016, 0x8000000227A9D1F0);
  qword_27D7DD9E0 = result;
  *algn_27D7DD9E8 = v1;
  return result;
}

uint64_t sub_227A3B990()
{
  result = sub_227A38CE4("GAME_RECONNECT_MESSAGE", 22, 2u, 0x63656E6E6F636552, 0xEA00000000003F74);
  qword_27D7DD9F0 = result;
  *algn_27D7DD9F8 = v1;
  return result;
}

uint64_t sub_227A3BA24()
{
  result = sub_227A38CE4("GO_TO_SOFTWARE_UPDATE_SETTINGS_BUTTON", 37, 2u, 0x6553206F54206F47, 0xEE0073676E697474);
  qword_27D7DDA00 = result;
  *algn_27D7DDA08 = v1;
  return result;
}

uint64_t sub_227A3BAC0()
{
  result = sub_227A38CE4("GUEST_DEFAULT_ALIAS_FORMAT", 26, 2u, 0x666F207473657547, 0xEB00000000402520);
  qword_27D7DDA10 = result;
  *algn_27D7DDA18 = v1;
  return result;
}

uint64_t sub_227A3BB58()
{
  result = sub_227A38CE4("KETTLE_CHALLENGE_RECEIVED_OUT_OF_GAME_BANNER_1_PLAYER_2_CUSTOM_MESSAGE_FORMAT", 77, 2u, 0xD000000000000028, 0x8000000227A9D0E0);
  qword_27D7DDA20 = result;
  *algn_27D7DDA28 = v1;
  return result;
}

uint64_t sub_227A3BBEC()
{
  result = sub_227A38CE4("KETTLE_CHALLENGE_RECEIVED_OUT_OF_GAME_BANNER_FORMAT", 51, 2u, 0xD000000000000022, 0x8000000227A9D040);
  qword_27D7DDA30 = result;
  *algn_27D7DDA38 = v1;
  return result;
}

uint64_t sub_227A3BC80()
{
  result = sub_227A38CE4("KETTLE_CHALLENGE_REMOTELY_COMPLETED_BANNER_OUT_OF_GAME_1_PLAYER_FORMAT", 70, 2u, 0xD00000000000001ELL, 0x8000000227A9CFC0);
  qword_27D7DDA40 = result;
  *algn_27D7DDA48 = v1;
  return result;
}

uint64_t sub_227A3BD14()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_CANCELED_ALERT_MESSAGE", 41, 2u, 0xD000000000000027, 0x8000000227A9CF60);
  qword_27D7DDA50 = result;
  *algn_27D7DDA58 = v1;
  return result;
}

uint64_t sub_227A3BDA8()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_CANCELED_ALERT_MESSAGE_ALIAS_1_FORMAT", 56, 2u, 0xD000000000000022, 0x8000000227A9CEF0);
  qword_27D7DDA60 = result;
  *algn_27D7DDA68 = v1;
  return result;
}

uint64_t sub_227A3BE3C()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_2_MESSAGE_FORMAT", 59, 2u, 0xD00000000000001ELL, 0x8000000227A9CED0);
  qword_27D7DDA70 = result;
  *algn_27D7DDA78 = v1;
  return result;
}

uint64_t sub_227A3BED0()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_2_MESSAGE_STORE_FORMAT", 65, 2u, 0xD000000000000037, 0x8000000227A9CE10);
  qword_27D7DDA80 = result;
  *algn_27D7DDA88 = v1;
  return result;
}

uint64_t sub_227A3BF64()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_FORMAT", 49, 2u, 0xD000000000000019, 0x8000000227A9CD90);
  qword_27D7DDA90 = result;
  *algn_27D7DDA98 = v1;
  return result;
}

uint64_t sub_227A3BFF8()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_NOTIFICATION_1_INIVITER_STORE_FORMAT", 55, 2u, 0xD000000000000031, 0x8000000227A9CCF0);
  qword_27D7DDAA0 = result;
  *algn_27D7DDAA8 = v1;
  return result;
}

uint64_t sub_227A3C08C()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_NOTIFICATION_TITLE", 37, 2u, 0xD00000000000001DLL, 0x8000000227A9CC70);
  qword_27D7DDAB0 = result;
  *algn_27D7DDAB8 = v1;
  return result;
}

uint64_t sub_227A3C120()
{
  result = sub_227A38CE4("KETTLE_GAME_INVITE_RECONNECT_NOTIFICATION_TITLE", 47, 2u, 0xD00000000000001DLL, 0x8000000227A9CBF0);
  qword_27D7DDAC0 = result;
  *algn_27D7DDAC8 = v1;
  return result;
}

uint64_t sub_227A3C1B4()
{
  result = sub_227A38CE4("KETTLE_GENERAL_NOTIFICATION_TITLE", 33, 2u, 0xD000000000000012, 0x8000000227A9CB70);
  qword_27D7DDAD0 = result;
  *algn_27D7DDAD8 = v1;
  return result;
}

uint64_t sub_227A3C248()
{
  result = sub_227A38CE4("KETTLE_INVITEE_ACCEPTED_ALERT_MESSAGE", 37, 2u, 0xD000000000000027, 0x8000000227A9CB10);
  qword_27D7DDAE0 = result;
  *algn_27D7DDAE8 = v1;
  return result;
}

uint64_t sub_227A3C2DC()
{
  result = sub_227A38CE4("KETTLE_INVITEE_ACCEPTED_ALERT_MESSAGE_ALIAS_1_FORMAT", 52, 2u, 0xD000000000000023, 0x8000000227A9CAA0);
  qword_27D7DDAF0 = result;
  *algn_27D7DDAF8 = v1;
  return result;
}

uint64_t sub_227A3C370()
{
  result = sub_227A38CE4("KETTLE_INVITEE_DECLINED_ALERT_MESSAGE", 37, 2u, 0xD000000000000027, 0x8000000227A9CA40);
  qword_27D7DDB00 = result;
  *algn_27D7DDB08 = v1;
  return result;
}

uint64_t sub_227A3C404()
{
  result = sub_227A38CE4("KETTLE_INVITEE_DECLINED_ALERT_MESSAGE_ALIAS_1_FORMAT", 52, 2u, 0xD000000000000023, 0x8000000227A9C9D0);
  qword_27D7DDB10 = result;
  *algn_27D7DDB18 = v1;
  return result;
}

uint64_t sub_227A3C498()
{
  result = sub_227A38CE4("KETTLE_TURN_BASED_GAME_OVER_NOTIFICATION_MESSAGE_FORMAT", 55, 2u, 0xD000000000000011, 0x8000000227A9C960);
  qword_27D7DDB20 = result;
  *algn_27D7DDB28 = v1;
  return result;
}

uint64_t sub_227A3C52C()
{
  result = sub_227A38CE4("KETTLE_TURN_BASED_MATCH_EXCHANGE_COMPLETED_NOTIFICATION_MESSAGE_FORMAT_ZERO", 75, 2u, 0xD000000000000018, 0x8000000227A9C8E0);
  qword_27D7DDB30 = result;
  *algn_27D7DDB38 = v1;
  return result;
}

uint64_t sub_227A3C5C0()
{
  result = sub_227A38CE4("KETTLE_TURN_BASED_MATCH_EXCHANGE_REQUEST_NOTIFICATION_MESSAGE_FORMAT", 68, 2u, 0xD000000000000018, 0x8000000227A9C860);
  qword_27D7DDB40 = result;
  *algn_27D7DDB48 = v1;
  return result;
}

uint64_t sub_227A3C654()
{
  result = sub_227A38CE4("KETTLE_TURN_BASED_YOUR_GUESTS_TURN_NOTIFICATION_MESSAGE_FORMAT", 62, 2u, 0x1000000000000029, 0x8000000227A9C7D0);
  qword_27D7DDB50 = result;
  *algn_27D7DDB58 = v1;
  return result;
}

uint64_t sub_227A3C6E8()
{
  result = sub_227A38CE4("KETTLE_TURN_BASED_YOUR_TURN_NOTIFICATION_MESSAGE_FORMAT", 55, 2u, 0x100000000000001CLL, 0x8000000227A9C750);
  qword_27D7DDB60 = result;
  *algn_27D7DDB68 = v1;
  return result;
}

uint64_t sub_227A3C77C()
{
  result = sub_227A38CE4("GAME_INVITE_NOTIFICATION_FOOTER_TV_ACTION", 41, 2u, 0xD000000000000013, 0x8000000227A9C6C0);
  qword_27D7DDB70 = result;
  *algn_27D7DDB78 = v1;
  return result;
}

uint64_t sub_227A3C810()
{
  result = sub_227A38CE4("LEADERBOARD_RANGE_LIMITS_EXECPTION", 34, 2u, 0xD000000000000046, 0x8000000227A9C640);
  qword_27D7DDB80 = result;
  *algn_27D7DDB88 = v1;
  return result;
}

uint64_t sub_227A3C8A4()
{
  result = sub_227A38CE4("LEADERBOARD_SCORE_SUBMITTED_BANNER_TITLE", 40, 2u, 0xD000000000000015, 0x8000000227A9C5E0);
  qword_27D7DDB90 = result;
  *algn_27D7DDB98 = v1;
  return result;
}

uint64_t sub_227A3C938()
{
  result = sub_227A38CE4("MESSAGE_BASED_INVITEE_ERROR_ALERT_BUTTON", 40, 2u, 19279, 0xE200000000000000);
  qword_27D7DDBA0 = result;
  *algn_27D7DDBA8 = v1;
  return result;
}

uint64_t sub_227A3C9BC()
{
  result = sub_227A38CE4("MESSAGE_BASED_INVITEE_ERROR_ALERT_TITLE", 39, 2u, 0x766E4920656D6147, 0xEB00000000657469);
  qword_27D7DDBB0 = result;
  *algn_27D7DDBB8 = v1;
  return result;
}

uint64_t sub_227A3CA54()
{
  result = sub_227A38CE4("MESSAGE_BASED_INVITEE_NOT_FOUND_ALERT_BODY", 42, 2u, 0xD00000000000003CLL, 0x8000000227A9C4D0);
  qword_27D7DDBC0 = result;
  *algn_27D7DDBC8 = v1;
  return result;
}

uint64_t sub_227A3CAE8()
{
  result = sub_227A38CE4("NAME_DESCRIPTION", 16, 2u, 0x29402528204025, 0xE700000000000000);
  qword_27D7DDBD0 = result;
  *algn_27D7DDBD8 = v1;
  return result;
}

uint64_t sub_227A3CB78()
{
  result = sub_227A38CE4("NOW_TIME", 8, 2u, 7827310, 0xE300000000000000);
  qword_27D7DDBE0 = result;
  *algn_27D7DDBE8 = v1;
  return result;
}

uint64_t sub_227A3CC00()
{
  result = sub_227A38CE4("PLAY_BUTTON_TITLE", 17, 2u, 2036427856, 0xE400000000000000);
  qword_27D7DDBF0 = result;
  *algn_27D7DDBF8 = v1;
  return result;
}

uint64_t sub_227A3CC88()
{
  result = sub_227A38CE4("PLAY_TURN_BASED_TURN_BUTTON_TITLE", 33, 2u, 2036427856, 0xE400000000000000);
  qword_280B55088 = result;
  unk_280B55090 = v1;
  return result;
}

uint64_t sub_227A3CD10()
{
  result = sub_227A38CE4("RESTRICTED_TO_AUTOMATCH", 23, 2u, 0xD000000000000070, 0x8000000227A9C360);
  qword_27D7DDC00 = result;
  *algn_27D7DDC08 = v1;
  return result;
}

uint64_t sub_227A3CDA4()
{
  result = sub_227A38CE4("SANDBOX_PRODUCTION_ERROR_MESSAGE", 32, 2u, 0xD000000000000049, 0x8000000227A9C2E0);
  qword_27D7DDC10 = result;
  *algn_27D7DDC18 = v1;
  return result;
}

uint64_t sub_227A3CE38()
{
  result = sub_227A38CE4("SCORE_1_TOP_BOTTOM_2_FORMAT", 27, 2u, 0x3225282040243125, 0xEB00000000294024);
  qword_27D7DDC20 = result;
  *algn_27D7DDC28 = v1;
  return result;
}

uint64_t sub_227A3CED0()
{
  result = sub_227A38CE4("SCORE_CHALLENGE_RECEIVED_ALERT_GOAL_FORMAT", 42, 2u, 0x206E6F2040243125, 0xEC00000040243225);
  qword_27D7DDC30 = result;
  *algn_27D7DDC38 = v1;
  return result;
}

uint64_t sub_227A3CF68()
{
  result = sub_227A38CE4("SESSION_INVITE_ALERT_BODY", 25, 2u, 0xD000000000000047, 0x8000000227A9C1F0);
  qword_27D7DDC40 = result;
  *algn_27D7DDC48 = v1;
  return result;
}

uint64_t sub_227A3CFFC()
{
  result = sub_227A38CE4("SESSION_INVITE_ALERT_NO_BUTTON", 30, 2u, 0x6C65636E6143, 0xE600000000000000);
  qword_27D7DDC50 = result;
  *algn_27D7DDC58 = v1;
  return result;
}

uint64_t sub_227A3D088()
{
  result = sub_227A38CE4("SESSION_INVITE_ALERT_TITLE", 26, 2u, 0xD000000000000013, 0x8000000227A9BE50);
  qword_27D7DDC60 = result;
  *algn_27D7DDC68 = v1;
  return result;
}

uint64_t sub_227A3D11C()
{
  result = sub_227A38CE4("SESSION_INVITE_ALERT_YES_BUTTON", 31, 2u, 1852403530, 0xE400000000000000);
  qword_27D7DDC70 = result;
  *algn_27D7DDC78 = v1;
  return result;
}

uint64_t sub_227A3D1A4()
{
  result = sub_227A38CE4("SESSION_INVITE_NOTIFICATION_1_INVITER_2_GAME_3_MESSAGE_FORMAT", 61, 2u, 0xD000000000000027, 0x8000000227A9C0D0);
  qword_27D7DDC80 = result;
  *algn_27D7DDC88 = v1;
  return result;
}

uint64_t sub_227A3D238()
{
  result = sub_227A38CE4("SESSION_INVITE_NOTIFICATION_1_INVITER_2_GAME_FORMAT", 51, 2u, 0xD000000000000021, 0x8000000227A9C040);
  qword_27D7DDC90 = result;
  *algn_27D7DDC98 = v1;
  return result;
}

uint64_t sub_227A3D2CC()
{
  result = sub_227A38CE4("SESSION_INVITE_NOTIFICATION_TITLE", 33, 2u, 0xD000000000000013, 0x8000000227A9BE50);
  qword_27D7DDCA0 = result;
  *algn_27D7DDCA8 = v1;
  return result;
}

uint64_t sub_227A3D360()
{
  result = sub_227A38CE4("SESSION_MESSAGE_NOTIFICATION_1_GAME_2_GAME_MESSAGE_FORMAT", 57, 2u, 0xD00000000000001BLL, 0x8000000227A9BF90);
  qword_27D7DDCB0 = result;
  *algn_27D7DDCB8 = v1;
  return result;
}

uint64_t sub_227A3D3F4()
{
  result = sub_227A38CE4("SESSION_MESSAGE_NOTIFICATION_1_SESSION_2_GAME_3_GAME_MESSAGE_FORMAT", 67, 2u, 0xD000000000000017, 0x8000000227A9BF00);
  qword_27D7DDCC0 = result;
  *algn_27D7DDCC8 = v1;
  return result;
}

uint64_t sub_227A3D488()
{
  result = sub_227A38CE4("SESSION_MESSAGE_NOTIFICATION_TITLE", 34, 2u, 0xD000000000000014, 0x8000000227A9BEB0);
  qword_27D7DDCD0 = result;
  *algn_27D7DDCD8 = v1;
  return result;
}

uint64_t sub_227A3D51C()
{
  result = sub_227A38CE4("SESSION_PLAYER", 14, 2u, 0x206E6F6973736553, 0xEE00726579616C50);
  qword_27D7DDCE0 = result;
  *algn_27D7DDCE8 = v1;
  return result;
}

uint64_t sub_227A3D5B8()
{
  result = sub_227A38CE4("SESSION_SHARE_INVITE_TITLE", 26, 2u, 0xD000000000000013, 0x8000000227A9BE50);
  qword_27D7DDCF0 = result;
  *algn_27D7DDCF8 = v1;
  return result;
}

uint64_t sub_227A3D64C()
{
  result = sub_227A38CE4("SHAREPLAY_ACTIVITY_SUBTITLE_GAMEISFULL", 38, 2u, 0x7369207962626F4CLL, 0xEE002E6C6C756620);
  qword_27D7DDD00 = result;
  *algn_27D7DDD08 = v1;
  return result;
}

uint64_t sub_227A3D6E8()
{
  result = sub_227A38CE4("SHAREPLAY_ACTIVITY_SUBTITLE_GAMESTARTED", 39, 2u, 0xD000000000000011, 0x8000000227A9BD40);
  qword_27D7DDD10 = result;
  *algn_27D7DDD18 = v1;
  return result;
}

uint64_t sub_227A3D77C()
{
  result = sub_227A38CE4("SHAREPLAY_ACTIVITY_SUBTITLE_OPENTOJOIN", 38, 2u, 0xD000000000000014, 0x8000000227A9BCD0);
  qword_27D7DDD20 = result;
  *algn_27D7DDD28 = v1;
  return result;
}

uint64_t sub_227A3D810()
{
  result = sub_227A38CE4("SHAREPLAY_DECLINE_GAME_HAS_STARTED", 34, 2u, 0xD000000000000010, 0x8000000227A9BCB0);
  qword_27D7DDD30 = result;
  *algn_27D7DDD38 = v1;
  return result;
}

uint64_t sub_227A3D8A4()
{
  result = sub_227A38CE4("SHAREPLAY_DECLINE_GAME_HAS_STARTED_MESSAGE", 42, 2u, 0xD000000000000043, 0x8000000227A9BC60);
  qword_27D7DDD40 = result;
  *algn_27D7DDD48 = v1;
  return result;
}

uint64_t sub_227A3D938()
{
  result = sub_227A38CE4("SHAREPLAY_DECLINE_GAME_IS_FULL", 30, 2u, 0x20736920656D6147, 0xEC0000006C6C7546);
  qword_27D7DDD50 = result;
  *algn_27D7DDD58 = v1;
  return result;
}

uint64_t sub_227A3D9D0()
{
  result = sub_227A38CE4("SHAREPLAY_DECLINE_GAME_IS_FULL_MESSAGE", 38, 2u, 0xD00000000000003ALL, 0x8000000227A9BC20);
  qword_27D7DDD60 = result;
  *algn_27D7DDD68 = v1;
  return result;
}

uint64_t sub_227A3DA64()
{
  result = sub_227A38CE4("SHAREPLAY_DECLINE_UNKNOWN", 25, 2u, 0x206E776F6E6B6E55, 0xEE006E6F73616552);
  qword_27D7DDD70 = result;
  *algn_27D7DDD78 = v1;
  return result;
}

uint64_t sub_227A3DB00()
{
  result = sub_227A38CE4("SHAREPLAY_DECLINE_UNKNOWN_MESSAGE", 33, 2u, 0xD00000000000004CLL, 0x8000000227A9BBD0);
  qword_27D7DDD80 = result;
  *algn_27D7DDD88 = v1;
  return result;
}

uint64_t sub_227A3DB94()
{
  result = sub_227A38CE4("SHORT_CHALLENGE_ACHIEVEMENT_TITLE_FORMAT", 40, 2u, 0x243125206E726145, 0xE900000000000040);
  qword_27D7DDD90 = result;
  *algn_27D7DDD98 = v1;
  return result;
}

uint64_t sub_227A3DC28()
{
  result = sub_227A38CE4("SHORT_CHALLENGE_SCORE_TITLE_FORMAT", 34, 2u, 0x31252065726F6353, 0xEA00000000004024);
  qword_27D7DDDA0 = result;
  *algn_27D7DDDA8 = v1;
  return result;
}

uint64_t sub_227A3DCBC()
{
  result = sub_227A38CE4("SHORT_FROM_SUBTITLE_FORMAT", 26, 2u, 0x243125206D6F7246, 0xE900000000000040);
  qword_27D7DDDB0 = result;
  *algn_27D7DDDB8 = v1;
  return result;
}

uint64_t sub_227A3DD50()
{
  result = sub_227A38CE4("SIGN_IN_BUTTON", 14, 2u, 0x6E49206E676953, 0xE700000000000000);
  qword_27D7DDDC0 = result;
  *algn_27D7DDDC8 = v1;
  return result;
}

uint64_t sub_227A3DDE0()
{
  result = sub_227A38CE4("SOFTWARE_UPDATE_REQUIRED_MESSAGE", 32, 2u, 0xD000000000000052, 0x8000000227A9BA70);
  qword_27D7DDDD0 = result;
  *algn_27D7DDDD8 = v1;
  return result;
}

uint64_t sub_227A3DE74()
{
  result = sub_227A38CE4("SOFTWARE_UPDATE_REQUIRED_TITLE", 30, 2u, 0xD000000000000018, 0x8000000227A9BA50);
  qword_27D7DDDE0 = result;
  *algn_27D7DDDE8 = v1;
  return result;
}

uint64_t sub_227A3DF08()
{
  result = sub_227A38CE4("TURN_BASED_NOTIFICATION_CUSTOM_1_GAME_2_MESSAGE", 47, 2u, 0x3225203A40243125, 0xEA00000000004024);
  qword_27D7DDDF0 = result;
  *algn_27D7DDDF8 = v1;
  return result;
}

uint64_t sub_227A3DF9C()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_LOST", 23, 2u, 1953722188, 0xE400000000000000);
  qword_27D7DDE00 = result;
  *algn_27D7DDE08 = v1;
  return result;
}

uint64_t sub_227A3E024()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_NONE", 23, 2u, 0x6F6374756F206F4ELL, 0xEA0000000000656DLL);
  qword_27D7DDE10 = result;
  *algn_27D7DDE18 = v1;
  return result;
}

uint64_t sub_227A3E0B8()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_QUIT", 23, 2u, 1953068369, 0xE400000000000000);
  qword_27D7DDE20 = result;
  *algn_27D7DDE28 = v1;
  return result;
}

uint64_t sub_227A3E140()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_TIED", 23, 2u, 1684367700, 0xE400000000000000);
  qword_27D7DDE30 = result;
  *algn_27D7DDE38 = v1;
  return result;
}

uint64_t sub_227A3E1C8()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_TIME_EXP", 27, 2u, 0x2074756F206E6152, 0xEF656D697420666FLL);
  qword_27D7DDE40 = result;
  *algn_27D7DDE48 = v1;
  return result;
}

uint64_t sub_227A3E264()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_WON", 22, 2u, 7237463, 0xE300000000000000);
  qword_27D7DDE50 = result;
  *algn_27D7DDE58 = v1;
  return result;
}

uint64_t sub_227A3E2EC()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_YOU_LOST", 27, 2u, 0x74736F4C20756F59, 0xE800000000000000);
  qword_27D7DDE60 = result;
  *algn_27D7DDE68 = v1;
  return result;
}

uint64_t sub_227A3E37C()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_YOU_QUIT", 27, 2u, 0x7469755120756F59, 0xE800000000000000);
  qword_27D7DDE70 = result;
  *algn_27D7DDE78 = v1;
  return result;
}

uint64_t sub_227A3E40C()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_YOU_TIED", 27, 2u, 0x6465695420756F59, 0xE800000000000000);
  qword_27D7DDE80 = result;
  *algn_27D7DDE88 = v1;
  return result;
}

uint64_t sub_227A3E49C()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_YOU_WON", 26, 2u, 0x6E6F5720756F59, 0xE700000000000000);
  qword_27D7DDE90 = result;
  *algn_27D7DDE98 = v1;
  return result;
}

uint64_t sub_227A3E52C()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_ACTIVE", 36, 2u, 0x6B6174206E727554, 0xEA00000000006E65);
  qword_27D7DDEA0 = result;
  *algn_27D7DDEA8 = v1;
  return result;
}

uint64_t sub_227A3E5C0()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_DECLINED", 38, 2u, 0x64656E696C636544, 0xE800000000000000);
  qword_27D7DDEB0 = result;
  *algn_27D7DDEB8 = v1;
  return result;
}

uint64_t sub_227A3E650()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_DONE", 34, 2u, 1701736260, 0xE400000000000000);
  qword_27D7DDEC0 = result;
  *algn_27D7DDEC8 = v1;
  return result;
}

uint64_t sub_227A3E6D8()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_INVITED", 37, 2u, 0x64657469766E49, 0xE700000000000000);
  qword_27D7DDED0 = result;
  *algn_27D7DDED8 = v1;
  return result;
}

uint64_t sub_227A3E768()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_MATCHING", 38, 2u, 0x676E69686374614DLL, 0xE800000000000000);
  qword_27D7DDEE0 = result;
  *algn_27D7DDEE8 = v1;
  return result;
}

uint64_t sub_227A3E7F8()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_OUTCOME_FORMAT", 44, 2u, 0x2432252040243125, 0xE900000000000040);
  qword_27D7DDEF0 = result;
  *algn_27D7DDEF8 = v1;
  return result;
}

uint64_t sub_227A3E88C()
{
  result = sub_227A38CE4("TURN_BASED_PARTICIPANT_STATUS_UNKNOWN", 37, 2u, 0x6E776F6E6B6E55, 0xE700000000000000);
  qword_27D7DDF00 = result;
  *algn_27D7DDF08 = v1;
  return result;
}

uint64_t sub_227A3E91C()
{
  result = sub_227A38CE4("UNKNOWN_PLAYER_NICKNAME", 23, 2u, 0x6E776F6E6B6E55, 0xE700000000000000);
  qword_27D7DDF10 = result;
  *algn_27D7DDF18 = v1;
  return result;
}

uint64_t sub_227A3E9B4()
{
  result = sub_227A38CE4("RELATIVE_HOURS_AGO_FORMAT", 25, 2u, 0, 0xE000000000000000);
  qword_27D7DDF20 = result;
  *algn_27D7DDF28 = v1;
  return result;
}

uint64_t sub_227A3EA38()
{
  result = sub_227A38CE4("RELATIVE_MINUTES_AGO_FORMAT", 27, 2u, 0, 0xE000000000000000);
  qword_27D7DDF30 = result;
  *algn_27D7DDF38 = v1;
  return result;
}

uint64_t sub_227A3EABC()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_FIRST", 24, 2u, 0, 0xE000000000000000);
  qword_27D7DDF40 = result;
  *algn_27D7DDF48 = v1;
  return result;
}

uint64_t sub_227A3EB40()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_SECOND", 25, 2u, 0, 0xE000000000000000);
  qword_27D7DDF50 = result;
  *algn_27D7DDF58 = v1;
  return result;
}

uint64_t sub_227A3EBC4()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_THIRD", 24, 2u, 0, 0xE000000000000000);
  qword_27D7DDF60 = result;
  *algn_27D7DDF68 = v1;
  return result;
}

uint64_t sub_227A3EC48()
{
  result = sub_227A38CE4("TURN_BASED_OUTCOME_FOURTH", 25, 2u, 0, 0xE000000000000000);
  qword_27D7DDF70 = result;
  *algn_27D7DDF78 = v1;
  return result;
}

uint64_t sub_227A3ECB4(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;

  return v5;
}

id _s20GameCenterFoundation19GCFLocalizedStringsCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A3EE24(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000011, 0x8000000227A991E0, 0xD000000000000017, 0x8000000227AA4A00);
}

uint64_t sub_227A3EEB4()
{
  sub_227A40414();
  sub_227A7224C();
  sub_227A40458();
  result = sub_227A7243C();
  dword_27D7DDFB0 = 0;
  qword_27D7DDFB8 = result;
  return result;
}

void sub_227A3EF14(void *a1, void *a2)
{
  v4 = sub_227A721EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  if (qword_27D7DC4B8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27D7DC4B8);
  }

  os_unfair_lock_lock(&dword_27D7DDFB0);
  if (qword_27D7DC4B0 != -1)
  {
    swift_once();
  }

  v11 = sub_227A7220C();
  __swift_project_value_buffer(v11, qword_27D7DDF98);
  sub_227A721FC();
  sub_227A721CC();
  v12 = a2;
  v13 = sub_227A721FC();
  v14 = sub_227A7297C();

  if (sub_227A729AC())
  {
    v15 = swift_slowAlloc();
    v23 = a1;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v12;
    *v17 = v12;
    v18 = v12;
    v19 = sub_227A721DC();
    _os_signpost_emit_with_name_impl(&dword_227904000, v13, v14, v19, "RPC", "%@", v16, 0xCu);
    sub_227A271C4(v17);
    MEMORY[0x22AAA1930](v17, -1, -1);
    v20 = v16;
    a1 = v23;
    MEMORY[0x22AAA1930](v20, -1, -1);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_227A7224C();
  swift_allocObject();
  sub_227A7223C();
  (*(v5 + 8))(v10, v4);

  sub_227A3FA20(v21, a1);

  os_unfair_lock_unlock(&dword_27D7DDFB0);
}

void sub_227A3F22C(void *a1, __n128 a2)
{
  if (qword_27D7DC4B8 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27D7DC4B8);
  }

  os_unfair_lock_lock(&dword_27D7DDFB0);
  sub_227A3F2B4(&qword_27D7DDFB8, a1);

  os_unfair_lock_unlock(&dword_27D7DDFB0);
}

void sub_227A3F2B4(uint64_t a1, void *a2)
{
  v3 = sub_227A7221C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_227A721EC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_227A3F85C(a2))
  {
    if (qword_27D7DC4B0 != -1)
    {
      swift_once();
    }

    v11 = sub_227A7220C();
    __swift_project_value_buffer(v11, qword_27D7DDF98);
    v12 = sub_227A721FC();
    sub_227A7222C();
    v24 = sub_227A7296C();
    if (sub_227A729AC())
    {

      sub_227A7225C();

      if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v4 + 8))(v6, v3);
        v13 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_227A721DC();
      _os_signpost_emit_with_name_impl(&dword_227904000, v12, v24, v22, "RPC", v13, v21, 2u);
      MEMORY[0x22AAA1930](v21, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (qword_27D7DC4A8 != -1)
    {
      swift_once();
    }

    v14 = sub_227A7227C();
    __swift_project_value_buffer(v14, qword_27D7DDF80);
    v15 = a2;
    v16 = sub_227A7226C();
    v17 = sub_227A728BC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_227904000, v16, v17, "Failed to set end identifier %@", v18, 0xCu);
      sub_227A271C4(v19);
      MEMORY[0x22AAA1930](v19, -1, -1);
      MEMORY[0x22AAA1930](v18, -1, -1);
    }
  }
}

id GKDaemonProxySignposter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKDaemonProxySignposter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKDaemonProxySignposter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GKDaemonProxySignposter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GKDaemonProxySignposter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227A3F780(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2279FDBCC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFD8, &qword_227AA4A60);
  sub_227A72C2C();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for TransportPeerMonitor();
  sub_227A72C4C();
  *v3 = v9;
  return v7;
}

uint64_t sub_227A3F85C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v14 = sub_2279FDC44();
    if (v15)
    {
      v16 = v14;
      swift_isUniquelyReferenced_nonNull_native();
      v17 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFC8, &qword_227AA4A48);
      sub_227A72C2C();
      v8 = v17;

      v13 = *(*(v17 + 56) + 8 * v16);
      sub_227A40414();
      sub_227A7224C();
      sub_227A40458();
      sub_227A72C4C();
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_227A72C7C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_227A72A4C();
  v8 = sub_227A3FB1C(v4, v7);

  v9 = sub_2279FDC44();
  v11 = v10;

  if (v11)
  {

    v13 = *(*(v8 + 56) + 8 * v9);
    sub_227A40414();
    sub_227A7224C();
    sub_227A40458();
    sub_227A72C4C();

LABEL_10:
    *v2 = v8;
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_227A3FA20(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_227A72A4C();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_227A3FB1C(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_227A62888(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_227A3FB1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFD0, &unk_227AA4A50);
    v2 = sub_227A72CCC();
    v17 = v2;
    sub_227A72C5C();
    while (1)
    {
      v3 = sub_227A72C8C();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_227A40414();
      swift_dynamicCast();
      sub_227A7224C();
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_227A401A8(v4 + 1, 1);
      }

      v2 = v17;
      result = sub_227A7298C();
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_227A3FD10(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_6_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFE0, &qword_227AA4A68);
  v35 = v6;
  v7 = sub_227A72CBC();
  if (!v3[2])
  {
LABEL_32:

LABEL_33:
    *v5 = v7;
    return;
  }

  v8 = 0;
  OUTLINED_FUNCTION_1_19();
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  if ((v11 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v4[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v2;
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_5_9();
    v5 = v2;
    if (v33 != v34)
    {
      *v4 = -1 << v32;
    }

    else
    {
      OUTLINED_FUNCTION_8_10(v32);
    }

    v3[2] = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (v3[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (v3[7] + 32 * v18);
    if (v35)
    {
      sub_2279FF11C(v22, v36);
    }

    else
    {
      sub_2279F4900(v22, v36);
    }

    sub_227A72F2C();
    sub_227A7255C();
    v23 = sub_227A72F4C() & ~(-1 << *(v7 + 32));
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_4_8();
LABEL_24:
    OUTLINED_FUNCTION_7_9();
    *(v14 + v28) |= v29;
    v31 = (*(v7 + 48) + 16 * v30);
    *v31 = v20;
    v31[1] = v21;
    sub_2279FF11C(v36, (*(v7 + 56) + 32 * v30));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_3_10();
  while (++v24 != v26 || (v25 & 1) == 0)
  {
    v27 = v24 == v26;
    if (v24 == v26)
    {
      v24 = 0;
    }

    v25 |= v27;
    if (*(v14 + 8 * v24) != -1)
    {
      OUTLINED_FUNCTION_2_14();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_227A3FF5C(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v6 = a2;
  OUTLINED_FUNCTION_6_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7DD240, &qword_227AA37D0);
  v7 = sub_227A72CBC();
  if (!v3[2])
  {

LABEL_33:
    *v5 = v7;
    return;
  }

  v36 = v2;
  v8 = 0;
  OUTLINED_FUNCTION_1_19();
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v14 = v7 + 64;
  if ((v11 & v9) == 0)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v4[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_5_9();
      if (v34 != v35)
      {
        *v4 = -1 << v33;
      }

      else
      {
        OUTLINED_FUNCTION_8_10(v33);
      }

      v3[2] = 0;
    }

    v5 = v36;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = v3[6] + 40 * v18;
    if (v6)
    {
      v20 = *v19;
      v21 = *(v19 + 16);
      v40 = *(v19 + 32);
      v38 = v20;
      v39 = v21;
      sub_2279FF11C((v3[7] + 32 * v18), v37);
    }

    else
    {
      sub_2279FEF6C(v19, &v38);
      sub_2279F4900(v3[7] + 32 * v18, v37);
    }

    v22 = sub_227A72A9C() & ~(-1 << *(v7 + 32));
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_4_8();
LABEL_24:
    OUTLINED_FUNCTION_7_9();
    *(v14 + v27) |= v28;
    v30 = *(v7 + 48) + 40 * v29;
    v31 = v38;
    v32 = v39;
    *(v30 + 32) = v40;
    *v30 = v31;
    *(v30 + 16) = v32;
    sub_2279FF11C(v37, (*(v7 + 56) + 32 * v29));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_3_10();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v14 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_2_14();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_227A401A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFD0, &unk_227AA4A50);
  result = sub_227A72CBC();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v31 = v2;
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_227A58C28(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
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
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
    }

    result = sub_227A7298C();
    v22 = -1 << *(v7 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_227A40414()
{
  result = qword_27D7DC890;
  if (!qword_27D7DC890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7DC890);
  }

  return result;
}

unint64_t sub_227A40458()
{
  result = qword_27D7DDFC0;
  if (!qword_27D7DDFC0)
  {
    sub_227A40414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DDFC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_10@<X0>(uint64_t a1@<X8>)
{

  return sub_227A58C28(0, (a1 + 63) >> 6, v1);
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

uint64_t sub_227A40574(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_227A405B4(uint64_t result, int a2, int a3)
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

unint64_t sub_227A40610(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_227A40638@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227A40610(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_227A40664@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227A40620(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_227A40740(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C746954656D6167 && a2 == 0xE900000000000065;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000227A9F620 == a2;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x8000000227A9F640 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_227A72E5C();

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

unint64_t sub_227A408AC(char a1)
{
  result = 0x6C746954656D6167;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A4093C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE000, &qword_227AA4B88);
  OUTLINED_FUNCTION_92();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A422E0();
  sub_227A72F6C();
  v12[15] = 0;
  OUTLINED_FUNCTION_2_15();
  sub_227A72DCC();
  if (!v2)
  {
    v12[14] = 1;
    OUTLINED_FUNCTION_2_15();
    sub_227A72DCC();
    v12[13] = *(v3 + 32);
    v12[12] = 2;
    sub_227A42388();
    sub_227A72DFC();
    v12[11] = 3;
    OUTLINED_FUNCTION_2_15();
    sub_227A72DAC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_227A40AE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DDFE8, &qword_227AA4B80);
  OUTLINED_FUNCTION_92();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227A422E0();
  sub_227A72F5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v29 = 0;
  OUTLINED_FUNCTION_4_9();
  v11 = sub_227A72D4C();
  v13 = v12;
  v24 = v11;
  v28 = 1;
  OUTLINED_FUNCTION_4_9();
  v22 = sub_227A72D4C();
  v23 = v14;
  v26 = 2;
  sub_227A42334();
  sub_227A72D7C();
  HIDWORD(v21) = v27;
  v25 = 3;
  OUTLINED_FUNCTION_4_9();
  v15 = sub_227A72D2C();
  v17 = v16;
  v18 = v15;
  (*(v7 + 8))(v10, v5);

  v19 = v23;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  *a2 = v24;
  *(a2 + 8) = v13;
  *(a2 + 16) = v22;
  *(a2 + 24) = v19;
  *(a2 + 32) = BYTE4(v21);
  *(a2 + 40) = v18;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_227A40D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A40740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A40DA4(uint64_t a1)
{
  v2 = sub_227A422E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A40DE0(uint64_t a1)
{
  v2 = sub_227A422E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A40E38(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_227A40EEC;

  return sub_227A40FDC();
}

uint64_t sub_227A40EEC()
{
  OUTLINED_FUNCTION_31();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227A40FDC()
{
  OUTLINED_FUNCTION_31();
  v1[2] = v2;
  v1[3] = v0;
  sub_227A71E5C();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A41068, 0, 0);
}

uint64_t sub_227A41068(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_227A71EBC();
  sub_227A71E4C();
  sub_227A71E8C();
  v3 = *v2;
  v4 = v2[1];

  MEMORY[0x22AA9F750](v3, v4);
  sub_227A71E7C();
  v5 = 0;
  v6 = 0;
  switch(*(v2 + 32))
  {
    case 1:
      v7 = qword_27D7DC368;
      v8 = &qword_27D7DDD00;
      goto LABEL_5;
    case 2:
      v7 = qword_27D7DC370;
      v8 = &qword_27D7DDD10;
      goto LABEL_5;
    case 3:
      goto LABEL_8;
    default:
      v7 = qword_27D7DC378;
      v8 = &qword_27D7DDD20;
LABEL_5:
      if (v7 != -1)
      {
        swift_once();
      }

      v6 = *v8;
      v5 = v8[1];

LABEL_8:
      MEMORY[0x22AA9F760](v6, v5);
      v9 = swift_task_alloc();
      *(v1 + 40) = v9;
      *v9 = v1;
      v9[1] = sub_227A41204;

      return sub_227A41484();
  }
}

uint64_t sub_227A41204()
{
  OUTLINED_FUNCTION_31();
  *(*v0 + 48) = v1;

  return MEMORY[0x2822009F8](sub_227A41300, 0, 0);
}

uint64_t sub_227A41300()
{
  OUTLINED_FUNCTION_31();
  sub_227A71E6C();

  v1 = *(v0 + 8);

  return v1();
}

double sub_227A4136C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_227A40AE4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_227A413D8()
{
  result = qword_280B55098;
  if (!qword_280B55098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B55098);
  }

  return result;
}

unint64_t sub_227A41430()
{
  result = qword_280B550A0;
  if (!qword_280B550A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B550A0);
  }

  return result;
}

uint64_t sub_227A41484()
{
  v1[7] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  v1[8] = swift_task_alloc();
  v2 = sub_227A71ADC();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227A4157C, 0, 0);
}

uint64_t sub_227A4157C(uint64_t a1)
{
  v30 = v1;
  v2 = v1[7];
  v3 = *(v2 + 48);
  if (!v3)
  {
    v19 = sub_227A7289C();
    if (qword_280B54DB0 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
    }

    v20 = sub_227A7227C();
    __swift_project_value_buffer(v20, qword_280B54DB8);
    v15 = sub_227A7226C();
    if (os_log_type_enabled(v15, v19))
    {
      v21 = OUTLINED_FUNCTION_106();
      v22 = OUTLINED_FUNCTION_107();
      v28 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_227A46730(0xD000000000000028, 0x8000000227A9F4B0, &v28);
      _os_log_impl(&dword_227904000, v15, v19, "SharePlay - %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      OUTLINED_FUNCTION_103();
      goto LABEL_13;
    }

LABEL_18:

    OUTLINED_FUNCTION_65_0();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v2 + 40);
  v5 = sub_227A7289C();
  if (qword_280B54DB0 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_280B54DB0);
  }

  v6 = sub_227A7227C();
  v1[12] = __swift_project_value_buffer(v6, qword_280B54DB8);
  v7 = sub_227A7226C();
  if (os_log_type_enabled(v7, v5))
  {
    v8 = OUTLINED_FUNCTION_106();
    v9 = OUTLINED_FUNCTION_107();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_227A46730(0xD000000000000018, 0x8000000227A9F4E0, &v28);
    _os_log_impl(&dword_227904000, v7, v5, "SharePlay - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
  }

  v11 = v1[8];
  v10 = v1[9];
  sub_227A71ACC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v10) == 1)
  {
    sub_227A42278(v1[8]);
    v12 = sub_227A7289C();
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_227A72B1C();

    v28 = 0xD000000000000026;
    v29 = 0x8000000227A9F500;
    MEMORY[0x22AA9FE40](v4, v3);
    v14 = v28;
    v13 = v29;

    v15 = sub_227A7226C();

    if (os_log_type_enabled(v15, v12))
    {
      v16 = OUTLINED_FUNCTION_106();
      v17 = OUTLINED_FUNCTION_107();
      v28 = v17;
      *v16 = 136315138;
      v18 = sub_227A46730(v14, v13, &v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_227904000, v15, v12, "SharePlay - %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      OUTLINED_FUNCTION_103();
LABEL_13:
      OUTLINED_FUNCTION_103();
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  (*(v1[10] + 32))(v1[11], v1[8], v1[9]);
  v1[13] = [objc_opt_self() sharedSession];
  v23 = swift_task_alloc();
  v1[14] = v23;
  *v23 = v1;
  v23[1] = sub_227A419C8;
  OUTLINED_FUNCTION_65_0();

  return MEMORY[0x28211ED00]();
}

uint64_t sub_227A419C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[15] = a1;
  v6[16] = a2;
  v6[17] = v3;

  if (v3)
  {
    v7 = sub_227A42060;
  }

  else
  {
    v8 = v6[13];

    v7 = sub_227A41AF8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_227A41AF8()
{
  v49 = v0;
  v1 = sub_227A71B8C();
  v2 = CGDataProviderCreateWithCFData(v1);

  if (!v2)
  {
    v7 = sub_227A7289C();
    v8 = sub_227A7226C();
    v9 = os_log_type_enabled(v8, v7);
    v11 = v0[15];
    v10 = v0[16];
    v13 = v0[10];
    v12 = v0[11];
    v14 = v0[9];
    if (v9)
    {
      v45 = v0[11];
      v15 = OUTLINED_FUNCTION_106();
      v16 = OUTLINED_FUNCTION_107();
      v47 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_227A46730(0xD00000000000002BLL, 0x8000000227A9F560, &v47);
      _os_log_impl(&dword_227904000, v8, v7, "SharePlay - %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
      sub_2279E3FA4(v11, v10);

      (*(v13 + 8))(v45, v14);
    }

    else
    {
      sub_2279E3FA4(v0[15], v0[16]);

      (*(v13 + 8))(v12, v14);
    }

    goto LABEL_13;
  }

  v3 = CGImageCreateWithPNGDataProvider(v2, 0, 0, kCGRenderingIntentDefault);
  v4 = sub_227A7289C();
  if (!v3)
  {
    v17 = sub_227A7226C();
    v18 = os_log_type_enabled(v17, v4);
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[10];
    v22 = v0[11];
    v23 = v0[9];
    if (v18)
    {
      v46 = v2;
      v24 = OUTLINED_FUNCTION_106();
      v42 = v22;
      v25 = v4;
      v26 = OUTLINED_FUNCTION_107();
      v47 = v26;
      *v24 = 136315138;
      *(v24 + 4) = sub_227A46730(0xD00000000000002CLL, 0x8000000227A9F590, &v47);
      _os_log_impl(&dword_227904000, v17, v25, "SharePlay - %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_103();
      sub_2279E3FA4(v20, v19);

      (*(v21 + 8))(v42, v23);
    }

    else
    {
      sub_2279E3FA4(v0[15], v0[16]);

      (*(v21 + 8))(v22, v23);
    }

LABEL_13:
    v3 = 0;
    goto LABEL_18;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_227A72B1C();
  MEMORY[0x22AA9FE40](0xD00000000000002ELL, 0x8000000227A9F5C0);
  v5 = CGImageGetUTType(v3);
  v44 = v2;
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v47 = 0;
      v48 = 0;
      sub_227A724DC();
    }
  }

  MEMORY[0x22AA9FE40](6369134, 0xE300000000000000);

  MEMORY[0x22AA9FE40](0x7A697320646E6120, 0xEB00000000203A65);
  v0[5] = CGImageGetWidth(v3);
  v27 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v27);

  MEMORY[0x22AA9FE40](120, 0xE100000000000000);
  v0[6] = CGImageGetHeight(v3);
  v28 = sub_227A72E1C();
  MEMORY[0x22AA9FE40](v28);

  v29 = sub_227A7226C();

  v30 = os_log_type_enabled(v29, v4);
  v31 = v0[15];
  v32 = v0[10];
  v33 = v0[11];
  v34 = v0[9];
  if (v30)
  {
    v40 = v0[16];
    v43 = v0[11];
    v35 = swift_slowAlloc();
    v41 = v34;
    v36 = OUTLINED_FUNCTION_107();
    v47 = v36;
    *v35 = 136315138;
    v37 = sub_227A46730(0, 0xE000000000000000, &v47);

    *(v35 + 4) = v37;
    _os_log_impl(&dword_227904000, v29, v4, "SharePlay - %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();
    sub_2279E3FA4(v31, v40);

    (*(v32 + 8))(v43, v41);
  }

  else
  {
    sub_2279E3FA4(v0[15], v0[16]);

    (*(v32 + 8))(v33, v34);
  }

LABEL_18:

  v38 = v0[1];

  return v38(v3);
}

void sub_227A42060()
{
  v1 = *(v0 + 136);

  v2 = sub_227A7289C();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_227A72B1C();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x22AA9FE40](0xD000000000000028, 0x8000000227A9F530);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC530, &qword_227AA0130);
  sub_227A72C1C();
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  v5 = sub_227A7226C();

  v6 = os_log_type_enabled(v5, v2);
  v7 = *(v0 + 136);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 72);
  if (v6)
  {
    v16 = *(v0 + 88);
    v11 = OUTLINED_FUNCTION_106();
    v12 = OUTLINED_FUNCTION_107();
    v17[0] = v12;
    *v11 = 136315138;
    v13 = sub_227A46730(v3, v4, v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_227904000, v5, v2, "SharePlay - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_103();

    (*(v8 + 8))(v16, v10);
  }

  else
  {

    (*(v8 + 8))(v9, v10);
  }

  OUTLINED_FUNCTION_65_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_227A42278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD3A0, &qword_227AA48E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227A422E0()
{
  result = qword_27D7DDFF0;
  if (!qword_27D7DDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DDFF0);
  }

  return result;
}

unint64_t sub_227A42334()
{
  result = qword_27D7DDFF8;
  if (!qword_27D7DDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DDFF8);
  }

  return result;
}

unint64_t sub_227A42388()
{
  result = qword_27D7DE008;
  if (!qword_27D7DE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE008);
  }

  return result;
}

_BYTE *sub_227A423EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227A424CC()
{
  result = qword_27D7DE010;
  if (!qword_27D7DE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE010);
  }

  return result;
}

unint64_t sub_227A42524()
{
  result = qword_27D7DE018;
  if (!qword_27D7DE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE018);
  }

  return result;
}

unint64_t sub_227A4257C()
{
  result = qword_27D7DE020;
  if (!qword_27D7DE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE020);
  }

  return result;
}

unint64_t sub_227A425D4()
{
  result = qword_27D7DE028;
  if (!qword_27D7DE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE028);
  }

  return result;
}

unint64_t sub_227A42628()
{
  result = qword_27D7DE030;
  if (!qword_27D7DE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE030);
  }

  return result;
}

uint64_t sub_227A42694(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000227A9F660 == a2;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000227A9F680 == a2;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000227A9F6A0 == a2;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x8000000227A9F6C0 == a2;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C6172656E6567 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_227A72E5C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_227A42840(char a1)
{
  result = 0x6C6172656E6567;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      return result;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_227A42920(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A429A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261;
  if (v4 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_227A72E5C();

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

uint64_t sub_227A42A78(char a1)
{
  sub_227A72F2C();
  MEMORY[0x22AAA07F0](a1 & 1);
  return sub_227A72F4C();
}

uint64_t sub_227A42AC0(char a1)
{
  if (a1)
  {
    return 0x4449726579616C70;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_227A42B08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D65766569686361 && a2 == 0xED00004449746E65)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_227A72E5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227A42BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A42694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A42BDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227A42838();
  *a1 = result;
  return result;
}

uint64_t sub_227A42C04(uint64_t a1)
{
  v2 = sub_227A434FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42C40(uint64_t a1)
{
  v2 = sub_227A434FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42C7C(uint64_t a1)
{
  v2 = sub_227A43550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42CB8(uint64_t a1)
{
  v2 = sub_227A43550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42CF8(uint64_t a1)
{
  v2 = sub_227A435F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42D34(uint64_t a1)
{
  v2 = sub_227A435F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42D70(uint64_t a1)
{
  v2 = sub_227A4364C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42DAC(uint64_t a1)
{
  v2 = sub_227A4364C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A429A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A42E20(uint64_t a1)
{
  v2 = sub_227A436A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42E5C(uint64_t a1)
{
  v2 = sub_227A436A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227A42E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A42B08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_227A42EC8(uint64_t a1)
{
  v2 = sub_227A435A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A42F04(uint64_t a1)
{
  v2 = sub_227A435A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void InGameBannerData.BannerType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_41_0();
  v88 = v28;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE038, &qword_227AA4DB0);
  OUTLINED_FUNCTION_92();
  v82 = v32;
  v83 = v31;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_36_0();
  v79 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE040, &qword_227AA4DB8);
  OUTLINED_FUNCTION_92();
  v80 = v36;
  v81 = v35;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36_0();
  v78 = v38;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE048, &qword_227AA4DC0);
  OUTLINED_FUNCTION_92();
  v75 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  v42 = &v71 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE050, &qword_227AA4DC8);
  OUTLINED_FUNCTION_92();
  v72 = v44;
  v73 = v43;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  v47 = &v71 - v46;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE058, &qword_227AA4DD0);
  OUTLINED_FUNCTION_92();
  v74 = v48;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v49);
  v51 = &v71 - v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE060, &unk_227AA4DD8);
  OUTLINED_FUNCTION_92();
  v86 = v53;
  v87 = v52;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_54_0();
  v55 = v27[1];
  v84 = *v27;
  v85 = v55;
  v71 = v27[2];
  v56 = *(v27 + 24);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  sub_227A434FC();
  sub_227A72F6C();
  switch(v56)
  {
    case 1:
      sub_227A4364C();
      v67 = v87;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      v70 = v73;
      sub_227A72DCC();
      (*(v72 + 8))(v47, v70);
      goto LABEL_10;
    case 2:
      sub_227A435F8();
      v67 = v87;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      v68 = v77;
      sub_227A72DCC();
      v69 = v75;
      goto LABEL_8;
    case 3:
      sub_227A435A4();
      v42 = v78;
      v67 = v87;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      v68 = v81;
      sub_227A72DCC();
      v69 = v80;
LABEL_8:
      (*(v69 + 8))(v42, v68);
LABEL_10:
      v60 = OUTLINED_FUNCTION_12_5();
      v62 = v67;
      goto LABEL_11;
    case 4:
      sub_227A43550();
      v63 = v79;
      v64 = v87;
      OUTLINED_FUNCTION_4_10();
      sub_227A72D9C();
      (*(v82 + 8))(v63, v83);
      v65 = OUTLINED_FUNCTION_12_5();
      v66(v65, v64);
      goto LABEL_12;
    default:
      sub_227A436A0();
      v57 = v87;
      OUTLINED_FUNCTION_1_20();
      sub_227A72D9C();
      v58 = v76;
      v59 = v88;
      sub_227A72DCC();
      if (!v59)
      {
        v89 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
        sub_227A45098(&qword_27D7DE098, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
        sub_227A72DFC();
      }

      (*(v74 + 8))(v51, v58);
      v60 = OUTLINED_FUNCTION_12_5();
      v62 = v57;
LABEL_11:
      v61(v60, v62);
LABEL_12:
      OUTLINED_FUNCTION_40_0();
      return;
  }
}

unint64_t sub_227A434FC()
{
  result = qword_27D7DE068;
  if (!qword_27D7DE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE068);
  }

  return result;
}

unint64_t sub_227A43550()
{
  result = qword_27D7DE070;
  if (!qword_27D7DE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE070);
  }

  return result;
}

unint64_t sub_227A435A4()
{
  result = qword_27D7DE078;
  if (!qword_27D7DE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE078);
  }

  return result;
}

unint64_t sub_227A435F8()
{
  result = qword_27D7DE080;
  if (!qword_27D7DE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE080);
  }

  return result;
}

unint64_t sub_227A4364C()
{
  result = qword_27D7DE088;
  if (!qword_27D7DE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE088);
  }

  return result;
}

unint64_t sub_227A436A0()
{
  result = qword_27D7DE090;
  if (!qword_27D7DE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE090);
  }

  return result;
}

void InGameBannerData.BannerType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_41_0();
  v115 = v26;
  v29 = v28;
  v111 = v30;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0A0, &qword_227AA4DE8);
  OUTLINED_FUNCTION_92();
  v106 = v31;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_36_0();
  v109 = v33;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0A8, &qword_227AA4DF0);
  OUTLINED_FUNCTION_92();
  v107 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_36_0();
  v110 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0B0, &qword_227AA4DF8);
  OUTLINED_FUNCTION_92();
  v103 = v38;
  v104 = v37;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_36_0();
  v108 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0B8, &qword_227AA4E00);
  OUTLINED_FUNCTION_92();
  v101 = v42;
  v102 = v41;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_54_0();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0C0, &qword_227AA4E08);
  OUTLINED_FUNCTION_92();
  v105 = v45;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v46);
  v48 = &v96 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0C8, &qword_227AA4E10);
  OUTLINED_FUNCTION_92();
  v51 = v50;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v52);
  v54 = &v96 - v53;
  v55 = v29[3];
  v114 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v55);
  sub_227A434FC();
  v56 = v115;
  sub_227A72F5C();
  v57 = v56;
  if (v56)
  {
    goto LABEL_9;
  }

  v98 = v27;
  v99 = v48;
  v97 = v44;
  v59 = v112;
  v58 = v113;
  v115 = v51;
  v60 = sub_227A72D8C();
  v61 = sub_227A44FD4(v60, 0);
  v65 = v49;
  v100 = v54;
  if (v63 == v64 >> 1)
  {
LABEL_8:
    v75 = sub_227A72B5C();
    swift_allocError();
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DCB70, &qword_227AA2E00);
    *v77 = &type metadata for InGameBannerData.BannerType;
    v78 = v100;
    sub_227A72D1C();
    sub_227A72B4C();
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D84160], v75);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v115 + 8))(v78, v65);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0Tm(v114);
LABEL_10:
    OUTLINED_FUNCTION_40_0();
    return;
  }

  if (v63 < (v64 >> 1))
  {
    v96 = *(v62 + v63);
    v66 = sub_227A4501C(v63 + 1, v64 >> 1, v61, v62, v63, v64);
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    if (v68 == v70 >> 1)
    {
      v71 = v111;
      switch(v96)
      {
        case 1:
          sub_227A4364C();
          v83 = v98;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v84 = v102;
          sub_227A72D4C();
          OUTLINED_FUNCTION_9_8();
          v86 = v101;
          goto LABEL_15;
        case 2:
          sub_227A435F8();
          v83 = v108;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v84 = v104;
          sub_227A72D4C();
          OUTLINED_FUNCTION_9_8();
          v86 = v103;
          goto LABEL_15;
        case 3:
          sub_227A435A4();
          v85 = v110;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v84 = v59;
          sub_227A72D4C();
          v83 = v85;
          OUTLINED_FUNCTION_9_8();
          v86 = v107;
LABEL_15:
          (*(v86 + 8))(v83, v84);
          v90 = OUTLINED_FUNCTION_109();
          v91(v90);
          v88 = v66;
          goto LABEL_16;
        case 4:
          v79 = v58;
          sub_227A43550();
          v80 = v109;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          swift_unknownObjectRelease();
          (*(v106 + 8))(v80, v79);
          v81 = OUTLINED_FUNCTION_109();
          v82(v81);
          v88 = 0;
LABEL_16:
          v94 = 0;
          v95 = v114;
          break;
        default:
          sub_227A436A0();
          v72 = v99;
          OUTLINED_FUNCTION_1_20();
          sub_227A72D0C();
          v73 = v97;
          v74 = sub_227A72D4C();
          v57 = v87;
          v88 = v74;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DC850, &qword_227AA0C20);
          sub_227A45098(&qword_27D7DE0D0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
          sub_227A72D7C();
          v89 = v105;
          swift_unknownObjectRelease();
          (*(v89 + 8))(v72, v73);
          v92 = OUTLINED_FUNCTION_6_9();
          v93(v92);
          v94 = v116;
          v95 = v114;
          v71 = v111;
          break;
      }

      *v71 = v88;
      *(v71 + 8) = v57;
      *(v71 + 16) = v94;
      *(v71 + 24) = v96;
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
      goto LABEL_10;
    }

    v65 = v49;
    goto LABEL_8;
  }

  __break(1u);
}

void InGameBannerData.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_227A45104(v2, v3, v4, v5);
}

uint64_t InGameBannerData.image.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  sub_2279E3ED0(v0, v1);
  return OUTLINED_FUNCTION_86();
}

uint64_t InGameBannerData.clipData.getter()
{
  v0 = OUTLINED_FUNCTION_86();
  sub_2279E3ED0(v0, v1);
  return OUTLINED_FUNCTION_86();
}

void InGameBannerData.init(type:title:body:image:clipData:)(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6);
  v8[8] = v6;
  v8[9] = v7;
  v8[10] = v9;
  v8[11] = v10;
  v8[12] = 0;
  v8[13] = 0;
}

double InGameBannerData.init(type:title:body:clipData:imageSymbolName:)@<D0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, __n128 *a6@<X8>)
{
  OUTLINED_FUNCTION_17_4(a1, a2, a3, a4, a5, a6);
  result = 0.0;
  *(v7 + 64) = xmmword_227AA0100;
  *(v7 + 80) = v8;
  *(v7 + 88) = v9;
  *(v7 + 96) = v10;
  *(v7 + 104) = v11;
  return result;
}

uint64_t static InGameBannerData.encode(bannerData:)(const void *a1)
{
  sub_227A7198C();
  swift_allocObject();
  sub_227A7197C();
  memcpy(__dst, a1, sizeof(__dst));
  sub_227A45168();
  v2 = sub_227A7196C();

  return v2;
}

void *static InGameBannerData.decode(data:)@<X0>(void *a3@<X8>)
{
  sub_227A7195C();
  swift_allocObject();
  sub_227A7194C();
  sub_227A451BC();
  sub_227A7193C();

  return memcpy(a3, __src, 0x70uLL);
}

uint64_t sub_227A444D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_227A72E5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_227A72E5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 2036625250 && a2 == 0xE400000000000000;
      if (v7 || (sub_227A72E5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
        if (v8 || (sub_227A72E5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6174614470696C63 && a2 == 0xE800000000000000;
          if (v9 || (sub_227A72E5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6D79536567616D69 && a2 == 0xEF656D614E6C6F62)
          {

            return 5;
          }

          else
          {
            v11 = sub_227A72E5C();

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

unint64_t sub_227A446C0(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      v3 = 1819568500;
      goto LABEL_6;
    case 2:
      result = 2036625250;
      break;
    case 3:
      v3 = 1734438249;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 4:
      result = 0x6174614470696C63;
      break;
    case 5:
      result = 0x6D79536567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227A44768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227A444D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227A44790(uint64_t a1)
{
  v2 = sub_227A45210();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227A447CC(uint64_t a1)
{
  v2 = sub_227A45210();

  return MEMORY[0x2821FE720](a1, v2);
}

void InGameBannerData.encode(to:)()
{
  OUTLINED_FUNCTION_41_0();
  v34 = v1;
  v3 = v2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE0E8, &qword_227AA4E18);
  OUTLINED_FUNCTION_92();
  v35 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 32);
  v31 = *(v0 + 40);
  v32 = v11;
  v12 = *(v0 + 48);
  v29 = *(v0 + 56);
  v30 = v12;
  v13 = *(v0 + 64);
  v27 = *(v0 + 72);
  v28 = v13;
  v14 = *(v0 + 80);
  v25 = *(v0 + 88);
  v26 = v14;
  v15 = *(v0 + 104);
  v24[1] = *(v0 + 96);
  v24[2] = v15;
  v16 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_227A45104(v8, v9, v10, v16);
  sub_227A45210();
  v17 = v33;
  sub_227A72F6C();
  v36 = v8;
  v37 = v9;
  v18 = v7;
  v38 = v10;
  v39 = v16;
  sub_227A45264();
  OUTLINED_FUNCTION_14_5();
  v19 = v34;
  sub_227A72DFC();
  if (v19)
  {
    sub_227A452B8(v36, v37, v38, v39);
    (*(v35 + 8))(v7, v17);
  }

  else
  {
    v21 = v27;
    v20 = v28;
    v22 = v26;
    v23 = v35;
    sub_227A452B8(v36, v37, v38, v39);
    LOBYTE(v36) = 1;
    sub_227A72DCC();
    LOBYTE(v36) = 2;
    sub_227A72DAC();
    v36 = v20;
    v37 = v21;
    sub_2279E3ED0(v20, v21);
    sub_227A0E850();
    OUTLINED_FUNCTION_14_5();
    sub_227A72DBC();
    sub_2279E3F90(v36, v37);
    v36 = v22;
    v37 = v25;
    sub_2279E3ED0(v22, v25);
    OUTLINED_FUNCTION_14_5();
    sub_227A72DBC();
    sub_2279E3F90(v36, v37);
    LOBYTE(v36) = 5;
    sub_227A72DAC();
    (*(v23 + 8))(v18, v17);
  }

  OUTLINED_FUNCTION_40_0();
}

void InGameBannerData.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_41_0();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DE100, &qword_227AA4E20);
  OUTLINED_FUNCTION_92();
  v31 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_227A45210();
  sub_227A72F5C();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    sub_227A4531C();
    OUTLINED_FUNCTION_4_10();
    sub_227A72D7C();
    v53 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    OUTLINED_FUNCTION_11_7();
    v33 = sub_227A72D4C();
    v51 = v34;
    LOBYTE(v55) = 2;
    OUTLINED_FUNCTION_11_7();
    v35 = sub_227A72D2C();
    v52 = v36;
    v37 = v35;
    sub_227A0E7FC();
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_11_7();
    sub_227A72D3C();
    v46 = v55;
    v47 = v56;
    LOBYTE(v54[0]) = 4;
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_11_7();
    sub_227A72D3C();
    v44 = v37;
    v45 = v33;
    v38 = v55;
    v39 = v56;
    OUTLINED_FUNCTION_11_7();
    v40 = sub_227A72D2C();
    v41 = v24;
    v43 = v42;
    (*(v31 + 8))(v41, v29);
    v54[0] = v53;
    v54[1] = v56;
    v54[2] = v57;
    LOBYTE(v54[3]) = v58;
    v54[4] = v45;
    v54[5] = v51;
    v54[6] = v44;
    v54[7] = v52;
    v54[8] = v55;
    v54[9] = v56;
    v54[10] = v55;
    v54[11] = v56;
    v54[12] = v40;
    v54[13] = v43;
    memcpy(v28, v54, 0x70uLL);
    sub_227A45370(v54, &v55);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v55 = v53;
    v56 = v48;
    v57 = v49;
    v58 = v50;
    v59 = v45;
    v60 = v51;
    v61 = v44;
    v62 = v52;
    v63 = v46;
    v64 = v47;
    v65 = v38;
    v66 = v39;
    v67 = v40;
    v68 = v43;
    sub_227A453A8(&v55);
  }

  OUTLINED_FUNCTION_40_0();
}

uint64_t sub_227A44FD4(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_227A4501C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_227A45098(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7DC850, &qword_227AA0C20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_227A45104(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 3)
  {
    if (a4)
    {
      return;
    }
  }
}

unint64_t sub_227A45168()
{
  result = qword_27D7DE0D8;
  if (!qword_27D7DE0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0D8);
  }

  return result;
}

unint64_t sub_227A451BC()
{
  result = qword_27D7DE0E0;
  if (!qword_27D7DE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0E0);
  }

  return result;
}

unint64_t sub_227A45210()
{
  result = qword_27D7DE0F0;
  if (!qword_27D7DE0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0F0);
  }

  return result;
}

unint64_t sub_227A45264()
{
  result = qword_27D7DE0F8;
  if (!qword_27D7DE0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE0F8);
  }

  return result;
}

uint64_t sub_227A452B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 3)
  {
    if (a4)
    {
      return result;
    }
  }
}

unint64_t sub_227A4531C()
{
  result = qword_27D7DE108;
  if (!qword_27D7DE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7DE108);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20GameCenterFoundation02InA10BannerDataV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227A45440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_227A45480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_227A45500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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