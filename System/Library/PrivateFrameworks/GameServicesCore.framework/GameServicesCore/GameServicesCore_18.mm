void sub_227CE2378()
{
  OUTLINED_FUNCTION_28_1();
  sub_227B274CC((v0 + 32), *(v0 + 360), *(v0 + 352));

  v1 = OUTLINED_FUNCTION_148();
  v2(v1);
  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);
  while (1)
  {
    OUTLINED_FUNCTION_282_1();
    if (v5)
    {
      break;
    }

    v6 = *(v0 + 288);
    v7 = *(v0 + 368);
    OUTLINED_FUNCTION_105_7();
    v8 = OUTLINED_FUNCTION_250_0();
    v6(v8);
    v9 = OUTLINED_FUNCTION_65_7();
    v6(v9);
    v10 = OUTLINED_FUNCTION_132_0();
    v12 = v11(v10);
    if (v12 == v7)
    {
      v13 = *(v0 + 232);
      v14 = OUTLINED_FUNCTION_106_7();
      v15(v14);
      v16 = OUTLINED_FUNCTION_39_10();
      v17(v16);
      sub_227D4A8F8();
      OUTLINED_FUNCTION_75_8();
      if (v13)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v18, v19, v20);
    }

    else
    {
      if (v12 != *(v0 + 372))
      {
        OUTLINED_FUNCTION_330_0();
        if (v5)
        {
          v44 = OUTLINED_FUNCTION_73_4();
          v45(v44);
          v46 = OUTLINED_FUNCTION_26_12();
          v47(v46);
          OUTLINED_FUNCTION_0_55();
          v48 = swift_task_alloc();
          v49 = OUTLINED_FUNCTION_208_2(v48);
          *v49 = v50;
          OUTLINED_FUNCTION_43_8(v49);
          goto LABEL_21;
        }

        if (v43 == *(v0 + 380))
        {
          OUTLINED_FUNCTION_223_1();
          v52 = OUTLINED_FUNCTION_106_7();
          v53(v52);
          v54 = OUTLINED_FUNCTION_26_12();
          v55(v54);
          OUTLINED_FUNCTION_0_55();
          v56 = swift_task_alloc();
          v57 = OUTLINED_FUNCTION_118_3(v56);
          *v57 = v58;
          OUTLINED_FUNCTION_48_9(v57);
          v51 = *(v0 + 176);
LABEL_21:
          OUTLINED_FUNCTION_53(v51);
          OUTLINED_FUNCTION_149_1();

          __asm { BRAA            X1, X16 }
        }

        v61 = *(v0 + 248);

        OUTLINED_FUNCTION_364_1();
        *(v0 + 16) = v70;
        *(v0 + 24) = v71;
        OUTLINED_FUNCTION_90_5();
        v62 = MEMORY[0x22AAA5DA0](0xD000000000000024);
        OUTLINED_FUNCTION_314_0(v62, v63, v64, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
        sub_227D49E08();
        OUTLINED_FUNCTION_1_34();
        sub_227B12A58(v65, v66);
        OUTLINED_FUNCTION_78_0();
        OUTLINED_FUNCTION_208();
        swift_allocError();
        OUTLINED_FUNCTION_230_1();

        swift_willThrow();
        v67 = *(v61 + 8);
        v68 = OUTLINED_FUNCTION_236();
        v67(v68);
        v69 = OUTLINED_FUNCTION_132_0();
        v67(v69);
LABEL_12:
        OUTLINED_FUNCTION_134_4();

        OUTLINED_FUNCTION_18();
LABEL_13:
        OUTLINED_FUNCTION_149_1();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_223_1();
      v21 = *(v0 + 208);
      v22 = OUTLINED_FUNCTION_106_7();
      v23(v22);
      v24 = OUTLINED_FUNCTION_39_10();
      v25(v24);
      sub_227D4A6A8();
      OUTLINED_FUNCTION_74_7();
      if (v21)
      {
LABEL_11:
        v37 = OUTLINED_FUNCTION_92_4();
        v38(v37);
        v39 = OUTLINED_FUNCTION_100_6();
        v40(v39);

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v26, v27, v28);
    }

    v29 = OUTLINED_FUNCTION_92_4();
    v30(v29);
    v31 = OUTLINED_FUNCTION_100_6();
    v32(v31);
  }

  v33 = *(v0 + 96);
  v34 = *(v0 + 104);
  OUTLINED_FUNCTION_184_3();
  v35 = *(v0 + 128);

  v36 = MEMORY[0x277D84FA0];
  *v35 = v33;
  v35[1] = v34;
  v35[2] = v36;
  v35[3] = v36;
  v35[4] = v36;
  v35[5] = v36;
  v35[6] = v36;
  v35[7] = &unk_283B3E320;
  OUTLINED_FUNCTION_15_0();
  goto LABEL_13;
}

uint64_t sub_227CE2868()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  (*(v0[21] + 8))(v0[23], v0[20]);
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_134_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE2924()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_134_4();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE29E0()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_121();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[13] = v6;
  v1[14] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4A488();
  v1[15] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[16] = v8;
  v1[17] = OUTLINED_FUNCTION_121();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CE2BAC()
{
  v1 = *(v0 + 16);
  if (!v1 || (v2 = *(v1 + 16), (*(v0 + 184) = v2) == 0))
  {

    OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_52();

    __asm { BRAA            X3, X16 }
  }

  sub_227CE9FEC();
  *(v0 + 192) = v3;
  *(v0 + 336) = *(*(v0 + 128) + 80);
  OUTLINED_FUNCTION_136_0();
  v9 = v1 + v8;
  v80 = *(v10 + 56);
  *(v0 + 200) = v80;
  *(v0 + 208) = v11;
  v82 = v11;
  v72 = *MEMORY[0x277D0D2D0];
  v78 = (v10 - 8);
  v68 = (v10 + 80);
  v70 = v10 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12 = MEMORY[0x277D84F90];
  v81 = (v10 + 72);
  v69 = (v10 + 72) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v74 = v1 + v8;
  v76 = v2;
  do
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 120);
    *(v0 + 216) = v70;
    v82(v13, v9, v14);
    v15 = OUTLINED_FUNCTION_127_1();
    (v82)(v15);
    *(v0 + 224) = *v81;
    *(v0 + 232) = v69;
    v16 = OUTLINED_FUNCTION_148();
    v79 = v17;
    if (v17(v16) == v72)
    {
      v18 = *(v0 + 112);
      v19 = OUTLINED_FUNCTION_375();
      v20(v19);
      OUTLINED_FUNCTION_141_4();
      v21();
      OUTLINED_FUNCTION_49_1();
      v22 = sub_227D4A6A8();
      if (v18)
      {

        v63 = OUTLINED_FUNCTION_148();
        v64(v63);
        v65 = OUTLINED_FUNCTION_113();
        v66(v65);

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_52();

        __asm { BRAA            X1, X16 }
      }

      v24 = v22;
      v25 = v23;
      v26 = OUTLINED_FUNCTION_148();
      v27(v26);
      v28 = *v78;
      v29 = OUTLINED_FUNCTION_113();
      v28(v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_21();
        v12 = sub_227B25F88(v34, v35, v36, v12);
      }

      v31 = *(v12 + 2);
      v30 = *(v12 + 3);
      if (v31 >= v30 >> 1)
      {
        v37 = OUTLINED_FUNCTION_12(v30);
        v12 = sub_227B25F88(v37, v31 + 1, 1, v12);
      }

      *(v12 + 2) = v31 + 1;
      v32 = &v12[16 * v31];
      *(v32 + 4) = v24;
      *(v32 + 5) = v25;
    }

    else
    {
      v28 = *v78;
      (*v78)(*(v0 + 176), *(v0 + 120));
      v33 = OUTLINED_FUNCTION_116_0();
      v28(v33);
    }

    *(v0 + 240) = v28;
    *(v0 + 248) = v12;
    v9 += v80;
    --v2;
  }

  while (v2);
  v38 = *(v0 + 128) + 32;
  v39 = MEMORY[0x277D84F90];
  v40 = (*(v0 + 40) + 32);
  v73 = v38 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v71 = *MEMORY[0x277D0D2C8];
  v41 = v74;
  v42 = v76;
  v67 = v38;
  do
  {
    v43 = OUTLINED_FUNCTION_359();
    (v82)(v43);
    *(v0 + 280) = *v38;
    *(v0 + 288) = v73;
    v44 = OUTLINED_FUNCTION_114();
    v45(v44);
    v46 = OUTLINED_FUNCTION_113();
    v47 = v79(v46);
    v48 = *(v0 + 152);
    v49 = *(v0 + 120);
    if (v47 == v71)
    {
      v75 = v41;
      v77 = v42;
      v50 = *(v0 + 72);
      v51 = *(v0 + 32);
      (*v68)(v48, v49);
      v52 = *v40;
      (*v40)(v50, v48, v51);
      OUTLINED_FUNCTION_141_4();
      v52();
      v53 = OUTLINED_FUNCTION_113();
      (v52)(v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        sub_227CF0D04();
        v39 = v58;
      }

      v55 = *(v39 + 16);
      v54 = *(v39 + 24);
      v42 = v77;
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_12(v54);
        sub_227CF0D04();
        v39 = v59;
      }

      *(v39 + 16) = v55 + 1;
      OUTLINED_FUNCTION_19();
      (v52)(v39 + v56 + *(v57 + 72) * v55);
      v41 = v75;
      v38 = v67;
    }

    else
    {
      (v28)(*(v0 + 152), v49);
    }

    *(v0 + 296) = v39;
    v41 += v80;
    --v42;
  }

  while (v42);
  v60 = swift_task_alloc();
  *(v0 + 256) = v60;
  *v60 = v0;
  v60[1] = sub_227CE32B4;
  OUTLINED_FUNCTION_52();

  return sub_227B24FC4();
}

uint64_t sub_227CE32B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 264) = v5;
  *(v3 + 272) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CE33BC()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = *MEMORY[0x277D0D2C0];
  do
  {
    v3 = *(v0 + 280);
    v4 = *(v0 + 224);
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 120);
    (*(v0 + 208))(v5, *(v0 + 16) + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(v0 + 200) * v1, v7);
    v3(v6, v5, v7);
    v8 = OUTLINED_FUNCTION_93_0();
    if (v4(v8) == v26)
    {
      v9 = *(v0 + 136);
      v10 = *(v0 + 40);
      v11 = *(v0 + 48);
      v12 = *(v0 + 32);
      (*(*(v0 + 128) + 96))(v9, *(v0 + 120));
      v13 = *(v10 + 32);
      v13(v11, v9, v12);
      v14 = OUTLINED_FUNCTION_113();
      (v13)(v14);
      v15 = OUTLINED_FUNCTION_93_0();
      (v13)(v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_15();
        sub_227CF0D04();
        v2 = v19;
      }

      v16 = *(v2 + 16);
      if (v16 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_117();
        sub_227CF0D04();
        v2 = v20;
      }

      *(v2 + 16) = v16 + 1;
      OUTLINED_FUNCTION_136_0();
      (v13)(v2 + v17 + *(v18 + 72) * v16);
    }

    else
    {
      (*(v0 + 240))(*(v0 + 136), *(v0 + 120));
    }

    *(v0 + 320) = v2;
    ++v1;
  }

  while (v1 != *(v0 + 184));
  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_208_2(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_19_15(v22);
  OUTLINED_FUNCTION_135_0();

  return sub_227B24FC4();
}

uint64_t sub_227CE3620()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 312) = v0;

  if (!v0)
  {

    *(v4 + 328) = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CE372C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = v16[41];
  v18 = v16[33];
  v19 = v16[31];
  v20 = v16[24];
  OUTLINED_FUNCTION_378();
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = v18;
  v21[5] = v17;
  OUTLINED_FUNCTION_144_6();
  v31 = v16[9];
  v32 = v16[8];
  v33 = v16[7];
  v34 = v16[6];

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_23();

  return v25(v22, v23, v24, v25, v26, v27, v28, v29, a9, v31, v32, v33, v34, a14, a15, a16);
}

uint64_t sub_227CE3844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();

  OUTLINED_FUNCTION_144_6();
  OUTLINED_FUNCTION_372_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CE392C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();

  OUTLINED_FUNCTION_144_6();
  OUTLINED_FUNCTION_372_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CE3A24()
{
  OUTLINED_FUNCTION_6();
  v1[17] = v2;
  v1[18] = v0;
  v3 = type metadata accessor for InternalChallengeInvite(0);
  v1[19] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_121();
  v1[22] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1C0, &qword_227D63C00);
  OUTLINED_FUNCTION_5(v5);
  v1[23] = OUTLINED_FUNCTION_121();
  v1[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1D8, &qword_227D63C40);
  OUTLINED_FUNCTION_5(v6);
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v7 = sub_227D4A408();
  v1[28] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[29] = v8;
  v1[30] = OUTLINED_FUNCTION_121();
  v1[31] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_5_26();
  sub_227CF1940(v9, v10, v11);
  v1[32] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[33] = v13;
  v1[34] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[35] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[36] = v15;
  v1[37] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  v1[38] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[39] = v17;
  v1[40] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227CE3CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(*(v16 + 136) + 16);
  *(v16 + 464) = *MEMORY[0x277D0D4D8];
  *(v16 + 468) = *MEMORY[0x277D0D4E0];
  *(v16 + 472) = *MEMORY[0x277D0D1F0];
  *(v16 + 476) = *MEMORY[0x277D0D200];
  *(v16 + 480) = *MEMORY[0x277D0D218];
  *(v16 + 484) = *MEMORY[0x277D0D208];
  *(v16 + 488) = *MEMORY[0x277D0D210];
  *(v16 + 492) = *MEMORY[0x277D0D1F8];
  v18 = MEMORY[0x277D84F90];
  *(v16 + 336) = 0;
  *(v16 + 344) = v18;
  *(v16 + 328) = v17;
  if (v17)
  {
    v19 = *(v16 + 296);
    v20 = OUTLINED_FUNCTION_106_5();
    v21(v20);
    sub_227D4A828();
    v31 = *(v16 + 320);
    sub_227D4A818();
    *(v16 + 352) = 0;
    v40 = OUTLINED_FUNCTION_188_3();
    v42 = v41(v40);
    if (v42 == v31)
    {
      v43 = *(v16 + 272);
      v44 = *(v16 + 144);
      (*(*(v16 + 264) + 96))(v43, *(v16 + 256));
      *(v16 + 360) = *(v43 + 8);
      sub_227B23878(v44 + 40, v16 + 16);
      sub_227D4A8F8();
      *(v16 + 368) = v45;
      v67 = swift_task_alloc();
      *(v16 + 376) = v67;
      *v67 = v16;
      OUTLINED_FUNCTION_40_8(v67);
      OUTLINED_FUNCTION_173();
      OUTLINED_FUNCTION_23();

      return sub_227B76464();
    }

    else if (v42 == *(v16 + 468))
    {
      v46 = OUTLINED_FUNCTION_139_4();
      v47(v46);
      *(v16 + 392) = *v19;
      *(v16 + 400) = v19[1];
      *(v16 + 408) = v19[2];
      *(v16 + 416) = v19[3];
      v73 = OUTLINED_FUNCTION_3_25();
      OUTLINED_FUNCTION_36_0();
      v76 = v48 + *v48;
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v16 + 424) = v49;
      *v49 = v50;
      OUTLINED_FUNCTION_251_1(v49);
      OUTLINED_FUNCTION_6_20();
      OUTLINED_FUNCTION_23();

      return v55(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, v73, v76, a13, a14, a15, a16);
    }

    else
    {
      v59 = *(v16 + 264);
      v70 = *(v16 + 256);
      v74 = *(v16 + 272);

      sub_227D49E08();
      OUTLINED_FUNCTION_1_34();
      sub_227B12A58(v60, v61);
      OUTLINED_FUNCTION_18_2();
      v62 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1E0, &qword_227D63C48);
      sub_227D49DB8();
      swift_willThrow();
      v63 = OUTLINED_FUNCTION_93_0();
      v64(v63);
      v65 = OUTLINED_FUNCTION_340();
      v66(v65);
      (*(v59 + 8))(v74, v70);
      OUTLINED_FUNCTION_142_6();
      v69 = *(v16 + 176);
      v72 = *(v16 + 168);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_23();

      return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v69, v72, v62, a13, a14, a15, a16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_142_6();
    v71 = *(v16 + 184);
    v75 = *(v16 + 168);

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_23();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, v71, v75, a13, a14, a15, a16);
  }
}

uint64_t sub_227CE4238()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 384) = v0;

  if (v0)
  {
    sub_227B26090(v4 + 16);
  }

  else
  {
    *(v4 + 496) = v3;
    sub_227B26090(v4 + 16);
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_117_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CE43B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = 492;
  switch(*(v16 + 496))
  {
    case 1:
      goto LABEL_6;
    case 2:
      v17 = 484;
      goto LABEL_6;
    case 3:
      v17 = 476;
      goto LABEL_6;
    case 4:
      v17 = 480;
      goto LABEL_6;
    case 5:
      v56 = *(v16 + 472);
      v57 = *(v16 + 248);
      v58 = *(v16 + 224);
      v59 = *(v16 + 232);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v60, v61, v62, v58);
      (*(v59 + 104))(v57, v56, v58);
      goto LABEL_7;
    default:
      v17 = 488;
LABEL_6:
      (*(*(v16 + 232) + 104))(*(v16 + 216), *(v16 + v17), *(v16 + 224));
      OUTLINED_FUNCTION_117();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
      v22 = OUTLINED_FUNCTION_147();
      v23(v22);
LABEL_7:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *(v16 + 344);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = OUTLINED_FUNCTION_21();
        v25 = sub_227CF1020(v91, v92, v93, v25);
      }

      v26 = v25[2];
      if (v26 >= v25[3] >> 1)
      {
        OUTLINED_FUNCTION_51_10();
        v25 = sub_227CF1020(v94, v95, v96, v97);
      }

      v99 = *(v16 + 384);
      v27 = *(v16 + 232);
      (*(*(v16 + 288) + 8))(*(v16 + 296), *(v16 + 280));
      v28 = OUTLINED_FUNCTION_141();
      v29(v28);
      v25[2] = v26 + 1;
      v30 = (v27 + 32);
      OUTLINED_FUNCTION_136_0();
      v31 = OUTLINED_FUNCTION_288_1();
      v32(v31);
      OUTLINED_FUNCTION_287_1();
      if (v33)
      {
        OUTLINED_FUNCTION_191_5();

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_23();

        return v36(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, v99, a13, a14, a15, a16);
      }

      else
      {
        v43 = *(v16 + 296);
        v44 = OUTLINED_FUNCTION_4_27();
        v45(v44);
        sub_227D4A828();
        if (v99)
        {
          OUTLINED_FUNCTION_260_1();
          v46();

LABEL_19:
          OUTLINED_FUNCTION_219_2();

          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_23();

          return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v99, a13, a14, a15, a16);
        }

        v47 = *(v16 + 320);
        sub_227D4A818();
        *(v16 + 352) = 0;
        v63 = OUTLINED_FUNCTION_188_3();
        v65 = v64(v63);
        if (v65 == v47)
        {
          v66 = OUTLINED_FUNCTION_236_2();
          v67(v66);
          OUTLINED_FUNCTION_369_1();
          sub_227D4A8F8();
          *(v16 + 368) = v68;
          v89 = swift_task_alloc();
          *(v16 + 376) = v89;
          *v89 = v16;
          OUTLINED_FUNCTION_40_8(v89);
          OUTLINED_FUNCTION_93_0();
          OUTLINED_FUNCTION_23();

          return sub_227B76464();
        }

        else
        {
          if (v65 != *(v16 + 468))
          {
            OUTLINED_FUNCTION_238_0();
            sub_227D49E08();
            OUTLINED_FUNCTION_1_34();
            sub_227B12A58(v82, v83);
            OUTLINED_FUNCTION_18_2();
            v84 = swift_allocError();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1E0, &qword_227D63C48);
            sub_227D49DB8();
            v99 = v84;
            swift_willThrow();
            v85 = OUTLINED_FUNCTION_113();
            v86(v85);
            v87 = OUTLINED_FUNCTION_149_0();
            v88(v87);
            (*(v43 + 8))(a11, a10);
            goto LABEL_19;
          }

          v69 = OUTLINED_FUNCTION_139_4();
          v70(v69);
          *(v16 + 392) = *v30;
          *(v16 + 400) = v30[1];
          *(v16 + 408) = v30[2];
          *(v16 + 416) = v30[3];
          v98 = OUTLINED_FUNCTION_3_25();
          OUTLINED_FUNCTION_36_0();
          v100 = v71 + *v71;
          swift_task_alloc();
          OUTLINED_FUNCTION_47();
          *(v16 + 424) = v72;
          *v72 = v73;
          OUTLINED_FUNCTION_251_1(v72);
          OUTLINED_FUNCTION_6_20();
          OUTLINED_FUNCTION_23();

          return v78(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, v98, v100, a13, a14, a15, a16);
        }
      }
  }
}

uint64_t sub_227CE4990()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE4A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = v16[44];
  v18 = v16[16];
  __swift_project_boxed_opaque_existential_1(v16 + 12, v16[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  OUTLINED_FUNCTION_378();
  v19 = swift_allocObject();
  v16[54] = v19;
  *(v19 + 16) = xmmword_227D4E520;
  v20 = sub_227D4A8F8();
  if (v17)
  {

    v22 = OUTLINED_FUNCTION_93_0();
    v23(v22);
    v24 = OUTLINED_FUNCTION_141();
    v25(v24);

    *(v19 + 16) = 0;

    __swift_destroy_boxed_opaque_existential_0(v16 + 12);
    OUTLINED_FUNCTION_142_6();
    v45 = v16[22];
    v46 = v16[21];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v45, v46, v17, a13, a14, a15, a16);
  }

  else
  {
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    OUTLINED_FUNCTION_36_0();
    v47 = v35 + *v35;
    v36 = swift_task_alloc();
    v16[55] = v36;
    *v36 = v16;
    v36[1] = sub_227CE4CF0;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_23();

    return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, v18 + 40, v47, a13, a14, a15, a16);
  }
}

uint64_t sub_227CE4CF0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 448) = v6;
  *(v2 + 456) = v0;

  OUTLINED_FUNCTION_209();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE4E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = 0;
  v18 = *(v16 + 448);
  v19 = MEMORY[0x277D84F90];
  v20 = *(v18 + 16);
  while (v20 != v17)
  {
    if (v17 >= *(v18 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v21 = *(v18 + 32 + 8 * v17++);
    if (v21)
    {
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_15();
        sub_227CF0F18();
        v19 = v23;
      }

      v22 = *(v19 + 16);
      if (v22 >= *(v19 + 24) >> 1)
      {
        OUTLINED_FUNCTION_117();
        sub_227CF0F18();
        v19 = v24;
      }

      *(v19 + 16) = v22 + 1;
      *(v19 + 8 * v22 + 32) = v21;
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v16 + 96));
  v25 = 0;
  v26 = *(v19 + 16);
  v27 = MEMORY[0x277D84F90];
  while (v26 != v25)
  {
    if (v25 >= *(v19 + 16))
    {
      goto LABEL_68;
    }

    v28 = *(v19 + 8 * v25 + 32);
    v29 = *(v28 + 16);
    v30 = v27[2];
    if (__OFADD__(v30, v29))
    {
      goto LABEL_69;
    }

    sub_227D4CE58();
    if (!swift_isUniquelyReferenced_nonNull_native() || v30 + v29 > v27[3] >> 1)
    {
      OUTLINED_FUNCTION_51_10();
      v27 = sub_227C10E2C(v31, v32, v33, v34);
    }

    if (*(v28 + 16))
    {
      if ((v27[3] >> 1) - v27[2] < v29)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v35 = v27[2];
        v36 = __OFADD__(v35, v29);
        v37 = v35 + v29;
        if (v36)
        {
          goto LABEL_75;
        }

        v27[2] = v37;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_70;
      }
    }

    ++v25;
  }

  v38 = v27[2];
  if (v38)
  {
    v39 = 0;
    OUTLINED_FUNCTION_19();
    while (v39 < v27[2])
    {
      v41 = *(v16 + 392);
      v40 = *(v16 + 400);
      v42 = *(v16 + 176);
      OUTLINED_FUNCTION_10_18();
      sub_227CF3E08(v43, v42);
      v44 = *(v42 + 24) == v41 && *(v42 + 32) == v40;
      if (v44 || (sub_227D4DA78() & 1) != 0)
      {
        v45 = *(v16 + 176);
        v46 = *(v45 + 40) == *(v16 + 408) && *(v45 + 48) == *(v16 + 416);
        if (v46 || (sub_227D4DA78() & 1) != 0)
        {

          OUTLINED_FUNCTION_10_18();
          v48 = OUTLINED_FUNCTION_132_0();
          sub_227CF3DB0(v48, v49);
          v47 = 0;
          goto LABEL_40;
        }
      }

      ++v39;
      OUTLINED_FUNCTION_4_28();
      sub_227CF3E60();
      if (v38 == v39)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_76;
  }

LABEL_38:

  v47 = 1;
LABEL_40:
  v50 = *(v16 + 184);
  v51 = *(v16 + 152);
  __swift_storeEnumTagSinglePayload(*(v16 + 192), v47, 1, v51);
  OUTLINED_FUNCTION_9_2();
  sub_227CF3F60();
  if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
  {
    v52 = *(v16 + 224);
    v53 = *(v16 + 232);
    v54 = *(v16 + 208);
    v55 = *(v16 + 168);
    v56 = *(v16 + 152);
    sub_227CF3DB0(*(v16 + 184), v55);
    (*(v53 + 16))(v54, v55 + *(v56 + 32), v52);
    OUTLINED_FUNCTION_91_0();
    sub_227CF3E60();
  }

  v57 = *(v16 + 224);
  v58 = *(v16 + 200);
  sub_227B1DE58(*(v16 + 192), &qword_27D7EA1C0, &qword_227D63C00);
  OUTLINED_FUNCTION_117();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
  OUTLINED_FUNCTION_91_0();
  sub_227CF3F60();
  if (__swift_getEnumTagSinglePayload(v58, 1, v57) == 1)
  {
    v63 = *(v16 + 200);
    (*(*(v16 + 232) + 104))(*(v16 + 240), *(v16 + 472), *(v16 + 224));
    OUTLINED_FUNCTION_10_16(v63);
    if (!v44)
    {
      sub_227B1DE58(*(v16 + 200), &qword_27D7EA1D8, &qword_227D63C40);
    }
  }

  else
  {
    (*(*(v16 + 232) + 32))(*(v16 + 240), *(v16 + 200), *(v16 + 224));
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v16 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_77:
    v122 = OUTLINED_FUNCTION_21();
    v27 = sub_227CF1020(v122, v123, v124, v27);
  }

  v65 = v27[2];
  if (v65 >= v27[3] >> 1)
  {
    OUTLINED_FUNCTION_51_10();
    v27 = sub_227CF1020(v125, v126, v127, v128);
  }

  sub_227B1DE58(*(v16 + 208), &qword_27D7EA1D8, &qword_227D63C40);
  v130 = *(v16 + 456);
  v66 = *(v16 + 232);
  (*(*(v16 + 288) + 8))(*(v16 + 296), *(v16 + 280));
  v67 = OUTLINED_FUNCTION_141();
  v68(v67);
  v27[2] = v65 + 1;
  v69 = (v66 + 32);
  OUTLINED_FUNCTION_136_0();
  v70 = OUTLINED_FUNCTION_288_1();
  v71(v70);
  OUTLINED_FUNCTION_287_1();
  if (v44)
  {
    OUTLINED_FUNCTION_191_5();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_23();

    return v74(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, v130, a13, a14, a15, a16);
  }

  else
  {
    v81 = *(v16 + 296);
    v82 = OUTLINED_FUNCTION_4_27();
    v83(v82);
    sub_227D4A828();
    if (v130)
    {
      OUTLINED_FUNCTION_260_1();
      v84();

LABEL_57:
      OUTLINED_FUNCTION_219_2();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_23();

      return v87(v86, v87, v88, v89, v90, v91, v92, v93, a9, a10, a11, v130, a13, a14, a15, a16);
    }

    v85 = *(v16 + 320);
    sub_227D4A818();
    *(v16 + 352) = 0;
    v94 = OUTLINED_FUNCTION_188_3();
    v96 = v95(v94);
    if (v96 == v85)
    {
      v97 = OUTLINED_FUNCTION_236_2();
      v98(v97);
      OUTLINED_FUNCTION_369_1();
      sub_227D4A8F8();
      *(v16 + 368) = v99;
LABEL_71:
      v120 = swift_task_alloc();
      *(v16 + 376) = v120;
      *v120 = v16;
      OUTLINED_FUNCTION_40_8(v120);
      OUTLINED_FUNCTION_93_0();
      OUTLINED_FUNCTION_23();

      return sub_227B76464();
    }

    if (v96 != *(v16 + 468))
    {
      OUTLINED_FUNCTION_238_0();
      sub_227D49E08();
      OUTLINED_FUNCTION_1_34();
      sub_227B12A58(v113, v114);
      OUTLINED_FUNCTION_18_2();
      v115 = swift_allocError();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1E0, &qword_227D63C48);
      sub_227D49DB8();
      v130 = v115;
      swift_willThrow();
      v116 = OUTLINED_FUNCTION_113();
      v117(v116);
      v118 = OUTLINED_FUNCTION_149_0();
      v119(v118);
      (*(v81 + 8))(a11, a10);
      goto LABEL_57;
    }

    v100 = OUTLINED_FUNCTION_139_4();
    v101(v100);
    *(v16 + 392) = *v69;
    *(v16 + 400) = v69[1];
    *(v16 + 408) = v69[2];
    *(v16 + 416) = v69[3];
    v129 = OUTLINED_FUNCTION_3_25();
    OUTLINED_FUNCTION_36_0();
    v131 = v102 + *v102;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v16 + 424) = v103;
    *v103 = v104;
    OUTLINED_FUNCTION_251_1(v103);
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_23();

    return v109(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, v129, v131, a13, a14, a15, a16);
  }
}

uint64_t sub_227CE57C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_222_1();
  v14();
  v15 = OUTLINED_FUNCTION_57_0();
  v16(v15);
  OUTLINED_FUNCTION_142_6();
  OUTLINED_FUNCTION_368_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227CE58B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_222_1();
  v15();
  v16 = OUTLINED_FUNCTION_57_0();
  v17(v16);
  __swift_destroy_boxed_opaque_existential_0((v14 + 96));
  OUTLINED_FUNCTION_142_6();
  OUTLINED_FUNCTION_368_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16_0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227CE59B8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_227D4A408();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 104);
  v7 = **(&unk_2785ED870 + a1);

  return v6(a2, v7, v4);
}

char *sub_227CE5A2C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA248, &unk_227D63F08);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_227D4A328();
  v10 = MEMORY[0x28223BE20](v9);
  v31 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v29 = v13;
  v30 = &v25 - v12;
  v14 = 0;
  v15 = *(a3 + 16);
  v32 = (v13 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v33;
    }

    v16 = *(sub_227D4A318() - 8);
    a1(a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_227B1DE58(v8, &qword_27D7EA248, &unk_227D63F08);
      ++v14;
    }

    else
    {
      v17 = *v32;
      (*v32)(v30, v8, v9);
      v28 = v17;
      v17(v31, v30, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_227CF076C(0, *(v33 + 2) + 1, 1, v33);
      }

      v19 = *(v33 + 2);
      v18 = *(v33 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v26 = *(v33 + 2);
        v27 = v19 + 1;
        v22 = sub_227CF076C((v18 > 1), v19 + 1, 1, v33);
        v19 = v26;
        v20 = v27;
        v33 = v22;
      }

      ++v14;
      v21 = v33;
      *(v33 + 2) = v20;
      v28(&v21[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v19], v31, v9);
    }
  }

  v23 = v33;

  return v23;
}

uint64_t sub_227CE5D4C()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_19_15(v5);

  return sub_227B24B80(v6);
}

uint64_t sub_227CE5DE0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[7] = v6;
  v3[8] = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v3[9] = v10;
    *v10 = v5;
    v10[1] = sub_227CE5F48;
    OUTLINED_FUNCTION_53(v3[4]);

    return sub_227B24FC4();
  }
}

uint64_t sub_227CE5F48()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;
  *(v2 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CE6048()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[11];
  v0[12] = sub_227D4A8F8();
  v0[13] = v2;
  if (v1)
  {

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_33_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_227CE6148;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_33_0();

    return sub_227B767C0(v13, v14, v15);
  }
}

uint64_t sub_227CE6148()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  v4[15] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    v4[16] = v0;

    v11 = swift_task_alloc();
    v4[17] = v11;
    *v11 = v6;
    v11[1] = sub_227CE62B8;
    OUTLINED_FUNCTION_53(v4[12]);

    return sub_227CE659C();
  }
}

uint64_t sub_227CE62B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE63D4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  *(swift_task_alloc() + 16) = vextq_s8(v0[1], v0[1], 8uLL);
  sub_227CDA4F4();

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_33_0();

  return v3(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_227CE64CC()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CE6528()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CE659C()
{
  OUTLINED_FUNCTION_20();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_227D4CAB8();
  v1[12] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[13] = v7;
  v1[14] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[15] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4B078();
  v1[18] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[19] = v11;
  v1[20] = OUTLINED_FUNCTION_30();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[21] = v12;
  *v12 = v13;
  v12[1] = sub_227CE6740;
  OUTLINED_FUNCTION_267_2();

  return sub_227B74EF8(v14, v15, v16);
}

uint64_t sub_227CE6740()
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

uint64_t sub_227CE6838()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 184) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_178_5(v1);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE6930()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE6A14()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  v2[1] = sub_227CE6B14;
  v4 = OUTLINED_FUNCTION_18_11(*(v0 + 160));

  return v5(v4);
}

uint64_t sub_227CE6B14()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE6C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  __swift_destroy_boxed_opaque_existential_0((v10 + 16));
  sub_227D4AF68();
  sub_227D4A8E8();
  OUTLINED_FUNCTION_347_0();
  sub_227CD25A0();
  v11 = OUTLINED_FUNCTION_93_6();
  v12(v11);
  v13 = OUTLINED_FUNCTION_9_2();
  v14(v13);
  OUTLINED_FUNCTION_302_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_319_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_227CE7054()
{
  OUTLINED_FUNCTION_351();
  v20 = sub_227D49F78();
  OUTLINED_FUNCTION_9();
  v19 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v18 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  OUTLINED_FUNCTION_5(v5);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75_2();
  sub_227D4B088();
  sub_227D4A888();
  sub_227D4A918();
  if (!v0)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1B8, &qword_227D63BF0) + 48);
    v11 = *(v9 + 16);
    v12 = OUTLINED_FUNCTION_116_0();
    v11(v12);
    (v11)(v18 + v17, v1, v7);
    sub_227D492A8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    (*(v19 + 104))(v18, *MEMORY[0x277D0CFC8], v20);
    OUTLINED_FUNCTION_359();
    sub_227D49F68();
  }

  (*(v9 + 8))(v1, v7);
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CE7294()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v3 = OUTLINED_FUNCTION_5_26();
  sub_227CF1940(v3, v4, v5);
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = swift_task_alloc();
  v1[14] = v10;
  *v10 = v1;
  v11 = OUTLINED_FUNCTION_19_15(v10);

  return sub_227B24B80(v11);
}

uint64_t sub_227CE73D0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[15] = v9;
  v3[16] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_227CE750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[16];
  sub_227D4A828();
  if (v11)
  {
  }

  else
  {
    v13 = v10[12];
    v12 = v10[13];
    v14 = v10[11];
    sub_227D4A8F8();
    OUTLINED_FUNCTION_335_1();
    v10[17] = v15;
    v10[18] = v16;
    (*(v13 + 8))(v12, v14);
    sub_227D4A818();
    v26 = (*(v10[9] + 88))(v10[10], v10[8]);
    if (v26 == *MEMORY[0x277D0D4D8])
    {
      v27 = v10[10];
      v28 = OUTLINED_FUNCTION_106_7();
      v29(v28);
      v10[19] = *(v27 + 8);
      v30 = swift_task_alloc();
      v10[20] = v30;
      *v30 = v10;
      v30[1] = sub_227CE77FC;
      OUTLINED_FUNCTION_13_2();
      OUTLINED_FUNCTION_163();

      return sub_227B778D0();
    }

    if (v26 == *MEMORY[0x277D0D4E0])
    {
      (*(v10[9] + 8))(v10[10], v10[8]);
      v32 = swift_task_alloc();
      v10[22] = v32;
      *v32 = v10;
      v32[1] = sub_227CE79B0;
      OUTLINED_FUNCTION_236();
      OUTLINED_FUNCTION_163();

      return sub_227B77174();
    }

    sub_227D49E08();
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v34, v35);
    OUTLINED_FUNCTION_18_2();
    swift_allocError();
    OUTLINED_FUNCTION_332();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1E0, &qword_227D63C48);
    sub_227D49DB8();
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_174();
    v37(v36);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_227CE77FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE7910()
{
  OUTLINED_FUNCTION_6();

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  v2[1] = sub_227CE7B54;
  OUTLINED_FUNCTION_53(*(v0 + 136));

  return sub_227CE659C();
}

uint64_t sub_227CE79B0()
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

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE7ABC()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  v2[1] = sub_227CE7B54;
  OUTLINED_FUNCTION_53(*(v0 + 136));

  return sub_227CE659C();
}

uint64_t sub_227CE7B54()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_15_0();

  return v3();
}

uint64_t sub_227CE7CAC()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CE7D14()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CE7D7C()
{
  OUTLINED_FUNCTION_20();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_227D4A418();
  v1[9] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_298_1();
  v1[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_19_15(v5);

  return sub_227B24B80(v6);
}

uint64_t sub_227CE7E6C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  v3[14] = v5;
  v3[15] = v6;
  v3[16] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

void sub_227CE7FA8()
{
  OUTLINED_FUNCTION_119();
  v1 = *(v0 + 128);
  sub_227CD57E4();
  *(v0 + 136) = v2;
  if (v1)
  {

    OUTLINED_FUNCTION_19_0();

    v3();
  }

  else
  {
    v4 = v2[2];
    v5 = *MEMORY[0x277D0D258];
    v6 = MEMORY[0x277D0D250];
    *(v0 + 200) = *MEMORY[0x277D0D248];
    *(v0 + 204) = v5;
    v7 = *MEMORY[0x277D0D240];
    *(v0 + 208) = *v6;
    *(v0 + 212) = v7;
    v8 = MEMORY[0x277D84F90];
    *(v0 + 152) = 0;
    *(v0 + 160) = v8;
    *(v0 + 144) = v4;
    if (v4)
    {
      if (v2[2])
      {
        v9 = v2[5];
        *(v0 + 168) = v9;
        v10 = v2[4];
        sub_227D4CE58();
        v11 = swift_task_alloc();
        *(v0 + 176) = v11;
        *v11 = v0;
        v11[1] = sub_227CE820C;
        v12 = OUTLINED_FUNCTION_53(*(v0 + 112));

        sub_227B77C70(v12, v13, v10, v9);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      OUTLINED_FUNCTION_3_25();
      OUTLINED_FUNCTION_32();
      v17 = (v14 + *v14);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      *(v0 + 184) = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_178_5(v15);
      OUTLINED_FUNCTION_6_20();

      v17();
    }
  }
}

uint64_t sub_227CE820C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {

    *(v5 + 216) = v3;
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_227CE8370()
{
  OUTLINED_FUNCTION_119();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  (*(v2 + 104))(v3, *(v0 + qword_227D642F0[*(v0 + 216)]), v1);
  (*(v2 + 16))(v4, v3, v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = OUTLINED_FUNCTION_21();
    v6 = sub_227CF1144(v25, v26, v27, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    OUTLINED_FUNCTION_12(v7);
    OUTLINED_FUNCTION_51_10();
    v6 = sub_227CF1144(v28, v29, v30, v31);
  }

  (*(*(v0 + 80) + 8))(*(v0 + 96), *(v0 + 72));
  v6[2] = v8 + 1;
  OUTLINED_FUNCTION_136_0();
  v9 = OUTLINED_FUNCTION_181_2();
  result = v10(v9);
  v12 = *(v0 + 144);
  v13 = *(v0 + 152) + 1;
  *(v0 + 152) = v13;
  *(v0 + 160) = v6;
  if (v13 == v12)
  {

    OUTLINED_FUNCTION_2_36();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 184) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_178_5(v14);
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X4, X16 }
  }

  v18 = *(v0 + 136);
  if (v13 >= *(v18 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 168) = *(v18 + 16 * v13 + 40);
    sub_227D4CE58();
    v19 = swift_task_alloc();
    *(v0 + 176) = v19;
    *v19 = v0;
    v19[1] = sub_227CE820C;
    OUTLINED_FUNCTION_53(*(v0 + 112));
    OUTLINED_FUNCTION_128();

    return sub_227B77C70(v20, v21, v22, v23);
  }

  return result;
}

uint64_t sub_227CE8628()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE870C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_163_0(v1);
  *v2 = v3;
  v2[1] = sub_227CE880C;
  v4 = OUTLINED_FUNCTION_18_11(*(v0 + 136));

  return v5(v4);
}

uint64_t sub_227CE880C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE890C()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_227CE8980(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CE8994()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_178_5(v1);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE8A8C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE8B70()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0(v0 + 2);
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_227CE8C74;
  v2 = OUTLINED_FUNCTION_18_11(v0[7]);

  return v3(v2);
}

uint64_t sub_227CE8C74()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE8D6C()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_15_0();

  return v1();
}

uint64_t sub_227CE8DC4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CE8E20(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CE8E38()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 80) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_178_5(v1);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE8F30()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE9014()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  OUTLINED_FUNCTION_32();
  v6 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_354(v2);
  *v3 = v4;
  v3[1] = sub_227CE911C;
  OUTLINED_FUNCTION_53(*(v0 + 56));
  OUTLINED_FUNCTION_116_6();

  return v6();
}

uint64_t sub_227CE911C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE9200()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CE9258()
{
  OUTLINED_FUNCTION_375_1();
  OUTLINED_FUNCTION_269();
  return sub_227D4A698();
}

void sub_227CE9408()
{
  OUTLINED_FUNCTION_11();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v5(0);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_246_0();
  v9 = v2();
  v10 = *(v9 + 16);
  if (v10)
  {
    v30 = v4;
    v34 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v10, 0);
    v11 = v34;
    v12 = v7 + 16;
    OUTLINED_FUNCTION_19();
    v14 = v9 + v13;
    v31 = *(v12 + 56);
    v32 = v15;
    do
    {
      v16 = OUTLINED_FUNCTION_276();
      v17 = v12;
      v18 = v32(v16);
      v19 = v33(v18);
      v21 = v20;
      v22 = OUTLINED_FUNCTION_173_0();
      v23(v22);
      v25 = *(v34 + 16);
      v24 = *(v34 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_227B3CA88((v24 > 1), v25 + 1, 1);
      }

      *(v34 + 16) = v25 + 1;
      v26 = v34 + 16 * v25;
      *(v26 + 32) = v19;
      *(v26 + 40) = v21;
      v14 += v31;
      --v10;
      v12 = v17;
    }

    while (v10);

    v4 = v30;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v27 = OUTLINED_FUNCTION_58();
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  OUTLINED_FUNCTION_17_11();
  v4[4] = sub_227B69F68(v29, &qword_27D7E7710, &qword_227D531D0);
  *v4 = v11;
  OUTLINED_FUNCTION_8_1();
}

void sub_227CE96D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_419();
  sub_227D4B988();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = *(v0 + 16);
  if (v4)
  {
    v5 = *(v2 + 16);
    OUTLINED_FUNCTION_19();
    v7 = v0 + v6;
    v8 = *(v2 + 72);
    v9 = MEMORY[0x277D84F90];
    v36 = v8;
    v37 = v5;
    do
    {
      v10 = OUTLINED_FUNCTION_269();
      v5(v10);
      v11 = sub_227D4B968();
      if ((v11 & 0x100000000) != 0)
      {
        v21 = OUTLINED_FUNCTION_147();
        v22(v21);
      }

      else
      {
        v12 = v11;
        v13 = sub_227D4B978();
        v15 = v14;
        v16 = OUTLINED_FUNCTION_147();
        v17(v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = OUTLINED_FUNCTION_8_15();
          v9 = sub_227CF1268(v23, v24, v25, v26);
        }

        v19 = v9[2];
        v18 = v9[3];
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_12(v18);
          OUTLINED_FUNCTION_117();
          v9 = sub_227CF1268(v27, v28, v29, v30);
        }

        v9[2] = v19 + 1;
        v20 = &v9[3 * v19];
        v20[4] = v13;
        v20[5] = v15;
        *(v20 + 12) = v12;
        v8 = v36;
        v5 = v37;
      }

      v7 += v8;
      --v4;
    }

    while (v4);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v31 = v9[2];
  if (v31)
  {
    v32 = *(v9 + 12);
    sub_227D4CE58();
    v33 = 1;
LABEL_15:
    v34 = 3 * v33;
    while (v31 != v33)
    {
      if (v33 >= v9[2])
      {
        __break(1u);
        return;
      }

      ++v33;
      v35 = v9[v34 + 6];
      v34 += 3;
      if (v35 < v32)
      {
        sub_227D4CE58();

        v32 = v35;
        goto LABEL_15;
      }
    }
  }

  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_8_1();
}

uint64_t sub_227CE9A74@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  OUTLINED_FUNCTION_378();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227D4E520;
  *(v2 + 32) = sub_227D4BA18();
  *(v2 + 40) = v3;
  v4 = OUTLINED_FUNCTION_269();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_17_11();
  result = sub_227B69F68(v6, &qword_27D7E7710, &qword_227D531D0);
  a1[4] = result;
  *a1 = v2;
  return result;
}

__n128 sub_227CE9B54@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  if (*(v3 + 24))
  {
    sub_227B11EE8(v3, a2);
  }

  else
  {
    result = *v3;
    v5 = *(v3 + 16);
    *a2 = *v3;
    *(a2 + 16) = v5;
    *(a2 + 32) = *(v3 + 32);
  }

  return result;
}

uint64_t sub_227CE9B9C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1();
  if (v3)
  {

    return sub_227B30834(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227D4E520;
    *(inited + 32) = a2();
    *(inited + 40) = v6;
    return sub_227BBEB5C(inited);
  }
}

uint64_t sub_227CE9CD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  sub_227D4CE58();
  result = sub_227D4CE58();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_227D4DB58();
      sub_227D4CE58();
      sub_227D4D048();
      v18 = sub_227D4DB98();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_227D4DA78();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_227CE9EB0(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = *v4;
    if (v7 == 1)
    {
      v8 = 0x6574656C706D6F63;
    }

    else
    {
      v8 = 7237495;
    }

    v9 = 0xE900000000000064;
    if (v7 != 1)
    {
      v9 = 0xE300000000000000;
    }

    if (*v4)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x657669746361;
    }

    if (*v4)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v12 = 0x6574656C706D6F63;
      }

      else
      {
        v12 = 7237495;
      }

      if (a1 == 1)
      {
        v13 = 0xE900000000000064;
      }

      else
      {
        v13 = 0xE300000000000000;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      v12 = 0x657669746361;
    }

    if (v10 == v12 && v11 == v13)
    {

      return v5 != 0;
    }

    v15 = sub_227D4DA78();

    ++v4;
  }

  while ((v15 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_227CE9FD8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

void sub_227CE9FEC()
{
  OUTLINED_FUNCTION_351();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_75_2();
  v8 = sub_227D4A488();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_54_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v39 = &v33 - v15;
  v16 = *(v3 + 16);
  if (v16)
  {
    v37 = v1;
    v38 = v4;
    v44 = v0;
    v17 = *(v14 + 16);
    OUTLINED_FUNCTION_19();
    v19 = v3 + v18;
    v40 = *(v20 + 56);
    v41 = *MEMORY[0x277D0D2D8];
    v42 = (v20 + 72);
    v43 = (v20 - 8);
    v34 = (v6 + 32);
    v35 = (v20 + 80);
    v36 = v6 + 8;
    v21 = v39;
    do
    {
      v22 = OUTLINED_FUNCTION_262_1();
      v17(v22);
      (v17)(v12, v21, v8);
      v23 = (*v42)(v12, v8);
      if (v23 == v41)
      {
        (*v35)(v12, v8);
        (*v34)(v37, v12, v38);
        v24 = v44;
        sub_227D4A8F8();
        v44 = v24;
        if (v24)
        {
          v31 = OUTLINED_FUNCTION_281_1();
          v32(v31);
          (*v43)(v39, v8);

          break;
        }

        OUTLINED_FUNCTION_185();
        OUTLINED_FUNCTION_183_0();
        sub_227B274CC(v25, v26, v27);

        v28 = OUTLINED_FUNCTION_281_1();
        v29(v28);
        v21 = v39;
        (*v43)(v39, v8);
      }

      else
      {
        v30 = *v43;
        (*v43)(v21, v8);
        v30(v12, v8);
      }

      v19 += v40;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_352();
}

void sub_227CEA310()
{
  OUTLINED_FUNCTION_11();
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v27 = v0;
  if (!*(v1 + 16))
  {
LABEL_6:
    v13 = v27;
    if (*(v26 + 16))
    {
      v0 = sub_227B39740(*v27, v27[1], v26);
      if ((v0 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (*(v24 + 16))
    {
      v14 = v13[4];
      v28 = v13[3];
      v29 = v14;
      MEMORY[0x28223BE20](v0);
      OUTLINED_FUNCTION_109();
      *(v15 - 16) = &v28;
      v0 = sub_227BB7050(sub_227CCBC10, v16, v17);
      v18 = v25;
      if ((v0 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v18 = v25;
    }

    if (*(v18 + 16))
    {
      v19 = v13[6];
      v28 = v13[5];
      v29 = v19;
      MEMORY[0x28223BE20](v0);
      OUTLINED_FUNCTION_109();
      *(v20 - 16) = &v28;
      sub_227BB7050(sub_227CCBC10, v21, v22);
    }

    goto LABEL_14;
  }

  v5 = v1;
  v6 = *(v0 + 16);
  v7 = (v6 + 40);
  v8 = -*(v6 + 16);
  v9 = -1;
  while (v8 + v9 != -1)
  {
    if (++v9 >= *(v6 + 16))
    {
      __break(1u);
      return;
    }

    v10 = v7 + 2;
    v11 = *v7;
    v28 = *(v7 - 1);
    v29 = v11;
    MEMORY[0x28223BE20](v0);
    v23[2] = &v28;
    sub_227D4CE58();
    v12 = sub_227BB7050(sub_227BB7AF0, v23, v5);

    v7 = v10;
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_8_1();
}

unint64_t sub_227CEA4E4()
{
  sub_227D4D668();

  OUTLINED_FUNCTION_3_7();
  v0 = sub_227D4DA38();
  MEMORY[0x22AAA5DA0](v0);

  MEMORY[0x22AAA5DA0](41, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t sub_227CEA58C()
{
  OUTLINED_FUNCTION_6();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v1[14] = v5;
  v1[15] = v6;
  v7 = sub_227D4CAB8();
  v1[20] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[21] = v8;
  v1[22] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[23] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[24] = v10;
  v1[25] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4B078();
  v1[26] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[27] = v12;
  v1[28] = OUTLINED_FUNCTION_121();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_227CEA6F4()
{
  OUTLINED_FUNCTION_119();
  *(v0 + 248) = **(v0 + 152);
  sub_227D4CE58();
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = sub_227B308F4(v1, v2);
  *(v0 + 256) = v3;
  v4 = *(v3 + 32);
  *(v0 + 352) = v4;
  v5 = -1;
  v6 = -1 << v4;
  v7 = *(v3 + 56);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v8 = MEMORY[0x277D84F90];
  *(v0 + 264) = MEMORY[0x277D84F90];
  v9 = v5 & v7;
  if (v9)
  {
    v10 = 0;
LABEL_8:
    *(v0 + 272) = v9;
    *(v0 + 280) = v10;
    OUTLINED_FUNCTION_135_7();
    OUTLINED_FUNCTION_185_2(v13);
    sub_227D4CE58();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 304) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_35_7(v14);
    OUTLINED_FUNCTION_128();

    sub_227B74EF8(v16, v17, v18);
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v6) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v3 + 8 * v11++ + 64);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    OUTLINED_FUNCTION_265_2(MEMORY[0x277D84FA0]);
    if (!v20)
    {
      OUTLINED_FUNCTION_174_6(*(v0 + 264));
      OUTLINED_FUNCTION_383_0();

      OUTLINED_FUNCTION_109_7();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X2, X16 }
    }

    if (*(*(v0 + 264) + 16))
    {
      OUTLINED_FUNCTION_91_8();
      v21();
      OUTLINED_FUNCTION_13_0(v8);
      OUTLINED_FUNCTION_28_2();
      v22 = swift_task_alloc();
      v23 = OUTLINED_FUNCTION_118_3(v22);
      *v23 = v24;
      OUTLINED_FUNCTION_15_16(v23);
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X3, X16 }
    }

    __break(1u);
  }
}

uint64_t sub_227CEA978()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227CEAA78()
{
  OUTLINED_FUNCTION_119();
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  v4 = *(*(v0 + 152) + 8);
  *(v0 + 40) = v2;
  *(v0 + 48) = &off_283B3E470;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v6 = *(v3 + 16);
  v6(boxed_opaque_existential_1, v1, v2);
  v7 = v4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v7)
  {
    v6(*(v0 + 232), *(v0 + 240), *(v0 + 208));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v0 + 264);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_25:
      v33 = OUTLINED_FUNCTION_21();
      v9 = sub_227CF0ABC(v33, v34, v35, v9);
    }

    v10 = v9[2];
    if (v10 >= v9[3] >> 1)
    {
      OUTLINED_FUNCTION_51_10();
      v9 = sub_227CF0ABC(v36, v37, v38, v39);
    }

    (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));
    v9[2] = v10 + 1;
    OUTLINED_FUNCTION_136_0();
    v11 = OUTLINED_FUNCTION_181_2();
    v12(v11);
  }

  else
  {
    (*(*(v0 + 216) + 8))(*(v0 + 240), *(v0 + 208));
    v9 = *(v0 + 264);
  }

  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  *(v0 + 264) = v9;
  v15 = (v14 - 1) & v14;
  if (v15)
  {
    v16 = *(v0 + 256);
LABEL_13:
    *(v0 + 272) = v15;
    *(v0 + 280) = v13;
    OUTLINED_FUNCTION_185_2((*(v16 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v15))))));
    sub_227D4CE58();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 304) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_35_7(v18);
    OUTLINED_FUNCTION_128();

    sub_227B74EF8(v20, v21, v22);
  }

  else
  {
    while (1)
    {
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      v16 = *(v0 + 256);
      if (v17 >= (((1 << *(v0 + 352)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v16 + 8 * v17 + 56);
      ++v13;
      if (v15)
      {
        v13 = v17;
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_265_2(MEMORY[0x277D84FA0]);
    if (!v24)
    {
      OUTLINED_FUNCTION_174_6(*(v0 + 264));
      OUTLINED_FUNCTION_383_0();

      OUTLINED_FUNCTION_109_7();
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X2, X16 }
    }

    if (*(*(v0 + 264) + 16))
    {
      OUTLINED_FUNCTION_91_8();
      v25();
      OUTLINED_FUNCTION_13_0(v9);
      OUTLINED_FUNCTION_28_2();
      v26 = swift_task_alloc();
      v27 = OUTLINED_FUNCTION_118_3(v26);
      *v27 = v28;
      OUTLINED_FUNCTION_15_16(v27);
      OUTLINED_FUNCTION_128();

      __asm { BRAA            X3, X16 }
    }

    __break(1u);
  }
}

uint64_t sub_227CEADF8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CEAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[17];
  sub_227D4AF68();
  sub_227D4A8E8();
  v16 = OUTLINED_FUNCTION_347_0();
  v15(v16);
  v17 = OUTLINED_FUNCTION_93_6();
  v18(v17);
  sub_227D4AF68();
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_183_0();
  sub_227B274CC(v19, v20, v21);

  v22 = OUTLINED_FUNCTION_9_2();
  result = v23(v22);
  v25 = v14[40];
  v26 = v14[41] + 1;
  v14[41] = v26;
  if (v26 == v25)
  {
    OUTLINED_FUNCTION_174_6(v14[33]);
    OUTLINED_FUNCTION_383_0();

    OUTLINED_FUNCTION_109_7();
    OUTLINED_FUNCTION_16_0();

    return v29(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v35 = v14[33];
    if (v26 >= *(v35 + 16))
    {
      __break(1u);
    }

    else
    {
      v36 = v14[15];
      (*(v14[27] + 16))(v14[28], v35 + ((*(v14[27] + 80) + 32) & ~*(v14[27] + 80)) + *(v14[27] + 72) * v26, v14[26]);
      OUTLINED_FUNCTION_13_0(v36);
      OUTLINED_FUNCTION_32();
      v49 = v37 + *v37;
      v38 = swift_task_alloc();
      v39 = OUTLINED_FUNCTION_118_3(v38);
      *v39 = v40;
      OUTLINED_FUNCTION_15_16(v39);
      OUTLINED_FUNCTION_16_0();

      return v44(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, v49, a12, a13, a14);
    }
  }

  return result;
}

uint64_t sub_227CEB114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_166();
  a22 = v24;
  v27 = *(v24 + 312);
  v28 = *(v24 + 152);
  sub_227D4AA58();
  *(v24 + 56) = *(v28 + 24);
  sub_227D4CE58();
  sub_227D4CE58();

  sub_227CF3F04(v24 + 56, v24 + 72);
  v29 = v27;
  v30 = sub_227D4CA98();
  v31 = sub_227D4D438();

  sub_227B3DACC(v24 + 56);

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v24 + 312);
  v34 = *(v24 + 296);
  if (v32)
  {
    a9 = *(v24 + 288);
    a10 = *(v24 + 168);
    a11 = *(v24 + 160);
    a12 = *(v24 + 176);
    v35 = OUTLINED_FUNCTION_14_5();
    v36 = swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_420();
    *v35 = 136315650;
    v37 = sub_227CEA4E4();
    v39 = v38;
    v40 = sub_227B1B1A4(v37, v38, &a13);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    sub_227B1B1A4(a9, v34, &a13);
    OUTLINED_FUNCTION_308();

    *(v35 + 14) = v39;
    *(v35 + 22) = 2112;
    v41 = v33;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 24) = v42;
    *v36 = v42;
    OUTLINED_FUNCTION_365(&dword_227B0D000, v43, v44, "%s failed to get challenge ID: %s, error: %@");
    sub_227B1DE58(v36, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_48_1();

    result = (*(a10 + 8))(a12, a11);
  }

  else
  {

    v46 = OUTLINED_FUNCTION_174();
    result = v47(v46);
  }

  v48 = *(v24 + 280);
  v49 = (*(v24 + 272) - 1) & *(v24 + 272);
  if (v49)
  {
    v50 = *(v24 + 256);
LABEL_10:
    *(v24 + 272) = v49;
    *(v24 + 280) = v48;
    OUTLINED_FUNCTION_185_2((*(v50 + 48) + ((v48 << 10) | (16 * __clz(__rbit64(v49))))));
    sub_227D4CE58();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v24 + 304) = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_35_7(v52);
    OUTLINED_FUNCTION_23();

    return sub_227B74EF8(v54, v55, v56);
  }

  else
  {
    while (1)
    {
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v51 >= (((1 << *(v24 + 352)) + 63) >> 6))
      {
        break;
      }

      v50 = *(v24 + 256);
      v49 = *(v50 + 8 * v51 + 56);
      ++v48;
      if (v49)
      {
        v48 = v51;
        goto LABEL_10;
      }
    }

    v58 = *(v24 + 264);

    OUTLINED_FUNCTION_265_2(MEMORY[0x277D84FA0]);
    result = *(v24 + 264);
    if (v59)
    {
      if (*(result + 16))
      {
        OUTLINED_FUNCTION_91_8();
        v63(v62, v60 + v61);
        v84 = OUTLINED_FUNCTION_13_0(v58) + 80;
        OUTLINED_FUNCTION_36_0();
        v85 = v64 + *v64;
        v65 = swift_task_alloc();
        v66 = OUTLINED_FUNCTION_118_3(v65);
        *v66 = v67;
        OUTLINED_FUNCTION_15_16(v66);
        OUTLINED_FUNCTION_23();

        return v71(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, v84, v85, a13, a14, a15, a16);
      }

LABEL_22:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_174_6(result);
    OUTLINED_FUNCTION_383_0();

    OUTLINED_FUNCTION_109_7();
    OUTLINED_FUNCTION_23();

    return v78(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227CEB550()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  (*(v0[27] + 8))(v0[28], v0[26]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_164();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_227CEB5F8(uint64_t a1)
{
  sub_227D4AF68();

  return sub_227D4A8E8();
}

uint64_t sub_227CEB630()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_227BCD2C4;
  OUTLINED_FUNCTION_336_1();
  OUTLINED_FUNCTION_117_0();

  return sub_227CEA58C();
}

unint64_t sub_227CEB6FC()
{
  sub_227D4D668();

  OUTLINED_FUNCTION_3_7();
  v1 = 0xE900000000000064;
  v2 = 0x6574656C706D6F63;
  if (*v0 != 1)
  {
    v2 = 7237495;
    v1 = 0xE300000000000000;
  }

  if (*v0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x657669746361;
  }

  if (*v0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  MEMORY[0x22AAA5DA0](v3, v4);

  MEMORY[0x22AAA5DA0](41, 0xE100000000000000);
  return 0xD000000000000023;
}

uint64_t sub_227CEB7D0()
{
  OUTLINED_FUNCTION_6();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v1[18] = v5;
  v6 = sub_227D4B9A8();
  v1[23] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[24] = v7;
  v1[25] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2D8, &qword_227D64200);
  OUTLINED_FUNCTION_5(v8);
  v1[26] = OUTLINED_FUNCTION_121();
  v1[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2E0, &qword_227D64208);
  OUTLINED_FUNCTION_5(v9);
  v1[28] = OUTLINED_FUNCTION_30();
  v10 = type metadata accessor for FilterableChallengeSummaryDetailResponse(0);
  v1[29] = v10;
  OUTLINED_FUNCTION_5(v10);
  v1[30] = OUTLINED_FUNCTION_121();
  v1[31] = swift_task_alloc();
  v11 = sub_227D4BA28();
  v1[32] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[33] = v12;
  v1[34] = OUTLINED_FUNCTION_121();
  v1[35] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2E8, &qword_227D64210);
  OUTLINED_FUNCTION_5(v13);
  v1[36] = OUTLINED_FUNCTION_121();
  v1[37] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2F0, &qword_227D64218);
  OUTLINED_FUNCTION_5(v14);
  v1[38] = OUTLINED_FUNCTION_30();
  v15 = type metadata accessor for FilterableChallengeSummaryInvite(0);
  v1[39] = v15;
  OUTLINED_FUNCTION_5(v15);
  v1[40] = OUTLINED_FUNCTION_121();
  v1[41] = swift_task_alloc();
  v16 = sub_227D4B178();
  v1[42] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[43] = v17;
  v1[44] = OUTLINED_FUNCTION_30();
  v18 = sub_227D4B1D8();
  v1[45] = v18;
  OUTLINED_FUNCTION_10_0(v18);
  v1[46] = v19;
  v1[47] = OUTLINED_FUNCTION_121();
  v1[48] = swift_task_alloc();
  v20 = sub_227D4B198();
  v1[49] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[50] = v21;
  v1[51] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4B8E8();
  v1[52] = v22;
  OUTLINED_FUNCTION_10_0(v22);
  v1[53] = v23;
  v1[54] = OUTLINED_FUNCTION_30();
  v24 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227CEBB38()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 176);
  *(v0 + 136) = MEMORY[0x277D84FA0];
  v2 = *v1;
  *(v0 + 568) = v2;
  if (v2)
  {
    *(v0 + 480) = v1[4];
    *(v0 + 488) = v1[6];
    v3 = swift_task_alloc();
    *(v0 + 496) = v3;
    *v3 = v0;
    v3[1] = sub_227CEC4A0;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_117_0();

    return sub_227B75978(v4, v5, v6, v7, v8);
  }

  else
  {
    *(v0 + 440) = v1[3];
    *(v0 + 448) = v1[4];
    *(v0 + 456) = v1[6];
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 464) = v11;
    *v11 = v12;
    v11[1] = sub_227CEBCAC;
    OUTLINED_FUNCTION_116_6();
    OUTLINED_FUNCTION_117_0();

    return sub_227B750FC(v13, v14, v15, v16, v17);
  }
}

uint64_t sub_227CEBCAC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 472) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CEBDA4()
{
  v1 = v0[46];
  v2 = v0[22];
  v3 = sub_227D4B8C8();
  v4 = MEMORY[0x22AAA3ED0](v3);
  v5 = OUTLINED_FUNCTION_132_0();
  v6(v5);
  v69 = v4;
  v71 = *(v2 + 8);
  v7 = *(v4 + 16);
  swift_retain_n();
  for (i = 0; v7 != i; ++i)
  {
    v9 = v0[47];
    v10 = v0[45];
    OUTLINED_FUNCTION_19();
    v12 = *(v1 + 16);
    (v12)(v9, v69 + v11 + *(v1 + 72) * i, v10);
    v0[10] = v10;
    v0[11] = &off_283B3E428;
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_141_4();
    v12();
    LOBYTE(v9) = v71(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    v13 = v0 + 47;
    if (v9)
    {
      v14 = OUTLINED_FUNCTION_375();
      v15(v14);
      sub_227D4B1A8();
      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v16, v17, v18);

      v13 = v0 + 48;
    }

    (*(v1 + 8))(*v13, v0[45]);
  }

  v67 = v0[39];
  v19 = v0[33];

  v20 = sub_227D4B8D8();
  v21 = MEMORY[0x22AAA3EB0](v20);
  v22 = OUTLINED_FUNCTION_149_0();
  v23(v22);
  v68 = (v19 + 16);
  v70 = *(v21 + 16);
  v66 = (v19 + 8);
  v24 = v0 + 40;

  sub_227D4CE58();
  result = sub_227D4CE58();
  v26 = 0;
  while (1)
  {
    if (v26 == v70)
    {
      v27 = 1;
      v26 = v70;
    }

    else
    {
      if (v26 >= v70)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_19();
      result = (*(v28 + 16))();
      if (__OFADD__(v26++, 1))
      {
        goto LABEL_29;
      }

      v27 = 0;
    }

    v30 = v0[36];
    v31 = v0[32];
    v32 = 1;
    __swift_storeEnumTagSinglePayload(v0[37], v27, 1, v31);
    OUTLINED_FUNCTION_276();
    sub_227CF3EB4();
    if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
    {
      v34 = v0[55];
      v33 = v0[56];
      v35 = v0[38];
      v36 = v0[34];
      v37 = v0[32];
      v38 = OUTLINED_FUNCTION_375();
      v39(v38);
      v40 = *v68;
      v41 = OUTLINED_FUNCTION_127_1();
      v40(v41);
      v42 = OUTLINED_FUNCTION_236();
      v40(v42);
      v43 = (v35 + *(v67 + 20));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
      OUTLINED_FUNCTION_378();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_227D4E520;
      *(v44 + 32) = v34;
      *(v44 + 40) = v33;
      v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
      OUTLINED_FUNCTION_17_11();
      v43[4] = sub_227B69F68(&qword_27D7E88A0, &qword_27D7E7710, &qword_227D531D0);
      *v43 = v44;
      v45 = *v66;
      sub_227D4CE58();
      v45(v36, v37);
      v46 = OUTLINED_FUNCTION_587();
      (v45)(v46);
      v24 = v0 + 40;
      v32 = 0;
    }

    v48 = v0[38];
    v47 = v0[39];
    __swift_storeEnumTagSinglePayload(v48, v32, 1, v47);
    if (__swift_getEnumTagSinglePayload(v48, 1, v47) == 1)
    {
      break;
    }

    v49 = v0[39];
    sub_227CF3DB0(v0[38], v0[40]);
    v0[15] = v49;
    v0[16] = &off_283B3E7E8;
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    v50 = OUTLINED_FUNCTION_78_0();
    sub_227CF3E08(v50, v51);
    v52 = v71(v0 + 12);
    __swift_destroy_boxed_opaque_existential_0(v0 + 12);
    if (v52)
    {
      sub_227CF3DB0(*v24, v0[41]);
      sub_227D4BA08();
      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v53, v54, v55);
    }

    result = sub_227CF3E60();
  }

  v56 = v0[56];
  sub_227B1DE58(v0[38], &qword_27D7EA2F0, &qword_227D64218);

  v57 = OUTLINED_FUNCTION_91_0();
  v58(v57);
  OUTLINED_FUNCTION_180_2();
  if (!v56)
  {
    OUTLINED_FUNCTION_297_1();
    while (v60 != v59)
    {
      OUTLINED_FUNCTION_339_1();
    }

    OUTLINED_FUNCTION_76_8();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_52();

    __asm { BRAA            X2, X16 }
  }

  v0[67] = 0;
  v0[66] = v56;
  OUTLINED_FUNCTION_135_7();
  v0[68] = *(v61 + 8);
  sub_227D4CE58();
  v62 = swift_task_alloc();
  v0[69] = v62;
  *v62 = v0;
  OUTLINED_FUNCTION_34_9(v62);
  OUTLINED_FUNCTION_52();

  return sub_227CECFB4();
}

uint64_t sub_227CEC4A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 504) = v4;
  *(v2 + 512) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CEC5A0()
{
  v1 = *(v0 + 192);
  v36 = *(v0 + 232);
  v37 = *(*(v0 + 176) + 8);
  v2 = *(*(v0 + 504) + 16);
  swift_retain_n();
  sub_227D4CE58();
  result = sub_227D4CE58();
  v4 = 0;
  while (1)
  {
    if (v4 == v2)
    {
      v5 = 1;
      v4 = v2;
    }

    else
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_136_0();
      result = (*(v1 + 16))();
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_24;
      }

      v5 = 0;
    }

    v7 = *(v0 + 208);
    v8 = *(v0 + 184);
    v9 = 1;
    __swift_storeEnumTagSinglePayload(*(v0 + 216), v5, 1, v8);
    OUTLINED_FUNCTION_173();
    sub_227CF3EB4();
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      v10 = *(v0 + 568);
      v11 = *(v0 + 224);
      v12 = *(v0 + 200);
      v13 = *(v0 + 184);
      (*(v1 + 32))(v12, *(v0 + 208), v13);
      (*(v1 + 16))(v11, v12, v13);
      *(v11 + *(v36 + 20)) = v10;
      v14 = OUTLINED_FUNCTION_173();
      v15(v14);
      v9 = 0;
    }

    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    __swift_storeEnumTagSinglePayload(v17, v9, 1, v16);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v16);
    v19 = *(v0 + 224);
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v20 = *(v0 + 232);
    sub_227CF3DB0(v19, *(v0 + 240));
    *(v0 + 40) = v20;
    *(v0 + 48) = &off_283B3E830;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v21 = OUTLINED_FUNCTION_78_0();
    sub_227CF3E08(v21, v22);
    v23 = v37(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v23)
    {
      sub_227CF3DB0(*(v0 + 240), *(v0 + 248));
      sub_227D4B998();
      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v24, v25, v26);
    }

    result = sub_227CF3E60();
  }

  v27 = *(v0 + 504);
  sub_227B1DE58(v19, &qword_27D7EA2E0, &qword_227D64208);

  OUTLINED_FUNCTION_180_2();
  if (!v27)
  {
    OUTLINED_FUNCTION_297_1();
    while (v29 != v28)
    {
      OUTLINED_FUNCTION_339_1();
    }

    OUTLINED_FUNCTION_76_8();
    OUTLINED_FUNCTION_216_2(v33);

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_65();

    __asm { BRAA            X2, X16 }
  }

  *(v0 + 536) = 0;
  *(v0 + 528) = v27;
  OUTLINED_FUNCTION_135_7();
  *(v0 + 544) = *(v30 + 8);
  sub_227D4CE58();
  v31 = swift_task_alloc();
  *(v0 + 552) = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_34_9(v31);
  OUTLINED_FUNCTION_65();

  return sub_227CECFB4();
}

uint64_t sub_227CECA00()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 560) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CECB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();

  v22 = *(v20 + 536);
  v23 = (*(v20 + 528) - 1) & *(v20 + 528);
  if (v23)
  {
    v24 = *(v20 + 520);
LABEL_7:
    *(v20 + 536) = v22;
    *(v20 + 528) = v23;
    *(v20 + 544) = *(*(v24 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v23)))) + 8);
    sub_227D4CE58();
    v26 = swift_task_alloc();
    *(v20 + 552) = v26;
    *v26 = v20;
    OUTLINED_FUNCTION_34_9(v26);
    OUTLINED_FUNCTION_137();

    return sub_227CECFB4();
  }

  else
  {
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return result;
      }

      if (v25 >= (((1 << *(v20 + 569)) + 63) >> 6))
      {
        break;
      }

      v24 = *(v20 + 520);
      v23 = *(v24 + 8 * v25 + 56);
      ++v22;
      if (v23)
      {
        v22 = v25;
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_76_8();
    OUTLINED_FUNCTION_216_2(v28);

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_137();

    return v31(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_227CECCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_50_8();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_137();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CECDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_50_8();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_137();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CECEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();

  OUTLINED_FUNCTION_50_8();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_137();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CECFB4()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v0[14] = v1;
  v0[15] = v2;
  v0[12] = v3;
  v0[13] = v4;
  v0[10] = v5;
  v0[11] = v6;
  v7 = sub_227D4CAB8();
  v0[16] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v0[19] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[20] = v10;
  v0[21] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4B078();
  v0[22] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[23] = v12;
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[26] = v13;
  *v13 = v14;
  v13[1] = sub_227CED16C;
  OUTLINED_FUNCTION_267_2();
  OUTLINED_FUNCTION_164();

  return sub_227B74EF8(v15, v16, v17);
}

uint64_t sub_227CED16C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CED264()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[13];
  (*(v0[23] + 32))(v0[25], v0[24], v0[22]);
  OUTLINED_FUNCTION_13_0(v1);
  OUTLINED_FUNCTION_32();
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_227CED384;
  v3 = OUTLINED_FUNCTION_18_11(v0[25]);

  return v4(v3);
}

uint64_t sub_227CED384()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CED47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = *(v12 + 112);
  sub_227D4AF68();
  sub_227D4A8E8();
  v14 = OUTLINED_FUNCTION_347_0();
  v13(v14);
  v15 = OUTLINED_FUNCTION_93_6();
  v16(v15);
  v17 = OUTLINED_FUNCTION_9_2();
  v18(v17);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_227CED550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_138();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_166();
  a22 = v24;
  v27 = *(v24 + 216);
  v28 = *(v24 + 96);
  sub_227D4AA58();
  *(v24 + 16) = *(v28 + 24);
  *(v24 + 32) = *(v28 + 40);

  sub_227CF3F04(v24 + 16, v24 + 48);
  sub_227CF3F60();
  sub_227D4CE58();
  v29 = v27;
  v30 = sub_227D4CA98();
  v31 = sub_227D4D438();

  sub_227B3DACC(v24 + 16);
  sub_227B1DE58(v24 + 32, &qword_27D7E6880, &qword_227D5C4B0);

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v24 + 216);
  v34 = *(v24 + 136);
  v35 = *(v24 + 128);
  if (v32)
  {
    a12 = *(v24 + 144);
    a9 = *(v24 + 80);
    a10 = *(v24 + 88);
    v36 = OUTLINED_FUNCTION_14_5();
    v37 = swift_slowAlloc();
    a13 = OUTLINED_FUNCTION_420();
    *v36 = 136315650;
    v38 = sub_227CEB6FC();
    a11 = v35;
    v40 = sub_227B1B1A4(v38, v39, &a13);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_227B1B1A4(a9, a10, &a13);
    *(v36 + 22) = 2112;
    v41 = v33;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 24) = v42;
    *v37 = v42;
    OUTLINED_FUNCTION_365(&dword_227B0D000, v43, v44, "%s failed to get challenge ID: %s, error: %@");
    sub_227B1DE58(v37, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_79_2();
    OUTLINED_FUNCTION_509();
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_48_1();

    (*(v34 + 8))(a12, a11);
  }

  else
  {

    v45 = OUTLINED_FUNCTION_147();
    v47(v45, v46);
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_23();

  return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CED7B4()
{
  OUTLINED_FUNCTION_20();
  (*(v0[23] + 8))(v0[25], v0[22]);

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CED854()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 72) = v3;
  *v3 = v1;
  v3[1] = sub_227CED91C;
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_164();

  return sub_227CEB7D0();
}

uint64_t sub_227CED91C()
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

unint64_t sub_227CEDA3C(uint64_t a1, uint64_t a2)
{
  v2 = sub_227D4D868();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_227CEDA88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227CEDA3C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_227CEDAB8()
{
  OUTLINED_FUNCTION_0_21();
  sub_227CF3070();
  OUTLINED_FUNCTION_255_0();
  return sub_227D4D198();
}

uint64_t sub_227CEDB04()
{
  OUTLINED_FUNCTION_0_21();
  sub_227CF3070();
  OUTLINED_FUNCTION_255_0();
  return sub_227D4D158();
}

uint64_t sub_227CEDB50@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InternalChallengeInvite(0) + 32);
  sub_227D4A408();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227CEDC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  v12 = *(type metadata accessor for InternalChallengeInvite(0) + 32);
  sub_227D4A408();
  OUTLINED_FUNCTION_62_0();
  (*(v13 + 32))(&a9[v12], a8);
  return sub_227CF3EB4();
}

uint64_t sub_227CEDCB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((a1 & 0x100000000) == 0)
  {
    *a2 = a1;
  }

  sub_227D4A2B8();
  OUTLINED_FUNCTION_62_0();
  v2 = OUTLINED_FUNCTION_197_4();

  return v3(v2);
}

void static Array<A>.fromISO8601Duration(iso8601Duration:)()
{
  OUTLINED_FUNCTION_351();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1E8, &qword_227D63C88);
  OUTLINED_FUNCTION_5(v7);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_68_3();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1F0, &qword_227D63C90);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_61_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1F8, &qword_227D63C98);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  if (v4)
  {
    v32 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA200, &qword_227D63CA0);
    sub_227D4AC48();
    OUTLINED_FUNCTION_255_0();
    sub_227D4AC58();
    if (v0)
    {

      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
LABEL_6:
      sub_227B1DE58(v2, &qword_27D7EA1E8, &qword_227D63C88);
      v18 = sub_227D49E08();
      OUTLINED_FUNCTION_1_34();
      sub_227B12A58(v19, v20);
      OUTLINED_FUNCTION_208();
      swift_allocError();
      *v21 = v6;
      v21[1] = v4;
      (*(*(v18 - 8) + 104))(v21, *MEMORY[0x277D0CE68], v18);
      swift_willThrow();
      v22 = *(v32 + 8);
      sub_227D4CE58();
      v23 = OUTLINED_FUNCTION_57_0();
      v22(v23);
      goto LABEL_7;
    }

    if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
    {
      goto LABEL_6;
    }

    v24 = OUTLINED_FUNCTION_93_0();
    v26 = v25(v24);
    if (qword_280E7BD88 != -1)
    {
      v26 = swift_once();
    }

    MEMORY[0x28223BE20](v26);
    OUTLINED_FUNCTION_109();
    *(v27 - 16) = v1;
    sub_227CE5A2C(sub_227CF2CCC, v28, v29);
    v30 = OUTLINED_FUNCTION_57_0();
    v31(v30);
    (*(v11 + 8))(v1, v9);
  }

LABEL_7:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CEE110(uint64_t (*a1)(void), void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  if ((a1() & 1) == 0)
  {
    return 0;
  }

  a2();
  sub_227CE96D0();
  v6 = v5;
  v8 = v7;

  v10 = a3(v9);
  if (!v8)
  {

    return 1;
  }

  if (v6 != v10 || v8 != v11)
  {
    v13 = OUTLINED_FUNCTION_385_1(v6, v8, v10);

    if (v13)
    {
      return 2;
    }

    return 1;
  }

  return 2;
}

void sub_227CEE1E4()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103();
  v9 = v4();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    OUTLINED_FUNCTION_378();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_227D4E520;
    *(v10 + 32) = v2();
    *(v10 + 40) = v12;
    v11 = 1;
  }

  v17 = MEMORY[0x277D84F90];
  sub_227C11484(0, v11, 0);
  v13 = v10 + 40;
  do
  {
    sub_227D4CE58();
    OUTLINED_FUNCTION_173();
    sub_227D4A698();
    v15 = *(v17 + 16);
    v14 = *(v17 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_227C11484(v14 > 1, v15 + 1, 1);
    }

    *(v17 + 16) = v15 + 1;
    OUTLINED_FUNCTION_19();
    (*(v7 + 32))(v17 + v16 + *(v7 + 72) * v15, v0, v5);
    v13 += 16;
    --v11;
  }

  while (v11);
LABEL_9:

  OUTLINED_FUNCTION_8_1();
}

void sub_227CEE3B4()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_360_1(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v39 = v3;
  v4 = OUTLINED_FUNCTION_382_0();
  v5 = OUTLINED_FUNCTION_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v40 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_103();
  v12 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  MEMORY[0x22AAA3D70]();
  if ((v19 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E0, &qword_227D59C20);
    v20 = sub_227D4A328();
    OUTLINED_FUNCTION_10_0(v20);
    *(OUTLINED_FUNCTION_215_4() + 16) = xmmword_227D4E520;
    (*(v14 + 104))(v18, *MEMORY[0x277D0D160], v12);
    v21 = sub_227C1897C();
    sub_227B2819C(MEMORY[0x277D84A28], v21);
    v22 = sub_227D4DC18();
    OUTLINED_FUNCTION_275(v22);
  }

  sub_227D4AF68();
  sub_227D4AF68();
  sub_227D4A8E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v23, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_232_1();
  *(OUTLINED_FUNCTION_377_1() + 16) = xmmword_227D4E520;
  v24 = sub_227D4B008();
  OUTLINED_FUNCTION_376_0(v24, v25);
  sub_227D4A8B8();
  if (v41)
  {
    v26 = OUTLINED_FUNCTION_199_2();
    v27(v26);

LABEL_11:
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_352();
    return;
  }

  OUTLINED_FUNCTION_12_15();
  sub_227CEE1E4();
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_55_10();
    v31(v0, v29 + v30, v40);

    v32 = sub_227D4AFD8();
    if (!v33)
    {
      v32 = 0;
    }

    OUTLINED_FUNCTION_374_1(v32);
    v34 = OUTLINED_FUNCTION_350_1();
    v35(v34);

    OUTLINED_FUNCTION_12_15();
    sub_227CEE1E4();
    MEMORY[0x22AAA3D40]();
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    OUTLINED_FUNCTION_349_1();
    v36 = sub_227D4AF98();
    if ((v36 & 0x100000000) == 0)
    {
      *v39 = v36;
    }

    v37 = OUTLINED_FUNCTION_295_0();
    v38(v37);
    OUTLINED_FUNCTION_201_3();
    goto LABEL_11;
  }

  __break(1u);
}

void sub_227CEE988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v52 = v14;
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_9();
  v55 = v16;
  v56 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_3();
  v57 = v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_0();
  v60 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9();
  v53 = v21;
  v54 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26_0();
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v58 = v25;
  v59 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  v28 = v51 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  v63 = v30;
  v64 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_75_2();
  v32 = sub_227D4AF78();
  if (!v33)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_301_0(v40);
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v41, v42);
    OUTLINED_FUNCTION_18_2();
    swift_allocError();
    sub_227D49DD8();
    sub_227B1DE58(&v65, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_233_0(v32);
  v51[2] = sub_227D4AF68();
  v35 = v34;
  sub_227D4AF68();
  sub_227D4A8E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v36, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_232_1();
  v37 = OUTLINED_FUNCTION_359_0();
  *(v37 + 16) = xmmword_227D4E520;
  v38 = (v37 + v12);
  *v38 = sub_227D4B008();
  v38[1] = v39;
  OUTLINED_FUNCTION_114();
  swift_storeEnumTagMultiPayload();
  sub_227D4A8B8();
  if (a10)
  {
    (*(v63 + 8))(v10, v64);

LABEL_7:
    OUTLINED_FUNCTION_352();
    return;
  }

  v51[1] = v35;
  OUTLINED_FUNCTION_12_15();
  sub_227CEE1E4();
  if (*(v43 + 16))
  {
    OUTLINED_FUNCTION_55_10();
    v44 = OUTLINED_FUNCTION_351_1();
    v45(v44);

    OUTLINED_FUNCTION_300_1();
    v51[6] = v28;
    v46 = OUTLINED_FUNCTION_175_4();
    v47(v46, v10);

    OUTLINED_FUNCTION_12_15();
    sub_227CEE1E4();
    v65 = MEMORY[0x22AAA3D40]();
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    sub_227D4AFA8();
    static Array<A>.fromISO8601Duration(iso8601Duration:)();

    v48 = sub_227D4AF98();
    if ((v48 & 0x100000000) == 0)
    {
      *v52 = v48;
    }

    v49 = OUTLINED_FUNCTION_179_3();
    v50(v49);
    OUTLINED_FUNCTION_220_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_227CEEFA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    *a3 = a1;
  }

  sub_227D4A2B8();
  OUTLINED_FUNCTION_62_0();
  v3 = OUTLINED_FUNCTION_197_4();

  return v4(v3);
}

uint64_t sub_227CEF018()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA258, &qword_227D63FF8);
  OUTLINED_FUNCTION_342();
  v0 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227D59C40;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D0D148], v0);
  v8(v7 + v4, *MEMORY[0x277D0D150], v0);
  v8(v7 + 2 * v4, *MEMORY[0x277D0D140], v0);
  result = (v8)(v7 + 3 * v4, *MEMORY[0x277D0D130], v0);
  qword_280E7BD70 = v6;
  return result;
}

uint64_t sub_227CEF15C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA258, &qword_227D63FF8);
  OUTLINED_FUNCTION_419();
  v0 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_227D50C20;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x277D0D138], v0);
  v8(v7 + v4, *MEMORY[0x277D0D158], v0);
  result = (v8)(v7 + 2 * v4, *MEMORY[0x277D0D160], v0);
  qword_280E7BD80 = v6;
  return result;
}

uint64_t sub_227CEF280()
{
  if (_MergedGlobals_15 != -1)
  {
    OUTLINED_FUNCTION_166_5();
    swift_once();
  }

  v0 = qword_280E7BD70;
  v1 = qword_280E7BD78;
  sub_227D4CE58();
  if (v1 != -1)
  {
    OUTLINED_FUNCTION_165_5();
    swift_once();
  }

  v2 = sub_227D4CE58();
  result = sub_227CF2488(v2);
  qword_280E7BD90 = v0;
  return result;
}

uint64_t sub_227CEF324()
{
  sub_227D4A318();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_327();
  v1 = OUTLINED_FUNCTION_127_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_173_0();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D0D160])
  {
    return 83;
  }

  if (v5 == *MEMORY[0x277D0D158])
  {
    return 77;
  }

  if (v5 == *MEMORY[0x277D0D138])
  {
    return 72;
  }

  if (v5 == *MEMORY[0x277D0D130])
  {
    return 68;
  }

  if (v5 == *MEMORY[0x277D0D140])
  {
    return 87;
  }

  if (v5 == *MEMORY[0x277D0D150])
  {
    return 77;
  }

  if (v5 == *MEMORY[0x277D0D148])
  {
    return 89;
  }

  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x22AAA5DA0](0xD00000000000002BLL);
  sub_227D4D7B8();
  sub_227D49E08();
  OUTLINED_FUNCTION_1_34();
  sub_227B12A58(v7, v8);
  OUTLINED_FUNCTION_208();
  swift_allocError();
  OUTLINED_FUNCTION_174();
  sub_227D49D98();

  swift_willThrow();
  v9 = OUTLINED_FUNCTION_173_0();
  return v10(v9);
}

uint64_t sub_227CEF570()
{
  sub_227D4A318();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_246_0();
  OUTLINED_FUNCTION_327();
  v1 = OUTLINED_FUNCTION_127_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_173_0();
  v5 = v4(v3);
  if (v5 == *MEMORY[0x277D0D160] || v5 == *MEMORY[0x277D0D158] || v5 == *MEMORY[0x277D0D138] || v5 == *MEMORY[0x277D0D130] || v5 == *MEMORY[0x277D0D140] || v5 == *MEMORY[0x277D0D150] || v5 == *MEMORY[0x277D0D148])
  {
    return swift_getKeyPath();
  }

  OUTLINED_FUNCTION_363_1();
  OUTLINED_FUNCTION_21_2();
  MEMORY[0x22AAA5DA0](0xD00000000000002BLL);
  sub_227D4D7B8();
  sub_227D49E08();
  OUTLINED_FUNCTION_1_34();
  sub_227B12A58(v7, v8);
  OUTLINED_FUNCTION_208();
  swift_allocError();
  OUTLINED_FUNCTION_174();
  sub_227D49D98();

  swift_willThrow();
  v9 = OUTLINED_FUNCTION_173_0();
  return v10(v9);
}

void Array<A>.timeUnitToValue.getter()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_342();
  v54 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_54_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  sub_227D4A328();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_246_0();
  if (*(v0 + 16))
  {
    v15 = *(v12 + 16);
    v14 = v12 + 16;
    v53 = v15;
    OUTLINED_FUNCTION_19();
    v18 = v0 + v17;
    v19 = *(v14 + 56);
    v46 = v3;
    v47 = v19;
    v20 = (v3 + 8);
    v45 = v3 + 16;
    v21 = MEMORY[0x277D84F98];
    v49 = v7;
    v50 = v14 - 8;
    v48 = v14;
    v51 = v1;
    v52 = v10;
    v57 = (v3 + 8);
    while (1)
    {
      v55 = v18;
      v56 = v16;
      v53(v1);
      sub_227D4A2F8();
      sub_227D4A2F8();
      if (v21[2])
      {
        v22 = sub_227CF1EB0(v7);
        v23 = *v20;
        v25 = (v24 & 1) != 0 ? *(v21[7] + 8 * v22) : 0;
      }

      else
      {
        v25 = 0;
        v23 = *v20;
      }

      v26 = v54;
      v27 = v23;
      (v23)(v7, v54);
      v28 = sub_227D4A308();
      v1 = v25 + v28;
      if (__OFADD__(v25, v28))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v58 = v21;
      v29 = v52;
      v30 = sub_227CF1EB0(v52);
      if (__OFADD__(v21[2], (v31 & 1) == 0))
      {
        goto LABEL_20;
      }

      v32 = v30;
      v33 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA208, &qword_227D63CA8);
      if (sub_227D4D7C8())
      {
        v34 = sub_227CF1EB0(v29);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_22;
        }

        v32 = v34;
      }

      v21 = v58;
      if (v33)
      {
        v36 = OUTLINED_FUNCTION_247_1();
        v27(v36);
        v37 = OUTLINED_FUNCTION_278_1();
        v38(v37);
      }

      else
      {
        v58[(v32 >> 6) + 8] |= 1 << v32;
        (*(v46 + 16))(v21[6] + *(v46 + 72) * v32, v29, v26);
        v39 = OUTLINED_FUNCTION_247_1();
        v27(v39);
        v40 = OUTLINED_FUNCTION_278_1();
        v41(v40);
        v42 = v21[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_21;
        }

        v21[2] = v44;
      }

      v18 = v55 + v47;
      v16 = v56 - 1;
      v7 = v49;
      v20 = v57;
      if (v56 == 1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_227D4DAE8();
    __break(1u);
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_8_1();
  }
}

uint64_t sub_227CEFB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2B0, &qword_227D64070);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_227D4B078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    sub_227B1DE58(a1, &qword_27D7EA2B0, &qword_227D64070);
    sub_227CF1F48(a2, a3, v10);

    return sub_227B1DE58(v10, &qword_27D7EA2B0, &qword_227D64070);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_227CF2090(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

void sub_227CEFD20()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = *(v6 + 16);
    OUTLINED_FUNCTION_19();
    v14 = v2 + v13;
    v41 = *(v6 + 72);
    v40 = MEMORY[0x277D84F90];
    do
    {
      v15 = OUTLINED_FUNCTION_173();
      v12(v15);
      if (*(v4 + 16) && (v16 = sub_227CF1EB0(v10), (v17 & 1) != 0) && *(*(v4 + 56) + 8 * v16) >= 1)
      {
        v18 = sub_227D4DA38();
        MEMORY[0x22AAA5DA0](v18);

        sub_227CEF324();
        if (v0)
        {

          v38 = OUTLINED_FUNCTION_271_0();
          v39(v38);

          goto LABEL_15;
        }

        sub_227D4CEB8();

        v19 = OUTLINED_FUNCTION_271_0();
        v20(v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = OUTLINED_FUNCTION_21();
          v40 = sub_227B25F88(v26, v27, v28, v29);
        }

        v22 = *(v40 + 2);
        v21 = *(v40 + 3);
        if (v22 >= v21 >> 1)
        {
          v30 = OUTLINED_FUNCTION_55(v21);
          v40 = sub_227B25F88(v30, v31, v32, v40);
        }

        *(v40 + 2) = v22 + 1;
        v23 = &v40[16 * v22];
        *(v23 + 4) = 0;
        *(v23 + 5) = 0xE000000000000000;
      }

      else
      {
        v24 = OUTLINED_FUNCTION_271_0();
        v25(v24);
      }

      v14 += v41;
      --v11;
    }

    while (v11);
  }

  v33 = OUTLINED_FUNCTION_116_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_141_4();
  sub_227B69F68(v35, v36, v37);
  sub_227D4CEC8();

LABEL_15:
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_352();
}

void sub_227CEFFFC()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v32 = v3;
  v4 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1F0, &qword_227D63C90);
  sub_227D4AC78();
  v55[0] = v38;
  v55[1] = v39;
  v55[2] = v40;
  *(&v55[3] + 8) = v42;
  *(&v55[4] + 8) = v43;
  *(&v55[5] + 8) = v44;
  *(&v55[6] + 8) = v45;
  *(&v55[7] + 8) = v46;
  *(&v55[8] + 8) = v47;
  *(&v55[9] + 8) = v48;
  *(&v55[10] + 8) = v49;
  *(&v55[11] + 8) = v50;
  *(&v55[12] + 8) = v51;
  *(&v55[13] + 8) = v52;
  *(&v55[14] + 8) = v53;
  *&v55[3] = v41;
  *(&v55[15] + 1) = v54;
  sub_227CF3F60();
  sub_227CEF570();
  if (!v0)
  {
    memcpy(v36, v55, sizeof(v36));
    swift_getAtKeyPath();

    memcpy(v37, v36, sizeof(v37));
    sub_227B1DE58(v37, &qword_27D7EA200, &qword_227D63CA0);
    if (!v35)
    {

      OUTLINED_FUNCTION_393_1();
      OUTLINED_FUNCTION_392_1();
      OUTLINED_FUNCTION_391_1();
      OUTLINED_FUNCTION_390_1();
      OUTLINED_FUNCTION_389_1();
      OUTLINED_FUNCTION_388_0();
      v17 = 1;
      v18 = v32;
LABEL_15:
      v31 = sub_227D4A328();
      __swift_storeEnumTagSinglePayload(v18, v17, 1, v31);
      goto LABEL_16;
    }

    if ((v34 ^ v33) >= 0x4000)
    {
      v11 = OUTLINED_FUNCTION_262_1();
      v14 = sub_227CF30C4(v11, v12, v13, v35, 10);
      if ((v15 & 0x100) != 0)
      {
        sub_227D4CE58();
        v19 = OUTLINED_FUNCTION_262_1();
        v16 = sub_227CF25F0(v19, v20, v21, v35, 10);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
LABEL_12:
          v18 = v32;

          if (v16 < 1)
          {

            OUTLINED_FUNCTION_393_1();
            OUTLINED_FUNCTION_392_1();
            OUTLINED_FUNCTION_391_1();
            OUTLINED_FUNCTION_390_1();
            OUTLINED_FUNCTION_389_1();
            OUTLINED_FUNCTION_388_0();
            v17 = 1;
          }

          else
          {
            (*(v6 + 16))(v10, v2, v4);
            OUTLINED_FUNCTION_127_1();
            sub_227D4A2E8();

            OUTLINED_FUNCTION_393_1();
            OUTLINED_FUNCTION_392_1();
            OUTLINED_FUNCTION_391_1();
            OUTLINED_FUNCTION_390_1();
            OUTLINED_FUNCTION_389_1();
            OUTLINED_FUNCTION_388_0();
            v17 = 0;
          }

          goto LABEL_15;
        }
      }

      else if ((v15 & 1) == 0)
      {
        v16 = v14;
        goto LABEL_12;
      }
    }

    v24 = sub_227D49E08();
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v25, v26);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    v28 = v27;
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_227D4D668();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x22AAA5DA0](0xD000000000000019);
    MEMORY[0x22AAA5D70]();

    v29 = OUTLINED_FUNCTION_93_0();
    MEMORY[0x22AAA5DA0](v29);

    MEMORY[0x22AAA5DA0](0x203A726F6620, 0xE600000000000000);
    sub_227D4D7B8();
    v30 = v36[1];
    *v28 = v36[0];
    v28[1] = v30;
    (*(*(v24 - 8) + 104))(v28, *MEMORY[0x277D0CE68], v24);
    swift_willThrow();
    goto LABEL_3;
  }

  sub_227B1DE58(v55, &qword_27D7EA200, &qword_227D63CA0);
LABEL_3:

  OUTLINED_FUNCTION_393_1();

  OUTLINED_FUNCTION_392_1();
  OUTLINED_FUNCTION_391_1();
  OUTLINED_FUNCTION_390_1();
  OUTLINED_FUNCTION_389_1();
  OUTLINED_FUNCTION_388_0();
LABEL_16:
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CF0500(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (v5 == 1)
      {
        v7 = 0x6574656C706D6F63;
      }

      else
      {
        v7 = 7237495;
      }

      if (v5 == 1)
      {
        v8 = 0xE900000000000064;
      }

      else
      {
        v8 = 0xE300000000000000;
      }

      if (*v3)
      {
        v9 = v7;
      }

      else
      {
        v9 = 0x657669746361;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (v6 == 1)
      {
        v11 = 0x6574656C706D6F63;
      }

      else
      {
        v11 = 7237495;
      }

      if (v6 == 1)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0xE300000000000000;
      }

      if (*v4)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x657669746361;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      if (v9 == v13 && v10 == v14)
      {
      }

      else
      {
        v16 = sub_227D4DA78();

        if ((v16 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

void *sub_227CF0648(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7EA258, &qword_227D63FF8, MEMORY[0x277D0D168]);
  v11 = *(sub_227D4A318() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0D168]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CF076C(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7E85E0, &qword_227D59C20, MEMORY[0x277D0D188]);
  v11 = *(sub_227D4A328() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0D188]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227CF0890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2C0, &qword_227D64080);
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

void *sub_227CF0984(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2C8, &qword_227D640A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2D0, &qword_227D640A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CF0ABC(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7EA2F8, &qword_227D64238, MEMORY[0x277D0C370]);
  v11 = *(sub_227D4B078() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0C370]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CF0BE0(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7EA2A8, &qword_227D64068, MEMORY[0x277D0CF48]);
  v11 = *(sub_227D49F48() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0CF48]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_227CF0D04()
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
  v12 = sub_227CF1488(v11, v8, v5, v6);
  v13 = OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_19();
  if (v3)
  {
    sub_227CF1630(v0 + v15, v11, v12 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_227CF0DF4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7EA278, &qword_227D64020, MEMORY[0x277D0CFD0]);
  v11 = *(sub_227D49F88() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0CFD0]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_227CF0F18()
{
  OUTLINED_FUNCTION_189_0();
  if (v5)
  {
    OUTLINED_FUNCTION_154();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
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
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 8);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v11 != v0 || &v0[v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_173();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    v17 = OUTLINED_FUNCTION_87_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
    OUTLINED_FUNCTION_173();
    swift_arrayInitWithCopy();
  }
}

void *sub_227CF1020(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7EA280, &qword_227D64028, MEMORY[0x277D0D220]);
  v11 = *(sub_227D4A408() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0D220]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CF1144(void *result, int64_t a2, char a3, uint64_t a4)
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
  v10 = sub_227CF139C(v9, a2, &qword_27D7EA270, &qword_227D64018, MEMORY[0x277D0D260]);
  v11 = *(sub_227D4A418() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_227CF1574(a4 + v12, v9, v10 + v12, MEMORY[0x277D0D260]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CF1268(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA260, &qword_227D64000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA268, &unk_227D64008);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227CF139C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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

  OUTLINED_FUNCTION_386_1(a1, a2, a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_10_0(v8);
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

void *sub_227CF1488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_386_1(a1, a2, a3, a4);
  v6 = OUTLINED_FUNCTION_87_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_10_0(v8);
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

void sub_227CF1574(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_37();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_62_0(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_227CF1630(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_37();
  if (v11 < v10 || (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_62_0(), v6 + *(v12 + 72) * v5 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v6)
  {
    OUTLINED_FUNCTION_49();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_227CF1780()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CF180C;
  OUTLINED_FUNCTION_13_2();

  return sub_227CD8230();
}

uint64_t sub_227CF180C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_58_8();
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  OUTLINED_FUNCTION_50_0();

  return v6(v0, v3);
}

void sub_227CF1940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_227CF198C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_227CF1BE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227CF1A04(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF0, &qword_227D5BA40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227CF1630(a4 + v16, v8, v13 + v16, &qword_27D7E6888, &unk_227D4E630);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_227CF1BE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2C8, &qword_227D640A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2D0, &qword_227D640A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_227CF1D18()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
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
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_10_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_19();
  if (v10)
  {
    sub_227CF1574(v8 + v25, v15, v22 + v25, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_8_1();
}

unint64_t sub_227CF1EB0(uint64_t a1)
{
  sub_227D4A318();
  sub_227B12A58(&qword_27D7EA238, MEMORY[0x277D0D168]);
  v2 = sub_227D4CE98();

  return sub_227CF22B4(a1, v2);
}

uint64_t sub_227CF1F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_227B2664C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2B8, &qword_227D64078);
    sub_227D4D7C8();

    v8 = *(v14 + 56);
    v9 = sub_227D4B078();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_227D4D7E8();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_227D4B078();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_227CF2090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_227B2664C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2B8, &qword_227D64078);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_227B2664C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_227D4B078();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_227CF2204(v12, a2, a3, a1, v16);

    return sub_227D4CE58();
  }
}

uint64_t sub_227CF2204(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_227D4B078();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_227CF22B4(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_227D4A318();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_227B12A58(&qword_27D7EA240, MEMORY[0x277D0D168]);
    v9 = sub_227D4CF38();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_227CF247C(uint64_t result)
{
  if (result)
  {
    return sub_227D4CE58();
  }

  __break(1u);
  return result;
}

uint64_t sub_227CF2488(uint64_t a1)
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

  sub_227CF2588(result, 1);
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
  result = sub_227D4A318();
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

void *sub_227CF2588(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_227CF0648(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unsigned __int8 *sub_227CF25F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_227CF31A0();
  sub_227D4CE58();
  result = sub_227D4D0E8();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_227BD34C8(result, v7);
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_227D4D6C8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_227CF2B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227CF247C(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_27Tm()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_337_1();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_227CF2BF4()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CF4158;
  OUTLINED_FUNCTION_13_2();

  return sub_227CE1490();
}

uint64_t sub_227CF2C80(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_227CF2C90(uint64_t a1, void *a2)
{
  sub_227CE7054();
  if (v2)
  {
    *a2 = v2;
  }
}

unint64_t sub_227CF2CEC()
{
  result = qword_27D7EA210;
  if (!qword_27D7EA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA210);
  }

  return result;
}

uint64_t sub_227CF2D84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 64))
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

  return OUTLINED_FUNCTION_161(v2);
}

void *sub_227CF2DC0(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[7] = 0;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
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

      return OUTLINED_FUNCTION_160(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_160(result, a2);
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ChallengeStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_227CF2F1C()
{
  sub_227CF2FC8();
  if (v0 <= 0x3F)
  {
    sub_227D4A408();
    if (v1 <= 0x3F)
    {
      sub_227CF3018(319);
      if (v2 <= 0x3F)
      {
        OUTLINED_FUNCTION_28_6();
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_227CF2FC8()
{
  if (!qword_27D7EA228)
  {
    v0 = sub_227D4D248();
    if (!v1)
    {
      atomic_store(v0, &qword_27D7EA228);
    }
  }
}

void sub_227CF3018(uint64_t a1)
{
  if (!qword_27D7E99F8)
  {
    sub_227D492A8();
    v1 = sub_227D4D4F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7E99F8);
    }
  }
}

unint64_t sub_227CF3070()
{
  result = qword_27D7EA230;
  if (!qword_27D7EA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA230);
  }

  return result;
}

uint64_t sub_227CF30C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_227D4D6C8();
  }

  result = sub_227CF31F4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_227CF31A0()
{
  result = qword_27D7EA250;
  if (!qword_27D7EA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA250);
  }

  return result;
}

uint64_t sub_227CF31F4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_227BD38D8(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_227D4D0A8();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_227BD38D8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_227BD38D8(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_227D4D0A8();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_227CF363C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CF4158;
  OUTLINED_FUNCTION_13_2();

  return sub_227CE1490();
}

unint64_t sub_227CF36C8()
{
  result = qword_27D801F28;
  if (!qword_27D801F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D801F28);
  }

  return result;
}

unint64_t sub_227CF374C()
{
  result = qword_27D801F30[0];
  if (!qword_27D801F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D801F30);
  }

  return result;
}

uint64_t sub_227CF37A0(void *a1)
{
  v3 = v1[4];
  if (*(v3 + 16) && (v4 = OUTLINED_FUNCTION_132_0(), __swift_project_boxed_opaque_existential_1(v4, v5), v6 = OUTLINED_FUNCTION_148(), v8 = v7(v6), v9))
  {
    v10 = sub_227B39740(v8, v9, v3);

    v49 = !v10;
  }

  else
  {
    v49 = 0;
  }

  v11 = v1[5];
  if (*(v11 + 16) && (v12 = OUTLINED_FUNCTION_132_0(), __swift_project_boxed_opaque_existential_1(v12, v13), v14 = OUTLINED_FUNCTION_148(), v16 = v15(v14), v17))
  {
    v18 = sub_227B39740(v16, v17, v11);

    v19 = !v18;
  }

  else
  {
    v19 = 0;
  }

  if (*(v1[6] + 16) && (v20 = OUTLINED_FUNCTION_132_0(), __swift_project_boxed_opaque_existential_1(v20, v21), v22 = OUTLINED_FUNCTION_148(), v23(v22), v51))
  {
    sub_227B132F0(&v50, v52);
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v24 = sub_227D4D338();
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v24 = 0;
  }

  if (*(v1[7] + 16) && (__swift_project_boxed_opaque_existential_1(a1, a1[3]), v25 = OUTLINED_FUNCTION_141(), v26(v25), v51))
  {
    sub_227B132F0(&v50, v52);
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v27 = sub_227D4D338();
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v27 = 0;
  }

  if (*(v1[8] + 16) && (OUTLINED_FUNCTION_305_0(), v28 = OUTLINED_FUNCTION_173(), v29(v28), v51))
  {
    sub_227B132F0(&v50, v52);
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v30 = sub_227D4D338() ^ 1;
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v30 = 1;
  }

  v31 = v1[2];
  if (*(v31 + 16) && (OUTLINED_FUNCTION_305_0(), v32 = OUTLINED_FUNCTION_173(), v34 = v33(v32), v35 = sub_227CE9CD8(v34, v31), , (v35 & 1) != 0) || (v36 = v1[3], *(v36 + 16)) && (OUTLINED_FUNCTION_305_0(), v37 = OUTLINED_FUNCTION_173(), v39 = v38(v37), v41 = sub_227B39740(v39, v40, v36), , !v41) || ((v42 = v1[9], !*(v42 + 16)) ? (v46 = v49 | v19, v47 = v24 | v27) : (__swift_project_boxed_opaque_existential_1(a1, a1[3]), v43 = OUTLINED_FUNCTION_141(), v45 = v44(v43), v46 = v49 | ~sub_227CE9EB0(v45, v42), v47 = v19 | v24 | v27), ((v46 | v47) & 1) != 0))
  {
    v30 = 0;
  }

  return v30 & 1;
}

uint64_t sub_227CF3B54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 40))
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

  return OUTLINED_FUNCTION_161(v2);
}

void *sub_227CF3B90(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1) = 0u;
    *(result + 3) = 0u;
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

      return OUTLINED_FUNCTION_160(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_160(result, a2);
    }
  }

  return result;
}

uint64_t sub_227CF3BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

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

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227CF3C1C(uint64_t result, int a2, int a3)
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

unint64_t sub_227CF3C78(uint64_t a1)
{
  result = sub_227CF3CA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227CF3CA0()
{
  result = qword_27D802040[0];
  if (!qword_27D802040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D802040);
  }

  return result;
}

unint64_t sub_227CF3CF4(uint64_t a1)
{
  result = sub_227CF3D1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227CF3D1C()
{
  result = qword_27D8020D0[0];
  if (!qword_27D8020D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8020D0);
  }

  return result;
}

uint64_t sub_227CF3DB0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_342();
  v4(v3);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

uint64_t sub_227CF3E08(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_342();
  v4(v3);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

uint64_t sub_227CF3E60()
{
  v1 = OUTLINED_FUNCTION_419();
  v2(v1);
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_227CF3EB4()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_386_1(v1, v2, v3, v4);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

uint64_t sub_227CF3F60()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_386_1(v1, v2, v3, v4);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return v0;
}

void sub_227CF3FD8()
{
  sub_227D4BA28();
  if (v0 <= 0x3F)
  {
    sub_227CF4054(319);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_28_6();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227CF4054(uint64_t a1)
{
  if (!qword_27D7EA300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA308, &qword_227D64298);
    v1 = sub_227D4D4F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D7EA300);
    }
  }
}

uint64_t sub_227CF40E0()
{
  result = sub_227D4B9A8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_28_6();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_8()
{
}

uint64_t OUTLINED_FUNCTION_81_9()
{
}

uint64_t OUTLINED_FUNCTION_124_4()
{
  v1[58] = v0;
  v2 = v1[44];
  __swift_project_boxed_opaque_existential_1(v1 + 27, v1[30]);

  return sub_227CF1700(v2, (v1 + 2));
}

uint64_t OUTLINED_FUNCTION_163_3(float a1)
{
  *v2 = a1;
  __swift_project_boxed_opaque_existential_1((v1 + 256), *(v1 + 280));

  return sub_227D4DA88();
}

uint64_t OUTLINED_FUNCTION_180_2()
{
  v2 = *(v0 + 136);
  *(v0 + 520) = v2;
  *(v0 + 569) = *(v2 + 32);

  return sub_227D4CE58();
}

void *OUTLINED_FUNCTION_190_5(uint64_t a1)
{
  *(v1 + 472) = a1;
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 16), 0xA0uLL);
}

uint64_t OUTLINED_FUNCTION_201_3()
{

  return sub_227D4A3D8();
}

void OUTLINED_FUNCTION_205_3()
{
  *(v3 + 24) = v1;
  *(v3 + 32) = v2;
  *(v3 + 16) = v0;
}

uint64_t OUTLINED_FUNCTION_216_2(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_218_3()
{
  v2 = *(v0 + 456);
  *(v0 + 456) = v2 + 1;
  v3 = *(v0 + 432) + 40 * v2 + 72;

  return sub_227B11EE8(v3, v0 + 216);
}

uint64_t OUTLINED_FUNCTION_227_1()
{
}

uint64_t OUTLINED_FUNCTION_230_1()
{

  return sub_227D49D98();
}

uint64_t OUTLINED_FUNCTION_231_0()
{
}

uint64_t OUTLINED_FUNCTION_233_0(uint64_t result)
{
  *(v5 - 240) = result;
  *(v5 - 232) = v1;
  *(v5 - 264) = v4;
  *(v5 - 256) = v3;
  *(v5 - 248) = v2;
  return result;
}

double OUTLINED_FUNCTION_248_1@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t OUTLINED_FUNCTION_274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *(v13 + 4) = v12;
  *(v13 + 12) = 2080;

  return sub_227B1B1A4(a9, v14, va);
}

uint64_t OUTLINED_FUNCTION_298_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_300_1()
{

  return sub_227D4A658();
}

uint64_t OUTLINED_FUNCTION_302_1()
{
}

unint64_t OUTLINED_FUNCTION_304_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 4) = a1;
  *(v9 + 12) = 2080;

  return sub_227B1B1A4(a6, a7, va);
}

void *OUTLINED_FUNCTION_305_0()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

BOOL OUTLINED_FUNCTION_307_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_310_1()
{
}

uint64_t OUTLINED_FUNCTION_314_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227D4D7B8();
}

uint64_t OUTLINED_FUNCTION_315_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227D4D7B8();
}

uint64_t OUTLINED_FUNCTION_323_1()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
}

uint64_t OUTLINED_FUNCTION_324_0@<X0>(uint64_t a1@<X8>)
{

  return sub_227B23878(a1 + 40, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_360_1@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 96) = v1;
  *(v2 - 168) = a1;

  return sub_227D4A2B8();
}

uint64_t OUTLINED_FUNCTION_362_1()
{
}

uint64_t OUTLINED_FUNCTION_363_1()
{
  *(v0 - 64) = 0;
  *(v0 - 56) = 0xE000000000000000;

  return sub_227D4D668();
}

uint64_t OUTLINED_FUNCTION_364_1()
{

  return sub_227D4D668();
}

void OUTLINED_FUNCTION_365(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x20u);
}

uint64_t OUTLINED_FUNCTION_366(uint64_t a1)
{

  return sub_227D4AA58();
}

id OUTLINED_FUNCTION_367_0(uint64_t a1)
{
  *(v2 + 14) = a1;
  *(v2 + 22) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_368_0()
{
}

uint64_t OUTLINED_FUNCTION_369_1()
{
  *(v1 + 360) = *(v0 + 8);

  return sub_227B23878(v2 + 40, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_370_0()
{
  v2 = *(v0 + 344) + 40;

  return sub_227B23878(v2, v0 + 176);
}

uint64_t OUTLINED_FUNCTION_371_1()
{
}

uint64_t OUTLINED_FUNCTION_372_0()
{
}

uint64_t OUTLINED_FUNCTION_373_1()
{
}

uint64_t OUTLINED_FUNCTION_374_1(uint64_t a1)
{

  return sub_227D4A658();
}

uint64_t OUTLINED_FUNCTION_375_1()
{

  return sub_227D4CE58();
}

uint64_t OUTLINED_FUNCTION_376_0(uint64_t a1, uint64_t a2)
{
  *v2 = a1;
  v2[1] = a2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_377_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_379_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_381_1()
{
}

uint64_t OUTLINED_FUNCTION_383_0()
{
}

uint64_t OUTLINED_FUNCTION_385_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_386_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_387_1()
{

  return sub_227B26090(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_388_0()
{
}

uint64_t OUTLINED_FUNCTION_389_1()
{
}

uint64_t OUTLINED_FUNCTION_390_1()
{
}

uint64_t OUTLINED_FUNCTION_393_1()
{
}

uint64_t sub_227CF5000()
{
  OUTLINED_FUNCTION_6();
  v1[21] = v2;
  v1[22] = v0;
  v3 = sub_227D4B4F8();
  v1[23] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[24] = v4;
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v5 = sub_227D4AE88();
  v1[27] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[28] = v6;
  v1[29] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[30] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_121();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v1[37] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[38] = v10;
  v1[39] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CF51DC()
{
  v1 = 0;
  v59 = *(v0 + 304);
  v60 = *(*(v0 + 168) + 16);
  v2 = (*(v0 + 248) + 8);
  v58 = *(v0 + 248);
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    *(v0 + 320) = v3;
    if (v60 == v1)
    {
      break;
    }

    (*(v59 + 16))(*(v0 + 312), *(v0 + 168) + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v1, *(v0 + 296));
    sub_227D4A7E8();
    sub_227D4A7E8();
    if (*(v3 + 16) && (v4 = sub_227CFB4D4(*(v0 + 280)), (v5 & 1) != 0))
    {
      v6 = *(*(v3 + 56) + 8 * v4);
      sub_227D4CE58();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v61 = *v2;
    (*v2)(*(v0 + 280), *(v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227D4E520;
    v8 = sub_227D4A7D8();
    v9 = v1;
    v10 = v2;
    v11 = *(v0 + 288);
    *(inited + 32) = v8;
    *(inited + 40) = v12;
    sub_227CFB73C(inited);
    v13 = v6;
    swift_isUniquelyReferenced_nonNull_native();
    sub_227CFB4D4(v11);
    OUTLINED_FUNCTION_62_8();
    if (__OFADD__(v16, v17))
    {
      goto LABEL_37;
    }

    v18 = v14;
    v19 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA310, &qword_227D64320);
    if (sub_227D4D7C8())
    {
      v20 = sub_227CFB4D4(*(v0 + 288));
      if ((v19 & 1) != (v21 & 1))
      {
        OUTLINED_FUNCTION_55_0();

        return sub_227D4DAE8();
      }

      v18 = v20;
    }

    if (v19)
    {
      *(*(v3 + 56) + 8 * v18) = v13;
    }

    else
    {
      OUTLINED_FUNCTION_13_18(v3 + 8 * (v18 >> 6));
      result = (*(v58 + 16))(*(v3 + 48) + *(v58 + 72) * v18);
      *(*(v3 + 56) + 8 * v18) = v13;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v25;
    }

    v26 = *(v0 + 296);
    v2 = v10;
    v61(*(v0 + 288), *(v0 + 240));
    v27 = OUTLINED_FUNCTION_40_9();
    v28(v27, v26);
    v1 = v9 + 1;
  }

  v29 = MEMORY[0x277D84F98];
  *(v0 + 144) = MEMORY[0x277D84F98];
  v30 = *(v3 + 32);
  *(v0 + 408) = v30;
  v31 = 1 << v30;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v3 + 64);
  *(v0 + 400) = v29;
  sub_227D4CE58();
  v34 = 0;
  if (!v33)
  {
    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v35 = *(v0 + 320);
      if (v36 >= (((1 << *(v0 + 408)) + 63) >> 6))
      {
        v47 = *(v0 + 168);

        sub_227CF669C(v47, (v0 + 144));

        OUTLINED_FUNCTION_115();
        OUTLINED_FUNCTION_55_0();

        __asm { BRAA            X2, X16 }
      }

      v33 = *(v35 + 8 * v36 + 64);
      ++v34;
      if (v33)
      {
        v34 = v36;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  while (1)
  {
    v35 = *(v0 + 320);
LABEL_25:
    *(v0 + 328) = v33;
    *(v0 + 336) = v34;
    v38 = *(v0 + 264);
    v37 = *(v0 + 272);
    v39 = *(v0 + 240);
    v40 = *(v0 + 248);
    *(v0 + 344) = *(v40 + 72);
    OUTLINED_FUNCTION_46_8();
    *(v0 + 352) = v41;
    *(v0 + 360) = v42;
    v41(v37);
    (*(v40 + 32))(v38, v37, v39);
    if (*(v35 + 16))
    {
      v43 = sub_227CFB4D4(*(v0 + 264));
      if (v44)
      {
        break;
      }
    }

    v45 = OUTLINED_FUNCTION_44_8();
    v46(v45);
  }

  v51 = *(v0 + 176);
  *(v0 + 368) = *(*(*(v0 + 320) + 56) + 8 * v43);
  sub_227B23878(v51 + 40, v0 + 16);
  sub_227D4CE58();
  sub_227BD2890();
  sub_227D41410(*(v0 + 264));
LABEL_38:
  v52 = swift_task_alloc();
  *(v0 + 376) = v52;
  *v52 = v0;
  OUTLINED_FUNCTION_56_7(v52);
  OUTLINED_FUNCTION_2_37(v53);
  OUTLINED_FUNCTION_55_0();

  return sub_227B7B150(v54, v55, v56);
}

uint64_t sub_227CF5960()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v2[48] = v6;
  v2[49] = v0;

  if (v0)
  {
    v8 = v2[28];
    v7 = v2[29];
    v9 = v2[27];

    (*(v8 + 8))(v7, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_269();
    v11(v10);
  }

  sub_227B26090((v2 + 2));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_227CF5AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = v18[48];
  (v18[44])(v18[32], v18[33], v18[30]);
  v111 = v18;
  v107 = *(v19 + 16);
  v108 = v19;
  if (v107)
  {
    v20 = 0;
    v21 = *(v18[24] + 80);
    v22 = MEMORY[0x277D84F98];
    a10 = v18[48] + ((v21 + 32) & ~v21);
    while (1)
    {
      if (v20 >= *(v108 + 16))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v23 = v18[26];
      v24 = v18[23];
      v25 = v18[24];
      v26 = *(v25 + 16);
      v18 = *(v25 + 72);
      v26(v23, a10 + v18 * v20, v24);
      v27 = sub_227D4B438();
      v29 = v28;
      v30 = OUTLINED_FUNCTION_58();
      (v26)(v30);
      swift_isUniquelyReferenced_nonNull_native();
      v111[19] = v22;
      sub_227B2664C(v27, v29);
      OUTLINED_FUNCTION_62_8();
      if (__OFADD__(v33, v34))
      {
        goto LABEL_47;
      }

      v35 = v31;
      v36 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA318, &qword_227D64328);
      if (sub_227D4D7C8())
      {
        v37 = sub_227B2664C(v27, v29);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_18;
        }

        v35 = v37;
      }

      v39 = v111[25];
      v109 = v111[26];
      v41 = v111[23];
      v40 = v111[24];
      if (v36)
      {

        v22 = v111[19];
        (*(v40 + 40))(v22[7] + v35 * v18, v39, v41);
        (*(v40 + 8))(v109, v41);
      }

      else
      {
        v22 = v111[19];
        OUTLINED_FUNCTION_13_18(&v22[v35 >> 6]);
        v42 = (v22[6] + 16 * v35);
        *v42 = v27;
        v42[1] = v29;
        (*(v40 + 32))(v22[7] + v35 * v18, v39, v41);
        (*(v40 + 8))(v109, v41);
        v43 = v22[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          __break(1u);
          goto LABEL_52;
        }

        v22[2] = v45;
      }

      ++v20;
      v18 = v111;
      if (v107 == v20)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = MEMORY[0x277D84F98];
LABEL_15:
  v46 = v18[32];

  v47 = v18[18];
  swift_isUniquelyReferenced_nonNull_native();
  v18[20] = v47;
  sub_227CFB4D4(v46);
  OUTLINED_FUNCTION_62_8();
  if (__OFADD__(v50, v51))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v52 = v48;
  v53 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA320, &qword_227D64330);
  if (sub_227D4D7C8())
  {
    v54 = sub_227CFB4D4(v18[32]);
    if ((v53 & 1) != (v55 & 1))
    {
LABEL_18:
      OUTLINED_FUNCTION_90();

      sub_227D4DAE8();
      return;
    }

    v52 = v54;
  }

  v57 = v18[20];
  if (v53)
  {
    *(v57[7] + 8 * v52) = v22;

    goto LABEL_26;
  }

  v58 = v18[44];
  v59 = v18[43];
  v60 = v18[32];
  v61 = v18[30];
  v57[(v52 >> 6) + 8] |= 1 << v52;
  v58(v57[6] + v59 * v52, v60, v61);
  *(v57[7] + 8 * v52) = v22;
  v62 = v57[2];
  v44 = __OFADD__(v62, 1);
  v63 = v62 + 1;
  if (v44)
  {
LABEL_53:
    __break(1u);
    return;
  }

  v57[2] = v63;
LABEL_26:
  v64 = *(v18[31] + 8);
  (v64)(v18[32], v18[30]);
  v65 = OUTLINED_FUNCTION_147();
  v64(v65);
  v18[18] = v57;
  v66 = v18[49];
  v67 = v18[42];
  v68 = (v18[41] - 1) & v18[41];
  v110 = v57;
  v18[50] = v57;
  if (v68)
  {
    while (1)
    {
      v69 = v18[40];
LABEL_32:
      v18[41] = v68;
      v18[42] = v67;
      v72 = v18[33];
      v71 = v18[34];
      v73 = v111[31];
      v74 = v111[30];
      v111[43] = *(v73 + 72);
      OUTLINED_FUNCTION_46_8();
      v111[44] = v75;
      v111[45] = v76;
      v75(v71);
      (*(v73 + 32))(v72, v71, v74);
      v18 = v111;
      if (*(v69 + 16))
      {
        v77 = sub_227CFB4D4(v111[33]);
        if (v78)
        {
          break;
        }
      }

      v79 = OUTLINED_FUNCTION_44_8();
      v80(v79);
    }

    v98 = v111[22];
    v111[46] = *(*(v111[40] + 56) + 8 * v77);
    sub_227B23878(v98 + 40, (v111 + 2));
    sub_227D4CE58();
    sub_227BD2890();
    if (v66)
    {

      sub_227B26090((v111 + 2));
      v99 = OUTLINED_FUNCTION_141();
      v100(v99);
LABEL_36:

      OUTLINED_FUNCTION_30_13(v18[39]);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_90();

      v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, v107, v108, v110, v111, a15, a16, a17, a18);
    }

    else
    {
      sub_227D41410(v111[33]);
LABEL_48:
      v101 = swift_task_alloc();
      v18[47] = v101;
      *v101 = v18;
      OUTLINED_FUNCTION_56_7(v101);
      OUTLINED_FUNCTION_2_37(v102);
      OUTLINED_FUNCTION_90();

      sub_227B7B150(v103, v104, v105);
    }
  }

  else
  {
    while (1)
    {
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v69 = v18[40];
      if (v70 >= (((1 << *(v18 + 408)) + 63) >> 6))
      {
        break;
      }

      v68 = *(v69 + 8 * v70 + 64);
      ++v67;
      if (v68)
      {
        v67 = v70;
        goto LABEL_32;
      }
    }

    v81 = v18[21];

    sub_227CF669C(v81, v18 + 18);
    if (v66)
    {
      goto LABEL_36;
    }

    v112 = v18[26];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_90();

    v92(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, v107, v108, v57, v112, a15, a16, a17, a18);
  }
}

uint64_t sub_227CF626C()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_30_13(v0[39]);

  OUTLINED_FUNCTION_18();

  return v4();
}

uint64_t sub_227CF6364@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_227D4A4A8();
  v3 = OUTLINED_FUNCTION_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6940, &qword_227D4E768);
  OUTLINED_FUNCTION_5(v7);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v11);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  v13 = sub_227D49FA8();
  v14 = OUTLINED_FUNCTION_5(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA038, &qword_227D63450);
  OUTLINED_FUNCTION_5(v18);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  v21 = v43 - v20;
  v22 = sub_227D4B438();
  v50 = v23;
  sub_227D4B4C8();
  v49 = v24;
  sub_227D479F0(v21);
  if (v1)
  {
  }

  else
  {
    v46 = v22;
    v47 = v6;
    v25 = sub_227D4B4B8();
    v27 = v26;
    sub_227D47C80(v17);
    v44 = v25;
    v43[1] = sub_227D4B498();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
    OUTLINED_FUNCTION_71_0();
    v33 = __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v34 = MEMORY[0x22AAA4190](v33);
    v45 = v27;
    if (v34 == 2)
    {
      sub_227D49F28();
      OUTLINED_FUNCTION_71_0();
    }

    else
    {
      v39 = v34;
      v40 = sub_227D49F28();
      OUTLINED_FUNCTION_14_0();
      v42 = MEMORY[0x277D0CEF0];
      if ((v39 & 1) == 0)
      {
        v42 = MEMORY[0x277D0CEE8];
      }

      (*(v41 + 104))(v10, *v42, v40);
      v35 = v10;
      v36 = 0;
      v37 = 1;
      v38 = v40;
    }

    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    sub_227D4B458();
    sub_227D4A498();

    sub_227D4B468();
    return sub_227D4A4E8();
  }
}

uint64_t sub_227CF669C(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA350, &qword_227D64438);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v41 - v8;
  v10 = sub_227D4B4F8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  v50 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v41 - v14;
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v53 = v10;
    v48 = v9;
    v54 = MEMORY[0x277D84F90];
    sub_227CFBDD4(0, v16, 0);
    v17 = v54;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    ++v49;
    v41[1] = v11 + 16;
    v43 = (v11 + 32);
    v44 = (v11 + 8);
    v20 = *(v18 + 72);
    v46 = v6;
    v47 = v20;
    v42 = v11;
    do
    {
      sub_227D4A7E8();
      if (v3)
      {

        return v17;
      }

      v21 = *v52;
      if (*(*v52 + 16) && (v22 = sub_227CFB4D4(v6), (v23 & 1) != 0))
      {
        v24 = v15;
        v25 = *(*(v21 + 56) + 8 * v22);
        v26 = *v49;
        sub_227D4CE58();
        v26(v6, v51);
        v27 = sub_227D4A7D8();
        if (*(v25 + 16) && (v29 = sub_227B2664C(v27, v28), (v30 & 1) != 0))
        {
          v31 = v48;
          (*(v42 + 16))(v48, *(v25 + 56) + *(v42 + 72) * v29, v53);
          v32 = 0;
        }

        else
        {
          v32 = 1;
          v31 = v48;
        }

        v38 = v53;
        __swift_storeEnumTagSinglePayload(v31, v32, 1, v53);

        if (__swift_getEnumTagSinglePayload(v31, 1, v38) != 1)
        {
          v39 = v45;
          (*v43)(v45, v31, v38);
          v15 = v24;
          sub_227CF6364(v24);
          (*v44)(v39, v38);
          v33 = 0;
          v6 = v46;
          goto LABEL_11;
        }

        v6 = v46;
        v15 = v24;
      }

      else
      {
        (*v49)(v6, v51);
        v31 = v48;
        __swift_storeEnumTagSinglePayload(v48, 1, 1, v53);
      }

      sub_227B4DB00(v31, &qword_27D7EA350, &qword_227D64438);
      v33 = 1;
LABEL_11:
      v34 = sub_227D4A4F8();
      __swift_storeEnumTagSinglePayload(v15, v33, 1, v34);
      v54 = v17;
      v35 = v15;
      v37 = *(v17 + 16);
      v36 = *(v17 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_227CFBDD4(v36 > 1, v37 + 1, 1);
        v17 = v54;
      }

      *(v17 + 16) = v37 + 1;
      sub_227CFC1B8(v35, v17 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v37);
      v19 += v47;
      --v16;
      v15 = v35;
    }

    while (v16);
  }

  return v17;
}

uint64_t sub_227CF6C10(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - v7;
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v22 = MEMORY[0x277D84F90];
    sub_227CFBE14(0, v9, 0);
    v10 = v22;
    v16[1] = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v12 = *i;
      v21[0] = *(i - 1);
      v21[1] = v12;
      sub_227D4CE58();
      v18(v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v22 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_227CFBE14(v13 > 1, v14 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_227CF6DE8(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_227D4A0E8();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    sub_227CC565C(0, v9, 0);
    v10 = v21;
    v11 = *(sub_227D4B428() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v16[1] = v6 + 32;
    v16[0] = *(v11 + 72);
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_227CC565C(v13 > 1, v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
      v12 += v16[0];
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_227CF6FF0()
{
  OUTLINED_FUNCTION_6();
  v1[15] = v2;
  v1[16] = v0;
  v1[14] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v1[17] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82C8, &unk_227D64BF0);
  v1[18] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4B1F8();
  v1[21] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[22] = v8;
  v1[23] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4AE88();
  v1[24] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[27] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[28] = v12;
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA328, &qword_227D64340);
  OUTLINED_FUNCTION_5(v13);
  v1[31] = OUTLINED_FUNCTION_30();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227CF71F8()
{
  v1 = v0[15];
  v2 = *(v0[14] + 16);
  v0[32] = v2;
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    v4 = swift_task_alloc();
    v0[33] = v4;
    *v4 = v0;
    v4[1] = sub_227CF748C;

    return sub_227B24FC4();
  }

  else
  {
    sub_227D49E08();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v6, v7);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    v9 = v8;
    sub_227D4D668();
    MEMORY[0x22AAA5DA0](0xD00000000000002FLL, 0x8000000227D78CC0);
    v0[12] = v2;
    OUTLINED_FUNCTION_141();
    v10 = sub_227D4DA38();
    MEMORY[0x22AAA5DA0](v10);

    MEMORY[0x22AAA5DA0](0x20646E6120, 0xE500000000000000);
    v0[13] = v3;
    OUTLINED_FUNCTION_141();
    v11 = sub_227D4DA38();
    MEMORY[0x22AAA5DA0](v11);

    *v9 = 0;
    v9[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_14_0();
    (*(v12 + 104))(v9);
    swift_willThrow();
    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_18();

    return v13();
  }
}

uint64_t sub_227CF748C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  *v14 = *v11;
  *(v13 + 272) = v15;
  *(v13 + 280) = v10;

  if (v10)
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_163();

    return MEMORY[0x2822009F8](v25, v26, v27);
  }
}

uint64_t sub_227CF7600()
{
  v1 = v0[28];
  v2 = v0[34];
  v3 = v0[35];
  v4 = MEMORY[0x277D84F90];
  v0[36] = 0;
  v0[37] = v4;
  v5 = v0[32];
  v6 = sub_227D4CE58();
  if (!v5)
  {
LABEL_8:

    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  (*(v1 + 16))(v0[30], v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0[27]);
  if (!*(v2 + 16))
  {
    (*(v0[28] + 8))(v0[30], v0[27]);
    goto LABEL_8;
  }

  v7 = v0[30];
  v8 = v0[31];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v0[38] = *(v0[34] + 40);
  v12 = *(v10 + 32);
  v12(v8, v7, v11);
  v12(v9, v8, v11);
  OUTLINED_FUNCTION_70_7();
  sub_227D4CE58();
  sub_227BD2890();
  if (v3)
  {

    sub_227B26090((v0 + 2));

    v13 = OUTLINED_FUNCTION_148();
    v14(v13);
    OUTLINED_FUNCTION_5_27();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X1, X16 }
  }

  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = sub_227CF78E0;
  OUTLINED_FUNCTION_2_37(v0[26]);
  OUTLINED_FUNCTION_16_0();

  return sub_227B7BC58(v20, v21, v22);
}