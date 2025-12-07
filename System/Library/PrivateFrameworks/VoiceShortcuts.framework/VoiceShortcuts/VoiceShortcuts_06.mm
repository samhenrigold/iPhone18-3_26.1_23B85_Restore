uint64_t sub_2310D8114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v17 = v16[16];

  sub_2311581C8();

  v18 = v17;
  v19 = sub_231158238();
  sub_2311592F8();

  v20 = OUTLINED_FUNCTION_26_4();
  v21 = v16[16];
  v22 = v16[13];
  v24 = v16[9];
  v23 = v16[10];
  v25 = v16[8];
  if (v20)
  {
    a12 = v16[13];
    a11 = v16[8];
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_38_2();
    a10 = v24;
    a13 = swift_slowAlloc();
    *v26 = 136315394;
    a9 = v23;

    v28 = OUTLINED_FUNCTION_17();
    sub_2310488F8(v28, v29, v30);

    OUTLINED_FUNCTION_73_0();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v31;
    *v27 = v31;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
    sub_231051B38(v27, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    a12(v23, a11);
  }

  else
  {

    v22(v23, v25);
  }

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310D8320(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 177) = a4;
  *(v4 + 176) = a3;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF40, &qword_231166450);
  *(v4 + 32) = swift_task_alloc();
  v5 = sub_231158258();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D8470, 0, 0);
}

uint64_t sub_2310D8470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_24();
  a22 = v26;
  a23 = v27;
  OUTLINED_FUNCTION_87();
  a21 = v23;
  a12 = *MEMORY[0x277D85DE8];
  if (!*(v23 + 24))
  {
    v29 = objc_opt_self();
    if (qword_280CCB9B8 != -1)
    {
      goto LABEL_26;
    }

    goto LABEL_4;
  }

  v28 = *(v23 + 24);
  while (1)
  {
    v34 = *MEMORY[0x277D7A4F0];
    *(v23 + 88) = v28;
    *(v23 + 96) = v34;

    sub_2311581C8();

    v35 = sub_231158238();
    sub_2311592F8();

    v36 = OUTLINED_FUNCTION_26_4();
    *&a9 = *(v23 + 80);
    v38 = *(v23 + 40);
    v37 = *(v23 + 48);
    if (v36)
    {
      v39 = *(v23 + 177);
      v40 = *(v23 + 176);
      swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_22_3();
      a11 = v41;
      *v24 = 67109634;
      *(v24 + 1) = v40;
      *(v24 + 4) = 1024;
      *(v24 + 10) = v39;
      *(v24 + 7) = 2080;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF48, &qword_231166458);
      v43 = MEMORY[0x231924A30](v28, v42);
      v25 = v44;
      v45 = sub_2310488F8(v43, v44, &a11);

      v24[2] = v45;
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v46, v47, v48, v49, v50, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_9_7();
    }

    v51 = *(v37 + 8);
    v51(a9, v38);
    *(v23 + 104) = v51;
    v52 = sub_23106FF58(v28);
    *(v23 + 112) = v52;
    if (!v52)
    {

      OUTLINED_FUNCTION_59_3();

      OUTLINED_FUNCTION_1();
      goto LABEL_22;
    }

    sub_231158888();
    *(v23 + 120) = sub_231158878();
    if ((*(v23 + 177) & 1) == 0)
    {
      v54 = *(v23 + 32);
      v55 = sub_2311585F8();
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v55);
      sub_231158688();
      sub_231051B38(*(v23 + 32), &qword_27DD3CF40, &qword_231166450);
    }

    v29 = 0;
    *&v53 = 138412290;
    a9 = v53;
    v24 = &qword_231162750;
    if ((*(v23 + 88) & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x231925080](0);
LABEL_16:
      v60 = v57;
      *(v23 + 128) = v57;
      *(v23 + 136) = 1;
      OUTLINED_FUNCTION_57_3();
      v61 = v60;
      v62 = sub_231158238();
      v63 = sub_2311592F8();

      if (OUTLINED_FUNCTION_60_3())
      {
        v64 = OUTLINED_FUNCTION_45_1();
        v65 = OUTLINED_FUNCTION_38_2();
        OUTLINED_FUNCTION_48_3(v65, v66, v67, v68, v69, v70, v71, v72, v73, v74);
        *(v64 + 4) = v61;
        *v75 = v61;
        v76 = v61;
        OUTLINED_FUNCTION_77_1(&dword_23103C000, v62, v63, "pull: enumerating over set %@");
        sub_231051B38(v25, &unk_27DD3CC40, &qword_231162750);
        OUTLINED_FUNCTION_16_10();
        OUTLINED_FUNCTION_11_15();
      }

      v77 = *(v23 + 104);
      v78 = *(v23 + 72);
      v80 = *(v23 + 40);
      v79 = *(v23 + 48);

      OUTLINED_FUNCTION_50_4(v79 + 8);
      v77(v78, v80);
      _s16PullStateMachineCMa();
      swift_allocObject();
      *(v23 + 152) = sub_2310875F4(v61);
      v81 = swift_task_alloc();
      v82 = OUTLINED_FUNCTION_53_2(v81);
      *v82 = v83;
      OUTLINED_FUNCTION_1_17(v82);
      OUTLINED_FUNCTION_23_0();

      return sub_231087C30();
    }

    OUTLINED_FUNCTION_47_5();
    if (!v59)
    {
      v57 = *(v58 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_26:
    OUTLINED_FUNCTION_31_6(&qword_280CCB9B8);
LABEL_4:
    v30 = [v29 setEnumeratorWithUseCase_];
    *(v23 + 16) = 0;
    v31 = [v30 allSetsWithOptions:1 itemType:29397 error:v23 + 16];
    swift_unknownObjectRelease();
    v32 = *(v23 + 16);
    if (!v31)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF48, &qword_231166458);
    v28 = sub_231158F48();
    v33 = v32;
  }

  v56 = v32;
  sub_231157938();

  swift_willThrow();

  OUTLINED_FUNCTION_1();
LABEL_22:
  OUTLINED_FUNCTION_23_0();

  return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, *(&a9 + 1), a10, a11, a12, a13, a14, a15);
}

uint64_t sub_2310D8B6C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310D8C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v87 = *MEMORY[0x277D85DE8];

  v18 = v17[21];
  *&v19 = 138412290;
  v86 = v19;
  while (1)
  {
    OUTLINED_FUNCTION_42_5();
    v20 = v16;
    v21 = sub_231158238();
    v22 = sub_2311592F8();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v17[16];
    if (v23)
    {
      OUTLINED_FUNCTION_45_1();
      v25 = OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_63_3(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
      *(v20 + 4) = v24;
      *v35 = v24;
      v36 = v24;
      OUTLINED_FUNCTION_56_2(&dword_23103C000, v21, v22, "pull: finished enumerating over set %@");
      sub_231051B38(v25, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_29_2();
      v37 = v17[16];
    }

    else
    {
      v37 = v21;
      v21 = v17[16];
    }

    v38 = v17[17];
    v40 = v17[13];
    v39 = v17[14];

    v41 = OUTLINED_FUNCTION_64_2();
    v40(v41);
    if (v38 == v39)
    {
      break;
    }

    v42 = v17[17];
    if ((v17[11] & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x231925080](v17[17]);
    }

    else
    {
      OUTLINED_FUNCTION_47_5();
      if (v45)
      {
        goto LABEL_25;
      }

      v43 = *(v44 + 8 * v42 + 32);
    }

    v46 = v43;
    v17[16] = v43;
    v17[17] = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
    }

    OUTLINED_FUNCTION_57_3();
    v47 = v46;
    v48 = sub_231158238();
    v49 = sub_2311592F8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_45_1();
      v51 = OUTLINED_FUNCTION_38_2();
      *v50 = v86;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      OUTLINED_FUNCTION_77_1(&dword_23103C000, v48, v49, "pull: enumerating over set %@");
      sub_231051B38(v51, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_29_2();
      OUTLINED_FUNCTION_11_15();
    }

    v53 = v17[13];
    v54 = v17[9];
    v16 = v17[6];

    OUTLINED_FUNCTION_50_4(v16 + 8);
    v55 = OUTLINED_FUNCTION_64_2();
    v53(v55);
    _s16PullStateMachineCMa();
    swift_allocObject();
    v17[19] = sub_2310875F4(v47);
    if (!v18)
    {
      v82 = swift_task_alloc();
      v83 = OUTLINED_FUNCTION_53_2(v82);
      *v83 = v84;
      OUTLINED_FUNCTION_1_17(v83);
      OUTLINED_FUNCTION_23_0();

      return sub_231087C30();
    }

    OUTLINED_FUNCTION_58_3();
    v56 = v18;
    v57 = sub_231158238();
    v58 = sub_2311592D8();

    if (OUTLINED_FUNCTION_60_3())
    {
      OUTLINED_FUNCTION_45_1();
      v59 = OUTLINED_FUNCTION_22_10();
      OUTLINED_FUNCTION_63_3(v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v69 = v18;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 4) = v70;
      *v59 = v70;
      OUTLINED_FUNCTION_56_2(&dword_23103C000, v57, v58, "pull: error pulling down from Cascade: %@");
      sub_231051B38(v59, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_11_15();
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
    }

    v71 = OUTLINED_FUNCTION_33_5();
    v72(v71);
    v18 = 0;
  }

  OUTLINED_FUNCTION_59_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();

  return v74(v73, v74, v75, v76, v77, v78, v79, v80, v86, *(&v86 + 1), a11, a12, v87, a14, a15, a16);
}

uint64_t sub_2310D9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v90 = *MEMORY[0x277D85DE8];

  v19 = v17[21];
  *&v20 = 138412290;
  v89 = v20;
  OUTLINED_FUNCTION_58_3();
  v21 = v19;
  v22 = sub_231158238();
  v23 = sub_2311592D8();

  if (OUTLINED_FUNCTION_60_3())
  {
    OUTLINED_FUNCTION_45_1();
    v24 = OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_63_3(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
    v34 = v19;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v35;
    *v24 = v35;
    OUTLINED_FUNCTION_56_2(&dword_23103C000, v22, v23, "pull: error pulling down from Cascade: %@");
    sub_231051B38(v24, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  v36 = OUTLINED_FUNCTION_33_5();
  v37(v36);
  OUTLINED_FUNCTION_42_5();
  v38 = v16;
  v39 = sub_231158238();
  v40 = sub_2311592F8();

  v41 = OUTLINED_FUNCTION_62_4();
  v42 = v17[16];
  if (v41)
  {
    OUTLINED_FUNCTION_45_1();
    v43 = OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_63_3(v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    *(v38 + 4) = v42;
    *v53 = v42;
    v54 = v42;
    OUTLINED_FUNCTION_56_2(&dword_23103C000, v39, v40, "pull: finished enumerating over set %@");
    sub_231051B38(v43, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_29_2();
    v55 = v17[16];
  }

  else
  {
    v55 = v39;
    v39 = v17[16];
  }

  v56 = v17[17];
  v58 = v17[13];
  v57 = v17[14];
  v59 = v17[8];
  v60 = v17[5];

  v58(v59, v60);
  if (v56 != v57)
  {
    v61 = v17[17];
    if ((v17[11] & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x231925080](v17[17]);
    }

    else
    {
      OUTLINED_FUNCTION_47_5();
      if (v64)
      {
        goto LABEL_22;
      }

      v62 = *(v63 + 8 * v61 + 32);
    }

    v65 = v62;
    v17[16] = v62;
    v17[17] = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
      OUTLINED_FUNCTION_57_3();
      v66 = v65;
      v67 = sub_231158238();
      v68 = sub_2311592F8();

      if (OUTLINED_FUNCTION_60_3())
      {
        v69 = OUTLINED_FUNCTION_45_1();
        v70 = OUTLINED_FUNCTION_38_2();
        *v69 = v89;
        *(v69 + 4) = v66;
        *v70 = v66;
        v71 = v66;
        _os_log_impl(&dword_23103C000, v67, v68, "pull: enumerating over set %@", v69, 0xCu);
        sub_231051B38(v70, &unk_27DD3CC40, &qword_231162750);
        OUTLINED_FUNCTION_29_2();
        OUTLINED_FUNCTION_16_10();
      }

      v72 = v17[13];
      v73 = v17[9];
      v75 = v17[5];
      v74 = v17[6];

      OUTLINED_FUNCTION_50_4(v74 + 8);
      v72(v73, v75);
      _s16PullStateMachineCMa();
      swift_allocObject();
      v17[19] = sub_2310875F4(v66);
      v76 = swift_task_alloc();
      v77 = OUTLINED_FUNCTION_53_2(v76);
      *v77 = v78;
      OUTLINED_FUNCTION_1_17(v77);
      OUTLINED_FUNCTION_23_0();

      return sub_231087C30();
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_59_3();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();

  return v82(v81, v82, v83, v84, v85, v86, v87, v88, v89, *(&v89 + 1), a11, a12, v90, a14, a15, a16);
}

uint64_t sub_2310D9484(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  *(v3 + 176) = a2;
  v4 = sub_231158708();
  *(v3 + 24) = v4;
  *(v3 + 32) = *(v4 - 8);
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CF50, &unk_231166470);
  *(v3 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEA0, &unk_231162788);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_231157F18();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_231158258();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D9698, 0, 0);
}

uint64_t sub_2310D9698()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  sub_2311581C8();
  (*(v1 + 16))(v2, v4, v3);
  v5 = sub_231158238();
  v6 = sub_2311592F8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);
  if (v7)
  {
    v55 = *(v0 + 136);
    v13 = *(v0 + 176);
    v54 = v6;
    v14 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v14 = 67109378;
    *(v14 + 4) = v13;
    *(v14 + 8) = 2080;
    sub_231157EC8();
    (*(v11 + 8))(v10, v12);
    v15 = OUTLINED_FUNCTION_17();
    v18 = sub_2310488F8(v15, v16, v17);

    *(v14 + 10) = v18;
    _os_log_impl(&dword_23103C000, v5, v54, "push: donating ToolKit database to Cascade (force: %{BOOL}d, changeset: %s)", v14, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_11_15();

    v19 = *(v9 + 8);
    v19(v55, v8);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    v19 = *(v9 + 8);
    v20 = OUTLINED_FUNCTION_17();
    v19(v20, v21);
  }

  sub_231158888();
  v22 = sub_231158868();
  *(v0 + 144) = v22;
  v23 = v22;
  sub_2311585D8();
  sub_2310DC194(&qword_27DD3CF60, MEMORY[0x277D72708], MEMORY[0x277D72700]);
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_71_2();
  v25 = *(v0 + 72);
  v26 = *(v0 + 56);
  v27 = *(v0 + 24);
  v28 = *(*(v0 + 48) + 48);
  sub_2310DC074(*(v0 + 80), v26);
  sub_2310DC074(v25, v26 + v28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
  if (EnumTagSinglePayload != 1)
  {
    v31 = *(v0 + 24);
    sub_2310DC074(*(v0 + 56), *(v0 + 64));
    v32 = __swift_getEnumTagSinglePayload(v26 + v28, 1, v31);
    v33 = *(v0 + 64);
    if (v32 != 1)
    {
      v39 = *(v0 + 56);
      v41 = *(v0 + 32);
      v40 = *(v0 + 40);
      v42 = *(v0 + 24);
      v56 = *(v0 + 176);
      (*(v41 + 32))(v40, v26 + v28, v42);
      sub_2310DC194(&qword_27DD3CF68, MEMORY[0x277D72758], MEMORY[0x277D72760]);
      v43 = sub_231158E18();
      v44 = *(v41 + 8);
      v44(v40, v42);
      v44(v33, v42);
      sub_231051B38(v39, &qword_27DD3BEA0, &unk_231162788);
      if ((v43 & 1) != 0 && (v56 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    (*(*(v0 + 32) + 8))(*(v0 + 64), *(v0 + 24));
LABEL_14:
    sub_231051B38(*(v0 + 56), &unk_27DD3CF50, &unk_231166470);
    goto LABEL_15;
  }

  if (__swift_getEnumTagSinglePayload(v26 + v28, 1, *(v0 + 24)) != 1)
  {
    goto LABEL_14;
  }

  v30 = *(v0 + 176);
  sub_231051B38(*(v0 + 56), &qword_27DD3BEA0, &unk_231162788);
  if (v30 != 1)
  {
LABEL_20:
    sub_2311581C8();
    v45 = sub_231158238();
    v46 = sub_2311592B8();
    if (os_log_type_enabled(v45, v46))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_42_4();
      _os_log_impl(v47, v48, v49, v50, v51, 2u);
      OUTLINED_FUNCTION_9_7();
    }

    v52 = OUTLINED_FUNCTION_17();
    (v19)(v52);
    OUTLINED_FUNCTION_49_2();
    OUTLINED_FUNCTION_74_0(v46);
    OUTLINED_FUNCTION_74_0(v23);

    OUTLINED_FUNCTION_46_0();

    return v53();
  }

LABEL_15:
  v34 = *(v0 + 16);
  v35 = swift_task_alloc();
  *(v0 + 152) = v35;
  *(v35 + 16) = v23;
  *(v35 + 24) = v34;
  v36 = swift_task_alloc();
  v37 = OUTLINED_FUNCTION_53_2(v36);
  *v37 = v38;
  v37[1] = sub_2310D9CD8;

  return sub_2310D618C(&unk_231166488, v35);
}

uint64_t sub_2310D9CD8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_2_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310D9E14()
{

  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_74_0(v1);
  OUTLINED_FUNCTION_74_0(v0);

  OUTLINED_FUNCTION_46_0();

  return v2();
}

uint64_t sub_2310D9F00()
{
  v1 = *(v0 + 80);

  v2 = OUTLINED_FUNCTION_17();
  sub_231051B38(v2, v3, &unk_231162788);
  sub_231051B38(v1, &qword_27DD3BEA0, &unk_231162788);
  OUTLINED_FUNCTION_49_2();

  OUTLINED_FUNCTION_1();

  return v4();
}

uint64_t sub_2310D9FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_231158258();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DA0CC, 0, 0);
}

uint64_t sub_2310DA0CC()
{
  v24 = v0;
  v2 = v0[3];
  v0[11] = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v3 = sub_231158238();
  v4 = sub_2311592F8();

  if (os_log_type_enabled(v3, v4))
  {
    v22 = v0[10];
    v6 = v0[6];
    v5 = v0[7];
    v8 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_45_1();
    v9 = OUTLINED_FUNCTION_22_3();
    v23 = v9;
    *v1 = 136315138;
    v10 = v7 == 0;
    if (v7)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0x746C7561666564;
    }

    if (v10)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = v2;
    }

    v13 = sub_2310488F8(v11, v12, &v23);

    *(v1 + 4) = v13;
    OUTLINED_FUNCTION_70_2(&dword_23103C000, v14, v15, "push: starting donating changes (persona: %s)");
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    v16 = *(v5 + 8);
    v16(v22, v6);
  }

  else
  {
    v17 = v0[7];

    v16 = *(v17 + 8);
    v18 = OUTLINED_FUNCTION_17();
    (v16)(v18);
  }

  v0[12] = v16;
  _s16PushStateMachineCMa();
  swift_allocObject();
  v0[13] = sub_231058530();
  v19 = swift_task_alloc();
  v0[14] = v19;
  *v19 = v0;
  v19[1] = sub_2310DA2C4;
  OUTLINED_FUNCTION_10();

  return sub_231058800();
}

uint64_t sub_2310DA2C4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310DA3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_87();
  a22 = v24;
  sub_2311581C8();

  v28 = sub_231158238();
  sub_2311592F8();

  if (OUTLINED_FUNCTION_26_4())
  {
    a11 = v24[9];
    a12 = v24[12];
    a10 = v24[6];
    v29 = v24[2];
    v30 = v24[3];
    OUTLINED_FUNCTION_45_1();
    v31 = OUTLINED_FUNCTION_22_3();
    a13 = v31;
    *v25 = 136315138;
    if (v30)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0x746C7561666564;
    }

    if (v30)
    {
      v33 = v30;
    }

    else
    {
      v33 = 0xE700000000000000;
    }

    v34 = sub_2310488F8(v32, v33, &a13);

    *(v25 + 4) = v34;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v35, v36, v37, v38, v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    OUTLINED_FUNCTION_16_10();
    OUTLINED_FUNCTION_9_7();

    a12(a11, a10);
  }

  else
  {
    v40 = v24[12];

    v41 = OUTLINED_FUNCTION_17();
    v40(v41);
  }

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310DA568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t), void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_87();
  v17 = *(v16 + 120);

  sub_2311581C8();

  v18 = v17;
  v19 = sub_231158238();
  sub_2311592D8();

  if (OUTLINED_FUNCTION_26_4())
  {
    v20 = *(v16 + 120);
    a11 = *(v16 + 64);
    a12 = *(v16 + 96);
    a9 = *(v16 + 56);
    a10 = *(v16 + 48);
    v21 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_38_2();
    a13 = swift_slowAlloc();
    *v21 = 136315394;

    v23 = OUTLINED_FUNCTION_17();
    sub_2310488F8(v23, v24, v25);

    OUTLINED_FUNCTION_73_0();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v26;
    *v22 = v26;
    OUTLINED_FUNCTION_42_4();
    _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
    sub_231051B38(v22, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_16_10();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    a12(a11, a10);
  }

  else
  {
    v32 = *(v16 + 96);

    v33 = OUTLINED_FUNCTION_17();
    v32(v33);
  }

  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_23_0();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310DA780(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_231158258();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  if (a1)
  {
    v50 = a3;
    v16 = a1;
    sub_2311581C8();
    v17 = v16;
    v18 = a2;
    v19 = sub_231158238();
    v20 = sub_2311592F8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v48 = v9;
      v22 = v21;
      v23 = swift_slowAlloc();
      v51[0] = v23;
      *v22 = 136315394;
      v52 = a1;
      v24 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF88, &unk_2311664C8);
      v25 = sub_231158E68();
      v27 = sub_2310488F8(v25, v26, v51);
      v49 = v17;
      v28 = v8;
      v29 = v27;

      *(v22 + 4) = v29;
      *(v22 + 12) = 2080;
      v52 = a2;
      v30 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF80, &qword_2311664B0);
      v31 = sub_231158E68();
      v33 = sub_2310488F8(v31, v32, v51);
      v8 = v28;
      v17 = v49;

      *(v22 + 14) = v33;
      _os_log_impl(&dword_23103C000, v19, v20, "pull: got set change: %s, error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319267C0](v23, -1, -1);
      MEMORY[0x2319267C0](v22, -1, -1);

      (*(v10 + 8))(v15, v48);
    }

    else
    {

      (*(v10 + 8))(v15, v9);
    }

    v44 = sub_2311590C8();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v44);
    v45 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v45;
    v46[5] = v17;
    sub_2310798FC();
  }

  else
  {
    sub_2311581C8();
    v34 = a2;
    v35 = sub_231158238();
    v36 = sub_2311592E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136315138;
      v52 = a2;
      v39 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF80, &qword_2311664B0);
      v40 = sub_231158E68();
      v42 = sub_2310488F8(v40, v41, v51);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_23103C000, v35, v36, "pull: error listening to Cascade set changes: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x2319267C0](v38, -1, -1);
      MEMORY[0x2319267C0](v37, -1, -1);
    }

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_2310DAC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_231158258();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DAD20, 0, 0);
}

uint64_t sub_2310DAD20()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_40_5();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
    v3 = swift_allocObject();
    v0[11] = v3;
    *(v3 + 16) = xmmword_231161E80;
    *(v3 + 32) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_2310DAE54;

    return sub_2310D5C80();
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v7();
  }
}

uint64_t sub_2310DAE54()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_2310DAF80()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[13];

  sub_2311581C8();
  v3 = v2;
  v4 = sub_231158238();
  sub_2311592D8();

  v5 = OUTLINED_FUNCTION_62_4();
  v6 = v0[13];
  if (v5)
  {
    OUTLINED_FUNCTION_45_1();
    v7 = OUTLINED_FUNCTION_22_10();
    *v1 = 138412290;
    v8 = v6;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v10, v11, "pull: error enumerating sets %@");
    sub_231051B38(v7, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_2310DB0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_231158258();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = sub_231157F18();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DB1FC, 0, 0);
}

uint64_t sub_2310DB1FC()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[10];
  v2 = OUTLINED_FUNCTION_30_6();
  v3(v2);
  sub_231157ED8();
  v4 = OUTLINED_FUNCTION_29_6();
  v5(v4);
  if (v1)
  {
    v0[19] = *MEMORY[0x277D7A4F0];
    sub_2311581C8();
    v6 = sub_231158238();
    v7 = sub_2311592F8();
    if (OUTLINED_FUNCTION_20_2(v7))
    {
      v8 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v8);
      OUTLINED_FUNCTION_29_5(&dword_23103C000, v9, v10, "pull: re-ingest from cascade bc full index");
      OUTLINED_FUNCTION_16();
    }

    v11 = OUTLINED_FUNCTION_17();
    v12(v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[20] = v13;
    *v13 = v14;
    v13[1] = sub_2310DB400;
    OUTLINED_FUNCTION_9();

    return sub_2310DB98C(v15, v16, v17, v18);
  }

  else
  {
    OUTLINED_FUNCTION_41_6();
    Strong = swift_weakLoadStrong();
    v0[22] = Strong;
    if (Strong)
    {
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      OUTLINED_FUNCTION_12_8(v21);

      return sub_2310D645C();
    }

    else
    {
      OUTLINED_FUNCTION_75_1();

      OUTLINED_FUNCTION_1();

      return v22();
    }
  }
}

uint64_t sub_2310DB400()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310DB4FC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_41_6();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 184) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_12_8(v2);

    return sub_2310D645C();
  }

  else
  {
    OUTLINED_FUNCTION_75_1();

    OUTLINED_FUNCTION_1();

    return v4();
  }
}

uint64_t sub_2310DB5C4()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[21];
  sub_2311581C8();
  v3 = v2;
  v4 = sub_231158238();
  sub_2311592D8();

  if (OUTLINED_FUNCTION_62_4())
  {
    OUTLINED_FUNCTION_45_1();
    v5 = OUTLINED_FUNCTION_22_10();
    *v1 = 138412290;
    v6 = v2;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v7;
    *v5 = v7;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v8, v9, "push: error donating sets %@");
    sub_231051B38(v5, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2310DB704()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_2310DB83C()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();

  v2 = v0[24];
  sub_2311581C8();
  v3 = v2;
  v4 = sub_231158238();
  sub_2311592D8();

  if (OUTLINED_FUNCTION_62_4())
  {
    OUTLINED_FUNCTION_45_1();
    v5 = OUTLINED_FUNCTION_22_10();
    *v1 = 138412290;
    v6 = v2;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v7;
    *v5 = v7;
    OUTLINED_FUNCTION_34_1(&dword_23103C000, v8, v9, "push: error donating sets %@");
    sub_231051B38(v5, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
  }

  (*(v0[13] + 8))(v0[14], v0[12]);
  OUTLINED_FUNCTION_75_1();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_2310DB98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2310DB9AC, 0, 0);
}

uint64_t sub_2310DB9AC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_40_5();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_67_1(v2);

    return sub_2310D5C80();
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_1();

    return v4();
  }
}

uint64_t sub_2310DBA88()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310DBB88()
{
  **(v0 + 40) = *(v0 + 56) == 0;
  OUTLINED_FUNCTION_46_0();
  return v1();
}

uint64_t sub_2310DBBBC()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310DBC68()
{
  OUTLINED_FUNCTION_22_0();
  v1 = sub_231157F18();
  OUTLINED_FUNCTION_5(v1);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = sub_23105FDEC;
  v9 = OUTLINED_FUNCTION_3_7();

  return sub_2310DB0D4(v9, v10, v4, v11, v5);
}

id sub_2310DBD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  v12 = sub_231158E28();

  v16[4] = a3;
  v16[5] = a4;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_2310DBE68;
  v16[3] = &block_descriptor_19;
  v13 = _Block_copy(v16);
  v14 = [v7 initWithIdentifier:v12 handlerBlock:v13 queue:a5 useCase:a6];

  _Block_release(v13);

  return v14;
}

void sub_2310DBE68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_2310DBEF4()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_62();

  return sub_2310D8320(v3, v4, v5, v6);
}

uint64_t sub_2310DBFA0()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = sub_231157F18();
  OUTLINED_FUNCTION_19(v3);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_15_2(v7);
  *v8 = v9;
  v8[1] = sub_23106044C;

  return sub_2310D9484(v2, v6, v0 + v5);
}

uint64_t sub_2310DC074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEA0, &unk_231162788);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310DC0E4()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  OUTLINED_FUNCTION_62();

  return sub_2310D9FF0(v3, v4, v5, v6, v7);
}

uint64_t sub_2310DC194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2310DC1EC()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23106044C;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_62();

  return sub_2310DAC60(v3, v4, v5, v6, v7);
}

uint64_t sub_2310DC290()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23106044C;
  v6 = OUTLINED_FUNCTION_3_7();

  return sub_2310D74A0(v6, v7, v1, v2);
}

void OUTLINED_FUNCTION_11_15()
{

  JUMPOUT(0x2319267C0);
}

void OUTLINED_FUNCTION_16_10()
{

  JUMPOUT(0x2319267C0);
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_38_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_41_6()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_5()
{

  return sub_2311581C8();
}

__n128 OUTLINED_FUNCTION_48_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v10 = a10.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_56_2(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_58_3()
{

  return sub_2311581C8();
}

uint64_t OUTLINED_FUNCTION_59_3()
{
}

BOOL OUTLINED_FUNCTION_60_3()
{

  return os_log_type_enabled(v0, v1);
}

BOOL OUTLINED_FUNCTION_62_4()
{

  return os_log_type_enabled(v0, v1);
}

__n128 OUTLINED_FUNCTION_63_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10)
{
  result = a10;
  *v10 = a10.n128_u32[0];
  return result;
}

void OUTLINED_FUNCTION_70_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_71_2()
{

  return MEMORY[0x2821DAC70](v0, v0, v1);
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_73_0()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_74_0(uint64_t a1)
{

  return sub_231051B38(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_75_1()
{
}

void OUTLINED_FUNCTION_77_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t static FSEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t FSEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCFSEventStream.descriptor(for:)@<X0>(uint64_t *a2@<X8>)
{
  result = sub_231157DF8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2310DC794(uint64_t a1)
{
  result = sub_2310DC7BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310DC7BC()
{
  result = qword_27DD3CFF0;
  if (!qword_27DD3CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CFF0);
  }

  return result;
}

unint64_t sub_2310DC814()
{
  result = qword_27DD3CFF8;
  if (!qword_27DD3CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CFF8);
  }

  return result;
}

uint64_t sub_2310DC868(uint64_t a1)
{
  result = sub_2310DC9B4(&qword_27DD3CB40, MEMORY[0x277D79B78], MEMORY[0x277D79B88]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310DC8C4()
{
  result = qword_27DD3D000;
  if (!qword_27DD3D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3D000);
  }

  return result;
}

uint64_t sub_2310DC930(uint64_t a1)
{
  v2 = MEMORY[0x277D79B98];
  *(a1 + 8) = sub_2310DC9B4(&unk_280CCB148, MEMORY[0x277D79B98], MEMORY[0x277D79B90]);
  result = sub_2310DC9B4(qword_280CCB158, v2, &protocol conformance descriptor for XPCFSEventStream);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2310DC9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *DaemonTask.init<A>(id:event:priority:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a5;
  OUTLINED_FUNCTION_32_1();
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a10;
  v16[4] = a3;
  v16[5] = a4;
  a9[2] = sub_2310DD228;
  a9[3] = v16;
  OUTLINED_FUNCTION_32_1();
  result = swift_allocObject();
  result[2] = a8;
  result[3] = a10;
  result[4] = a6;
  result[5] = a7;
  a9[5] = &unk_231166630;
  a9[6] = result;
  return result;
}

double DaemonTask.init<A>(id:event:priority:perform:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v15 = *(a7 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, v18, v19);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  (*(v15 + 32))(v21 + v20, v17, a7);
  v23 = type metadata accessor for DaemonEventStream.EventSource(0, a7, a8, v22);
  WitnessTable = swift_getWitnessTable();
  DaemonTask.init<A>(id:event:priority:perform:)(a1, a2, sub_2310DD984, v21, v28, v29, v30, v23, &v31, WitnessTable);
  (*(v15 + 8))(a3, a7);
  v25 = v33;
  v26 = v34;
  *a9 = v31;
  *(a9 + 8) = v32;
  *(a9 + 24) = v25;
  *(a9 + 32) = v26;
  result = *&v35;
  *(a9 + 40) = v35;
  return result;
}

uint64_t DaemonTask.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2310DCCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = DaemonEventStream.event<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  swift_allocObject();

  v7 = sub_231158F78();
  *v8 = v6;
  type metadata accessor for DaemonEventStream.EventSource(0, a3, a4, v9);
  v10 = sub_2310C106C(v7);

  swift_getWitnessTable();
  v11 = static EventNodeBuilder.buildBlock(_:)(v10);

  return v11;
}

uint64_t sub_2310DCDF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_231158E58();
  v5 = v4;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  v6 = sub_23107F530();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8D8, &unk_231166700);
  OUTLINED_FUNCTION_32_1();
  swift_allocObject();
  sub_23109C7E0(sub_2310E0AA0, 0, v6);
  v8 = v7;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF50, &qword_231162A80);
  OUTLINED_FUNCTION_32_1();
  swift_allocObject();
  sub_23109BE3C(sub_2310DDA5C, v9, v8);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_231161E80;
  *(v12 + 32) = v11;
  result = sub_23106FF58(v12);
  if (!result)
  {
LABEL_8:
    sub_231061478(v12, v14, v15, v16, v17);
    v25 = v24;

    return v25;
  }

  v18 = result;
  if (result >= 1)
  {
    v19 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x231925080](v19, v12);
      }

      else
      {
        v20 = *(v12 + 8 * v19 + 32);
      }

      ++v19;
      OUTLINED_FUNCTION_26_1();
      v21 = swift_allocObject();
      *(v21 + 16) = a1;
      *(v21 + 24) = a2;
      swift_beginAccess();
      v22 = *(v20 + 32);
      v23 = *(v20 + 40);
      *(v20 + 32) = sub_2310DDA6C;
      *(v20 + 40) = v21;

      sub_2310646D4(v22, v23);
    }

    while (v18 != v19);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2310DD064(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a1;

  a3(&v16);

  v16 = sub_231158F58();
  if (v16 != sub_231158FF8())
  {
    v13 = *(a6 + 32);
    do
    {
      v14 = sub_231158FD8();
      sub_231158F88();
      if (v14)
      {
        swift_unknownObjectRetain();
      }

      else
      {
        sub_2311595A8();
      }

      sub_231159028();
      v15 = swift_allocObject();
      v15[2] = a5;
      v15[3] = a6;
      v15[4] = a1;
      v15[5] = a2;

      v13(sub_2310DDA74, v15, a5, a6);
      swift_unknownObjectRelease();
    }

    while (v16 != sub_231158FF8());
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC10, &qword_231161AF0);
  v11 = sub_231159678();

  return v11;
}

uint64_t sub_2310DD234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_23107EC20(a3, a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2310DD2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v7 = sub_231159448();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = *(AssociatedTypeWitness - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310DD42C, 0, 0);
}

uint64_t sub_2310DD42C()
{
  sub_2310548A0(v0[7], (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C240, &qword_2311637E0);
  v1 = swift_dynamicCast();
  v2 = v0[10];
  if (v1)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[13];
    v6 = v0[8];
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v0[10]);
    (*(v4 + 32))(v3, v5, v2);
    v15 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2310DD6C8;
    v8 = v0[15];

    return v15(v8);
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = v0[7];
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v2);
    (*(v11 + 8))(v10, v12);
    sub_231159588();
    MEMORY[0x231924980](0xD000000000000017, 0x80000002311686C0);
    v14 = sub_231159998();
    MEMORY[0x231924980](v14);

    MEMORY[0x231924980](0x20746F6720, 0xE500000000000000);
    __swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_2311597E8();
    return sub_2311596C8();
  }
}

uint64_t sub_2310DD6C8()
{
  OUTLINED_FUNCTION_4_1();
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2310DD850;
  }

  else
  {
    v2 = sub_2310DD7D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2310DD7D8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_1_18();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2310DD850()
{
  OUTLINED_FUNCTION_4_1();
  v1 = OUTLINED_FUNCTION_1_18();
  v2(v1);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2310DD8C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2310C984C;

  return sub_2310DD2E4(a1, v7, v6, v4, v5);
}

uint64_t sub_2310DD9C0(uint64_t a1, int a2)
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

uint64_t sub_2310DDA00(uint64_t result, int a2, int a3)
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

uint64_t WFSiriWorkflowVocabularyUpdater.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2310DDCE4;
  *(v3 + 24) = v1;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_2311666A8;
  *(v4 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD000000000000030;
  *(inited + 40) = 0x800000023116AA50;
  *(inited + 48) = sub_231061688;
  *(inited + 56) = v3;
  *(inited + 64) = 1;
  *(inited + 72) = &unk_231164C00;
  *(inited + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_231161B80;
  *(v6 + 32) = inited;
  v7 = v0;
  v8 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v8;
}

double sub_2310DDC24(uint64_t *a1, void *a2)
{
  v2 = sub_2310DDCEC(*a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C730, &unk_2311649A0);
  swift_allocObject();
  v3 = sub_23109C3D0(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF88, &qword_231162AE0);
  swift_allocObject();
  sub_23109FB90(v3);
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v6 = swift_allocObject();
  *&result = 1;
  *(v6 + 16) = xmmword_231161E80;
  *(v6 + 32) = v5;
  return result;
}

uint64_t sub_2310DDCEC(uint64_t a1, void *a2)
{
  v25 = a1;
  v3 = sub_2310A0BF0(&unk_2845D7AC0);
  v4 = [a2 databaseProvider];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2310E07F4(v3, v4, &v25);
  v6 = v5;

  swift_unknownObjectRelease_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C6B0(sub_2310A1D6C, 0, v6);
  v8 = v7;
  v9 = sub_231158E58();
  v11 = v10;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  swift_allocObject();

  v12 = sub_23107F530();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8D8, &unk_231166700);
  swift_allocObject();
  sub_23109C7E0(sub_2310E0AA0, 0, v12);
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BF50, &qword_231162A80);
  swift_allocObject();
  sub_23109BE3C(sub_2310DDA5C, v15, v14);
  v17 = v16;
  swift_allocObject();
  sub_23109CA40(sub_2310A4E70, 0, v17);
  v19 = v18;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C820, &unk_2311649E0);
  swift_allocObject();

  v20 = sub_23107F5EC();
  swift_allocObject();
  sub_23109C9A4(j__OUTLINED_FUNCTION_34_3, 0, v20);
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_231166690;
  *(v23 + 32) = v8;
  *(v23 + 40) = v19;
  *(v23 + 48) = v22;

  return v23;
}

uint64_t sub_2310DE05C()
{
  [*(v0 + 16) updateIfPossible];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310DE0C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2310A4E78;

  return sub_2310DE03C(a1, v4);
}

uint64_t sub_2310DE1A0(uint64_t a1, char a2)
{
  sub_231159918();
  sub_2310512BC(v4, a2);
  return sub_231159948();
}

uint64_t sub_2310DE1E4(uint64_t a1, char a2)
{
  sub_231159918();
  sub_231158EA8();

  return sub_231159948();
}

uint64_t sub_2310DE298(uint64_t a1)
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_2310DE304(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_231159918();
  a3(a2);
  sub_231158EA8();

  return sub_231159948();
}

uint64_t sub_2310DE36C(uint64_t a1, uint64_t a2)
{
  sub_231159918();
  MEMORY[0x2319253F0](a2);
  return sub_231159948();
}

uint64_t sub_2310DE3B0(uint64_t a1)
{
  strcpy(v9, "isPlaceholder");
  HIWORD(v9[1]) = -4864;
  sub_231159528();
  sub_23104ADA0(a1, &v11, v10);
  sub_231086718(v10);
  if (v12)
  {
    v2 = sub_231054A0C(0, &qword_280CCAE60, 0x277CCABB0);
    if (OUTLINED_FUNCTION_3_18(v2, v3))
    {
      v4 = [v9[0] BOOLValue];

      if (v4)
      {
        return MEMORY[0x277D84FA0];
      }
    }
  }

  else
  {
    sub_231040EC8(&v11);
  }

  OUTLINED_FUNCTION_0_24();
  sub_231159528();
  sub_23104ADA0(a1, &v11, v10);
  sub_231086718(v10);
  if (!v12)
  {
    sub_231040EC8(&v11);
    goto LABEL_10;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  if ((OUTLINED_FUNCTION_3_18(v6, v7) & 1) == 0)
  {
LABEL_10:
    v8 = MEMORY[0x277D84F90];
    return sub_2310BE194(v8);
  }

  v8 = v9[0];
  return sub_2310BE194(v8);
}

BOOL sub_2310DE514(int a1, id a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [a2 databaseWithError_];
  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    v5 = sub_231157938();

    swift_willThrow();
  }

  return v2 != 0;
}

void sub_2310DE5D4(uint64_t *a1, uint64_t a2)
{
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v4 = sub_2310DEC64(v3);
  v5 = [v4 updatedDescriptors];

  sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
  sub_2310A431C();
  OUTLINED_FUNCTION_4_15();
  v6 = sub_231159178();

  v8 = sub_2310DEC64(v7);
  v9 = [v8 insertedDescriptors];

  OUTLINED_FUNCTION_4_15();
  v10 = sub_231159178();

  sub_2310DEA7C(v10, v6);
  v12 = v11;

  v14 = sub_2310DEC64(v13);
  v15 = [v14 deletedDescriptors];

  OUTLINED_FUNCTION_4_15();
  v16 = sub_231159178();

  sub_2310DEA7C(v16, v12);
  if ((v17 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2311594C8();
    OUTLINED_FUNCTION_4_15();
    sub_2311591A8();
    v19 = v37;
    v18 = v38;
    v20 = v39;
    v21 = v40;
    v22 = v41;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v18 = v17 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v17 + 56);
    v21 = 0;
  }

  v26 = (v20 + 64) >> 6;
  while (v19 < 0)
  {
    if (!sub_2311594F8() || (swift_dynamicCast(), v30 = v36, v29 = v22, !v36))
    {
LABEL_25:
      sub_231043ED0(v19);
      goto LABEL_26;
    }

LABEL_17:
    if (!*(a2 + 16))
    {
LABEL_24:
      sub_231043ED0(v19);

LABEL_26:

      return;
    }

    v31 = [v30 objectType];
    if (*(a2 + 16))
    {
      v32 = v31;
      sub_231159918();
      MEMORY[0x2319253F0](v32);
      v33 = sub_231159948();
      v34 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(a2 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v33 = v35 + 1;
        if (*(*(a2 + 48) + 8 * v35) == v32)
        {
          goto LABEL_24;
        }
      }
    }

    v22 = v29;
  }

  v27 = v21;
  v28 = v22;
  if (v22)
  {
LABEL_13:
    v29 = (v28 - 1) & v28;
    v30 = *(*(v19 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v30)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v21 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_25;
    }

    v28 = *(v18 + 8 * v21);
    ++v27;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2310DE978(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2310DF3EC(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2310DEA7C(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2311594C8();
    sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
    sub_2310A431C();
    sub_2311591A8();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_231043ED0(v2);
      return;
    }

    while (1)
    {
      sub_2310DF538(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2311594F8())
      {
        sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_2310DEC64(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_231158D88();

  v3 = [v1 initWithDictionaryRepresentation_];

  return v3;
}

unint64_t sub_2310DECEC()
{
  OUTLINED_FUNCTION_7_17();
  sub_231159588();

  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v1 = sub_2310DEC64(v0);
  v2 = [v1 description];
  v3 = sub_231158E58();
  v5 = v4;

  MEMORY[0x231924980](v3, v5);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_2310DEDCC(uint64_t a1, uint64_t a2)
{
  sub_231054A0C(0, &qword_27DD3C990, 0x277D79EE8);

  v3 = sub_2310DEC64(v2);

  v5 = sub_2310DEC64(v4);
  v6 = [v3 notificationByMergingChangesFromNotification_];

  v7 = [v6 dictionaryRepresentation];
  v8 = sub_231158D98();

  return v8;
}

uint64_t sub_2310DEEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2310DEDCC(*a1, *v2);
  *a2 = result;
  return result;
}

BOOL sub_2310DEEE4(uint64_t *a1)
{
  v1 = sub_2310DE3B0(*a1);
  v2 = OUTLINED_FUNCTION_8_16(v1);

  return v2;
}

uint64_t sub_2310DEF2C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_231158108();
  if (!result)
  {
    result = sub_231158DB8();
  }

  *a2 = result;
  return result;
}

BOOL sub_2310DEF84(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = sub_2310DE3B0(*a1);
  v4 = OUTLINED_FUNCTION_8_16(v3);

  return v4;
}

unint64_t sub_2310DEFD8()
{
  OUTLINED_FUNCTION_7_17();
  sub_231159588();

  sub_2310DE3B0(v0);
  v1 = sub_231159188();
  v3 = v2;

  MEMORY[0x231924980](v1, v3);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_2310DF090(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C338, &unk_231163B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  OUTLINED_FUNCTION_0_24();
  sub_231159528();
  v5 = sub_2310DE3B0(a2);
  v6 = sub_2310DE3B0(a1);
  v7 = sub_2310DE978(v6, v5);
  v8 = sub_231092834(v7);
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C170, &qword_2311667A0);
  *(inited + 72) = v8;
  return sub_231158DB8();
}

uint64_t sub_2310DF174@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2310DF090(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2310DF1AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C840, &qword_2311649F0);
  swift_allocObject();
  swift_retain_n();
  sub_23107F6A8();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C830, &unk_231166780);
  OUTLINED_FUNCTION_2_17(v3);
  swift_unknownObjectRetain();
  v4 = OUTLINED_FUNCTION_6_11();
  sub_23109C0A0(v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  OUTLINED_FUNCTION_2_17(v7);
  v8 = OUTLINED_FUNCTION_5_13();
  sub_23109CAD4(v8, v9, v10);
  v12 = v11;
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C820, &unk_2311649E0);
  swift_allocObject();

  v13 = sub_23107F5EC();
  OUTLINED_FUNCTION_2_17(v7);
  sub_23109C9A4(j__OUTLINED_FUNCTION_34_3, 0, v13);
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v17 = OUTLINED_FUNCTION_2_17(v16);
  *(v17 + 16) = xmmword_231162950;
  *(v17 + 32) = v12;
  *(v17 + 40) = v15;

  return v17;
}

uint64_t sub_2310DF388(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_231166710;
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

BOOL sub_2310DF3EC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_231159918();
  sub_231158EA8();
  v8 = sub_231159948();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_231159818() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2310DFE3C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2310DF538(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2311594E8();

    if (v9)
    {

      sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_2311594D8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_2310DF75C(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_2310DFB94(v17 + 1);
        }

        v18 = v8;
        sub_2310DFDB8(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
    v11 = sub_231159408();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_2310DFFA4(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_231159418();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_2310DF75C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
    v2 = sub_231159558();
    v15 = v2;
    sub_2311594C8();
    while (1)
    {
      if (!sub_2311594F8())
      {

        return v2;
      }

      sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_2310DFB94(v3 + 1);
      }

      v2 = v15;
      result = sub_231159408();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2310DF938(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  result = sub_231159548();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2310DF388(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_231159918();
    sub_231158EA8();
    result = sub_231159948();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2310DFB94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
  result = sub_231159548();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_2310DF388(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_231159408();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2310DFDB8(uint64_t a1, uint64_t a2)
{
  sub_231159408();
  result = sub_2311594B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_2310DFE3C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2310DF938(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2310E03B0(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_231159918();
      sub_231158EA8();
      result = sub_231159948();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_231159818() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2310E0108();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_231159878();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

unint64_t sub_2310DFFA4(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2310DFB94(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_2310E05E4(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_231159408();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_231054A0C(0, &qword_280CCAEB0, 0x277D79EF0);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_231159418();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_2310E0260();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_231159878();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

void *sub_2310E0108()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  v2 = *v0;
  v3 = sub_231159538();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2310E0260()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
  v2 = *v0;
  v3 = sub_231159538();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2310E03B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C8A0, &qword_231164A30);
  result = sub_231159548();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_231159918();

        sub_231158EA8();
        result = sub_231159948();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2310E05E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D008, &qword_231166778);
  result = sub_231159548();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_231159408();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_2310E07F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3D010, &qword_231162AA0);
  swift_allocObject();

  sub_23107F530();
  OUTLINED_FUNCTION_9_0();
  *(swift_allocObject() + 16) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C7E0, &unk_231166790);
  OUTLINED_FUNCTION_2_17(v5);
  swift_unknownObjectRetain();
  v6 = OUTLINED_FUNCTION_6_11();
  sub_23109BDA0(v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3D020, &qword_2311649D0);
  OUTLINED_FUNCTION_2_17(v9);
  v10 = OUTLINED_FUNCTION_5_13();
  sub_23109C61C(v10, v11, v12);
  v14 = v13;
  OUTLINED_FUNCTION_9_0();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C770, qword_2311649B0);
  OUTLINED_FUNCTION_2_17(v16);

  sub_23109BD08(sub_2310A1F58, v15, v14);
}

unint64_t sub_2310E09A4(uint64_t a1)
{
  result = sub_2310E09CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310E09CC()
{
  result = qword_27DD3D028;
  if (!qword_27DD3D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3D028);
  }

  return result;
}

unint64_t sub_2310E0A20(uint64_t a1)
{
  result = sub_2310E0A48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310E0A48()
{
  result = qword_27DD3D030;
  if (!qword_27DD3D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3D030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_18(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_8_16(uint64_t a1)
{

  return sub_23106EED8(v2, v1, a1);
}

void sub_2310E11CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPLLogTimeSensitiveRegisteredEventSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __PowerLogLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2788FDEB8;
    v7 = 0;
    PowerLogLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = PowerLogLibraryCore_frameworkLibrary;
  if (!PowerLogLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PowerLogLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFTriggerEventRunner.m" lineNumber:27 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "PLLogTimeSensitiveRegisteredEvent");
  *(*(a1[4] + 8) + 24) = result;
  getPLLogTimeSensitiveRegisteredEventSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __PowerLogLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PowerLogLibraryCore_frameworkLibrary = result;
  return result;
}

id VCVoiceShortcutClientArchingError(void *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  if (v4)
  {
    v10 = *MEMORY[0x277CCA7E8];
    v11 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v5 if_dictionaryByAddingEntriesFromDictionary:v6];

    v5 = v7;
  }

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7A358] code:1000 userInfo:v5];

  return v8;
}

id WFHomescreenFastPathRunShortcutEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277D7C828];
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(v6);
  [v9 setKey:v7];
  [v9 setActionCount:1];
  v10 = [v8 source];
  [v9 setShortcutSource:v10];

  [v9 setRunSource:*MEMORY[0x277D7A848]];
  [v9 setAutomationType:0];
  v11 = [v8 galleryIdentifier];

  [v9 setGalleryIdentifier:v11];
  [v9 setDidRunRemotely:0];
  [v9 setIsFromAutomationSuggestion:0];
  [v9 setAutomationSuggestionsTrialIdentifier:0];
  LODWORD(v8) = [v7 isEqualToString:*MEMORY[0x277D7CC88]];

  if (v8)
  {
    [v9 setCompleted:{objc_msgSend(v5, "appIsInstalled")}];
  }

  return v9;
}

id WFHomescreenFastPathRunActionEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277D7C820];
  v7 = a3;
  v8 = a2;
  v9 = objc_alloc_init(v6);
  [v9 setKey:v7];
  [v9 setActionIdentifier:*MEMORY[0x277D7CDB8]];
  [v9 setExternalBundleIdentifier:@"is.workflow.actions"];
  [v9 setExternalActionIdentifier:@"openapp"];
  v10 = [v8 source];

  [v9 setShortcutSource:v10];
  [v9 setRunSource:*MEMORY[0x277D7A848]];
  [v9 setAutomationType:0];
  [v9 setDidRunRemotely:0];
  LODWORD(v8) = [v7 isEqualToString:@"RunActionFinish"];

  if (v8)
  {
    [v9 setCompleted:{objc_msgSend(v5, "appIsInstalled")}];
  }

  return v9;
}

void sub_2310E7574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getHMHomeManagerClass_block_invoke(uint64_t a1)
{
  HomeKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("HMHomeManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getHMHomeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHMHomeManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManager.m" lineNumber:36 description:{@"Unable to find class %s", "HMHomeManager"}];

    __break(1u);
  }
}

void *HomeKitLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HomeKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2788FE170;
    v6 = 0;
    HomeKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HomeKitLibraryCore_frameworkLibrary;
  if (!HomeKitLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HomeKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"VCVoiceShortcutManager.m" lineNumber:34 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __HomeKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HomeKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2310E7BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2310E7E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getHMErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HomeKitLibrary();
  result = dlsym(v2, "HMErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getHMErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id VCNotFoundError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSError * _Nonnull VCNotFoundError(NSString * _Nonnull __strong)"];
    [v4 handleFailureInFunction:v5 file:@"VCVoiceShortcutManager.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"voiceShortcutIdentifier"}];
  }

  v2 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:{@"Voice shortcut with identifier or name (%@) does not exist", v1}];

  return v2;
}

id VCNotFoundByPhraseError(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSError * _Nonnull VCNotFoundByPhraseError(NSString * _Nonnull __strong)"];
    [v4 handleFailureInFunction:v5 file:@"VCVoiceShortcutManager.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"phrase"}];
  }

  v2 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:1002 reason:{@"Voice shortcut with phrase (%@) does not exist", v1}];

  return v2;
}

void sub_2310EB57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFTimeIntervalForNotificationLevelFromDate(uint64_t a1, void *a2)
{
  v2 = a1;
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WFTimeIntervalForNotificationLevel(v2);
  [v4 doubleValue];
  v5 = [v3 dateByAddingTimeInterval:?];

  [v5 timeIntervalSinceNow];
  v7 = v6;
  v8 = getWFTriggerNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "WFTimeIntervalForNotificationLevelFromDate";
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v3;
    v18 = 2048;
    v19 = v7;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Time interval from notif level - Scheduled fire date: %@ inital run date: %@ interval %f", &v12, 0x2Au);
  }

  if (v7 >= 0.0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  }

  else
  {
    v9 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315138;
      v13 = "WFTimeIntervalForNotificationLevelFromDate";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Scheduled fire date has passed firing now!", &v12, 0xCu);
    }

    v10 = &unk_2845ECED0;
  }

  return v10;
}

void *WFTimeIntervalForNotificationLevel(int a1)
{
  if (+[WFTriggerNotificationScheduler shortenTimeIntervalsForTesting]&& VCIsInternalBuild())
  {
    if (a1 == 1)
    {
      return &unk_2845ECF00;
    }

    if (a1 == 2)
    {
      return &unk_2845ECF18;
    }

    if (a1 != 3)
    {
      return &unk_2845ECEE8;
    }
  }

  else
  {
    if (a1 == 1)
    {
      return &unk_2845ECF48;
    }

    if (a1 == 2)
    {
      return &unk_2845ECF60;
    }

    if (a1 != 3)
    {
      return &unk_2845ECF30;
    }
  }

  result = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempted to get time interval for non valid level WFTriggerNotificationLevelNever"];
  __break(1u);
  return result;
}

id WFTriggerIdentifierFromXPCActivityIdentifier(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 lastObject];

  return v2;
}

void sub_2310EDFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2310EE404(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2310EE57C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getNPKCompanionAgentConnectionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!NanoPassKitLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __NanoPassKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2788FE378;
    v8 = 0;
    NanoPassKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!NanoPassKitLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoPassKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWalletTransactionProvider.m" lineNumber:21 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NPKCompanionAgentConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNPKCompanionAgentConnectionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWalletTransactionProvider.m" lineNumber:22 description:{@"Unable to find class %s", "NPKCompanionAgentConnection"}];

LABEL_10:
    __break(1u);
  }

  getNPKCompanionAgentConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __NanoPassKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  NanoPassKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2310EE8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPKPaymentServiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PassKitCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2788FE360;
    v8 = 0;
    PassKitCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PassKitCoreLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PassKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFWalletTransactionProvider.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PKPaymentService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPKPaymentServiceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFWalletTransactionProvider.m" lineNumber:16 description:{@"Unable to find class %s", "PKPaymentService"}];

LABEL_10:
    __break(1u);
  }

  getPKPaymentServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PassKitCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore_frameworkLibrary = result;
  return result;
}

id getWFObliteratorLogObject()
{
  if (getWFObliteratorLogObject_onceToken != -1)
  {
    dispatch_once(&getWFObliteratorLogObject_onceToken, &__block_literal_global_221);
  }

  v1 = getWFObliteratorLogObject_log;

  return v1;
}

uint64_t __getWFObliteratorLogObject_block_invoke()
{
  getWFObliteratorLogObject_log = os_log_create(*MEMORY[0x277D7A500], "Obliterator");

  return MEMORY[0x2821F96F8]();
}

id getWFUserNotificationManagerLogObject()
{
  if (getWFUserNotificationManagerLogObject_onceToken != -1)
  {
    dispatch_once(&getWFUserNotificationManagerLogObject_onceToken, &__block_literal_global_320);
  }

  v1 = getWFUserNotificationManagerLogObject_log;

  return v1;
}

uint64_t __getWFUserNotificationManagerLogObject_block_invoke()
{
  getWFUserNotificationManagerLogObject_log = os_log_create(*MEMORY[0x277D7A500], "UserNotificationManager");

  return MEMORY[0x2821F96F8]();
}

uint64_t VCPBIntentDefinitionFileReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___VCPBIntentDefinitionFile__name;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___VCPBIntentDefinitionFile__data;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_2310F24BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VCPartitionMessages(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType", v12)}];
        v10 = [v2 objectForKeyedSubscript:v9];
        if (!v10)
        {
          v10 = objc_opt_new();
          [v2 setObject:v10 forKeyedSubscript:v9];
        }

        [v10 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

void VCAssertUniqueMessageTypes(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      v7 = 0x277CCA000uLL;
      v8 = 0x277CCA000uLL;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType", v13)}];
          if ([v2 containsObject:v10])
          {
            v11 = [*(v7 + 2192) currentHandler];
            v12 = [*(v8 + 3240) stringWithUTF8String:"void VCAssertUniqueMessageTypes(NSSet<id<VCPBMessageTyped>> * _Nonnull __strong)"];
            [v11 handleFailureInFunction:v12 file:@"VCPBMessageTyped.m" lineNumber:37 description:@"Only one handler per message type is allowed"];

            v8 = 0x277CCA000;
            v7 = 0x277CCA000;
          }

          [v2 addObject:v10];

          ++v9;
        }

        while (v5 != v9);
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }
}

__CFString *VCDescriptionForMessageType(int a1)
{
  v1 = @"IntentDefinition";
  if (a1 == 2)
  {
    v1 = @"VoiceShortcut";
  }

  if (a1 == 3)
  {
    return @"Workflow";
  }

  else
  {
    return v1;
  }
}

uint64_t VCPBIntentDefinitionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(VCPBIntentDefinitionFile);
    [a1 addFiles:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !VCPBIntentDefinitionFileReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

id VCOSTransactionWithName(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.shortcuts.%@", a1];
  [v1 UTF8String];
  v2 = os_transaction_create();

  return v2;
}

void sub_2310F4D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2310F5ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2310F6850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__659(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2310F74EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2310F8474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VCAccessSyncServiceState(void *a1, void *a2, void *a3, NSObject **a4)
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_42:
    v39 = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL VCAccessSyncServiceState(id<VCShortcutSyncService>  _Nonnull __strong, NSString * _Nonnull __strong, VCSyncStateAccessor  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v39 handleFailureInFunction:v40 file:@"VCShortcutSyncService.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v9)
    {
      goto LABEL_4;
    }

LABEL_43:
    v41 = [MEMORY[0x277CCA890] currentHandler];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL VCAccessSyncServiceState(id<VCShortcutSyncService>  _Nonnull __strong, NSString * _Nonnull __strong, VCSyncStateAccessor  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
    [v41 handleFailureInFunction:v42 file:@"VCShortcutSyncService.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"accessor"}];

    goto LABEL_4;
  }

  v37 = [MEMORY[0x277CCA890] currentHandler];
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL VCAccessSyncServiceState(id<VCShortcutSyncService>  _Nonnull __strong, NSString * _Nonnull __strong, VCSyncStateAccessor  _Nonnull __strong, NSError *__autoreleasing  _Nullable * _Nullable)"}];
  [v37 handleFailureInFunction:v38 file:@"VCShortcutSyncService.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"service"}];

  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_3:
  if (!v9)
  {
    goto LABEL_43;
  }

LABEL_4:
  v10 = [v7 directoryURL];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v48 = 0;
  v12 = [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v48];
  v13 = v48;

  if (v12)
  {
    goto LABEL_14;
  }

  v14 = [v13 domain];
  if ([v14 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v15 = [v13 code];

    if (v15 == 516)
    {
      v43 = a4;
      v45 = v7;

      v13 = 0;
LABEL_15:
      v44 = v8;
      v19 = [v10 URLByAppendingPathComponent:v8];
      v20 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v19];
      [v20 open];
      v47 = 0;
      v21 = [MEMORY[0x277CCAC58] propertyListWithStream:v20 options:2 format:0 error:&v47];
      v22 = v47;
      v23 = objc_opt_class();
      v24 = v21;
      if (v24 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = getWFGeneralLogObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          v27 = objc_opt_class();
          *buf = 136315906;
          v50 = "WFEnforceClass";
          v51 = 2114;
          v52 = v24;
          v53 = 2114;
          v54 = v27;
          v55 = 2114;
          v56 = v23;
          v28 = v27;
          _os_log_impl(&dword_23103C000, v26, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
        }

        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      [v20 close];
      if (v25)
      {
        goto LABEL_27;
      }

      if (-[NSObject vc_isFileNotFound](v22, "vc_isFileNotFound") & 1) != 0 || (-[NSObject userInfo](v22, "userInfo"), v29 = objc_claimAutoreleasedReturnValue(), [v29 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "vc_isFileNotFound"), v30, v29, (v31))
      {
        v32 = v22;
        v22 = 0;
      }

      else
      {
        if (!v22)
        {
          goto LABEL_26;
        }

        v32 = getWFWatchSyncLogObject();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v50 = "VCAccessSyncServiceState";
          v51 = 2114;
          v52 = v22;
          _os_log_impl(&dword_23103C000, v32, OS_LOG_TYPE_ERROR, "%s Could not read state for sync service: %{public}@", buf, 0x16u);
        }
      }

LABEL_26:
      v25 = objc_opt_new();
LABEL_27:
      if (v9[2](v9, v25))
      {
        v46 = 0;
        v18 = [v25 writeToURL:v19 error:&v46];
        v33 = v46;
        if ((v18 & 1) == 0)
        {
          v34 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v50 = "VCAccessSyncServiceState";
            v51 = 2114;
            v52 = v33;
            _os_log_impl(&dword_23103C000, v34, OS_LOG_TYPE_ERROR, "%s Could not write state for sync service: %{public}@", buf, 0x16u);
          }

          if (v43)
          {
            v35 = v33;
            *v43 = v33;
          }
        }
      }

      else
      {
        v18 = 1;
      }

      v8 = v44;
      v7 = v45;
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (!v13)
  {
LABEL_14:
    v43 = a4;
    v45 = v7;
    goto LABEL_15;
  }

  v16 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v50 = "VCAccessSyncServiceState";
    v51 = 2114;
    v52 = v13;
    _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Could not create sync data directory: %{public}@", buf, 0x16u);
  }

  if (a4)
  {
    v17 = v13;
    v18 = 0;
    *a4 = v13;
  }

  else
  {
    v18 = 0;
  }

LABEL_36:

  return v18;
}

uint64_t VCClearSyncServiceState(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 directoryURL];
  v7 = [v6 URLByAppendingPathComponent:v5];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v9 = [v8 removeItemAtURL:v7 error:&v15];
  v10 = v15;

  v11 = [v10 domain];
  if ([v11 isEqualToString:*MEMORY[0x277CCA050]])
  {
    v12 = [v10 code];

    if (v12 != 4)
    {
      goto LABEL_5;
    }

    v9 = 1;
    v11 = v10;
    v10 = 0;
  }

LABEL_5:
  if (a3)
  {
    v13 = v10;
    *a3 = v10;
  }

  return v9;
}

void sub_2310F9A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2310FC338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id VCSerializedEventInfo(void *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = WFSerializableWithConverter(v1, v2, &__block_literal_global_361);

  return v3;
}

id WFSerializableWithConverter(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable WFSerializableWithConverter(id  _Nullable __strong, NSArray<Class> * _Nonnull __strong, id  _Nonnull (^ _Nullable __strong)(id  _Nonnull __strong))"}];
    [v16 handleFailureInFunction:v17 file:@"WFCoreDuetListener.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"allowedValueClasses"}];

    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (objc_opt_isKindOfClass())
        {
          v5 = v5;
          v14 = v5;
          goto LABEL_16;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v5 allObjects];

    v5 = v13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __WFSerializableWithConverter_block_invoke;
    v22[3] = &unk_2788FE670;
    v23 = v8;
    v24 = v7;
    v14 = [v5 if_compactMap:v22];

    v8 = v23;
LABEL_16:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __WFSerializableWithConverter_block_invoke_2;
    v19[3] = &unk_2788FE698;
    v20 = v8;
    v21 = v7;
    v14 = [v5 if_compactMap:v19];

    v8 = v20;
    goto LABEL_16;
  }

  if (v7)
  {
    v15 = (*(v7 + 2))(v7, v5);
    v14 = WFSerializableWithConverter(v15, v8, 0);
    v8 = v15;
    goto LABEL_16;
  }

LABEL_22:
  v14 = 0;
LABEL_23:

  return v14;
}

id __WFSerializableWithConverter_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = a2;
  *a5 = WFSerializableWithConverter(a3, v9, v10);
  v12 = WFSerializableWithConverter(v11, *(a1 + 32), *(a1 + 40));

  result = v12;
  *a4 = v12;
  return result;
}

id __VCSerializedEventInfo_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 UUIDString];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 absoluteString];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

void sub_2310FDA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void VCCKPerformBlockInsideAutoreleasePoolInTransaction(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = VCOSTransactionWithName(v6);
  v5 = objc_autoreleasePoolPush();
  v3[2](v3);
  objc_autoreleasePoolPop(v5);
}

void sub_2310FFD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1171(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231102FC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFUserDefaultsKeysToObserve()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277D7D078];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];

  return v0;
}

id WFSystemUserDefaultsKeysToObserve()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = *MEMORY[0x277D7CC08];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];

  return v0;
}

BOOL VCCloudKitErrorContainsErrorWithCode(void *a1, uint64_t a2)
{
  v3 = a1;
  if (CKErrorIsCode())
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 allValues];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __VCCloudKitErrorContainsErrorWithCode_block_invoke;
    v12[3] = &__block_descriptor_40_e17_B16__0__NSError_8l;
    v12[4] = a2;
    v10 = [v9 if_firstObjectPassingTest:v12];
    v4 = v10 != 0;
  }

  return v4;
}

void sub_23110B358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1358(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initATXHomeScreenConfigCache()
{
  if (AppPredictionClientLibrary_sOnce != -1)
  {
    dispatch_once(&AppPredictionClientLibrary_sOnce, &__block_literal_global_1362);
  }

  result = objc_getClass("ATXHomeScreenConfigCache");
  classATXHomeScreenConfigCache = result;
  getATXHomeScreenConfigCacheClass = ATXHomeScreenConfigCacheFunction;
  return result;
}

void *__AppPredictionClientLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppPredictionClient.framework/AppPredictionClient", 2);
  AppPredictionClientLibrary_sLib = result;
  return result;
}

void sub_23110BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23110FA50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23110FD34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231110C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231111E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class initHKWorkout()
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_677);
  }

  result = objc_getClass("HKWorkout");
  classHKWorkout = result;
  getHKWorkoutClass = HKWorkoutFunction;
  return result;
}

void *__HealthKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/HealthKit.framework/HealthKit", 2);
  HealthKitLibrary_sLib = result;
  return result;
}

uint64_t (*init_HKWorkoutSessionStateName(uint64_t a1))(void)
{
  if (HealthKitLibrary_sOnce != -1)
  {
    dispatch_once(&HealthKitLibrary_sOnce, &__block_literal_global_677);
  }

  v2 = dlsym(HealthKitLibrary_sLib, "_HKWorkoutSessionStateName");
  softLink_HKWorkoutSessionStateName = v2;
  if (v2)
  {
    v2 = v2(a1);
  }

  return v2;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_1810);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_23103C000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFDialogXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284617228];
  v44 = MEMORY[0x277CBEB98];
  v45 = v0;
  v42 = objc_opt_class();
  v40 = objc_opt_class();
  v38 = objc_opt_class();
  v36 = objc_opt_class();
  v34 = objc_opt_class();
  v32 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v44 setWithObjects:{v42, v40, v38, v36, v34, v32, v30, v29, v28, v27, v26, v25, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [v45 setClasses:v11 forSelector:? argumentIndex:? ofReply:?];

  v43 = MEMORY[0x277CBEB98];
  v41 = objc_opt_class();
  v39 = objc_opt_class();
  v37 = objc_opt_class();
  v35 = objc_opt_class();
  v33 = objc_opt_class();
  v31 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v43 setWithObjects:{v41, v39, v37, v35, v33, v31, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  [v45 setClasses:v22 forSelector:sel_showDialogRequest_completionHandler_ argumentIndex:0 ofReply:1];

  v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v45 setClasses:v23 forSelector:sel_dismissPersistentChromeWithSuccess_customAttribution_completionHandler_ argumentIndex:0 ofReply:0];

  return v45;
}

uint64_t VCPBIntentDefinitionChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(VCPBIntentDefinition);
        objc_storeStrong((a1 + 24), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !VCPBIntentDefinitionReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 8);
        *(a1 + 8) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 16) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VCPBChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v21 = PBReaderReadString();
          v22 = 32;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v21 = PBReaderReadData();
          v22 = 16;
        }

        v30 = *(a1 + v22);
        *(a1 + v22) = v21;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_52;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v26;
          }

LABEL_52:
          v31 = 24;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_32;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v31 = 8;
        }

        *(a1 + v31) = v20;
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id VCSYChangeClassFromMessageType(int a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v15[0] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 messageType] == a1)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

uint64_t VCPBChangeTypeFromSYChangeType(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t VCPBWorkflowReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v55) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v55 & 0x7F) << v5;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      switch((v12 >> 3))
      {
        case 1u:
          v13 = PBReaderReadString();
          v14 = 96;
          goto LABEL_69;
        case 3u:
          a1[128] |= 0x10u;
          LODWORD(v55) = 0;
          v25 = [a2 position] + 4;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v55 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v55;
          v47 = 56;
          goto LABEL_89;
        case 4u:
          a1[128] |= 0x20u;
          LODWORD(v55) = 0;
          v22 = [a2 position] + 4;
          if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v55 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v33 = v55;
          v47 = 60;
          goto LABEL_89;
        case 5u:
          a1[128] |= 1u;
          v55 = 0;
          v34 = [a2 position] + 8;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 8, v35 <= objc_msgSend(a2, "length")))
          {
            v50 = [a2 data];
            [v50 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v51 = v55;
          v52 = 8;
          goto LABEL_94;
        case 6u:
          a1[128] |= 8u;
          v55 = 0;
          v36 = [a2 position] + 8;
          if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v55 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v51 = v55;
          v52 = 32;
LABEL_94:
          *&a1[v52] = v51;
          goto LABEL_95;
        case 7u:
          v24 = PBReaderReadString();
          if (v24)
          {
            [a1 addWorkflowTypes:v24];
          }

          goto LABEL_41;
        case 8u:
          v24 = PBReaderReadString();
          if (v24)
          {
            [a1 addInputClasses:v24];
          }

LABEL_41:

          goto LABEL_95;
        case 9u:
          v13 = PBReaderReadData();
          v14 = 48;
          goto LABEL_69;
        case 0xAu:
          v13 = PBReaderReadData();
          v14 = 64;
          goto LABEL_69;
        case 0xBu:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          a1[128] |= 4u;
          while (1)
          {
            LOBYTE(v55) = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v55 & 0x7F) << v38;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v11 = v39++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_83;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v40;
          }

LABEL_83:
          v46 = 24;
          goto LABEL_84;
        case 0xCu:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          a1[128] |= 2u;
          while (1)
          {
            LOBYTE(v55) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v55 & 0x7F) << v15;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_75;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_75:
          v46 = 16;
LABEL_84:
          *&a1[v46] = v21;
          goto LABEL_95;
        case 0xDu:
          v13 = PBReaderReadString();
          v14 = 88;
          goto LABEL_69;
        case 0xEu:
          v13 = PBReaderReadString();
          v14 = 80;
          goto LABEL_69;
        case 0xFu:
          v13 = PBReaderReadData();
          v14 = 40;
          goto LABEL_69;
        case 0x10u:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          a1[128] |= 0x40u;
          break;
        case 0x11u:
          v13 = PBReaderReadString();
          v14 = 112;
LABEL_69:
          v44 = *&a1[v14];
          *&a1[v14] = v13;

          goto LABEL_95;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_95;
      }

      while (1)
      {
        LOBYTE(v55) = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v29 |= (v55 & 0x7F) << v27;
        if ((v55 & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v11 = v28++ >= 9;
        if (v11)
        {
          v33 = 0;
          goto LABEL_79;
        }
      }

      v33 = [a2 hasError] ? 0 : v29;
LABEL_79:
      v47 = 104;
LABEL_89:
      *&a1[v47] = v33;
LABEL_95:
      v54 = [a2 position];
    }

    while (v54 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id VCLatestUniqueChanges(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v1 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectIdentifier];
        v11 = [v2 containsObject:v10];

        if ((v11 & 1) == 0)
        {
          [v3 insertObject:v9 atIndex:0];
          v12 = [v9 objectIdentifier];
          [v2 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

__CFString *VCDescriptionForChangeType(uint64_t a1)
{
  v1 = @"Add";
  if (a1 == 2)
  {
    v1 = @"Update";
  }

  if (a1 == 3)
  {
    return @"Delete";
  }

  else
  {
    return v1;
  }
}

id VCDescriptionForChange(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 changeType];
  v6 = @"Add";
  if (v5 == 2)
  {
    v6 = @"Update";
  }

  if (v5 == 3)
  {
    v6 = @"Delete";
  }

  v7 = v6;
  v8 = [v2 objectIdentifier];
  v9 = [v1 stringWithFormat:@"<%@: %p type=%@ identifier=%@>", v4, v2, v7, v8];

  return v9;
}

id getWFRunQueueLogObject()
{
  if (getWFRunQueueLogObject_onceToken != -1)
  {
    dispatch_once(&getWFRunQueueLogObject_onceToken, &__block_literal_global_2849);
  }

  v1 = getWFRunQueueLogObject_log;

  return v1;
}

uint64_t __getWFRunQueueLogObject_block_invoke()
{
  getWFRunQueueLogObject_log = os_log_create(*MEMORY[0x277D7A500], "RunQueue");

  return MEMORY[0x2821F96F8]();
}

void *__ActionKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ActionKit.framework/ActionKit", 2);
  ActionKitLibrary_sLib = result;
  return result;
}

id VCDaemonXPCInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2845FC7E0];
  VCVoiceShortcutManagerConfigureXPCInterface();
  WFDatabaseProxyConfigureXPCInterface();

  return v0;
}

void sub_2311269F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3474(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id getWFSiriVocabLogObject()
{
  if (getWFSiriVocabLogObject_onceToken != -1)
  {
    dispatch_once(&getWFSiriVocabLogObject_onceToken, &__block_literal_global_3562);
  }

  v1 = getWFSiriVocabLogObject_log;

  return v1;
}

uint64_t __getWFSiriVocabLogObject_block_invoke()
{
  getWFSiriVocabLogObject_log = os_log_create(*MEMORY[0x277D7A500], "SiriVocab");

  return MEMORY[0x2821F96F8]();
}

uint64_t WFDatabaseChangesContainObjectType(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = &a9;
  v10 = a2;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
    do
    {
      v13 = objc_autoreleasePoolPush();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if ([*(*(&v22 + 1) + 8 * v18) objectType] == a1)
            {

              objc_autoreleasePoolPop(v13);
              v20 = 1;
              goto LABEL_14;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(v13);
      v19 = v26++;
      v12 = *v19;
    }

    while (v12);
  }

  v20 = 0;
LABEL_14:

  return v20;
}

void sub_2311283C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231128FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v26 + 64));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VCPromptNotificationTitleForTriggerWithPendingCount(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 localizedDescriptionWithConfigurationSummaryWithCount:a2];
  }

  else
  {
    v4 = [v3 localizedDescriptionWithConfigurationSummary];
  }

  v5 = v4;

  return v5;
}

BOOL VCLocaleIsRTL()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 localeIdentifier];
  v3 = [v0 characterDirectionForLanguage:v2] == 2;

  return v3;
}

void sub_2311294C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t VCAccessSyncServiceIntentDefinitionState(void *a1, void *a2, NSObject **a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __VCAccessSyncServiceIntentDefinitionState_block_invoke;
  v9[3] = &unk_2788FEDF8;
  v10 = v5;
  v6 = v5;
  v7 = VCAccessSyncServiceState(a1, @"IntentDefinitions.plist", v9, a3);

  return v7;
}

BOOL __VCAccessSyncServiceIntentDefinitionState_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13 = 0;
  v4 = [MEMORY[0x277D7C768] modelOfClass:objc_opt_class() fromJSONDictionary:v3 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "VCAccessSyncServiceIntentDefinitionState_block_invoke";
      v16 = 2114;
      v17 = v5;
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s VCIntentDefinitionSyncDataHandler failed to deserialize sync state into dictionary: %{public}@", buf, 0x16u);
    }
  }

  if (!v4)
  {
    v4 = objc_opt_new();
  }

  if ((*(*(a1 + 32) + 16))())
  {
    v12 = 0;
    v7 = [MEMORY[0x277D7C768] JSONDictionaryFromModel:v4 error:&v12];
    v8 = v12;
    v9 = v7 != 0;
    if (v7)
    {
      [v3 removeAllObjects];
      [v3 addEntriesFromDictionary:v7];
    }

    else
    {
      v10 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v15 = "VCAccessSyncServiceIntentDefinitionState_block_invoke";
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s VCIntentDefinitionSyncDataHandler failed to serialize sync state into dictionary: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_23112AFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3861(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23113208C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231132A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4672(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231133D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAFVisualIntelligenceCameraRestrictedSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AssistantServicesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2788FF2F8;
    v7 = 0;
    AssistantServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AssistantServicesLibraryCore_frameworkLibrary;
  if (!AssistantServicesLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AssistantServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:84 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "AFVisualIntelligenceCameraRestricted");
  *(*(a1[4] + 8) + 24) = result;
  getAFVisualIntelligenceCameraRestrictedSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __AssistantServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2311384E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4916(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231138E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2311395CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMRMediaSuggestionRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMRMediaSuggestionRequestClass_softClass;
  v7 = getMRMediaSuggestionRequestClass_softClass;
  if (!getMRMediaSuggestionRequestClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMRMediaSuggestionRequestClass_block_invoke;
    v3[3] = &unk_2788FFE98;
    v3[4] = &v4;
    __getMRMediaSuggestionRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231139C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMRMediaSuggestionRequestOptionsClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MRMediaSuggestionRequestOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMRMediaSuggestionRequestOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMRMediaSuggestionRequestOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:76 description:{@"Unable to find class %s", "MRMediaSuggestionRequestOptions"}];

    __break(1u);
  }
}

void __getMRMediaSuggestionPreferencesClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MRMediaSuggestionPreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMRMediaSuggestionPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMRMediaSuggestionPreferencesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:77 description:{@"Unable to find class %s", "MRMediaSuggestionPreferences"}];

    __break(1u);
  }
}

void *__getMRSuggestionContextHomeScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaRemoteLibrary();
  result = dlsym(v2, "MRSuggestionContextHomeScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMRSuggestionContextHomeScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *MediaRemoteLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaRemoteLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2788FF2E0;
    v6 = 0;
    MediaRemoteLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MediaRemoteLibraryCore_frameworkLibrary;
  if (!MediaRemoteLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaRemoteLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:74 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaRemoteLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MediaRemoteLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMRMediaSuggestionRequestClass_block_invoke(uint64_t a1)
{
  MediaRemoteLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MRMediaSuggestionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMRMediaSuggestionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMRMediaSuggestionRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"VCVoiceShortcutManagerAccessWrapper.m" lineNumber:75 description:{@"Unable to find class %s", "MRMediaSuggestionRequest"}];

    __break(1u);
  }
}

uint64_t __VCVoiceShortcutFromWorkflow_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

id getFCActivityManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFCActivityManagerClass_softClass;
  v7 = getFCActivityManagerClass_softClass;
  if (!getFCActivityManagerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFCActivityManagerClass_block_invoke;
    v3[3] = &unk_2788FFE98;
    v3[4] = &v4;
    __getFCActivityManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231141D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFCActivityManagerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!FocusLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __FocusLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2788FF930;
    v8 = 0;
    FocusLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FocusLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FocusLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:35 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FCActivityManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFCActivityManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:36 description:{@"Unable to find class %s", "FCActivityManager"}];

LABEL_10:
    __break(1u);
  }

  getFCActivityManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FocusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FocusLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_231145380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMTAlarmManagerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:41 description:{@"Unable to find class %s", "MTAlarmManager"}];

    __break(1u);
  }
}

void __getMTAlarmDataSourceClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTAlarmDataSource");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmDataSourceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTAlarmDataSourceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:42 description:{@"Unable to find class %s", "MTAlarmDataSource"}];

    __break(1u);
  }
}

void MobileTimerLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MobileTimerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2788FF948;
    v5 = 0;
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileTimerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFContextualActionSpotlightSyncService.m" lineNumber:39 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MobileTimerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_231146720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231146B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5781(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231147450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_231147AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v17 - 56));
  _Unwind_Resume(a1);
}

void sub_231148078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23114857C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231149EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6067(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23114A0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23114A874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6187(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23114AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23114BC30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__6342(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_23114C97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFPhotoMediaContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFPhotoMediaContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFPhotoMediaContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFPhotoMediaContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:28 description:{@"Unable to find class %s", "WFPhotoMediaContentItem"}];

    __break(1u);
  }
}

void __getWFCNContactStoreClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFCNContactStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFCNContactStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFCNContactStoreClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:30 description:{@"Unable to find class %s", "WFCNContactStore"}];

    __break(1u);
  }
}

id getWFContentItemClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWFContentItemClass_softClass;
  v7 = getWFContentItemClass_softClass;
  if (!getWFContentItemClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWFContentItemClass_block_invoke;
    v3[3] = &unk_2788FFE98;
    v3[4] = &v4;
    __getWFContentItemClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23114CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getWFContentItemClass_block_invoke(uint64_t a1)
{
  ContentKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WFContentItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWFContentItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getWFContentItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFOnScreenContentManager.m" lineNumber:27 description:{@"Unable to find class %s", "WFContentItem"}];

    __break(1u);
  }
}

void ContentKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ContentKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2788FFEB8;
    v5 = 0;
    ContentKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContentKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContentKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFOnScreenContentManager.m" lineNumber:23 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __ContentKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  ContentKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_23114D7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6467(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2311526D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231152A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_231153390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2311534D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231154BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WFTriggerEventInfoDictionaryConverter(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v17 = MEMORY[0x277CBEB98];
    v18 = MEMORY[0x277CCAAC8];
    v16 = objc_opt_class();
    v2 = objc_opt_class();
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v17 setWithObjects:{v16, v2, v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
    v19 = 0;
    v12 = [v18 unarchivedObjectOfClasses:v11 fromData:v1 error:&v19];
    v13 = v19;

    if (!v12)
    {
      v14 = getWFTriggersLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v21 = "WFTriggerEventInfoDictionaryConverter";
        v22 = 2114;
        v23 = v13;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_FAULT, "%s Conversion from data to NSDictionary failed with error: %{public}@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id WFSerializedTriggerEventInfo(void *a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKey:@"NewValue"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v1 objectForKey:@"NewValue"];
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v10 = getWFTriggersLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "WFSerializedTriggerEventInfo";
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to cast message or email eventInfo to NSArray", buf, 0xCu);
      }

      goto LABEL_15;
    }

    v7 = MEMORY[0x277CCAAB0];
    v19 = @"NewValue";
    v20[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = 0;
    v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v14];
    v10 = v14;

    if (v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v13];
    v10 = v13;
    if (v9)
    {
      goto LABEL_16;
    }
  }

  v11 = getWFTriggersLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "WFSerializedTriggerEventInfo";
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Could not encode object with error: %{public}@", buf, 0x16u);
  }

LABEL_15:
  v9 = 0;
LABEL_16:

  return v9;
}