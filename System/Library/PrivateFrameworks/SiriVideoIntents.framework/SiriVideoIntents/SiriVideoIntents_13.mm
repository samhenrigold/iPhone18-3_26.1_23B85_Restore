uint64_t sub_2697C0518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_269854B34();

  return sub_269854B34();
}

uint64_t sub_2697C0568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269855674();
  sub_269854B34();
  sub_269854B34();
  return sub_2698556C4();
}

uint64_t sub_2697C05F0(uint64_t a1)
{
  sub_269855674();
  sub_269854B34();
  sub_269854B34();
  return sub_2698556C4();
}

uint64_t sub_2697C067C(unint64_t a1, unint64_t a2)
{
  v4 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  if (*(a1 + 16))
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    OUTLINED_FUNCTION_33_0(v4, qword_281571B38);
    (*(v6 + 16))(v12);

    v13 = sub_2698548B4();
    v14 = sub_269854F44();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_27_2();
      v26 = v4;
      v16 = v15;
      v25 = OUTLINED_FUNCTION_9_3();
      v27 = v25;
      *v16 = 136315138;
      v17 = MEMORY[0x26D645BC0](a1, MEMORY[0x277D837D0]);
      v19 = sub_26974F520(v17, v18, &v27);

      *(v16 + 4) = v19;
      _os_log_impl(&dword_269684000, v13, v14, "Prefetching items with IDs: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      (*(v6 + 8))(v12, v26);
    }

    else
    {

      (*(v6 + 8))(v12, v4);
    }

    return sub_2697C1788(a1, a2);
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    OUTLINED_FUNCTION_33_0(v4, qword_281571B38);
    (*(v6 + 16))(v10);
    v20 = sub_2698548B4();
    v21 = sub_269854F44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_16_2();
      *v22 = 0;
      _os_log_impl(&dword_269684000, v20, v21, "Skipping prefetch due to empty list of IDs", v22, 2u);
      OUTLINED_FUNCTION_10();
    }

    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_2697C0978()
{
  OUTLINED_FUNCTION_2_7();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E98, &unk_269863360);
  OUTLINED_FUNCTION_8_9(v7);
  v1[22] = swift_task_alloc();
  v8 = _s8PlayableVMa(0);
  v1[23] = v8;
  OUTLINED_FUNCTION_8_9(v8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v9 = sub_2698548D4();
  v1[27] = v9;
  v1[28] = *(v9 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697C0ACC);
}

uint64_t sub_2697C0ACC()
{
  v64 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[17];
  if (v2)
  {
    v5 = v0[19];
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = v0[20];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  swift_beginAccess();
  v62 = v1;
  v7 = *(v1 + 152);

  v8 = sub_26981D4CC(v4, v3, v5, v6, v7);

  if (v8)
  {

    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v9 = v0[30];
    v10 = v0[28];
    OUTLINED_FUNCTION_33_0(v0[27], qword_281571B38);
    v11 = *(v10 + 16);
    v11(v9);

    v12 = sub_2698548B4();
    v13 = sub_269854F04();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[30];
    v16 = v0[28];
    v59 = v0[27];
    if (v14)
    {
      v17 = v0[18];
      v57 = v6;
      v18 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = OUTLINED_FUNCTION_14_20();
      *(v18 + 4) = sub_26974F520(v19, v17, v20);
      *(v18 + 12) = 2080;
      OUTLINED_FUNCTION_13_21();

      v21 = OUTLINED_FUNCTION_22_3();
      v24 = sub_26974F520(v21, v22, v23);

      *(v18 + 14) = v24;
      _os_log_impl(&dword_269684000, v12, v13, "%s for %s was prefetched, notifying on UTS response", v18, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      v6 = v57;
      OUTLINED_FUNCTION_10();
    }

    v25 = *(v16 + 8);
    v25(v15, v59);
  }

  else
  {
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v26 = v0[31];
    v27 = v0[28];
    OUTLINED_FUNCTION_33_0(v0[27], qword_281571B38);
    v61 = *(v27 + 16);
    v61(v26);

    v28 = sub_2698548B4();
    v29 = sub_269854F44();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[31];
    v33 = v0[27];
    v32 = v0[28];
    if (v30)
    {
      v58 = v6;
      v60 = v0[27];
      v34 = v5;
      v36 = v0[17];
      v35 = v0[18];
      v56 = v0[31];
      v37 = OUTLINED_FUNCTION_27_2();
      v38 = OUTLINED_FUNCTION_9_3();
      v63 = v38;
      *v37 = 136315138;
      v39 = v36;
      v5 = v34;
      v40 = v35;
      v6 = v58;
      *(v37 + 4) = sub_26974F520(v39, v40, &v63);
      _os_log_impl(&dword_269684000, v28, v29, "%s was not prefetched, calling out to UTS", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v25 = *(v32 + 8);
      v25(v56, v60);
    }

    else
    {

      v25 = *(v32 + 8);
      v25(v31, v33);
    }

    v42 = v0[17];
    v41 = v0[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_269857710;
    *(inited + 32) = v42;
    *(inited + 40) = v41;
    if (v2)
    {
      v44 = v0[19];
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_269857710;
      *(v45 + 32) = v44;
      *(v45 + 40) = v2;
    }

    else
    {
      v45 = MEMORY[0x277D84F90];
    }

    sub_2697C1788(inited, v45);

    swift_setDeallocating();
    sub_269819D84();
    v11 = v61;
  }

  v0[32] = v25;
  v0[33] = v11;
  v46 = v0[17];
  v47 = v0[18];
  v48 = *(v62 + 152);

  v49 = sub_26981D4CC(v46, v47, v5, v6, v48);
  v0[34] = v49;

  if (!v49)
  {

    sub_2697C3370();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_3_37();

    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v50 = swift_task_alloc();
  v0[35] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E90, &unk_269863350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
  *v50 = v0;
  v50[1] = sub_2697C10D8;
  OUTLINED_FUNCTION_69();

  return MEMORY[0x282200430]();
}

uint64_t sub_2697C10D8()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v0;

  if (v0)
  {

    v4 = sub_2697C16DC;
  }

  else
  {
    v4 = sub_2697C121C;
  }

  return MEMORY[0x2822009F8](v4);
}

void sub_2697C121C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[15];

  sub_26981D518();

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = v0[22];
    v6 = v0[19];
    v5 = v0[20];
    v8 = v0[17];
    v7 = v0[18];

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    sub_269698048(v4, &qword_280324E98, &unk_269863360);
    swift_beginAccess();
    sub_26983FED8(v8, v7, v10, v9);
    swift_endAccess();

    sub_2697C3370();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_3_37();

    OUTLINED_FUNCTION_7_7();
  }

  else
  {
    v48 = v3;
    v12 = v0[26];
    v13 = v0[22];

    sub_2697BE740(v13, v12);
    if (qword_280322700 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280322700);
    }

    v14 = v0[33];
    v15 = v0[29];
    v16 = v0[26];
    v17 = v0[25];
    OUTLINED_FUNCTION_33_0(v0[27], qword_281571B38);
    v14(v15);
    sub_2697BE3D4(v16, v17);

    v18 = sub_2698548B4();
    v19 = sub_269854F04();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[32];
    v22 = v0[29];
    v23 = v0[27];
    v24 = v0[25];
    if (v20)
    {
      v44 = v0[24];
      v46 = v0[32];
      v47 = v0[29];
      v25 = v0[20];
      v45 = v0[27];
      v26 = v0[18];
      v27 = OUTLINED_FUNCTION_9_3();
      swift_slowAlloc();
      *v27 = 136315650;
      v28 = OUTLINED_FUNCTION_14_20();
      *(v27 + 4) = sub_26974F520(v28, v26, v29);
      *(v27 + 12) = 2080;
      OUTLINED_FUNCTION_13_21();
      if (v31)
      {
        v32 = v30;
      }

      else
      {
        v32 = v25;
      }

      v33 = OUTLINED_FUNCTION_14_20();
      v35 = sub_26974F520(v33, v32, v34);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      sub_2697BE3D4(v24, v44);
      sub_269854AE4();
      v37 = v36;
      sub_2697C33C4(v24);
      v38 = OUTLINED_FUNCTION_14_20();
      v40 = sub_26974F520(v38, v37, v39);

      *(v27 + 24) = v40;
      _os_log_impl(&dword_269684000, v18, v19, "Returning playable for %s and %s: %s", v27, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();

      v46(v47, v45);
    }

    else
    {

      sub_2697C33C4(v24);
      v21(v22, v23);
    }

    v41 = v0[16];
    sub_2697BE740(v0[26], v41);

    *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280324210, &qword_26985F1D0) + 28)) = v48;

    OUTLINED_FUNCTION_7_7();
  }

  OUTLINED_FUNCTION_69();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2697C16DC()
{

  OUTLINED_FUNCTION_3_37();

  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697C1788(unint64_t a1, unint64_t a2)
{
  v129 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v4 = OUTLINED_FUNCTION_8_9(v3);
  MEMORY[0x28223BE20](v4);
  v116 = &v115 - v5;
  v6 = sub_2698548D4();
  OUTLINED_FUNCTION_8();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v115 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v115 - v13;
  MEMORY[0x28223BE20](v12);
  inited = (&v115 - v15);
  if (qword_280322700 != -1)
  {
LABEL_98:
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v119 = v14;
  OUTLINED_FUNCTION_33_0(v6, qword_281571B38);
  v17 = *(v8 + 16);
  v117 = v18;
  v118 = v8 + 16;
  v122 = v17;
  (v17)(inited);
  v19 = sub_2698548B4();
  v20 = sub_269854F44();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_16_2();
    *v21 = 0;
    _os_log_impl(&dword_269684000, v19, v20, "Inside BackgroundPlayableFetch::triggerFetch", v21, 2u);
    OUTLINED_FUNCTION_10();
  }

  v22 = *(v8 + 8);
  v8 += 8;
  v120 = v6;
  v123 = v8;
  *&v121 = v22;
  v22(inited, v6);
  v23 = *(a1 + 16);
  v126 = a1 + 32;
  v127 = v23;
  v14 = 0;
  v133 =  + 40;
  v24 = MEMORY[0x277D84F90];
  while (v14 != v127)
  {
    v25 = (v126 + 16 * v14);
    v8 = *v25;
    inited = v25[1];
    v26 = *(v129 + 16);
    swift_bridgeObjectRetain_n();
    if (v26)
    {
      v27 = v133;
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_26977CF38();
          v24 = v33;
        }

        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        a1 = v31 + 1;
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_9(v30);
          sub_26977CF38();
          v24 = v34;
        }

        *(v24 + 16) = a1;
        v32 = (v24 + 32 * v31);
        v32[4] = v8;
        v32[5] = inited;
        v32[6] = v29;
        v32[7] = v28;

        v27 += 2;
        --v26;
      }

      while (v26);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_5();
        sub_26977CF38();
        v24 = v37;
      }

      a1 = *(v24 + 16);
      v35 = *(v24 + 24);
      if (a1 >= v35 >> 1)
      {
        OUTLINED_FUNCTION_9(v35);
        sub_26977CF38();
        v24 = v38;
      }

      *(v24 + 16) = a1 + 1;
      v36 = (v24 + 32 * a1);
      v36[4] = v8;
      v36[5] = inited;
      v36[6] = 0;
      v36[7] = 0xE000000000000000;
    }

    ++v14;
  }

  v39 = 0;
  v128 = v24 + 56;
  v6 = MEMORY[0x277D84F90];
LABEL_21:
  while (1)
  {
    v125 = v6;
    if (v39 == v127)
    {
      break;
    }

    if (v39 >= v127)
    {
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (__OFADD__(v39, 1))
    {
      goto LABEL_96;
    }

    v124 = v39 + 1;
    v40 = (v126 + 16 * v39);
    v8 = v40[1];
    v133 = *v40;
    v41 = *(v24 + 16);

    v42 = 0;
    v14 = -v41;
    v130 = MEMORY[0x277D84F90];
LABEL_25:
    v6 = v42 + 1;
    inited = (v128 + 32 * v42);
    while (v14 + v6 != 1)
    {
      v42 = v6;
      if ((v6 - 1) >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_87;
      }

      v44 = *(inited - 3);
      v43 = *(inited - 2);
      v45 = *(inited - 1);
      a1 = *inited;
      if (v44 == v133 && v43 == v8)
      {
        v44 = v133;
LABEL_35:

        v47 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269815344(0, v47[2] + 1, 1);
          v47 = v135;
        }

        v50 = v47[2];
        v49 = v47[3];
        v51 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v53 = OUTLINED_FUNCTION_9(v49);
          v131 = v54;
          sub_269815344(v53, v54, 1);
          v51 = v131;
          v47 = v135;
        }

        v47[2] = v51;
        v130 = v47;
        v52 = &v47[4 * v50];
        v52[4] = v44;
        v52[5] = v43;
        v52[6] = v45;
        v52[7] = a1;
        goto LABEL_25;
      }

      ++v6;
      inited += 4;
      if (sub_269855584())
      {
        goto LABEL_35;
      }
    }

    v55 = v130;
    v131 = v130[2];
    swift_beginAccess();
    v56 = 0;
    for (i = v55 + 7; ; i += 4)
    {
      if (v131 == v56)
      {

        v39 = v124;
        v6 = v125;
        goto LABEL_21;
      }

      if (v56 >= v55[2])
      {
        __break(1u);
        goto LABEL_92;
      }

      inited = *(v132 + 152);
      if (!inited[2])
      {

        goto LABEL_49;
      }

      v14 = *(i - 1);
      a1 = *i;
      v6 = *(i - 3);
      v58 = *(i - 2);

      sub_26973D3A8(v6, v58, v14, a1);
      if ((v59 & 1) == 0)
      {
        break;
      }

      ++v56;
    }

LABEL_49:
    v6 = v125;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v134[0] = v6;
    a1 = v124;
    if ((v60 & 1) == 0)
    {
      inited = v134;
      sub_269814F0C(0, *(v6 + 16) + 1, 1);
      v6 = v134[0];
    }

    v14 = *(v6 + 16);
    v61 = *(v6 + 24);
    if (v14 >= v61 >> 1)
    {
      v63 = OUTLINED_FUNCTION_9(v61);
      inited = v134;
      sub_269814F0C(v63, v14 + 1, 1);
      v6 = v134[0];
    }

    *(v6 + 16) = v14 + 1;
    v62 = v6 + 16 * v14;
    *(v62 + 32) = v133;
    *(v62 + 40) = v8;
    v39 = a1;
  }

  v64 = v119;
  v24 = v117;
  v8 = v120;
  (v122)(v119, v117, v120);

  v65 = sub_2698548B4();
  v66 = sub_269854F14();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = OUTLINED_FUNCTION_27_2();
    v68 = OUTLINED_FUNCTION_9_3();
    v134[0] = v68;
    *v67 = 136315138;
    v69 = MEMORY[0x26D645BC0](v6, MEMORY[0x277D837D0]);
    v71 = sub_26974F520(v69, v70, v134);

    *(v67 + 4) = v71;
    v6 = v125;
    _os_log_impl(&dword_269684000, v65, v66, "Reduced list of IDs to: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  a1 = v123;
  (v121)(v64, v8);
  v123 = *(v6 + 16);
  if (v123)
  {
    v72 = sub_269854DB4();
    v73 = v116;
    __swift_storeEnumTagSinglePayload(v116, 1, 1, v72);
    v74 = sub_2697C3264();
    inited = swift_allocObject();
    v75 = v132;
    inited[2] = v132;
    inited[3] = v74;
    inited[4] = v75;
    inited[5] = v6;
    v14 = v129;
    inited[6] = v129;
    swift_retain_n();

    v133 = sub_2697C2C78(0, 0, v73, &unk_269863338, inited);
    v76 = 0;
    v122 = (v6 + 32);
    v127 = (v14 + 40);
    v121 = xmmword_269857710;
LABEL_58:
    if (v76 == v123)
    {
    }

    if (v76 < *(v6 + 16))
    {
      v77 = &v122[16 * v76];
      v126 = v76 + 1;
      v78 = *v77;
      v79 = v77[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322898, &unk_269858A60);
      inited = swift_initStackObject();
      *(inited + 1) = v121;
      inited[4] = v78;
      inited[5] = v79;
      v124 = v79;
      swift_bridgeObjectRetain_n();

      v80 = MEMORY[0x277D84F90];
      v14 = inited[4];
      v8 = inited[5];
      v6 = *(v129 + 16);
      swift_bridgeObjectRetain_n();
      if (v6)
      {
        v81 = v127;
        do
        {
          v83 = *(v81 - 1);
          v82 = *v81;
          swift_bridgeObjectRetain_n();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_5();
            sub_26977CF38();
            v80 = v87;
          }

          v85 = v80[2];
          v84 = v80[3];
          a1 = v85 + 1;
          if (v85 >= v84 >> 1)
          {
            OUTLINED_FUNCTION_9(v84);
            sub_26977CF38();
            v80 = v88;
          }

          v80[2] = a1;
          v86 = &v80[4 * v85];
          v86[4] = v14;
          v86[5] = v8;
          v86[6] = v83;
          v86[7] = v82;

          v81 += 2;
          --v6;
        }

        while (v6);
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_3_5();
          sub_26977CF38();
          v80 = v91;
        }

        a1 = v80[2];
        v89 = v80[3];
        if (a1 >= v89 >> 1)
        {
          OUTLINED_FUNCTION_9(v89);
          sub_26977CF38();
          v80 = v92;
        }

        v80[2] = a1 + 1;
        v90 = &v80[4 * a1];
        v90[4] = v14;
        v90[5] = v8;
        v90[6] = 0;
        v90[7] = 0xE000000000000000;
      }

      swift_setDeallocating();
      sub_269819D84();
      v93 = 0;
      v128 = v80[2];
      v94 = v80 + 7;
      while (1)
      {
        if (v128 == v93)
        {

          v6 = v125;
          v76 = v126;
          goto LABEL_58;
        }

        if (v93 >= v80[2])
        {
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v130 = v94;
        v131 = v93;
        a1 = *(v94 - 3);
        v8 = *(v94 - 2);
        v95 = *(v94 - 1);
        v96 = *v94;
        v97 = v132;
        swift_beginAccess();

        v6 = swift_isUniquelyReferenced_nonNull_native();
        v135 = *(v97 + 152);
        inited = v135;
        *(v97 + 152) = 0x8000000000000000;
        v98 = OUTLINED_FUNCTION_17_17();
        v100 = inited[2];
        v101 = (v99 & 1) == 0;
        v14 = v100 + v101;
        if (__OFADD__(v100, v101))
        {
          goto LABEL_93;
        }

        v102 = v98;
        v103 = v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E88, &qword_269863348);
        inited = &v135;
        if (sub_2698552E4())
        {
          inited = v135;
          v104 = OUTLINED_FUNCTION_17_17();
          if ((v103 & 1) != (v105 & 1))
          {
            result = sub_2698555F4();
            __break(1u);
            return result;
          }

          v102 = v104;
        }

        v14 = v135;
        if (v103)
        {
          *(v135[7] + 8 * v102) = v133;
        }

        else
        {
          v135[(v102 >> 6) + 8] |= 1 << v102;
          v106 = (*(v14 + 48) + 32 * v102);
          *v106 = a1;
          v106[1] = v8;
          v106[2] = v95;
          v106[3] = v96;
          *(*(v14 + 56) + 8 * v102) = v133;
          v107 = *(v14 + 16);
          v108 = __OFADD__(v107, 1);
          v109 = v107 + 1;
          if (v108)
          {
            goto LABEL_94;
          }

          *(v14 + 16) = v109;
        }

        *(v132 + 152) = v14;
        swift_endAccess();

        v94 = v130 + 4;
        v93 = v131 + 1;
      }
    }

    goto LABEL_97;
  }

LABEL_87:

  v110 = v115;
  (v122)(v115, v24, v8);
  v111 = sub_2698548B4();
  v112 = sub_269854F14();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = OUTLINED_FUNCTION_16_2();
    *v113 = 0;
    _os_log_impl(&dword_269684000, v111, v112, "Empty list of IDs to prefetch, skipping call", v113, 2u);
    OUTLINED_FUNCTION_10();
  }

  return (v121)(v110, v8);
}

uint64_t sub_2697C24B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_2698548D4();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2697C2598);
}

uint64_t sub_2697C2598()
{
  if (qword_280322700 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280322700);
  }

  v1 = v0[15];
  v2 = v0[12];
  v0[16] = OUTLINED_FUNCTION_33_0(v0[11], qword_281571B38);
  v3 = *(v2 + 16);
  v0[17] = v3;
  v0[18] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1);
  v4 = sub_2698548B4();
  v5 = sub_269854F14();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_16_2();
    *v6 = 0;
    _os_log_impl(&dword_269684000, v4, v5, "Task executed", v6, 2u);
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[12];
  v8 = v0[8];

  v0[19] = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_22_3();
  v10(v9);
  __swift_project_boxed_opaque_existential_1((v8 + 112), *(v8 + 136));
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_2697C272C;

  return sub_2697BD230();
}

uint64_t sub_2697C272C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[21] = v2;

  if (v2)
  {
    v5 = sub_2697C2A20;
  }

  else
  {
    v5 = sub_2697C2860;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2697C2860()
{
  v19 = v0;
  (*(v0 + 136))(*(v0 + 112), *(v0 + 128), *(v0 + 88));

  v1 = sub_2698548B4();
  v2 = sub_269854F14();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = *(v0 + 72);
    v17 = *(v0 + 152);
    v6 = OUTLINED_FUNCTION_27_2();
    v7 = OUTLINED_FUNCTION_9_3();
    v18 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x26D645BC0](v5, MEMORY[0x277D837D0]);
    v10 = sub_26974F520(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_269684000, v1, v2, "BackgroundFetch playables request returned success response for: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v11 = OUTLINED_FUNCTION_22_3();
    v17(v11);
  }

  else
  {

    v12 = OUTLINED_FUNCTION_22_3();
    v4(v12);
  }

  v13 = *(v0 + 32);
  v14 = *(v0 + 56);
  *v14 = *(v0 + 24);
  v14[1] = v13;

  OUTLINED_FUNCTION_7_7();

  return v15();
}

uint64_t sub_2697C2A20()
{
  v23 = v0;
  v1 = *(v0 + 168);
  (*(v0 + 136))(*(v0 + 104), *(v0 + 128), *(v0 + 88));

  v2 = v1;
  v3 = sub_2698548B4();
  v4 = sub_269854F24();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v20 = *(v0 + 104);
    v21 = *(v0 + 152);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = MEMORY[0x26D645BC0](v7, MEMORY[0x277D837D0]);
    v11 = sub_26974F520(v9, v10, v22);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v0 + 48) = v5;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803228C0, &qword_269859090);
    v13 = sub_269854AE4();
    v15 = sub_26974F520(v13, v14, v22);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_269684000, v3, v4, "BackgroundFetch playables request returned failure response for %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    v21(v20, v6);
  }

  else
  {
    v16 = *(v0 + 152);

    v17 = OUTLINED_FUNCTION_22_3();
    v16(v17);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_7_7();

  return v18();
}

uint64_t sub_2697C2C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2697B12E4(a3, v21 - v9);
  v11 = sub_269854DB4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_269698048(v10, &qword_280324D20, &qword_269860000);
  }

  else
  {
    sub_269854DA4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_269854D34();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_269854B04() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E90, &unk_269863350);
      v18 = (v16 | v14);
      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_269698048(a3, &qword_280324D20, &qword_269860000);

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

  sub_269698048(a3, &qword_280324D20, &qword_269860000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324E90, &unk_269863350);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_2697C2F08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324D20, &qword_269860000);
  v2 = OUTLINED_FUNCTION_8_9(v1);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = sub_269854DB4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_26983AA20();
}

uint64_t sub_2697C3004()
{
  OUTLINED_FUNCTION_2_7();
  sub_2697C305C();
  OUTLINED_FUNCTION_7_7();

  return v0();
}

uint64_t sub_2697C305C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803241A0, &qword_26985F1E0);
  sub_2696B2880();
  v1 = sub_269854A04();
  swift_beginAccess();
  *(v0 + 152) = v1;
}

uint64_t sub_2697C30DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2697C310C()
{
  sub_2697C30DC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2697C315C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2697C319C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697C3210()
{
  result = qword_280324E78;
  if (!qword_280324E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E78);
  }

  return result;
}

unint64_t sub_2697C3264()
{
  result = qword_280324E80;
  if (!qword_280324E80)
  {
    type metadata accessor for BackgroundPlayableFetch();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324E80);
  }

  return result;
}

uint64_t sub_2697C32B8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_8_31(v5);

  return sub_2697C24B8(v6, v7, v8, v2, v3, v4);
}

unint64_t sub_2697C3370()
{
  result = qword_280324EA0;
  if (!qword_280324EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EA0);
  }

  return result;
}

uint64_t sub_2697C33C4(uint64_t a1)
{
  v2 = _s8PlayableVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2697C3420()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_8_31(v3);

  return sub_2697C2FE4(v4, v5, v6, v2);
}

_BYTE *sub_2697C34C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697C35A0()
{
  result = qword_280324EA8;
  if (!qword_280324EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_37()
{
}

unint64_t OUTLINED_FUNCTION_17_17()
{

  return sub_26973D3A8(v1, v2, v0, v3);
}

id sub_2697C367C()
{
  v1 = v0;
  type metadata accessor for ContentImage();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = OUTLINED_FUNCTION_0_37();
  v4 = sub_269854E84();
  [v3 setWidth_];

  v5 = sub_269854E84();
  [v3 setHeight_];

  if (v1[5])
  {
    v6 = v1[4];
    v7 = v1[5];
  }

  else
  {
    v7 = 0xE300000000000000;
    v6 = 7496556;
  }

  sub_2697C6C18(v6, v7, v3);
  sub_2697C6C7C(v1[2], v1[3], v3);
  return v3;
}

uint64_t sub_2697C374C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

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

uint64_t sub_2697C37A0(char a1)
{
  if (a1)
  {
    return 0x656B6F547478656ELL;
  }

  else
  {
    return 0x736D657469;
  }
}

uint64_t sub_2697C37FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697C374C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2697C382C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697C37A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697C3860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C374C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C3894(uint64_t a1)
{
  v2 = sub_2697C6A9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C38D0(uint64_t a1)
{
  v2 = sub_2697C6A9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697C390C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324EB0, &qword_2698634C8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_2697C6A9C();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324EC0, &unk_2698634D0);
    sub_2697C781C(&qword_280324EC8, &qword_280324EC0, &unk_2698634D0, sub_2697C6AF0);
    sub_269855454();
    if (v8)
    {
      v4 = v8;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_269855414();
    v6 = OUTLINED_FUNCTION_17_18();
    v7(v6);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

uint64_t sub_2697C3B1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v5 = *(a1 + 16);
  v6 = (a1 + 32);
  v7 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v7 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  for (i = !v8; v5; --v5)
  {
    memcpy(__dst, v6, 0x102uLL);
    memcpy(v16, v6, sizeof(v16));
    sub_2697C6CD4(__dst, &v13);
    v10 = sub_2697C3D4C(i);
    v11 = sub_269854D24();
    [v10 setIsInWatchList_];

    v12 = sub_2697C6D0C(__dst);
    MEMORY[0x26D645B90](v12);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_269854CD4();
    }

    sub_269854CF4();
    result = v15;
    v6 += 264;
  }

  return result;
}

uint64_t sub_2697C3C58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6569766F4DLL && a2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_14_21(0x6569766F4DLL, 0xE500000000000000) & 1) != 0)
  {
    return 4;
  }

  v6 = a1 == 2003789907 && a2 == 0xE400000000000000;
  if (v6 || (OUTLINED_FUNCTION_14_21(2003789907, 0xE400000000000000) & 1) != 0)
  {
    return 1;
  }

  v7 = a1 == 0x6E6F73616553 && a2 == 0xE600000000000000;
  if (v7 || (OUTLINED_FUNCTION_14_21(0x6E6F73616553, 0xE600000000000000) & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x65646F73697045 && a2 == 0xE700000000000000)
  {
    return 3;
  }

  if (OUTLINED_FUNCTION_14_21(0x65646F73697045, 0xE700000000000000))
  {
    return 3;
  }

  return 0;
}

id sub_2697C3D4C(int a1)
{
  v2 = v1;
  v50 = a1;
  v49 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v48 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  type metadata accessor for Content();
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v13 = v1[3];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = objc_allocWithZone(ObjCClassFromMetadata);

  v16 = sub_2697C01B0(v10, v11, v12, v13);
  sub_2697A3DA0(v12, v13, v16);
  [v16 setType_];
  sub_2697C6D3C(v10, v11, v16);
  sub_269851C64();
  v17 = sub_269851C74();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v17);
  v19 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v19 = sub_269851C24();
    EnumTagSinglePayload = (*(*(v17 - 8) + 8))(v9, v17);
  }

  OUTLINED_FUNCTION_0_16(EnumTagSinglePayload, sel_setDetailsUrl_);

  v20 = v2[6];
  if (v20 && *(v20 + 16) || v2[5])
  {

    v21 = sub_269854A64();
  }

  else
  {
    v21 = 0;
  }

  [v16 setGenre_];

  v22 = sub_269854D24();
  OUTLINED_FUNCTION_0_16(v22, sel_setHasMoreResults_);

  if (v2[30])
  {
    v24 = 0;
  }

  else
  {
    *&v59 = v2[29];
    v24 = &v59;
    sub_269855544();
    sub_269854A64();
    v23 = OUTLINED_FUNCTION_25_15();
  }

  OUTLINED_FUNCTION_0_16(v23, sel_setEpisodeNumber_);

  if (v2[32])
  {
    v26 = 0;
  }

  else
  {
    *&v59 = v2[31];
    v26 = &v59;
    sub_269855544();
    sub_269854A64();
    v25 = OUTLINED_FUNCTION_25_15();
  }

  OUTLINED_FUNCTION_0_16(v25, sel_setSeasonNumber_);

  v27 = v2[26];
  if (v27)
  {
    v28 = v2[25];
    v29 = objc_allocWithZone(ObjCClassFromMetadata);
    v30 = OUTLINED_FUNCTION_0_37();
    OUTLINED_FUNCTION_0_16(v30, sel_setShow_);

    v31 = [v16 show];
    if (v31)
    {
      v32 = v31;
      sub_2697A3DA0(v28, v27, v31);
    }
  }

  if ((v2[8] & 1) == 0)
  {
    sub_269851CF4();
    v33 = sub_269851CD4();
    v34 = (*(v48 + 8))(v6, v49);
    OUTLINED_FUNCTION_0_16(v34, sel_setReleaseDate_);
  }

  sub_2697C6BA4(MEMORY[0x277D84F90], v16);
  v35 = *(v2 + 13);
  v36 = v2[16];
  v54 = v2[15];
  v52 = *(v2 + 17);
  v53 = v35;
  v37 = v2[22];
  if (v37)
  {
    v59 = *(v2 + 19);
    v38 = v2[21];
    v62 = *(v2 + 23);
    v60 = v38;
    v61 = v37;
    v39 = sub_2697C367C();
    [v39 &off_279C6F4F8];
    *&v55 = sub_2697C6B44(v16);
    if (v55)
    {
      v40 = v39;
      v41 = &v55;
      MEMORY[0x26D645B90]();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_24_15();
      }

      v42 = sub_269854CF4();
      if (v55)
      {
        type metadata accessor for ContentImage();
        sub_269854CA4();
        v42 = OUTLINED_FUNCTION_25_15();
      }

      else
      {
        v41 = 0;
      }

      OUTLINED_FUNCTION_0_16(v42, sel_setImages_);
    }

    else
    {
      [v16 setImages_];
    }
  }

  if (v36)
  {
    v55 = v53;
    v58 = v52;
    v56 = v54;
    v57 = v36;
    v43 = sub_2697C367C();
    [v43 &off_279C6F4F8];
    v51 = sub_2697C6B44(v16);
    if (v51)
    {
      v44 = v43;
      v45 = &v51;
      MEMORY[0x26D645B90]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        OUTLINED_FUNCTION_24_15();
      }

      v46 = sub_269854CF4();
      if (v51)
      {
        type metadata accessor for ContentImage();
        sub_269854CA4();
        v46 = OUTLINED_FUNCTION_25_15();
      }

      else
      {
        v45 = 0;
      }

      OUTLINED_FUNCTION_0_16(v46, sel_setImages_);
    }

    else
    {
      [v16 setImages_];
    }
  }

  return v16;
}

uint64_t sub_2697C4300(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4172657355736168 && a2 == 0xEF79746976697463)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

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

uint64_t sub_2697C43D0(char a1)
{
  if (a1)
  {
    return 0x4172657355736168;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

void sub_2697C4414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_43();
  v25 = v24;
  v31 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324EF0, &qword_2698637D8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v27);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_2697C7070();
  sub_2698556E4();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    sub_2697C70C4();
    sub_269855494();
    memcpy(v35, v34, sizeof(v35));
    v28 = sub_269855424();
    v29 = OUTLINED_FUNCTION_15_22();
    v30(v29);
    memcpy(v32, v35, 0x101uLL);
    v32[257] = v28;
    sub_2697C6CD4(v32, v33);
    __swift_destroy_boxed_opaque_existential_0(v25);
    memcpy(v33, v35, 0x101uLL);
    v33[257] = v28;
    sub_2697C6D0C(v33);
    memcpy(v31, v32, 0x102uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C4640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C4300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C4668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2696D2830();
  *a1 = result;
  return result;
}

uint64_t sub_2697C4690(uint64_t a1)
{
  v2 = sub_2697C7070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C46CC(uint64_t a1)
{
  v2 = sub_2697C7070();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C4708(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_2697C4414(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x102uLL);
  }
}

uint64_t sub_2697C475C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 7107189 && a2 == 0xE300000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065;
                  if (v13 || (sub_269855584() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6449776F6873 && a2 == 0xE600000000000000;
                    if (v14 || (sub_269855584() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4E65646F73697065 && a2 == 0xED00007265626D75;
                      if (v15 || (sub_269855584() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_269855584();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_2697C4B00(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 1819568500;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 2:
      v3 = 1919837543;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 3:
      v4 = 1919837543;
      goto LABEL_10;
    case 4:
      return 0x44657361656C6572;
    case 5:
      return 1701869940;
    case 6:
      return 7107189;
    case 7:
      v4 = 1734438249;
LABEL_10:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
      break;
    case 8:
      result = 0x6C746954776F6873;
      break;
    case 9:
      result = 0x6449776F6873;
      break;
    case 10:
      result = 0x4E65646F73697065;
      break;
    case 11:
      result = 0x754E6E6F73616573;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C4C2C()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F50, &qword_269863BD8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v7 = v2[3];
  v68 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v7);
  sub_2697C7798();
  sub_2698556E4();
  if (v0)
  {
    OUTLINED_FUNCTION_10_22();
    __swift_destroy_boxed_opaque_existential_0(v2);
    if (v7)
    {

      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v4)
    {
LABEL_5:
      if (!v42)
      {
        goto LABEL_9;
      }

LABEL_6:

      goto LABEL_9;
    }

    if ((v42 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v43 = v4;
  LOBYTE(v45[0]) = 0;
  OUTLINED_FUNCTION_5_31();
  v8 = sub_269855464();
  v41 = v9;
  OUTLINED_FUNCTION_0_46(1);
  v10 = sub_269855464();
  v40 = v11;
  OUTLINED_FUNCTION_0_46(2);
  v33 = sub_269855414();
  v39 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
  LOBYTE(v44[0]) = 3;
  sub_2697C781C(&qword_280324F68, &qword_280324F60, &qword_269863BE0, sub_2697C7898);
  OUTLINED_FUNCTION_5_31();
  sub_269855454();
  v38 = v45[0];
  OUTLINED_FUNCTION_0_46(4);
  v32 = sub_269855434();
  v67 = v13 & 1;
  OUTLINED_FUNCTION_0_46(5);
  v31 = sub_269855464();
  v37 = v14;
  OUTLINED_FUNCTION_0_46(6);
  v30 = sub_269855464();
  v36 = v15;
  v62 = 7;
  sub_2697C78EC();
  OUTLINED_FUNCTION_5_31();
  sub_269855494();
  memcpy(v66, v63, sizeof(v66));
  OUTLINED_FUNCTION_0_46(8);
  v29 = sub_269855414();
  v35 = v16;
  OUTLINED_FUNCTION_0_46(9);
  v17 = sub_269855414();
  v34 = v18;
  v19 = v17;
  OUTLINED_FUNCTION_0_46(10);
  v28 = sub_269855444();
  v65 = v20 & 1;
  v61 = 11;
  OUTLINED_FUNCTION_5_31();
  v27 = sub_269855444();
  v22 = v21;
  v23 = OUTLINED_FUNCTION_7_34();
  v24(v23, v5);
  v63[96] = v22 & 1;
  v44[0] = v8;
  v44[1] = v41;
  v44[2] = v10;
  v44[3] = v40;
  v44[4] = v33;
  v44[5] = v39;
  v44[6] = v38;
  v44[7] = v32;
  v26 = v67;
  LOBYTE(v44[8]) = v67;
  v44[9] = v31;
  v44[10] = v37;
  v44[11] = v30;
  v44[12] = v36;
  memcpy(&v44[13], v66, 0x60uLL);
  v44[25] = v29;
  v44[26] = v35;
  v44[27] = v19;
  v44[28] = v34;
  v44[29] = v28;
  v25 = v65;
  LOBYTE(v44[30]) = v65;
  v44[31] = v27;
  LOBYTE(v44[32]) = v22 & 1;
  sub_2697C7940(v44, v45);
  __swift_destroy_boxed_opaque_existential_0(v68);
  v45[0] = v8;
  v45[1] = v41;
  v45[2] = v10;
  v45[3] = v40;
  v45[4] = v33;
  v45[5] = v39;
  v45[6] = v38;
  v45[7] = v32;
  v46 = v26;
  v47 = v31;
  v48 = v37;
  v49 = v30;
  v50 = v36;
  memcpy(v51, v66, sizeof(v51));
  v52 = v29;
  v53 = v35;
  v54 = v19;
  v55 = v34;
  v56 = v28;
  v57 = v25;
  *v58 = *v64;
  *&v58[3] = *&v64[3];
  v59 = v27;
  v60 = v22 & 1;
  sub_2697C7118(v45);
  memcpy(v43, v44, 0x101uLL);
LABEL_9:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C52EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C475C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C5314@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C4AF8();
  *a1 = result;
  return result;
}

uint64_t sub_2697C533C(uint64_t a1)
{
  v2 = sub_2697C7798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C5378(uint64_t a1)
{
  v2 = sub_2697C7798();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C53B4(void *a1@<X8>)
{
  sub_2697C4C2C();
  if (!v1)
  {
    memcpy(a1, __src, 0x101uLL);
  }
}

uint64_t sub_2697C5408(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E65746E6F63 && a2 == 0xEC0000006567616DLL;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002698802B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_269855584();

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

uint64_t sub_2697C54DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x49746E65746E6F63;
  }
}

void sub_2697C5520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_43();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324FF0, &qword_269863FC0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_14();
  sub_2697C80C4();
  sub_2698556E4();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    sub_2697C7A20();
    OUTLINED_FUNCTION_22_15();
    v30 = v45;
    v39 = v46;
    v40 = v47;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    OUTLINED_FUNCTION_22_15();
    v31 = OUTLINED_FUNCTION_13_22();
    v32(v31, v28);
    v38 = v57;
    v37 = v58;
    v36 = v59;
    v35 = v60;
    v34 = v61;
    v33 = v62;
    v44[0] = v30;
    v44[1] = v39;
    v44[2] = v40;
    v44[3] = v41;
    v44[4] = v42;
    v44[5] = v43;
    v44[6] = v57;
    v44[7] = v58;
    v44[8] = v59;
    v44[9] = v60;
    v44[10] = v61;
    v44[11] = v62;
    sub_2697C815C(v44, &v45);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v45 = v30;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    v49 = v42;
    v50 = v43;
    v51 = v38;
    v52 = v37;
    v53 = v36;
    v54 = v35;
    v55 = v34;
    v56 = v33;
    sub_2697C77EC(&v45);
    memcpy(v27, v44, 0x60uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C5408(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C5878(uint64_t a1)
{
  v2 = sub_2697C80C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C58B4(uint64_t a1)
{
  v2 = sub_2697C80C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C58F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_2697C5520(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x60uLL);
  }
}

uint64_t sub_2697C593C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7107189 && a2 == 0xE300000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000)
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

uint64_t sub_2697C5A88(char a1)
{
  result = 0x746867696568;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 7107189;
      break;
    case 3:
      result = 0x74616D726F66;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C5AF4()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F80, &qword_269863BE8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_14();
  sub_2697C7978();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    v7 = sub_269855484();
    OUTLINED_FUNCTION_4_10();
    v17 = sub_269855484();
    OUTLINED_FUNCTION_4_10();
    v8 = sub_269855464();
    v10 = v9;
    v16 = v8;
    OUTLINED_FUNCTION_4_10();
    v11 = sub_269855414();
    v12 = OUTLINED_FUNCTION_13_22();
    v14 = v13;
    v15(v12, v5);
    __swift_destroy_boxed_opaque_existential_0(v2);
    *v4 = v7;
    v4[1] = v17;
    v4[2] = v16;
    v4[3] = v10;
    v4[4] = v11;
    v4[5] = v14;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C5CD8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6349707061 && a2 == 0xE700000000000000)
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

void sub_2697C5D68()
{
  OUTLINED_FUNCTION_43();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F90, &qword_269863BF0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19_14();
  sub_2697C79CC();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_2697C7A20();
    sub_269855454();
    v7 = OUTLINED_FUNCTION_13_22();
    v8(v7, v5);
    __swift_destroy_boxed_opaque_existential_0(v2);
    *v4 = v9;
    *(v4 + 16) = v10;
    *(v4 + 32) = v11;
    *(v4 + 40) = v12;
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C5EC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x496D616441707061 && a2 == 0xEA00000000007364;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5074737269467369 && a2 == 0xEC00000079747261;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7263736275537369 && a2 == 0xEC00000064656269;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6174736E497369 && a2 == 0xEB0000000064656CLL;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65726F7453707061 && a2 == 0xEB000000006C7255;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_269855584();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_2697C6194(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x496D616441707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
      result = 0x5074737269467369;
      break;
    case 5:
      result = 0x7263736275537369;
      break;
    case 6:
      result = 0x6C6174736E497369;
      break;
    case 7:
      result = 0x65726F7453707061;
      break;
    case 8:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_43();
  v26 = v25;
  v28 = v27;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F08, &unk_2698637E0);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v29);
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_2697C7148();
  sub_2698556E4();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    LOBYTE(v59[0]) = 0;
    OUTLINED_FUNCTION_5_31();
    v30 = sub_269855464();
    v32 = v31;
    v53 = v30;
    OUTLINED_FUNCTION_1_39(1);
    v33 = sub_269855464();
    v55 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280322878, &qword_2698587A0);
    LOBYTE(v58[0]) = 2;
    sub_2697C719C();
    OUTLINED_FUNCTION_5_31();
    sub_269855454();
    v52 = v59[0];
    OUTLINED_FUNCTION_1_39(3);
    v51 = sub_269855414();
    v54 = v35;
    OUTLINED_FUNCTION_1_39(4);
    v77 = sub_269855474();
    OUTLINED_FUNCTION_1_39(5);
    v49 = sub_269855474();
    OUTLINED_FUNCTION_1_39(6);
    v47 = sub_269855474();
    OUTLINED_FUNCTION_1_39(7);
    v36 = sub_269855414();
    v38 = v37;
    v46 = v36;
    sub_2697C7218();
    OUTLINED_FUNCTION_5_31();
    sub_269855454();
    v77 &= 1u;
    v39 = v49 & 1;
    v42 = v47 & 1;
    v40 = OUTLINED_FUNCTION_7_34();
    v41(v40, v56);
    v48 = v73;
    v50 = v72;
    v44 = v75;
    v45 = v74;
    v43 = v76;
    v57 = v71;
    v58[0] = v53;
    v58[1] = v32;
    v58[2] = v33;
    v58[3] = v55;
    v58[4] = v52;
    v58[5] = v51;
    v58[6] = v54;
    LOBYTE(v58[7]) = v77;
    BYTE1(v58[7]) = v39;
    BYTE2(v58[7]) = v42;
    v58[8] = v46;
    v58[9] = v38;
    v58[10] = v71;
    v58[11] = v72;
    v58[12] = v73;
    v58[13] = v74;
    v58[14] = v75;
    v58[15] = v76;
    sub_2697926F8(v58, v59);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v59[0] = v53;
    v59[1] = v32;
    v59[2] = v33;
    v59[3] = v55;
    v59[4] = v52;
    v59[5] = v51;
    v59[6] = v54;
    v60 = v77;
    v61 = v39;
    v62 = v42;
    v63 = v46;
    v64 = v38;
    v65 = v57;
    v66 = v50;
    v67 = v48;
    v68 = v45;
    v69 = v44;
    v70 = v43;
    sub_269792754(v59);
    memcpy(v28, v58, 0x80uLL);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C6780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C593C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C67A8(uint64_t a1)
{
  v2 = sub_2697C7978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C67E4(uint64_t a1)
{
  v2 = sub_2697C7978();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697C6820@<D0>(_OWORD *a1@<X8>)
{
  sub_2697C5AF4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2697C6868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C5CD8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697C6894(uint64_t a1)
{
  v2 = sub_2697C79CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C68D0(uint64_t a1)
{
  v2 = sub_2697C79CC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697C690C@<D0>(_OWORD *a1@<X8>)
{
  sub_2697C5D68();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2697C6958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C5EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697C6980@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C618C();
  *a1 = result;
  return result;
}

uint64_t sub_2697C69A8(uint64_t a1)
{
  v2 = sub_2697C7148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697C69E4(uint64_t a1)
{
  v2 = sub_2697C7148();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697C6A20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_2697C629C(a1, a2, a3, a4, a5, a6, a7, a8, v11[0], v11[1], SWORD1(v11[1]), SWORD2(v11[1]), SBYTE6(v11[1]), SHIBYTE(v11[1]), v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11]);
  if (!v9)
  {
    memcpy(a9, v11, 0x80uLL);
  }
}

uint64_t sub_2697C6A6C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697C390C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2697C6A9C()
{
  result = qword_280324EB8;
  if (!qword_280324EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EB8);
  }

  return result;
}

unint64_t sub_2697C6AF0()
{
  result = qword_280324ED0;
  if (!qword_280324ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324ED0);
  }

  return result;
}

uint64_t sub_2697C6B44(void *a1)
{
  v1 = [a1 images];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for ContentImage();
  v3 = sub_269854CB4();

  return v3;
}

void sub_2697C6BA4(uint64_t a1, void *a2)
{
  type metadata accessor for ContentImage();
  v3 = sub_269854CA4();

  [a2 setImages_];
}

void sub_2697C6C18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();

  [a3 setFormat_];
}

void sub_2697C6C7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setTemplateUrl_];
}

void sub_2697C6D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_269854A64();
  [a3 setUmcId_];
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV8UTSImageVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV7ChannelV0E12ImageOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697C6DD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2697C6E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697C6E98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 258))
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

uint64_t sub_2697C6ED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 258) = 1;
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

    *(result + 258) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697C6F6C()
{
  result = qword_280324ED8;
  if (!qword_280324ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324ED8);
  }

  return result;
}

unint64_t sub_2697C6FC4()
{
  result = qword_280324EE0;
  if (!qword_280324EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EE0);
  }

  return result;
}

unint64_t sub_2697C701C()
{
  result = qword_280324EE8;
  if (!qword_280324EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EE8);
  }

  return result;
}

unint64_t sub_2697C7070()
{
  result = qword_280324EF8;
  if (!qword_280324EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324EF8);
  }

  return result;
}

unint64_t sub_2697C70C4()
{
  result = qword_280324F00;
  if (!qword_280324F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F00);
  }

  return result;
}

unint64_t sub_2697C7148()
{
  result = qword_280324F10;
  if (!qword_280324F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F10);
  }

  return result;
}

unint64_t sub_2697C719C()
{
  result = qword_280323428;
  if (!qword_280323428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280322878, &qword_2698587A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280323428);
  }

  return result;
}

unint64_t sub_2697C7218()
{
  result = qword_280324F18;
  if (!qword_280324F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UTSData.Channel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2697C7358(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2697C7398(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2697C73F0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2697C7444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_2697C74B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
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

uint64_t sub_2697C74F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2697C758C()
{
  result = qword_280324F20;
  if (!qword_280324F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F20);
  }

  return result;
}

unint64_t sub_2697C75E4()
{
  result = qword_280324F28;
  if (!qword_280324F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F28);
  }

  return result;
}

unint64_t sub_2697C763C()
{
  result = qword_280324F30;
  if (!qword_280324F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F30);
  }

  return result;
}

unint64_t sub_2697C7694()
{
  result = qword_280324F38;
  if (!qword_280324F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F38);
  }

  return result;
}

unint64_t sub_2697C76EC()
{
  result = qword_280324F40;
  if (!qword_280324F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F40);
  }

  return result;
}

unint64_t sub_2697C7744()
{
  result = qword_280324F48;
  if (!qword_280324F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F48);
  }

  return result;
}

unint64_t sub_2697C7798()
{
  result = qword_280324F58;
  if (!qword_280324F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F58);
  }

  return result;
}

uint64_t sub_2697C781C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697C7898()
{
  result = qword_280324F70;
  if (!qword_280324F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F70);
  }

  return result;
}

unint64_t sub_2697C78EC()
{
  result = qword_280324F78;
  if (!qword_280324F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F78);
  }

  return result;
}

unint64_t sub_2697C7978()
{
  result = qword_280324F88;
  if (!qword_280324F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F88);
  }

  return result;
}

unint64_t sub_2697C79CC()
{
  result = qword_280324F98;
  if (!qword_280324F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F98);
  }

  return result;
}

unint64_t sub_2697C7A20()
{
  result = qword_280324FA0;
  if (!qword_280324FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UTSData.Channel.ChannelImageOptions.CodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UTSData.UTSImage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for UTSData.UTSContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2697C7CE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2697C7D34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_2697C7DB0()
{
  result = qword_280324FA8;
  if (!qword_280324FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FA8);
  }

  return result;
}

unint64_t sub_2697C7E08()
{
  result = qword_280324FB0;
  if (!qword_280324FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FB0);
  }

  return result;
}

unint64_t sub_2697C7E60()
{
  result = qword_280324FB8;
  if (!qword_280324FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FB8);
  }

  return result;
}

unint64_t sub_2697C7EB8()
{
  result = qword_280324FC0;
  if (!qword_280324FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FC0);
  }

  return result;
}

unint64_t sub_2697C7F10()
{
  result = qword_280324FC8;
  if (!qword_280324FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FC8);
  }

  return result;
}

unint64_t sub_2697C7F68()
{
  result = qword_280324FD0;
  if (!qword_280324FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FD0);
  }

  return result;
}

unint64_t sub_2697C7FC0()
{
  result = qword_280324FD8;
  if (!qword_280324FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FD8);
  }

  return result;
}

unint64_t sub_2697C8018()
{
  result = qword_280324FE0;
  if (!qword_280324FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FE0);
  }

  return result;
}

unint64_t sub_2697C8070()
{
  result = qword_280324FE8;
  if (!qword_280324FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FE8);
  }

  return result;
}

unint64_t sub_2697C80C4()
{
  result = qword_280324FF8;
  if (!qword_280324FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324FF8);
  }

  return result;
}

uint64_t sub_2697C8118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

_BYTE *sub_2697C8194(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697C8274()
{
  result = qword_280325000;
  if (!qword_280325000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325000);
  }

  return result;
}

unint64_t sub_2697C82CC()
{
  result = qword_280325008;
  if (!qword_280325008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325008);
  }

  return result;
}

unint64_t sub_2697C8324()
{
  result = qword_280325010;
  if (!qword_280325010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_21(uint64_t a1, uint64_t a2)
{

  return sub_269855584();
}

void *OUTLINED_FUNCTION_22_15()
{

  return sub_269855454();
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return sub_269854CD4();
}

uint64_t OUTLINED_FUNCTION_25_15()
{
}

uint64_t sub_2697C8518(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t sub_2697C85A8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325078, &qword_269864300);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v9 = v11 - v8;
  OUTLINED_FUNCTION_56_5(a1, a1[3]);
  sub_2697CC140();
  sub_2698556E4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325088, &qword_269864308);
    sub_2697CC194();
    sub_269855494();
    (*(v6 + 8))(v9, v4);
    v1 = v11[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v1;
}

uint64_t sub_2697C8718(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x49746E65746E6F63 && a2 == 0xEC0000006567616DLL)
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

void sub_2697C87B4()
{
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250C8, &qword_269864318);
  OUTLINED_FUNCTION_8();
  v8 = v7;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_56_5(v3, v3[3]);
  sub_2697CC41C();
  sub_2698556E4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    sub_2697C7A20();
    sub_269855494();
    (*(v8 + 8))(v1, v6);
    __swift_destroy_boxed_opaque_existential_0(v3);
    *v5 = v10;
    *(v5 + 16) = v11;
    *(v5 + 32) = v12;
    *(v5 + 40) = v13;
  }

  OUTLINED_FUNCTION_44();
}

void sub_2697C8918()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_54_3(v2);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  sub_269851C74();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250D8, &qword_269864320);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_12_27();
  _s9MovieLiteVMa(v6);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_56_5(v0, v0[3]);
  v11 = sub_2697CC470();
  OUTLINED_FUNCTION_39_5(&_s9MovieLiteV10CodingKeysON, v12, v11);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_19_15();
    *v10 = sub_269855464();
    v10[1] = v13;
    v10[2] = OUTLINED_FUNCTION_15_23(1);
    v10[3] = v14;
    v10[4] = OUTLINED_FUNCTION_15_23(2);
    v10[5] = v15;
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_4_31();
    sub_2697CC2A4(v16, v17, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v18 = OUTLINED_FUNCTION_25_16();
    v19(v18);
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_3_39();
    sub_2697CC2A4(v20, v21, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v22 = OUTLINED_FUNCTION_29_13();
    v23(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_19_15();
    sub_269855454();
    OUTLINED_FUNCTION_32_10();
    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v24 = OUTLINED_FUNCTION_8_32();
    v25(v24);
    OUTLINED_FUNCTION_7_35(v27);
    sub_2697CC3C4(v10, v26);
    __swift_destroy_boxed_opaque_existential_0(v0);
    sub_2697CC4C4(v10, _s9MovieLiteVMa);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C8E18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107189 && a2 == 0xE300000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449776F6873 && a2 == 0xE600000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x69546E6F73616573 && a2 == 0xEB00000000656C74;
                  if (v13 || (sub_269855584() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_269855584();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_2697C9124(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x44657361656C6572;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x6449776F6873;
      break;
    case 7:
      result = 0x6C746954776F6873;
      break;
    case 8:
      result = 0x69546E6F73616573;
      break;
    case 9:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C9224()
{
  OUTLINED_FUNCTION_43();
  v4 = v3;
  v6 = v5;
  v42 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v41 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  sub_269851C74();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250A0, &qword_269864310);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_27();
  v44 = _s11EpisodeLiteVMa(v14);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v43 = (v17 - v16);
  v18 = v4[4];
  OUTLINED_FUNCTION_56_5(v4, v4[3]);
  sub_2697CC250();
  sub_2698556E4();
  if (v0)
  {
    OUTLINED_FUNCTION_17_19();
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v18)
    {

      v19 = v44;
      if ((v2 & 1) == 0)
      {
LABEL_9:
        if (!v1)
        {
          goto LABEL_11;
        }

LABEL_10:
        v22 = OUTLINED_FUNCTION_42_7(v19[8]);
        v23(v22);
        goto LABEL_11;
      }
    }

    else
    {
      v19 = v44;
      if (!v2)
      {
        goto LABEL_9;
      }
    }

    v20 = OUTLINED_FUNCTION_43_5(v19[7]);
    v21(v20);
    if ((v1 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_14_22();
  *v43 = sub_269855464();
  v43[1] = v24;
  OUTLINED_FUNCTION_1_40(1);
  v43[2] = sub_269855464();
  v43[3] = v25;
  OUTLINED_FUNCTION_1_40(2);
  v43[4] = sub_269855464();
  v43[5] = v26;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_4_31();
  sub_2697CC2A4(v27, v28, MEMORY[0x277CC9280]);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v29 = OUTLINED_FUNCTION_31_12();
  v30(v29);
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_3_39();
  sub_2697CC2A4(v31, v32, MEMORY[0x277CC95A0]);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  (*(v41 + 32))(v43 + v44[8], v11, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
  OUTLINED_FUNCTION_28_12();
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_14_22();
  sub_269855454();
  *(v43 + v44[9]) = v45;
  OUTLINED_FUNCTION_1_40(6);
  v33 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v33, v34, v44[10]);
  OUTLINED_FUNCTION_1_40(7);
  v35 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v35, v36, v44[11]);
  OUTLINED_FUNCTION_1_40(8);
  v37 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v37, v38, v44[12]);
  sub_2697CC370();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v39 = OUTLINED_FUNCTION_49_7();
  v40(v39);
  OUTLINED_FUNCTION_7_35(v46);
  sub_2697CC3C4(v43, v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  sub_2697CC4C4(v43, _s11EpisodeLiteVMa);
LABEL_11:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697C98B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107189 && a2 == 0xE300000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
            if (v10 || (sub_269855584() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6449776F6873 && a2 == 0xE600000000000000;
              if (v11 || (sub_269855584() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065;
                if (v12 || (sub_269855584() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL;
                  if (v13 || (sub_269855584() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_269855584();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_2697C9BB8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x656C746974;
      break;
    case 3:
      result = 7107189;
      break;
    case 4:
      result = 0x44657361656C6572;
      break;
    case 5:
      result = 0x7365726E6567;
      break;
    case 6:
      result = 0x6449776F6873;
      break;
    case 7:
      result = 0x6C746954776F6873;
      break;
    case 8:
      result = 0x754E6E6F73616573;
      break;
    case 9:
      result = 0x736567616D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2697C9CB4()
{
  OUTLINED_FUNCTION_43();
  v4 = v3;
  v6 = v5;
  v38 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v37 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  sub_269851C74();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_52_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250E8, &qword_269864328);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_12_27();
  v40 = _s10SeasonLiteVMa(v14);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_1();
  v39 = (v17 - v16);
  v18 = v4[4];
  OUTLINED_FUNCTION_56_5(v4, v4[3]);
  sub_2697CC51C();
  sub_2698556E4();
  if (v0)
  {
    OUTLINED_FUNCTION_17_19();
    __swift_destroy_boxed_opaque_existential_0(v4);
    if (v18)
    {

      if (v2)
      {
        goto LABEL_9;
      }
    }

    else if (v2)
    {
LABEL_9:

      v19 = v40;
      if ((v1 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    v19 = v40;
    if (!v1)
    {
      goto LABEL_10;
    }

LABEL_6:
    v20 = OUTLINED_FUNCTION_43_5(v19[7]);
    v21(v20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_50_5();
  OUTLINED_FUNCTION_14_22();
  *v39 = sub_269855464();
  v39[1] = v22;
  OUTLINED_FUNCTION_1_40(1);
  v39[2] = sub_269855464();
  v39[3] = v23;
  OUTLINED_FUNCTION_1_40(2);
  v39[4] = sub_269855464();
  v39[5] = v24;
  OUTLINED_FUNCTION_53_2();
  OUTLINED_FUNCTION_4_31();
  sub_2697CC2A4(v25, v26, MEMORY[0x277CC9280]);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v27 = OUTLINED_FUNCTION_31_12();
  v28(v27);
  OUTLINED_FUNCTION_51_8();
  OUTLINED_FUNCTION_3_39();
  sub_2697CC2A4(v29, v30, MEMORY[0x277CC95A0]);
  OUTLINED_FUNCTION_22_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  (*(v37 + 32))(v39 + v40[8], v11, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
  OUTLINED_FUNCTION_28_12();
  OUTLINED_FUNCTION_11_30();
  OUTLINED_FUNCTION_14_22();
  sub_269855454();
  *(v39 + v40[9]) = v41;
  OUTLINED_FUNCTION_1_40(6);
  v31 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v31, v32, v40[10]);
  OUTLINED_FUNCTION_1_40(7);
  v33 = sub_269855464();
  OUTLINED_FUNCTION_33_12(v33, v34, v40[11]);
  OUTLINED_FUNCTION_1_40(8);
  *(v39 + v40[12]) = sub_269855484();
  sub_2697CC370();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_14_22();
  sub_269855494();
  v35 = OUTLINED_FUNCTION_49_7();
  v36(v35);
  OUTLINED_FUNCTION_7_35(v42);
  sub_2697CC3C4(v39, v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  sub_2697CC4C4(v39, _s10SeasonLiteVMa);
LABEL_10:
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697CA324(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_14_21(25705, 0xE200000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (OUTLINED_FUNCTION_14_21(1701869940, 0xE400000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
      if (v7 || (OUTLINED_FUNCTION_14_21(0x656C746974, 0xE500000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107189 && a2 == 0xE300000000000000;
        if (v8 || (OUTLINED_FUNCTION_14_21(7107189, 0xE300000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_40_6();
          v11 = a1 == v9 && a2 == v10;
          if (v11 || (OUTLINED_FUNCTION_14_21(v9, v10) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
            if (v12 || (OUTLINED_FUNCTION_14_21(0x7365726E6567, 0xE600000000000000) & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000)
            {

              return 6;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_14_21(0x736567616D69, 0xE600000000000000);

              if (v14)
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

void sub_2697CA4E0()
{
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_54_3(v2);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  sub_269851C74();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803250F8, &qword_269864330);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_12_27();
  _s8ShowLiteVMa(v6);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = (v9 - v8);
  OUTLINED_FUNCTION_56_5(v0, v0[3]);
  v11 = sub_2697CC570();
  OUTLINED_FUNCTION_39_5(&_s8ShowLiteV10CodingKeysON, v12, v11);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_50_5();
    OUTLINED_FUNCTION_19_15();
    *v10 = sub_269855464();
    v10[1] = v13;
    v10[2] = OUTLINED_FUNCTION_15_23(1);
    v10[3] = v14;
    v10[4] = OUTLINED_FUNCTION_15_23(2);
    v10[5] = v15;
    OUTLINED_FUNCTION_53_2();
    OUTLINED_FUNCTION_4_31();
    sub_2697CC2A4(v16, v17, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v18 = OUTLINED_FUNCTION_25_16();
    v19(v18);
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_3_39();
    sub_2697CC2A4(v20, v21, MEMORY[0x277CC95A0]);
    OUTLINED_FUNCTION_22_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v22 = OUTLINED_FUNCTION_29_13();
    v23(v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280324F60, &qword_269863BE0);
    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_11_30();
    OUTLINED_FUNCTION_19_15();
    sub_269855454();
    OUTLINED_FUNCTION_32_10();
    OUTLINED_FUNCTION_23_16();
    OUTLINED_FUNCTION_19_15();
    sub_269855494();
    v24 = OUTLINED_FUNCTION_8_32();
    v25(v24);
    OUTLINED_FUNCTION_7_35(v27);
    sub_2697CC3C4(v10, v26);
    __swift_destroy_boxed_opaque_existential_0(v0);
    sub_2697CC4C4(v10, _s8ShowLiteVMa);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697CA9E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_2697CAA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C8518(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CAABC(uint64_t a1)
{
  v2 = sub_2697CC140();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAAF8(uint64_t a1)
{
  v2 = sub_2697CC140();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CAB34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697C85A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2697CAB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C8718(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CAB90(uint64_t a1)
{
  v2 = sub_2697CC41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CABCC(uint64_t a1)
{
  v2 = sub_2697CC41C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697CAC08@<D0>(_OWORD *a1@<X8>)
{
  sub_2697C87B4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2697CAC4C(uint64_t a1)
{
  v2 = sub_2697CC470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAC88(uint64_t a1)
{
  v2 = sub_2697CC470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CACE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C8E18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CAD0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2697C911C();
  *a1 = result;
  return result;
}

uint64_t sub_2697CAD34(uint64_t a1)
{
  v2 = sub_2697CC250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAD70(uint64_t a1)
{
  v2 = sub_2697CC250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CADCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697C98B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CADF4(uint64_t a1)
{
  v2 = sub_2697CC51C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAE30(uint64_t a1)
{
  v2 = sub_2697CC51C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CAE84@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_15(a1);
}

uint64_t sub_2697CAEBC(uint64_t a1)
{
  v2 = sub_2697CC570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CAEF8(uint64_t a1)
{
  v2 = sub_2697CC570();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CAF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  sub_269851C74();
  OUTLINED_FUNCTION_4_3();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_2697CAFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_269851D34();
  OUTLINED_FUNCTION_4_3();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_2697CB024@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_26_15(a1);
}

uint64_t sub_2697CB05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CA9E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CB088(uint64_t a1)
{
  v2 = sub_2697CC5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CB0C4(uint64_t a1)
{
  v2 = sub_2697CC5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2697CB100()
{
  OUTLINED_FUNCTION_43();
  v58 = v0;
  v3 = v2;
  v56 = v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325108, &qword_269864338);
  OUTLINED_FUNCTION_8();
  v55 = v5;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_52_4();
  v54 = _s11ContentLiteOMa(0);
  OUTLINED_FUNCTION_4_3();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v59 = v3;
  OUTLINED_FUNCTION_56_5(v3, v3[3]);
  sub_2697CC5C4();
  v22 = v58;
  sub_2698556E4();
  if (!v22)
  {
    v58 = v19;
    v51 = v13;
    v52 = v16;
    v24 = v55;
    v23 = v56;
    v53 = v21;
    v25 = sub_269855464();
    v28 = v25;
    v29 = v26;
    v50 = v1;
    v30 = v25 == 0x6E6F73616553 && v26 == 0xE600000000000000;
    v27 = v59;
    if (v30 || (OUTLINED_FUNCTION_27_13(0x6E6F73616553, 0xE600000000000000) & 1) != 0)
    {

      OUTLINED_FUNCTION_55_5();
      v31 = v58;
      sub_2697C9CB4();
      v32 = OUTLINED_FUNCTION_13_23();
      v33(v32);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_0_47();
      v34 = v31;
      v35 = v53;
      sub_2697CBBAC(v34, v53);
      v36 = v23;
      goto LABEL_22;
    }

    if (v28 == 2003789907 && v29 == 0xE400000000000000)
    {

      v36 = v23;
    }

    else
    {
      v36 = v23;
      if ((OUTLINED_FUNCTION_27_13(2003789907, 0xE400000000000000) & 1) == 0)
      {
        v42 = v28 == 0x65646F73697045 && v29 == 0xE700000000000000;
        if (v42 || (OUTLINED_FUNCTION_27_13(0x65646F73697045, 0xE700000000000000) & 1) != 0)
        {

          OUTLINED_FUNCTION_55_5();
          v43 = v51;
          sub_2697C9224();
          v44 = OUTLINED_FUNCTION_13_23();
          v45(v44);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_47();
          v41 = v43;
        }

        else
        {
          if (v28 == 0x6569766F4DLL && v29 == 0xE500000000000000)
          {
          }

          else
          {
            v47 = OUTLINED_FUNCTION_27_13(0x6569766F4DLL, 0xE500000000000000);

            if ((v47 & 1) == 0)
            {
              (*(v24 + 8))(v50, v57);
              v35 = v53;
              swift_storeEnumTagMultiPayload();
              goto LABEL_22;
            }
          }

          OUTLINED_FUNCTION_55_5();
          sub_2697C8918();
          v48 = OUTLINED_FUNCTION_13_23();
          v49(v48);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_47();
          v41 = v10;
        }

LABEL_21:
        v35 = v53;
        sub_2697CBBAC(v41, v53);
LABEL_22:
        OUTLINED_FUNCTION_0_47();
        sub_2697CBBAC(v35, v36);
        goto LABEL_4;
      }
    }

    OUTLINED_FUNCTION_55_5();
    v38 = v52;
    sub_2697CA4E0();
    v39 = OUTLINED_FUNCTION_13_23();
    v40(v39);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_0_47();
    v41 = v38;
    goto LABEL_21;
  }

  v27 = v3;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v27);
  OUTLINED_FUNCTION_44();
}

uint64_t sub_2697CB57C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  _s11ContentLiteOMa(0);
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v7 = v6 - v5;
  sub_2697CC3C4(v2, v6 - v5);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = _s8ShowLiteVMa(0);
      v10 = &off_287A42FD8;
      goto LABEL_7;
    case 2:
      v9 = _s11EpisodeLiteVMa(0);
      v10 = &off_287A42F18;
      goto LABEL_7;
    case 3:
      v9 = _s9MovieLiteVMa(0);
      v10 = &off_287A42F58;
      goto LABEL_7;
    case 4:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    default:
      v9 = _s10SeasonLiteVMa(0);
      v10 = &off_287A42F98;
LABEL_7:
      v13 = v9;
      v14 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
      sub_2697CBBAC(v7, boxed_opaque_existential_1);
      return sub_26968E5D4(&v12, a1);
  }
}

id sub_2697CB710()
{
  v0 = sub_269851C74();
  OUTLINED_FUNCTION_8();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v6 = v5 - v4;
  v7 = sub_269851D34();
  OUTLINED_FUNCTION_8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v13 = v12 - v11;
  type metadata accessor for Content();
  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = OUTLINED_FUNCTION_47_6();
  v16 = sub_2697C01B0(v15, 0, 0, 0xE000000000000000);
  sub_2697CB57C(&v48);
  if (*(&v49 + 1))
  {
    sub_26968E5D4(&v48, v45);
    OUTLINED_FUNCTION_30_14();
    v17 = OUTLINED_FUNCTION_21_16();
    v19 = v18(v17);
    sub_2696D1DEC(v19, v20, v16);
    OUTLINED_FUNCTION_30_14();
    v21 = OUTLINED_FUNCTION_21_16();
    v23 = v22(v21);
    sub_2696D1DF8(v23, v24, v16);
    OUTLINED_FUNCTION_30_14();
    v25 = OUTLINED_FUNCTION_21_16();
    v27 = v26(v25);
    v28 = v27;
    if (v27)
    {
      if (*(v27 + 16))
      {

        v28 = sub_269854A64();
      }

      else
      {

        v28 = 0;
      }
    }

    [v16 setGenre_];

    OUTLINED_FUNCTION_30_14();
    v29 = OUTLINED_FUNCTION_21_16();
    v30(v29);
    v31 = sub_269851CD4();
    (*(v9 + 8))(v13, v7);
    [v16 setReleaseDate_];

    v32 = v46;
    v33 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v33 + 32))(v32, v33);
    v34 = sub_269851C24();
    (*(v2 + 8))(v6, v0);
    [v16 setDetailsUrl_];

    v35 = v46;
    v36 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v37 = (*(v36 + 16))(v35, v36);
    v39 = sub_2697C3C58(v37, v38);

    [v16 setType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323020, qword_26985AEC0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2698590C0;
    v41 = v46;
    v42 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    (*(v42 + 56))(&v48, v41, v42);
    v43 = sub_2697C367C();
    v52 = v49;
    sub_2696A8078(&v52);
    v51 = v50;
    sub_26969B0C0(&v51, &qword_280322EA0, &unk_2698577C0);
    *(v40 + 32) = v43;
    sub_2697C6BA4(v40, v16);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  else
  {

    sub_26969B0C0(&v48, &qword_280325018, &qword_2698640F0);
    return 0;
  }

  return v16;
}

uint64_t sub_2697CBBAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_6();
  v4(v3);
  OUTLINED_FUNCTION_4_3();
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return a2;
}

void sub_2697CBC88(uint64_t a1)
{
  if (!qword_280325030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324F60, &qword_269863BE0);
    v1 = sub_2698550A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280325030);
    }
  }
}

void sub_2697CBD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_269851C74();
  if (v4 <= 0x3F)
  {
    sub_269851D34();
    if (v5 <= 0x3F)
    {
      sub_2697CBC88(319);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_269851C74();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = sub_269851D34();
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_269851C74();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_269851D34();
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_2697CBFE8(uint64_t a1)
{
  sub_269851C74();
  if (v1 <= 0x3F)
  {
    sub_269851D34();
    if (v2 <= 0x3F)
    {
      sub_2697CBC88(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2697CC0A4(uint64_t a1)
{
  result = _s10SeasonLiteVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s8ShowLiteVMa(319);
    if (v3 <= 0x3F)
    {
      result = _s11EpisodeLiteVMa(319);
      if (v4 <= 0x3F)
      {
        result = _s9MovieLiteVMa(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_2697CC140()
{
  result = qword_280325080;
  if (!qword_280325080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325080);
  }

  return result;
}

unint64_t sub_2697CC194()
{
  result = qword_280325090;
  if (!qword_280325090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325088, &qword_269864308);
    sub_2697CC2A4(&qword_280325098, _s11ContentLiteOMa, &unk_2698641A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325090);
  }

  return result;
}

unint64_t sub_2697CC250()
{
  result = qword_2803250A8;
  if (!qword_2803250A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250A8);
  }

  return result;
}

uint64_t sub_2697CC2A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2697CC2EC()
{
  result = qword_280324F68;
  if (!qword_280324F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280324F60, &qword_269863BE0);
    sub_2697C7898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280324F68);
  }

  return result;
}

unint64_t sub_2697CC370()
{
  result = qword_2803250C0;
  if (!qword_2803250C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250C0);
  }

  return result;
}

uint64_t sub_2697CC3C4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_6();
  v4(v3);
  OUTLINED_FUNCTION_4_3();
  v5 = OUTLINED_FUNCTION_50_0();
  v6(v5);
  return a2;
}

unint64_t sub_2697CC41C()
{
  result = qword_2803250D0;
  if (!qword_2803250D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250D0);
  }

  return result;
}

unint64_t sub_2697CC470()
{
  result = qword_2803250E0;
  if (!qword_2803250E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250E0);
  }

  return result;
}

uint64_t sub_2697CC4C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_3();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2697CC51C()
{
  result = qword_2803250F0;
  if (!qword_2803250F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803250F0);
  }

  return result;
}

unint64_t sub_2697CC570()
{
  result = qword_280325100;
  if (!qword_280325100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325100);
  }

  return result;
}

unint64_t sub_2697CC5C4()
{
  result = qword_280325110;
  if (!qword_280325110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325110);
  }

  return result;
}

_BYTE *sub_2697CC648(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2697CC734(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2697CC810(_BYTE *result, int a2, int a3)
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

unint64_t sub_2697CC8C0()
{
  result = qword_280325118;
  if (!qword_280325118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325118);
  }

  return result;
}

unint64_t sub_2697CC918()
{
  result = qword_280325120;
  if (!qword_280325120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325120);
  }

  return result;
}

unint64_t sub_2697CC970()
{
  result = qword_280325128;
  if (!qword_280325128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325128);
  }

  return result;
}

unint64_t sub_2697CC9C8()
{
  result = qword_280325130;
  if (!qword_280325130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325130);
  }

  return result;
}

unint64_t sub_2697CCA20()
{
  result = qword_280325138;
  if (!qword_280325138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325138);
  }

  return result;
}

unint64_t sub_2697CCA78()
{
  result = qword_280325140;
  if (!qword_280325140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325140);
  }

  return result;
}

unint64_t sub_2697CCAD0()
{
  result = qword_280325148;
  if (!qword_280325148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325148);
  }

  return result;
}

unint64_t sub_2697CCB28()
{
  result = qword_280325150;
  if (!qword_280325150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325150);
  }

  return result;
}

unint64_t sub_2697CCB80()
{
  result = qword_280325158;
  if (!qword_280325158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325158);
  }

  return result;
}

unint64_t sub_2697CCBD8()
{
  result = qword_280325160;
  if (!qword_280325160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325160);
  }

  return result;
}

unint64_t sub_2697CCC30()
{
  result = qword_280325168;
  if (!qword_280325168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325168);
  }

  return result;
}

unint64_t sub_2697CCC88()
{
  result = qword_280325170;
  if (!qword_280325170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325170);
  }

  return result;
}

unint64_t sub_2697CCCE0()
{
  result = qword_280325178;
  if (!qword_280325178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325178);
  }

  return result;
}

unint64_t sub_2697CCD38()
{
  result = qword_280325180;
  if (!qword_280325180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325180);
  }

  return result;
}

unint64_t sub_2697CCD90()
{
  result = qword_280325188;
  if (!qword_280325188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325188);
  }

  return result;
}

unint64_t sub_2697CCDE8()
{
  result = qword_280325190;
  if (!qword_280325190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325190);
  }

  return result;
}

unint64_t sub_2697CCE40()
{
  result = qword_280325198;
  if (!qword_280325198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325198);
  }

  return result;
}

unint64_t sub_2697CCE98()
{
  result = qword_2803251A0;
  if (!qword_2803251A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251A0);
  }

  return result;
}

unint64_t sub_2697CCEF0()
{
  result = qword_2803251A8;
  if (!qword_2803251A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251A8);
  }

  return result;
}

unint64_t sub_2697CCF48()
{
  result = qword_2803251B0;
  if (!qword_2803251B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251B0);
  }

  return result;
}

unint64_t sub_2697CCFA0()
{
  result = qword_2803251B8;
  if (!qword_2803251B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251B8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_7_35@<Q0>(uint64_t a1@<X8>)
{
  *v2 = *(v3 - 128);
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  result = *(v3 - 96);
  *(v2 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_23@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_269855464();
}

uint64_t OUTLINED_FUNCTION_26_15@<X0>(uint64_t a1@<X8>)
{
  v4 = v2 + v1;
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  *a1 = *v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
}

uint64_t OUTLINED_FUNCTION_27_13(uint64_t a1, uint64_t a2)
{

  return sub_269855584();
}

unint64_t OUTLINED_FUNCTION_28_12()
{
  *(v0 - 65) = 5;

  return sub_2697CC2EC();
}

void *OUTLINED_FUNCTION_30_14()
{
  v2 = *(v0 - 176);

  return __swift_project_boxed_opaque_existential_1((v0 - 200), v2);
}

unint64_t OUTLINED_FUNCTION_32_10()
{
  *(v0 + *(v1 + 36)) = *(v2 - 128);
  *(v2 - 65) = 6;

  return sub_2697CC370();
}

uint64_t OUTLINED_FUNCTION_33_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2698556E4();
}

uint64_t OUTLINED_FUNCTION_41_5()
{
}

uint64_t OUTLINED_FUNCTION_54_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 192) = a1;

  return sub_269851D34();
}

uint64_t OUTLINED_FUNCTION_55_5()
{

  return sub_2696A73F8(v0, v1 - 120);
}

uint64_t sub_2697CD454(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2697CD494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2697CD4E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

void *sub_2697CD568(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803251C0, &qword_269864AD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CD798();
  sub_2698556E4();
  if (!v1)
  {
    v7 = sub_269855464();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_2697CD6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CD4E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CD6F4(uint64_t a1)
{
  v2 = sub_2697CD798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CD730(uint64_t a1)
{
  v2 = sub_2697CD798();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2697CD76C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2697CD568(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2697CD798()
{
  result = qword_2803251C8;
  if (!qword_2803251C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251C8);
  }

  return result;
}

_BYTE *_s5GenreV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_2697CD89C()
{
  result = qword_2803251D0;
  if (!qword_2803251D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251D0);
  }

  return result;
}

unint64_t sub_2697CD8F4()
{
  result = qword_2803251D8;
  if (!qword_2803251D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251D8);
  }

  return result;
}

unint64_t sub_2697CD94C()
{
  result = qword_2803251E0;
  if (!qword_2803251E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251E0);
  }

  return result;
}

uint64_t sub_2697CD9A0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2697CD9F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV11LiveServiceV12ImageOptionsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_16SiriVideoIntents7UTSDataV11LiveServiceV12PunchOutUrlsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2697CDAA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656B6F547478656ELL && a2 == 0xE90000000000006ELL)
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

uint64_t sub_2697CDBBC(char a1)
{
  if (!a1)
  {
    return 0x736D657469;
  }

  if (a1 == 1)
  {
    return 0x736C656E6E616863;
  }

  return 0x656B6F547478656ELL;
}

uint64_t sub_2697CDC14(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803251E8, &qword_269864D58);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_2697CED28();
  sub_2698556E4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803251F8, &qword_269864D60);
    sub_2697CEDD0(&qword_280325200, &qword_2803251F8, &qword_269864D60, sub_2697CED7C);
    sub_269855454();
    v4 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325210, &qword_269864D68);
    sub_2697CEDD0(&qword_280325218, &qword_280325210, &qword_269864D68, sub_2697CEE4C);
    sub_269855454();
    sub_269855414();
    v6 = OUTLINED_FUNCTION_1_41();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_2697CDED4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1869049708 && a2 == 0xE400000000000000)
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

uint64_t sub_2697CDF5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325278, &qword_269865070);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CF3A0();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_2697C7A20();
  sub_269855454();
  (*(v7 + 8))(v10, v5);
  v11 = v19;
  v12 = v20;
  v15 = v18;
  v16 = v17;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v14 = v15;
  *a2 = v16;
  *(a2 + 16) = v14;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  return result;
}

uint64_t sub_2697CE0D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 2036427888 && a2 == 0xE400000000000000)
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

void *sub_2697CE160(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325288, &qword_269865078);
  OUTLINED_FUNCTION_8();
  v5 = v4;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CF3F4();
  sub_2698556E4();
  if (!v1)
  {
    v9 = sub_269855414();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_2697CE2AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064;
      if (v7 || (sub_269855584() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736567616D69 && a2 == 0xE600000000000000;
        if (v8 || (sub_269855584() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74756F68636E7570 && a2 == 0xEC000000736C7255;
          if (v9 || (sub_269855584() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_2697CE494(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x496C656E6E616863;
      break;
    case 3:
      result = 0x736567616D69;
      break;
    case 4:
      result = 0x74756F68636E7570;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_2697CE534@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325228, &qword_269864D70);
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697CEEA0();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v6;
  v39 = a2;
  LOBYTE(v44) = 0;
  OUTLINED_FUNCTION_2_30();
  v11 = sub_269855464();
  v40 = v12;
  LOBYTE(v44) = 1;
  OUTLINED_FUNCTION_2_30();
  v31 = sub_269855464();
  v38 = v13;
  LOBYTE(v44) = 2;
  OUTLINED_FUNCTION_2_30();
  v14 = sub_269855464();
  v32 = v15;
  LODWORD(v41) = 1;
  v16 = v14;
  LOBYTE(v43[0]) = 3;
  sub_2697CEF18();
  OUTLINED_FUNCTION_2_30();
  sub_269855454();
  v17 = v46;
  v36 = v45;
  v37 = v47;
  v30 = v48;
  v34 = v44;
  v35 = v49;
  LOBYTE(v43[0]) = 4;
  sub_2697CEF6C();
  OUTLINED_FUNCTION_2_30();
  sub_269855454();
  v33 = v17;
  v28 = v16;
  v29 = v11;
  v19 = v44;
  v18 = v45;
  v60 = 5;
  OUTLINED_FUNCTION_2_30();
  v20 = sub_269855414();
  v21 = *(v10 + 8);
  v22 = v20;
  v41 = v23;
  v21(v9, v42);
  v43[0] = v29;
  v43[1] = v40;
  v24 = v32;
  v43[2] = v31;
  v43[3] = v38;
  v43[4] = v28;
  v43[5] = v32;
  v43[6] = v34;
  v43[7] = v36;
  v43[8] = v17;
  v43[9] = v37;
  v25 = v30;
  v43[10] = v30;
  v43[11] = v35;
  v43[12] = v19;
  v43[13] = v18;
  v26 = v41;
  v43[14] = v22;
  v43[15] = v41;
  sub_2697C0244(v43, &v44);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v44 = v29;
  v45 = v40;
  v46 = v31;
  v47 = v38;
  v48 = v28;
  v49 = v24;
  v50 = v34;
  v51 = v36;
  v52 = v33;
  v53 = v37;
  v54 = v25;
  v55 = v35;
  v56 = v19;
  v57 = v18;
  v58 = v22;
  v59 = v26;
  sub_2697C02A0(&v44);
  return memcpy(v39, v43, 0x80uLL);
}

uint64_t sub_2697CE9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CDAA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CE9CC(uint64_t a1)
{
  v2 = sub_2697CED28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CEA08(uint64_t a1)
{
  v2 = sub_2697CED28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CEA44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697CDC14(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_2697CEA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CDED4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CEAA4(uint64_t a1)
{
  v2 = sub_2697CF3A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CEAE0(uint64_t a1)
{
  v2 = sub_2697CF3A0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697CEB1C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2697CDF5C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_2697CEB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CE0D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2697CEB90(uint64_t a1)
{
  v2 = sub_2697CF3F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CEBCC(uint64_t a1)
{
  v2 = sub_2697CF3F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2697CEC08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2697CE160(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2697CEC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CE2AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CEC64(uint64_t a1)
{
  v2 = sub_2697CEEA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CECA0(uint64_t a1)
{
  v2 = sub_2697CEEA0();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2697CECDC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2697CE534(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x80uLL);
  }

  return result;
}

unint64_t sub_2697CED28()
{
  result = qword_2803251F0;
  if (!qword_2803251F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803251F0);
  }

  return result;
}

unint64_t sub_2697CED7C()
{
  result = qword_280325208;
  if (!qword_280325208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325208);
  }

  return result;
}

uint64_t sub_2697CEDD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697CEE4C()
{
  result = qword_280325220;
  if (!qword_280325220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325220);
  }

  return result;
}

unint64_t sub_2697CEEA0()
{
  result = qword_280325230;
  if (!qword_280325230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325230);
  }

  return result;
}

uint64_t sub_2697CEEF4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_2697CEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return sub_2697C8118(a1, a2, a3, a4);
  }

  return a1;
}

unint64_t sub_2697CEF18()
{
  result = qword_280325238;
  if (!qword_280325238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325238);
  }

  return result;
}

unint64_t sub_2697CEF6C()
{
  result = qword_280325240;
  if (!qword_280325240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325240);
  }

  return result;
}

_BYTE *_s11LiveServiceV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s20LiveServicesResponseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697CF194()
{
  result = qword_280325248;
  if (!qword_280325248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325248);
  }

  return result;
}

unint64_t sub_2697CF1EC()
{
  result = qword_280325250;
  if (!qword_280325250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325250);
  }

  return result;
}

unint64_t sub_2697CF244()
{
  result = qword_280325258;
  if (!qword_280325258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325258);
  }

  return result;
}

unint64_t sub_2697CF29C()
{
  result = qword_280325260;
  if (!qword_280325260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325260);
  }

  return result;
}

unint64_t sub_2697CF2F4()
{
  result = qword_280325268;
  if (!qword_280325268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325268);
  }

  return result;
}

unint64_t sub_2697CF34C()
{
  result = qword_280325270;
  if (!qword_280325270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325270);
  }

  return result;
}

unint64_t sub_2697CF3A0()
{
  result = qword_280325280;
  if (!qword_280325280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325280);
  }

  return result;
}

unint64_t sub_2697CF3F4()
{
  result = qword_280325290;
  if (!qword_280325290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325290);
  }

  return result;
}

_BYTE *sub_2697CF458(_BYTE *result, int a2, int a3)
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

unint64_t sub_2697CF508()
{
  result = qword_280325298;
  if (!qword_280325298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325298);
  }

  return result;
}

unint64_t sub_2697CF560()
{
  result = qword_2803252A0;
  if (!qword_2803252A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252A0);
  }

  return result;
}

unint64_t sub_2697CF5B8()
{
  result = qword_2803252A8;
  if (!qword_2803252A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252A8);
  }

  return result;
}

unint64_t sub_2697CF610()
{
  result = qword_2803252B0;
  if (!qword_2803252B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252B0);
  }

  return result;
}

unint64_t sub_2697CF668()
{
  result = qword_2803252B8;
  if (!qword_2803252B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252B8);
  }

  return result;
}

unint64_t sub_2697CF6C0()
{
  result = qword_2803252C0;
  if (!qword_2803252C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252C0);
  }

  return result;
}

uint64_t _s8PlayableVMa(uint64_t a1)
{
  result = qword_2803252C8;
  if (!qword_2803252C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2697CF7AC(uint64_t a1)
{
  sub_2697154B0();
  if (v1 <= 0x3F)
  {
    sub_269851C74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2697CF838()
{
  v36[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v35[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v35[-v5];
  MEMORY[0x28223BE20](v4);
  v8 = &v35[-v7];
  v9 = objc_opt_self();
  v10 = sub_269851C24();
  v36[0] = 0;
  v11 = [v9 appLinksWithURL:v10 limit:1 error:v36];

  v12 = v36[0];
  if (!v11)
  {
    v21 = v36[0];
    v22 = sub_269851BD4();

    swift_willThrow();
    goto LABEL_9;
  }

  sub_26969329C(0, &qword_2803252F0, 0x277CC1E48);
  v13 = sub_269854CB4();
  v14 = v12;

  if (!sub_26975004C())
  {

    goto LABEL_9;
  }

  sub_269750050();
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26D646120](0, v13);
  }

  else
  {
    v15 = *(v13 + 32);
  }

  v16 = v15;

  v17 = [v16 targetApplicationRecord];

  v18 = sub_2696B6BAC(v17);
  if (!v19)
  {
LABEL_9:
    v23 = [objc_allocWithZone(MEMORY[0x277CC1E80]) init];
    v24 = sub_269851C24();
    v25 = [v23 URLOverrideForURL_];

    if (v25)
    {
      sub_269851C44();

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }

    v27 = sub_269851C74();
    __swift_storeEnumTagSinglePayload(v6, v26, 1, v27);
    sub_26973F894(v6, v8);
    sub_2697238F0(v8, v3);
    v28 = 0;
    if (__swift_getEnumTagSinglePayload(v3, 1, v27) != 1)
    {
      v28 = sub_269851C24();
      (*(*(v27 - 8) + 8))(v3, v27);
    }

    v29 = [v23 applicationsAvailableForOpeningURL_];

    if (v29)
    {
      sub_26969329C(0, &qword_2803252E8, 0x277CC1E60);
      v30 = sub_269854CB4();

      if (!sub_26975004C())
      {

        sub_2697D05D8(v8);
        return 0;
      }

      sub_269750050();
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x26D646120](0, v30);
      }

      else
      {
        v31 = *(v30 + 32);
      }

      v32 = v31;

      v33 = [v32 bundleIdentifier];

      if (v33)
      {
        v20 = sub_269854A94();

        sub_2697D05D8(v8);
        return v20;
      }
    }

    sub_2697D05D8(v8);

    return 0;
  }

  return v18;
}

uint64_t sub_2697CFC7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

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

uint64_t sub_2697CFCD4(char a1)
{
  if (a1)
  {
    return 0x656C626179616C70;
  }

  else
  {
    return 0x736C656E6E616863;
  }
}

uint64_t sub_2697CFD34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697CFC7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2697CFD64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697CFCD4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2697CFD98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697CFC7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697CFDC0(uint64_t a1)
{
  v2 = sub_2697D0834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697CFDFC(uint64_t a1)
{
  v2 = sub_2697D0834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697CFE38(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325310, &qword_269865488);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_2697D0834();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325320, &qword_269865490);
    v5 = sub_2697D0888();
    OUTLINED_FUNCTION_1_42(v5);
    v4 = v10;
    if (!v10)
    {
      v4 = sub_269854A04();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325330, &qword_269865498);
    v6 = sub_2697D0914();
    OUTLINED_FUNCTION_1_42(v6);
    if (!v10)
    {
      _s8PlayableVMa(0);
      sub_269854A04();
    }

    v8 = OUTLINED_FUNCTION_17_18();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

uint64_t sub_2697D0050@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697CFE38(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2697D007C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2697D00C8(char a1)
{
  if (!a1)
  {
    return 0x496C656E6E616863;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 7107189;
}

unint64_t sub_2697D0144@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697D007C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2697D0174@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2697D00C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2697D01A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697D007C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697D01DC(uint64_t a1)
{
  v2 = sub_2697D0584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697D0218(uint64_t a1)
{
  v2 = sub_2697D0584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697D0254@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_269851C74();
  OUTLINED_FUNCTION_8();
  v28 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803252D8, &unk_2698652C8);
  OUTLINED_FUNCTION_8();
  v30 = v10;
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = _s8PlayableVMa(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2697D0584();
  sub_2698556E4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v17 = v15;
    v18 = v30;
    v19 = v31;
    v35 = 1;
    v20 = sub_269855424();
    v27 = v17;
    *(v17 + 16) = v20 & 1;
    v34 = 0;
    v21 = sub_269855414();
    v22 = v27;
    *v27 = v21;
    v22[1] = v23;
    v33 = 2;
    sub_2697D09D0(&qword_2803250B0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_269855494();
    (*(v18 + 8))(v12, v19);
    v24 = *(v13 + 24);
    v25 = v27;
    (*(v28 + 32))(v27 + v24, v8, v4);
    sub_2697BE3D4(v25, v29);
    __swift_destroy_boxed_opaque_existential_0(v32);
    return sub_2697C33C4(v25);
  }
}

unint64_t sub_2697D0584()
{
  result = qword_2803252E0;
  if (!qword_2803252E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252E0);
  }

  return result;
}

uint64_t sub_2697D05D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280323030, &qword_26985BAE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s8PlayableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D0730()
{
  result = qword_2803252F8;
  if (!qword_2803252F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803252F8);
  }

  return result;
}

unint64_t sub_2697D0788()
{
  result = qword_280325300;
  if (!qword_280325300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325300);
  }

  return result;
}

unint64_t sub_2697D07E0()
{
  result = qword_280325308;
  if (!qword_280325308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325308);
  }

  return result;
}

unint64_t sub_2697D0834()
{
  result = qword_280325318;
  if (!qword_280325318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325318);
  }

  return result;
}

unint64_t sub_2697D0888()
{
  result = qword_280325328;
  if (!qword_280325328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325320, &qword_269865490);
    sub_2697CEE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325328);
  }

  return result;
}

unint64_t sub_2697D0914()
{
  result = qword_280325338;
  if (!qword_280325338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280325330, &qword_269865498);
    sub_2697D09D0(&qword_280325340, _s8PlayableVMa, &unk_26986529C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325338);
  }

  return result;
}

uint64_t sub_2697D09D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *_s17SmartPlayResponseV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D0AF8()
{
  result = qword_280325348;
  if (!qword_280325348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325348);
  }

  return result;
}

unint64_t sub_2697D0B50()
{
  result = qword_280325350;
  if (!qword_280325350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325350);
  }

  return result;
}

unint64_t sub_2697D0BA8()
{
  result = qword_280325358;
  if (!qword_280325358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325358);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_42(uint64_t a1)
{

  return sub_269855454();
}

uint64_t sub_2697D0C4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2698553E4();

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

uint64_t sub_2697D0CA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2697D0C4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2697D0CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697D0C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697D0CF8(uint64_t a1)
{
  v2 = sub_2697D1360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697D0D34(uint64_t a1)
{
  v2 = sub_2697D1360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2697D0D70(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325360, &unk_269865650);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_2697D1360();
  sub_2698556E4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325320, &qword_269865490);
    sub_2697D13B4(&qword_280325328, &qword_280325320, &qword_269865490, sub_2697CEE4C);
    sub_269855454();
    v4 = v8;
    if (!v8)
    {
      v4 = sub_269854A04();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280325370, &qword_269865660);
    sub_2697D13B4(&qword_280325378, &qword_280325370, &qword_269865660, sub_2697D1438);
    sub_269855454();
    if (!v8)
    {
      sub_269854A04();
    }

    v6 = OUTLINED_FUNCTION_1_43();
    v7(v6);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v4;
}

uint64_t sub_2697D1024(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000064;
  if (v4 || (sub_269855584() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000026987A7D0 == a2;
    if (v6 || (sub_269855584() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_2697D1144@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253A0, &qword_269865820);
  OUTLINED_FUNCTION_8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2697D1760();
  sub_2698556E4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  OUTLINED_FUNCTION_0_48();
  v11 = sub_269855464();
  v13 = v12;
  v22 = 1;
  OUTLINED_FUNCTION_0_48();
  v20 = sub_269855474();
  v21 = 2;
  OUTLINED_FUNCTION_0_48();
  v14 = sub_269855464();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v17;
  return result;
}

uint64_t sub_2697D1334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2697D0D70(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_2697D1360()
{
  result = qword_280325368;
  if (!qword_280325368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325368);
  }

  return result;
}

uint64_t sub_2697D13B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2697D1438()
{
  result = qword_280325380;
  if (!qword_280325380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325380);
  }

  return result;
}

_BYTE *sub_2697D148C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D1574()
{
  result = qword_280325388;
  if (!qword_280325388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325388);
  }

  return result;
}

uint64_t sub_2697D15C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2697D1024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2697D15F0(uint64_t a1)
{
  v2 = sub_2697D1760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2697D162C(uint64_t a1)
{
  v2 = sub_2697D1760();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2697D1668@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2697D1144(a1, v6);
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

unint64_t sub_2697D16B4()
{
  result = qword_280325390;
  if (!qword_280325390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325390);
  }

  return result;
}

unint64_t sub_2697D170C()
{
  result = qword_280325398;
  if (!qword_280325398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280325398);
  }

  return result;
}

unint64_t sub_2697D1760()
{
  result = qword_2803253A8;
  if (!qword_2803253A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253A8);
  }

  return result;
}

_BYTE *_s19SportsEventPlayableV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2697D1894()
{
  result = qword_2803253B0;
  if (!qword_2803253B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253B0);
  }

  return result;
}

unint64_t sub_2697D18EC()
{
  result = qword_2803253B8;
  if (!qword_2803253B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253B8);
  }

  return result;
}

unint64_t sub_2697D1944()
{
  result = qword_2803253C0;
  if (!qword_2803253C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803253C0);
  }

  return result;
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

uint64_t sub_2697D19D8(uint64_t a1, int a2)
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

uint64_t sub_2697D1A18(uint64_t result, int a2, int a3)
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

unint64_t sub_2697D1A74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253F8, &unk_269865A00);
    v2 = sub_2698553C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_269694FFC(&v22, v24);
    sub_269694FFC(v24, v25);
    sub_269694FFC(v25, &v23);
    result = sub_26973CEF8(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_269694FFC(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_269694FFC(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2697D1CC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803253F0, &qword_2698659F8);
    v2 = sub_2698553C4();
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
    sub_2696B6F94(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_269694FFC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_269694FFC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_269694FFC(v31, v32);
    result = sub_269855194();
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
    result = sub_269694FFC(v32, (*(v2 + 56) + 32 * v18));
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