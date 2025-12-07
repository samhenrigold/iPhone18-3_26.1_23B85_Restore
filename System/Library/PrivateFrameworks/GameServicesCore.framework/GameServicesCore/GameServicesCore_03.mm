uint64_t sub_227B5C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_32_0();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  v15 = *v10;
  OUTLINED_FUNCTION_5_4();
  *v16 = v15;
  v13[66] = v11;
  v13[67] = v9;

  if (v9)
  {

    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_128();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_169_0();
    OUTLINED_FUNCTION_28_2();
    v32 = v21 + *v21;
    v22 = swift_task_alloc();
    v13[68] = v22;
    *v22 = v15;
    v22[1] = sub_227B5C960;
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_128();

    return v27(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32);
  }
}

uint64_t sub_227B5C960()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 552) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5CA6C()
{
  v26 = v0;
  swift_unknownObjectRelease();
  sub_227D4AA58();
  v1 = OUTLINED_FUNCTION_173_0();
  v2(v1);
  sub_227D4CE58();
  v3 = sub_227D4CA98();
  v4 = sub_227D4D428();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = v0[58];
    v21 = v0[59];
    v23 = v0[50];
    v24 = v0[52];
    v22 = v0[44];
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 134218754;
    v7 = sub_227D4A5A8();
    v8 = *(v5 + 8);
    v9 = OUTLINED_FUNCTION_116_0();
    v8(v9);
    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    swift_beginAccess();
    v10 = sub_227D49848();
    v12 = sub_227B1B1A4(v10, v11, &v25);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_227B1B1A4(v21, v20, &v25);
    *(v6 + 32) = 2080;
    v13 = sub_227D49848();
    v15 = sub_227B1B1A4(v13, v14, &v25);

    *(v6 + 34) = v15;
    _os_log_impl(&dword_227B0D000, v3, v4, "Count of deleted instances: %ld for the same id: %s. Calling createOrUpdateInstance on activity instance store for bundleID: %s, id: %s", v6, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_41_1();

    v24(v23, v22);
  }

  else
  {
    v16 = v0[52];
    v8 = *(v0[16] + 8);
    (v8)(v0[17], v0[15]);

    v17 = OUTLINED_FUNCTION_147();
    v16(v17);
  }

  v0[70] = v8;
  v18 = swift_task_alloc();
  v0[71] = v18;
  *v18 = v0;
  v18[1] = sub_227B5CD28;

  return sub_227D22708();
}

uint64_t sub_227B5CD28()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  *v6 = *v1;
  v5[72] = v7;
  v5[73] = v0;

  if (v0)
  {
  }

  else
  {
    v5[74] = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B5CE44()
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v15 = v0[74];
  v1 = v0[63];
  swift_getObjectType();
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_87_1();
  v1(v2);
  v16 = v15 + 16;
  OUTLINED_FUNCTION_36_0();
  v14 = v3 + *v3;
  v4 = swift_task_alloc();
  v0[75] = v4;
  *v4 = v0;
  v4[1] = sub_227B5CF98;
  OUTLINED_FUNCTION_53(v0[40]);
  OUTLINED_FUNCTION_128();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12, v14, v16);
}

uint64_t sub_227B5CF98()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;
  v2[76] = v0;

  v5 = v2[39];
  v4 = v2[40];
  v6 = v2[38];
  if (v0)
  {
    v7 = *(v5 + 8);
    v2[79] = v7;
    v2[80] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = *(v5 + 8);
    v2[77] = v8;
    v2[78] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v4, v6);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B5D124(uint64_t a1)
{
  sub_227D4AA58();
  sub_227D4CE58();
  v3 = sub_227D4CA98();
  v4 = sub_227D4D458();

  v5 = os_log_type_enabled(v3, v4);
  v47 = v1[70];
  v48 = v1[77];
  if (v5)
  {
    v30 = v1[49];
    v32 = v1[52];
    v26 = v1[44];
    OUTLINED_FUNCTION_207();
    v6 = v1[33];
    v40 = v1[34];
    v42 = v1[38];
    v36 = v1[31];
    v38 = v1[32];
    v7 = v1[30];
    v34 = v1[29];
    v8 = v1[21];
    v28 = v1[22];
    v25 = v1[20];
    v23 = v1[15];
    v24 = v1[18];
    OUTLINED_FUNCTION_129();
    v9 = OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_96_1(v9);
    OUTLINED_FUNCTION_129_0(4.8149e-34);
    v10 = OUTLINED_FUNCTION_141();
    v13 = sub_227B1B1A4(v10, v11, v12);

    *(v2 + 4) = v13;
    _os_log_impl(&dword_227B0D000, v3, v4, "Stored activity instance for: %s", v2, 0xCu);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_1();

    v32(v30, v26);
    v47(v24, v23);
    (*(v8 + 8))(v28, v25);
    (*(v7 + 8))(v36, v34);
    (*(v6 + 8))(v40, v38);
    v15 = v42;
    v14 = v44;
  }

  else
  {
    v33 = v1[49];
    v35 = v1[52];
    v29 = v1[44];
    OUTLINED_FUNCTION_207();
    v15 = v1[38];
    v16 = v1[33];
    v41 = v1[32];
    v43 = v1[34];
    v17 = v1[30];
    v37 = v1[29];
    v39 = v1[31];
    v18 = v1[21];
    v31 = v1[22];
    v27 = v1[20];
    v19 = v1[18];
    v20 = v1[15];

    v35(v33, v29);
    v47(v19, v20);
    (*(v18 + 8))(v31, v27);
    (*(v17 + 8))(v39, v37);
    (*(v16 + 8))(v43, v41);
    v14 = v44;
  }

  v48(v14, v15);
  v48(v45, v15);
  v48(v46, v15);

  OUTLINED_FUNCTION_21_1();

  OUTLINED_FUNCTION_15_0();

  return v21();
}

uint64_t sub_227B5D524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_134();
  (*(v26[39] + 8))(v26[43], v26[38]);
  v38 = v26[57];
  OUTLINED_FUNCTION_142_1();
  OUTLINED_FUNCTION_1_7();
  v37 = v27;

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_93_1();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v37, v38, a24, a25, a26);
}

uint64_t sub_227B5D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = v27[13];
  sub_227B1DE58(v27[28], &qword_27D7E6AD8, &unk_227D4ED80);
  sub_227D4AA58();
  sub_227D4CE58();
  v37 = sub_227D4CA98();
  v38 = sub_227D4D418();

  os_log_type_enabled(v37, v38);
  v39 = v27[52];
  v64 = v27[44];
  OUTLINED_FUNCTION_195_0();
  v62 = v41;
  v63 = v40;
  if (v42)
  {
    a16 = v39;
    a18 = v26;
    OUTLINED_FUNCTION_129();
    a17 = v28;
    a15 = v29;
    a23 = OUTLINED_FUNCTION_110_1();
    *v28 = 136315138;
    v43 = OUTLINED_FUNCTION_87_1();
    *(v28 + 4) = sub_227B1B1A4(v43, v44, v45);
    OUTLINED_FUNCTION_215(&dword_227B0D000, v46, v47, "No matching activity definition found for activity parsed from: %s");
    __swift_destroy_boxed_opaque_existential_0(a23);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_56_0();

    v48 = OUTLINED_FUNCTION_203();
    v39(v48);
    (*(v31 + 8))(v29, v63);
    v49 = *(v30 + 8);
    v49(v28, v36);
  }

  else
  {

    v50 = OUTLINED_FUNCTION_203();
    v39(v50);
    (*(v31 + 8))(v29, v63);
    v49 = *(v30 + 8);
    v51 = OUTLINED_FUNCTION_201_0();
    (v49)(v51);
  }

  v49(v26, v36);
  OUTLINED_FUNCTION_1_7();
  v65 = v52;

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_93_1();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v62, v63, v64, v65, a23, a24, a25, a26);
}

uint64_t sub_227B5DFF4()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v3);
  v1[9] = OUTLINED_FUNCTION_30();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  OUTLINED_FUNCTION_5(v4);
  v1[10] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D00, &unk_227D5C4A0);
  OUTLINED_FUNCTION_5(v5);
  v1[11] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v6);
  v1[12] = OUTLINED_FUNCTION_121();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6858, &qword_227D61390);
  OUTLINED_FUNCTION_5(v7);
  v1[16] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D10, &qword_227D4F958);
  OUTLINED_FUNCTION_5(v8);
  v1[17] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v1[18] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B60, &unk_227D4EF50);
  OUTLINED_FUNCTION_5(v11);
  v1[21] = OUTLINED_FUNCTION_121();
  v1[22] = swift_task_alloc();
  v12 = sub_227D498E8();
  v1[23] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_5(v14);
  v1[27] = OUTLINED_FUNCTION_121();
  v1[28] = swift_task_alloc();
  v15 = sub_227D4CAB8();
  v1[29] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[30] = v16;
  v1[31] = OUTLINED_FUNCTION_121();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v17 = sub_227D4A058();
  v1[37] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[38] = v18;
  v1[39] = OUTLINED_FUNCTION_121();
  v1[40] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[41] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[42] = v20;
  v1[43] = OUTLINED_FUNCTION_121();
  v1[44] = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_227B5E3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  *(v28 + 360) = sub_227D49708();
  *(v28 + 368) = v29;
  if (v29)
  {
    *(v28 + 376) = sub_227D496B8();
    *(v28 + 384) = v30;
    if (v30)
    {
      v31 = *(v28 + 320);
      v32 = *(v28 + 304);
      sub_227D4CE58();
      OUTLINED_FUNCTION_150();
      sub_227D4A698();
      *(v28 + 536) = *MEMORY[0x277D0D040];
      v33 = *(v32 + 104);
      *(v28 + 392) = v33;
      *(v28 + 400) = (v32 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v33(v31);
      v34 = swift_task_alloc();
      *(v28 + 408) = v34;
      *v34 = v28;
      v34[1] = sub_227B5E694;
      OUTLINED_FUNCTION_53(*(v28 + 352));
      OUTLINED_FUNCTION_52();

      return sub_227B4EFC0();
    }
  }

  sub_227D4AA58();
  v37 = sub_227D4CA98();
  v38 = sub_227D4D438();
  if (os_log_type_enabled(v37, v38))
  {
    *OUTLINED_FUNCTION_178() = 0;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v39, v40, v41, v42, v43, 2u);
    OUTLINED_FUNCTION_56_0();
  }

  v44 = OUTLINED_FUNCTION_9_2();
  v45(v44);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_94_1();
  v55 = v46;
  v56 = *(v28 + 104);
  v57 = *(v28 + 96);
  v58 = *(v28 + 88);
  v59 = *(v28 + 80);
  v60 = *(v28 + 72);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_52();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v55, v56, v57, v58, v59, v60, a26, a27, a28);
}

uint64_t sub_227B5E694()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[52] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_201_0();
    v8(v7);
    v9 = OUTLINED_FUNCTION_91_0();
  }

  else
  {
    v11 = v3[42];
    v12 = v3[40];
    v13 = v3[37];
    v14 = v3[38];
    v15 = *(v14 + 8);
    v3[53] = v15;
    v3[54] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v12, v13);
    v3[55] = *(v11 + 8);
    v3[56] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9 = OUTLINED_FUNCTION_147();
  }

  v10(v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227B5E82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v30 = v28[45];
  v29 = v28[46];
  v31 = v28[8];
  v32 = v31[80];
  __swift_project_boxed_opaque_existential_1(v31 + 76, v31[79]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_227D4E520;
  *(v33 + 32) = v30;
  *(v33 + 40) = v29;
  v34 = *(v32 + 72);
  sub_227D4CE58();
  OUTLINED_FUNCTION_85_1();
  v35 = (v34)();

  v36 = *(v35 + 16);

  if (v36)
  {

    OUTLINED_FUNCTION_3_6(v28[44]);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_52();

    return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
  }

  else
  {
    sub_227D4AA58();
    sub_227D4CE58();
    v46 = sub_227D4CA98();
    sub_227D4D458();
    OUTLINED_FUNCTION_151_0();
    if (OUTLINED_FUNCTION_107())
    {
      v47 = v28[30];
      OUTLINED_FUNCTION_129();
      v48 = OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_96_1(v48);
      OUTLINED_FUNCTION_129_0(4.8149e-34);
      v49 = OUTLINED_FUNCTION_82();
      *(v34 + 4) = sub_227B1B1A4(v49, v50, v51);
      OUTLINED_FUNCTION_36_2(&dword_227B0D000, v52, v53, "Original game %s not installed, checking for compatible grouped games...");
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_48_1();

      v54 = *(v47 + 8);
    }

    else
    {
      v56 = v28[30];

      v54 = *(v56 + 8);
    }

    v55 = OUTLINED_FUNCTION_9_2();
    v54(v55);
    v28[57] = v54;
    v57 = swift_task_alloc();
    v28[58] = v57;
    *v57 = v28;
    v57[1] = sub_227B5EB3C;
    OUTLINED_FUNCTION_52();

    return sub_227D22470();
  }
}

uint64_t sub_227B5EB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_111();
  v15 = v14;
  v16 = *v13;
  OUTLINED_FUNCTION_5_4();
  *v17 = v16;
  v18 = *v13;
  *v17 = *v13;
  v16[59] = v15;
  v16[60] = v12;

  if (v12)
  {

    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }

  else
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_28_2();
    v35 = v23 + *v23;
    v24 = swift_task_alloc();
    v16[61] = v24;
    *v24 = v18;
    v24[1] = sub_227B5ED74;
    OUTLINED_FUNCTION_33();

    return v32(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, a11, a12);
  }
}

uint64_t sub_227B5ED74()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void (*a20)(uint64_t), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_83_1();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_98_1();
  a34 = v36;
  swift_unknownObjectRelease();
  v39 = OUTLINED_FUNCTION_57_0();
  sub_227B3E0F8(v39, v40, v41, v42);
  v43 = sub_227D49AB8();
  v44 = OUTLINED_FUNCTION_115_1();
  if (__swift_getEnumTagSinglePayload(v44, v45, v43) == 1)
  {
    sub_227B1DE58(v36[27], &qword_27D7E6AD8, &unk_227D4ED80);
    sub_227D4AA58();
    sub_227D4CE58();
    sub_227D4CE58();
    v46 = sub_227D4CA98();
    sub_227D4D458();

    v47 = OUTLINED_FUNCTION_153_0();
    v48 = v36[57];
    v49 = v36[48];
    if (!v47)
    {
      v92 = v36[28];

      v93 = OUTLINED_FUNCTION_91_0();
      v48(v93);
      v94 = &qword_27D7E6AD8;
      v95 = &unk_227D4ED80;
      v96 = v92;
LABEL_18:
      sub_227B1DE58(v96, v94, v95);
      OUTLINED_FUNCTION_3_6(v36[44]);

      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_52();

      return v137(v136, v137, v138, v139, v140, v141, v142, v143, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
    }

    v50 = v36[47];
    OUTLINED_FUNCTION_168_2(v36[32]);
    v51 = OUTLINED_FUNCTION_12_1();
    v52 = swift_slowAlloc();
    OUTLINED_FUNCTION_193_1(v52);
    *v51 = 136315394;
    v53 = sub_227B1B1A4(v50, v49, &a25);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2080;
    v54 = OUTLINED_FUNCTION_150();
    v57 = sub_227B1B1A4(v54, v55, v56);

    *(v51 + 14) = v57;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v58, v59, v60, v61, v62, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (v48)(a23, a22);
LABEL_11:
    v94 = &qword_27D7E6AD8;
    v95 = &unk_227D4ED80;
    v96 = a24;
    goto LABEL_18;
  }

  v63 = v36[8];
  v64 = sub_227D499B8();
  v65 = OUTLINED_FUNCTION_147();
  v66(v65);
  __swift_project_boxed_opaque_existential_1((v63 + 608), *(v63 + 632));
  v67 = OUTLINED_FUNCTION_9_2();
  v69 = v68(v67);
  if (!*(v69 + 16))
  {

    sub_227D4AA58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    v97 = sub_227D4CA98();
    sub_227D4D458();

    v98 = OUTLINED_FUNCTION_160_0();
    v99 = v36[57];
    v100 = v36[48];
    if (!v98)
    {
      v134 = v36[28];

      v135 = OUTLINED_FUNCTION_148();
      v99(v135);
      v94 = &qword_27D7E6AD8;
      v95 = &unk_227D4ED80;
      v96 = v134;
      goto LABEL_18;
    }

    v102 = v36[46];
    v101 = v36[47];
    v103 = v36[45];
    OUTLINED_FUNCTION_168_2(v36[33]);
    v104 = OUTLINED_FUNCTION_14_5();
    v105 = swift_slowAlloc();
    a20 = v99;
    OUTLINED_FUNCTION_96_1(v105);
    OUTLINED_FUNCTION_129_0(4.8152e-34);
    v107 = sub_227B1B1A4(v101, v100, v106);

    *(v104 + 4) = v107;
    *(v104 + 12) = 2080;
    v108 = sub_227B1B1A4(v103, v102, &a25);

    *(v104 + 14) = v108;
    *(v104 + 22) = 2080;
    MEMORY[0x22AAA5F20](v64, MEMORY[0x277D837D0]);

    v109 = OUTLINED_FUNCTION_91_0();
    v112 = sub_227B1B1A4(v109, v110, v111);

    *(v104 + 24) = v112;
    OUTLINED_FUNCTION_74_1();
    _os_log_impl(v113, v114, v115, v116, v117, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_48_1();

    (v99)(a23, a22);
    goto LABEL_11;
  }

  if (!*(v69 + 16))
  {
    __break(1u);
    return result;
  }

  v71 = *(v69 + 32);
  sub_227D4CE58();

  sub_227D4AA58();
  sub_227D4CE58();
  sub_227D4CE58();
  v72 = sub_227D4CA98();
  sub_227D4D458();

  v73 = OUTLINED_FUNCTION_160_0();
  v74 = v36[57];
  v75 = v36[46];
  if (v73)
  {
    v76 = v36[45];
    a24 = v36[35];
    a22 = v36[30];
    a23 = v36[29];
    v77 = v71;
    v78 = OUTLINED_FUNCTION_12_1();
    v79 = swift_slowAlloc();
    OUTLINED_FUNCTION_96_1(v79);
    OUTLINED_FUNCTION_129_0(4.8151e-34);
    v81 = sub_227B1B1A4(v76, v75, v80);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    v82 = OUTLINED_FUNCTION_201_0();
    *(v78 + 14) = sub_227B1B1A4(v82, v83, v84);
    OUTLINED_FUNCTION_74_1();
    _os_log_impl(v85, v86, v87, v88, v89, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_44_3();
    v71 = v77;
    OUTLINED_FUNCTION_5_2();

    v91 = a23;
    v90 = a24;
  }

  else
  {

    v90 = OUTLINED_FUNCTION_148();
  }

  v74(v90, v91);
  v119 = v36[22];
  v118 = v36[23];
  sub_227D4CE58();
  sub_227D49718();
  sub_227D496D8();
  if (__swift_getEnumTagSinglePayload(v119, 1, v118) == 1)
  {
    v120 = v36[22];
    sub_227B1DE58(v36[28], &qword_27D7E6AD8, &unk_227D4ED80);

    v94 = &qword_27D7E6B60;
    v95 = &unk_227D4EF50;
    v96 = v120;
    goto LABEL_18;
  }

  (*(v36[24] + 32))(v36[26], v36[22], v36[23]);
  sub_227D4AA58();
  sub_227D4CE58();
  v121 = sub_227D4CA98();
  sub_227D4D458();

  v122 = OUTLINED_FUNCTION_160_0();
  v123 = v36[57];
  if (v122)
  {
    OUTLINED_FUNCTION_129();
    v124 = OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_96_1(v124);
    OUTLINED_FUNCTION_129_0(4.8149e-34);
    v125 = OUTLINED_FUNCTION_150();
    *(v71 + 4) = sub_227B1B1A4(v125, v126, v127);
    OUTLINED_FUNCTION_74_1();
    _os_log_impl(v128, v129, v130, v131, v132, 0xCu);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_5_2();
  }

  v133 = OUTLINED_FUNCTION_148();
  v123(v133);
  v144 = v36[8];
  sub_227D4A698();
  v156 = OUTLINED_FUNCTION_13_0((v144 + 104)) + 24;
  OUTLINED_FUNCTION_36_0();
  v157 = v145 + *v145;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v36[63] = v146;
  *v146 = v147;
  v146[1] = sub_227B5F7EC;
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_52();

  return v151(v148, v149, v150, v151, v152, v153, v154, v155, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v156, v157, a25, a26, a27, a28);
}

uint64_t sub_227B5F7EC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 512) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B5F8EC()
{
  v1 = *(v0 + 512);
  sub_227D4A668();
  if (v1)
  {
    v2 = *(v0 + 440);
    v3 = *(v0 + 224);

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 = OUTLINED_FUNCTION_57_0();
    v2(v4);
    v5 = OUTLINED_FUNCTION_141();
    v6(v5);
    sub_227B1DE58(v3, &qword_27D7E6AD8, &unk_227D4ED80);
    OUTLINED_FUNCTION_94_1();

    OUTLINED_FUNCTION_18();

    return v7();
  }

  else
  {
    v9 = *(v0 + 392);
    v10 = *(v0 + 536);
    v11 = *(v0 + 312);
    v12 = *(v0 + 296);

    v9(v11, v10, v12);
    v13 = swift_task_alloc();
    *(v0 + 520) = v13;
    *v13 = v0;
    v13[1] = sub_227B5FB88;
    OUTLINED_FUNCTION_53(*(v0 + 344));

    return sub_227B4EFC0();
  }
}

uint64_t sub_227B5FB88()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 528) = v0;

  OUTLINED_FUNCTION_81_1();
  (*(v1 + 424))(*(v1 + 312), *(v1 + 296));
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B5FCDC()
{
  v59 = v0[55];
  v57 = v0[41];
  v58 = v0[43];
  v60 = v0[28];
  v61 = v0[26];
  v50 = v0[25];
  v51 = v0[24];
  v54 = v0[23];
  v55 = v0[20];
  v1 = v0[18];
  v56 = v0[19];
  v52 = v0[21];
  v53 = v1;
  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v47 = v0[9];
  v48 = v0[16];
  v49 = v0[17];
  (*(v56 + 16))(v49);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = sub_227D492A8();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v14);
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
  sub_227D49648();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_227D49AC8();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  sub_227D49B48();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_227D498A8();
  sub_227B1DE58(v47, &qword_27D7E6CE8, &qword_227D4F930);
  sub_227B1DE58(v5, &qword_27D7E6CF0, "ƈ");
  sub_227B1DE58(v6, &qword_27D7E6D00, &unk_227D5C4A0);
  sub_227B1DE58(v4, &qword_27D7E6D08, &qword_227D59460);
  sub_227B1DE58(v3, &qword_27D7E6D08, &qword_227D59460);
  sub_227B1DE58(v2, &qword_27D7E6D08, &qword_227D59460);
  v39 = OUTLINED_FUNCTION_87_1();
  sub_227B1DE58(v39, v40, &qword_227D59460);
  sub_227B1DE58(v48, &qword_27D7E6858, &qword_227D61390);
  sub_227B1DE58(v49, &qword_27D7E6D10, &qword_227D4F958);
  (*(v51 + 16))(v52, v50, v54);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v54);
  sub_227D496E8();
  v44 = *(v51 + 8);
  v44(v50, v54);
  (*(v56 + 8))(v55, v53);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v59(v58, v57);
  v44(v61, v54);
  sub_227B1DE58(v60, &qword_27D7E6AD8, &unk_227D4ED80);
  OUTLINED_FUNCTION_22_6();

  OUTLINED_FUNCTION_15_0();

  return v45();
}

uint64_t sub_227B6019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v38 = *(v28 + 416);
  OUTLINED_FUNCTION_3_6(*(v28 + 352));

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_52();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v38, a26, a27, a28);
}

uint64_t sub_227B602DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v38 = *(v28 + 480);
  OUTLINED_FUNCTION_3_6(*(v28 + 352));

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_52();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v38, a26, a27, a28);
}

uint64_t sub_227B6041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v38 = *(v28 + 496);
  OUTLINED_FUNCTION_3_6(*(v28 + 352));

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_52();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v38, a26, a27, a28);
}

uint64_t sub_227B6055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v29 = *(v28 + 224);
  (*(v28 + 440))(*(v28 + 344), *(v28 + 328));
  v30 = OUTLINED_FUNCTION_9_2();
  v31(v30);
  sub_227B1DE58(v29, &qword_27D7E6AD8, &unk_227D4ED80);
  v41 = *(v28 + 512);
  OUTLINED_FUNCTION_3_6(*(v28 + 352));

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_52();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v41, a26, a27, a28);
}

uint64_t sub_227B606E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_98_1();
  v29 = v28[55];
  v30 = v28[28];
  (*(v28[19] + 8))(v28[20], v28[18]);
  __swift_destroy_boxed_opaque_existential_0(v28 + 2);
  v31 = OUTLINED_FUNCTION_57_0();
  v29(v31);
  v32 = OUTLINED_FUNCTION_148();
  v33(v32);
  sub_227B1DE58(v30, &qword_27D7E6AD8, &unk_227D4ED80);
  v43 = v28[66];
  OUTLINED_FUNCTION_3_6(v28[44]);

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_52();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, v43, a26, a27, a28);
}

uint64_t sub_227B60890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_227D49AB8();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_227B60938()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v1[114] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_5(v4);
  v1[115] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  OUTLINED_FUNCTION_5(v5);
  v1[116] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6B60, &unk_227D4EF50);
  OUTLINED_FUNCTION_5(v6);
  v1[117] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49748();
  v1[118] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[119] = v8;
  v1[120] = OUTLINED_FUNCTION_30();
  v9 = sub_227D498E8();
  v1[121] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[122] = v10;
  v1[123] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49AC8();
  v1[124] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[125] = v12;
  v1[126] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4CAB8();
  v1[127] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[128] = v14;
  v1[129] = OUTLINED_FUNCTION_121();
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x48uLL);
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B60B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_28_1();
  a20 = v22;
  sub_227D4AA58();
  sub_227B64020(v22 + 16, v22 + 88);
  v26 = sub_227D4CA98();
  sub_227D4D428();
  sub_227B6407C(v22 + 16);
  if (OUTLINED_FUNCTION_107())
  {
    v27 = *(v22 + 1064);
    v28 = *(v22 + 1024);
    v29 = *(v22 + 1016);
    OUTLINED_FUNCTION_129();
    v30 = OUTLINED_FUNCTION_110_1();
    a11 = v30;
    *v23 = 136315138;
    memcpy((v22 + 664), (v22 + 16), 0x48uLL);
    sub_227B64020(v22 + 16, v22 + 736);
    v31 = sub_227D4CFF8();
    v33 = sub_227B1B1A4(v31, v32, &a11);

    *(v23 + 4) = v33;
    OUTLINED_FUNCTION_24_0();
    _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_56_0();

    v39 = *(v28 + 8);
    v39(v27, v29);
  }

  else
  {
    v40 = *(v22 + 1024);

    v39 = *(v40 + 8);
    v41 = OUTLINED_FUNCTION_9_2();
    (v39)(v41);
  }

  v94 = v39;
  *(v22 + 1072) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6878, &unk_227D571F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4F750;
  v43 = *(v22 + 56);
  v44 = *(v22 + 64);
  *(v22 + 1080) = v43;
  *(v22 + 1088) = v44;
  *(inited + 32) = v43;
  *(inited + 40) = v44;
  v45 = inited + 40;
  v46 = *(v22 + 72);
  v47 = *(v22 + 80);
  *(v22 + 1096) = v46;
  *(v22 + 1104) = v47;
  *(inited + 48) = v46;
  *(inited + 56) = v47;
  swift_bridgeObjectRetain_n();
  v93 = v44;
  swift_bridgeObjectRetain_n();
  v48 = 0;
  v49 = MEMORY[0x277D84F90];
LABEL_5:
  v50 = (v45 + 16 * v48);
  while (++v48 != 3)
  {
    v51 = v50 + 2;
    v23 = *v50;
    v50 += 2;
    if (v23)
    {
      v52 = *(v51 - 3);
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = OUTLINED_FUNCTION_21();
        v49 = sub_227B25F88(v56, v57, v58, v49);
      }

      v54 = *(v49 + 2);
      v53 = *(v49 + 3);
      if (v54 >= v53 >> 1)
      {
        v49 = sub_227B25F88((v53 > 1), v54 + 1, 1, v49);
      }

      *(v49 + 2) = v54 + 1;
      v55 = &v49[16 * v54];
      *(v55 + 4) = v52;
      *(v55 + 5) = v23;
      goto LABEL_5;
    }
  }

  swift_setDeallocating();
  sub_227B630FC();
  v59 = *(v49 + 2);

  if (v59 == 1)
  {
    OUTLINED_FUNCTION_20_1(*(v22 + 912));
    OUTLINED_FUNCTION_28_2();
    v95 = v60 + *v60;
    v61 = swift_task_alloc();
    *(v22 + 1112) = v61;
    *v61 = v22;
    OUTLINED_FUNCTION_35(v61);
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_16_0();

    return v64(v62, v63, v64, v65, v66, v67, v68, v69, v93, v95, a11, a12, a13, a14);
  }

  else
  {

    sub_227D4AA58();
    sub_227B64020(v22 + 16, v22 + 160);
    v71 = sub_227D4CA98();
    sub_227D4D438();
    sub_227B6407C(v22 + 16);
    v72 = OUTLINED_FUNCTION_107();
    v73 = *(v22 + 1040);
    v74 = *(v22 + 1016);
    if (v72)
    {
      OUTLINED_FUNCTION_129();
      v75 = OUTLINED_FUNCTION_110_1();
      a11 = v75;
      *v23 = 136315138;
      memcpy((v22 + 232), (v22 + 16), 0x48uLL);
      sub_227B64020(v22 + 16, v22 + 304);
      v76 = sub_227D4CFF8();
      v78 = sub_227B1B1A4(v76, v77, &a11);

      *(v23 + 4) = v78;
      OUTLINED_FUNCTION_24_0();
      _os_log_impl(v79, v80, v81, v82, v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_56_0();
    }

    v94(v73, v74);
    OUTLINED_FUNCTION_17_4();
    v96 = v84;

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_16_0();

    return v86(v85, v86, v87, v88, v89, v90, v91, v92, v93, v96, a11, a12, a13, a14);
  }
}

uint64_t sub_227B61064()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1120) = v3;
  *(v1 + 1128) = v4;

  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B61150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_28_1();
  a20 = v22;
  if (v22[141])
  {
    if (v22[136])
    {

      sub_227D4CE58();
      OUTLINED_FUNCTION_150();
      sub_227D4A7B8();
      v25 = MEMORY[0x277D0CB90];
LABEL_12:
      v46 = v22[114];
      (*(v22[125] + 104))(v22[126], *v25, v22[124]);
      v47 = v22[3];
      v22[142] = v22[2];
      v22[143] = v47;
      v48 = v46[17];
      __swift_project_boxed_opaque_existential_1(v46 + 13, v46[16]);
      v49 = *(v48 + 24);
      sub_227D4CE58();
      v73 = v49 + *v49;
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v22[144] = v50;
      *v50 = v51;
      v50[1] = sub_227B61574;
      OUTLINED_FUNCTION_85_1();
      OUTLINED_FUNCTION_16_0();

      return v55(v52, v53, v54, v55, v56, v57, v58, v59, v73, v48 + 24, a11, a12, a13, a14);
    }

    if (v22[138])
    {
      sub_227D4CE58();
      OUTLINED_FUNCTION_58();
      sub_227D4A858();
      v25 = MEMORY[0x277D0CB98];
      goto LABEL_12;
    }

    sub_227D4AA58();
    sub_227B64020((v22 + 2), (v22 + 47));
    v60 = sub_227D4CA98();
    sub_227D4D438();
    sub_227B6407C((v22 + 2));
    v61 = OUTLINED_FUNCTION_107();
    v62 = v22[134];
    if (v61)
    {
      OUTLINED_FUNCTION_129();
      v63 = OUTLINED_FUNCTION_110_1();
      a11 = v63;
      *v62 = 136315138;
      memcpy(v22 + 56, v22 + 2, 0x48uLL);
      sub_227B64020((v22 + 2), (v22 + 65));
      v64 = sub_227D4CFF8();
      v66 = sub_227B1B1A4(v64, v65, &a11);

      *(v62 + 4) = v66;
      OUTLINED_FUNCTION_24_0();
      _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_56_0();
    }

    v72 = OUTLINED_FUNCTION_9_2();
    (v62)(v72);
  }

  else
  {

    sub_227D4AA58();
    v26 = sub_227D4CA98();
    v27 = sub_227D4D438();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v22[134];
    if (v28)
    {
      *OUTLINED_FUNCTION_178() = 0;
      OUTLINED_FUNCTION_24_0();
      _os_log_impl(v30, v31, v32, v33, v34, 2u);
      OUTLINED_FUNCTION_56_0();
    }

    v35 = OUTLINED_FUNCTION_9_2();
    v29(v35);
  }

  OUTLINED_FUNCTION_17_4();
  v74 = v36;

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_16_0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, v74, a11, a12, a13, a14);
}

uint64_t sub_227B61574()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 1160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B61680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v58 = v22[145];
  v23 = v22[126];
  v22[146] = v22[5];
  v22[147] = v22[6];
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D49868();
  if (v58)
  {

    __swift_destroy_boxed_opaque_existential_0(v22 + 109);
    v24 = OUTLINED_FUNCTION_173();
    v25(v24);
    OUTLINED_FUNCTION_29_1();
    v57 = v22[116];
    v59 = v22[115];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_65();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, v23, a10, a11, a12, a13, a14, a15, a16, v57, v59, a19, a20, a21, a22);
  }

  else
  {
    v35 = v22[125];
    v55 = v22[124];
    v56 = v22[126];
    v54 = v22[123];
    v36 = v22[122];
    v37 = v22[121];
    v38 = v22[117];
    v39 = v22[116];
    v60 = v22[115];
    __swift_destroy_boxed_opaque_existential_0(v22 + 109);
    sub_227D49738();
    sub_227D49718();
    (*(v36 + 16))(v38, v54, v37);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v37);
    sub_227D496E8();
    sub_227D496C8();
    (*(v35 + 16))(v39, v56, v55);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v55);
    sub_227D496A8();
    sub_227D49728();
    sub_227D496F8();
    v46 = *MEMORY[0x277D0CD08];
    v47 = sub_227D49B48();
    OUTLINED_FUNCTION_62_0();
    (*(v48 + 104))(v60, v46, v47);
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
    v52 = swift_task_alloc();
    v22[148] = v52;
    *v52 = v22;
    v52[1] = sub_227B619C4;
    OUTLINED_FUNCTION_53(v22[120]);
    OUTLINED_FUNCTION_65();

    return sub_227B5B2FC();
  }
}

uint64_t sub_227B619C4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1192) = v0;

  OUTLINED_FUNCTION_81_1();
  sub_227B1DE58(*(v4 + 920), &qword_27D7E6CE8, &qword_227D4F930);
  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B61AEC()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_20_1(*(v0 + 912));
  OUTLINED_FUNCTION_36_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 1200) = v2;
  *v2 = v0;
  v2[1] = sub_227B61BF4;
  v3 = OUTLINED_FUNCTION_35_1(*(v0 + 960));

  return v5(v3);
}

uint64_t sub_227B61BF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 1208) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B61CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_97_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_91_0();
  v15(v14);
  v16 = OUTLINED_FUNCTION_57_0();
  v17(v16);
  OUTLINED_FUNCTION_17_4();
  v28 = v18;

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_227B61DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  (*(v14[125] + 8))(v14[126], v14[124]);
  OUTLINED_FUNCTION_29_1();
  v25 = v14[115];
  v26 = v15;

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v25, v26, a12, a13, a14);
}

uint64_t sub_227B61EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  sub_227D4AA58();
  sub_227B64020(v14 + 16, v14 + 592);
  v15 = sub_227D4CA98();
  sub_227D4D438();
  sub_227B6407C(v14 + 16);
  v16 = OUTLINED_FUNCTION_153_0();
  v17 = *(v14 + 1192);
  if (v16)
  {
    a9 = *(v14 + 1032);
    v38 = *(v14 + 1072);
    v18 = *(v14 + 1016);
    v19 = OUTLINED_FUNCTION_129();
    a11 = OUTLINED_FUNCTION_14_5();
    *v19 = 136315138;
    v20 = OUTLINED_FUNCTION_200();
    *(v19 + 4) = sub_227B1B1A4(v20, v21, v22);
    OUTLINED_FUNCTION_137_1(&dword_227B0D000, v23, v24, "Failed to store an activity for game: %s");
    OUTLINED_FUNCTION_47_1();
    OUTLINED_FUNCTION_44_3();

    v38(a9, v18);
  }

  else
  {
    v25 = *(v14 + 1072);

    v26 = OUTLINED_FUNCTION_91_0();
    v25(v26);
  }

  OUTLINED_FUNCTION_20_1(*(v14 + 912));
  OUTLINED_FUNCTION_28_2();
  v39 = v27 + *v27;
  v28 = swift_task_alloc();
  *(v14 + 1200) = v28;
  *v28 = v14;
  v28[1] = sub_227B61BF4;
  OUTLINED_FUNCTION_35_1(*(v14 + 960));
  OUTLINED_FUNCTION_16_0();

  return v32(v29, v30, v31, v32, v33, v34, v35, v36, a9, v39, a11, a12, a13, a14);
}

uint64_t sub_227B620B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = OUTLINED_FUNCTION_97_1();
  v16(v15);
  v17 = OUTLINED_FUNCTION_91_0();
  v18(v17);
  v19 = OUTLINED_FUNCTION_57_0();
  v20(v19);
  OUTLINED_FUNCTION_29_1();
  v31 = *(v14 + 920);
  v32 = v21;

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, a12, a13, a14);
}

uint64_t sub_227B621B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_155_1(v1, v2);
  v3 = sub_227D492A8();
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v0[7] = OUTLINED_FUNCTION_121();
  v0[8] = swift_task_alloc();
  v5 = sub_227D498E8();
  v0[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[10] = v6;
  v0[11] = OUTLINED_FUNCTION_121();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CC8, &qword_227D5B810);
  OUTLINED_FUNCTION_5(v7);
  v0[15] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[16] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[17] = v9;
  v0[18] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4CAB8();
  v0[19] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[20] = v11;
  v0[21] = OUTLINED_FUNCTION_121();
  v0[22] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_227B623AC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  sub_227D4AA58();
  sub_227D4CE58();
  v2 = sub_227D4CA98();
  sub_227D4D428();
  OUTLINED_FUNCTION_151_0();
  v3 = OUTLINED_FUNCTION_107();
  v4 = v0[20];
  if (v3)
  {
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_55_3();
    *v1 = 136315138;
    v5 = OUTLINED_FUNCTION_82();
    *(v1 + 4) = sub_227B1B1A4(v5, v6, v7);
    OUTLINED_FUNCTION_36_2(&dword_227B0D000, v8, v9, "Received a notification that a pending instance check is needed for: %s");
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_48_1();
  }

  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_9_2();
  v10(v11);
  v0[23] = v10;
  sub_227D4CE58();
  OUTLINED_FUNCTION_150();
  sub_227D4A698();
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_227B62500;
  OUTLINED_FUNCTION_135_0();

  return sub_227D22708();
}

uint64_t sub_227B62500()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;
  v7[25] = v0;

  if (!v0)
  {
    v7[26] = v5;
    v7[27] = v3;
  }

  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B6260C()
{
  OUTLINED_FUNCTION_119();
  v1 = v0[27];
  v2 = v0[16];
  v0[28] = swift_getObjectType();
  OUTLINED_FUNCTION_149();
  v3();
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD0, &qword_227D4F8E0);
  v7 = sub_227D49658();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  v0[29] = v11;
  *(v11 + 16) = xmmword_227D4E520;
  v12 = *MEMORY[0x277D0CD08];
  sub_227D49B48();
  OUTLINED_FUNCTION_62_0();
  (*(v13 + 104))(v11 + v10, v12);
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277D0CA80], v7);
  v0[30] = *(v1 + 24);
  v0[31] = (v1 + 24) & 0xFFFFFFFFFFFFLL | 0x7A46000000000000;
  sub_227D4D278();
  OUTLINED_FUNCTION_185();
  v14 = OUTLINED_FUNCTION_157();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227B627CC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[25];
  v2 = v0[15];
  v3 = OUTLINED_FUNCTION_173_0();
  v0[32] = v4(v3);
  v0[33] = v1;
  sub_227B1DE58(v2, &qword_27D7E6CC8, &qword_227D5B810);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B62894()
{
  v1 = v0[32];
  v41 = *(v1 + 16);
  if (!v41)
  {

    sub_227D4AA58();
    sub_227D4CE58();
    v22 = sub_227D4CA98();
    v23 = sub_227D4D418();

    v24 = OUTLINED_FUNCTION_160_0();
    v25 = v0[23];
    v26 = v0[21];
    v27 = v0[18];
    v28 = v0[19];
    v30 = v0[16];
    v29 = v0[17];
    if (v24)
    {
      v40 = v0[23];
      v38 = v0[21];
      v31 = OUTLINED_FUNCTION_129();
      v42 = OUTLINED_FUNCTION_14_5();
      *v31 = 136315138;
      v32 = OUTLINED_FUNCTION_114();
      *(v31 + 4) = sub_227B1B1A4(v32, v33, v34);
      _os_log_impl(&dword_227B0D000, v22, v23, "No pending activity instances found for: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_79_2();

      v40(v38, v28);
    }

    else
    {

      v25(v26, v28);
    }

    (*(v29 + 8))(v27, v30);
    OUTLINED_FUNCTION_159_0();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_90();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[10];
  v3 = v0[6];
  OUTLINED_FUNCTION_19();
  v39 = v1 + v4;
  v37 = *(v2 + 16);
  result = v37();
  v6 = (v3 + 8);
  for (i = 1; ; ++i)
  {
    if (v41 == i)
    {
      v16 = v0[4];

      v17 = *(v2 + 32);
      OUTLINED_FUNCTION_149();
      v17();
      v18 = OUTLINED_FUNCTION_174();
      (v17)(v18);
      OUTLINED_FUNCTION_13_0((v16 + 608));
      OUTLINED_FUNCTION_36_0();
      v19 = swift_task_alloc();
      v0[34] = v19;
      *v19 = v0;
      v19[1] = sub_227B62CE4;
      OUTLINED_FUNCTION_35_1(v0[14]);
      OUTLINED_FUNCTION_90();

      __asm { BRAA            X3, X16 }
    }

    if (i >= *(v1 + 16))
    {
      break;
    }

    (v37)(v0[11], v39 + *(v2 + 72) * i, v0[9]);
    sub_227D49788();
    sub_227D49788();
    OUTLINED_FUNCTION_141();
    v8 = sub_227D49218();
    v9 = *v6;
    v10 = OUTLINED_FUNCTION_173();
    v9(v10);
    v11 = OUTLINED_FUNCTION_149_0();
    v9(v11);
    if (v8)
    {
      v12 = OUTLINED_FUNCTION_174();
      v13(v12);
      OUTLINED_FUNCTION_191_0();
      v14 = OUTLINED_FUNCTION_116_0();
      result = v15(v14);
    }

    else
    {
      result = (*(v2 + 8))(v0[11], v0[9]);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227B62CE4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B62DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_166_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_57_0();
  v15(v14);
  OUTLINED_FUNCTION_159_0();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_227B62EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  (*(v12[17] + 8))(v12[18], v12[16]);
  OUTLINED_FUNCTION_66_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_227B62F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  (*(v12[17] + 8))(v12[18], v12[16]);
  OUTLINED_FUNCTION_66_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_227B6302C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_166_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_57_0();
  v15(v14);
  OUTLINED_FUNCTION_66_2();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_227B630FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6880, &qword_227D5C4B0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_227B6315C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_227B6344C();
    *v0 = v3;
  }
}

void sub_227B631C8(uint64_t result)
{
  if (result + 1 > *(*v1 + 24) >> 1)
  {
    sub_227B6344C();
    *v1 = v2;
  }
}

char *sub_227B63228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D40, &unk_227D5E110);
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

uint64_t sub_227B63328(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  sub_227B63754(v9, a2, &qword_27D7E6D38, &unk_227D4F980, MEMORY[0x277D0CD78]);
  v11 = v10;
  v12 = *(sub_227D49B58() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_227B63844(a4 + v13, v9, v11 + v13, MEMORY[0x277D0CD78]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_227B6344C()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    OUTLINED_FUNCTION_154();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  sub_227B63664(v11, v8, v5, v6);
  v13 = v12;
  v14 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_19();
  if (v3)
  {
    sub_227B638F8(v0 + v16, v11, v13 + v16, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_227B63540(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  sub_227B63754(v9, a2, &qword_27D7E6D18, &qword_227D4F960, MEMORY[0x277D0CB78]);
  v11 = v10;
  v12 = *(sub_227D49AB8() - 8);
  if (v6)
  {
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_227B63844(a4 + v13, v9, v11 + v13, MEMORY[0x277D0CB78]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

void sub_227B63664(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = OUTLINED_FUNCTION_87_1();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_10_0(v8);
    v10 = *(v9 + 72);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_187_0();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        v11[2] = a1;
        v11[3] = 2 * (v12 / v10);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_227B63754(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = a5(0);
    OUTLINED_FUNCTION_10_0(v8);
    v10 = *(v9 + 72);
    v11 = swift_allocObject();
    _swift_stdlib_malloc_size(v11);
    if (v10)
    {
      OUTLINED_FUNCTION_187_0();
      v13 = v13 && v10 == -1;
      if (!v13)
      {
        v11[2] = a1;
        v11[3] = 2 * (v12 / v10);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_227B63844(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_186_1();
  if (v8 && (a4(0), OUTLINED_FUNCTION_62_0(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_49();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_227B638F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_186_1();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_62_0(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_49();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_227B63B9C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_10_0(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_158();
  _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_187_0();
  v22 = v22 && v19 == -1;
  if (v22)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * (v21 / v19);
LABEL_18:
  a7(0);
  OUTLINED_FUNCTION_19();
  if (a1)
  {
    sub_227B63844(a4 + v23, v15, v20 + v23, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }
}

void sub_227B63D1C()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    OUTLINED_FUNCTION_154();
    if (v9 != v10)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v8 = v4;
  }

  v11 = *(v0 + 16);
  if (v8 <= v11)
  {
    v12 = *(v0 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (!v12)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v13 = OUTLINED_FUNCTION_87_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_10_0(v15);
  v17 = *(v16 + 72);
  v18 = OUTLINED_FUNCTION_158();
  _swift_stdlib_malloc_size(v18);
  if (!v17)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_187_0();
  v20 = v20 && v17 == -1;
  if (v20)
  {
    goto LABEL_23;
  }

  v18[2] = v11;
  v18[3] = 2 * (v19 / v17);
LABEL_18:
  v21 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_19();
  if (v3)
  {
    sub_227B638F8(v0 + v23, v11, v18 + v23, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }
}

uint64_t sub_227B63E8C(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227B65A68();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_227B640D0(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_227B63F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227B63FC4(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterServerNotification.GameActivityPartyURLReceivedOrOpened(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B640D0(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_227D4DA28();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
        v6 = sub_227D4D218();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227B645B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_227B64218(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_227B64218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v44 - v15;
  result = MEMORY[0x28223BE20](v14);
  v60 = &v44 - v17;
  v46 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v11 + 16);
    v19 = v11 + 16;
    v21 = *(v19 + 56);
    v56 = v20;
    v57 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v51 = -v21;
    v52 = (v19 + 16);
    v23 = a1 - a3;
    v53 = v18;
    v54 = v19;
    v45 = v21;
    v24 = v18 + v21 * a3;
    while (2)
    {
      v49 = v22;
      v50 = a3;
      v47 = v24;
      v48 = v23;
      v25 = v23;
      v26 = v58;
      while (1)
      {
        v27 = v56;
        v56(v60, v24, v10);
        v27(v26, v22, v10);
        v28 = sub_227D4A708();
        if (v5)
        {
          v43 = *v57;
          (*v57)(v58, v10);
          return (v43)(v60, v10);
        }

        v30 = v29;
        v5 = 0;
        if (v28 == sub_227D4A708() && v30 == v31)
        {

          v42 = *v57;
          (*v57)(v58, v10);
          result = (v42)(v60, v10);
          goto LABEL_16;
        }

        v33 = v25;
        v59 = 0;
        v34 = sub_227D4DA78();

        v26 = v58;
        v35 = *v57;
        (*v57)(v58, v10);
        v36 = v10;
        result = (v35)(v60, v10);
        if ((v34 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          __break(1u);
          return result;
        }

        v37 = v33;
        v38 = *v52;
        v39 = v55;
        v40 = v36;
        (*v52)(v55, v24, v36);
        swift_arrayInitWithTakeFrontToBack();
        result = v38(v22, v39, v36);
        v22 += v51;
        v24 += v51;
        v41 = __CFADD__(v37, 1);
        v25 = v37 + 1;
        v5 = v59;
        v10 = v40;
        if (v41)
        {
          goto LABEL_16;
        }
      }

      v5 = v59;
LABEL_16:
      a3 = v50 + 1;
      v22 = &v49[v45];
      v23 = v48 - 1;
      v24 = v47 + v45;
      if (v50 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

unint64_t sub_227B645B8(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v153 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = MEMORY[0x28223BE20](v7);
  v156 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v155 = &v149 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v159 = &v149 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v170 = &v149 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v149 - v19;
  result = MEMORY[0x28223BE20](v18);
  v154 = &v149 - v25;
  v173 = a3;
  v26 = a3[1];
  v171 = v22;
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_117:
    v4 = *v153;
    if (*v153)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_154;
      }

      goto LABEL_119;
    }

    goto LABEL_163;
  }

  v152 = v20;
  v169 = v24;
  v157 = v23;
  v149 = a4;
  v27 = 0;
  v164 = v22 + 16;
  v165 = (v22 + 8);
  v158 = (v22 + 32);
  v28 = MEMORY[0x277D84F90];
  v172 = v7;
  while (1)
  {
    v29 = v27++;
    if (v27 < v26)
    {
      v163 = v26;
      v30 = *v173;
      v31 = *(v22 + 72);
      v32 = *(v22 + 16);
      v32(v154, &(*v173)[v31 * v27], v7);
      v151 = v29;
      v166 = v31;
      v168 = v30;
      v162 = v32;
      v32(v152, &v30[v31 * v29], v7);
      v33 = v174;
      v34 = sub_227D4A708();
      v174 = v33;
      if (v33 || ((v36 = v34, v37 = v35, v38 = sub_227D4A708(), v174 = 0, v36 == v38) ? (v40 = v37 == v39) : (v40 = 0), v40 ? (LODWORD(v161) = 0) : (LODWORD(v161) = sub_227D4DA78()), , , v174))
      {
        v148 = *v165;
        (*v165)(v152, v7);
        (v148)(v154, v7);
      }

      v150 = v28;
      v41 = *v165;
      (*v165)(v152, v7);
      v160 = v41;
      result = (v41)(v154, v7);
      v42 = (v151 + 2);
      v43 = v166 * (v151 + 2);
      v44 = &v168[v43];
      v45 = (v166 * v27);
      v46 = &v168[v166 * v27];
      do
      {
        v4 = v42;
        v47 = v27;
        v48 = v45;
        v49 = v43;
        if (v42 >= v163)
        {
          break;
        }

        v167 = v27;
        v168 = v45;
        v50 = v43;
        v51 = v172;
        v52 = v162;
        (v162)(v170, v44, v172);
        (v52)(v169, v46, v51);
        v53 = v174;
        v54 = sub_227D4A708();
        if (v53)
        {
          v174 = v53;
          v144 = v172;
          v145 = v160;
          (v160)(v169, v172);
          (v145)(v170, v144);
        }

        v56 = v54;
        v57 = v55;
        v58 = sub_227D4A708();
        v174 = 0;
        v60 = v56 == v58 && v57 == v59;
        v61 = v60 ? 0 : sub_227D4DA78();
        v49 = v50;

        v62 = v172;
        v63 = v160;
        (v160)(v169, v172);
        result = (v63)(v170, v62);
        v64 = v161 ^ v61;
        v42 = v4 + 1;
        v47 = v167;
        v44 += v166;
        v46 += v166;
        v27 = v167 + 1;
        v48 = v168;
        v45 = &v168[v166];
        v43 = v49 + v166;
      }

      while ((v64 & 1) == 0);
      if (v161)
      {
        v29 = v151;
        v22 = v171;
        if (v4 < v151)
        {
          goto LABEL_157;
        }

        if (v151 >= v4)
        {
          v27 = v4;
          v28 = v150;
          v7 = v172;
          goto LABEL_40;
        }

        v65 = (v151 * v166);
        do
        {
          if (v29 != v47)
          {
            v66 = *v173;
            if (!*v173)
            {
              goto LABEL_161;
            }

            v67 = v172;
            v168 = *v158;
            (v168)(v156, &v65[v66], v172);
            v68 = v65 < v48 || &v65[v66] >= &v66[v49];
            if (v68)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v65 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v168)(&v48[v66], v156, v67);
          }

          ++v29;
          v48 -= v166;
          v49 -= v166;
          v65 += v166;
        }

        while (v29 < v47--);
      }

      v27 = v4;
      v22 = v171;
      v7 = v172;
      v28 = v150;
      v29 = v151;
    }

LABEL_40:
    v70 = v173[1];
    if (v27 >= v70)
    {
      goto LABEL_49;
    }

    if (__OFSUB__(v27, v29))
    {
      goto LABEL_153;
    }

    if (v27 - v29 >= v149)
    {
      goto LABEL_49;
    }

    if (__OFADD__(v29, v149))
    {
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      return result;
    }

    if (&v29[v149] >= v70)
    {
      v71 = v173[1];
    }

    else
    {
      v71 = &v29[v149];
    }

    if (v71 < v29)
    {
      goto LABEL_156;
    }

    if (v27 != v71)
    {
      v150 = v28;
      v115 = *v173;
      v116 = *(v22 + 72);
      v117 = *(v22 + 16);
      v118 = &(*v173)[v116 * (v27 - 1)];
      v4 = -v116;
      v151 = v29;
      v119 = v29 - v27;
      v168 = v115;
      v160 = v71;
      v161 = v116;
      v120 = &v115[v27 * v116];
      do
      {
        v166 = v118;
        v167 = v27;
        v162 = v120;
        v163 = v119;
        while (1)
        {
          v117(v159, v120, v7);
          v117(v157, v118, v7);
          v121 = v174;
          v122 = sub_227D4A708();
          v174 = v121;
          if (v121)
          {
            v146 = *v165;
            v147 = v172;
            (*v165)(v157, v172);
            (v146)(v159, v147);
          }

          v124 = v122;
          v125 = v123;
          v126 = sub_227D4A708();
          v174 = 0;
          if (v124 == v126 && v125 == v127)
          {

            v134 = *v165;
            v7 = v172;
            (*v165)(v157, v172);
            (v134)(v159, v7);
            goto LABEL_114;
          }

          v129 = sub_227D4DA78();

          v130 = *v165;
          v131 = v172;
          (*v165)(v157, v172);
          result = (v130)(v159, v131);
          if ((v129 & 1) == 0)
          {
            break;
          }

          if (!v168)
          {
            goto LABEL_160;
          }

          v132 = *v158;
          v133 = v155;
          v7 = v172;
          (*v158)(v155, v120, v172);
          swift_arrayInitWithTakeFrontToBack();
          (v132)(v118, v133, v7);
          v118 += v4;
          v120 = &v4[v120];
          v68 = __CFADD__(v119++, 1);
          if (v68)
          {
            goto LABEL_114;
          }
        }

        v7 = v172;
LABEL_114:
        v27 = v167 + 1;
        v118 = v166 + v161;
        v119 = v163 - 1;
        v120 = &v162[v161];
      }

      while (v167 + 1 != v160);
      v27 = v160;
      v28 = v150;
      v29 = v151;
    }

LABEL_49:
    if (v27 < v29)
    {
      goto LABEL_152;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v73 = *(v28 + 16);
    v72 = *(v28 + 24);
    v74 = v73 + 1;
    v4 = v29;
    if (v73 >= v72 >> 1)
    {
      result = sub_227B63228((v72 > 1), v73 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v74;
    v75 = v28 + 32;
    v76 = (v28 + 32 + 16 * v73);
    *v76 = v4;
    v76[1] = v27;
    v168 = *v153;
    if (!v168)
    {
      goto LABEL_162;
    }

    if (v73)
    {
      break;
    }

LABEL_98:
    v7 = v172;
    v26 = v173[1];
    v22 = v171;
    if (v27 >= v26)
    {
      goto LABEL_117;
    }
  }

  while (1)
  {
    v77 = v74 - 1;
    v78 = (v75 + 16 * (v74 - 1));
    v79 = (v28 + 16 * v74);
    if (v74 >= 4)
    {
      v84 = v75 + 16 * v74;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_140;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_141;
      }

      v91 = v79[1];
      v92 = v91 - *v79;
      if (__OFSUB__(v91, *v79))
      {
        goto LABEL_143;
      }

      v90 = __OFADD__(v82, v92);
      v93 = v82 + v92;
      if (v90)
      {
        goto LABEL_146;
      }

      if (v93 >= v87)
      {
        v107 = *v78;
        v106 = v78[1];
        v90 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v90)
        {
          goto LABEL_151;
        }

        if (v82 < v108)
        {
          v77 = v74 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

    if (v74 == 3)
    {
      v80 = *(v28 + 32);
      v81 = *(v28 + 40);
      v90 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      v83 = v90;
LABEL_69:
      if (v83)
      {
        goto LABEL_142;
      }

      v95 = *v79;
      v94 = v79[1];
      v96 = __OFSUB__(v94, v95);
      v97 = v94 - v95;
      v98 = v96;
      if (v96)
      {
        goto LABEL_145;
      }

      v99 = v78[1];
      v100 = v99 - *v78;
      if (__OFSUB__(v99, *v78))
      {
        goto LABEL_148;
      }

      if (__OFADD__(v97, v100))
      {
        goto LABEL_150;
      }

      if (v97 + v100 >= v82)
      {
        if (v82 < v100)
        {
          v77 = v74 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_84;
    }

    if (v74 < 2)
    {
      goto LABEL_144;
    }

    v102 = *v79;
    v101 = v79[1];
    v90 = __OFSUB__(v101, v102);
    v97 = v101 - v102;
    v98 = v90;
LABEL_84:
    if (v98)
    {
      goto LABEL_147;
    }

    v104 = *v78;
    v103 = v78[1];
    v90 = __OFSUB__(v103, v104);
    v105 = v103 - v104;
    if (v90)
    {
      goto LABEL_149;
    }

    if (v105 < v97)
    {
      goto LABEL_98;
    }

LABEL_91:
    if (v77 - 1 >= v74)
    {
      break;
    }

    if (!*v173)
    {
      goto LABEL_159;
    }

    v4 = v27;
    v109 = v28;
    v28 = v75 + 16 * (v77 - 1);
    v110 = *v28;
    v111 = (v75 + 16 * v77);
    v112 = v111[1];
    v113 = v174;
    sub_227B65248(&(*v173)[*(v171 + 72) * *v28], &(*v173)[*(v171 + 72) * *v111], &(*v173)[*(v171 + 72) * v112], v168);
    v174 = v113;
    if (v113)
    {
    }

    if (v112 < v110)
    {
      goto LABEL_137;
    }

    v114 = *(v109 + 16);
    if (v77 > v114)
    {
      goto LABEL_138;
    }

    *v28 = v110;
    *(v28 + 8) = v112;
    if (v77 >= v114)
    {
      goto LABEL_139;
    }

    v74 = v114 - 1;
    result = memmove((v75 + 16 * v77), v111 + 2, 16 * (v114 - 1 - v77));
    v28 = v109;
    *(v109 + 16) = v114 - 1;
    v27 = v4;
    if (v114 <= 2)
    {
      goto LABEL_98;
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  result = sub_227B65968(v28);
  v28 = result;
LABEL_119:
  v135 = v28;
  v136 = (v28 + 16);
  for (i = *(v28 + 16); ; *v136 = i)
  {
    v28 = i - 2;
    if (i < 2)
    {
      break;
    }

    if (!*v173)
    {
      goto LABEL_158;
    }

    v138 = (v135 + 16 * i);
    v139 = *v138;
    v140 = &v136[2 * i];
    v141 = v140[1];
    v142 = v174;
    sub_227B65248(&(*v173)[*(v171 + 72) * *v138], &(*v173)[*(v171 + 72) * *v140], &(*v173)[*(v171 + 72) * v141], v4);
    v174 = v142;
    if (v142)
    {
      break;
    }

    if (v141 < v139)
    {
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v28 >= *v136)
    {
      goto LABEL_134;
    }

    *v138 = v139;
    v138[1] = v141;
    v143 = *v136 - i;
    if (*v136 < i)
    {
      goto LABEL_135;
    }

    i = *v136 - 1;
    result = memmove(v140, v140 + 2, 16 * v143);
  }
}

uint64_t sub_227B65248(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v8 = MEMORY[0x28223BE20](v97);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v86 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v90 = &v86 - v13;
  result = MEMORY[0x28223BE20](v12);
  v94 = &v86 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return result;
  }

  v19 = &a2[-a1] == 0x8000000000000000 && v18 == -1;
  if (v19)
  {
    goto LABEL_77;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_78;
  }

  v22 = &a2[-a1] / v18;
  v100 = a1;
  v99 = a4;
  v91 = v15 + 16;
  v93 = (v15 + 8);
  v23 = v20 / v18;
  if (v22 < v20 / v18)
  {
    sub_227B638F8(a1, &a2[-a1] / v18, a4, &qword_27D7E6AA8, &unk_227D4ED70);
    v92 = &a4[v22 * v18];
    v98 = v92;
    v24 = v91;
    v89 = a3;
    while (1)
    {
      if (a4 >= v92 || a2 >= a3)
      {
        goto LABEL_75;
      }

      v26 = a1;
      v27 = *v24;
      v28 = a2;
      v29 = v97;
      (*v24)(v94, a2, v97);
      v30 = v90;
      v95 = a4;
      v27(v90, a4, v29);
      v31 = v96;
      v32 = sub_227D4A708();
      if (v31)
      {
        v96 = v31;
        v80 = *v93;
        v81 = v30;
        v82 = v97;
        (*v93)(v81, v97);
        v80(v94, v82);
        goto LABEL_75;
      }

      v34 = v32;
      v35 = v33;
      v36 = sub_227D4A708();
      v96 = 0;
      if (v34 == v36 && v35 == v37)
      {

        v45 = *v93;
        v46 = v30;
        v47 = v97;
        (*v93)(v46, v97);
        v45(v94, v47);
        v43 = v26;
      }

      else
      {
        v39 = sub_227D4DA78();

        v40 = *v93;
        v41 = v30;
        v42 = v97;
        (*v93)(v41, v97);
        v40(v94, v42);
        v43 = v26;
        if (v39)
        {
          a2 = (v28 + v18);
          v44 = v26 < v28 || v26 >= a2;
          v24 = v91;
          if (v44)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v26 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v95;
          a3 = v89;
          goto LABEL_41;
        }
      }

      a4 = (v95 + v18);
      v48 = v43 < v95 || v43 >= a4;
      a2 = v28;
      v24 = v91;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 = v89;
      }

      else
      {
        a3 = v89;
        if (v43 != v95)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v99 = a4;
LABEL_41:
      a1 = v43 + v18;
      v100 = a1;
    }
  }

  sub_227B638F8(a2, v20 / v18, a4, &qword_27D7E6AA8, &unk_227D4ED70);
  v49 = &a4[v23 * v18];
  v50 = -v18;
  v51 = v49;
  v52 = v91;
  v87 = a1;
  v94 = v50;
  v95 = a4;
LABEL_43:
  v90 = a2;
  v53 = &a2[v50];
  v86 = v51;
  v54 = v51;
  v55 = v88;
  while (1)
  {
    if (v49 <= v95)
    {
      v100 = v90;
      v98 = v54;
      goto LABEL_75;
    }

    if (v90 <= a1)
    {
      v100 = v90;
      v83 = v86;
      goto LABEL_74;
    }

    v89 = v54;
    v91 = v49;
    v56 = v49 + v50;
    v57 = *v52;
    v58 = v97;
    (*v52)(v92, v49 + v50, v97);
    v59 = v53;
    v60 = v58;
    v61 = v52;
    v57(v55, v53, v60);
    v62 = v96;
    v63 = sub_227D4A708();
    if (v62)
    {
      break;
    }

    v65 = v63;
    v66 = v64;
    v67 = sub_227D4A708();
    v96 = 0;
    if (v65 == v67 && v66 == v68)
    {
      v70 = 0;
    }

    else
    {
      v70 = sub_227D4DA78();
    }

    v71 = &v94[a3];
    v72 = *v93;
    v73 = v55;
    v74 = v97;
    (*v93)(v73, v97);
    v72(v92, v74);
    if (v70)
    {
      v76 = a3 < v90 || v71 >= v90;
      v52 = v61;
      v77 = v71;
      v78 = v59;
      if (v76)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 = v59;
        v51 = v89;
        a1 = v87;
        v50 = v94;
        v49 = v91;
        a3 = v77;
      }

      else
      {
        v51 = v89;
        v19 = a3 == v90;
        a2 = v59;
        a1 = v87;
        v50 = v94;
        v49 = v91;
        a3 = v77;
        if (!v19)
        {
          v79 = v89;
          swift_arrayInitWithTakeBackToFront();
          v49 = v91;
          a2 = v78;
          v51 = v79;
        }
      }

      goto LABEL_43;
    }

    v75 = a3 < v91 || v71 >= v91;
    v52 = v61;
    v53 = v59;
    if (v75)
    {
      swift_arrayInitWithTakeFrontToBack();
      a3 = v71;
      v49 = v56;
      v54 = v56;
      a1 = v87;
      v55 = v88;
      v50 = v94;
    }

    else
    {
      v54 = v56;
      v19 = v91 == a3;
      a3 = v71;
      v49 = v56;
      a1 = v87;
      v55 = v88;
      v50 = v94;
      if (!v19)
      {
        swift_arrayInitWithTakeBackToFront();
        a3 = v71;
        v49 = v56;
        v54 = v56;
      }
    }
  }

  v96 = v62;
  v84 = *v93;
  v85 = v97;
  (*v93)(v55, v97);
  v84(v92, v85);
  v83 = v89;
  v100 = v90;
LABEL_74:
  v98 = v83;
LABEL_75:
  sub_227B6597C(&v100, &v99, &v98);
  return 1;
}

uint64_t sub_227B6597C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AA8, &unk_227D4ED70);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_1()
{
}

void OUTLINED_FUNCTION_44_3()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_55_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_79_2()
{

  JUMPOUT(0x22AAA7130);
}

uint64_t OUTLINED_FUNCTION_91_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_92_0()
{
}

uint64_t OUTLINED_FUNCTION_100_0()
{
}

uint64_t OUTLINED_FUNCTION_110_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  v1 = *(v0 + 680);
  __swift_project_boxed_opaque_existential_1((*(v0 + 448) + 608), *(*(v0 + 448) + 632));
  return v1;
}

void OUTLINED_FUNCTION_137_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_151_0()
{
}

uint64_t OUTLINED_FUNCTION_155_1(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_159_0()
{
}

BOOL OUTLINED_FUNCTION_160_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_180_0()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t OUTLINED_FUNCTION_210()
{
}

uint64_t OUTLINED_FUNCTION_212()
{
}

uint64_t OUTLINED_FUNCTION_213()
{
}

uint64_t OUTLINED_FUNCTION_214(uint64_t a1)
{

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_217_1()
{
}

uint64_t OUTLINED_FUNCTION_218()
{
}

uint64_t AchievementService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227B66118()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BA98);
  __swift_project_value_buffer(v0, qword_280E7BA98);
  return sub_227D49E48();
}

uint64_t sub_227B66164()
{
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_46_0(&_MergedGlobals_2);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BA98);
}

uint64_t static AchievementService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_2 != -1)
  {
    OUTLINED_FUNCTION_46_0(&_MergedGlobals_2);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BA98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227B66250(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_227B662A0(a1, a2);
  return v4;
}

uint64_t sub_227B662A0(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v14 = sub_227D49EF8();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_actorSystem) = a1;
  type metadata accessor for AchievementService(0);
  v16 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_2_8();
  sub_227B0F6A8(v8, v9);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v10, v11);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_id, v6, v14);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_dataProvider) = v15;
  v16 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for AchievementService(uint64_t a1)
{
  result = qword_27D7EB4C0;
  if (!qword_27D7EB4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AchievementService.describe(achievements:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v1[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B6660C()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[14];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v2);
    sub_227B670B8();
    v3 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v3);
    if (v1)
    {
      (*(v0[10] + 8))(v0[11], v0[9]);
      v6 = OUTLINED_FUNCTION_17_0();
      v7(v6);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X1, X16 }
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D88, &qword_227D4F9B8);
    sub_227B67218(&qword_27D7E6D90, sub_227B67290, MEMORY[0x277D83978]);
    v5 = sub_227B67218(&qword_27D7E6DB0, sub_227B67344, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_17(v5);
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v14 = swift_task_alloc();
    v0[15] = v14;
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v15, v16);
    OUTLINED_FUNCTION_48();
    *v14 = v17;
    v14[1] = sub_227B66908;
    OUTLINED_FUNCTION_4(v18);
    OUTLINED_FUNCTION_54_4();

    return MEMORY[0x282164B00](v19);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_227B66AC8;
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_46();

    return sub_227B66FFC(v11);
  }
}

uint64_t sub_227B66908()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B66A00()
{
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_47_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  v6 = OUTLINED_FUNCTION_8_0();

  return v7(v6);
}

void sub_227B66AC8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_164();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_227B66C1C()
{
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_47_2();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227B66CE4(uint64_t a1, uint64_t *a2, uint64_t a3)
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

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227B66E84;

  return AchievementService.describe(achievements:)();
}

void sub_227B66E84()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_9_2();
  v5(v4);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B66FFC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B67018, v1);
}

uint64_t sub_227B67018()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B44998;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1F88C(v2);
}

unint64_t sub_227B670B8()
{
  result = qword_27D7E6D60;
  if (!qword_27D7E6D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D58, &qword_227D4F9B0);
    sub_227B69F68(&qword_27D7E6D68, &qword_27D7E6D70, &unk_227D5E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6D60);
  }

  return result;
}

unint64_t sub_227B67168()
{
  result = qword_27D7E6D78;
  if (!qword_27D7E6D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D58, &qword_227D4F9B0);
    sub_227B69F68(&qword_27D7E6D80, &qword_27D7E6D70, &unk_227D5E210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6D78);
  }

  return result;
}

uint64_t sub_227B67218(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D88, &qword_227D4F9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227B67290()
{
  result = qword_27D7E6D98;
  if (!qword_27D7E6D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DA0, &unk_227D4F9C0);
    sub_227B0F6A8(&qword_27D7E6DA8, MEMORY[0x277D0D308]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6D98);
  }

  return result;
}

unint64_t sub_227B67344()
{
  result = qword_27D7E6DB8;
  if (!qword_27D7E6DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DA0, &unk_227D4F9C0);
    sub_227B0F6A8(&qword_27D7E6DC0, MEMORY[0x277D0D308]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6DB8);
  }

  return result;
}

uint64_t AchievementService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[12] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DC8, &qword_227D58AA0);
  v0[15] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[16] = v8;
  v0[17] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[18] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B675C4()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[20];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DD0, &unk_227D58AB0);
    sub_227D49478();
    sub_227B67D40();
    v2 = sub_227B67DF0();
    OUTLINED_FUNCTION_8_3(v2);
    if (v1)
    {
      v3 = OUTLINED_FUNCTION_74_2();
      v4(v3);
      v5 = OUTLINED_FUNCTION_17_0();
      v6(v5);
      OUTLINED_FUNCTION_72_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6DE8, &unk_227D61550);
    sub_227B67EA0();
    v13 = sub_227B67F50();
    OUTLINED_FUNCTION_17(v13);
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v16 = swift_task_alloc();
    v0[21] = v16;
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v17, v18);
    OUTLINED_FUNCTION_48();
    *v16 = v19;
    v16[1] = sub_227B678DC;
    OUTLINED_FUNCTION_4(v20);
    OUTLINED_FUNCTION_54_4();

    return MEMORY[0x282164B00](v21);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_30_3(v7);
    OUTLINED_FUNCTION_46();

    return sub_227B67C80(v8, v9);
  }
}

uint64_t sub_227B678DC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B679D4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227B6DBFC;

  return AchievementService.listAchievements(games:after:)();
}

uint64_t sub_227B67C80(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227B67CA0, v2);
}

uint64_t sub_227B67CA0()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B6DC04;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1F9B0(v2, v3);
}

unint64_t sub_227B67D40()
{
  result = qword_27D7E6DD8;
  if (!qword_27D7E6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DD0, &unk_227D58AB0);
    sub_227B69F68(&qword_280E7B830, &qword_27D7E6888, &unk_227D4E630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6DD8);
  }

  return result;
}

unint64_t sub_227B67DF0()
{
  result = qword_27D7E6DE0;
  if (!qword_27D7E6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DD0, &unk_227D58AB0);
    sub_227B69F68(&qword_280E7B838, &qword_27D7E6888, &unk_227D4E630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6DE0);
  }

  return result;
}

unint64_t sub_227B67EA0()
{
  result = qword_27D7E6DF0;
  if (!qword_27D7E6DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DE8, &unk_227D61550);
    sub_227B69F68(&qword_27D7E6DF8, &qword_27D7E6E00, &unk_227D4FA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6DF0);
  }

  return result;
}

unint64_t sub_227B67F50()
{
  result = qword_27D7E6E08;
  if (!qword_27D7E6E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6DE8, &unk_227D61550);
    sub_227B69F68(&qword_27D7E6E10, &qword_27D7E6E00, &unk_227D4FA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E08);
  }

  return result;
}

uint64_t AchievementService.getProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v0[19] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[20] = v12;
  v0[21] = OUTLINED_FUNCTION_30();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227B681F0()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[21];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v2);
    sub_227B670B8();
    v3 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v3);
    if (v1)
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      v4 = OUTLINED_FUNCTION_17_0();
      v5(v4);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X1, X16 }
    }

    (*(v0[11] + 16))(v0[12], v0[5], v0[10]);
    OUTLINED_FUNCTION_11_4();
    sub_227D49478();
    sub_227B69F68(&qword_27D7E6BD8, &qword_27D7E67C0, &unk_227D4FB20);
    sub_227B69F68(&qword_27D7E6BE8, &qword_27D7E67C0, &unk_227D4FB20);
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227B69008();
    v12 = sub_227B690BC();
    OUTLINED_FUNCTION_17(v12);
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v15 = swift_task_alloc();
    v0[22] = v15;
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v16, v17);
    OUTLINED_FUNCTION_48();
    *v15 = v18;
    v15[1] = sub_227B685A0;
    OUTLINED_FUNCTION_4(v19);
    OUTLINED_FUNCTION_54_4();

    return MEMORY[0x282164B00](v20);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_30_3(v6);
    OUTLINED_FUNCTION_46();

    return sub_227B68E5C(v7, v8);
  }
}

uint64_t sub_227B685A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B68698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_69_0();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B6876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v11 = *v10;
  OUTLINED_FUNCTION_5_4();
  *v12 = v11;

  OUTLINED_FUNCTION_163();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227B688F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_69_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B689C8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227B68C74;

  return AchievementService.getProgress(achievements:belongingTo:)();
}

uint64_t sub_227B68C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  OUTLINED_FUNCTION_80_0();
  *v16 = v17;
  *v19 = v18;

  (*(v14 + 8))(v13, v15);
  v20 = OUTLINED_FUNCTION_91_0();
  v21(v20);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_227B68E5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227B68E7C, v2);
}

uint64_t sub_227B68E7C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B68F1C;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1FAC8(v2, v3);
}

uint64_t sub_227B68F1C()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_115();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

unint64_t sub_227B69008()
{
  result = qword_27D7E6E28;
  if (!qword_27D7E6E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227B0F6A8(&qword_27D7E6E30, MEMORY[0x277D0D0D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E28);
  }

  return result;
}

unint64_t sub_227B690BC()
{
  result = qword_27D7E6E38;
  if (!qword_27D7E6E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227B0F6A8(&qword_27D7E6E40, MEMORY[0x277D0D0D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E38);
  }

  return result;
}

uint64_t AchievementService.listFriends(having:after:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v0[11] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v0[12] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[13] = v6;
  v0[14] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[15] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[16] = v8;
  v0[17] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[18] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[19] = v10;
  v0[20] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B6933C()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[20];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    sub_227D49478();
    sub_227B670B8();
    v2 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v2);
    if (v1)
    {
      v3 = OUTLINED_FUNCTION_74_2();
      v4(v3);
      v5 = OUTLINED_FUNCTION_17_0();
      v6(v5);
      OUTLINED_FUNCTION_72_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_81_2();
    OUTLINED_FUNCTION_61_0();
    sub_227B15FB0();
    sub_227B16064();
    OUTLINED_FUNCTION_61_1();
    sub_227D49D18();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    OUTLINED_FUNCTION_82_0(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E48, &qword_227D4FBE8);
    sub_227B69E08();
    v11 = sub_227B69EB8();
    OUTLINED_FUNCTION_17(v11);
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v14 = swift_task_alloc();
    v0[21] = v14;
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v15, v16);
    OUTLINED_FUNCTION_48();
    *v14 = v17;
    v14[1] = sub_227B69670;
    OUTLINED_FUNCTION_4(v18);
    OUTLINED_FUNCTION_54_4();

    return MEMORY[0x282164B00](v19);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_227B6983C;
    OUTLINED_FUNCTION_46();

    return sub_227B69D44();
  }
}

uint64_t sub_227B69670()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B69768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_71_1();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B6983C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_62_1();
  v11 = *v10;
  OUTLINED_FUNCTION_5_4();
  *v12 = v11;

  OUTLINED_FUNCTION_163();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227B699C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_43_0();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_71_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B69A98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_227B6DBFC;

  return AchievementService.listFriends(having:after:)();
}

uint64_t sub_227B69D5C()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  OUTLINED_FUNCTION_37_0();
  sub_227B0F6A8(v0, v1);
  OUTLINED_FUNCTION_78_0();
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v2();
}

unint64_t sub_227B69E08()
{
  result = qword_27D7E6E50;
  if (!qword_27D7E6E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E48, &qword_227D4FBE8);
    sub_227B69F68(&qword_27D7E6E58, &qword_27D7E6E60, &unk_227D4FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E50);
  }

  return result;
}

unint64_t sub_227B69EB8()
{
  result = qword_27D7E6E68;
  if (!qword_27D7E6E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6E48, &qword_227D4FBE8);
    sub_227B69F68(&qword_27D7E6E70, &qword_27D7E6E60, &unk_227D4FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6E68);
  }

  return result;
}

uint64_t sub_227B69F68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AchievementService.resetProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B6A144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[18];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_77_1();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);
      OUTLINED_FUNCTION_60_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }

    else
    {
      v12[3] = v12[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      v25 = OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_70_2(v25, v26, v27);
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v36 = swift_task_alloc();
      v12[19] = v36;
      type metadata accessor for AchievementService(0);
      OUTLINED_FUNCTION_0_4();
      sub_227B0F6A8(v37, v38);
      OUTLINED_FUNCTION_44_0();
      *v36 = v39;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v12[21] = v20;
    *v20 = v12;
    OUTLINED_FUNCTION_30_3(v20);
    OUTLINED_FUNCTION_163();

    return sub_227B6AAAC(v21, v22);
  }
}

uint64_t sub_227B6A424()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B6A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_56_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);
  OUTLINED_FUNCTION_60_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

void sub_227B6A5DC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_164();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B6A738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v12 = OUTLINED_FUNCTION_56_1();
  v13(v12);
  v14 = OUTLINED_FUNCTION_86();
  v15(v14);
  v16 = OUTLINED_FUNCTION_85();
  v17(v16);
  v18 = OUTLINED_FUNCTION_22_2();
  v19(v18);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_227B6A800(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B45AF8;

  return AchievementService.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_227B6AAAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227B6AACC, v2);
}

uint64_t sub_227B6AACC()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B45D74;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1FBF4(v2, v3);
}

uint64_t AchievementService.reveal(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_55_1(v1, v2);
  v0[7] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v0[10] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[11] = v6;
  v0[12] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D50, &qword_227D4F9A0);
  v0[13] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[14] = v8;
  v0[15] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v0[16] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[17] = v10;
  v0[18] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B6AD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[18];
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D58, &qword_227D4F9B0);
    OUTLINED_FUNCTION_7_3(v14);
    sub_227B670B8();
    v15 = sub_227B67168();
    OUTLINED_FUNCTION_8_3(v15);
    if (v13)
    {
      v16 = OUTLINED_FUNCTION_77_1();
      v17(v16);
      v18 = OUTLINED_FUNCTION_17_0();
      v19(v18);
      OUTLINED_FUNCTION_60_1();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_163();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
    }

    else
    {
      v12[3] = v12[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
      v23 = OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_70_2(v23, v24, v25);
      sub_227B47E34();
      sub_227B47EE4();
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      sub_227D49D08();
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v34 = swift_task_alloc();
      v12[19] = v34;
      type metadata accessor for AchievementService(0);
      OUTLINED_FUNCTION_0_4();
      sub_227B0F6A8(v35, v36);
      OUTLINED_FUNCTION_44_0();
      *v34 = v37;
      OUTLINED_FUNCTION_79_3();
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_163();

      return MEMORY[0x282164B10](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }
  }

  else
  {
    v20 = swift_task_alloc();
    v12[21] = v20;
    *v20 = v12;
    v20[1] = sub_227B6DBF8;
    OUTLINED_FUNCTION_163();

    return sub_227B6B390();
  }
}

uint64_t sub_227B6AFEC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B6B0E4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227B4AFB4;

  return AchievementService.reveal(achievements:belongingTo:)();
}

uint64_t AchievementService.submit(progress:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D49458();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E78, &qword_227D4FDE0);
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[11] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B6B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[13];
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E20, &unk_227D61610);
    sub_227D49478();
    sub_227B69008();
    v14 = sub_227B690BC();
    OUTLINED_FUNCTION_8_3(v14);
    if (v13)
    {
      (*(v12[9] + 8))(v12[10], v12[8]);
      v15 = OUTLINED_FUNCTION_17_0();
      v16(v15);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_164();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v23 = swift_task_alloc();
    v12[14] = v23;
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v24, v25);
    OUTLINED_FUNCTION_44_0();
    *v23 = v26;
    v23[1] = sub_227B6B790;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x282164B10](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v19 = swift_task_alloc();
    v12[16] = v19;
    *v19 = v12;
    v19[1] = sub_227B6B944;
    OUTLINED_FUNCTION_53(v12[3]);
    OUTLINED_FUNCTION_164();

    return sub_227B6BE30(v20);
  }
}

uint64_t sub_227B6B790()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B6B888()
{
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227B6B944()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227B6BA80()
{
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_59_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_91_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227B6BB3C(uint64_t a1, uint64_t *a2)
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

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227B6BCD8;

  return AchievementService.submit(progress:)();
}

void sub_227B6BCD8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  v1 = v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227B6BE30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227B6BE4C, v1);
}

uint64_t sub_227B6BE4C()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B2F79C;
  v2 = OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227D1FD20(v2);
}

uint64_t AchievementService.clearCache()()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v0;
  v2 = sub_227D49458();
  v1[3] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_30();
  v4 = sub_227D49D58();
  v1[6] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_30();
  v6 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227B6BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_36();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    sub_227D49D08();
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v15 = swift_task_alloc();
    *(v12 + 72) = v15;
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v16, v17);
    OUTLINED_FUNCTION_44_0();
    *v15 = v18;
    v15[1] = sub_227B6C200;
    OUTLINED_FUNCTION_19_1();

    return MEMORY[0x282164B10](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v12 + 88) = v13;
    *v13 = v12;
    v13[1] = sub_227B6C398;

    return sub_227B69D44();
  }
}

uint64_t sub_227B6C200()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B6C2F8()
{
  OUTLINED_FUNCTION_20();
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B6C398()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227B6C4B8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = OUTLINED_FUNCTION_47_2();
  v2(v1);

  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227B6C548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B355D0;

  return AchievementService.clearCache()();
}

uint64_t static AchievementService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AchievementService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_2_8();
  sub_227B0F6A8(v5, v6);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v12 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore18AchievementService_actorSystem) = a2;
  }

  return v10;
}

uint64_t AchievementService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_2_8();
  sub_227B0F6A8(v2, v3);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v4 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AchievementService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore18AchievementService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    AchievementService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227B6C888()
{
  sub_227D4DB58();
  type metadata accessor for AchievementService(0);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t AchievementService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for AchievementService(0);
    OUTLINED_FUNCTION_0_4();
    sub_227B0F6A8(v1, v2);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227B6C97C@<X0>(uint64_t *a1@<X8>)
{
  result = AchievementService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227B6CA1C()
{
  type metadata accessor for AchievementService(0);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v0, v1);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227B6CA84(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for AchievementService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227B6CC8C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return AchievementService.describe(achievements:)();
}

uint64_t sub_227B6CD18()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.listAchievements(games:after:)();
}

uint64_t sub_227B6CDA4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.getProgress(achievements:belongingTo:)();
}

uint64_t sub_227B6CE30()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.listFriends(having:after:)();
}

uint64_t sub_227B6CEBC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.resetProgress(achievements:belongingTo:)();
}

uint64_t sub_227B6CF48()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return AchievementService.reveal(achievements:belongingTo:)();
}

uint64_t sub_227B6CFD4()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return AchievementService.submit(progress:)();
}

uint64_t sub_227B6D060()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return AchievementService.clearCache()();
}

uint64_t sub_227B6D0E4()
{
  type metadata accessor for AchievementService(0);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v0, v1);
  v2 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v2);
}

uint64_t sub_227B6D15C(uint64_t a1)
{
  type metadata accessor for AchievementService(0);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v1, v2);
  OUTLINED_FUNCTION_9_5();
  sub_227B0F6A8(v3, v4);
  return sub_227D49428();
}

uint64_t sub_227B6D204@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AchievementService(0);
  OUTLINED_FUNCTION_0_4();
  sub_227B0F6A8(v3, v4);
  OUTLINED_FUNCTION_9_5();
  sub_227B0F6A8(v5, v6);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227B6D2B4(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of AchievementService.describe(achievements:)()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  OUTLINED_FUNCTION_45();
  v7 = (*(v2 + 120) + **(v2 + 120));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);

  return v7(v1);
}

uint64_t dispatch thunk of AchievementService.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AchievementService.getProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AchievementService.listFriends(having:after:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AchievementService.resetProgress(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AchievementService.reveal(achievements:belongingTo:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v6 = (*(v0 + 160) + **(v0 + 160));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of AchievementService.submit(progress:)()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  OUTLINED_FUNCTION_45();
  v7 = (*(v2 + 168) + **(v2 + 168));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_50(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_35(v4);

  return v7(v1);
}

uint64_t dispatch thunk of AchievementService.clearCache()()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v5 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);

  return v5();
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 88);

  return sub_227B41B14(v2, v3);
}

BOOL sub_227B6DD30(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_227B6DD64@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_227B6DD94@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

GameServicesCore::MetadataEligibility sub_227B6DE94@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = MetadataEligibility.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_227B6DED4@<X0>(uint64_t *a1@<X8>)
{
  result = MetadataEligibility.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227B6DF28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

GameServicesCore::ApplicationType_optional __swiftcall ApplicationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_227B6DFB0(unsigned __int8 a1)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a1);
  return sub_227D4DB98();
}

uint64_t sub_227B6DFF8(char a1)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a1 & 1);
  return sub_227D4DB98();
}

uint64_t sub_227B6E078(uint64_t a1, unsigned __int8 a2)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a2);
  return sub_227D4DB98();
}

uint64_t sub_227B6E0BC(uint64_t a1, char a2)
{
  sub_227D4DB58();
  MEMORY[0x22AAA68B0](a2 & 1);
  return sub_227D4DB98();
}

uint64_t sub_227B6E108@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationType.rawValue.getter();
  *a1 = result;
  return result;
}

GameServicesCore::AppMetadataTTL_optional __swiftcall AppMetadataTTL.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_227B6E1A8@<X0>(uint64_t *a1@<X8>)
{
  result = AppMetadataTTL.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_227B6E1D4()
{
  result = qword_27D7E6EA0;
  if (!qword_27D7E6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EA0);
  }

  return result;
}

unint64_t sub_227B6E22C()
{
  result = qword_27D7E6EA8;
  if (!qword_27D7E6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EA8);
  }

  return result;
}

unint64_t sub_227B6E284()
{
  result = qword_27D7E6EB0;
  if (!qword_27D7E6EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EB0);
  }

  return result;
}

unint64_t sub_227B6E2DC()
{
  result = qword_27D7E6EB8;
  if (!qword_27D7E6EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EB8);
  }

  return result;
}

unint64_t sub_227B6E334()
{
  result = qword_27D7E6EC0;
  if (!qword_27D7E6EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EC0);
  }

  return result;
}

unint64_t sub_227B6E38C()
{
  result = qword_27D7E6EC8;
  if (!qword_27D7E6EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EC8);
  }

  return result;
}

unint64_t sub_227B6E3E4()
{
  result = qword_27D7E6ED0;
  if (!qword_27D7E6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataEligibility(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return OUTLINED_FUNCTION_161(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MetadataEligibility(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ApplicationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 3);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *storeEnumTagSinglePayload for ApplicationType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultChallengeStoreRegistry.ChallengeStoreType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *_s16GameServicesCore14AppMetadataTTLOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227B6EB28(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_227B6EB4C, 0, 0);
}

uint64_t sub_227B6EB4C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6ED8, &qword_227D50670);
  *v4 = v0;
  v4[1] = sub_227B6EC38;

  return sub_227B4CC14();
}

uint64_t sub_227B6EC38()
{
  OUTLINED_FUNCTION_6();
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v2 = v5;
  *(v5 + 64) = v0;

  if (v0)
  {
    v3 = sub_227B4EF64;
  }

  else
  {

    v3 = sub_227B6ED48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_227B6ED64()
{
  OUTLINED_FUNCTION_6();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_227D4AD08();
  v0[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[7] = v6;
  v0[8] = OUTLINED_FUNCTION_30();
  sub_227D4C198();
  v0[9] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4C1B8();
  v0[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[11] = v8;
  v0[12] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4C178();
  v0[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[14] = v10;
  v0[15] = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EE0, &qword_227D50678);
  v0[16] = OUTLINED_FUNCTION_30();
  sub_227D4C1D8();
  v0[17] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4ACD8();
  v0[18] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[19] = v12;
  v0[20] = OUTLINED_FUNCTION_30();

  return MEMORY[0x2822009F8](sub_227B6EF70, 0, 0);
}

uint64_t sub_227B6EF70()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[16];
  v6 = v0[4];
  v5 = v0[5];
  sub_227D4CE58();
  MEMORY[0x22AAA3A10](v6, v5, 0, 0);
  (*(v2 + 16))(v4, v1, v3);
  v7 = sub_227D4C158();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  sub_227B6F70C();
  v8 = sub_227D4D1F8();
  MEMORY[0x22AAA4EB0](0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v8);
  v9 = swift_task_alloc();
  v0[21] = v9;
  v10 = sub_227D4ACB8();
  *v9 = v0;
  v9[1] = sub_227B6F0F4;
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  v14 = MEMORY[0x277D0C320];

  return MEMORY[0x282163F20](v11, v13, v12, v10, v14);
}

uint64_t sub_227B6F0F4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  sub_227B6F760(v2);
  if (v0)
  {
    v9 = sub_227B6F4A4;
  }

  else
  {
    v9 = sub_227B6F280;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_227B6F280()
{
  v1 = v0[22];
  sub_227D4C1C8();
  if (v1)
  {
    OUTLINED_FUNCTION_0_5();
    sub_227B6F7C8(v6, v7);
    (*(v0[19] + 8))(v0[20], v0[18]);
  }

  else
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    sub_227D4C1A8();
    (*(v3 + 8))(v2, v4);
    sub_227D4C188();
    sub_227B6F7C8(v5, MEMORY[0x277D0C5C8]);
    v10 = v0[19];
    v19 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[7];
    v14 = v0[8];
    v15 = v0[6];
    v16 = v0[2];
    KeyPath = swift_getKeyPath();
    sub_227B4DB6C(v14, KeyPath, v16);

    (*(v13 + 8))(v14, v15);
    OUTLINED_FUNCTION_0_5();
    sub_227B6F7C8(v12, v18);
    (*(v10 + 8))(v19, v11);
  }

  OUTLINED_FUNCTION_18();

  return v8();
}

uint64_t sub_227B6F4A4()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227B6F574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B6F628;

  return sub_227B6ED64();
}

uint64_t sub_227B6F628()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_18();

  return v3();
}

unint64_t sub_227B6F70C()
{
  result = qword_27D7E6EE8;
  if (!qword_27D7E6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E6EE8);
  }

  return result;
}

uint64_t sub_227B6F760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EE0, &qword_227D50678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227B6F7C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227B6F828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227B6F880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F08, &qword_227D507E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D506B0;
  *(inited + 32) = sub_227D4BBF8();
  *(inited + 40) = v1;
  *(inited + 48) = 0x692D7070612D6B67;
  *(inited + 56) = 0xEB0000000074696ELL;
  *(inited + 64) = sub_227D4BEC8();
  *(inited + 72) = v2;
  OUTLINED_FUNCTION_3_7();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = v3;
  *(inited + 96) = sub_227D4BF68();
  *(inited + 104) = v4;
  OUTLINED_FUNCTION_3_7();
  *(inited + 112) = 0xD000000000000013;
  *(inited + 120) = v5;
  *(inited + 128) = sub_227D4C648();
  *(inited + 136) = v6;
  OUTLINED_FUNCTION_3_7();
  *(inited + 144) = 0xD00000000000001FLL;
  *(inited + 152) = v7;
  *(inited + 160) = sub_227D4C008();
  *(inited + 168) = v8;
  OUTLINED_FUNCTION_3_7();
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = v9;
  *(inited + 192) = sub_227D4C3C8();
  *(inited + 200) = v10;
  OUTLINED_FUNCTION_3_7();
  *(inited + 208) = 0xD00000000000001ALL;
  *(inited + 216) = v11;
  *(inited + 224) = sub_227D4C0A8();
  *(inited + 232) = v12;
  OUTLINED_FUNCTION_3_7();
  *(inited + 240) = 0xD000000000000013;
  *(inited + 248) = v13;
  *(inited + 256) = sub_227D4BDD8();
  *(inited + 264) = v14;
  OUTLINED_FUNCTION_3_7();
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = v15;
  *(inited + 288) = sub_227D4C288();
  *(inited + 296) = v16;
  OUTLINED_FUNCTION_3_7();
  *(inited + 304) = 0xD000000000000014;
  *(inited + 312) = v17;
  *(inited + 320) = sub_227D4C148();
  *(inited + 328) = v18;
  OUTLINED_FUNCTION_3_7();
  *(inited + 336) = 0xD000000000000018;
  *(inited + 344) = v19;
  *(inited + 352) = sub_227D4BB58();
  *(inited + 360) = v20;
  OUTLINED_FUNCTION_3_7();
  *(inited + 368) = 0xD000000000000018;
  *(inited + 376) = v21;
  *(inited + 384) = sub_227D4C1E8();
  *(inited + 392) = v22;
  OUTLINED_FUNCTION_3_7();
  *(inited + 400) = 0xD000000000000013;
  *(inited + 408) = v23;
  *(inited + 416) = sub_227D4C508();
  *(inited + 424) = v24;
  OUTLINED_FUNCTION_3_7();
  *(inited + 432) = 0xD00000000000001DLL;
  *(inited + 440) = v25;
  *(inited + 448) = sub_227D4C468();
  *(inited + 456) = v26;
  OUTLINED_FUNCTION_3_7();
  *(inited + 464) = 0xD00000000000001ALL;
  *(inited + 472) = v27;
  *(inited + 480) = sub_227D4C6E8();
  *(inited + 488) = v28;
  OUTLINED_FUNCTION_3_7();
  *(inited + 496) = 0xD000000000000026;
  *(inited + 504) = v29;
  *(inited + 512) = sub_227D4BD38();
  *(inited + 520) = v30;
  OUTLINED_FUNCTION_3_7();
  *(inited + 528) = 0xD000000000000013;
  *(inited + 536) = v31;
  *(inited + 544) = sub_227D4BC98();
  *(inited + 552) = v32;
  OUTLINED_FUNCTION_3_7();
  *(inited + 560) = 0xD000000000000011;
  *(inited + 568) = v33;
  *(inited + 576) = sub_227D4C5A8();
  *(inited + 584) = v34;
  OUTLINED_FUNCTION_3_7();
  *(inited + 592) = 0xD000000000000020;
  *(inited + 600) = v35;
  *(inited + 608) = sub_227D4C328();
  *(inited + 616) = v36;
  OUTLINED_FUNCTION_3_7();
  *(inited + 624) = 0xD000000000000017;
  *(inited + 632) = v37;
  *(inited + 640) = sub_227D4BE78();
  *(inited + 648) = v38;
  OUTLINED_FUNCTION_3_7();
  *(inited + 656) = 0xD00000000000001CLL;
  *(inited + 664) = v39;
  result = sub_227D4CE28();
  qword_280E7BAB8 = result;
  return result;
}

uint64_t sub_227B6FB50()
{
  OUTLINED_FUNCTION_6();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_227D4AB98();
  OUTLINED_FUNCTION_5(v7);
  v1[13] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4ABE8();
  v1[14] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[15] = v9;
  v1[16] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4AC38();
  v1[17] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[18] = v11;
  v1[19] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F10, &qword_227D507F8);
  v1[20] = v12;
  OUTLINED_FUNCTION_5(v12);
  v1[21] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4AB48();
  v1[22] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[23] = v14;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227B6FCFC()
{
  if (!v0[9])
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    v42 = sub_227B12980(v40, v41, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v42);
    OUTLINED_FUNCTION_3_7();
    *v43 = 0xD000000000000010;
    v43[1] = v44;
    OUTLINED_FUNCTION_14_0();
    (*(v45 + 104))();
    swift_willThrow();
    goto LABEL_21;
  }

  v1 = _MergedGlobals_3;

  if (v1 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0[26] = sub_227B708D8(v0[10], v0[11], qword_280E7BAB8);
    v0[27] = v2;
    if (!v2)
    {
      v52 = v0[10];
      v51 = v0[11];
      v53 = sub_227D49E08();
      OUTLINED_FUNCTION_0_6();
      sub_227B12980(v54, v55, MEMORY[0x277D0CE88]);
      v56 = OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_10_3(v56, v57);
      v59 = v58;
      v60 = OUTLINED_FUNCTION_58();
      v62 = OUTLINED_FUNCTION_10_3(v60, v61);
      v64 = v63;
      sub_227D4D668();

      OUTLINED_FUNCTION_3_7();
      v79 = v65;
      MEMORY[0x22AAA5DA0](v52, v51);
      *v64 = 0xD00000000000001FLL;
      v64[1] = v79;
      OUTLINED_FUNCTION_14_0();
      v67 = *(v66 + 104);
      v67(v64);
      *v59 = v62;
      (v67)(v59, *MEMORY[0x277D0CE60], v53);
      swift_willThrow();

LABEL_21:

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_93_1();

      __asm { BRAA            X1, X16 }
    }

    v77 = v0 + 2;
    v3 = v0[20];
    v4 = v0[21];
    v5 = v0[18];
    v6 = v0[15];
    MEMORY[0x22AAA38B0]();
    v7 = OUTLINED_FUNCTION_150();
    v8(v7);
    v9 = MEMORY[0x277D0F9A8];
    sub_227B12980(&qword_27D7E6F18, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C0]);
    sub_227D4D118();
    v10 = *(v3 + 36);
    v75 = (v6 + 8);
    v76 = (v5 + 16);
    sub_227B12980(&qword_27D7E6CB8, v9, MEMORY[0x277D0F9C8]);
    v11 = MEMORY[0x277D84F98];
    v72 = v10;
    v73 = v4;
    v74 = v0;
LABEL_5:
    v0[28] = v11;
    sub_227D4D3C8();
    if (*(v4 + v10) == v0[6])
    {
      break;
    }

    v12 = v0[19];
    v13 = v0[16];
    v78 = v0[14];
    v0 = v4;
    v14 = sub_227D4D3F8();
    (*v76)(v12);
    v14(v77, 0);
    v15 = sub_227D4D3D8();
    v16 = MEMORY[0x22AAA3960](v15);
    v17 = MEMORY[0x22AAA3900](v16);
    v19 = v18;
    v20 = (*v75)(v13, v78);
    v21 = MEMORY[0x22AAA3970](v20);
    v23 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_227B2664C(v17, v19);
    if (!__OFADD__(v11[2], (v25 & 1) == 0))
    {
      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF8, &qword_227D50800);
      if (sub_227D4D7C8())
      {
        v28 = sub_227B2664C(v17, v19);
        v0 = v74;
        if ((v27 & 1) != (v29 & 1))
        {
          OUTLINED_FUNCTION_93_1();

          return sub_227D4DAE8();
        }

        v26 = v28;
      }

      else
      {
        v0 = v74;
      }

      if (v27)
      {

        v30 = (v11[7] + 16 * v26);
        *v30 = v21;
        v30[1] = v23;

        v31 = OUTLINED_FUNCTION_18_4();
        v32(v31);
      }

      else
      {
        v11[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v11[6] + 16 * v26);
        *v33 = v17;
        v33[1] = v19;
        v34 = (v11[7] + 16 * v26);
        *v34 = v21;
        v34[1] = v23;
        v35 = OUTLINED_FUNCTION_18_4();
        v36(v35);
        v37 = v11[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_28;
        }

        v11[2] = v39;
      }

      v10 = v72;
      v4 = v73;
      goto LABEL_5;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  v46 = v0[25];
  v47 = v0[22];
  v48 = v0[23];
  sub_227B4DB00(v0[21], &qword_27D7E6F10, &qword_227D507F8);
  (*(v48 + 8))(v46, v47);

  v49 = swift_task_alloc();
  v0[29] = v49;
  *v49 = v0;
  v49[1] = sub_227B70390;
  OUTLINED_FUNCTION_93_1();

  return MEMORY[0x282197EB8]();
}

uint64_t sub_227B70390()
{
  OUTLINED_FUNCTION_51_0();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v6[30] = v0;
  v6[31] = v10;
  v6[32] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v14 = v6[27];
    v15 = swift_task_alloc();
    v6[33] = v15;
    *v15 = v8;
    v15[1] = sub_227B70520;
    v16 = v6[28];
    v17 = v6[26];

    return sub_227B70930(v0, v4, v16, v17, v14);
  }
}

uint64_t sub_227B70520()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v8 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v6[34] = v0;

  if (!v0)
  {

    v6[35] = v3;
    v6[36] = v5;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_227B70650()
{
  MEMORY[0x22AAA38D0]();
  sub_227D4AB38();
  sub_227D4ABA8();
  sub_227D4C998();
  sub_227D4C9A8();
  v0 = OUTLINED_FUNCTION_82();
  sub_227B728BC(v0, v1);

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_227B70774()
{
  OUTLINED_FUNCTION_51_0();

  OUTLINED_FUNCTION_13_5();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B70820()
{
  OUTLINED_FUNCTION_51_0();
  sub_227B728BC(*(v0 + 240), *(v0 + 248));

  OUTLINED_FUNCTION_13_5();

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227B708D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_227B2664C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_227D4CE58();
  return v6;
}

uint64_t sub_227B70930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B70964()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[7];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v11 = (*(v3 + 80) + **(v3 + 80));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_227B70A94;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_227B70A94()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v9 + 72) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = *(v7 + 8);

    return v13(v0, v4);
  }
}

uint64_t sub_227B70BC8()
{
  OUTLINED_FUNCTION_51_0();
  v1 = sub_227D49088();
  v2 = [v1 domain];
  v3 = sub_227D4CFA8();
  v5 = v4;

  if (v3 == sub_227D4CFA8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_227D4DA78();

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v1 code] == -1009)
  {
    v9 = *(v0 + 72);
    v10 = sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    v13 = sub_227B12980(v11, v12, MEMORY[0x277D0CE88]);
    v14 = OUTLINED_FUNCTION_10_3(v10, v13);
    OUTLINED_FUNCTION_17_5(v14, v15);
    OUTLINED_FUNCTION_14_0();
    (*(v16 + 104))();
    swift_willThrow();

    goto LABEL_11;
  }

LABEL_10:
  swift_willThrow();

LABEL_11:
  OUTLINED_FUNCTION_18();

  return v17();
}

uint64_t sub_227B70D78()
{
  OUTLINED_FUNCTION_6();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v5 = sub_227D4ABE8();
  v1[44] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[45] = v6;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v7 = sub_227D4C9D8();
  v1[48] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[49] = v8;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B70EC4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  sub_227D4C9C8();
  v4 = sub_227D4C9B8();
  v6 = v5;
  v7 = *(v3 + 8);
  v7(v1, v2);
  if (v6)
  {
    v8 = objc_opt_self();
    *(v0 + 416) = v8;
    v9 = sub_227D4CE08();
    *(v0 + 288) = 0;
    v10 = [v8 dataWithJSONObject:v9 options:0 error:v0 + 288];

    v11 = *(v0 + 288);
    if (v10)
    {
      v12 = *(v0 + 368);
      v13 = *(v0 + 376);
      v14 = *(v0 + 360);
      v42 = *(v0 + 352);
      v15 = sub_227D491C8();
      v17 = v16;

      v41 = v15;
      *(v0 + 424) = v15;
      *(v0 + 432) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F08, &qword_227D507E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_227D4F750;
      v19 = MEMORY[0x22AAA3920]();
      v20 = MEMORY[0x22AAA3900](v19);
      v22 = v21;
      v23 = *(v14 + 8);
      v23(v13, v42);
      *(inited + 32) = v20;
      *(inited + 40) = v22;
      *(inited + 48) = v4;
      *(inited + 56) = v6;
      v24 = sub_227D4CE58();
      v25 = MEMORY[0x22AAA3910](v24);
      v26 = MEMORY[0x22AAA3900](v25);
      v28 = v27;
      v23(v12, v42);
      *(inited + 64) = v26;
      *(inited + 72) = v28;
      *(inited + 80) = v4;
      *(inited + 88) = v6;
      v29 = sub_227D4CE28();
      *(v0 + 440) = v29;
      v30 = swift_task_alloc();
      *(v0 + 448) = v30;
      *v30 = v0;
      v30[1] = sub_227B712FC;
      v31 = *(v0 + 336);
      v32 = *(v0 + 328);

      return sub_227B70930(v41, v17, v29, v32, v31);
    }

    v39 = v11;

    sub_227D49098();
  }

  else
  {
    v34 = *(v0 + 400);
    v35 = *(v0 + 384);
    sub_227D4D668();
    sub_227D4C9C8();
    sub_227B12980(&qword_27D7E6F00, MEMORY[0x277D85578], MEMORY[0x277D855A8]);
    sub_227D4DA38();

    v7(v34, v35);
    MEMORY[0x22AAA5DA0](0xD00000000000001ALL, 0x8000000227D75590);
    sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    v38 = sub_227B12980(v36, v37, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v38);
    sub_227D49D98();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_18();

  return v40();
}

uint64_t sub_227B712FC()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  v2[57] = v4;
  v2[58] = v5;
  v2[59] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_227B71444()
{
  v1 = *(v0 + 416);
  v2 = sub_227D491A8();
  *(v0 + 296) = 0;
  v3 = [v1 JSONObjectWithData:v2 options:0 error:v0 + 296];

  v4 = *(v0 + 296);
  if (v3)
  {
    v5 = v4;
    sub_227D4D568();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6C88, &qword_227D4F810);
    if (swift_dynamicCast())
    {
      v6 = *(v0 + 304);
      sub_227B4E76C(0x737574617473, 0xE600000000000000, v6, (v0 + 176));
      sub_227B7296C(v0 + 176, v0 + 208, &qword_27D7E6C80, &unk_227D4F780);
      if (*(v0 + 232))
      {
        if ((swift_dynamicCast() & 1) != 0 && !*(v0 + 312))
        {
          v8 = *(v0 + 424);
          v7 = *(v0 + 432);
          sub_227B4DB00(v0 + 176, &qword_27D7E6C80, &unk_227D4F780);
          v9 = OUTLINED_FUNCTION_150();
          sub_227B728BC(v9, v10);
          sub_227B728BC(v8, v7);

          OUTLINED_FUNCTION_115();
          OUTLINED_FUNCTION_16_0();

          __asm { BRAA            X2, X16 }
        }
      }

      else
      {
        sub_227B4DB00(v0 + 208, &qword_27D7E6C80, &unk_227D4F780);
      }

      sub_227B4E76C(0x6567617373656DLL, 0xE700000000000000, v6, (v0 + 240));

      if (*(v0 + 264))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_227B4DB00(v0 + 240, &qword_27D7E6C80, &unk_227D4F780);
      }

      v32 = *(v0 + 456);
      v31 = *(v0 + 464);
      v34 = *(v0 + 424);
      v33 = *(v0 + 432);
      sub_227D49E08();
      OUTLINED_FUNCTION_0_6();
      v37 = sub_227B12980(v35, v36, MEMORY[0x277D0CE88]);
      OUTLINED_FUNCTION_5_5(v37);
      sub_227D49DE8();

      swift_willThrow();
      sub_227B728BC(v34, v33);
      sub_227B728BC(v32, v31);
      sub_227B4DB00(v0 + 176, &qword_27D7E6C80, &unk_227D4F780);
LABEL_17:

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_16_0();

      __asm { BRAA            X1, X16 }
    }

    v21 = *(v0 + 456);
    v20 = *(v0 + 464);
    v23 = *(v0 + 424);
    v22 = *(v0 + 432);
    *(v0 + 168) = MEMORY[0x277CC9318];
    *(v0 + 144) = v21;
    *(v0 + 152) = v20;
    sub_227D49E08();
    OUTLINED_FUNCTION_0_6();
    v26 = sub_227B12980(v24, v25, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_5_5(v26);
    v27 = OUTLINED_FUNCTION_82();
    sub_227B72914(v27, v28);
    OUTLINED_FUNCTION_15();
    sub_227D49DF8();
    sub_227B4DB00(v0 + 144, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
    v29 = OUTLINED_FUNCTION_82();
    sub_227B728BC(v29, v30);
    v18 = v23;
    v19 = v22;
  }

  else
  {
    v14 = *(v0 + 456);
    v13 = *(v0 + 464);
    v16 = *(v0 + 424);
    v15 = *(v0 + 432);
    v17 = v4;
    sub_227D49098();

    swift_willThrow();
    sub_227B728BC(v14, v13);
    v18 = v16;
    v19 = v15;
  }

  sub_227B728BC(v18, v19);
  goto LABEL_17;
}

uint64_t sub_227B718BC()
{
  OUTLINED_FUNCTION_51_0();

  v0 = OUTLINED_FUNCTION_58();
  sub_227B728BC(v0, v1);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227B71984()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B729CC;

  return sub_227B70D78();
}

uint64_t sub_227B71A2C()
{
  OUTLINED_FUNCTION_51_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_227B71AF0;

  return sub_227B6FB50();
}

uint64_t sub_227B71AF0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v3 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_115();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_227B71BD8@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EF0, &qword_227D506C0);
  v4 = OUTLINED_FUNCTION_5(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  sub_227D4CE58();
  OUTLINED_FUNCTION_150();
  sub_227D4ABF8();
  v7 = sub_227D4ABE8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_227B4DB00(v6, &qword_27D7E6EF0, &qword_227D506C0);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v12 = 0xD000000000000027;
    v13 = v10;
    v11 = OUTLINED_FUNCTION_150();
    MEMORY[0x22AAA5DA0](v11);
    result = sub_227D4D7F8();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_14_0();
    return (*(v8 + 32))(a2, v6, v7);
  }

  return result;
}

uint64_t sub_227B71D5C()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v6 = sub_227D4DBC8();
  v3[35] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v3[36] = v7;
  v3[37] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6EF8, &unk_227D506D0);
  OUTLINED_FUNCTION_5(v8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v9 = sub_227D49E08();
  v3[40] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v3[41] = v10;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v13 = (v2 + *v2);
  v11 = swift_task_alloc();
  v3[44] = v11;
  *v11 = v3;
  v11[1] = sub_227B71F4C;

  return v13(v5);
}

uint64_t sub_227B71F4C()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v2 + 360) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v9();
  }
}

uint64_t sub_227B720A8()
{
  v1 = *(v0 + 360);
  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 360);
    v4 = *(v0 + 344);
    v5 = *(v0 + 320);
    v6 = *(v0 + 328);
    __swift_storeEnumTagSinglePayload(*(v0 + 312), 0, 1, v5);
    v7 = OUTLINED_FUNCTION_58();
    v8(v7);
    OUTLINED_FUNCTION_0_6();
    v11 = sub_227B12980(v9, v10, MEMORY[0x277D0CE88]);
    v12 = OUTLINED_FUNCTION_10_3(v5, v11);
    v14 = OUTLINED_FUNCTION_17_5(v12, v13);
    (*(v6 + 16))(v14, v4, v5);
    swift_willThrow();

    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v15 = *(v0 + 312);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, *(v0 + 320));
    sub_227B4DB00(v15, &qword_27D7E6EF8, &unk_227D506D0);
    swift_getErrorValue();
    *(v0 + 232) = *(v0 + 248);
    __swift_allocate_boxed_opaque_existential_1((v0 + 208));
    OUTLINED_FUNCTION_14_0();
    (*(v16 + 16))();
    sub_227D4DBA8();
    sub_227D4DBB8();
    sub_227D4D7A8();
    while (1)
    {
      sub_227D4D848();
      if (!*(v0 + 104))
      {

        goto LABEL_16;
      }

      v17 = *(v0 + 80);
      *(v0 + 112) = *(v0 + 64);
      *(v0 + 128) = v17;
      *(v0 + 144) = *(v0 + 96);
      v18 = *(v0 + 120);
      if (v18)
      {
        v19 = *(v0 + 112) == 0x69796C7265646E75 && v18 == 0xEF726F727245676ELL;
        if (v19 || (sub_227D4DA78() & 1) != 0)
        {
          break;
        }
      }

      sub_227B4DB00(v0 + 112, &qword_27D7E6C78, qword_227D506E0);
    }

    v20 = *(v0 + 128);
    *(v0 + 16) = *(v0 + 112);
    *(v0 + 32) = v20;
    *(v0 + 48) = *(v0 + 144);
    sub_227B7296C(v0 + 16, v0 + 160, &qword_27D7E6C78, qword_227D506E0);

    if (swift_dynamicCast())
    {
      v21 = *(v0 + 360);
      v23 = *(v0 + 328);
      v22 = *(v0 + 336);
      v24 = *(v0 + 320);
      v25 = *(v0 + 296);
      v26 = *(v0 + 304);
      v27 = *(v0 + 280);
      v28 = *(v0 + 288);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v24);
      (*(v23 + 32))(v22, v26, v24);
      OUTLINED_FUNCTION_0_6();
      v31 = sub_227B12980(v29, v30, MEMORY[0x277D0CE88]);
      v32 = OUTLINED_FUNCTION_10_3(v24, v31);
      v34 = OUTLINED_FUNCTION_17_5(v32, v33);
      (*(v23 + 16))(v34, v22, v24);
      swift_willThrow();

      (*(v23 + 8))(v22, v24);
      sub_227B4DB00(v0 + 16, &qword_27D7E6C78, qword_227D506E0);
      (*(v28 + 8))(v25, v27);
      goto LABEL_17;
    }

    v35 = *(v0 + 320);
    v36 = *(v0 + 304);
    sub_227B4DB00(v0 + 16, &qword_27D7E6C78, qword_227D506E0);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v35);
    sub_227B4DB00(v36, &qword_27D7E6EF8, &unk_227D506D0);
LABEL_16:
    v37 = *(v0 + 360);
    v38 = *(v0 + 320);
    v39 = *(v0 + 328);
    v41 = *(v0 + 288);
    v40 = *(v0 + 296);
    v42 = *(v0 + 280);
    OUTLINED_FUNCTION_0_6();
    v45 = sub_227B12980(v43, v44, MEMORY[0x277D0CE88]);
    v46 = OUTLINED_FUNCTION_10_3(v38, v45);
    v48 = OUTLINED_FUNCTION_17_5(v46, v47);
    *v49 = v37;
    (*(v39 + 104))(v48, *MEMORY[0x277D0CE60], v38);
    swift_willThrow();
    (*(v41 + 8))(v40, v42);
  }

LABEL_17:

  OUTLINED_FUNCTION_18();

  return v50();
}

uint64_t sub_227B725C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(a5 + 16) + **(a5 + 16));
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_227B72704;
  v7 = OUTLINED_FUNCTION_82();

  return v9(v7);
}

uint64_t sub_227B72704()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_115();

  return v4(v0);
}

uint64_t sub_227B727E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_227B72840(uint64_t a1)
{
  result = sub_227B72868();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227B72868()
{
  result = qword_280E7CA40[0];
  if (!qword_280E7CA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E7CA40);
  }

  return result;
}

uint64_t sub_227B728BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_227B72914(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_227B7296C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_14_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

uint64_t sub_227B729D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *(v14 + 96) = a13;
  *(v14 + 104) = v13;
  *(v14 + 80) = a11;
  *(v14 + 88) = a12;
  *(v14 + 137) = a10;
  *(v14 + 136) = a8;
  *(v14 + 64) = a7;
  *(v14 + 72) = a9;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_49_2(v15, v16, v17);
}

uint64_t sub_227B72A24()
{
  OUTLINED_FUNCTION_166();
  v1 = *(v0 + 96);
  v2 = *(v0 + 137);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 136);
  v6 = *(v0 + 56);
  v12 = *(v0 + 40);
  v13 = *(v0 + 80);
  v11 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  *(v7 + 48) = v3;
  *(v7 + 56) = v2 & 1;
  *(v7 + 64) = v6;
  *(v7 + 72) = v4;
  *(v7 + 80) = v5 & 1;
  *(v7 + 88) = v13;
  *(v7 + 104) = v1;
  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  sub_227D4B758();
  OUTLINED_FUNCTION_133();
  *v8 = v9;
  v8[1] = sub_227B72B4C;
  OUTLINED_FUNCTION_56_2();

  return sub_227B4CC14();
}

uint64_t sub_227B72B4C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227B72C68()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B72CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, char a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  *(v12 + 104) = a12;
  *(v12 + 88) = a11;
  *(v12 + 265) = a10;
  *(v12 + 72) = a9;
  *(v12 + 264) = v13;
  *(v12 + 56) = v14;
  *(v12 + 64) = v15;
  *(v12 + 40) = v16;
  *(v12 + 48) = v17;
  OUTLINED_FUNCTION_41_2(v18, v19, v20);
  v21 = sub_227D4B868();
  *(v12 + 112) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v12 + 120) = v22;
  *(v12 + 128) = OUTLINED_FUNCTION_30();
  v23 = sub_227D4BFB8();
  OUTLINED_FUNCTION_5(v23);
  *(v12 + 136) = OUTLINED_FUNCTION_30();
  v24 = sub_227D4BFD8();
  *(v12 + 144) = v24;
  OUTLINED_FUNCTION_10_0(v24);
  *(v12 + 152) = v25;
  v26 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_85_3(v26);
  v27 = sub_227D4BF98();
  *(v12 + 168) = v27;
  OUTLINED_FUNCTION_10_0(v27);
  *(v12 + 176) = v28;
  *(v12 + 184) = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_5(v29);
  *(v12 + 192) = OUTLINED_FUNCTION_30();
  v30 = sub_227D4BFF8();
  OUTLINED_FUNCTION_5(v30);
  *(v12 + 200) = OUTLINED_FUNCTION_30();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD8, &qword_227D50A60);
  OUTLINED_FUNCTION_5(v31);
  *(v12 + 208) = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F20, &qword_227D50828);
  OUTLINED_FUNCTION_5(v32);
  *(v12 + 216) = OUTLINED_FUNCTION_30();
  v33 = sub_227D4B668();
  *(v12 + 224) = v33;
  OUTLINED_FUNCTION_10_0(v33);
  *(v12 + 232) = v34;
  *(v12 + 240) = OUTLINED_FUNCTION_30();
  v35 = OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_49_2(v35, v36, v37);
}

uint64_t sub_227B72F28()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 264);
  v3 = sub_227D4AEA8();
  v6 = OUTLINED_FUNCTION_57_1(v1, v4, v5, v3);
  if (v2)
  {
    goto LABEL_4;
  }

  v9 = *(v0 + 64);
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x282163F08](v6, v7, v8);
  }

LABEL_4:
  if ((*(v0 + 265) & 1) == 0)
  {
    sub_227D4DC28();
  }

  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v22 = *(v0 + 224);
  v12 = *(v0 + 208);
  v21 = *(v0 + 192);
  v13 = sub_227D4B928();
  OUTLINED_FUNCTION_57_1(v12, v14, v15, v13);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B658();
  (*(v11 + 16))(v21, v10, v22);
  v16 = sub_227D4BF78();
  OUTLINED_FUNCTION_46_1(v16);
  sub_227B79688();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v17 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4CD0](v17);
  v18 = swift_task_alloc();
  *(v0 + 248) = v18;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v18 = v19;
  v18[1] = sub_227B73174;
  v8 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);

  return MEMORY[0x282163F08](v6, v7, v8);
}

uint64_t sub_227B73174()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 256) = v0;

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  sub_227B1DE58(v5, &qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B734C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  (*(v12[29] + 8))(v12[30], v12[28]);
  OUTLINED_FUNCTION_88_2(v12[30]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_227B73588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, char a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_166();
  v14 = v13;
  v34 = *(v12 + 16);
  v35 = v15;
  v33 = *(v12 + 24);
  v16 = *(v12 + 32);
  v17 = *(v12 + 40);
  v18 = *(v12 + 48);
  v19 = *(v12 + 56);
  v20 = swift_task_alloc();
  v21 = OUTLINED_FUNCTION_20_0(v20);
  *v21 = v22;
  OUTLINED_FUNCTION_87_3(v21, v23, v24, v25, v26, v27, v28, v29, v30, v31);

  return sub_227B72CC4(v14, v35, v34, v33, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_227B736A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FE8, &qword_227D50A98);
  MEMORY[0x28223BE20](v2 - 8);
  sub_227B15F50(a1, &v5 - v3, &qword_27D7E6FE8, &qword_227D50A98);
  return sub_227D4B858();
}

uint64_t sub_227B73750()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 144) = v21;
  *(v1 + 152) = v0;
  *(v1 + 112) = v19;
  *(v1 + 128) = v20;
  *(v1 + 80) = v17;
  *(v1 + 96) = v18;
  *(v1 + 192) = v16;
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F20, &qword_227D50828);
  OUTLINED_FUNCTION_5(v10);
  *(v1 + 160) = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B7380C()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
LABEL_10:
    v3 = 1;
    goto LABEL_11;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + 136) & 0xFFFFFFFFFFFFLL;
  }

  v3 = 1;
  if (v2)
  {
    v4 = *(v0 + 128);
    if (v4)
    {
      v5 = HIBYTE(v4) & 0xF;
      if ((v4 & 0x2000000000000000) == 0)
      {
        v5 = *(v0 + 120) & 0xFFFFFFFFFFFFLL;
      }

      if (v5)
      {
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4AE98();
        v3 = 0;
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v6 = *(v0 + 160);
  v7 = *(v0 + 96);
  v8 = *(v0 + 192);
  v9 = *(v0 + 72);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v17 = *(v0 + 80);
  v18 = *(v0 + 40);
  v16 = *(v0 + 56);
  v12 = sub_227D4AEA8();
  __swift_storeEnumTagSinglePayload(v6, v3, 1, v12);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  *(v13 + 32) = v6;
  *(v13 + 40) = v18;
  *(v13 + 56) = v9;
  *(v13 + 64) = v8 & 1;
  *(v13 + 72) = v16;
  *(v13 + 88) = v17;
  *(v13 + 104) = v7;
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  sub_227D4B758();
  *v14 = v0;
  v14[1] = sub_227B73A20;

  return sub_227B4CC14();
}

uint64_t sub_227B73A20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B73B20()
{
  OUTLINED_FUNCTION_6();
  sub_227B1DE58(*(v0 + 160), &qword_27D7E6F20, &qword_227D50828);

  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_227B73B94()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 160);

  sub_227B1DE58(v1, &qword_27D7E6F20, &qword_227D50828);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227B73C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_6();
  *(v12 + 112) = a12;
  *(v12 + 80) = a10;
  *(v12 + 96) = a11;
  *(v12 + 272) = a9;
  *(v12 + 64) = v13;
  *(v12 + 72) = v14;
  OUTLINED_FUNCTION_12_2(v15, v16, v17, v18, v19, v20);
  v21 = sub_227D4B868();
  *(v12 + 120) = v21;
  OUTLINED_FUNCTION_10_0(v21);
  *(v12 + 128) = v22;
  *(v12 + 136) = OUTLINED_FUNCTION_30();
  v23 = sub_227D4BFB8();
  OUTLINED_FUNCTION_5(v23);
  v24 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v24);
  v25 = sub_227D4BFD8();
  *(v12 + 152) = v25;
  OUTLINED_FUNCTION_10_0(v25);
  *(v12 + 160) = v26;
  *(v12 + 168) = OUTLINED_FUNCTION_30();
  v27 = sub_227D4BF98();
  *(v12 + 176) = v27;
  OUTLINED_FUNCTION_10_0(v27);
  *(v12 + 184) = v28;
  *(v12 + 192) = OUTLINED_FUNCTION_30();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_5(v29);
  *(v12 + 200) = OUTLINED_FUNCTION_30();
  v30 = sub_227D4BFF8();
  OUTLINED_FUNCTION_5(v30);
  *(v12 + 208) = OUTLINED_FUNCTION_30();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FD8, &qword_227D50A60);
  OUTLINED_FUNCTION_5(v31);
  *(v12 + 216) = OUTLINED_FUNCTION_30();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F20, &qword_227D50828);
  OUTLINED_FUNCTION_5(v32);
  *(v12 + 224) = OUTLINED_FUNCTION_30();
  v33 = sub_227D4B668();
  *(v12 + 232) = v33;
  OUTLINED_FUNCTION_10_0(v33);
  *(v12 + 240) = v34;
  *(v12 + 248) = OUTLINED_FUNCTION_30();
  v35 = OUTLINED_FUNCTION_16();
  return OUTLINED_FUNCTION_49_2(v35, v36, v37);
}

uint64_t sub_227B73E68()
{
  v1 = *(v0 + 272);
  v2 = sub_227B15F50(*(v0 + 48), *(v0 + 224), &qword_27D7E6F20, &qword_227D50828);
  if ((v1 & 1) == 0)
  {
    v5 = *(v0 + 72);
    if (v5 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v5 <= 0x7FFFFFFF)
    {
      goto LABEL_4;
    }

    __break(1u);
    return MEMORY[0x282163F08](v2, v3, v4);
  }

LABEL_4:
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 216);
  v17 = *(v0 + 200);
  v18 = *(v0 + 232);
  v9 = sub_227D4B928();
  OUTLINED_FUNCTION_57_1(v8, v10, v11, v9);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B658();
  (*(v7 + 16))(v17, v6, v18);
  v12 = sub_227D4BF78();
  OUTLINED_FUNCTION_46_1(v12);
  sub_227B79688();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v13 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4CD0](v13);
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v14 = v15;
  v14[1] = sub_227B740A4;
  v4 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);

  return MEMORY[0x282163F08](v2, v3, v4);
}

uint64_t sub_227B740A4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 264) = v0;

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  sub_227B1DE58(v5, &qword_27D7E6FD0, &qword_227D50A58);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B743F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  (*(v12[30] + 8))(v12[31], v12[29]);
  OUTLINED_FUNCTION_89_1(v12[31]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_227B744B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 a10, __int128 a11, uint64_t a12)
{
  OUTLINED_FUNCTION_166();
  v35 = v13;
  v15 = v14;
  v16 = v12[2];
  v17 = v12[3];
  v18 = v12[4];
  v19 = v12[5];
  v20 = v12[6];
  v21 = v12[7];
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_20_0(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_87_3(v23, v25, v26, v27, v28, v29, v30, v31, v32, v33);

  return sub_227B73C10(v15, v35, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227B745B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B745D0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  OUTLINED_FUNCTION_58_3(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 80) = v11;
  *v11 = v12;
  v11[1] = sub_227B746A8;
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B746A8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B747C4()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B74820()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_2(v1, v2, v3, v4, v5, v6);
  v7 = sub_227D4BA78();
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v9 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v9);
  v10 = sub_227D4C698();
  OUTLINED_FUNCTION_5(v10);
  v11 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v11);
  v12 = sub_227D4C6B8();
  v0[12] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[13] = v13;
  v14 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_2(v14);
  v15 = sub_227D4C678();
  v0[15] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[16] = v16;
  v0[17] = OUTLINED_FUNCTION_30();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FC0, &qword_227D50A20);
  OUTLINED_FUNCTION_5(v17);
  v18 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v18);
  v19 = sub_227D4C6D8();
  OUTLINED_FUNCTION_5(v19);
  v0[19] = OUTLINED_FUNCTION_30();
  v20 = sub_227D4BA48();
  v0[20] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v0[21] = v21;
  v0[22] = OUTLINED_FUNCTION_30();
  v22 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_227B74A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61_2();
  sub_227D4CE58();
  v23 = OUTLINED_FUNCTION_17_6();
  MEMORY[0x22AAA4780](v23);
  v24 = OUTLINED_FUNCTION_25_2();
  v25(v24);
  v26 = sub_227D4C658();
  OUTLINED_FUNCTION_34_2(v26);
  sub_227B79634();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v27 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA53B0](v27);
  v28 = swift_task_alloc();
  OUTLINED_FUNCTION_71_2(v28);
  OUTLINED_FUNCTION_133();
  *v22 = v29;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F60](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B74AF0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  sub_227B1DE58(v5, &qword_27D7E6FC0, &qword_227D50A20);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B74DFC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_16_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_8(v1);
  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_117_0();

  return sub_227B74820();
}

uint64_t sub_227B74E8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4BA58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_227B74EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B74F10()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[6] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = 0;
  v4 = swift_task_alloc();
  v0[7] = v4;
  sub_227D4B078();
  OUTLINED_FUNCTION_133();
  *v4 = v5;
  v4[1] = sub_227B74FE0;
  OUTLINED_FUNCTION_56_2();

  return sub_227B4CC14();
}

uint64_t sub_227B74FE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227B750FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B75118()
{
  OUTLINED_FUNCTION_51_0();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_67_0(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  sub_227D4B8E8();
  OUTLINED_FUNCTION_133();
  *v11 = v12;
  v11[1] = sub_227B751E4;
  OUTLINED_FUNCTION_56_2();

  return sub_227B4CC14();
}

uint64_t sub_227B751E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_18();

    return v10();
  }
}

uint64_t sub_227B75300()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B7535C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_2(v1, v2, v3, v4, v5, v6);
  v7 = sub_227D4C2D8();
  OUTLINED_FUNCTION_5(v7);
  v0[8] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4C2F8();
  v0[9] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v0[10] = v9;
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v10);
  v11 = sub_227D4C2B8();
  v0[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[13] = v12;
  v0[14] = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6FA0, &qword_227D50A10);
  OUTLINED_FUNCTION_5(v13);
  v0[15] = OUTLINED_FUNCTION_30();
  v14 = sub_227D4C318();
  OUTLINED_FUNCTION_5(v14);
  v0[16] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4B8B8();
  v0[17] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[18] = v16;
  v0[19] = OUTLINED_FUNCTION_30();
  v17 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_227B754FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_60_2();
  sub_227D4CE58();
  OUTLINED_FUNCTION_17_6();
  sub_227D4B8A8();
  v22 = OUTLINED_FUNCTION_25_2();
  v23(v22);
  v24 = sub_227D4C298();
  OUTLINED_FUNCTION_34_2(v24);
  sub_227B7958C();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v25 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4FF0](v25);
  v26 = swift_task_alloc();
  OUTLINED_FUNCTION_85_3(v26);
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v26 = v27;
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F30](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B755F8()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 168) = v0;

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  sub_227B1DE58(v5, &qword_27D7E6FA0, &qword_227D50A10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B75770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v19 = v13[21];
  v20 = v13[16];
  sub_227D4C308();
  sub_227B796DC(v20, MEMORY[0x277D0C610]);
  if (v19)
  {
    v21 = OUTLINED_FUNCTION_59();
    v22(v21);
    OUTLINED_FUNCTION_72_2(v13[19]);

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_5();
    sub_227D4C2E8();
    (*(v18 + 8))(v20, v15);
    sub_227D4C2C8();
    sub_227B796DC(v16, MEMORY[0x277D0C608]);
    (*(v17 + 8))(v12, v14);
    OUTLINED_FUNCTION_74_3();

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227B758D8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_59();
  v2(v1);
  OUTLINED_FUNCTION_72_2(*(v0 + 152));

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227B75978(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a4;
  *(v6 + 88) = a3;
  *(v6 + 24) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B75998()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_67_0(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  *(v12 + 48) = v1 & 1;
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F28, &qword_227D508A0);
  OUTLINED_FUNCTION_133();
  *v13 = v14;
  v13[1] = sub_227B75A80;
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B75A80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B75B80()
{
  OUTLINED_FUNCTION_6();
  *(v0 + 208) = v1;
  OUTLINED_FUNCTION_12_2(v2, v3, v4, v5, v6, v7);
  v8 = sub_227D4B9F8();
  *(v0 + 64) = v8;
  OUTLINED_FUNCTION_10_0(v8);
  *(v0 + 72) = v9;
  v10 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v10);
  v11 = sub_227D4C418();
  OUTLINED_FUNCTION_5(v11);
  v12 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_0(v12);
  v13 = sub_227D4C438();
  *(v0 + 96) = v13;
  OUTLINED_FUNCTION_10_0(v13);
  *(v0 + 104) = v14;
  v15 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_2(v15);
  v16 = sub_227D4C3F8();
  *(v0 + 120) = v16;
  OUTLINED_FUNCTION_10_0(v16);
  *(v0 + 128) = v17;
  *(v0 + 136) = OUTLINED_FUNCTION_30();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F88, &qword_227D509B0);
  OUTLINED_FUNCTION_5(v18);
  v19 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_86_1(v19);
  v20 = sub_227D4C458();
  OUTLINED_FUNCTION_5(v20);
  *(v0 + 152) = OUTLINED_FUNCTION_30();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F90, &qword_227D509B8);
  OUTLINED_FUNCTION_5(v21);
  v22 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_85_3(v22);
  v23 = sub_227D4B9C8();
  *(v0 + 168) = v23;
  OUTLINED_FUNCTION_10_0(v23);
  *(v0 + 176) = v24;
  *(v0 + 184) = OUTLINED_FUNCTION_30();
  v25 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v25, v26, v27);
}

uint64_t sub_227B75D8C()
{
  v2 = v0[22];
  v1 = v0[23];
  v13 = v0[21];
  v3 = v0[18];
  v4 = sub_227D4BAB8();
  OUTLINED_FUNCTION_35_2(v4);
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B9B8();
  (*(v2 + 16))(v3, v1, v13);
  v5 = sub_227D4C3D8();
  OUTLINED_FUNCTION_55_4(v3, v6, v7, v5);
  sub_227B79538();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v8 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA5130](v8);
  v9 = swift_task_alloc();
  v0[24] = v9;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v9 = v10;
  v11 = OUTLINED_FUNCTION_37_1();

  return MEMORY[0x282163F40](v11);
}

uint64_t sub_227B75EFC()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 200) = v0;

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  sub_227B1DE58(v5, &qword_27D7E6F88, &qword_227D509B0);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B7624C()
{
  OUTLINED_FUNCTION_119();
  (*(v0[22] + 8))(v0[23], v0[21]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227B76344(uint64_t a1)
{
  v2 = sub_227D4B158();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_227D4B9E8();
}

uint64_t sub_227B7640C@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x22AAA3E80]();
  *a1 = result;
  return result;
}

uint64_t sub_227B76464()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  OUTLINED_FUNCTION_41_2(v3, v4, v5);
  v6 = sub_227D4B078();
  v1[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227B76508()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_91_3();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_58_3(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 88) = v11;
  *v11 = v12;
  v11[1] = sub_227B765C8;
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B765C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B766C8()
{
  OUTLINED_FUNCTION_20();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_227D4B018();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_227B7675C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B767C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227B767D8()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F30, &qword_227D508D0);
  OUTLINED_FUNCTION_133();
  *v4 = v5;
  v4[1] = sub_227B768B4;
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227B768B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B769B4()
{
  OUTLINED_FUNCTION_6();
  v0[5] = v1;
  v0[6] = v2;
  OUTLINED_FUNCTION_41_2(v3, v4, v5);
  v6 = sub_227D4B898();
  v0[7] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v0[8] = v7;
  v0[9] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4C0F8();
  OUTLINED_FUNCTION_5(v8);
  v9 = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_79_1(v9);
  v10 = sub_227D4C118();
  v0[11] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[12] = v11;
  v0[13] = OUTLINED_FUNCTION_30();
  v12 = sub_227D4C0D8();
  v0[14] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[15] = v13;
  v0[16] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F70, &qword_227D50970);
  OUTLINED_FUNCTION_5(v14);
  v0[17] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4C138();
  OUTLINED_FUNCTION_5(v15);
  v0[18] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F78, &qword_227D50978);
  OUTLINED_FUNCTION_5(v16);
  v0[19] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4B7F8();
  v0[20] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[21] = v18;
  v0[22] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227B76BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_74();
  v24 = v22[21];
  v23 = v22[22];
  v25 = v22[20];
  v26 = v22[17];
  v27 = sub_227D4BA88();
  OUTLINED_FUNCTION_35_2(v27);
  sub_227D4CE58();
  sub_227D4CE58();
  OUTLINED_FUNCTION_17_6();
  sub_227D4B7E8();
  (*(v24 + 16))(v26, v23, v25);
  v28 = sub_227D4C0B8();
  OUTLINED_FUNCTION_55_4(v26, v29, v30, v28);
  sub_227B794E4();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_2_9();
  v31 = OUTLINED_FUNCTION_0_7();
  MEMORY[0x22AAA4E10](v31);
  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_71_2(v32);
  OUTLINED_FUNCTION_133();
  *v23 = v33;
  v23[1] = sub_227B76D04;
  OUTLINED_FUNCTION_65();

  return MEMORY[0x282163F18](v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_227B76D04()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  v9 = OUTLINED_FUNCTION_10_4();
  v10(v9);
  sub_227B1DE58(v5, &qword_27D7E6F70, &qword_227D50970);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227B77050()
{
  OUTLINED_FUNCTION_119();
  v0 = OUTLINED_FUNCTION_89();
  v1(v0);

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227B7711C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227B77174()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F38, &qword_227D508E0);
  OUTLINED_FUNCTION_5(v4);
  v1[5] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F40, &qword_227D508E8);
  OUTLINED_FUNCTION_5(v5);
  v1[6] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6F48, &qword_227D508F0);
  OUTLINED_FUNCTION_5(v6);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4B648();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227B772A0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_78_4();
  sub_227D4CE58();
  sub_227D4AF48();
  v3 = sub_227D4AF58();
  OUTLINED_FUNCTION_55_4(v0, v4, v5, v3);
  v6 = sub_227D4B908();
  OUTLINED_FUNCTION_57_1(v1, v7, v8, v6);
  v9 = sub_227D4B918();
  OUTLINED_FUNCTION_35_2(v9);
  OUTLINED_FUNCTION_90_4();
  v10 = swift_task_alloc();
  *(v2 + 88) = v10;
  *v10 = v2;
  OUTLINED_FUNCTION_69_2(v10);
  OUTLINED_FUNCTION_117_0();

  return sub_227B77598();
}

uint64_t sub_227B77380()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = OUTLINED_FUNCTION_10_4();
  v8(v7);
  if (v0)
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_164();

    return v14(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_227B77514()
{
  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227B77598()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4B838();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227B7763C()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_227B776FC;
  OUTLINED_FUNCTION_181();

  return sub_227B4CC14();
}

uint64_t sub_227B776FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[9] = v0;

  if (!v0)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227B77814()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_15_0();

  return v0();
}