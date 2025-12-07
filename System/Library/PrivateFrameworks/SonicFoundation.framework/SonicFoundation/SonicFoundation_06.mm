uint64_t SQLExecution.integrityCheck(maximumAllowedErrors:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 49) = a2;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C51C4()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_125();
  sub_26B1A85A8(v5, *(v4 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
  if (v0)
  {
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_25_2();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_25_2();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_26B1C5330()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_125();
  sub_26B1A85A8(v5, *(v4 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (v0)
  {
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_25_2();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_25_2();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t SQLExecution.partialIntegrityCheck(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.journalMode.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108_0(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_6_20(v5);
  OUTLINED_FUNCTION_20_8(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v3[10] = v7;
  v3[7] = &type metadata for SQLDatabase.Options.JournalMode;
  v3[8] = &protocol witness table for SQLDatabase.Options.JournalMode;
  *v7 = v8;
  OUTLINED_FUNCTION_8_21(v7);
  OUTLINED_FUNCTION_115();

  return v16(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26B1C5814()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 88) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1C596C()
{
  v1 = *(v0 + 49);
  if (v1 == 6)
  {
    LOBYTE(v1) = 0;
  }

  **(v0 + 72) = v1;
  return OUTLINED_FUNCTION_22_10();
}

uint64_t SQLExecution.lockingMode.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_108_0(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_6_20(v5);
  OUTLINED_FUNCTION_20_8(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v3[10] = v7;
  v3[7] = &type metadata for SQLDatabase.Options.LockingMode;
  v3[8] = &protocol witness table for SQLDatabase.Options.LockingMode;
  *v7 = v8;
  OUTLINED_FUNCTION_8_21(v7);
  OUTLINED_FUNCTION_115();

  return v16(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_26B1C5AAC()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 88) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.lockingMode(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[13] = a5;
  v6[14] = v5;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C5E9C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 128) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t SQLExecution.lockingMode(_:for:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a3;
  *(v6 + 112) = a4;
  *(v6 + 96) = a2;
  *(v6 + 49) = *a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C65B8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 144) = v0;

  OUTLINED_FUNCTION_103_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t sub_26B1C66D0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.optimize(database:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.pragmas.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_18(v3, v4);
  OUTLINED_FUNCTION_19_8();
  v5 = swift_task_alloc();
  v2[9] = v5;
  v2[7] = MEMORY[0x277D837D0];
  v2[8] = &protocol witness table for String;
  *v5 = v2;
  OUTLINED_FUNCTION_60_1(v5);
  OUTLINED_FUNCTION_115();

  return v12(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t SQLExecution.queryOnly.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t SQLExecution.queryOnly(enabled:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 49) = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.quickCheck(maximumAllowedErrors:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 152) = a4;
  *(v5 + 160) = v4;
  *(v5 + 49) = a2;
  *(v5 + 136) = a1;
  *(v5 + 144) = a3;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t sub_26B1C7300()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  OUTLINED_FUNCTION_125();
  sub_26B1A85A8(v5, *(v4 + 64), *(v2 + 72), *(v2 + 80), *(v2 + 88));
  if (v0)
  {
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_25_2();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_25_2();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t sub_26B1C746C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_125();
  sub_26B1A85A8(v5, *(v4 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  if (v0)
  {
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_25_2();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_25_2();

    return v12(v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

uint64_t SQLExecution.partialQuickCheck(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return OUTLINED_FUNCTION_2_29();
}

uint64_t SQLExecution.recursiveTriggers.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_61_1(v5);
  *(v2 + 56) = MEMORY[0x277D839B0];
  *(v2 + 64) = &protocol witness table for Bool;
  *v6 = v7;
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_115();

  return v15(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t SQLExecution.schemaVersion.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v2[11] = v5;
  v2[9] = MEMORY[0x277D83B88];
  v2[10] = &protocol witness table for Int;
  *v5 = v6;
  v5[1] = sub_26B1C346C;
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_115();

  return v14(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t SQLExecution.shrinkMemory()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_18(v3, v4);
  OUTLINED_FUNCTION_19_8();
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_26B1C7B98;
  OUTLINED_FUNCTION_115();

  return v9(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_26B1C7B98()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 64) = v0;

  OUTLINED_FUNCTION_40_0();
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();

    return v10();
  }
}

uint64_t SQLExecution.columns(for:)()
{
  OUTLINED_FUNCTION_25();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v1[33] = v5;
  sub_26B1B3564(0);
  v1[38] = v6;
  v1[39] = *(v6 - 8);
  v1[40] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1C7D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_29_5();
  sub_26B16AFCC();
  OUTLINED_FUNCTION_18_9();
  if (!(!v19 & v18))
  {
    OUTLINED_FUNCTION_41_3();
    OUTLINED_FUNCTION_51_3();
  }

  OUTLINED_FUNCTION_49_1();
  OUTLINED_FUNCTION_64_1(v20);
  if (v15 < v13)
  {
    OUTLINED_FUNCTION_10_11();
  }

  OUTLINED_FUNCTION_38_4(*(v12 + 272));
  v29 = OUTLINED_FUNCTION_98_0(v21, v22, v23, v24, v25, v26, v27, v28, v57, v59);
  OUTLINED_FUNCTION_13_15(v61, v29, v30, v31);
  if (!(v32 ^ v33 | v19))
  {
    OUTLINED_FUNCTION_4_21();
  }

  OUTLINED_FUNCTION_39_3();
  OUTLINED_FUNCTION_101_0(v34);
  v43 = OUTLINED_FUNCTION_98_0(v35, v36, v37, v38, v39, v40, v41, v42, v58, *&v60);
  OUTLINED_FUNCTION_2_26(v44, v43, v45, v46);
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v48 = *(v17 + 16);
  if (v48)
  {

    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();
    OUTLINED_FUNCTION_28_5();
    OUTLINED_FUNCTION_69_1();

    *(v12 + 224) = v14;
    *(v12 + 232) = 0;
    *(v12 + 240) = v15;
    *(v12 + 248) = v16;
    *(v12 + 256) = v48;
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v50 = MEMORY[0x277D83B88];
    *(v12 + 16) = MEMORY[0x277D83B88];
    v51 = MEMORY[0x277D837D0];
    v52 = MEMORY[0x277D839B0];
    *(v12 + 24) = MEMORY[0x277D837D0];
    *(v12 + 32) = v51;
    *(v12 + 40) = v52;
    *(v12 + 48) = &type metadata for SQLDynamicValue;
    *(v12 + 56) = v50;
    *(v12 + 64) = v50;
    *(v12 + 72) = &protocol witness table for Int;
    *(v12 + 80) = &protocol witness table for String;
    *(v12 + 88) = &protocol witness table for String;
    *(v12 + 328) = v53;
    *(v12 + 96) = &protocol witness table for Bool;
    *(v12 + 104) = &protocol witness table for SQLDynamicValue;
    *(v12 + 112) = &protocol witness table for Int;
    *(v12 + 120) = &protocol witness table for Int;
    *v53 = v54;
    v53[1] = sub_26B1C8014;
    v55 = *(v12 + 288);
    v56 = *(v12 + 280);

    return SQLExecution.results<A>(for:of:)(v12 + 128, v12 + 224, 7, v56, v12 + 16, v55, v12 + 72, v49, a9, a10, a11, a12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1C8014()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 336) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 224), *(v1 + 232), *(v1 + 240), *(v1 + 248), *(v1 + 256));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1C816C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 344) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  *(v0 + 360) = v3;
  *(v0 + 368) = v4;
  v5 = *(v0 + 160);
  *(v0 + 376) = v5;
  v6 = *(v0 + 168);
  *(v0 + 176) = v1;
  *(v0 + 169) = v6;
  *(v0 + 184) = v2;
  *(v0 + 192) = v3;
  *(v0 + 200) = v4;
  *(v0 + 208) = v5;
  *(v0 + 216) = v6;

  sub_26B1A8558(v2, v3, v4, v5, v6);
  sub_26B1B3584(0);
  sub_26B1C8C44();
  sub_26B213900();
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_26B1C82C0;

  return sub_26B1B09F8();
}

uint64_t sub_26B1C82C0()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *v6 = *v1;
  v5[49] = v0;

  v7 = v4[40];
  v8 = v4[39];
  v9 = v4[38];
  if (!v0)
  {
    v5[50] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_26B1C8430()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_126();

  OUTLINED_FUNCTION_120();

  v1 = *(v0 + 8);
  v2 = *(v0 + 400);

  return v1(v2);
}

uint64_t sub_26B1C84B4()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1C8510()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_126();

  OUTLINED_FUNCTION_120();

  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_26B1C8580(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = *(a2 + 24);
  *(v2 + 80) = *(a2 + 40);
  *(v2 + 56) = *(a2 + 48);
  *(v2 + 64) = *(a2 + 56);
  return MEMORY[0x2822009F8](sub_26B1C85C8, 0, 0);
}

uint64_t sub_26B1C85C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_116();
  a18 = v20;
  a19 = v21;
  OUTLINED_FUNCTION_10_3();
  a17 = v19;
  v22 = *(v19 + 72);
  v23 = *(v19 + 48);
  v24 = *(v19 + 40);
  sub_26B2128F0();
  sub_26B2128F0();
  sub_26B1EFD58(v24, v23, &a13);
  v25 = a13;

  if (v22 >= 4)
  {
    v26 = 0;
  }

  else
  {
    v26 = v22;
  }

  v28 = *(v19 + 56);
  v27 = *(v19 + 64);
  v29 = *(v19 + 80);
  v30 = *(v19 + 32);
  v31 = *(v19 + 16);
  *v31 = *(v19 + 24);
  *(v31 + 8) = v30;
  *(v31 + 16) = v25;
  *(v31 + 17) = v29;
  *(v31 + 24) = v28;
  *(v31 + 32) = v27 & ~(v27 >> 63);
  *(v31 + 40) = v27 < 1;
  *(v31 + 41) = v26;
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_115();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39);
}

uint64_t SQLExecution.userVersion.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_83_0();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_3_23(v3, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v2[11] = v5;
  v2[9] = MEMORY[0x277D83B88];
  v2[10] = &protocol witness table for Int;
  *v5 = v6;
  v5[1] = sub_26B1C87B8;
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_115();

  return v14(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_26B1C87B8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_1_12();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 96) = v0;

  OUTLINED_FUNCTION_85();
  sub_26B1A85A8(*(v4 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  OUTLINED_FUNCTION_12_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1C8910()
{
  if (*(v0 + 64))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 56);
  }

  return (*(v0 + 8))(v1);
}

uint64_t SQLExecution.userVersion(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return OUTLINED_FUNCTION_2_29();
}

void sub_26B1C8B84()
{
  if (!qword_2803E6CD0)
  {
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6CD0);
    }
  }
}

unint64_t sub_26B1C8BD4()
{
  result = qword_2803E7EA0;
  if (!qword_2803E7EA0)
  {
    sub_26B1C8B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7EA0);
  }

  return result;
}

unint64_t sub_26B1C8C44()
{
  result = qword_2803E7E40;
  if (!qword_2803E7E40)
  {
    sub_26B1B3584(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7E40);
  }

  return result;
}

unint64_t sub_26B1C8CA0()
{
  result = qword_2803E7EA8;
  if (!qword_2803E7EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7EA8);
  }

  return result;
}

unint64_t sub_26B1C8D04()
{
  result = qword_2803E7EB0;
  if (!qword_2803E7EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7EB0);
  }

  return result;
}

unint64_t sub_26B1C8D5C()
{
  result = qword_2803E7EB8;
  if (!qword_2803E7EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7EB8);
  }

  return result;
}

uint64_t _s9CacheSizeOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t _s9CacheSizeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_26B1C8E74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_26B1C8EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_26B1C8F04(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B1C8FF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_26B1C9038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26B1C90A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_26B1C90E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s15TableColumnInfoV10ColumnTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_5_18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(v3 + 16) = v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = a2;
  *(v3 + 48) = 0;
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = v13;
  *(v11 + 24) = v14;
  *(v11 + 32) = v15;
  *(v11 + 40) = v16;
  *(v11 + 48) = v12;
  return a11;
}

__n128 OUTLINED_FUNCTION_10_14@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __int128 a6, __int128 a7, uint64_t a8)
{
  *(v9 + 16) = v11;
  v12 = v9 + 80 * v10;
  *(v12 + 32) = v8;
  *(v12 + 40) = a1;
  result = a5;
  *(v12 + 96) = a8;
  *(v12 + 64) = a6;
  *(v12 + 80) = a7;
  *(v12 + 48) = a5;
  *(v12 + 104) = 0;
  return result;
}

void OUTLINED_FUNCTION_15_8()
{
  *(v0 + 16) = v1;
  v3 = v0 + 80 * v2;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
}

void OUTLINED_FUNCTION_30_8(uint64_t a1@<X8>)
{
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = a1;
  *(v1 + 48) = 0;
}

void OUTLINED_FUNCTION_32_6()
{

  sub_26B16AFCC();
}

void OUTLINED_FUNCTION_36_3()
{
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 88) = v1;
}

void OUTLINED_FUNCTION_38_4(uint64_t a1@<X8>)
{
  *(v2 + 16) = v4;
  v5 = v2 + 80 * v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = a1;
}

void OUTLINED_FUNCTION_41_3()
{

  sub_26B16AFCC();
}

uint64_t OUTLINED_FUNCTION_44_3()
{
}

void OUTLINED_FUNCTION_56_1()
{
  v4 = v0 + 80 * v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
}

void OUTLINED_FUNCTION_63_0(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0x20414D47415250;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_64_1@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 40) = v2;
  *(a1 + 104) = 0;

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_65_1()
{

  return sub_26B2128F0();
}

void OUTLINED_FUNCTION_73_1()
{
  *(v0 + 16) = v1;
  v5 = v0 + 80 * v4;
  *(v5 + 32) = v2 + 1;
  *(v5 + 40) = v3;
  *(v5 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_78_0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return sub_26B1A85A8(v2, v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_80_0()
{

  return sub_26B2128F0();
}

void OUTLINED_FUNCTION_82_0()
{

  sub_26B16AFCC();
}

void OUTLINED_FUNCTION_88_0()
{
  v5 = *(v2 + 96);
  *(v0 + 16) = v4;
  v6 = v0 + 80 * v3;
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
}

void OUTLINED_FUNCTION_97_0(__n128 a1, __n128 a2, __n128 a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6].n128_u8[8] = 0;
}

uint64_t OUTLINED_FUNCTION_103_0()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = v0 + 56;
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);

  return sub_26B1A85A8(v2, v3, v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_104_0()
{
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return sub_26B2128F0();
}

void OUTLINED_FUNCTION_110_0()
{
  *(v0 + 32) = v1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v0 + 40) = v2;
  *(v0 + 104) = 0;
}

uint64_t OUTLINED_FUNCTION_117()
{

  return sub_26B2128F0();
}

uint64_t OUTLINED_FUNCTION_118()
{
}

uint64_t OUTLINED_FUNCTION_119()
{

  return sub_26B2128F0();
}

uint64_t SQLDatabase.DynamicResults.columnNames.getter()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 40);
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 56) = v3;
  *v3 = v4;
  v3[1] = sub_26B1C9A8C;

  return v6(v1 + 16, &unk_26B21AC68, 0);
}

uint64_t sub_26B1C9A8C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

__n128 sub_26B1C9B7C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 40);
  *a4 = *a1;
  *(a4 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a4 + 24) = result;
  *(a4 + 40) = v4;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

__n128 sub_26B1C9BA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  *a3 = a1;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v5;
  *(a3 + 40) = v3;
  return result;
}

uint64_t sub_26B1C9BC0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1C9BE4, 0, 0);
}

uint64_t sub_26B1C9BE4()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[8];
  v2 = v0[7];
  v0[10] = (*(v1 + 16))(v2, v1);
  (*(v1 + 24))(v2, v1);
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_9_2();
  v0[11] = v3;
  *v3 = v4;
  v3[1] = sub_26B1C9CE8;

  return v6(v0 + 2, &unk_26B21AC68, 0);
}

uint64_t sub_26B1C9CE8()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 96) = v0;

  sub_26B1CCF38(v5 + 16);
  if (v0)
  {
    OUTLINED_FUNCTION_33();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_26B1C9E40@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_26B1A8558(v2, v3, v4, v5, v6);
}

uint64_t sub_26B1C9E5C(uint64_t a1)
{
  result = sub_26B1D0070();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = MEMORY[0x277D84F90];
    if (result)
    {
      v14 = MEMORY[0x277D84F90];
      sub_26B15B5E0(0, result, 0);
      v6 = 0;
      v5 = v14;
      while (1)
      {
        sub_26B1D00B4(a1, v6, &v13);
        if (v1)
        {
          break;
        }

        v7 = v13;
        v14 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          v10 = OUTLINED_FUNCTION_14_14(v8);
          sub_26B15B5E0(v10, v11, v12);
          v5 = v14;
        }

        ++v6;
        *(v5 + 16) = v9 + 1;
        *(v5 + 8 * v9 + 32) = v7;
        if (v4 == v6)
        {
          return v5;
        }
      }
    }

    return v5;
  }

  return result;
}

uint64_t sub_26B1C9F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26B1C9E5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26B1C9F84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_26B1BA060(a1);
  v3 = *(v1 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);

  return sub_26B1A85A8(v3, v4, v5, v6, v7);
}

void *sub_26B1CA00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return sub_26B1CC340(v8, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t SQLDatabase.Results.columnNames.getter()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v4 = *(v0 + 40);
  *(v1 + 16) = *v0;
  *(v1 + 24) = *(v0 + 8);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 56) = v4;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  OUTLINED_FUNCTION_5_19();
  WitnessTable = swift_getWitnessTable();
  *v5 = v1;
  v5[1] = sub_26B1CA1DC;

  return sub_26B1C9BC0(v3, WitnessTable);
}

uint64_t sub_26B1CA1DC()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_26B1CA304(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v10 = sub_26B1D0070();
  v11 = 0;
  v31 = 0;
  v29 = a3;
  v30 = a4;
  v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v26 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v27 = v10;
  v13 = 16;
  v24 = a5;
  v25 = 8 * a2;
  while (v11 != a2)
  {
    v14 = v12[v11];
    if (a2 == 1)
    {
      TupleTypeMetadata = *v12;
    }

    else
    {
      MEMORY[0x28223BE20](v10);
      for (i = 0; a2 != i; ++i)
      {
        *(&v23 + 8 * i - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = v12[i];
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a5 = v24;
    }

    sub_26B1CA544(v14, &v31, v27, v28, a2, v29, v14);
    if (v5)
    {
      if (v11)
      {
        v19 = (TupleTypeMetadata + v13);
        do
        {
          v20 = *v19;
          v19 -= 4;
          (*(*(v12[--v11] - 8) + 8))(a5 + v20);
        }

        while (v11);
      }

      return;
    }

    ++v11;
    v13 += 16;
  }

  if (a2 == 1)
  {
    v18 = *v12;
  }

  else
  {
    MEMORY[0x28223BE20](v10);
    for (j = 0; a2 != j; ++j)
    {
      *(&v23 + 8 * j - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0)) = v12[j];
    }

    v18 = swift_getTupleTypeMetadata();
  }

  __swift_storeEnumTagSinglePayload(a5, 0, 1, v18);
}

void sub_26B1CA544(uint64_t a1, int64_t *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OUTLINED_FUNCTION_10_15(a1, v39);
  if (*a2 >= a3)
  {
LABEL_7:
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_26B2136C0();
    v35 = v37;
    v36 = v38;
    v25 = MEMORY[0x26D670040](0x6574656D61726150, 0xEA00000000002072);
    OUTLINED_FUNCTION_10_15(v25, &v37);
    v34[0] = *a2;
    v26 = sub_26B213B90();
    MEMORY[0x26D670040](v26);

    MEMORY[0x26D670040](543584032, 0xE400000000000000);
    v34[0] = a7;
    swift_getMetatypeMetadata();
    v27 = sub_26B212AE0();
    MEMORY[0x26D670040](v27);

    MEMORY[0x26D670040](0xD000000000000022, 0x800000026B220770);
    v34[0] = a3;
    v28 = sub_26B213B90();
    MEMORY[0x26D670040](v28);

    MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B2207A0);
    v29 = v35;
    v30 = v36;
    sub_26B1B34BC();
    swift_allocError();
    *v31 = v29;
    v31[1] = v30;
    v32 = swift_willThrow();
    OUTLINED_FUNCTION_11_12(v32, &v35);
    OUTLINED_FUNCTION_16_10();
    if (!v24)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x28223BE20](v11);
  v12 = sub_26B1D0164(sub_26B1CCEFC);
  if (v7)
  {
    v40 = v7;
    v13 = v7;
    sub_26B162128();
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_10_15(v14, &v37);
    v15 = sub_26B1D0228(*a2);
    v17 = v16;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_26B2136C0();
    v34[4] = 0;
    v34[5] = 0xE000000000000000;
    v18 = MEMORY[0x26D670040](0x6320746C75736552, 0xEE00206E6D756C6FLL);
    OUTLINED_FUNCTION_10_15(v18, &v35);
    v19 = sub_26B213B90();
    MEMORY[0x26D670040](v19);

    MEMORY[0x26D670040](24608, 0xE200000000000000);
    MEMORY[0x26D670040](v15, v17);

    MEMORY[0x26D670040](0xD00000000000001ELL, 0x800000026B2207C0);
    v34[3] = a7;
    swift_getMetatypeMetadata();
    v20 = sub_26B212AE0();
    MEMORY[0x26D670040](v20);

    MEMORY[0x26D670040](8250, 0xE200000000000000);
    MEMORY[0x26D670040](v34[0], v34[1]);

    a7 = 0;
    a3 = 0xE000000000000000;
    sub_26B1B34BC();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    swift_willThrow();

    OUTLINED_FUNCTION_11_12(v22, v34);
    OUTLINED_FUNCTION_16_10();
    if (!v24)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_10:
  OUTLINED_FUNCTION_11_12(v12, &v37);
  OUTLINED_FUNCTION_16_10();
  if (!v24)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:

  OUTLINED_FUNCTION_11_12(v33, &v37);
  OUTLINED_FUNCTION_16_10();
  if (!v24)
  {
LABEL_14:
    *a2 = v23;
    return;
  }

  __break(1u);
}

uint64_t sub_26B1CAA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_26B1CA00C(a1, WitnessTable, a2);
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v10 = *(v2 + 40);

  return sub_26B1A85A8(v6, v7, v8, v9, v10);
}

uint64_t SQLDatabase.TransformedResults.AsyncIterator.next()()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v4;
  v5 = *(v2 + 16);
  v1[5] = v5;
  if (v5 == 1)
  {
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v7 = swift_task_alloc();
    for (i = 0; v5 != i; ++i)
    {
      *(v7 + 8 * i) = *((*(v3 + 32) & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v1[6] = TupleTypeMetadata;
  v9 = sub_26B2133E0();
  v1[7] = v9;
  v1[8] = *(v9 - 8);
  v10 = swift_task_alloc();
  v1[9] = v10;
  v1[10] = *(TupleTypeMetadata - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[14] = v11;
  v14 = type metadata accessor for SQLDatabase.AsyncResultsIterator(0, TupleTypeMetadata, v12, v13);
  *v11 = v1;
  v11[1] = sub_26B1CACC8;

  return SQLDatabase.AsyncResultsIterator.next()(v10, v14);
}

uint64_t sub_26B1CACC8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *(v4 + 120) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1CADC8()
{
  v1 = v0[9];
  v2 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v3 = v0[2];
    v4 = v0[3];
    (*(v0[8] + 8))(v1, v0[7]);
    __swift_storeEnumTagSinglePayload(v3, 1, 1, *(v4 + 24));

    OUTLINED_FUNCTION_20();

    return v5();
  }

  else
  {
    v7 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[4];
    v11 = v0[5];
    (*(v9 + 32))(v7, v1, v2);
    v12 = *(v10 + 112);
    v13 = swift_task_alloc();
    v0[16] = v13;
    (*(v9 + 16))(v8, v7, v2);
    if (v11)
    {
      v14 = 0;
      v15 = *(v0[3] + 32) & 0xFFFFFFFFFFFFFFFELL;
      v16 = 32;
      do
      {
        v17 = v0[5];
        v18 = v0[12];
        if (v17 == 1)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v0[6] + v16);
          v18 += v19;
        }

        (*(*(*(v15 + 8 * v14) - 8) + 16))(v18, v0[11] + v19);
        *(v13 + 8 * v14++) = v18;
        v16 += 16;
      }

      while (v14 != v17);
    }

    v23 = (v12 + *v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_9_2();
    v0[17] = v20;
    *v20 = v21;
    v20[1] = sub_26B1CB070;
    v22 = v0[2];

    return v23(v22, v13);
  }
}

uint64_t sub_26B1CB070()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  v3[18] = v0;

  if (!v0)
  {
    v8 = v3[11];
    v7 = v3[12];
    v9 = v3[10];
    v10 = v3[6];
    v11 = *(v9 + 8);
    v3[19] = v11;
    v3[20] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v10);
    v11(v8, v10);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_26B1CB1B8()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(v0 + 152))(*(v0 + 104), *(v0 + 48));
  __swift_storeEnumTagSinglePayload(v1, 0, 1, *(v2 + 24));

  OUTLINED_FUNCTION_20();

  return v3();
}

uint64_t sub_26B1CB26C()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CB2F0()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[12];
  v2 = v0[11];
  v3 = v0[6];
  v4 = *(v0[10] + 8);
  v4(v0[13], v3);
  v4(v1, v3);
  v4(v2, v3);

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t SQLDatabase.AsyncResultsIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1CB3F0, 0);
}

uint64_t sub_26B1CB3F0()
{
  v1 = *(v0 + 128);
  *(v0 + 136) = *v1;
  v2 = *(v1 + 8);
  *(v0 + 144) = v2;
  v3 = *(v1 + 16);
  *(v0 + 152) = v3;
  v4 = *(v1 + 24);
  *(v0 + 160) = v4;
  v5 = *(v1 + 32);
  *(v0 + 168) = v5;
  v6 = *(v1 + 40);
  *(v0 + 97) = v6;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      v7 = *(v0 + 120);
      v8 = swift_task_alloc();
      *(v0 + 200) = v8;
      v9 = *(v7 + 16);
      *(v0 + 208) = v9;
      *(v8 + 16) = v9;
      *(v8 + 24) = v1;

      v10 = swift_task_alloc();
      *(v0 + 216) = v10;
      sub_26B2133E0();
      *v10 = v0;
      v10[1] = sub_26B1CB758;
      v11 = *(v0 + 112);

      return sub_26B1D172C(v11, v2, &unk_26B21AC98, v8);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(*(v0 + 112), 1, 1, *(*(v0 + 120) + 16));
      OUTLINED_FUNCTION_20();

      return v17();
    }
  }

  else
  {
    *&v13 = v2;
    *(&v13 + 1) = v3;
    *&v14 = v4;
    *(&v14 + 1) = v5;
    *(v0 + 80) = v14;
    *(v0 + 64) = v13;
    v15 = v6 & 1;
    *(v0 + 96) = v6 & 1;

    sub_26B1A8558(v2, v3, v4, v5, v15);
    v16 = swift_task_alloc();
    *(v0 + 176) = v16;
    *v16 = v0;
    v16[1] = sub_26B1CB644;

    return sub_26B1D0334();
  }
}

uint64_t sub_26B1CB644()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (!v0)
  {
    sub_26B1A85A8(*(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 97) & 1);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1CB758()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1CB858()
{
  v1 = v0[23];
  v3 = v0[16];
  v2 = v0[17];
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);

  sub_26B1BD280(v4, v5, v6, v7, v8, v9);
  *v3 = v2;
  *(v3 + 8) = v1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 40) = 64;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[29] = v10;
  *v10 = v11;
  v10[1] = sub_26B1CB964;
  v12 = v0[15];
  v13 = v0[14];

  return SQLDatabase.AsyncResultsIterator.next()(v13, v12);
}

uint64_t sub_26B1CB964()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v3 = v2;
  *(v4 + 240) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26B1CBA64()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B1CBAC8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B1CBB28()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 97);

  sub_26B1A85A8(v4, v3, v1, v2, v5 & 1);
  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t sub_26B1CBBB8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CBC20()
{
  OUTLINED_FUNCTION_10_3();
  v13 = v0;
  v1 = *(v0 + 224);

  *(v0 + 104) = v1;
  v2 = v1;
  sub_26B162128();
  if (swift_dynamicCast() && (v3 = *(v0 + 20), v4 = *(v0 + 24), , , v9 = v3, v10 = v4, v11 = 17, v12 = 14, (static SQLError.Code.== infix(_:_:)(&v9, &v11) & 1) != 0))
  {
    v5 = *(v0 + 144);

    *(v0 + 248) = *(v5 + 16);
    *(v0 + 256) = *(v5 + 24);
    v6 = *(v0 + 136);
    sub_26B2128F0();

    return MEMORY[0x2822009F8](sub_26B1CBD84, v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_10_0();

    return v7();
  }
}

uint64_t sub_26B1CBD84()
{
  OUTLINED_FUNCTION_12();
  sub_26B1D1ADC(v0[31], v0[32]);
  v0[33] = 0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1CBE14()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  sub_26B1BD280(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 40) = 0x80;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);

  OUTLINED_FUNCTION_20();

  return v4();
}

uint64_t sub_26B1CBECC()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1CBF44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26B1760A8;

  return SQLDatabase.TransformedResults.AsyncIterator.next()();
}

uint64_t sub_26B1CBFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_26B1CC0C0;

  return MEMORY[0x282200320](a1);
}

uint64_t sub_26B1CC0C0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_10_0();

  return v7();
}

uint64_t SQLDatabase.TransformedResults.makeAsyncIterator()@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[1];
  v28 = *v2;
  v29 = v5;
  v6 = v2[3];
  v30 = v2[2];
  v31 = v6;
  v25[4] = v28;
  v25[5] = v29;
  v26 = v30;
  v27 = BYTE8(v30);

  v7 = OUTLINED_FUNCTION_13_16();
  sub_26B1A8558(v7, v8, v9, v10, v11);
  v12 = type metadata accessor for SQLDatabase.Results(0, a1[2], a1[4], a1[5]);
  OUTLINED_FUNCTION_5_19();
  WitnessTable = swift_getWitnessTable();
  sub_26B1CA00C(v12, WitnessTable, v25);

  v14 = OUTLINED_FUNCTION_13_16();
  sub_26B1A85A8(v14, v15, v16, v17, v18);
  v19 = v25[1];
  *a2 = v25[0];
  a2[1] = v19;
  v20 = v25[3];
  a2[2] = v25[2];
  a2[3] = v20;
  v21 = v29;
  a2[4] = v28;
  a2[5] = v21;
  v22 = v31;
  a2[6] = v30;
  a2[7] = v22;
  return (*(*(a1 - 1) + 16))(&v24, &v28, a1);
}

uint64_t sub_26B1CC2D4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  SQLDatabase.TransformedResults.makeAsyncIterator()(a1, a2);
  v4 = v2[1];
  v7[0] = *v2;
  v7[1] = v4;
  v5 = v2[3];
  v7[2] = v2[2];
  v7[3] = v5;
  return (*(*(a1 - 1) + 8))(v7, a1);
}

void *sub_26B1CC340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (*(a4 + 16))(a3, a4);
  (*(a4 + 24))(v14, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  v11 = v15;
  *a5 = v10;
  v12 = v14[1];
  *(a5 + 8) = v14[0];
  *(a5 + 24) = v12;
  *(a5 + 40) = v11;
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a3;
  *(a5 + 48) = sub_26B1CCF8C;
  *(a5 + 56) = result;
  return result;
}

uint64_t sub_26B1CC440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26B1CC460, a2, 0);
}

uint64_t sub_26B1CC460()
{
  OUTLINED_FUNCTION_10_3();
  sub_26B1AECD0(v0[3], sub_26B1CCF20);
  v1 = v0[4];
  v2 = *(v0[5] + 48);

  v2(v1);

  OUTLINED_FUNCTION_20();

  return v4();
}

uint64_t sub_26B1CC548(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B178E9C;

  return SQLDatabase.AsyncResultsIterator.next()(a1, a2);
}

uint64_t sub_26B1CC5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  *v6 = v4;
  v6[1] = sub_26B1CCFC4;

  return MEMORY[0x282200320](a1);
}

uint64_t sub_26B1CC6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_2_13(sub_26B1CC6DC, a2);
}

uint64_t sub_26B1CC6DC()
{
  result = sub_26B1D1CF0();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = MEMORY[0x277D84F90];
    if (result)
    {
      v12 = MEMORY[0x277D84F90];
      sub_26B15B06C();
      v4 = 0;
      v3 = v12;
      do
      {
        v5 = sub_26B1D0228(v4);
        v7 = v6;
        v9 = *(v12 + 16);
        v8 = *(v12 + 24);
        if (v9 >= v8 >> 1)
        {
          OUTLINED_FUNCTION_14_14(v8);
          sub_26B15B06C();
        }

        ++v4;
        *(v12 + 16) = v9 + 1;
        v10 = v12 + 16 * v9;
        *(v10 + 32) = v5;
        *(v10 + 40) = v7;
      }

      while (v2 != v4);
    }

    **(v0 + 16) = v3;
    OUTLINED_FUNCTION_20();

    return v11();
  }

  return result;
}

uint64_t sub_26B1CC804()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_26B1760A8;

  return sub_26B1CC440(v7, v5, v3, v8);
}

unint64_t sub_26B1CC8D8(uint64_t a1)
{
  result = sub_26B1CC900();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26B1CC900()
{
  result = qword_2803E7EC0;
  if (!qword_2803E7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7EC0);
  }

  return result;
}

unint64_t sub_26B1CC958()
{
  result = qword_2803E7EC8[0];
  if (!qword_2803E7EC8[0])
  {
    sub_26B1B3908(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E7EC8);
  }

  return result;
}

uint64_t sub_26B1CC9B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
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

uint64_t sub_26B1CCA54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1CCA90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26B1CCAD0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26B1CCB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1CCB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_15SonicFoundation11SQLDatabaseC20AsyncResultsIteratorV0E5State33_40409F98CFCA1405C2FD9D04AE7D9ADCLLOy_q_q_Qp_t_G(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_26B1CCBD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_26B1CCC18(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_26B1CCC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1CCCCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_26B1CCD0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B1CCD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_26B1CCD98(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 41))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 40) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
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

uint64_t sub_26B1CCE04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_26B1CCE9C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_15(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return swift_task_alloc();
}

void sub_26B1CD064(int a1@<W0>, uint64_t a2@<X8>)
{
  if ((*v2 & a1) != 0)
  {
    *v2 &= ~a1;
  }

  OUTLINED_FUNCTION_7_16(a2);
}

uint64_t sub_26B1CD084@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_26B1CD0C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

uint64_t sub_26B1CD168@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
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

uint64_t sub_26B1CD1C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_26B1CD218(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_26B212AD0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[3];
  v20[0] = v1[2];
  v20[1] = v10;
  sub_26B2128F0();
  sub_26B212AC0();
  sub_26B14FCC8();
  v11 = sub_26B2134C0();
  (*(v6 + 8))(v9, v4);

  v13 = v2[4];
  if (v13 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v14 = v2[5];
  if (v14)
  {
    v15 = 2049;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    v16 = 526337;
  }

  else
  {
    v16 = 524289;
  }

  if ((v14 & 2) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v11)
  {
    v18 = (v11 + 32);
  }

  else
  {
    v18 = 0;
  }

  function_v2 = sqlite3_create_function_v2(a1, v18, v13, v17, v2, sub_26B1CD7E0, 0, 0, sub_26B1CD7F0);

  return function_v2;
}

uint64_t sub_26B1CD49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SQLDatabase.ScalarFunctionOptions.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26B1CD4DC@<X0>(uint64_t *a1@<X8>)
{
  result = SQLDatabase.ScalarFunctionOptions.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_26B1CD514(sqlite3_context *a1, int a2, uint64_t *a3)
{
  v6 = sub_26B212AD0();
  MEMORY[0x28223BE20](v6);
  if (!a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = sqlite3_user_data(a1);
  if (v7)
  {
    v8 = v7;

    if ((a2 & 0x80000000) == 0)
    {
      v10 = MEMORY[0x277D84F90];
      if (!a2)
      {
LABEL_13:
        v8[6](&v19, v9, v10);

        v16 = v20;
        v17 = v21;
        __swift_project_boxed_opaque_existential_1(&v19, v20);
        (*(v17 + 16))(a1, v16, v17);

        __swift_destroy_boxed_opaque_existential_1(&v19);
        return;
      }

      v18 = a1;
      v11 = a2;
      v19 = MEMORY[0x277D84F90];
      sub_26B15B600(0, a2, 0);
      v10 = v19;
      v12 = a3;
      while (v11)
      {
        if (!a3)
        {
          goto LABEL_17;
        }

        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_16;
        }

        v19 = v10;
        v15 = *(v10 + 16);
        v14 = *(v10 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_26B15B600(v14 > 1, v15 + 1, 1);
          v10 = v19;
        }

        *(v10 + 16) = v15 + 1;
        *(v10 + 8 * v15 + 32) = v13;
        ++v12;
        if (!--v11)
        {
          a1 = v18;
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_26B1CD7E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26B1CD7F4()
{

  return v0;
}

uint64_t sub_26B1CD81C()
{
  sub_26B1CD7F4();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t SQLDatabase.registerFunction(named:argumentCount:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[9] = a6;
  v7[10] = v6;
  v7[7] = a3;
  v7[8] = a5;
  v7[5] = a1;
  v7[6] = a2;
  v7[11] = *a4;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1CD874()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  _s14ScalarFunctionCMa();
  v9 = swift_allocObject();
  v0[12] = v9;
  v9[2] = v7;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = v1;
  v9[6] = sub_26B1CDCE0;
  v9[7] = v8;
  v12 = *(v2 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  v0[13] = v12;
  if (v12)
  {

    sub_26B2128F0();

    v9 = sub_26B1CD984;
    v10 = v12;
    v11 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1CD984()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AFC04(v0[13], v0[12]);
  v0[14] = 0;
  v1 = v0[10];

  return MEMORY[0x2822009F8](sub_26B1CDA20, v1, 0);
}

uint64_t sub_26B1CDA20()
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  OUTLINED_FUNCTION_10_16();
  *(v0 + 16) = v4;
  v5 = sub_26B213B90();
  MEMORY[0x26D670040](v5);

  sub_26B2128F0();
  MEMORY[0x26D670040]();

  v6 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
  OUTLINED_FUNCTION_13_17();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_24(isUniquelyReferenced_nonNull_native);
  *(v2 + v6) = v3;

  swift_endAccess();

  OUTLINED_FUNCTION_10_0();

  return v8();
}

uint64_t sub_26B1CDB4C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CDBB0(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = a3;
    v13 = MEMORY[0x277D84F90];
    sub_26B15B5E0(0, v3, 0);
    v4 = v13;
    v6 = (a2 + 32);
    type metadata accessor for SQLDynamicValue.Box();
    do
    {
      v7 = *v6;
      swift_allocObject();
      a1 = sub_26B1EC55C(v7);
      v8 = a1;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        a1 = sub_26B15B5E0(v9 > 1, v10 + 1, 1);
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8;
      ++v6;
      --v3;
    }

    while (v3);
    a3 = v12;
  }

  a3(a1, v4);
}

uint64_t SQLDatabase.registerFunction<each A>(named:options:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = a8;
  v9[16] = v8;
  v9[13] = a6;
  v9[14] = a7;
  v9[11] = a4;
  v9[12] = a5;
  v9[9] = a1;
  v9[10] = a2;
  v9[17] = *a3;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1CDD48()
{
  *(v0 + 64) = 0;
  if (*(v0 + 104))
  {
    v1 = 0;
    v2 = *(v0 + 112) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v3 = *(v0 + 104);
      sub_26B1CE2B0(*(v2 + 8 * v1++), (v0 + 64));
    }

    while (v1 != v3);
    v4 = *(v0 + 104);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v17 = *(v0 + 88);
  swift_beginAccess();
  v9 = *(v0 + 64);
  *(v0 + 144) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = swift_allocateMetadataPack();
  *(v10 + 32) = swift_allocateWitnessTablePack();
  *(v10 + 40) = v17;
  _s14ScalarFunctionCMa();
  v11 = swift_allocObject();
  *(v0 + 152) = v11;
  v11[2] = v8;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = v6;
  v11[6] = sub_26B1CF1B4;
  v11[7] = v10;
  v14 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
  *(v0 + 160) = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
  v15 = *(v5 + v14);
  *(v0 + 168) = v15;
  if (v15)
  {
    sub_26B2128F0();

    v11 = sub_26B1CDF08;
    v12 = v15;
    v13 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1CDF08()
{
  OUTLINED_FUNCTION_12();
  sub_26B1D1E28();
  *(v0 + 176) = 0;
  v1 = *(v0 + 128);

  return MEMORY[0x2822009F8](sub_26B1CDFA4, v1, 0);
}

uint64_t sub_26B1CDFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[16] + v3[20]);
  v3[23] = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();

    a1 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1CE024()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[22];
  sub_26B1AFC04(v0[23], v0[19]);
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[16];
    v3 = sub_26B1CE24C;
  }

  else
  {
    v4 = v0[16];

    v3 = sub_26B1CE0C0;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26B1CE0C0()
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 72);
  OUTLINED_FUNCTION_10_16();
  *(v0 + 40) = v4;
  v5 = sub_26B213B90();
  MEMORY[0x26D670040](v5);

  sub_26B2128F0();
  MEMORY[0x26D670040]();

  v6 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_scalarFunctions;
  OUTLINED_FUNCTION_13_17();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_24(isUniquelyReferenced_nonNull_native);
  *(v2 + v6) = v3;

  swift_endAccess();

  OUTLINED_FUNCTION_10_0();

  return v8();
}

uint64_t sub_26B1CE1E8()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CE24C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CE2B0(uint64_t a1, void *a2)
{
  result = swift_beginAccess();
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
  }

  return result;
}

uint64_t sub_26B1CE300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v26[2] = a4;
  v27 = a3;
  v31 = a2;
  v26[1] = a8;
  v10 = 8 * a5;
  if (a5 == 1)
  {
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    TupleTypeMetadata = *(a6 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v13 = 0;
    v11 = v14 & 0xFFFFFFFFFFFFFFFELL;
    while (a5 != v13)
    {
      *(&v26[v13] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0)) = *(v11 + 8 * v13);
      ++v13;
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v29 = v26;
  v30 = TupleTypeMetadata;
  v26[0] = *(TupleTypeMetadata - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v26;
  v34 = 0;
  result = MEMORY[0x28223BE20](v15);
  v19 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  v21 = v33 & 0xFFFFFFFFFFFFFFFELL;
  for (i = 32; ; i += 16)
  {
    if (a5 == v20)
    {
      v27(result, v19);
      return (*(v26[0] + 8))(v17, v30);
    }

    v23 = a5 == 1 ? 0 : *(v30 + i);
    v24 = &v17[v23];
    result = sub_26B1CE590(*(v11 + 8 * v20), &v34, v31, a5, v32, *(v11 + 8 * v20), v33, *(v21 + 8 * v20));
    if (v8)
    {
      break;
    }

    *&v19[8 * v20++] = v24;
  }

  if (v20)
  {
    v25 = v19 - 8;
    do
    {
      result = (*(*(*(v11 - 8 + 8 * v20) - 8) + 8))(*&v25[8 * v20]);
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_26B1CE590(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_beginAccess();
  v14 = *a2;
  if (*a2 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= *(a3 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(a8 + 16))(*(a3 + 8 * v14 + 32), a6, a8);
  if (v8)
  {
    result = swift_beginAccess();
    v15 = *a2 + 1;
    if (!__OFADD__(*a2, 1))
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  result = swift_beginAccess();
  v15 = *a2 + 1;
  if (!__OFADD__(*a2, 1))
  {
LABEL_8:
    *a2 = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t SQLDatabase.unregisterFunction(named:argumentCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1CE6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[8];
  v5 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
  v3[9] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
  v6 = *(v4 + v5);
  v3[10] = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_25();

    a1 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1CE728()
{
  OUTLINED_FUNCTION_12();
  sub_26B1D1E28();
  *(v0 + 88) = 0;
  v1 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_26B1CE7C4, v1, 0);
}

uint64_t sub_26B1CE7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[8] + v3[9]);
  v3[12] = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();
    sub_26B2128F0();

    a1 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1CE840()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];
  sub_26B1AE300(v0[12], v0[5], v0[6], v0[7]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[8];
    v3 = sub_26B1CEA68;
  }

  else
  {
    v4 = v0[8];

    v3 = sub_26B1CE8E0;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26B1CE8E0()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v0[7];
  v3 = sub_26B213B90();
  MEMORY[0x26D670040](v3);

  sub_26B2128F0();
  MEMORY[0x26D670040](95, 0xE100000000000000);

  swift_beginAccess();
  sub_26B1CEF98(v2, v1);
  swift_endAccess();

  OUTLINED_FUNCTION_10_0();

  return v4();
}

uint64_t sub_26B1CEA10()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CEA68()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1CEAC0(sqlite3 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B212AD0();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = a2;
  v18[1] = a3;
  sub_26B212AC0();
  sub_26B14FCC8();
  v14 = sub_26B2134C0();
  result = (*(v10 + 8))(v13, v8);
  if (a4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v14)
  {
    v16 = (v14 + 32);
  }

  else
  {
    v16 = 0;
  }

  function_v2 = sqlite3_create_function_v2(a1, v16, a4, 0, 0, 0, 0, 0, 0);

  return function_v2;
}

double sub_26B1CEC28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26B173934(a1, a2);
  if (v8)
  {
    v9 = v7;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_13();
    sub_26B166880();
    OUTLINED_FUNCTION_5_20();
    sub_26B2139B0();
    OUTLINED_FUNCTION_14_15();
    sub_26B165E08((*(v6 + 56) + 32 * v9), a3);
    sub_26B2139C0();
    *v4 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26B1CECEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26B16E800(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_11_13();
  sub_26B1666F4(0);
  OUTLINED_FUNCTION_5_20();
  v8 = sub_26B2139B0();
  OUTLINED_FUNCTION_12_15(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  v16 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v6);
  _s9StatementCMa();
  sub_26B166760();
  sub_26B2139C0();
  *v3 = isUniquelyReferenced_nonNull_native;
  return v16;
}

uint64_t sub_26B1CEDA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_26B16E800(a1, a2);
  if (v8)
  {
    v9 = result;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_11_13();
    sub_26B1CF3F4(0, &qword_2803E6E88, 255, sub_26B166828, MEMORY[0x277D843B8]);
    OUTLINED_FUNCTION_5_20();
    sub_26B2139B0();
    OUTLINED_FUNCTION_14_15();
    v10 = *(v6 + 56) + 16 * v9;
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    *a3 = v11;
    *(a3 + 8) = v10;
    sub_26B166828(0, v12, v13, v14);
    result = sub_26B2139C0();
    *v4 = v6;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_26B1CEEAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26B16E800(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_11_13();
  sub_26B1CF3F4(0, &qword_2803E6E68, 255, _s13TableFunctionCMa, MEMORY[0x277D843B8]);
  OUTLINED_FUNCTION_5_20();
  v8 = sub_26B2139B0();
  OUTLINED_FUNCTION_12_15(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19);
  v16 = *(*(isUniquelyReferenced_nonNull_native + 56) + 8 * v6);
  _s13TableFunctionCMa();
  sub_26B2139C0();
  *v3 = isUniquelyReferenced_nonNull_native;
  return v16;
}

uint64_t sub_26B1CEF98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26B16E800(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  sub_26B1CF3F4(0, &qword_2803E6E70, v7, _s14ScalarFunctionCMa, MEMORY[0x277D843B8]);
  sub_26B2139B0();

  v8 = *(*(v10 + 56) + 8 * v6);
  _s14ScalarFunctionCMa();
  sub_26B2139C0();
  *v3 = v10;
  return v8;
}

uint64_t sub_26B1CF094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26B16E800(a1, a2);
  v7 = v6;
  if (v6)
  {
    v8 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_26B1CF3F4(0, &qword_2803E6E58, 255, sub_26B166480, MEMORY[0x277D843B8]);
    OUTLINED_FUNCTION_5_20();
    sub_26B2139B0();

    sub_26B166690(*(v9 + 56) + 8 * v8, a3);
    sub_26B166480(0);
    result = sub_26B2139C0();
    *v3 = v9;
  }

  else
  {
    *a3 = 0;
  }

  *(a3 + 8) = (v7 & 1) == 0;
  return result;
}

unint64_t sub_26B1CF1DC()
{
  result = qword_2803E8150;
  if (!qword_2803E8150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8150);
  }

  return result;
}

unint64_t sub_26B1CF234()
{
  result = qword_2803E8158;
  if (!qword_2803E8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8158);
  }

  return result;
}

unint64_t sub_26B1CF28C()
{
  result = qword_2803E8160;
  if (!qword_2803E8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8160);
  }

  return result;
}

unint64_t sub_26B1CF2E4()
{
  result = qword_2803E8168;
  if (!qword_2803E8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8168);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLFunctionContext(_BYTE *result, int a2, int a3)
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

void sub_26B1CF3F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, MEMORY[0x277D837D0], v8, MEMORY[0x277D837E0]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_14_15()
{
}

void sub_26B1CF4B4()
{
  v3 = v0;
  if ((*(v0 + 64) & 1) == 0)
  {
    v4 = *(v0 + 56);
    v5 = v0 + 32;
    v6 = *(v0 + 32);
    v7 = *(v6 + 16);
    if (v4 < v7)
    {
      v8 = v7 - v4;
      if (__OFSUB__(v7, v4))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v1 = *v0;
      if (*v0)
      {
        v9 = *(v0 + 8);
        v2 = *(v3 + 16);
        v10 = *(v3 + 24);
        sub_26B194D18(*v3, *(v3 + 8));

        v33 = sub_26B1CF840(v8, v2, v10, v6);
        v11 = *(v33 + 16);
        if (v11)
        {
          v2 = (v33 + 48);
          do
          {
            v12 = *(v2 - 2);
            v13 = *(v2 - 1);
            v14 = *v2;
            v2 += 5;
            __dst[0] = v12;
            __dst[1] = v13;
            v35[0] = v14;
            sub_26B2128F0();

            v1(__dst, v35);

            --v11;
          }

          while (v11);
        }

        sub_26B193F8C(v1, v9);
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (*(v6 + 16) < v8)
      {
        __break(1u);
        goto LABEL_37;
      }

      sub_26B1D4DE4(v8);
      sub_26B1D4E04(v8);
    }
  }

  if ((*(v3 + 48) & 1) == 0)
  {
    v5 = *(v3 + 40);
    memcpy(__dst, v3, 0x41uLL);
    v15 = sub_26B1CF77C();
    if (v5 < v15)
    {
      v16 = v15 - v5;
      if (!__OFSUB__(v15, v5))
      {
        v2 = __dst[2];
        v1 = __dst[3];
        v5 = __dst[4];
        v17 = *(__dst[4] + 16);
        if (v17)
        {
          v18 = 0;
          v19 = v17 - 1;
          v20 = (__dst[4] + 24 * v17 + 24);
          while (1)
          {
            if ((*v20 & 1) == 0)
            {
              v21 = *(v20 - 1);
              v22 = __OFSUB__(v16, v21);
              v16 -= v21;
              if (v22)
              {
                goto LABEL_38;
              }
            }

            v20 -= 24;
            v23 = v18 + 1;
            if (v16 < 1 || v19 == v18++)
            {
              goto LABEL_24;
            }
          }
        }

LABEL_35:
        v23 = 0;
LABEL_24:
        v25 = __dst[0];
        if (__dst[0])
        {
          v26 = __dst[1];
          sub_26B194D18(__dst[0], __dst[1]);

          v27 = sub_26B1CF840(v23, v2, v1, v5);
          v28 = *(v27 + 16);
          if (v28)
          {
            v29 = (v27 + 48);
            do
            {
              v30 = *(v29 - 2);
              v31 = *(v29 - 1);
              v32 = *v29;
              v29 += 5;
              v35[0] = v30;
              v35[1] = v31;
              v34 = v32;
              sub_26B2128F0();

              v25(v35, &v34);

              --v28;
            }

            while (v28);
          }

          sub_26B193F8C(v25, v26);
        }

        if (*(v5 + 16) >= v23)
        {
          sub_26B1D4DE4(v23);
          sub_26B1D4E04(v23);
          return;
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      goto LABEL_33;
    }
  }
}

uint64_t sub_26B1CF77C()
{
  result = 0;
  v2 = *(v0 + 32);
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v6 = *(v3 - 1);
    v3 += 24;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = __OFADD__(result, v7);
    result += v7;
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_26B1CF7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v10;
  v6 = sub_26B1D2698(sub_26B1D6A34, v9, a4);
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_26B16BBC0(v6, a5);
  }
}

unint64_t sub_26B1CF840(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a4;
  if (result)
  {
    if (*(a4 + 16) >= result)
    {
      v5 = result;
    }

    else
    {
      v5 = *(a4 + 16);
    }

    v37 = MEMORY[0x277D84F90];
    v6 = result;
    result = sub_26B15B450(0, v5, 0);
    v7 = v6;
    v29 = 0;
    v30 = v4;
    v8 = 0;
    v9 = v37;
    v31 = *(v4 + 16);
    v10 = a3 + 40;
LABEL_7:
    v11 = (v10 + 16 * v8);
    v12 = 24 * v8;
    while (v8 < v31)
    {
      if (v8 >= *(a3 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_32;
      }

      v13 = *(v11 - 1);
      v14 = *v11;
      v16 = *(v4 + v12 + 32);
      v15 = *(v4 + v12 + 40);
      v17 = *(v4 + v12 + 48);
      v18 = *(v9 + 16);
      v19 = v7;
      if (v18 >= v7)
      {
        v22 = v9;
        sub_26B2128F0();

        if (v29 >= v18)
        {
          goto LABEL_34;
        }

        v23 = v9 + 40 * v29;
        ++v8;
        *(v23 + 32) = v13;
        *(v23 + 40) = v14;
        *(v23 + 48) = v16;
        *(v23 + 56) = v15;
        *(v23 + 64) = v17;

        if ((v29 + 1) < v19)
        {
          v24 = v29 + 1;
        }

        else
        {
          v24 = 0;
        }

        v29 = v24;
        v9 = v22;
        v7 = v19;
        v4 = v30;
        v10 = a3 + 40;
        goto LABEL_7;
      }

      v33 = v12;
      v34 = v11;
      v20 = *(v9 + 24);
      v35 = v18 + 1;
      sub_26B2128F0();

      if (v18 >= v20 >> 1)
      {
        result = sub_26B15B450((v20 > 1), v35, 1);
      }

      *(v9 + 16) = v35;
      v21 = v9 + 40 * v18;
      *(v21 + 32) = v13;
      *(v21 + 40) = v14;
      *(v21 + 48) = v16;
      *(v21 + 56) = v15;
      *(v21 + 64) = v17;
      v11 = v34 + 2;
      v12 = v33 + 24;
      ++v8;
      v4 = v30;
      v7 = v19;
    }

    if (!v29)
    {
      return v9;
    }

    v25 = *(v9 + 16);
    v36 = MEMORY[0x277D84F90];
    result = sub_26B15B450(0, v25, 0);
    if (v25 >= v29)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v26 = *(v9 + 16);
      if (v26 >= v29 && v26 >= v25)
      {

        sub_26B1D4CB8(v28, v9 + 32, v29, (2 * v25) | 1);
        sub_26B1D4CB8(v9, v9 + 32, 0, (2 * v29) | 1);
        return v36;
      }

      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_26B1CFB18(uint64_t a1, uint64_t a2)
{
  v5 = sub_26B1CF7BC(a1, a2, v2[2], v2[3], v2[4]);
  if (v5)
  {
  }

  sub_26B1CFB78(a1, a2);
  return v5;
}

void sub_26B1CFB78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  v25[0] = a1;
  v25[1] = a2;
  v24[2] = v7;
  v24[3] = v6;
  v24[4] = v25;
  v8 = sub_26B1D2698(sub_26B1D6A34, v24, v6);
  if ((v10 & 1) == 0)
  {
    v11 = v8;
    sub_26B1D57C4(v8, v9);

    sub_26B1D5974(v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_26B1D5A8C(a1, a2, 0);
    v20 = v19;
    v21 = v2[4];
    if (v18)
    {
      if (*(v21 + 16) >= v19)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          sub_26B1D5F40(v19, v19, v13, v15, v17 & 1);
          return;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_26B16BBC0(v19, v3[4]);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B1D579C(v21);
      v21 = v22;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if (v20 >= *(v21 + 16))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v23 = v21 + 24 * v20;
    *(v23 + 32) = v13;
    *(v23 + 40) = v15;
    *(v23 + 48) = v17 & 1;

    v3[4] = v21;
  }
}

void sub_26B1CFCE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v11 = v5[1];
  v29[0] = a4;
  v29[1] = a5;
  v28[2] = v12;
  v28[3] = v11;
  v28[4] = v29;
  v13 = sub_26B1D2698(sub_26B1D6A34, v28, v11);
  v15 = v14;
  if (v16)
  {
    if (a1)
    {
      sub_26B1D46C0(a4, a5);

      v19 = v5[2];
      v17 = v5 + 2;
      v18 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26B15B3FC(0, *(v18 + 16) + 1, 1);
        v18 = *v17;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_26B15B3FC(v21 > 1, v22 + 1, 1);
        v18 = *v17;
      }

      *(v18 + 16) = v22 + 1;
      v23 = v18 + 24 * v22;
      *(v23 + 32) = a1;
      *(v23 + 40) = a2;
      *(v23 + 48) = a3 & 1;
      *v17 = v18;
    }

    else
    {
    }
  }

  else
  {
    v24 = v13;

    if (a1)
    {
      v25 = v5[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B1D579C(v25);
        v25 = v26;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *(v25 + 16))
      {
        v27 = v25 + 24 * v24;
        *(v27 + 32) = a1;
        *(v27 + 40) = a2;
        *(v27 + 48) = a3 & 1;

        v5[2] = v25;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_26B1D57C4(v24, v15);

      sub_26B1D5974(v24);
    }
  }
}

uint64_t sub_26B1CFE9C()
{
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();
  }

  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = sqlite3_finalize(v1);
  *(v0 + 48) = 0;
  swift_weakAssign();
  if (*(v0 + 56))
  {

    sub_26B1CFE9C();
  }

  return v2;
}

uint64_t sub_26B1CFF78()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    if (*(v0 + 88) != 101)
    {
      OUTLINED_FUNCTION_3_25();
      swift_beginAccess();
      v2 = sqlite3_step(*(v0 + 48));
      *(v0 + 88) = v2;
      if (v2 != 101)
      {
        return v2;
      }
    }

    if (!*(v0 + 56))
    {
      return 101;
    }

    v3 = sub_26B1CFF78();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_26B1D00B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, sqlite3_stmt **a3@<X8>)
{
  if (*(a1 + 88) == 101 && *(a1 + 56))
  {

    sub_26B1D00B4(v6, a2, a3);
  }

  else
  {
    OUTLINED_FUNCTION_3_25();
    swift_beginAccess();
    result = *(a1 + 48);
    if (result)
    {
      return SQLDynamicValue.init(statement:index:)(a2, result, a3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1D0164(uint64_t (*a1)(void))
{
  if (*(v1 + 88) == 101 && *(v1 + 56))
  {

    sub_26B1D0164(a1);
  }

  else
  {
    OUTLINED_FUNCTION_3_25();
    swift_beginAccess();
    result = *(v1 + 48);
    if (result)
    {
      return a1();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

const char *sub_26B1D0228(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_34();
  _s10ConnectionCMa();
  sub_26B1AFB4C();
  OUTLINED_FUNCTION_2_30();
  sub_26B212F80();

  if (*(v1 + 88) == 101 && *(v1 + 56))
  {

    v4 = sub_26B1D0228(a1);

    return v4;
  }

  OUTLINED_FUNCTION_3_25();
  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sqlite3_column_name(*(v1 + 48), a1);
  if (result)
  {
    return sub_26B212C20();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26B1D0334()
{
  OUTLINED_FUNCTION_25();
  *(v1 + 80) = v0;
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *(v1 + 16) = *v2;
  *(v1 + 32) = v4;
  *(v1 + 48) = v3;
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_26B1D03DC;

  return sub_26B1D33E4();
}

uint64_t sub_26B1D03DC(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_6();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v4 + 96) = v1;

  if (!v1)
  {
    *(v4 + 104) = a1;
  }

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26B1D04F4()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  _s14StatementTokenCMa();
  swift_allocObject();

  v4 = sub_26B1D3CF0(v3);
  v5 = v4[2];
  OUTLINED_FUNCTION_15_9();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + 216);
  sub_26B166014(v1, v5);
  *(v2 + 216) = v8;
  swift_endAccess();

  OUTLINED_FUNCTION_9_14();

  return v6(v4);
}

uint64_t sub_26B1D05EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_26B1D0614, a1, 0);
}

void sub_26B1D0614()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_28_6(*(v1 + 24));
  if (!v0)
  {
    OUTLINED_FUNCTION_27_8();
    v3 = OUTLINED_FUNCTION_14_16();
    v2(v3);

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26B1D06E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26B1D070C, a1, 0);
}

void sub_26B1D070C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_28_6(*(v1 + 16));
  if (!v0)
  {
    v3 = *(v1 + 24);
    OUTLINED_FUNCTION_27_8();
    v2(v3);

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26B1D07E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_26B1D080C, a1, 0);
}

void sub_26B1D080C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_28_6(*(v1 + 32));
  if (!v0)
  {
    OUTLINED_FUNCTION_27_8();
    v3 = OUTLINED_FUNCTION_14_16();
    v2(v3);

    OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_115();

    __asm { BRAA            X3, X16 }
  }

  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26B1D08D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x2822009F8](sub_26B1D08FC, a1, 0);
}

void sub_26B1D08FC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_28_6(*(v1 + 48));
  if (!v0)
  {
    OUTLINED_FUNCTION_27_8();
    v3 = OUTLINED_FUNCTION_14_16();
    v2(v3);

    OUTLINED_FUNCTION_115();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_6_21();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_26B1D09D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1D09F4, a2);
}

uint64_t sub_26B1D09F4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_18_10();
  *(v0 + 64) = v1;
  if (!v1)
  {
    swift_endAccess();
    sub_26B1AFAF8();
    OUTLINED_FUNCTION_30_0();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_17_11(v10, v11);
    v12 = OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_24_6(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24);
    OUTLINED_FUNCTION_30_3();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_29_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_30(v3);
  OUTLINED_FUNCTION_30_3();

  return sub_26B1D05EC(v5, v6, v7);
}

uint64_t sub_26B1D0AEC()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v3;
  }

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1D0C18()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_26B1D0C78()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1D0CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1D0CF0, a2);
}

uint64_t sub_26B1D0CF0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_18_10();
  *(v0 + 64) = v1;
  if (!v1)
  {
    swift_endAccess();
    sub_26B1AFAF8();
    OUTLINED_FUNCTION_30_0();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_17_11(v10, v11);
    v12 = OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_24_6(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24);
    OUTLINED_FUNCTION_30_3();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_29_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_30(v3);
  OUTLINED_FUNCTION_30_3();

  return sub_26B1D06E4(v5, v6, v7);
}

uint64_t sub_26B1D0DE8()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v3;
  }

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26B1D0F14()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_26B1D0F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1D0F90, a2);
}

uint64_t sub_26B1D0F90()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_18_10();
  *(v0 + 64) = v1;
  if (!v1)
  {
    swift_endAccess();
    sub_26B1AFAF8();
    OUTLINED_FUNCTION_30_0();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_17_11(v10, v11);
    v12 = OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_24_6(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24);
    OUTLINED_FUNCTION_30_3();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_29_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_30(v3);
  OUTLINED_FUNCTION_30_3();

  return sub_26B1D07E4(v5, v6, v7);
}

uint64_t sub_26B1D1088()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 80) = v1;

  v6 = *(v4 + 48);
  if (v1)
  {
    v7 = sub_26B1D6A54;
  }

  else
  {
    *(v4 + 96) = v0;
    *(v4 + 88) = v3;
    v7 = sub_26B1D6A4C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B1D11B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1D11D0, a2);
}

uint64_t sub_26B1D11D0()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_18_10();
  *(v0 + 64) = v1;
  if (!v1)
  {
    swift_endAccess();
    sub_26B1AFAF8();
    OUTLINED_FUNCTION_30_0();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_17_11(v10, v11);
    v12 = OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_24_6(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24);
    OUTLINED_FUNCTION_30_3();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_29_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_30(v3);
  OUTLINED_FUNCTION_30_3();

  return sub_26B1D07E4(v5, v6, v7);
}

uint64_t sub_26B1D12C8()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 80) = v1;

  v6 = *(v4 + 48);
  if (v1)
  {
    v7 = sub_26B1D0C78;
  }

  else
  {
    *(v4 + 96) = v0;
    *(v4 + 88) = v3;
    v7 = sub_26B1D13F4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_26B1D13F4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3, v1 & 1);
}

uint64_t sub_26B1D1460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1D147C, a2);
}

uint64_t sub_26B1D147C()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_4_25();
  v1 = OUTLINED_FUNCTION_18_10();
  *(v0 + 64) = v1;
  if (!v1)
  {
    swift_endAccess();
    sub_26B1AFAF8();
    OUTLINED_FUNCTION_30_0();
    v10 = swift_allocError();
    OUTLINED_FUNCTION_17_11(v10, v11);
    v12 = OUTLINED_FUNCTION_8_22();
    OUTLINED_FUNCTION_24_6(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23, v24);
    OUTLINED_FUNCTION_30_3();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_29_6();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_25_8(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_1_30(v3);
  OUTLINED_FUNCTION_30_3();

  return sub_26B1D08D4(v5, v6, v7);
}

uint64_t sub_26B1D1574()
{
  OUTLINED_FUNCTION_30();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v1;
  v11 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v12 = v11;
  *v12 = *v1;
  *(v11 + 80) = v0;

  v13 = *(v10 + 48);
  if (v0)
  {
    v14 = sub_26B1D0C78;
  }

  else
  {
    *(v11 + 112) = v3;
    *(v11 + 88) = v5;
    *(v11 + 96) = v7;
    *(v11 + 104) = v9;
    v14 = sub_26B1D16C0;
  }

  return MEMORY[0x2822009F8](v14, v13, 0);
}

uint64_t sub_26B1D16C0()
{
  OUTLINED_FUNCTION_25();

  v1 = *(v0 + 8);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 112);

  return v1(v2, v3, v4, v5);
}

uint64_t sub_26B1D172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1D1750, v4);
}

uint64_t sub_26B1D1750()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[9];
  v2 = v0[6];
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  swift_beginAccess();
  v5 = sub_26B15CF00(v4, v3, *(v1 + 216));
  v0[10] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[7];
    swift_endAccess();
    v14 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_26B1D1904;
    v9 = v0[9];
    v10 = v0[5];

    return v14(v10, v9, v6);
  }

  else
  {
    swift_endAccess();
    sub_26B1AFAF8();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    *v12 = v4;
    v12[1] = v3;
    swift_willThrow();
    OUTLINED_FUNCTION_10_0();
    v15 = v13;
    sub_26B2128F0();

    return v15();
  }
}

uint64_t sub_26B1D1904()
{
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v0;

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B1D1A24()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1D1A80()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1D1ADC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v7 = *(v2 + 216);
  if (!*(v7 + 16))
  {
    return swift_endAccess();
  }

  v8 = sub_26B16E800(a1, a2);
  if ((v9 & 1) == 0)
  {
    return swift_endAccess();
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_endAccess();

  if ((sub_26B1D2A54() & 1) == 0)
  {
LABEL_8:
    sub_26B1AECD0(v4, sub_26B1D6A70);
    if (v3)
    {
    }

    goto LABEL_11;
  }

  sub_26B1AECD0(v4, sub_26B1D6A88);
  if (v3)
  {
  }

  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  OUTLINED_FUNCTION_15_9();
  swift_beginAccess();
  sub_26B2128F0();
  v13 = sub_26B1CFB18(v11, v12);
  swift_endAccess();

  if (v13)
  {

    goto LABEL_8;
  }

  v15 = *(v10 + 32);
  v16 = *(v10 + 40);
  OUTLINED_FUNCTION_15_9();
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  sub_26B1CFCE4(v17, 0, 1, v15, v16);
  sub_26B1CFB78(v15, v16);

  sub_26B1CF4B4();
  swift_endAccess();
LABEL_11:
  OUTLINED_FUNCTION_15_9();
  swift_beginAccess();
  sub_26B1CECEC(a1, a2);
  swift_endAccess();
}

uint64_t sub_26B1D1D34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), int (*a4)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    sub_26B212F80();

    if (*(v4 + 88) == 101 && *(v4 + 56))
    {

      v9 = a3(v8);

      return v9;
    }

    else
    {
      OUTLINED_FUNCTION_3_25();
      swift_beginAccess();
      return a4(*(v4 + 48));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D1E28()
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);

  v4 = 0;
  v5 = 32;
  while (v2 != v4)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v6 = sub_26B1CFE9C();
    v7 = v6;
    sub_26B1E26EC(v6, &v47);
    if (v48 != 1 && (v48 != 14 || v47 != 16))
    {
      OUTLINED_FUNCTION_17();
      swift_beginAccess();
      v22 = sqlite3_extended_errcode(*(v0 + 136));
      result = sqlite3_errstr(v7);
      if (result)
      {
        v23 = sub_26B212C20();
        v43 = v24;
        v44 = v23;
        result = sqlite3_errmsg(*(v0 + 136));
        if (result)
        {
          v25 = sub_26B212C20();
          v27 = v26;
          sub_26B1AFA88();
          OUTLINED_FUNCTION_30_0();
          swift_allocError();
          v29 = v28;
          *v28 = v22;
          sub_26B1E26EC(v22, &v45);
          v30 = v46;
          v29[1] = v45;
          *(v29 + 8) = v30;
          *(v29 + 2) = v44;
          *(v29 + 3) = v43;
          *(v29 + 4) = v25;
          *(v29 + 5) = v27;
          swift_willThrow();

LABEL_29:
        }

LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v5 += 24;
    ++v4;
  }

  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v9 = *(v0 + 216);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = 1 << *(*(v0 + 216) + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  result = sub_26B2128F0();
  v17 = 0;
  if (!v15)
  {
LABEL_14:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_35;
      }

      if (v18 >= v16)
      {

        v31 = *(v0 + 200);
        v32 = *(v0 + 208);
        OUTLINED_FUNCTION_15_9();
        swift_beginAccess();
        *(v0 + 200) = 0;
        *(v0 + 208) = 0;
        sub_26B1CF4B4();
        *(v0 + 200) = v31;
        *(v0 + 208) = v32;
        sub_26B1CF4B4();
        swift_endAccess();
        OUTLINED_FUNCTION_15_9();
        swift_beginAccess();
        sub_26B1D6684(0);
        sub_26B212910();
        return swift_endAccess();
      }

      v15 = *(v11 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        break;
      }
    }
  }

  while (1)
  {

    v19 = sub_26B1CFE9C();
    v20 = v19;
    sub_26B1E26EC(v19, &v45);
    if (v46 != 1 && (v46 != 14 || v45 != 16))
    {
      break;
    }

    v15 &= v15 - 1;

    if (!v15)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  v33 = sqlite3_extended_errcode(*(v0 + 136));
  result = sqlite3_errstr(v20);
  if (!result)
  {
    goto LABEL_38;
  }

  v34 = sub_26B212C20();
  v36 = v35;
  result = sqlite3_errmsg(*(v0 + 136));
  if (result)
  {
    v37 = sub_26B212C20();
    v39 = v38;
    sub_26B1AFA88();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    v41 = v40;
    *v40 = v33;
    sub_26B1E26EC(v33, &v49);
    v42 = v50;
    v41[1] = v49;
    *(v41 + 8) = v42;
    *(v41 + 2) = v34;
    *(v41 + 3) = v36;
    *(v41 + 4) = v37;
    *(v41 + 5) = v39;
    swift_willThrow();
    goto LABEL_29;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_26B1D2200()
{
  sub_26B1D698C(0, &qword_2803E8180, 255, sub_26B1D69F0, MEMORY[0x277D85A78]);
  swift_allocObject();
  result = sub_26B2141B0();
  qword_2803F29B8 = result;
  return result;
}

uint64_t sub_26B1D2284(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52[1] = *MEMORY[0x277D85DE8];
  v43 = *v5;
  v12 = sub_26B211BE0();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = MEMORY[0x277D84F90];
  swift_weakInit();
  *(v6 + 88) = 0;
  swift_weakAssign();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  v44 = a4;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v15 = sub_26B212B10();
  v16 = v15 + 32;
  v47 = v15;
  v17 = *(v15 + 16);
  v52[0] = 0;

  sub_26B2128F0();
  v48 = a5;
  v18 = a1;
  v19 = v17;
  sub_26B2128F0();
  v20 = v17;
  v21 = v49;
  sub_26B1AE070(v18, v16, v16, v20, v6, v52);
  if (v21)
  {
    swift_beginAccess();
    sqlite3_finalize(*(v6 + 48));
    swift_willThrow();
  }

  else
  {
    v49 = v14;
    if (v52[0])
    {
      v42 = v19;
      v22 = &v52[0][-v16];
      if (v22 < sub_26B212BB0())
      {
        sub_26B2128F0();
        v23 = sub_26B182460(v22, a2, a3);
        v24 = MEMORY[0x26D66FF50](v23);
        v41 = v25;

        v26 = v41;
        *(v6 + 32) = v24;
        *(v6 + 40) = v26;

        v27 = v42 - v22;
        if (__OFSUB__(v42, v22))
        {
          __break(1u);
        }

        sub_26B2128F0();
        v28 = sub_26B1823AC(v27, a2, a3);
        v29 = MEMORY[0x26D66FF50](v28);
        v31 = v30;

        v50 = v29;
        v51 = v31;
        v32 = v49;
        sub_26B211BC0();
        sub_26B14FCC8();
        v33 = sub_26B213490();
        v35 = v34;
        (*(v45 + 8))(v32, v46);

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        v37 = v44;
        if (v36)
        {
          swift_allocObject();
          v38 = v48;
          sub_26B2128F0();

          *(v6 + 56) = sub_26B1D2284(v39, v33, v35, v37, v38);
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    *(v6 + 64) = sqlite3_bind_parameter_count(*(v6 + 48));
  }

  return v6;
}

void *sub_26B1D2698(void *(*a1)(uint64_t *__return_ptr, uint64_t, void), uint64_t a2, uint64_t a3)
{
  result = a1(&v5, a3 + 32, *(a3 + 16));
  if (!v3)
  {
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D26E8(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = sub_26B211BE0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  result = MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v42 = *(a2 + 32);
  v34 = v16;
  v35 = v14;
  v32 = v2;
  v33 = v4;
  if (v42)
  {
    if (!v17)
    {
      __break(1u);
      goto LABEL_14;
    }

    sub_26B2128F0();
    v18 = v15;
    v19 = v17;
  }

  else
  {
    sub_26B2128F0();
    v18 = v14;
    v19 = v15;
  }

  v37 = v18;
  v38 = v19;
  v36 = a1;

  sub_26B211BC0();
  sub_26B14FCC8();
  v20 = sub_26B213490();
  v30 = v21;
  v22 = *(v9 + 8);
  v22(v13, v7);

  v31 = v20;
  if ((v42 & 1) == 0)
  {
    sub_26B2128F0();
    v23 = v35;
    v24 = v15;
    goto LABEL_9;
  }

  if (!v17)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_26B2128F0();
  v23 = v15;
  v24 = v17;
LABEL_9:
  v37 = v23;
  v38 = v24;
  sub_26B211BC0();
  v25 = sub_26B213490();
  v27 = v26;
  v22(v13, v7);

  swift_allocObject();
  v28 = v33;
  v29 = sub_26B1D2284(v36, v31, v30, v25, v27);
  if (v28)
  {
    sub_26B1A85A8(v35, v15, v17, v34, v42);
  }

  else
  {
    v37 = v35;
    v38 = v15;
    v39 = v17;
    v40 = v34;
    v41 = v42;
    sub_26B1D2980(&v37);

    OUTLINED_FUNCTION_26_10();
  }

  return v29;
}

uint64_t sub_26B1D2980(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    sub_26B1D2F50();
    if (v2)
    {
      sub_26B2128F0();
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
    }

    sub_26B1D3018(v1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D2A54()
{
  sub_26B2128F0();
  v1 = sub_26B212C90();

  if (v1)
  {
    return 0;
  }

  sub_26B2128F0();
  v2 = sub_26B212C90();

  if (v2)
  {
    return 0;
  }

  if (*(v0 + 56))
  {

    sub_26B1D2A54();
  }

  return 1;
}

uint64_t sub_26B1D2B10()
{
  OUTLINED_FUNCTION_3_25();
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    __break(1u);
  }

  else
  {

    swift_weakDestroy();
    v2 = *(v0 + 56);
    *(v0 + 56) = 0;

    if (v2)
    {
      do
      {

        if (!swift_isUniquelyReferenced_native())
        {
          break;
        }

        v3 = *(v2 + 56);
        swift_retain_n();

        v2 = v3;
      }

      while (v3);
    }

    return v0;
  }

  return result;
}

uint64_t sub_26B1D2BC8()
{
  sub_26B1D2B10();

  return MEMORY[0x2821FE8D8](v0, 92, 7);
}

uint64_t sub_26B1D2C20(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  v12 = *a2;
  v13 = v9;
  result = sub_26B1D2CD8(&v12, a3);
  if (!v6)
  {
    v11 = result;
    swift_beginAccess();
    result = *(v5 + 48);
    if (result)
    {
      return (*(a5 + 8))(result, v11, a4, a5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1D2CD8(uint64_t result, uint64_t a2)
{
  v3 = *result;
  if (*(result + 16) == 1)
  {
    v4 = *(result + 8);
    swift_beginAccess();
    v5 = *(v2 + 48);
    v6 = sub_26B212B10();
    v7 = sqlite3_bind_parameter_index(v5, (v6 + 32));

    if (v7 > 0)
    {
      return v7;
    }

    sub_26B2136C0();

    strcpy(v14, "Position name ");
    HIBYTE(v14[1]) = -18;
    MEMORY[0x26D670040](v3, v4);
    MEMORY[0x26D670040](0xD00000000000001DLL, 0x800000026B220960);
    v12 = v14[0];
    v11 = v14[1];
    goto LABEL_9;
  }

  v8 = __OFADD__(v3, a2);
  v3 += a2;
  if (!v8)
  {
    if (v3 < 1)
    {
      v11 = 0x800000026B220980;
      sub_26B1D68E8();
      swift_allocError();
      v12 = 0xD00000000000004ELL;
      goto LABEL_11;
    }

    if (*(v2 + 64) >= v3)
    {
      return v3;
    }

    sub_26B2136C0();

    v14[2] = 0x6E6F697469736F50;
    v14[3] = 0xEF207865646E6920;
    v14[0] = v3;
    v3 = MEMORY[0x277D83BF8];
    v9 = sub_26B213B90();
    MEMORY[0x26D670040](v9);

    MEMORY[0x26D670040](0xD00000000000001ELL, 0x800000026B2209D0);
    v14[0] = *(v2 + 64);
    v10 = sub_26B213B90();
    MEMORY[0x26D670040](v10);

    v12 = 0x6E6F697469736F50;
    v11 = 0xEF207865646E6920;
LABEL_9:
    sub_26B1D68E8();
    swift_allocError();
LABEL_11:
    *v13 = v12;
    v13[1] = v11;
    swift_willThrow();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D2F50()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    *(v0 + 72) = MEMORY[0x277D84F90];

    if (*(v0 + 56))
    {

      sub_26B1D2F50();
    }

    OUTLINED_FUNCTION_3_25();
    swift_beginAccess();
    return sqlite3_clear_bindings(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D3018(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  sub_26B2128F0();

  v6 = 0;
  v34 = *(a1 + 16);
  v24 = a1;
  for (i = a1 + 32; ; i += 88)
  {
    if (v34 == v6)
    {
      v6 = v34;
      goto LABEL_10;
    }

    sub_26B1D66EC(i, v33);
    if (v6 == v2[8])
    {
      break;
    }

    sub_26B1D66EC(v33, &v26);
    v8 = v26;
    v9 = v27;
    if (v29 == 1)
    {
    }

    sub_26B1A8E10(v28, v30);
    v11 = v31;
    v10 = v32;
    v12 = __swift_project_boxed_opaque_existential_1(v30, v31);
    v26 = v8;
    v27 = v9;
    sub_26B1D2C20(v12, &v26, a2, v11, v10);
    sub_26B1D6748(v33);
    sub_26B1D679C(v8, *(&v8 + 1), v9);
    result = __swift_destroy_boxed_opaque_existential_1(v30);
    ++v6;
    if (v3)
    {
      return result;
    }
  }

  result = sub_26B1D6748(v33);
LABEL_10:
  if (v2[7])
  {
    v13 = sub_26B1D65CC(v6, v34, v24);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    if (v18)
    {
      sub_26B213EA0();
      swift_unknownObjectRetain_n();

      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = MEMORY[0x277D84F90];
      }

      v23 = *(v22 + 16);

      if (__OFSUB__(v19 >> 1, v17))
      {
        __break(1u);
      }

      else if (v23 == (v19 >> 1) - v17)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v21)
        {
LABEL_21:
          sub_26B1D3018(v21, -v6);
        }

        v21 = MEMORY[0x277D84F90];
LABEL_20:
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    sub_26B1D4394(v13, v15, v17, v19);
    v21 = v20;
    goto LABEL_20;
  }

  return result;
}

char *sub_26B1D3268()
{
  v4 = 0;
  OUTLINED_FUNCTION_3_25();
  swift_beginAccess();
  result = sqlite3_expanded_sql(*(v0 + 48));
  if (result)
  {
    result = sub_26B212A40();
    if (v2)
    {
      v4 = result;
    }

    else
    {
      result = 0;
    }

    if (*(v0 + 56))
    {

      v3 = sub_26B1D3268();
      MEMORY[0x26D670040](v3);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D3308()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_34();
    _s10ConnectionCMa();
    sub_26B1AFB4C();
    OUTLINED_FUNCTION_2_30();
    sub_26B212F80();

    *(v0 + 88) = 0;
    if (*(v0 + 56))
    {

      sub_26B1D3308();
    }

    OUTLINED_FUNCTION_3_25();
    swift_beginAccess();
    return sqlite3_reset(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1D33E4()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  *(v1 + 200) = v0;
  v4 = sub_26B211BE0();
  *(v1 + 208) = v4;
  *(v1 + 216) = *(v4 - 8);
  *(v1 + 224) = swift_task_alloc();
  v5 = *(v3 + 16);
  *(v1 + 232) = *v3;
  *(v1 + 248) = v5;
  *(v1 + 97) = *(v3 + 32);

  return MEMORY[0x2822009F8](sub_26B1D34B8, v0, 0);
}

void sub_26B1D34B8()
{
  v56 = v0;
  if (*(v0 + 97))
  {
    v1 = *(v0 + 248);
    if (!v1)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    sub_26B2128F0();
    v2 = (v0 + 240);
  }

  else
  {
    v1 = *(v0 + 240);
    sub_26B2128F0();
    v2 = (v0 + 232);
  }

  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  *(v0 + 152) = *v2;
  *(v0 + 160) = v1;
  sub_26B211BC0();
  sub_26B14FCC8();
  v6 = sub_26B213490();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v3, v5);

  OUTLINED_FUNCTION_15_9();
  swift_beginAccess();
  v10 = sub_26B1CFB18(v6, v8);

  if (!v10)
  {
    v14 = *(v0 + 200);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 264) = Strong;
    *(v0 + 272) = *(v14 + 128);
    if (Strong)
    {
      if (*(v0 + 97) == 1)
      {
        v16 = sub_26B2128F0();
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      *(v0 + 280) = v16;
      v33 = *(v16 + 16);
      *(v0 + 288) = v33;
      if (v33)
      {
        v34 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_35_4(v34);
          if (v37)
          {
            break;
          }

          sub_26B1D66EC(v36 + 88 * v35 + 32, v0 + 16);
          if (*(v0 + 96))
          {
            sub_26B1D679C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
            *(v0 + 304) = *(v0 + 88);
            __swift_destroy_boxed_opaque_existential_1((v0 + 40));
            OUTLINED_FUNCTION_7_17();
            v50 = swift_task_alloc();
            *(v0 + 312) = v50;
            *v50 = v0;
            OUTLINED_FUNCTION_9_19(v50);
            OUTLINED_FUNCTION_38_5();

            __asm { BRAA            X2, X16 }
          }

          sub_26B1D6748(v0 + 16);
          v34 = *(v0 + 296) + 1;
          if (v34 == *(v0 + 288))
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_22:

      swift_unknownObjectRelease();
    }

    v38 = *(v0 + 97);
    v40 = *(v0 + 248);
    v39 = *(v0 + 256);
    v42 = *(v0 + 232);
    v41 = *(v0 + 240);
    _s9StatementCMa();
    *&v53 = v42;
    *(&v53 + 1) = v41;
    *&v54 = v40;
    *(&v54 + 1) = v39;
    v55 = v38;
    OUTLINED_FUNCTION_32_7();
    sub_26B1A8558(v43, v44, v45, v46, v38);

    sub_26B1D26E8(v47, &v53);
    goto LABEL_24;
  }

  v11 = *(v0 + 97);
  swift_endAccess();
  if ((v11 & 1) == 0)
  {
    v12 = *(v0 + 240);
    sub_26B2128F0();
    v13 = (v0 + 232);
    goto LABEL_13;
  }

  v12 = *(v0 + 248);
  if (v12)
  {
    sub_26B2128F0();
    v13 = (v0 + 240);
LABEL_13:
    v17 = *(v0 + 224);
    v18 = *(v0 + 200);
    v19 = *(v0 + 208);
    *(v0 + 168) = *v13;
    *(v0 + 176) = v12;
    sub_26B211BC0();
    v20 = sub_26B213490();
    v22 = v21;
    v9(v17, v19);

    OUTLINED_FUNCTION_15_9();
    swift_beginAccess();
    v24 = *(v18 + 160);
    v23 = *(v18 + 168);
    *(v0 + 184) = v20;
    *(v0 + 192) = v22;
    v25 = swift_task_alloc();
    v25[2] = v24;
    v25[3] = v23;
    v25[4] = v0 + 184;
    v26 = sub_26B1D2698(sub_26B1D684C, v25, v23);
    LOBYTE(v19) = v27;
    v29 = v28;

    if ((v19 & 1) == 0)
    {
      sub_26B1D57C4(v26, v29);

      sub_26B1D5974(v26);
    }

    v30 = *(v0 + 200);
    sub_26B1CF4B4();
    swift_endAccess();
    sub_26B1AECD0(v30, sub_26B1D6870);
    v31 = *(v0 + 97);
    v32 = *(v0 + 248);
    v53 = *(v0 + 232);
    v54 = v32;
    v55 = v31;
    sub_26B1D2980(&v53);
LABEL_24:

    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_38_5();

    __asm { BRAA            X2, X16 }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_26B1D3984()
{
  OUTLINED_FUNCTION_25();
  v2 = *v1;
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v2 + 320) = v0;

  if (v0)
  {
    v6 = *(v2 + 200);

    v7 = sub_26B1D3C80;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 200);
    v7 = sub_26B1D3A98;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

void sub_26B1D3A98()
{
  v21 = v0;

  v1 = *(v0 + 320);
  while (1)
  {
    v2 = *(v0 + 296) + 1;
    if (v2 == *(v0 + 288))
    {
      break;
    }

    OUTLINED_FUNCTION_35_4(v2);
    if (v5)
    {
      __break(1u);
      return;
    }

    sub_26B1D66EC(v4 + 88 * v3 + 32, v0 + 16);
    if (*(v0 + 96))
    {
      sub_26B1D679C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
      *(v0 + 304) = *(v0 + 88);
      __swift_destroy_boxed_opaque_existential_1((v0 + 40));
      OUTLINED_FUNCTION_7_17();
      v18 = v15;
      v16 = swift_task_alloc();
      *(v0 + 312) = v16;
      *v16 = v0;
      v17 = OUTLINED_FUNCTION_9_19(v16);

      v18(v17);
      return;
    }

    sub_26B1D6748(v0 + 16);
  }

  swift_unknownObjectRelease();
  v6 = *(v0 + 97);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  _s9StatementCMa();
  v19[0] = v10;
  v19[1] = v9;
  v19[2] = v8;
  v19[3] = v7;
  v20 = v6;
  sub_26B1A8558(v10, v9, v8, v7, v6);

  v12 = sub_26B1D26E8(v11, v19);

  OUTLINED_FUNCTION_9_14();
  if (!v1)
  {
    v13 = v12;
  }

  v14(v13);
}

uint64_t sub_26B1D3C80()
{
  OUTLINED_FUNCTION_25();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

void *sub_26B1D3CF0(uint64_t a1)
{
  _s15SonicFoundation6NanoIDV6configA2C13ConfigurationV_tcfC_0(0xD000000000000040, 0x800000026B21FCB0, 0xFuLL);
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

void *sub_26B1D3D3C()
{
  sub_26B1D698C(0, &qword_2803E6DE0, 255, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_26B213020();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v6;
  v8[6] = v5;
  swift_retain_n();
  sub_26B2128F0();
  sub_26B197B60(0, 0, v3, 0, 0, &unk_26B21B6B0, v8);

  sub_26B16239C(v3);

  return v0;
}

uint64_t sub_26B1D3E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26B1D3EC0, a4, 0);
}

uint64_t sub_26B1D3EC0()
{
  sub_26B1D1ADC(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1D3F3C()
{
  sub_26B1D3D3C();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26B1D3F98@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
  return sub_26B2128F0();
}

uint64_t sub_26B1D3FA8()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_26B1D406C;

  return sub_26B1D3E9C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26B1D406C()
{
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v2 = v1;

  OUTLINED_FUNCTION_10_0();

  return v3();
}

const char *sub_26B1D416C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[1];
  v7 = sub_26B211BE0();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_26B1D2A54() & 1) == 0)
  {
    return OUTLINED_FUNCTION_39_4();
  }

  result = OUTLINED_FUNCTION_39_4();
  if (!v3)
  {
    if (a3[4])
    {
      v14 = a3[2];
      if (!v14)
      {
        __break(1u);
        return result;
      }

      sub_26B2128F0();
    }

    else
    {
      v14 = v6;
      v15 = *a3;
      sub_26B2128F0();
      v6 = v15;
    }

    v20[1] = v6;
    v20[2] = v14;
    sub_26B211BC0();
    sub_26B14FCC8();
    v21 = sub_26B213490();
    v17 = v16;
    (*(v9 + 8))(v12, v7);

    OUTLINED_FUNCTION_15_9();
    swift_beginAccess();

    sub_26B2128F0();
    v18 = a1;
    v19 = v21;
    sub_26B1CFCE4(v18, 0, 1, v21, v17);
    sub_26B1CFB78(v19, v17);

    sub_26B1CF4B4();
    return swift_endAccess();
  }

  return result;
}

void sub_26B1D4394(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      sub_26B1D6898();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_26B1D445C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *v6;
  v13 = v12 + 32 + 24 * result;
  sub_26B15C6F0(0);
  result = swift_arrayDestroy();
  v14 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_26B173F10((v12 + 32 + 24 * a2), v15 - a2, (v13 + 24 * a3));
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v13 = a4;
    *(v13 + 8) = a5;
    *(v13 + 16) = a6 & 1;
    if (v13 + 24 < (v13 + 24 * a3))
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26B1D45A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_26B152C58((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {
      result = sub_26B2128F0();
      __break(1u);
    }
  }

  return result;
}

void sub_26B1D46C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;
  sub_26B2128F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B15B06C();
    v7 = *v6;
  }

  v10 = *(v7 + 16);
  if (v10 >= *(v7 + 24) >> 1)
  {
    sub_26B15B06C();
    v7 = *v6;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 16 * v10;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v3[1] = v7;
  v12 = *v3;
  if (!*v3)
  {
    if (v10 <= 0xE)
    {
      return;
    }

    v17 = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_25();
  swift_beginAccess();
  if (MEMORY[0x26D66F600](*(v12 + 16) & 0x3FLL) <= v10)
  {
    v17 = *(v12 + 24) & 0x3FLL;
    if (v10 <= 0xE && v17 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v19 = MEMORY[0x26D66F630](v10 + 1);
    sub_26B1D48D8(v19, v17);
    return;
  }

  sub_26B1D4818();
  if (*v3)
  {
    OUTLINED_FUNCTION_32_7();
    sub_26B1D4870(v13, v14, v15, v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B1D4818()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_26B2121F0();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_26B1D48D8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_26B1D4920(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_26B1D4920(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x26D66F630](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x26D66F640]();
    sub_26B1D4998(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_26B1D49D8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_26B214030();
        sub_26B2128F0();
        _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
        v7 = sub_26B214070();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_26B212160();

        if (v8)
        {
          while (1)
          {
            sub_26B2121C0();
          }
        }

        v7 = sub_26B2121B0();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_26B1D4B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = (a3 + 8);
  while (a4 != v7)
  {
    v9 = *(v8 - 1) == a1 && *v8 == a2;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {
      return v7;
    }

    ++v7;
    v8 += 2;
  }

  return 0;
}

uint64_t sub_26B1D4B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  result = sub_26B214070();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_26B212190();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_26B213E30())
        {
          break;
        }

        sub_26B2121C0();
        v11 = sub_26B2121A0();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_26B1D4CB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_26B15B450(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_19:
      swift_unknownObjectRelease();
      *v4 = v7;
      return;
    }

    __break(1u);
  }

  if (v12 - *(v7 + 16) < v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_26B15C684(0);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_19;
  }

  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 16) = v16;
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_26B1D4DE4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*(v1 + 8) + 16);
    v3 = v2 >= result;
    result = v2 - result;
    if (v3)
    {
      return sub_26B1D4E78(result, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D4E04(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(*v1 + 16);
  result = sub_26B1D6638(v2, -result, 0);
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26B1D5D1C(result, v2);
}

uint64_t sub_26B1D4E78(uint64_t result, uint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_26B1D5E34(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x26D66F610]())
    {
      result = sub_26B1D4818();
      v14 = *v8;
      if (*v8)
      {

        sub_26B1D4FD4((v14 + 16), v14 + 32, v8, v4, a2);

        return sub_26B1D5E34(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_26B1D5E34(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v12)
  {
    v13 = MEMORY[0x26D66F630]();
    return sub_26B1D48D8(v13, v11);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

void *sub_26B1D4FD4(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_26B1D5338(v6, v5, v8, v12, a2);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);
      sub_26B2128F0();

      sub_26B1D4B8C(v15, v16, v17 + 32, v18, v12, a2);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_26B1D5150(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_26B1D5150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_26B212160();
  sub_26B2121C0();
  if (v17)
  {
    v7 = sub_26B212170();
    v8 = a1;
    while (1)
    {
      result = sub_26B2121A0();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_26B214030();
      sub_26B2128F0();
      _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
      v11 = sub_26B214070();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_26B2121A0();
          v8 = a1;
          OUTLINED_FUNCTION_32_7();
          sub_26B212180();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_26B2121C0();
    }
  }

  OUTLINED_FUNCTION_32_7();

  return sub_26B212180();
}

uint64_t sub_26B1D5338(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= result)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x26D66F600](*a4 & 0x3FLL) / 3)
      {
        sub_26B212160();
        v24 = sub_26B2121A0();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          v14 = __OFSUB__(v24, v5);
          result = v24 - v5;
          if (v14)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_26B2121B0();
        }

        return sub_26B2121C0();
      }

      result = sub_26B18D2DC(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        sub_26B214030();
        sub_26B2128F0();
        _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
        result = sub_26B214070();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_26B212160())
        {
          while (1)
          {
            v20 = sub_26B2121A0();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_26B2121C0();
          }
        }

        result = v13 - v5;
        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        sub_26B2121B0();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x26D66F600](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < v8)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v8)
          {

            goto LABEL_40;
          }

          sub_26B214030();
          sub_26B2128F0();
          _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
          result = sub_26B214070();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_26B212160())
          {
            while (1)
            {
              v11 = sub_26B2121A0();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_26B2121C0();
            }
          }

          result = i + v5;
          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_26B2121B0();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_26B212160();
      v22 = sub_26B2121A0();
      if ((v23 & 1) == 0 && v22 < v8)
      {
        v14 = __OFADD__(v22, v5);
        result = v22 + v5;
        if (v14)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_26B2121B0();
      }

      result = sub_26B2121C0();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }

  return result;
}

void sub_26B1D57C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_26B1D5A08(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x26D66F610]())
  {
LABEL_12:
    sub_26B1D5A08(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      v13 = MEMORY[0x26D66F630](v12);
      sub_26B1D48D8(v13, v11);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_26B1D4818();
  v9 = *v3;
  if (*v3)
  {

    sub_26B1D5150(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_26B1D5338(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

      sub_26B1D5A08(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_26B1D5974(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B1D579C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_26B173F10((v3 + 24 * a1 + 56), v5 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_26B1D5A08(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B1D57B0();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_26B152C58((v3 + 16 * a1 + 48), v5 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

uint64_t sub_26B1D5A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = v8;
  v13[3] = v7;
  v13[4] = v14;
  sub_26B1D2698(sub_26B1D6A34, v13, v7);
  v11 = v10;
  if (v10)
  {
    sub_26B1D5B2C(a1, a2, a3, v9);
  }

  return v11 & 1;
}

uint64_t sub_26B1D5B2C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = result;
  v9 = (v4 + 1);
  v10 = *(v4[1] + 16);
  v11 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    result = MEMORY[0x26D66F600](*(v11 + 16) & 0x3FLL);
    if (v10 >= result)
    {
      goto LABEL_11;
    }

    result = sub_26B1D4818();
    v10 = *v5;
    if (!*v5)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v5 = *v9;

    sub_26B1D6118(a3, v5, (v10 + 16), v10 + 32);

    sub_26B212180();

    if (v5[2] < a3)
    {
      goto LABEL_23;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:
      sub_26B2128F0();
      return sub_26B1D6034(a3, a3, v8, a2);
    }

    __break(1u);
  }

  if (v10 < 0xF)
  {
    if (v10 >= a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  if (v10 < a3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_26B2128F0();
  sub_26B1D6034(a3, a3, v8, a2);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(v11 + 24) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*v9)[2];
  if (v12 || v13 >= 0x10)
  {
    v14 = MEMORY[0x26D66F630](v13);
    return sub_26B1D48D8(v14, v12);
  }

  else
  {

    *v5 = 0;
  }

  return result;
}

unint64_t sub_26B1D5D1C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = (result - a2);
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = &v8[v5];
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = &v8[v5];
  }

  else
  {
    v11 = v5;
  }

  sub_26B15B3FC(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  v12 = (v4 + 32 + 24 * v6);
  sub_26B15C6F0(0);
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v13 = *(v4 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_25;
  }

  result = sub_26B173F10((v4 + 32 + 24 * a2), v13 - a2, v12);
  v14 = *(v4 + 16);
  v15 = __OFADD__(v14, v8);
  v16 = v14 - v7;
  if (!v15)
  {
    *(v4 + 16) = v16;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_26B1D5E34(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = (result - a2);
  if (__OFSUB__(0, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (__OFADD__(v5, v8))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v5 - v7 > *(v4 + 24) >> 1)
  {
    sub_26B15B06C();
    v4 = *v2;
  }

  v10 = (v4 + 32 + 16 * v6);
  result = swift_arrayDestroy();
  if (!v7)
  {
    goto LABEL_13;
  }

  v11 = *(v4 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = sub_26B152C58((v4 + 32 + 16 * a2), v11 - a2, v10);
  v12 = *(v4 + 16);
  v13 = __OFADD__(v12, v8);
  v14 = v12 - v7;
  if (!v13)
  {
    *(v4 + 16) = v14;
LABEL_13:
    *v2 = v4;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26B1D5F40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    goto LABEL_14;
  }

  if (v13 > *(v7 + 24) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

LABEL_14:
    sub_26B15B3FC(isUniquelyReferenced_nonNull_native, v18, 1);
  }

  return sub_26B1D445C(v9, a2, 1, a3, a4, a5 & 1);
}

uint64_t sub_26B1D6034(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 24) >> 1)
  {
    sub_26B15B06C();
  }

  return sub_26B1D45A4(v8, a2, 1, a3, a4);
}

uint64_t sub_26B1D6118(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (result < (v7 >> 1))
  {
    v8 = *a3;
    v9 = 1 << *a3;
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v12 = a3[1];
    if (v12 >> 6 >= -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 + (v12 >> 6) + 1;
    if (v14 < v11)
    {
      v11 = 0;
    }

    a3[1] = a3[1] & 0x3F | ((v14 - v11) << 6);
    result = MEMORY[0x26D66F600](v8 & 0x3F);
    if (result / 3 >= v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        if (v7 >= v6)
        {

          v26 = 0;
          v27 = 1;
          while (v26 != v6)
          {
            sub_26B214030();
            sub_26B2128F0();
            _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
            result = sub_26B214070();
            if (__OFSUB__(1 << *a3, 1))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            if (sub_26B212160())
            {
              while (1)
              {
                v28 = sub_26B2121A0();
                if ((v29 & 1) == 0 && v28 == v27)
                {
                  break;
                }

                sub_26B2121C0();
              }
            }

            result = sub_26B2121A0();
            if (v30)
            {
              goto LABEL_63;
            }

            v10 = __OFSUB__(result--, 1);
            if (v10)
            {
              goto LABEL_52;
            }

            sub_26B2121B0();

            if (v26 == 0x7FFFFFFFFFFFFFFELL)
            {
              goto LABEL_53;
            }

            ++v26;
            ++v27;
          }
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    sub_26B212160();
    v15 = sub_26B2121A0();
    if ((v16 & 1) != 0 || v15 > v6)
    {
      return sub_26B2121C0();
    }

    v10 = __OFSUB__(v15, 1);
    result = v15 - 1;
    if (!v10)
    {
      sub_26B2121B0();
      return sub_26B2121C0();
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (MEMORY[0x26D66F600](*a3 & 0x3F) / 3 < (v7 + ~result))
  {
    sub_26B212160();
    v17 = sub_26B2121A0();
    if ((v18 & 1) != 0 || v17 < v6)
    {
      return sub_26B2121C0();
    }

    v10 = __OFADD__(v17, 1);
    result = v17 + 1;
    if (!v10)
    {
      sub_26B2121B0();
      return sub_26B2121C0();
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = sub_26B18D2DC(v6, a2);
  v20 = v19;
  v22 = v21 >> 1;
  while (v20 != v22)
  {
    if (v20 >= v22)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_26B214030();
    sub_26B2128F0();
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
    result = sub_26B214070();
    if (__OFSUB__(1 << *a3, 1))
    {
      goto LABEL_55;
    }

    if (sub_26B212160())
    {
      while (1)
      {
        v23 = sub_26B2121A0();
        if ((v24 & 1) == 0 && v23 == v6)
        {
          break;
        }

        sub_26B2121C0();
      }
    }

    result = sub_26B2121A0();
    if (v25)
    {
      goto LABEL_64;
    }

    v10 = __OFADD__(result++, 1);
    if (v10)
    {
      goto LABEL_56;
    }

    sub_26B2121B0();

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_57;
    }

    ++v20;
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_26B1D65CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_26B2128F0();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_26B1D6638(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_26B1D6684(uint64_t a1)
{
  if (!qword_2803E8170)
  {
    _s9StatementCMa();
    sub_26B166760();
    v1 = sub_26B212920();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E8170);
    }
  }
}

uint64_t sub_26B1D679C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26B1D67AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {

    v3 = OUTLINED_FUNCTION_37_3();
    v9 = sub_26B1D4B8C(v3, v4, v5, v6, v7, v8);
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_37_3();
    result = sub_26B1D4B00(v15, v16, v17, v18);
    v9 = result;
    v11 = v19;
    v13 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v13;
  return result;
}

void sub_26B1D6898()
{
  if (!qword_2803E7018)
  {
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7018);
    }
  }
}

unint64_t sub_26B1D68E8()
{
  result = qword_2803E8178;
  if (!qword_2803E8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8178);
  }

  return result;
}

void sub_26B1D698C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_18_10()
{
  v4 = *(v2 + 216);

  return sub_26B15CF00(v0, v1, v4);
}

uint64_t OUTLINED_FUNCTION_26_10()
{

  return sub_26B1A85A8(v4, v1, v2, v3, v0);
}

uint64_t OUTLINED_FUNCTION_27_8()
{
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return swift_endAccess();
}

const char *OUTLINED_FUNCTION_39_4()
{

  return sub_26B1AECD0(v1, v0);
}

uint64_t sub_26B1D6C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *(a8 - 8);
  v14 = MEMORY[0x28223BE20](a5);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v14, v16);
  if (v11)
  {
    return (*(v13 + 32))(a11, v16, a8);
  }

  return result;
}

uint64_t sub_26B1D6D2C(sqlite3 *a1)
{
  v2 = v1;
  v4 = sub_26B212AD0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[3];
  v15[1] = v1[2];
  v15[2] = v10;
  sub_26B2128F0();
  sub_26B212AC0();
  sub_26B14FCC8();
  v11 = sub_26B2134C0();
  (*(v6 + 8))(v9, v4);

  if (qword_2803E6AB8 != -1)
  {
    swift_once();
  }

  if (v11)
  {
    v12 = (v11 + 32);
  }

  else
  {
    v12 = 0;
  }

  swift_beginAccess();

  module_v2 = sqlite3_create_module_v2(a1, v12, &dword_2803F29C0, v2, sub_26B1DA790);
  swift_endAccess();

  return module_v2;
}

uint64_t sub_26B1D6ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x28223BE20](a5);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v10)
  {
    return (*(v12 + 32))(a10, v15, a7);
  }

  return result;
}

uint64_t sub_26B1D6FF0@<X0>(uint64_t *a1@<X8>)
{
  result = SQLVirtualTableModuleOption.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SQLTableFunctionCursorArguments.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 8 * a1);
  if (v5)
  {
    return (*(*(a4 + 8) + 16))(v5, a3);
  }

  sub_26B2136C0();

  v7 = sub_26B213B90();
  MEMORY[0x26D670040](v7);

  MEMORY[0x26D670040](544432416, 0xE400000000000000);
  v8 = sub_26B2141F0();
  MEMORY[0x26D670040](v8);

  sub_26B1B34BC();
  swift_allocError();
  *v9 = 0xD00000000000002ALL;
  v9[1] = 0x800000026B2209F0;
  return swift_willThrow();
}

uint64_t SQLIndexConstraint.columnName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t sub_26B1D72B8@<X0>(uint64_t *a1@<X8>)
{
  result = SQLIndexConstraint.Operator.rawValue.getter();
  *a1 = result;
  return result;
}

sqlite3_value *SQLIndexConstraint.decodeValue<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ppVal[1] = *MEMORY[0x277D85DE8];
  v8 = *(v3 + 24);
  v7 = *(v3 + 32);
  ppVal[0] = 0;
  if (!v7)
  {
LABEL_15:
    __break(1u);
    __break(1u);
  }

  memmove(&__dst, v7, 0x60uLL);
  v16 = 0;
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = sqlite3_vtab_rhs_value(&__dst, v8, ppVal);
  if (v10 == 12)
  {
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v12, 1, a1);
  }

  if (v10)
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000017, 0x800000026B220A20);
    v13 = sub_26B213B90();
    MEMORY[0x26D670040](v13);

    MEMORY[0x26D670040](0xD000000000000020, 0x800000026B220A40);
    sub_26B1B34BC();
    swift_allocError();
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    return swift_willThrow();
  }

  else
  {
    result = ppVal[0];
    if (ppVal[0])
    {
      result = (*(*(a2 + 8) + 16))(ppVal[0], a1);
      if (!v4)
      {
        v12 = 0;
        return __swift_storeEnumTagSinglePayload(a3, v12, 1, a1);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t SQLIndexOrderingTerm.columnName.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t SQLVirtualTableIndexQuery.constraints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SQLVirtualTableIndexQuery.orderingTerms.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SQLVirtualTableIndexQuery.usedColumns.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

char sub_26B1D76B0@<W0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v47 = a2[4];
  v5 = *(a2 + 3);
  v50 = *(a2 + 11);
  sub_26B16B360();
  v54 = v6;
  if (v4 && v3)
  {
    v7 = v6;
    v8 = 0;
    v49 = (v4 + 12 * v3);
    v9 = (v4 + 4);
    do
    {
      v11 = v9 - 4;
      v10 = *(v9 - 1);
      if (v9[1])
      {
        LOBYTE(v12) = SQLIndexConstraint.Operator.init(rawValue:)(*v9);
        if (v53 == 17)
        {

          sub_26B2136C0();

          v43 = sub_26B213B90();
          MEMORY[0x26D670040](v43);

          sub_26B1B34BC();
          swift_allocError();
          *v44 = 0xD000000000000024;
          v44[1] = 0x800000026B220B40;
          swift_willThrow();

          return v12;
        }

        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_41;
        }

        if (*(a1 + 16) <= v10)
        {
          goto LABEL_42;
        }

        v13 = (a1 + 32 + 16 * v10);
        v14 = v13[1];
        v51 = *v13;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        v17 = v7;
        sub_26B2128F0();
        if (v16 >= v15 >> 1)
        {
          sub_26B16B360();
          v17 = v19;
        }

        *(v17 + 16) = v16 + 1;
        v7 = v17;
        v18 = v17 + 40 * v16;
        *(v18 + 32) = v51;
        *(v18 + 40) = v14;
        *(v18 + 48) = v53;
        *(v18 + 49) = 1;
        *(v18 + 56) = v8;
        *(v18 + 64) = a2;
        v54 = v17;
      }

      v9 += 12;
      ++v8;
    }

    while (v11 + 12 != v49);
  }

  v20 = MEMORY[0x277D84F90];
  sub_26B16B2A8();
  v22 = v21;
  v55 = v21;
  if (!v5)
  {
    v12 = a1;
LABEL_22:
    v56 = v20;
    v33 = *(v12 + 16);
    if (!v33)
    {

LABEL_36:
      *a3 = v54;
      a3[1] = v22;
      a3[2] = v20;
      return v12;
    }

    v34 = 0;
    v35 = (v12 + 40);
    while (v34 <= 0x3F)
    {
      if ((v50 >> v34))
      {
        goto LABEL_28;
      }

LABEL_33:
      ++v34;
      v35 += 2;
      if (v33 == v34)
      {

        v22 = v55;
        goto LABEL_36;
      }
    }

    LOBYTE(v12) = a1;
    if (*(a1 + 16) < 0x3FuLL)
    {
      goto LABEL_40;
    }

    v36 = sub_26B2128F0();
    sub_26B168C58(v36);
    v20 = v56;
LABEL_28:
    v38 = *(v35 - 1);
    v37 = *v35;
    sub_26B2128F0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B16B280();
      v20 = v41;
    }

    v39 = *(v20 + 16);
    if (v39 >= *(v20 + 24) >> 1)
    {
      sub_26B16B280();
      v20 = v42;
    }

    *(v20 + 16) = v39 + 1;
    v40 = v20 + 16 * v39;
    *(v40 + 32) = v38;
    *(v40 + 40) = v37;
    v56 = v20;
    goto LABEL_33;
  }

  v12 = a1;
  if (!v47)
  {
    goto LABEL_22;
  }

  v23 = &v5[2 * v47];
  while (1)
  {
    v24 = *v5;
    if ((v24 & 0x80000000) != 0)
    {
      break;
    }

    if (*(v12 + 16) <= v24)
    {
      goto LABEL_39;
    }

    v25 = (a1 + 32 + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v5 + 4) != 0;
    v30 = *(v22 + 16);
    v29 = *(v22 + 24);
    sub_26B2128F0();
    if (v30 >= v29 >> 1)
    {
      sub_26B16B2A8();
      v22 = v32;
    }

    *(v22 + 16) = v30 + 1;
    v31 = v22 + 24 * v30;
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = v28;
    v5 += 2;
    v12 = a1;
    if (v5 == v23)
    {
      v55 = v22;
      v20 = MEMORY[0x277D84F90];
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return v12;
}

uint64_t SQLVirtualTableIndexResults.init(index:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *(a4 + 16) = a3;
  *(a4 + 24) = v4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 1;
  *(a4 + 56) = 25;
  *(a4 + 64) = 0;
  *a4 = result;
  *(a4 + 8) = a2;
  return result;
}

uint64_t SQLVirtualTableIndexResults.index.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t SQLVirtualTableIndexResults.index.setter(int a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  return result;
}

uint64_t SQLVirtualTableIndexResults.ConstraintUsage.constraint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = *(v1 + 24);
  return sub_26B2128F0();
}

uint64_t SQLVirtualTableIndexResults.ConstraintUsage.constraint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 17) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  return result;
}

uint64_t SQLVirtualTableIndexResults.cursorArguments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SQLVirtualTableIndexResults.estimatedCost.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

char *sub_26B1D7DA0(char *result)
{
  v2 = result;
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  *(result + 10) = *v1;
  if (v3)
  {
    sub_26B15FDE4(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v4;
    *(inited + 40) = v3;
    sub_26B2128F0();
    v11 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    result = sqlite3_vmprintf("%s", v11);
    *(v2 + 6) = result;
    *(v2 + 14) = 1;
  }

  v12 = 0;
  v13 = *(v5 + 16);
  v14 = (v5 + 72);
  while (v13 != v12)
  {
    if (v12 >= *(v5 + 16))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v15 = *(v2 + 4);
    if (!v15)
    {
      goto LABEL_16;
    }

    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_15;
    }

    v16 = *(v14 - 2);
    v17 = *v14;
    v14 += 48;
    v18 = v15 + 8 * v16;
    *v18 = ++v12;
    *(v18 + 4) = v17;
  }

  if ((v7 & 1) == 0)
  {
    *(v2 + 8) = v6;
  }

  *(v2 + 9) = v8;
  if (v9)
  {
    *(v2 + 20) = 1;
  }

  return result;
}

uint64_t sub_26B1D7EF4(uint64_t a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  v4 = sub_26B2133E0();
  (*(*(v4 - 8) + 8))(v1 + v2, v4);
  __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);

  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_26B1D7F7C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v10 = *(_s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a6, a7, a4) + 36);
  v11 = sub_26B2133E0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a8 + v10, a5, v11);
}

uint64_t sub_26B1D8018(uint64_t a1)
{

  *(v1 + 5) = 0;
  v3 = *(a1 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_26B2133E0();
  (*(*(v5 - 8) + 8))(&v1[v3], v5);
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, AssociatedTypeWitness);
  *(v1 + 4) = 0;

  *(v1 + 1) = 0;
  return result;
}

uint64_t sub_26B1D80D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v12 = *(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a8, a10, a4) + 44);
  swift_getAssociatedTypeWitness();
  v13 = sub_26B2133E0();
  v14 = *(*(v13 - 8) + 32);

  return v14(a9 + v12, a7, v13);
}

double sub_26B1D81A0()
{
  dword_2803F29C0 = 4;
  unk_2803F29C4 = 0;
  dword_2803F29CC = 0;
  qword_2803F29D0 = sub_26B1D8470;
  qword_2803F29D8 = sub_26B1D84EC;
  qword_2803F29E0 = sub_26B1D8558;
  unk_2803F29E8 = 0;
  qword_2803F29F0 = sub_26B1D85D4;
  qword_2803F29F8 = sub_26B1D8640;
  qword_2803F2A00 = sub_26B1D8708;
  qword_2803F2A08 = sub_26B1D8770;
  qword_2803F2A10 = sub_26B1D8784;
  qword_2803F2A18 = sub_26B1D8810;
  qword_2803F2A20 = sub_26B1D8848;
  result = 0.0;
  unk_2803F2A28 = 0u;
  unk_2803F2A38 = 0u;
  unk_2803F2A48 = 0u;
  unk_2803F2A58 = 0u;
  unk_2803F2A68 = 0u;
  unk_2803F2A78 = 0u;
  return result;
}

uint64_t sub_26B1D8278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v8 = *(a2 + 48);
  v7 = *(a2 + 56);

  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a5)
  {

    v9 = v8(v6, a5);
    sub_26B193F8C(v8, v7);

    return v9;
  }

LABEL_9:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_26B1D8474(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v5 = *(v3 + 80);

    v6 = v5(v2, a2);

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}