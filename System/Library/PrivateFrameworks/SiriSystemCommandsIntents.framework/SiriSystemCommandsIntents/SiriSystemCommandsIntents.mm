uint64_t sub_2691B2D50(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_2691E1374();
  v7 = OUTLINED_FUNCTION_37(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  sub_2691B8078(a1, v3 + 16);
  *(v3 + 64) = a2;
  type metadata accessor for RestartShutdownCATsSimple(0);
  sub_2691E1364();
  sub_2691E1294();
  sub_2691B8078(a1, v10);
  sub_2691E1274();
  sub_2691B80DC(v10);
  sub_2691E1284();

  v8 = sub_2691E1324();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *(v3 + 56) = v8;
  return v3;
}

uint64_t sub_2691B2E4C()
{
  OUTLINED_FUNCTION_34();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_2691E0CA4();
  OUTLINED_FUNCTION_37(v3);
  v1[31] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0E64();
  v1[32] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[33] = v5;
  v1[34] = OUTLINED_FUNCTION_44();
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  v1[35] = restarted;
  OUTLINED_FUNCTION_37(restarted);
  v1[36] = OUTLINED_FUNCTION_44();
  v7 = sub_2691E1024();
  v1[37] = v7;
  OUTLINED_FUNCTION_1(v7);
  v1[38] = v8;
  v1[39] = OUTLINED_FUNCTION_44();
  v9 = sub_2691E0F94();
  v1[40] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[41] = v10;
  v1[42] = OUTLINED_FUNCTION_49();
  v1[43] = swift_task_alloc();
  v11 = sub_2691E0FF4();
  v1[44] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[45] = v12;
  v1[46] = OUTLINED_FUNCTION_49();
  v1[47] = swift_task_alloc();
  v13 = sub_2691E1044();
  v1[48] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[49] = v14;
  v1[50] = OUTLINED_FUNCTION_49();
  v1[51] = swift_task_alloc();
  v15 = sub_2691E0D84();
  v1[52] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[53] = v16;
  v1[54] = OUTLINED_FUNCTION_44();
  v17 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v17);
  v1[55] = OUTLINED_FUNCTION_44();
  v18 = sub_2691E1394();
  v1[56] = v18;
  OUTLINED_FUNCTION_1(v18);
  v1[57] = v19;
  v1[58] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v20);
}

uint64_t sub_2691B3144()
{
  OUTLINED_FUNCTION_53();
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[56];
  v4 = __swift_project_value_buffer(v3, qword_2802FBA28);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_2691E1384();
  v8 = sub_2691E1524();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v9);
    _os_log_impl(&dword_2691B1000, v7, v8, "SCSystemCommandsYesNoStrategy | making prompt for Yes/No response", v5, 2u);
    OUTLINED_FUNCTION_42();
  }

  v10 = v0[30];

  v11 = OUTLINED_FUNCTION_35();
  v12(v11);
  if (*(v10 + 64))
  {
    if (*(v10 + 64) == 1)
    {
      v13 = swift_task_alloc();
      v0[60] = v13;
      *v13 = v0;
      OUTLINED_FUNCTION_36(v13);

      return sub_2691CC1A4();
    }

    else
    {
      v16 = v0[30];
      type metadata accessor for ScreenRecordingCATsSimple(0);
      sub_2691E1364();
      sub_2691E1294();
      sub_2691B8078(v16 + 16, (v0 + 2));
      sub_2691E1274();
      sub_2691B80DC((v0 + 2));
      sub_2691E1284();

      v0[61] = sub_2691E1324();
      v17 = swift_task_alloc();
      v0[62] = v17;
      *v17 = v0;
      OUTLINED_FUNCTION_36(v17);

      return sub_2691C31AC();
    }
  }

  else
  {
    v15 = swift_task_alloc();
    v0[59] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_36(v15);

    return sub_2691CC100();
  }
}

uint64_t sub_2691B3404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20();
  v19 = v18;
  OUTLINED_FUNCTION_10();
  *v20 = v19;
  v19[16] = v17;
  v19[17] = v21;
  v19[18] = v16;
  OUTLINED_FUNCTION_63();
  v22 = *v17;
  OUTLINED_FUNCTION_8();
  *v23 = v22;

  if (v16)
  {
    OUTLINED_FUNCTION_25();

    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_24();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v33);
  }
}

uint64_t sub_2691B36BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_20();
  v19 = v18;
  OUTLINED_FUNCTION_10();
  *v20 = v19;
  v19[19] = v17;
  v19[20] = v21;
  v19[21] = v16;
  OUTLINED_FUNCTION_63();
  v22 = *v17;
  OUTLINED_FUNCTION_8();
  *v23 = v22;

  if (v16)
  {
    OUTLINED_FUNCTION_25();

    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_24();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v33);
  }
}

uint64_t sub_2691B3974()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3[22] = v1;
  v3[23] = v2;
  v3[24] = v0;
  OUTLINED_FUNCTION_63();
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2691B3BB4()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3[12] = v1;
  v3[13] = v2;
  v3[14] = v4;
  v3[15] = v0;
  OUTLINED_FUNCTION_63();
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v8 + 528) = v7;
  *(v8 + 536) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2691B3CBC()
{
  OUTLINED_FUNCTION_34();
  v1 = swift_task_alloc();
  *(v0 + 544) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_36(v1);

  return sub_2691CBE70();
}

uint64_t sub_2691B3D48()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 552) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 560) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9);
}

void sub_2691B3E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();
  v17 = v16[70];
  v18 = [v17 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v19 = sub_2691E1494();

  if (!sub_2691B7FAC(v19))
  {

    sub_2691E1634();
    OUTLINED_FUNCTION_24();
    return;
  }

  if ((v19 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;
  v23 = v16[66];
  v24 = v16[13];
  v25 = v16[64];
  v26 = v16[36];
  v43 = v16[54];

  v27 = [v22 fullPrint];

  v28 = sub_2691E13D4();
  v30 = v29;

  v16[25] = v24;
  v16[26] = v23;
  sub_2691E09D4();
  v16[27] = v28;
  v16[28] = v30;
  sub_2691E09D4();
  sub_2691E0DA4();
  swift_allocObject();
  v16[71] = sub_2691E0D94();
  v16[10] = type metadata accessor for SiriSystemCommandsModels(0);
  v16[11] = sub_2691B8144(&qword_2802F9458, 255, type metadata accessor for SiriSystemCommandsModels, &protocol conformance descriptor for SiriSystemCommandsModels);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16 + 7);
  sub_2691B81EC(v26, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9460, &unk_2691E2330);
  v32 = swift_allocObject();
  v16[72] = v32;
  *(v32 + 16) = xmmword_2691E2120;
  *(v32 + 32) = v25;
  v33 = v25;
  sub_2691E0C94();
  *(swift_task_alloc() + 16) = v43;
  sub_2691E0E24();

  v44 = *MEMORY[0x277D5BD40] + MEMORY[0x277D5BD40];
  v34 = swift_task_alloc();
  v16[73] = v34;
  *v34 = v16;
  v34[1] = sub_2691B4180;
  OUTLINED_FUNCTION_24();

  v39(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, v43, v44, a14, a15, a16);
}

uint64_t sub_2691B4180()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  *v3 = v2;
  v5 = v4[34];
  v6 = v4[33];
  v7 = v4[32];
  v8 = *v0;
  OUTLINED_FUNCTION_8();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 56));
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2691B4304()
{
  v18 = *(v0 + 432);
  v1 = *(v0 + 424);
  v16 = *(v0 + 408);
  v17 = *(v0 + 416);
  v2 = *(v0 + 392);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v3 = *(v0 + 360);
  v12 = *(v0 + 344);
  v13 = *(v0 + 352);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v8 = *(v0 + 288);
  v9 = *(v0 + 296);

  sub_2691B82A4(v8, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  (*(v6 + 8))(v7, v9);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);

  OUTLINED_FUNCTION_31();

  return v10();
}

uint64_t sub_2691B44E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_64();

  OUTLINED_FUNCTION_9();
  v29 = v18;
  v30 = v17;
  v31 = *(v16 + 248);
  v32 = v19;

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_24();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, v29, v30, v31, v32, a14, a15, a16);
}

uint64_t sub_2691B45BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_17();
  (*(v24 + 8))(v27, v19);
  (*(v23 + 8))(v25, v26);
  (*(v22 + 8))(a11, a10);
  (*(v20 + 8))(a13, a12);
  (*(v18 + 8))(a15, a14);
  OUTLINED_FUNCTION_9();
  v40 = v29;
  v41 = v28;
  v42 = *(v21 + 248);
  v43 = v30;

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_2691B4700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_17();
  (*(v24 + 8))(v27, v19);
  (*(v23 + 8))(v25, v26);
  (*(v22 + 8))(a11, a10);
  (*(v20 + 8))(a13, a12);
  (*(v18 + 8))(a15, a14);
  OUTLINED_FUNCTION_9();
  v40 = v29;
  v41 = v28;
  v42 = *(v21 + 248);
  v43 = v30;

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_41();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_2691B4844(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_2691E0D84();
  (*(*(v6 - 8) + 16))(v5, a2, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  sub_2691E0E44();
  sub_2691E0E54();
  return sub_2691E0E34();
}

uint64_t sub_2691B4940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v251 = a2;
  sub_2691E0EB4();
  OUTLINED_FUNCTION_2();
  v234 = v4;
  v235 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v233 = v6 - v5;
  v7 = OUTLINED_FUNCTION_54();
  v8 = type metadata accessor for SystemCommandsIntent(v7);
  v9 = OUTLINED_FUNCTION_37(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_47();
  v221 = v11 - v10;
  OUTLINED_FUNCTION_54();
  v230 = sub_2691E0FF4();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6();
  v245 = v15;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v250 = v17;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v18);
  v20 = &v218 - v19;
  v237 = sub_2691E0F64();
  OUTLINED_FUNCTION_2();
  v241 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  v231 = &v218 - v25;
  OUTLINED_FUNCTION_54();
  sub_2691E0F24();
  OUTLINED_FUNCTION_2();
  v238 = v26;
  v239 = v27;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v28);
  v242 = &v218 - v29;
  OUTLINED_FUNCTION_54();
  v252 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v249 = v30;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6();
  v248 = v32;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  v247 = &v218 - v41;
  OUTLINED_FUNCTION_54();
  v42 = sub_2691E0ED4();
  OUTLINED_FUNCTION_2();
  v246 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6();
  v240 = v45;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v46);
  v48 = &v218 - v47;
  v49 = sub_2691E0EE4();
  OUTLINED_FUNCTION_2();
  v51 = v50;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_4();
  v55 = MEMORY[0x28223BE20](v54);
  v57 = &v218 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = &v218 - v59;
  MEMORY[0x28223BE20](v58);
  v62 = &v218 - v61;
  v236 = a1;
  sub_2691E0EA4();
  v63 = (*(v51 + 88))(v62, v49);
  if (v63 == *MEMORY[0x277D5C150])
  {
    (*(v51 + 16))(v57, v62, v49);
    (*(v51 + 96))(v57, v49);
    v64 = v246;
    v65 = *(v246 + 16);
    v242 = v57;
    v245 = v42;
    v65(v48, v57, v42);
    v250 = v48;
    v66 = sub_2691E0EC4();
    v68 = v67;
    v69 = sub_2691E0BD4();
    v70 = [v69 identifier];

    v71 = sub_2691E13D4();
    v73 = v72;

    v74 = v66 == v71 && v68 == v73;
    v20 = v49;
    if (v74)
    {

      v77 = v252;
    }

    else
    {
      OUTLINED_FUNCTION_56();
      v75 = sub_2691E16D4();

      v77 = v252;
      if ((v75 & 1) == 0)
      {
        v243 = v62;
        v244 = v51;
        v247 = v20;
        v78 = *(v64 + 8);
        v79 = v245;
        v78(v250, v245);
        (*(v64 + 32))(v240, v242, v79);
        v80 = sub_2691E0EC4();
        v82 = v81;
        v83 = sub_2691E0BC4();
        v84 = [v83 identifier];

        v85 = sub_2691E13D4();
        v87 = v86;

        if (v80 == v85 && v82 == v87)
        {

          v91 = v249;
          v92 = v232;
        }

        else
        {
          OUTLINED_FUNCTION_56();
          v89 = sub_2691E16D4();

          v91 = v249;
          v92 = v232;
          if ((v89 & 1) == 0)
          {
            v63 = (v78)(v240, v79);
            v93 = v248;
            goto LABEL_69;
          }
        }

        if (qword_2802F9378 != -1)
        {
          v90 = OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        OUTLINED_FUNCTION_39(v90, qword_2802FBA28);
        (*(v91 + 16))(v92);
        v144 = sub_2691E1384();
        v145 = sub_2691E1524();
        if (OUTLINED_FUNCTION_19(v145))
        {
          v146 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_32(v146);
          OUTLINED_FUNCTION_11(&dword_2691B1000, v147, v148, "SCSystemCommandsYesNoStrategy actionForInput | cancel pressed");
          OUTLINED_FUNCTION_42();
        }

        (*(v91 + 8))(v92, v77);
        sub_2691E0CC4();
        v78(v240, v79);
        return (*(v244 + 8))(v243, v247);
      }
    }

    v99 = v64;
    v100 = v250;
    if (qword_2802F9378 != -1)
    {
      goto LABEL_91;
    }

    goto LABEL_19;
  }

  v243 = v62;
  v244 = v51;
  v247 = v49;
  if (v63 == *MEMORY[0x277D5C130])
  {
    v95 = v243;
    v94 = v244;
    v96 = v247;
    (*(v244 + 16))(v60, v243, v247);
    (*(v94 + 96))(v60, v96);
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v97 = swift_dynamicCastObjCClass();
    v77 = v252;
    v93 = v248;
    if (v97 || (objc_opt_self(), OUTLINED_FUNCTION_38(), swift_dynamicCastObjCClass()))
    {
      swift_unknownObjectRelease();
      (*(v94 + 8))(v95, v96);
      return sub_2691E0CC4();
    }

    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      sub_2691E0CD4();
      swift_unknownObjectRelease();
      return (*(v94 + 8))(v95, v96);
    }

    v63 = swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v77 = v252;
  v93 = v248;
  if (v63 != *MEMORY[0x277D5C160])
  {
LABEL_69:
    if (qword_2802F9378 != -1)
    {
      v63 = OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    OUTLINED_FUNCTION_39(v63, qword_2802FBA28);
    v179 = v249;
    OUTLINED_FUNCTION_57();
    v180(v93);
    v182 = v233;
    v181 = v234;
    v183 = v235;
    (*(v234 + 16))(v233, v236, v235);
    v184 = sub_2691E1384();
    v185 = sub_2691E1524();
    v186 = os_log_type_enabled(v184, v185);
    v187 = v244;
    v188 = v247;
    if (v186)
    {
      v189 = OUTLINED_FUNCTION_72();
      v250 = swift_slowAlloc();
      v253 = v250;
      *v189 = 136315138;
      OUTLINED_FUNCTION_18();
      sub_2691B8144(v190, 255, v191, MEMORY[0x277D5C120]);
      v247 = v188;
      v192 = sub_2691E16C4();
      v193 = v183;
      v195 = v194;
      (*(v181 + 8))(v182, v193);
      v196 = sub_2691B98CC(v192, v195, &v253);

      *(v189 + 4) = v196;
      v188 = v247;
      _os_log_impl(&dword_2691B1000, v184, v185, "SCSystemCommandsYesNoStrategy actionForInput | ignoring unknown parse: %s", v189, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v250);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_42();

      (*(v179 + 8))(v248, v77);
    }

    else
    {

      (*(v181 + 8))(v182, v183);
      (*(v179 + 8))(v93, v77);
    }

    sub_2691E0CE4();
    return (*(v187 + 8))(v243, v188);
  }

  v110 = v244;
  v111 = v229;
  v112 = v247;
  (*(v244 + 16))(v229, v243, v247);
  (*(v110 + 96))(v111, v112);
  v113 = v111;
  v100 = v238;
  (*(v239 + 32))(v242, v113, v238);
  v114 = v231;
  sub_2691E0F14();
  v99 = sub_2691E0F54();
  v115 = *(v241 + 8);
  v241 += 8;
  v248 = v115;
  v115(v114, v237);
  v77 = 0;
  v116 = *(v99 + 16);
  v51 = v13 + 16;
  v62 = (v13 + 8);
  v117 = v230;
  while (v116 != v77)
  {
    if (v77 >= *(v99 + 16))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      v76 = OUTLINED_FUNCTION_0(&qword_2802F9378);
LABEL_19:
      OUTLINED_FUNCTION_39(v76, qword_2802FBA28);
      v101 = v249;
      v102 = v247;
      (*(v249 + 16))(v247);
      v103 = sub_2691E1384();
      v104 = sub_2691E1524();
      if (OUTLINED_FUNCTION_19(v104))
      {
        v105 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_32(v105);
        OUTLINED_FUNCTION_11(&dword_2691B1000, v106, v107, "SCSystemCommandsYesNoStrategy actionForInput | confirm pressed");
        v100 = v250;
        OUTLINED_FUNCTION_42();
      }

      (*(v101 + 8))(v102, v77);
      sub_2691E0CD4();
      v108 = *(v99 + 8);
      v109 = v245;
      v108(v100, v245);
      v108(v242, v109);
      return (*(v51 + 8))(v62, v20);
    }

    OUTLINED_FUNCTION_45();
    (*(v13 + 16))(v20, v99 + v118 + *(v13 + 72) * v77++, v117);
    v119 = sub_2691E0FA4();
    (*(v13 + 8))(v20, v117);
    if (v119)
    {

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v120 = v252;
      __swift_project_value_buffer(v252, qword_2802FBA28);
      OUTLINED_FUNCTION_65();
      v121 = v227;
      v122(v227);
      v123 = sub_2691E1384();
      v124 = sub_2691E1524();
      OUTLINED_FUNCTION_19(v124);
      OUTLINED_FUNCTION_59();
      if (v125)
      {
        v126 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_32(v126);
        OUTLINED_FUNCTION_11(&dword_2691B1000, v127, v128, "SCSystemCommandsYesNoStrategy actionForInput | hasAccepted");
        OUTLINED_FUNCTION_21();
      }

      (*(v51 + 8))(v121, v120);
      sub_2691E0CD4();
      (*(v239 + 8))(v242, v100);
      return (*(v99 + 8))(v20, v117);
    }
  }

  v129 = v228;
  sub_2691E0F14();
  v99 = sub_2691E0F54();
  v248(v129, v237);
  v20 = 0;
  v130 = *(v99 + 16);
  v100 = v252;
  do
  {
    if (v130 == v20)
    {

      v149 = v226;
      sub_2691E0F14();
      v150 = v149;
      v100 = sub_2691E0F54();
      v248(v149, v237);
      v99 = 0;
      v20 = *(v100 + 2);
      v77 = v249;
      while (v20 != v99)
      {
        if (v99 >= *(v100 + 2))
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_45();
        v150 = v245;
        (*(v13 + 16))(v245, &v100[v151 + *(v13 + 72) * v99++], v117);
        v152 = sub_2691E0FC4();
        (*(v13 + 8))(v150, v117);
        if (v152)
        {

          if (qword_2802F9378 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_2802F9378);
          }

          v153 = v252;
          v154 = __swift_project_value_buffer(v252, qword_2802FBA28);
          v155 = v77;
          v156 = *(v77 + 16);
          v157 = v222;
          v156(v222, v154, v153);
          v158 = sub_2691E1384();
          v159 = sub_2691E1524();
          OUTLINED_FUNCTION_19(v159);
          OUTLINED_FUNCTION_59();
          v160 = v239;
          if (v161)
          {
            v162 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_32(v162);
            OUTLINED_FUNCTION_11(&dword_2691B1000, v163, v164, "SCSystemCommandsYesNoStrategy actionForInput | hasCancelled");
            OUTLINED_FUNCTION_42();
          }

          (*(v155 + 8))(v157, v153);
          sub_2691E0CC4();
          (*(v160 + 8))(v242, v238);
          return (*(v99 + 8))(v20, v117);
        }
      }

      v139 = v239;
      if (*(v223 + 64))
      {
        v20 = v243;
        v99 = v244;
        v117 = v247;
        v138 = v238;
        v166 = v77;
        if (*(v223 + 64) == 2)
        {
          OUTLINED_FUNCTION_68(v165);
          OUTLINED_FUNCTION_67();
          sub_2691C4C28();
          v168 = v167;
          OUTLINED_FUNCTION_5();
          v165 = sub_2691B82A4(v150, v169);
          if (v168)
          {
            v170 = v252;
            if (qword_2802F9378 != -1)
            {
              v165 = OUTLINED_FUNCTION_0(&qword_2802F9378);
            }

            OUTLINED_FUNCTION_39(v165, qword_2802FBA28);
            OUTLINED_FUNCTION_57();
            v171 = v218;
            v172(v218);
            v173 = sub_2691E1384();
            v174 = sub_2691E1524();
            if (!OUTLINED_FUNCTION_19(v174))
            {
              goto LABEL_81;
            }

            v175 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_32(v175);
            v178 = "SCSystemCommandsYesNoStrategy actionForInput | accepting confirmation for StartRecording parse";
LABEL_80:
            OUTLINED_FUNCTION_11(&dword_2691B1000, v176, v177, v178);
            OUTLINED_FUNCTION_21();
LABEL_81:

            (*(v166 + 8))(v171, v170);
            sub_2691E0CD4();
            goto LABEL_41;
          }
        }
      }

      else
      {
        OUTLINED_FUNCTION_68(v165);
        OUTLINED_FUNCTION_67();
        sub_2691C4C54(v197, v198);
        v200 = v199;
        OUTLINED_FUNCTION_5();
        sub_2691B82A4(v150, v201);
        OUTLINED_FUNCTION_59();
        v138 = v238;
        v166 = v77;
        if (v200)
        {
          v170 = v252;
          if (qword_2802F9378 != -1)
          {
            v165 = OUTLINED_FUNCTION_0(&qword_2802F9378);
          }

          OUTLINED_FUNCTION_39(v165, qword_2802FBA28);
          OUTLINED_FUNCTION_57();
          v171 = v219;
          v202(v219);
          v173 = sub_2691E1384();
          v203 = sub_2691E1524();
          if (!OUTLINED_FUNCTION_19(v203))
          {
            goto LABEL_81;
          }

          v204 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_32(v204);
          v178 = "SCSystemCommandsYesNoStrategy actionForInput | accepting confirmation for Restart parse";
          goto LABEL_80;
        }
      }

      v205 = v252;
      if (qword_2802F9378 != -1)
      {
        v165 = OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      OUTLINED_FUNCTION_39(v165, qword_2802FBA28);
      OUTLINED_FUNCTION_57();
      v206 = v224;
      v207(v224);
      v208 = v220;
      (*(v139 + 16))(v220, v242, v138);
      v209 = sub_2691E1384();
      v210 = sub_2691E1524();
      if (os_log_type_enabled(v209, v210))
      {
        v138 = OUTLINED_FUNCTION_72();
        v211 = swift_slowAlloc();
        v253 = v211;
        *v138 = 136315138;
        v212 = sub_2691E0F04();
        v213 = v208;
        v215 = v214;
        v216 = *(v139 + 8);
        v216(v213, v238);
        v217 = sub_2691B98CC(v212, v215, &v253);

        *(v138 + 4) = v217;
        _os_log_impl(&dword_2691B1000, v209, v210, "SCSystemCommandsYesNoStrategy actionForInput | ignoring usoParse: %s", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v211);
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_21();

        (*(v166 + 8))(v224, v205);
      }

      else
      {

        v216 = *(v139 + 8);
        v216(v208, v138);
        (*(v166 + 8))(v206, v205);
      }

      sub_2691E0CE4();
      v216(v242, v138);
      return (*(v244 + 8))(v243, v247);
    }

    if (v20 >= *(v99 + 16))
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_45();
    v132 = v250;
    (*(v13 + 16))(v250, v99 + v131 + *(v13 + 72) * v20++, v117);
    v77 = sub_2691E0FB4();
    (*(v13 + 8))(v132, v117);
  }

  while ((v77 & 1) == 0);

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v133 = v100;
  __swift_project_value_buffer(v100, qword_2802FBA28);
  OUTLINED_FUNCTION_65();
  v134 = v225;
  v135(v225);
  v136 = sub_2691E1384();
  v137 = sub_2691E1524();
  OUTLINED_FUNCTION_19(v137);
  OUTLINED_FUNCTION_59();
  v138 = v238;
  v139 = v239;
  if (v140)
  {
    v141 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_32(v141);
    OUTLINED_FUNCTION_11(&dword_2691B1000, v142, v143, "SCSystemCommandsYesNoStrategy actionForInput | hasRejected");
    OUTLINED_FUNCTION_21();
  }

  (*(v51 + 8))(v134, v133);
  sub_2691E0CC4();
LABEL_41:
  (*(v139 + 8))(v242, v138);
  return (*(v99 + 8))(v20, v117);
}

uint64_t sub_2691B5E9C()
{
  OUTLINED_FUNCTION_34();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2691E0EB4();
  v1[5] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E1394();
  v1[8] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_49();
  v1[11] = swift_task_alloc();
  v8 = type metadata accessor for SystemCommandsIntent(0);
  OUTLINED_FUNCTION_37(v8);
  v1[12] = OUTLINED_FUNCTION_44();
  v9 = sub_2691E0FF4();
  v1[13] = v9;
  OUTLINED_FUNCTION_1(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_49();
  v1[16] = swift_task_alloc();
  v11 = sub_2691E0F64();
  v1[17] = v11;
  OUTLINED_FUNCTION_1(v11);
  v1[18] = v12;
  v1[19] = OUTLINED_FUNCTION_49();
  v1[20] = swift_task_alloc();
  v13 = sub_2691E0F24();
  v1[21] = v13;
  OUTLINED_FUNCTION_1(v13);
  v1[22] = v14;
  v1[23] = OUTLINED_FUNCTION_49();
  v1[24] = swift_task_alloc();
  v15 = sub_2691E0ED4();
  v1[25] = v15;
  OUTLINED_FUNCTION_1(v15);
  v1[26] = v16;
  v1[27] = OUTLINED_FUNCTION_44();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9438, &qword_2691E3A00);
  OUTLINED_FUNCTION_37(v17);
  v1[28] = OUTLINED_FUNCTION_44();
  v18 = sub_2691E0EE4();
  v1[29] = v18;
  OUTLINED_FUNCTION_1(v18);
  v1[30] = v19;
  v1[31] = OUTLINED_FUNCTION_49();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v20);
}

uint64_t sub_2691B61BC(uint64_t a1)
{
  v137 = v1;
  sub_2691E0EA4();
  v2 = OUTLINED_FUNCTION_35();
  v4 = v3(v2);
  if (v4 != *MEMORY[0x277D5C150])
  {
    if (v4 == *MEMORY[0x277D5C130])
    {
      v23 = OUTLINED_FUNCTION_48();
      v24(v23);
      v25 = OUTLINED_FUNCTION_56();
      v26(v25);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v27 = v1[28];
        v28 = MEMORY[0x277D5BED8];
LABEL_22:
        v56 = *v28;
        v57 = sub_2691E0DF4();
        OUTLINED_FUNCTION_27();
        (*(v58 + 104))(v27, v56, v57);
        __swift_storeEnumTagSinglePayload(v27, 0, 1, v57);
        sub_2691E0E94();
        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v27 = v1[28];
        v28 = MEMORY[0x277D5BED0];
        goto LABEL_22;
      }

      swift_unknownObjectRelease();
LABEL_30:
      if (qword_2802F9378 != -1)
      {
        goto LABEL_52;
      }

      goto LABEL_31;
    }

    if (v4 != *MEMORY[0x277D5C160])
    {
      goto LABEL_30;
    }

    v35 = v1[32];
    v36 = v1[24];
    v37 = v1[21];
    v38 = v1[22];
    v39 = v1[20];
    v40 = v1[18];
    v135 = v1[17];
    v41 = v1[14];
    v42 = OUTLINED_FUNCTION_48();
    v43(v42);
    v44 = OUTLINED_FUNCTION_56();
    v45(v44);
    (*(v38 + 32))(v36, v35, v37);
    sub_2691E0F14();
    v46 = sub_2691E0F54();
    v47 = v135;
    v131 = *(v40 + 8);
    v134 = v40 + 8;
    v131(v39, v47);
    v48 = 0;
    v49 = *(v46 + 16);
    while (v49 != v48)
    {
      if (v48 >= *(v46 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        OUTLINED_FUNCTION_0(&qword_2802F9378);
LABEL_31:
        v71 = v1[9];
        v70 = v1[10];
        v73 = v1[7];
        v72 = v1[8];
        v74 = v1[5];
        v75 = v1[6];
        v76 = v1[3];
        v77 = __swift_project_value_buffer(v72, qword_2802FBA28);
        (*(v71 + 16))(v70, v77, v72);
        (*(v75 + 16))(v73, v76, v74);
        v78 = sub_2691E1384();
        v79 = sub_2691E1524();
        v80 = os_log_type_enabled(v78, v79);
        v82 = v1[9];
        v81 = v1[10];
        v83 = v1[7];
        v84 = v1[8];
        v86 = v1[5];
        v85 = v1[6];
        if (v80)
        {
          OUTLINED_FUNCTION_72();
          v130 = v79;
          v87 = OUTLINED_FUNCTION_66();
          v136 = v87;
          *v84 = 136315138;
          OUTLINED_FUNCTION_18();
          sub_2691B8144(v88, 255, v89, MEMORY[0x277D5C120]);
          v90 = sub_2691E16C4();
          v132 = v81;
          v92 = v91;
          (*(v85 + 8))(v83, v86);
          v93 = sub_2691B98CC(v90, v92, &v136);

          *(v84 + 4) = v93;
          _os_log_impl(&dword_2691B1000, v78, v130, "SCSystemCommandsYesNoStrategy parseConfirmationResponse | Unable to parse a confirmation response for: %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v87);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          (*(v82 + 8))(v132, v134);
        }

        else
        {

          (*(v85 + 8))(v83, v86);
          (*(v82 + 8))(v81, v84);
        }

        v94 = sub_2691E0DF4();
        OUTLINED_FUNCTION_71(v94);
        sub_2691E0E94();
        goto LABEL_35;
      }

      v50 = v1[16];
      OUTLINED_FUNCTION_43();
      (*(v41 + 16))(v50, v51 + v52 * v48++, v36);
      sub_2691E0FA4();
      v53 = OUTLINED_FUNCTION_62();
      v54(v53);
      if (v37)
      {
        OUTLINED_FUNCTION_58();
        v55 = MEMORY[0x277D5BED8];
LABEL_28:
        v67 = *v55;
        v68 = sub_2691E0DF4();
        OUTLINED_FUNCTION_27();
        (*(v69 + 104))(v50, v67, v68);
        OUTLINED_FUNCTION_69();
        sub_2691E0E94();
        (*(v41 + 8))(v36);
        goto LABEL_35;
      }
    }

    v36 = v1[19];
    v59 = v1[17];

    sub_2691E0F14();
    v60 = sub_2691E0F54();
    v131(v36, v59);
    v61 = 0;
    v62 = *(v60 + 16);
    while (v62 != v61)
    {
      if (v61 >= *(v60 + 16))
      {
        goto LABEL_51;
      }

      v50 = v1[15];
      OUTLINED_FUNCTION_43();
      (*(v41 + 16))(v50, v63 + v64 * v61++, v36);
      sub_2691E0FB4();
      v65 = OUTLINED_FUNCTION_62();
      v66(v65);
      if (v59)
      {
        OUTLINED_FUNCTION_58();
        v55 = MEMORY[0x277D5BED0];
        goto LABEL_28;
      }
    }

    v97 = v1[4];

    if (*(v97 + 64))
    {
      if (*(v97 + 64) != 2)
      {
LABEL_44:
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        v104 = v1[23];
        v105 = v1[24];
        v106 = v1[21];
        v107 = v1[22];
        v108 = v1[11];
        v109 = v1[8];
        v110 = v1[9];
        v111 = __swift_project_value_buffer(v109, qword_2802FBA28);
        (*(v110 + 16))(v108, v111, v109);
        (*(v107 + 16))(v104, v105, v106);
        v112 = sub_2691E1384();
        v113 = sub_2691E1524();
        v114 = os_log_type_enabled(v112, v113);
        v115 = v1[21];
        v116 = v1[11];
        v118 = v1[8];
        v117 = v1[9];
        if (v114)
        {
          OUTLINED_FUNCTION_72();
          v119 = OUTLINED_FUNCTION_66();
          v136 = v119;
          *v118 = 136315138;
          v129 = sub_2691E0F04();
          v133 = v116;
          v121 = v120;
          v122 = OUTLINED_FUNCTION_55();
          v123(v122);
          v124 = sub_2691B98CC(v129, v121, &v136);

          *(v118 + 4) = v124;
          _os_log_impl(&dword_2691B1000, v112, v113, "SCSystemCommandsYesNoStrategy parseConfirmationResponse | Unknown usoParse: %s", v118, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v119);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          (*(v117 + 8))(v133, v134);
        }

        else
        {

          v125 = OUTLINED_FUNCTION_55();
          v126(v125);
          (*(v117 + 8))(v116, v118);
        }

        v127 = sub_2691E0DF4();
        OUTLINED_FUNCTION_71(v127);
        sub_2691E0E94();
        v128 = OUTLINED_FUNCTION_35();
        v115(v128);
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_70(v98);
      sub_2691C4820(v60);
      sub_2691C4C28();
    }

    else
    {
      OUTLINED_FUNCTION_70(v98);
      sub_2691C4820(v60);
      sub_2691C4C54(v100, v101);
    }

    v102 = v99;
    OUTLINED_FUNCTION_5();
    sub_2691B82A4(v36, v103);
    if (v102)
    {
      v29 = v1[28];
      goto LABEL_13;
    }

    goto LABEL_44;
  }

  v5 = v1[33];
  v7 = v1[26];
  v6 = v1[27];
  v8 = v1[25];
  v9 = OUTLINED_FUNCTION_48();
  v10(v9);
  v11 = OUTLINED_FUNCTION_56();
  v12(v11);
  (*(v7 + 32))(v6, v5, v8);
  v13 = sub_2691E0EC4();
  v15 = v14;
  v16 = sub_2691E0BD4();
  v17 = [v16 identifier];

  v18 = sub_2691E13D4();
  v20 = v19;

  if (v13 == v18 && v15 == v20)
  {
  }

  else
  {
    v22 = sub_2691E16D4();

    if ((v22 & 1) == 0)
    {
      (*(v1[26] + 8))(v1[27], v1[25]);
      goto LABEL_30;
    }
  }

  v29 = v1[28];
LABEL_13:
  v30 = *MEMORY[0x277D5BED8];
  v31 = sub_2691E0DF4();
  OUTLINED_FUNCTION_27();
  (*(v32 + 104))(v29, v30, v31);
  OUTLINED_FUNCTION_69();
  sub_2691E0E94();
  v33 = OUTLINED_FUNCTION_35();
  v34(v33);
LABEL_35:
  (*(v1[30] + 8))(v1[35], v1[29]);

  OUTLINED_FUNCTION_31();

  return v95();
}

uint64_t sub_2691B6C24()
{
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_33();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_2691B6C50()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[2];
  if (*(v1 + 64))
  {
    if (*(v1 + 64) == 1)
    {
      v2 = swift_task_alloc();
      v0[3] = v2;
      *v2 = v0;
      OUTLINED_FUNCTION_36(v2);

      return sub_2691CBFB8();
    }

    else
    {
      v5 = swift_task_alloc();
      v0[7] = v5;
      *v5 = v0;
      OUTLINED_FUNCTION_36(v5);

      return sub_2691CBF14();
    }
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    OUTLINED_FUNCTION_36(v4);

    return sub_2691CC05C();
  }
}

uint64_t sub_2691B6DAC()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_46();

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    v11 = OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11);
  }
}

void sub_2691B6ECC()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 32);
  v2 = [v1 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v3 = sub_2691E1494();

  if (!sub_2691B7FAC(v3))
  {

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12();
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 fullPrint];

  sub_2691E13D4();
  v8 = OUTLINED_FUNCTION_15();

  v9(v8);
}

uint64_t sub_2691B700C()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_46();

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    v11 = OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11);
  }
}

void sub_2691B712C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 48);
  v2 = [v1 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v3 = sub_2691E1494();

  if (!sub_2691B7FAC(v3))
  {

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12();
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 fullPrint];

  sub_2691E13D4();
  v8 = OUTLINED_FUNCTION_15();

  v9(v8);
}

uint64_t sub_2691B726C()
{
  OUTLINED_FUNCTION_61();
  v3 = v2;
  OUTLINED_FUNCTION_20();
  v5 = v4;
  OUTLINED_FUNCTION_10();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_46();

    return v9();
  }

  else
  {
    *(v5 + 64) = v3;
    v11 = OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11);
  }
}

void sub_2691B738C()
{
  OUTLINED_FUNCTION_53();
  v1 = *(v0 + 64);
  v2 = [v1 dialog];

  sub_2691B7F64();
  OUTLINED_FUNCTION_38();
  v3 = sub_2691E1494();

  if (!sub_2691B7FAC(v3))
  {

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_12();
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_73();
  }

  else
  {
    OUTLINED_FUNCTION_60();
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 fullPrint];

  sub_2691E13D4();
  v8 = OUTLINED_FUNCTION_15();

  v9(v8);
}

uint64_t sub_2691B74F4(unsigned __int8 a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1);
  return sub_2691E1734();
}

uint64_t sub_2691B7558(uint64_t a1)
{
  v2 = *v1;
  sub_2691E1714();
  MEMORY[0x26D633080](v2);
  return sub_2691E1734();
}

uint64_t sub_2691B759C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 65, 7);
}

uint64_t getEnumTagSinglePayload for SCSystemCommandsYesNoStrategy.ResponseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SCSystemCommandsYesNoStrategy.ResponseType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691B7764);
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

unint64_t sub_2691B77B4()
{
  result = qword_2802F93B8;
  if (!qword_2802F93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F93B8);
  }

  return result;
}

uint64_t sub_2691B7850()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691B2E4C();
}

uint64_t sub_2691B78F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B8324;

  return sub_2691B5E9C();
}

uint64_t sub_2691B79A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SCSystemCommandsYesNoStrategy();
  v6 = sub_2691B8144(&qword_2802F93C8, v5, type metadata accessor for SCSystemCommandsYesNoStrategy, &unk_2691E2238);
  *v3 = v1;
  v3[1] = sub_2691B8324;

  return MEMORY[0x2821B9C20](a1, v4, v6);
}

uint64_t sub_2691B7A88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SCSystemCommandsYesNoStrategy();
  v6 = sub_2691B8144(&qword_2802F93C8, v5, type metadata accessor for SCSystemCommandsYesNoStrategy, &unk_2691E2238);
  *v3 = v1;
  v3[1] = sub_2691B8324;

  return MEMORY[0x2821B9C28](a1, v4, v6);
}

uint64_t sub_2691B7B70(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SCSystemCommandsYesNoStrategy();
  v6 = sub_2691B8144(&qword_2802F93C8, v5, type metadata accessor for SCSystemCommandsYesNoStrategy, &unk_2691E2238);
  *v3 = v1;
  v3[1] = sub_2691B8324;

  return MEMORY[0x2821B9C30](a1, v4, v6);
}

uint64_t sub_2691B7C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2691B8324;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_2691B7D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2691B7DC0;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_2691B7DC0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_31();

  return v3();
}

uint64_t sub_2691B7EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2691B8324;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

unint64_t sub_2691B7F64()
{
  result = qword_2802F9430;
  if (!qword_2802F9430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9430);
  }

  return result;
}

uint64_t sub_2691B7FAC(unint64_t a1)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2691B8078(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2691B80DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F99D0, &qword_2691E2320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2691B8144(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2691B81EC(uint64_t a1, uint64_t a2)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  (*(*(restarted - 8) + 16))(a2, a1, restarted);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2691B82A4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_27();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2691B8300(unint64_t result, char a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 512) = v7;

  return MEMORY[0x2821BB1C0](a1, a2, a3, a4, a5, a6, a7);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_2691E1634();
}

uint64_t OUTLINED_FUNCTION_16(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_17()
{
  v2 = *(v0 + 512);
}

BOOL OUTLINED_FUNCTION_19(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_21()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_25()
{
}

void OUTLINED_FUNCTION_42()
{

  JUMPOUT(0x26D6335B0);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58()
{
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_67()
{

  sub_2691C4820(v0);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{

  return sub_2691E0EA4();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_70(uint64_t a1)
{

  return sub_2691E0EA4();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_72()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_73()
{

  JUMPOUT(0x26D632F20);
}

uint64_t SCSoftwareUpdateFlow.__allocating_init(sharedObjects:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SCSoftwareUpdateFlow.init(sharedObjects:)(a1);
  return v2;
}

uint64_t SCSoftwareUpdateFlow.init(sharedObjects:)(uint64_t a1)
{
  sub_2691B8078(a1 + 40, v1 + 16);
  sub_2691B8078(a1 + 80, v4);
  sub_2691B8A88(a1);
  sub_2691B8ADC(v4, v1 + 56);
  return v1;
}

uint64_t sub_2691B8ADC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t SCSoftwareUpdateFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[14] = v2;
  v1[15] = v0;
  sub_2691E0CA4();
  v1[16] = swift_task_alloc();
  v3 = sub_2691E0E64();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = sub_2691E1394();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_2691E1374();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691B8C78);
}

uint64_t sub_2691B8C78()
{
  v1 = v0[15];
  type metadata accessor for SystemControlCATPatternsExecutor(0);
  sub_2691E1294();
  sub_2691B8078(v1 + 16, (v0 + 2));
  sub_2691E1274();
  sub_2691B80DC((v0 + 2));
  sub_2691E1284();

  sub_2691E1364();
  v2 = sub_2691E12C4();
  v0[25] = v2;

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_2691B8DB0;
  v4 = v0[15];

  return sub_2691BD4A0(0, v2, v4);
}

uint64_t sub_2691B8DB0()
{
  OUTLINED_FUNCTION_34();
  v2 = *v1;
  *(v2 + 216) = v3;
  *(v2 + 224) = v0;

  if (v0)
  {
    v4 = sub_2691B9148;
  }

  else
  {

    v4 = sub_2691B8EC8;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2691B8EC8()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_2802FBA28);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2691E1384();
  v6 = sub_2691E1534();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2691B1000, v5, v6, "SCSoftwareUpdateFlow execute | software update pattern successfully executed", v7, 2u);
    MEMORY[0x26D6335B0](v7, -1, -1);
  }

  v8 = v0[27];
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[15];
  v17 = v0[17];

  (*(v10 + 8))(v9, v11);
  sub_2691E0C84();
  sub_2691E0E24();
  sub_2691B8078(v14 + 56, (v0 + 7));
  sub_2691E0DA4();
  swift_allocObject();
  sub_2691E0D94();
  sub_2691E0B04();
  swift_allocObject();
  v0[13] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v13 + 8))(v12, v17);
  OUTLINED_FUNCTION_2_0();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2691B9148()
{
  v24 = v0;

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v1 = v0[28];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = __swift_project_value_buffer(v4, qword_2802FBA28);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  v7 = sub_2691E1544();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v0[12] = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v14 = sub_2691E13E4();
    v16 = sub_2691B98CC(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2691B1000, v6, v7, "SCSoftwareUpdateFlow execute | error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x26D6335B0](v13, -1, -1);
    MEMORY[0x26D6335B0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[28];
  sub_2691E0D54();

  OUTLINED_FUNCTION_2_0();

  v21 = v0[1];

  return v21();
}

uint64_t SCSoftwareUpdateFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCSoftwareUpdateFlow();
  sub_2691B9E70();
  return sub_2691E0B34();
}

uint64_t SCSoftwareUpdateFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t SCSoftwareUpdateFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2691B9468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2691B9518;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2691B9518()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t sub_2691B9634()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B96D0;

  return SCSoftwareUpdateFlow.execute()();
}

uint64_t sub_2691B96D0()
{
  OUTLINED_FUNCTION_34();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2691B97C0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SCSoftwareUpdateFlow();

  return MEMORY[0x2821BA658](updated, a2);
}

uint64_t sub_2691B97FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2691B9870(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2691B98CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2691B98CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2691B9990(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2691B9EC4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_2691B9990(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2691B9A90(a5, a6);
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
    result = sub_2691E15F4();
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

uint64_t sub_2691B9A90(uint64_t a1, unint64_t a2)
{
  v3 = sub_2691B9ADC(a1, a2);
  sub_2691B9BF4(&unk_2879D4CC8);
  return v3;
}

uint64_t sub_2691B9ADC(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2691E1444())
  {
    result = sub_2691B9CD8(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2691E15B4();
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
          result = sub_2691E15F4();
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

uint64_t sub_2691B9BF4(uint64_t result)
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

    result = sub_2691B9D48(result, v7, 1, v3);
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

void *sub_2691B9CD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97E0, &qword_2691E2418);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2691B9D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97E0, &qword_2691E2418);
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

_BYTE **sub_2691B9E3C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2691B9E70()
{
  result = qword_2802F97D8;
  if (!qword_2802F97D8)
  {
    type metadata accessor for SCSoftwareUpdateFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97D8);
  }

  return result;
}

uint64_t sub_2691B9EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
}

uint64_t *LocalizationProvider.shared.unsafeMutableAddressor()
{
  if (qword_2802F9360 != -1)
  {
    swift_once();
  }

  return &static LocalizationProvider.shared;
}

uint64_t sub_2691B9F94()
{
  type metadata accessor for LocalizationProvider();
  result = swift_initStaticObject();
  static LocalizationProvider.shared = result;
  return result;
}

uint64_t static LocalizationProvider.shared.getter()
{
  type metadata accessor for LocalizationProvider();

  return swift_initStaticObject();
}

uint64_t LocalizationProvider.localizedString(key:table:locale:)(char a1)
{
  v17 = sub_2691E09B4();
  v18 = v2;
  v16 = sub_2691BA210();
  v15 = MEMORY[0x277D837D0];
  v3 = sub_2691E15A4();
  v5 = v4;

  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = (a1 & 1) == 0;
    if (a1)
    {
      v9 = 0xD000000000000014;
    }

    else
    {
      v9 = 0xD000000000000013;
    }

    if (v8)
    {
      v10 = &unk_2691E4140;
    }

    else
    {
      v10 = "CONFIRMATION_CANCEL";
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_2691BA5B4(v9, v10 | 0x8000000000000000, 0x736C6562614CLL, 0xE600000000000000, v12, v3, v5, v7);
  }

  else
  {

    return 0;
  }

  return v13;
}

unint64_t LocalizationKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000013;
  }
}

unint64_t sub_2691BA210()
{
  result = qword_2802F97E8;
  if (!qword_2802F97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97E8);
  }

  return result;
}

BOOL LocalizationTable.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2691E1654();

  return v2 != 0;
}

uint64_t sub_2691BA2F4()
{
  sub_2691E1714();
  sub_2691E1414();
  return sub_2691E1734();
}

uint64_t sub_2691BA368(uint64_t a1, char a2)
{
  sub_2691E1414();
}

uint64_t sub_2691BA3D0(uint64_t a1, char a2)
{
  sub_2691E1714();
  sub_2691E1414();

  return sub_2691E1734();
}

uint64_t sub_2691BA448(uint64_t a1)
{
  sub_2691E1714();
  sub_2691E1414();
  return sub_2691E1734();
}

BOOL sub_2691BA494@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = LocalizationTable.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

SiriSystemCommandsIntents::LocalizationKey_optional __swiftcall LocalizationKey.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2691E1654();

  if (v1 == 1)
  {
    v2.value = SiriSystemCommandsIntents_LocalizationKey_confirmationConfirm;
  }

  else
  {
    v2.value = SiriSystemCommandsIntents_LocalizationKey_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

SiriSystemCommandsIntents::LocalizationKey_optional sub_2691BA558@<W0>(Swift::String *a1@<X0>, SiriSystemCommandsIntents::LocalizationKey_optional *a2@<X8>)
{
  result.value = LocalizationKey.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_2691BA588@<X0>(unint64_t *a1@<X8>)
{
  result = LocalizationKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2691BA5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_2691E13C4();

  v11 = sub_2691E13C4();

  v12 = sub_2691E13C4();

  v13 = [a8 localizedStringForKey:v10 table:v11 bundle:a5 languageCode:v12];

  if (!v13)
  {
    return 0;
  }

  v14 = sub_2691E13D4();

  return v14;
}

unint64_t sub_2691BA6AC()
{
  result = qword_2802F97F0;
  if (!qword_2802F97F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97F0);
  }

  return result;
}

unint64_t sub_2691BA704()
{
  result = qword_2802F97F8;
  if (!qword_2802F97F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F97F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizationTable(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for LocalizationTable(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2691BA848);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocalizationKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LocalizationKey(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691BA9DCLL);
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

uint64_t type metadata accessor for RestartShutdownCATs(uint64_t a1)
{
  result = qword_2802F9800;
  if (!qword_2802F9800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691BAB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2691E1374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2691E12A4();
  (*(v6 + 8))(a2, v5);
  sub_2691BAD14(a1);
  return v11;
}

uint64_t sub_2691BAC6C()
{
  v0 = sub_2691E12D4();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2691BACA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691BAD14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.confirmText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  sub_2691E09F4();
  return v1;
}

uint64_t (*SiriSystemCommandsModels.RestartConfirmationModel.confirmText.modify(uint64_t *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  v2[4] = sub_2691E09E4();
  return sub_2691BD0DC;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.rejectText.getter()
{
  type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  sub_2691E09F4();
  return v1;
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.rejectText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  return sub_2691E0A04();
}

uint64_t (*SiriSystemCommandsModels.RestartConfirmationModel.rejectText.modify(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  v2[4] = sub_2691E09E4();
  return sub_2691BB050;
}

void sub_2691BB054(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2691BB0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546D7269666E6F63 && a2 == 0xEB00000000747865;
  if (v4 || (sub_2691E16D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65547463656A6572 && a2 == 0xEA00000000007478)
  {

    return 1;
  }

  else
  {
    v7 = sub_2691E16D4();

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

uint64_t sub_2691BB1B4(char a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](a1 & 1);
  return sub_2691E1734();
}

uint64_t sub_2691BB208(char a1)
{
  if (a1)
  {
    return 0x65547463656A6572;
  }

  else
  {
    return 0x546D7269666E6F63;
  }
}

uint64_t sub_2691BB270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691BB0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2691BB2B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2691BB174();
  *a1 = result;
  return result;
}

uint64_t sub_2691BB2E0(uint64_t a1)
{
  v2 = sub_2691BB520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2691BB31C(uint64_t a1)
{
  v2 = sub_2691BB520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9820, &qword_2691E2678);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BB520();
  sub_2691E1764();
  v13[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  sub_2691BB90C(&qword_2802F9830, MEMORY[0x277D637D0]);
  OUTLINED_FUNCTION_5_0(v3);
  if (!v2)
  {
    v11 = *(type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0) + 20);
    v13[14] = 1;
    OUTLINED_FUNCTION_5_0(v3 + v11);
  }

  return (*(v7 + 8))(v10, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2691BB520()
{
  result = qword_2802F9828;
  if (!qword_2802F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9828);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t SiriSystemCommandsModels.RestartConfirmationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);
  OUTLINED_FUNCTION_2();
  v31 = v4;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v33 = v26 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9838, &qword_2691E2680);
  OUTLINED_FUNCTION_2();
  v30 = v10;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v18 = v17 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BB520();
  sub_2691E1754();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = restarted;
  v28 = v18;
  v20 = v30;
  v19 = v31;
  v36 = 0;
  v21 = sub_2691BB90C(&qword_2802F9840, MEMORY[0x277D637E0]);
  v22 = v32;
  sub_2691E1684();
  v26[1] = v21;
  v23 = v33;
  v33 = *(v19 + 32);
  (v33)(v28, v23, v34);
  v35 = 1;
  sub_2691E1684();
  (*(v20 + 8))(v13, v22);
  v24 = v28;
  (v33)(v28 + *(v27 + 20), v8, v34);
  sub_2691BC0A8(v24, v29, type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_2691BB97C(v24);
}

uint64_t sub_2691BB90C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F9818, &qword_2691E2670);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2691BB97C(uint64_t a1)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  (*(*(restarted - 8) + 8))(a1, restarted);
  return a1;
}

uint64_t sub_2691BB9D8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002691E4600 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2691E16D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2691BBA9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2691E16D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2691BBB0C()
{
  sub_2691E1714();
  MEMORY[0x26D633080](0);
  return sub_2691E1734();
}

uint64_t sub_2691BBBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691BB9D8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2691BBBF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2691B9460();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2691BBC24(uint64_t a1)
{
  v2 = sub_2691BC054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2691BBC60(uint64_t a1)
{
  v2 = sub_2691BC054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2691BBC9C(uint64_t a1)
{
  sub_2691E1714();
  MEMORY[0x26D633080](0);
  return sub_2691E1734();
}

uint64_t sub_2691BBCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2691BBA9C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2691BBD0C(uint64_t a1)
{
  v2 = sub_2691BC108();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2691BBD48(uint64_t a1)
{
  v2 = sub_2691BC108();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriSystemCommandsModels.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9848, &qword_2691E2688);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v7 = type metadata accessor for SiriSystemCommandsModels(0);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_47();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9850, &qword_2691E2690);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BC054();
  sub_2691E1764();
  sub_2691BC0A8(v21, v10, type metadata accessor for SiriSystemCommandsModels);
  sub_2691BC108();
  sub_2691E16A4();
  type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
  OUTLINED_FUNCTION_1_0();
  sub_2691BC6D0(v17, v18, &protocol conformance descriptor for SiriSystemCommandsModels.RestartConfirmationModel);
  v19 = v22;
  sub_2691E16B4();
  sub_2691BB97C(v10);
  (*(v3 + 8))(v6, v19);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_2691BC01C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2691BC054()
{
  result = qword_2802F9858;
  if (!qword_2802F9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9858);
  }

  return result;
}

uint64_t sub_2691BC0A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_27();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_2691BC108()
{
  result = qword_2802F9860;
  if (!qword_2802F9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9860);
  }

  return result;
}

uint64_t SiriSystemCommandsModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = type metadata accessor for SiriSystemCommandsModels(0);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9870, &qword_2691E2698);
  OUTLINED_FUNCTION_2();
  v39 = v7;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9878, &qword_2691E26A0);
  OUTLINED_FUNCTION_2();
  v41 = v12;
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2691BC054();
  v16 = v42;
  sub_2691E1754();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v42 = v10;
  v37 = v6;
  v17 = sub_2691E1694();
  result = sub_2691BC60C(v17, 0);
  if (v20 == v21 >> 1)
  {
    v22 = v11;
    goto LABEL_8;
  }

  if (v20 < (v21 >> 1))
  {
    sub_2691BC654(v20 + 1, v21 >> 1, result, v19, v20, v21);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      sub_2691BC108();
      sub_2691E1664();
      type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);
      OUTLINED_FUNCTION_1_0();
      sub_2691BC6D0(v30, v31, &protocol conformance descriptor for SiriSystemCommandsModels.RestartConfirmationModel);
      v32 = v37;
      sub_2691E1684();
      v33 = v41;
      swift_unknownObjectRelease();
      v34 = OUTLINED_FUNCTION_6_0();
      v35(v34);
      (*(v33 + 8))(v15, v11);
      sub_2691BC718(v32, v38);
      return __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    v22 = v11;
LABEL_8:
    v27 = sub_2691E15E4();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9880, &qword_2691E26A8);
    *v29 = v40;
    sub_2691E1674();
    sub_2691E15D4();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v41 + 8))(v15, v22);
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2691BC60C(uint64_t result, uint64_t a2)
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

uint64_t sub_2691BC654(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_2691BC6D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2691BC718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSystemCommandsModels(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691BC89C(uint64_t a1, uint64_t a2)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, restarted, j____swift_get_extra_inhabitant_indexTm);
}

uint64_t sub_2691BC920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, restarted, j____swift_store_extra_inhabitant_indexTm);
}

uint64_t sub_2691BC98C(uint64_t a1)
{
  restarted = type metadata accessor for SiriSystemCommandsModels.RestartConfirmationModel(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(restarted - 8) + 84);
    return 0;
  }

  return restarted;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9818, &qword_2691E2670);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_2691BCB08(uint64_t a1)
{
  sub_2691BCB74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2691BCB74()
{
  if (!qword_2802F98C0)
  {
    v0 = sub_2691E0A14();
    if (!v1)
    {
      atomic_store(v0, &qword_2802F98C0);
    }
  }
}

_BYTE *sub_2691BCBDC(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2691BCC78);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriSystemCommandsModels.RestartConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691BCD7CLL);
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

unint64_t sub_2691BCDB8()
{
  result = qword_2802F98C8;
  if (!qword_2802F98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98C8);
  }

  return result;
}

unint64_t sub_2691BCE10()
{
  result = qword_2802F98D0;
  if (!qword_2802F98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98D0);
  }

  return result;
}

unint64_t sub_2691BCE68()
{
  result = qword_2802F98D8;
  if (!qword_2802F98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98D8);
  }

  return result;
}

unint64_t sub_2691BCEC0()
{
  result = qword_2802F98E0;
  if (!qword_2802F98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98E0);
  }

  return result;
}

unint64_t sub_2691BCF18()
{
  result = qword_2802F98E8;
  if (!qword_2802F98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98E8);
  }

  return result;
}

unint64_t sub_2691BCF70()
{
  result = qword_2802F98F0;
  if (!qword_2802F98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98F0);
  }

  return result;
}

unint64_t sub_2691BCFC8()
{
  result = qword_2802F98F8;
  if (!qword_2802F98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F98F8);
  }

  return result;
}

unint64_t sub_2691BD020()
{
  result = qword_2802F9900;
  if (!qword_2802F9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9900);
  }

  return result;
}

unint64_t sub_2691BD078()
{
  result = qword_2802F9908;
  if (!qword_2802F9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9908);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return sub_2691E16B4();
}

uint64_t type metadata accessor for SystemControlCATPatternsExecutor(uint64_t a1)
{
  result = qword_2802F9910;
  if (!qword_2802F9910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691BD1D8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 112) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2691BD1F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 112);
  v3 = sub_2691E1354();
  sub_2691B8078(v1 + 16, v0 + 16);
  *(v0 + 72) = sub_2691E1344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  v5 = OUTLINED_FUNCTION_1_1(v4, xmmword_2691E2B80);
  v5[4].n128_u64[1] = v3;
  v5[5].n128_u64[0] = 0xD000000000000017;
  v5[5].n128_u64[1] = 0x80000002691E46A0;
  v5[7].n128_u64[1] = MEMORY[0x277D839B0];
  v5[6].n128_u8[0] = v2;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2691BD36C;

  return v8(0xD000000000000013, 0x80000002691E46C0, v4);
}

uint64_t sub_2691BD36C()
{
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691BD4A0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 112) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2691BD4B8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 112);
  v3 = sub_2691E1354();
  sub_2691B8078(v1 + 16, v0 + 16);
  *(v0 + 72) = sub_2691E1344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  v5 = OUTLINED_FUNCTION_1_1(v4, xmmword_2691E2B80);
  v5[5].n128_u64[1] = 0x80000002691E46A0;
  v5[7].n128_u64[1] = MEMORY[0x277D839B0];
  v5[6].n128_u8[0] = v2;
  v8 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v4[4].n128_u64[1] = v3;
  v4[5].n128_u64[0] = 0xD000000000000017;

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2691BD62C;

  return v8(0xD00000000000001CLL, 0x80000002691E46E0, v4);
}

uint64_t sub_2691BD62C()
{
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {
    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_2691BD760()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_2691BD7D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2691BD83C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_2691BD854()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9920, &qword_2691E2C40);
  v2 = swift_allocObject();
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x80000002691E46A0;
  *(v2 + 72) = MEMORY[0x277D839B0];
  v3 = MEMORY[0x277D55BE8];
  *(v2 + 48) = v1;
  v6 = (v3 + *v3);
  *(v0 + 24) = v2;
  *(v2 + 16) = xmmword_2691E2110;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2691BD984;

  return v6(0xD000000000000025, 0x80000002691E4670, v2);
}

uint64_t sub_2691BD984()
{
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_2_2();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {

    v9 = *(v6 + 8);

    return v9(v1);
  }
}

uint64_t sub_2691BDAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2691BDB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2691E1374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2691E12A4();
  (*(v6 + 8))(a2, v5);
  sub_2691BAD14(a1);
  return v11;
}

__n128 *OUTLINED_FUNCTION_1_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x7453656369766564;
  result[2].n128_u64[1] = 0xEB00000000657461;
  result[3].n128_u64[0] = v2;
  return result;
}

uint64_t type metadata accessor for SystemQueryCATs(uint64_t a1)
{
  result = qword_2802F9928;
  if (!qword_2802F9928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691BDE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2691E1374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2691E12A4();
  (*(v6 + 8))(a2, v5);
  sub_2691BAD14(a1);
  return v11;
}

uint64_t SystemCommandsFlowProvider.__allocating_init(featureFlags:sharedObjects:)(uint64_t a1, const void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  memcpy((v4 + 24), a2, 0x78uLL);
  return v4;
}

uint64_t SystemCommandsFlowProvider.init(featureFlags:sharedObjects:)(uint64_t a1, const void *a2)
{
  *(v2 + 16) = a1;
  memcpy((v2 + 24), a2, 0x78uLL);
  return v2;
}

uint64_t SystemCommandsFlowProvider.makeFlowSearchResult(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for SystemCommandsIntent(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_47();
  v74 = v5 - v4;
  v6 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v78 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v13;
  v14 = sub_2691E0F24();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  v70 = (v18 - v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v66 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - v24;
  sub_2691E0EE4();
  OUTLINED_FUNCTION_2();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_3();
  v73 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v66 - v32;
  v34 = *(v27 + 16);
  v75 = a1;
  v35 = a1;
  v37 = v36;
  v72 = v34;
  v34(&v66 - v32, v35, v36);
  if ((*(v27 + 88))(v33, v37) == *MEMORY[0x277D5C160])
  {
    (*(v27 + 96))(v33, v37);
    (*(v16 + 32))(v25, v33, v14);
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v38 = __swift_project_value_buffer(v6, qword_2802FBA28);
    v39 = v78;
    v40 = v76;
    (*(v78 + 16))(v76, v38, v6);
    v71 = v6;
    v41 = *(v16 + 16);
    v69 = v25;
    v41(v23, v25, v14);
    v42 = sub_2691E1384();
    v68 = sub_2691E1524();
    if (os_log_type_enabled(v42, v68))
    {
      v43 = swift_slowAlloc();
      v67 = v37;
      v44 = v43;
      v66 = swift_slowAlloc();
      v80 = v66;
      *v44 = 136315138;
      v41(v70, v23, v14);
      v70 = sub_2691E13E4();
      v46 = v45;
      v47 = *(v16 + 8);
      v48 = OUTLINED_FUNCTION_9_0();
      v47(v48);
      v49 = sub_2691B98CC(v70, v46, &v80);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_2691B1000, v42, v68, "SystemCommandsFlowProvider makeFlow | uso parse: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      OUTLINED_FUNCTION_42();
      v37 = v67;
      OUTLINED_FUNCTION_42();

      v50 = v47;
      (*(v39 + 8))(v76, v71);
    }

    else
    {

      v50 = *(v16 + 8);
      v62 = OUTLINED_FUNCTION_9_0();
      v50(v62);
      (*(v39 + 8))(v40, v71);
    }

    v63 = v73;
    v72(v73, v75, v37);
    v64 = v74;
    sub_2691C4820(v63);
    sub_2691BE6B0(v64, v77);
    sub_2691BF15C(v64);
    return (v50)(v69, v14);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v51 = __swift_project_value_buffer(v6, qword_2802FBA28);
    v52 = v78;
    (*(v78 + 16))(v11, v51, v6);
    v53 = sub_2691E1384();
    v54 = sub_2691E1524();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v37;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v79 = v55;
      v80 = v57;
      *v56 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9938, &qword_2691E2CB0);
      v58 = sub_2691E13E4();
      v60 = sub_2691B98CC(v58, v59, &v80);
      v71 = v6;
      v61 = v60;

      *(v56 + 4) = v61;
      _os_log_impl(&dword_2691B1000, v53, v54, "SystemCommandsFlowProvider makeFlow | unable to make flow with parse: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      OUTLINED_FUNCTION_42();
      v37 = v55;
      OUTLINED_FUNCTION_42();

      (*(v78 + 8))(v11, v71);
    }

    else
    {

      (*(v52 + 8))(v11, v6);
    }

    sub_2691E0B74();
    return (*(v27 + 8))(v33, v37);
  }
}

uint64_t sub_2691BE6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SystemCommandsIntent(0);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_3();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v18 = v17 - v16;
  sub_2691C5264();
  if (v19)
  {
    v20 = type metadata accessor for SCTakePhotoFlow();
    v21 = OUTLINED_FUNCTION_6_1(v20);
    *(v21 + 16) = 0;
LABEL_8:
    v74[0] = v21;
    v27 = sub_2691BF2E0(&qword_2802F9998, type metadata accessor for SCTakePhotoFlow, &protocol conformance descriptor for SCTakePhotoFlow);
    OUTLINED_FUNCTION_5_1(v27);

LABEL_9:
    sub_2691E0B84();
  }

  sub_2691C5270();
  if (v22)
  {
    v23 = type metadata accessor for SCTakePhotoFlow();
    v21 = OUTLINED_FUNCTION_6_1(v23);
    v24 = 1;
LABEL_7:
    *(v21 + 16) = v24;
    goto LABEL_8;
  }

  sub_2691C568C();
  if (v25)
  {
    v26 = type metadata accessor for SCTakePhotoFlow();
    v21 = OUTLINED_FUNCTION_6_1(v26);
    v24 = 2;
    goto LABEL_7;
  }

  v72 = a2;
  v71 = *(v2 + 16);
  v29 = sub_2691CBBBC();
  sub_2691C4C28();
  if (v29)
  {
    if (v30)
    {
      v32 = sub_2691C5698();
      type metadata accessor for SCStartScreenRecordingFlow();
      swift_allocObject();
      v74[0] = SCStartScreenRecordingFlow.init(confirmationRequired:)(v32);
      v33 = sub_2691BF2E0(&qword_2802F9990, type metadata accessor for SCStartScreenRecordingFlow, &protocol conformance descriptor for SCStartScreenRecordingFlow);
      OUTLINED_FUNCTION_5_1(v33);

      goto LABEL_9;
    }

    sub_2691C58CC();
    if (v30)
    {
      type metadata accessor for SCStopScreenRecordingFlow();
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      v74[0] = v38;
      v35 = &qword_2802F9988;
      v36 = type metadata accessor for SCStopScreenRecordingFlow;
      v37 = &protocol conformance descriptor for SCStopScreenRecordingFlow;
      goto LABEL_27;
    }
  }

  else if (v30)
  {
    type metadata accessor for SCInformationalStartScreenRecordingFlow();
    swift_allocObject();
    started = SCInformationalStartScreenRecordingFlow.init()();
    OUTLINED_FUNCTION_3_1(started);
    v35 = &qword_2802F9980;
    v36 = type metadata accessor for SCInformationalStartScreenRecordingFlow;
    v37 = &protocol conformance descriptor for SCInformationalStartScreenRecordingFlow;
LABEL_27:
    sub_2691BF2E0(v35, v36, v37);
    sub_2691E0B24();
    goto LABEL_28;
  }

  sub_2691C4C54(v30, v31);
  if (v39)
  {
    v41 = [objc_opt_self() sharedService];
    type metadata accessor for SCRestartShutdownFlow();
    v42 = swift_allocObject();
    *(v42 + 64) = sub_2691BF29C();
    *(v42 + 72) = &off_2879D5780;
    *(v42 + 40) = v41;
    *(v42 + 16) = 0;
LABEL_22:
    *(v42 + 24) = sub_2691D84D4;
    *(v42 + 32) = 0;
    v74[0] = v42;
    v45 = sub_2691BF2E0(&qword_2802F9978, type metadata accessor for SCRestartShutdownFlow, &protocol conformance descriptor for SCRestartShutdownFlow);
    OUTLINED_FUNCTION_5_1(v45);
LABEL_28:

    sub_2691E0B84();
  }

  sub_2691C5C60(v39, v40);
  if (v43)
  {
    v44 = [objc_opt_self() sharedService];
    type metadata accessor for SCRestartShutdownFlow();
    v42 = swift_allocObject();
    *(v42 + 64) = sub_2691BF29C();
    *(v42 + 72) = &off_2879D5780;
    *(v42 + 40) = v44;
    *(v42 + 16) = 256;
    goto LABEL_22;
  }

  if (sub_2691C68B8())
  {
    OUTLINED_FUNCTION_8_0();
    type metadata accessor for SCResetFlow();
    swift_allocObject();
    v46 = SCResetFlow.init(sharedObjects:)(v74);
    OUTLINED_FUNCTION_3_1(v46);
    v35 = &qword_2802F9968;
    v36 = type metadata accessor for SCResetFlow;
    v37 = &protocol conformance descriptor for SCResetFlow;
    goto LABEL_27;
  }

  if (sub_2691C68D0())
  {
    OUTLINED_FUNCTION_8_0();
    type metadata accessor for SCSoftwareUpdateFlow();
    swift_allocObject();
    v47 = SCSoftwareUpdateFlow.init(sharedObjects:)(v74);
    OUTLINED_FUNCTION_3_1(v47);
    v35 = &qword_2802F97D8;
    v36 = type metadata accessor for SCSoftwareUpdateFlow;
    v37 = &protocol conformance descriptor for SCSoftwareUpdateFlow;
    goto LABEL_27;
  }

  if (sub_2691CBBB4())
  {
    if (sub_2691C699C())
    {
      type metadata accessor for SCScreenshotFlow();
      v48 = swift_allocObject();
      OUTLINED_FUNCTION_3_1(v48);
      v35 = &qword_2802F9960;
      v36 = type metadata accessor for SCScreenshotFlow;
      v37 = &protocol conformance descriptor for SCScreenshotFlow;
      goto LABEL_27;
    }

    if (sub_2691C6BD0())
    {
      type metadata accessor for SCLockFlow();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_3_1(v49);
      v35 = &qword_2802F9958;
      v36 = type metadata accessor for SCLockFlow;
      v37 = &protocol conformance descriptor for SCLockFlow;
      goto LABEL_27;
    }

    v50 = sub_2691C6F7C();
    if (v50)
    {
      if (sub_2691C6F88())
      {
        v52 = 3;
      }

      else if (sub_2691C6F94())
      {
        v52 = 0;
      }

      else if (sub_2691C70EC())
      {
        v52 = 1;
      }

      else
      {
        v52 = 2;
      }

      OUTLINED_FUNCTION_8_0();
      type metadata accessor for SCGuestModeFlow();
      swift_allocObject();
      v69 = sub_2691D71AC(v52, v74);
      OUTLINED_FUNCTION_3_1(v69);
      v35 = &qword_2802F9950;
      v36 = type metadata accessor for SCGuestModeFlow;
      v37 = &protocol conformance descriptor for SCGuestModeFlow;
      goto LABEL_27;
    }

    sub_2691C71A4(v50, v51);
    if (v53)
    {
      v53 = sub_2691BEFFC();
      if (v53)
      {
        OUTLINED_FUNCTION_8_0();
        sub_2691E0C14();
        type metadata accessor for SCUnlockFlow(0);
        swift_allocObject();
        v55 = sub_2691BF3A8(v73, v74);
        OUTLINED_FUNCTION_3_1(v55);
        v35 = &qword_2802F9948;
        v36 = type metadata accessor for SCUnlockFlow;
        v37 = &unk_2691E2D70;
        goto LABEL_27;
      }
    }

    sub_2691C76FC(v53, v54);
    v71 = v57;
    if (v56)
    {
      v58 = v56;
      OUTLINED_FUNCTION_8_0();
      type metadata accessor for SCSystemQueryFlow();
      swift_allocObject();
      v59 = SCSystemQueryFlow.init(systemCategory:sharedObjects:)(v71, v58, v74);
      OUTLINED_FUNCTION_3_1(v59);
      v35 = &qword_2802F9940;
      v36 = type metadata accessor for SCSystemQueryFlow;
      v37 = &protocol conformance descriptor for SCSystemQueryFlow;
      goto LABEL_27;
    }
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v60 = __swift_project_value_buffer(v12, qword_2802FBA28);
  (*(v14 + 16))(v18, v60, v12);
  sub_2691BF1DC(a1, v11);
  v61 = sub_2691E1384();
  v62 = sub_2691E1524();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v74[0] = v64;
    *v63 = 136315138;
    sub_2691BF1DC(v11, v8);
    v65 = sub_2691E13E4();
    v67 = v66;
    sub_2691BF15C(v11);
    v68 = sub_2691B98CC(v65, v67, v74);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_2691B1000, v61, v62, "SystemCommandsFlowProvider getSupportedFlowFor | no flow found for intent: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  else
  {

    sub_2691BF15C(v11);
  }

  (*(v14 + 8))(v18, v12);
  return sub_2691E0B74();
}

BOOL sub_2691BEFFC()
{
  v0 = sub_2691E0DE4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_47();
  v6 = v5 - v4;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2691E0DD4();
  v7 = sub_2691E0C24();
  (*(v2 + 8))(v6, v0);
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  return (v7 & 1) == 0;
}

uint64_t SystemCommandsFlowProvider.deinit()
{

  sub_2691B8A88(v0 + 24);
  return v0;
}

uint64_t SystemCommandsFlowProvider.__deallocating_deinit()
{

  sub_2691B8A88(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_2691BF15C(uint64_t a1)
{
  v2 = type metadata accessor for SystemCommandsIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2691BF1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SystemCommandsIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2691BF29C()
{
  result = qword_2802F9970;
  if (!qword_2802F9970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802F9970);
  }

  return result;
}

uint64_t sub_2691BF2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5_1(uint64_t a1)
{

  return sub_2691E0B24();
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_2691BF240(v0 + 24, v1 - 208);
}

uint64_t sub_2691BF3A8(__int128 *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_input;
  v6 = sub_2691E0EB4();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  sub_2691B8ADC(a1, v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_aceService);
  sub_2691B8078(a2 + 40, v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_deviceState);
  sub_2691B8078(a2 + 80, v8);
  sub_2691B8A88(a2);
  sub_2691B8ADC(v8, v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_outputPublisher);
  return v2;
}

uint64_t sub_2691BF454(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F99C8, &qword_2691E2DE8);
  v4 = OUTLINED_FUNCTION_37(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = sub_2691E0EB4();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_input;
  swift_beginAccess();
  sub_2691C0AD4(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_2691BF554(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCUnlockFlow(0);
  sub_2691C0A7C();
  return sub_2691E0B34();
}

uint64_t sub_2691BF5B4()
{
  OUTLINED_FUNCTION_34();
  v1[25] = v2;
  v1[26] = v0;
  v3 = sub_2691E0CA4();
  OUTLINED_FUNCTION_37(v3);
  v1[27] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0E64();
  v1[28] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[29] = v5;
  v1[30] = OUTLINED_FUNCTION_44();
  v6 = sub_2691E1394();
  v1[31] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[32] = v7;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v8 = sub_2691E1374();
  OUTLINED_FUNCTION_37(v8);
  v1[36] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_2691BF708()
{
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_35();
  if (sub_2691E0C54())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
LABEL_4:
    v2 = v0[26];
    type metadata accessor for SystemControlCATPatternsExecutor(0);
    sub_2691E1294();
    sub_2691B8078(v2 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_deviceState, (v0 + 12));
    sub_2691E1274();
    sub_2691C0B44((v0 + 12), &unk_2802F99D0, &qword_2691E2320);
    sub_2691E1284();

    sub_2691E1364();
    v0[37] = sub_2691E12C4();
    v3 = swift_task_alloc();
    v0[38] = v3;
    *v3 = v0;
    v3[1] = sub_2691BFA3C;

    return sub_2691BD83C(0);
  }

  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  OUTLINED_FUNCTION_35();
  v1 = sub_2691E0C44();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  if (v1)
  {
    goto LABEL_4;
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v5 = OUTLINED_FUNCTION_9_1();
  v6(v5);
  v7 = sub_2691E1384();
  v8 = sub_2691E1524();
  if (os_log_type_enabled(v7, v8))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v9, v10, "SCUnlockFlow execute | cannot unlock device on watchOS");
    OUTLINED_FUNCTION_42();
  }

  v11 = OUTLINED_FUNCTION_35();
  v12(v11);

  sub_2691E0E14();
  sub_2691E0A74();
  swift_allocObject();
  v0[22] = sub_2691E0A64();
  sub_2691E0D34();

  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_31();

  return v13();
}

uint64_t sub_2691BFA3C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  *(v2 + 312) = v1;
  *(v2 + 320) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2691BFB4C()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v0[31], qword_2802FBA28);
  v1 = OUTLINED_FUNCTION_9_1();
  v2(v1);
  v3 = sub_2691E1384();
  v4 = sub_2691E1534();
  if (os_log_type_enabled(v3, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_0(&dword_2691B1000, v5, v6, "SCUnlockFlow execute | capturing unlock request and throwing usupported dialog");
    OUTLINED_FUNCTION_42();
  }

  v7 = v0[39];
  v8 = v0[35];
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[29];
  v11 = v0[30];
  v13 = v0[26];
  v16 = v0[28];

  (*(v9 + 8))(v8, v10);
  sub_2691E0C84();
  sub_2691E0E24();
  sub_2691B8078(v13 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_outputPublisher, (v0 + 17));
  sub_2691E0DA4();
  swift_allocObject();
  sub_2691E0D94();
  sub_2691E0B04();
  swift_allocObject();
  v0[24] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v12 + 8))(v11, v16);
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_31();

  return v14();
}

uint64_t sub_2691BFDB4()
{
  v22 = v0;

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v1 = v0[40];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = __swift_project_value_buffer(v4, qword_2802FBA28);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  v7 = sub_2691E1544();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v0[23] = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v11 = sub_2691E13E4();
    v13 = sub_2691B98CC(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2691B1000, v6, v7, "SCUnlockFlow execute | error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();

    v14 = OUTLINED_FUNCTION_35();
    v15(v14);
  }

  else
  {

    v16 = OUTLINED_FUNCTION_35();
    v17(v16);
  }

  v18 = v0[40];
  sub_2691E0D54();

  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_31();

  return v19();
}

uint64_t sub_2691BFFF4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691C008C();
}

uint64_t sub_2691C008C()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691C0160()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_2691C0200;
  v2 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v2, v0 + 16);
}

uint64_t sub_2691C0200()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_2691C0B44(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691C0318()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v6 = sub_2691E0D84();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
  v7 = sub_2691E0F34();
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2691E0D14();
  sub_2691C0B44(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691C0B44(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v9();
}

uint64_t sub_2691C04B4()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_31();

  return v0();
}

uint64_t sub_2691C051C()
{
  sub_2691C0B44(v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_input, &qword_2802F99C8, &qword_2691E2DE8);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_aceService));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC25SiriSystemCommandsIntents12SCUnlockFlow_outputPublisher));
  return v0;
}

uint64_t sub_2691C0584()
{
  sub_2691C051C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SCUnlockFlow(uint64_t a1)
{
  result = qword_2802F99B0;
  if (!qword_2802F99B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2691C0630(uint64_t a1)
{
  sub_2691C06CC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2691C06CC(uint64_t a1)
{
  if (!qword_2802F99C0)
  {
    sub_2691E0EB4();
    v1 = sub_2691E1574();
    if (!v2)
    {
      atomic_store(v1, &qword_2802F99C0);
    }
  }
}

uint64_t sub_2691C074C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2691C07FC;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2691C07FC()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  OUTLINED_FUNCTION_20();
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2691C090C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return sub_2691BF5B4();
}

uint64_t sub_2691C09A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCUnlockFlow(0);

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_2691C09E4()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2691B7DC0;

  return sub_2691BFFF4(v2);
}

unint64_t sub_2691C0A7C()
{
  result = qword_2802F9948;
  if (!qword_2802F9948)
  {
    type metadata accessor for SCUnlockFlow(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9948);
  }

  return result;
}

uint64_t sub_2691C0AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F99C8, &qword_2691E2DE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691C0B44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_1()
{
}

void OUTLINED_FUNCTION_12_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t SCResetFlow.__allocating_init(sharedObjects:)(uint64_t a1)
{
  v2 = swift_allocObject();
  SCResetFlow.init(sharedObjects:)(a1);
  return v2;
}

uint64_t SCResetFlow.init(sharedObjects:)(uint64_t a1)
{
  sub_2691B8078(a1 + 40, v1 + 16);
  sub_2691B8078(a1 + 80, v4);
  sub_2691B8A88(a1);
  sub_2691B8ADC(v4, v1 + 56);
  return v1;
}

uint64_t SCResetFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[14] = v2;
  v1[15] = v0;
  sub_2691E0CA4();
  v1[16] = swift_task_alloc();
  v3 = sub_2691E0E64();
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v4 = sub_2691E1394();
  v1[20] = v4;
  v1[21] = *(v4 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_2691E1374();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2691C0E18);
}

uint64_t sub_2691C0E18()
{
  v1 = v0[15];
  type metadata accessor for SystemControlCATPatternsExecutor(0);
  sub_2691E1294();
  sub_2691B8078(v1 + 16, (v0 + 2));
  sub_2691E1274();
  sub_2691B80DC((v0 + 2));
  sub_2691E1284();

  sub_2691E1364();
  v2 = sub_2691E12C4();
  v0[25] = v2;

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_2691C0F50;
  v4 = v0[15];

  return sub_2691BD1D8(0, v2, v4);
}

uint64_t sub_2691C0F50()
{
  OUTLINED_FUNCTION_34();
  v2 = *v1;
  *(v2 + 216) = v3;
  *(v2 + 224) = v0;

  if (v0)
  {
    v4 = sub_2691C12E8;
  }

  else
  {

    v4 = sub_2691C1068;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_2691C1068()
{
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  v4 = __swift_project_value_buffer(v2, qword_2802FBA28);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2691E1384();
  v6 = sub_2691E1534();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2691B1000, v5, v6, "SCResetFlow execute | reset pattern successfully executed", v7, 2u);
    MEMORY[0x26D6335B0](v7, -1, -1);
  }

  v8 = v0[27];
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[15];
  v17 = v0[17];

  (*(v10 + 8))(v9, v11);
  sub_2691E0C84();
  sub_2691E0E24();
  sub_2691B8078(v14 + 56, (v0 + 7));
  sub_2691E0DA4();
  swift_allocObject();
  sub_2691E0D94();
  sub_2691E0B04();
  swift_allocObject();
  v0[13] = sub_2691E0AF4();
  sub_2691E0B14();

  sub_2691E0D44();

  (*(v13 + 8))(v12, v17);
  OUTLINED_FUNCTION_2_0();

  v15 = v0[1];

  return v15();
}

uint64_t sub_2691C12E8()
{
  v24 = v0;

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v1 = v0[28];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  v5 = __swift_project_value_buffer(v4, qword_2802FBA28);
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x26D633490](v1);
  v6 = sub_2691E1384();
  v7 = sub_2691E1544();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v0[12] = v8;
    MEMORY[0x26D633490](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F97D0, qword_2691E2360);
    v14 = sub_2691E13E4();
    v16 = sub_2691B98CC(v14, v15, &v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2691B1000, v6, v7, "SCResetFlow execute | error: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x26D6335B0](v13, -1, -1);
    MEMORY[0x26D6335B0](v12, -1, -1);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v18 = v0[21];
    v17 = v0[22];
    v19 = v0[20];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v0[28];
  sub_2691E0D54();

  OUTLINED_FUNCTION_2_0();

  v21 = v0[1];

  return v21();
}

uint64_t SCResetFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCResetFlow();
  sub_2691C171C();
  return sub_2691E0B34();
}

uint64_t SCResetFlow.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t SCResetFlow.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_2691C1624()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B96D0;

  return SCResetFlow.execute()();
}

uint64_t sub_2691C16C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SCResetFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

unint64_t sub_2691C171C()
{
  result = qword_2802F9968;
  if (!qword_2802F9968)
  {
    type metadata accessor for SCResetFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9968);
  }

  return result;
}

uint64_t SCInformationalStartScreenRecordingFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  SCInformationalStartScreenRecordingFlow.init()();
  return v0;
}

uint64_t SCInformationalStartScreenRecordingFlow.init()()
{
  v1 = sub_2691E1374();
  v2 = OUTLINED_FUNCTION_37(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7_0();
  *(v0 + 16) = 0;
  type metadata accessor for ScreenRecordingCATs(0);
  sub_2691E1364();
  sub_2691E1294();
  sub_2691E0EF4();
  sub_2691E1274();
  sub_2691C0B44(v4, &unk_2802F99D0, &qword_2691E2320);
  sub_2691E1284();

  *(v0 + 24) = sub_2691E12C4();
  return v0;
}

uint64_t SCInformationalStartScreenRecordingFlow.execute()()
{
  OUTLINED_FUNCTION_34();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_2691E1394();
  v1[11] = v3;
  OUTLINED_FUNCTION_1(v3);
  v1[12] = v4;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691C1954()
{
  v36 = v0;
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_35();
  v1 = sub_2691E0C64();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1)
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    __swift_project_value_buffer(*(v0 + 88), qword_2802FBA28);
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    v4 = sub_2691E1384();
    v5 = sub_2691E1524();
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v6, v7, "SCInformationalStartScreenRecordingFlow execute | cannot screen record on watchOS");
      OUTLINED_FUNCTION_42();
    }

    v8 = *(v0 + 80);

    v9 = OUTLINED_FUNCTION_35();
    v10(v9);
    *(v8 + 16) = 2;

    sub_2691E0E14();
    sub_2691E0A74();
    swift_allocObject();
    *(v0 + 64) = sub_2691E0A64();
LABEL_18:
    sub_2691E0D34();

    goto LABEL_19;
  }

  v11 = *(v0 + 80);
  if (!*(v11 + 16))
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    __swift_project_value_buffer(*(v0 + 88), qword_2802FBA28);
    v25 = OUTLINED_FUNCTION_9_1();
    v26(v25);
    v27 = sub_2691E1384();
    v28 = sub_2691E1524();
    if (os_log_type_enabled(v27, v28))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_12_0(&dword_2691B1000, v29, v30, "SCInformationalStartScreenRecordingFlow execute");
      OUTLINED_FUNCTION_42();
    }

    v31 = OUTLINED_FUNCTION_35();
    v32(v31);

    sub_2691E0E14();
    sub_2691E0A74();
    swift_allocObject();
    *(v0 + 56) = sub_2691E0A64();
    goto LABEL_18;
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 96);
  v15 = __swift_project_value_buffer(v13, qword_2802FBA28);
  (*(v14 + 16))(v12, v15, v13);

  v16 = sub_2691E1384();
  v17 = sub_2691E1524();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v35[0] = v19;
    *v18 = 136315138;
    *(v0 + 128) = *(v11 + 16);
    v20 = sub_2691E13E4();
    v22 = sub_2691B98CC(v20, v21, v35);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2691B1000, v16, v17, "SCInformationalStartScreenRecordingFlow execute | flow completed with state: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_42();
  }

  v23 = OUTLINED_FUNCTION_35();
  v24(v23);
  sub_2691E0D54();
LABEL_19:

  OUTLINED_FUNCTION_31();

  return v33();
}

uint64_t sub_2691C1DCC(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B8324;

  return sub_2691C277C();
}

uint64_t sub_2691C1E64(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2691B7DC0;

  return sub_2691C1F5C();
}

uint64_t SCInformationalStartScreenRecordingFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SCInformationalStartScreenRecordingFlow();
  sub_2691C2E0C();
  return sub_2691E0B34();
}

uint64_t sub_2691C1F5C()
{
  OUTLINED_FUNCTION_34();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v3);
  v1[19] = OUTLINED_FUNCTION_44();
  v4 = sub_2691E0DB4();
  v1[20] = v4;
  OUTLINED_FUNCTION_1(v4);
  v1[21] = v5;
  v1[22] = OUTLINED_FUNCTION_44();
  v6 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691C202C()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 184) = v1;
  *v1 = v2;
  v1[1] = sub_2691C20C0;

  return sub_2691D7F8C();
}

uint64_t sub_2691C20C0()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 192) = v0;

  if (v0)
  {
    v5 = sub_2691C235C;
  }

  else
  {
    v5 = sub_2691C21C4;
  }

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691C21C4()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_2691E0C34();
  sub_2691C23C4();
  v6 = sub_2691E0D84();
  v7 = OUTLINED_FUNCTION_16_0(v6);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2691E0CF4();

  sub_2691C0B44(v0 + 96, &unk_2802F99F0, &unk_2691E3010);
  sub_2691C0B44(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  OUTLINED_FUNCTION_31();

  return v9();
}

uint64_t sub_2691C235C()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_31();

  return v0();
}

uint64_t sub_2691C23C4()
{
  v1 = sub_2691E1394();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  v4 = OUTLINED_FUNCTION_37(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F9A00, qword_2691E3020);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  sub_2691D7EBC();
  v10 = sub_2691E1744();
  v12 = v11;
  sub_2691C0B44(v9, &unk_2802F9A00, qword_2691E3020);
  if (v12)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D47AC8]) init];
    sub_2691E0994();
    v14 = sub_2691E09A4();
    v15 = 0;
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) != 1)
    {
      v15 = sub_2691E0984();
      (*(*(v14 - 8) + 8))(v6, v14);
    }

    [v13 setRef_];

    v16 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
    sub_2691C2FBC(v10, v12, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9460, &unk_2691E2330);
    v17 = swift_allocObject();
    v25 = xmmword_2691E2120;
    *(v17 + 16) = xmmword_2691E2120;
    *(v17 + 32) = v13;
    v18 = v13;
    sub_2691C3020(v17, v16);
    v19 = swift_allocObject();
    *(v19 + 16) = v25;
    *(v19 + 32) = v16;
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v20 = __swift_project_value_buffer(v1, qword_2802FBA28);
    (*(v2 + 16))(v0, v20, v1);
    v21 = sub_2691E1384();
    v22 = sub_2691E1544();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2691B1000, v21, v22, "Failed to localize button label.", v23, 2u);
      OUTLINED_FUNCTION_42();
    }

    (*(v2 + 8))(v0, v1);
    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_2691C277C()
{
  OUTLINED_FUNCTION_34();
  v0[22] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9468, &unk_2691E3650);
  OUTLINED_FUNCTION_37(v2);
  v0[23] = OUTLINED_FUNCTION_44();
  v3 = sub_2691E0DB4();
  v0[24] = v3;
  OUTLINED_FUNCTION_1(v3);
  v0[25] = v4;
  v0[26] = OUTLINED_FUNCTION_44();
  v5 = OUTLINED_FUNCTION_5_2();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_2691C284C()
{
  OUTLINED_FUNCTION_34();
  sub_2691E0EF4();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 216) = v1;
  *v1 = v2;
  v1[1] = sub_2691C28E8;
  v3 = *(v0 + 208);

  return MEMORY[0x2821BB3C8](v3, v0 + 16);
}

uint64_t sub_2691C28E8()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v3 + 224) = v0;

  sub_2691C0B44(v3 + 16, &unk_2802F99D0, &qword_2691E2320);
  if (v0)
  {
    v6 = sub_2691C04B4;
  }

  else
  {
    v6 = sub_2691C2A04;
  }

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2691C2A04()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_2691E0EF4();
  sub_2691E0EF4();
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  sub_2691E0C34();
  v6 = sub_2691E0D84();
  v7 = OUTLINED_FUNCTION_16_0(v6);
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  *(v0 + 136) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2691E0D14();
  sub_2691C0B44(v0 + 136, &unk_2802F99F0, &unk_2691E3010);
  sub_2691C0B44(v3, &qword_2802F9468, &unk_2691E3650);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  (*(v2 + 8))(v1, v4);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));

  OUTLINED_FUNCTION_31();

  return v9();
}

uint64_t SCInformationalStartScreenRecordingFlow.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2691C2C04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691B7DC0;

  return SCInformationalStartScreenRecordingFlow.execute()();
}

uint64_t sub_2691C2CA0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SCInformationalStartScreenRecordingFlow();

  return MEMORY[0x2821BA658](started, a2);
}

uint64_t sub_2691C2CD8()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691C1E64(v3);
}

uint64_t sub_2691C2D60()
{
  OUTLINED_FUNCTION_34();
  swift_task_alloc();
  OUTLINED_FUNCTION_13_0();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_1(v1);

  return sub_2691C1DCC(v3);
}

unint64_t sub_2691C2E0C()
{
  result = qword_2802F9980;
  if (!qword_2802F9980)
  {
    type metadata accessor for SCInformationalStartScreenRecordingFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F9980);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SCInformationalStartScreenRecordingFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2691C2F2CLL);
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

unint64_t sub_2691C2F68()
{
  result = qword_2802F99E0;
  if (!qword_2802F99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F99E0);
  }

  return result;
}

void sub_2691C2FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2691E13C4();

  [a3 setText_];
}

void sub_2691C3020(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F9A10, qword_2691E3038);
  v3 = sub_2691E1484();

  [a2 setCommands_];
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_2691E0F34();
}

uint64_t type metadata accessor for ScreenRecordingCATsSimple(uint64_t a1)
{
  result = qword_2802F9A20;
  if (!qword_2802F9A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691C31AC()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2691C3270;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000002ALL, 0x80000002691E4900, v2);
}

uint64_t sub_2691C3270(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2691C33C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2691E1374();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2691BACA4(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_2691E1304();
  (*(v7 + 8))(a2, v3);
  sub_2691BAD14(a1);
  return v13;
}

uint64_t sub_2691C3520(uint64_t a1, uint64_t a2)
{
  sub_2691E1374();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_2691E1314();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2691C3620()
{
  v0 = sub_2691E1334();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t type metadata accessor for SystemControlCATs(uint64_t a1)
{
  result = qword_2802F9A30;
  if (!qword_2802F9A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691C3750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2691E1374();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9810, &unk_2691E2660);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2691BACA4(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2691E12A4();
  (*(v6 + 8))(a2, v5);
  sub_2691BAD14(a1);
  return v11;
}

uint64_t sub_2691C38C4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v46 = v2;
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_47();
  v45 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_2691E0F64();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_47();
  v14 = v13 - v12;
  v15 = sub_2691E0F24();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_47();
  v21 = v20 - v19;
  v22 = sub_2691E0EE4();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_47();
  v28 = v27 - v26;
  (*(v24 + 16))(v27 - v26, v48, v22);
  if ((*(v24 + 88))(v28, v22) == *MEMORY[0x277D5C160])
  {
    (*(v24 + 96))(v28, v22);
    (*(v17 + 32))(v21, v28, v15);
    sub_2691E0F14();
    v29 = sub_2691E0F54();
    (*(v10 + 8))(v14, v8);
    sub_2691C46AC(v29, v7);

    v30 = sub_2691E0FF4();
    if (__swift_getEnumTagSinglePayload(v7, 1, v30) == 1)
    {
      v48 = v17;
      sub_2691C4328(v7);
      v31 = v49;
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v32 = v47;
      v33 = __swift_project_value_buffer(v47, qword_2802FBA28);
      v35 = v45;
      v34 = v46;
      (*(v46 + 16))(v45, v33, v32);
      v36 = sub_2691E1384();
      v37 = sub_2691E1554();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = OUTLINED_FUNCTION_51();
        *v38 = 0;
        _os_log_impl(&dword_2691B1000, v36, v37, "Parse-Extension#firstUserDialogAct No user dialog act found in userParse.", v38, 2u);
        OUTLINED_FUNCTION_42();
      }

      (*(v34 + 8))(v35, v32);
      (*(v48 + 8))(v21, v15);
      v39 = v31;
      v40 = 1;
    }

    else
    {
      (*(v17 + 8))(v21, v15);
      v43 = v49;
      (*(*(v30 - 8) + 32))(v49, v7, v30);
      v39 = v43;
      v40 = 0;
    }

    return __swift_storeEnumTagSinglePayload(v39, v40, 1, v30);
  }

  else
  {
    v41 = sub_2691E0FF4();
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v41);
    return (*(v24 + 8))(v28, v22);
  }
}

uint64_t sub_2691C3D84()
{
  sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v44 = v2;
  v45 = v1;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v41 - v10;
  v12 = sub_2691E0FF4();
  OUTLINED_FUNCTION_2();
  v43 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_47();
  v42 = v16 - v15;
  v17 = sub_2691E0EE4();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_47();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21, v0, v17);
  v24 = 0;
  if ((*(v19 + 88))(v23, v17) == *MEMORY[0x277D5C160])
  {
    sub_2691C38C4(v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_2691C4328(v11);
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v25 = v45;
      v26 = __swift_project_value_buffer(v45, qword_2802FBA28);
      v27 = v44;
      (*(v44 + 16))(v5, v26, v25);
      v28 = sub_2691E1384();
      v29 = sub_2691E1554();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_51();
        *v30 = 0;
        _os_log_impl(&dword_2691B1000, v28, v29, "Parse-Extension#firstUsoTask No user dialog act found in userParse.", v30, 2u);
        OUTLINED_FUNCTION_42();
      }

      (*(v27 + 8))(v5, v25);
LABEL_9:
      v24 = 0;
      goto LABEL_10;
    }

    (*(v43 + 32))(v42, v11, v12);
    v32 = sub_2691E1054();
    v33 = sub_2691B8328(v32);
    v35 = v44;
    v34 = v45;
    if (!v33)
    {

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v36 = __swift_project_value_buffer(v34, qword_2802FBA28);
      (*(v35 + 16))(v8, v36, v34);
      v37 = sub_2691E1384();
      v38 = sub_2691E1554();
      if (os_log_type_enabled(v37, v38))
      {
        *OUTLINED_FUNCTION_51() = 0;
        OUTLINED_FUNCTION_3_2(&dword_2691B1000, v39, v40, "Parse-Extension#firstUsoTask No tasks found in input");
        OUTLINED_FUNCTION_42();
      }

      (*(v35 + 8))(v8, v34);
      (*(v43 + 8))(v42, v12);
      goto LABEL_9;
    }

    sub_2691B832C();
    if ((v32 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D632F20](0, v32);
    }

    else
    {
      v24 = *(v32 + 32);
    }

    (*(v43 + 8))(v42, v12);
  }

LABEL_10:
  (*(v19 + 8))(v23, v17);
  return v24;
}

uint64_t sub_2691C4328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2691C43C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_2691C449C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A40, qword_2691E30F0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SystemCommandsIntent(uint64_t a1)
{
  result = qword_2802F9A48;
  if (!qword_2802F9A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2691C459C(uint64_t a1)
{
  sub_2691C4658(319, &qword_2802F9A58, MEMORY[0x277D5DB80]);
  if (v1 <= 0x3F)
  {
    sub_2691C4658(319, &qword_2802F9A60, MEMORY[0x277D5F450]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2691C4658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2691E1574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2691C46C4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

BOOL sub_2691C4770(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_2691C4820(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  v3 = v2;
  v5 = v4;
  v6 = sub_2691E0EE4();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_3();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_43_0();
  v14 = sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_3();
  v57 = (v18 - v19);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  OUTLINED_FUNCTION_16_1(v14, qword_2802FBA28);
  v23 = v16[2];
  v55 = v24;
  v56 = v16 + 2;
  v54 = v23;
  (v23)(v22);
  v59 = v16;
  v60 = v3;
  v25 = *(v8 + 16);
  v25(v1, v3, v6);
  v26 = sub_2691E1384();
  v58 = v14;
  v27 = v26;
  v28 = sub_2691E1524();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_72();
    v53 = v5;
    v30 = v29;
    v52 = swift_slowAlloc();
    v61 = v52;
    *v30 = 136315138;
    v25(v12, v1, v6);
    v31 = sub_2691E13E4();
    v33 = v32;
    v34 = OUTLINED_FUNCTION_50_0();
    v35(v34);
    v36 = sub_2691B98CC(v31, v33, &v61);

    *(v30 + 4) = v36;
    _os_log_impl(&dword_2691B1000, v27, v28, "SystemCommandsIntent init | parse: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    OUTLINED_FUNCTION_42();
    v5 = v53;
    OUTLINED_FUNCTION_42();
  }

  else
  {

    v39 = OUTLINED_FUNCTION_50_0();
    v40(v39);
  }

  v37 = v58;
  v38 = *(v59 + 1);
  v38(v22, v58);
  v41 = v60;
  sub_2691C38C4(v5);
  v42 = sub_2691C3D84();
  if (v42)
  {
    v43 = v42;
    v1(v41, v6);
  }

  else
  {
    v54(v57, v55, v37);
    v44 = sub_2691E1384();
    v45 = sub_2691E1534();
    if (OUTLINED_FUNCTION_19(v45))
    {
      v46 = OUTLINED_FUNCTION_51();
      v59 = v1;
      v47 = v46;
      *v46 = 0;
      OUTLINED_FUNCTION_49_0();
      _os_log_impl(v48, v49, v50, v51, v47, 2u);
      v1 = v59;
      OUTLINED_FUNCTION_42();
    }

    v1(v41, v6);
    v38(v57, v37);
    v43 = 0;
  }

  *(v5 + *(type metadata accessor for SystemCommandsIntent(0) + 20)) = v43;
  OUTLINED_FUNCTION_24_0();
}

void sub_2691C4C54(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  sub_2691E1194();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A80, &qword_2691E3148);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A88, &qword_2691E3150);
  v13 = OUTLINED_FUNCTION_37(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  type metadata accessor for SystemCommandsIntent(0);
  sub_2691E1134();
  if (!v34)
  {
    sub_2691CAE08(v33, &qword_2802F9A70, &qword_2691E3140);
LABEL_5:
    sub_2691E1134();
    if (v34)
    {
      sub_2691E1154();
      OUTLINED_FUNCTION_5_3();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_25;
      }

      sub_2691E11F4();
      if (!v33[0])
      {

        goto LABEL_25;
      }

      v32[0] = v6;

      sub_2691E11F4();

      if (v33[0] && (v18 = sub_2691E10E4(), , v18))
      {
        sub_2691E1184();
      }

      else
      {
        OUTLINED_FUNCTION_15_0(v17);
      }

      v22 = v32[0];
      (*(v32[0] + 104))(v4, *MEMORY[0x277D5EE50], v2);
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
      v23 = *(v8 + 48);
      sub_2691C824C(v17, v11);
      sub_2691C824C(v4, &v11[v23]);
      OUTLINED_FUNCTION_6_2(v11);
      if (v24)
      {

        OUTLINED_FUNCTION_52_0(v4);
        OUTLINED_FUNCTION_52_0(v17);
        OUTLINED_FUNCTION_6_2(&v11[v23]);
        if (v24)
        {
          sub_2691CAE08(v11, &qword_2802F9A88, &qword_2691E3150);
          goto LABEL_25;
        }
      }

      else
      {
        sub_2691C824C(v11, v3);
        OUTLINED_FUNCTION_6_2(&v11[v23]);
        if (!v24)
        {
          v27 = OUTLINED_FUNCTION_28_0();
          v28(v27);
          sub_2691C82BC(&qword_2802F9A90, MEMORY[0x277D5EE58], MEMORY[0x277D5EE60]);
          OUTLINED_FUNCTION_38_0();
          sub_2691E13B4();

          v29 = *(v22 + 8);
          v30 = OUTLINED_FUNCTION_37_0();
          v29(v30);
          sub_2691CAE08(v4, &qword_2802F9A88, &qword_2691E3150);
          sub_2691CAE08(v17, &qword_2802F9A88, &qword_2691E3150);
          v31 = OUTLINED_FUNCTION_29_0();
          v29(v31);
          sub_2691CAE08(v11, &qword_2802F9A88, &qword_2691E3150);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_52_0(v4);
        OUTLINED_FUNCTION_52_0(v17);
        v25 = OUTLINED_FUNCTION_29_0();
        v26(v25);
      }

      v19 = &qword_2802F9A80;
      v20 = &qword_2691E3148;
      v21 = v11;
    }

    else
    {
      v19 = &qword_2802F9A70;
      v20 = &qword_2691E3140;
      v21 = v33;
    }

    sub_2691CAE08(v21, v19, v20);
    goto LABEL_25;
  }

  sub_2691E11E4();
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_25:
  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691C50E4(char a1, char a2)
{
  v2 = "CONFIRMATION_CANCEL";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000013;
  }

  if (v3)
  {
    v5 = &unk_2691E4140;
  }

  else
  {
    v5 = "CONFIRMATION_CANCEL";
  }

  if (a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if ((a2 & 1) == 0)
  {
    v2 = &unk_2691E4140;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2691E16D4();
  }

  return v8 & 1;
}

uint64_t sub_2691C5184()
{
  sub_2691E11D4();
  sub_2691C82BC(&qword_2802F9A78, MEMORY[0x277D5F0F0], MEMORY[0x277D5F0F8]);
  sub_2691E1474();
  sub_2691E1474();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2691E16D4();
  }

  return v1 & 1;
}

void sub_2691C527C(uint64_t a1)
{
  OUTLINED_FUNCTION_26_0();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  v8 = OUTLINED_FUNCTION_37(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  sub_2691E11D4();
  OUTLINED_FUNCTION_1_2();
  v35 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_44_0();
  v17 = type metadata accessor for SystemCommandsIntent(v16);
  OUTLINED_FUNCTION_51_0(v17);
  if (!v37)
  {
    sub_2691CAE08(v36, &qword_2802F9A70, &qword_2691E3140);
    goto LABEL_11;
  }

  sub_2691E1064();
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v34 = v6;

  sub_2691E1144();

  if (!v36[0] || (v18 = sub_2691E1164(), , !v18))
  {

    OUTLINED_FUNCTION_15_0(v11);
    goto LABEL_10;
  }

  sub_2691E11C4();

  OUTLINED_FUNCTION_6_2(v11);
  if (v19)
  {

LABEL_10:
    sub_2691CAE08(v11, &qword_2802F9A68, &qword_2691E3138);
    v6 = v34;
    goto LABEL_11;
  }

  v24 = v35;
  (*(v35 + 32))(v4, v11, v1);
  v25 = v34;
  (*(v24 + 104))(v3, *v34, v1);
  v26 = sub_2691C5184();
  v6 = v25;

  v27 = *(v24 + 8);
  v27(v3, v1);
  v27(v4, v1);
  if ((v26 & 1) == 0)
  {
LABEL_11:
    sub_2691E1134();
    if (v37)
    {
      sub_2691E1224();
      OUTLINED_FUNCTION_5_3();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_22;
      }

      sub_2691E1144();

      if (v36[0] && (v20 = sub_2691E1164(), , v20))
      {
        sub_2691E11C4();

        OUTLINED_FUNCTION_6_2(v2);
        if (!v19)
        {
          v28 = v35;
          v29 = OUTLINED_FUNCTION_38_0();
          v30(v29);
          (*(v28 + 104))(v3, *v6, v1);
          sub_2691C5184();

          v31 = *(v28 + 8);
          v31(v3, v1);
          v32 = OUTLINED_FUNCTION_29_0();
          (v31)(v32);
          goto LABEL_22;
        }
      }

      else
      {

        OUTLINED_FUNCTION_15_0(v2);
      }

      v21 = &qword_2802F9A68;
      v22 = &qword_2691E3138;
      v23 = v2;
    }

    else
    {
      v21 = &qword_2802F9A70;
      v22 = &qword_2691E3140;
      v23 = v36;
    }

    sub_2691CAE08(v23, v21, v22);
  }

LABEL_22:
  OUTLINED_FUNCTION_24_0();
}

BOOL sub_2691C5698()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  OUTLINED_FUNCTION_37(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11_0();
  sub_2691E11D4();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_0(v7);
  sub_2691E1134();
  if (!v21[3])
  {
    v9 = &qword_2802F9A70;
    v10 = &qword_2691E3140;
    v11 = v21;
LABEL_10:
    sub_2691CAE08(v11, v9, v10);
    return 1;
  }

  sub_2691E1064();
  if ((OUTLINED_FUNCTION_22_0() & 1) == 0)
  {
    return 1;
  }

  sub_2691E1144();

  if (!v21[0])
  {

    OUTLINED_FUNCTION_15_0(v0);
    goto LABEL_9;
  }

  sub_2691E1164();
  OUTLINED_FUNCTION_53_0();
  sub_2691E11C4();

  OUTLINED_FUNCTION_6_2(v0);
  if (v8)
  {

LABEL_9:
    v9 = &qword_2802F9A68;
    v10 = &qword_2691E3138;
    v11 = v0;
    goto LABEL_10;
  }

  v13 = OUTLINED_FUNCTION_14_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_28_0();
  v16(v15);
  OUTLINED_FUNCTION_38_0();
  v17 = sub_2691C5184();

  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_37_0();
  v18(v19);
  v20 = OUTLINED_FUNCTION_29_0();
  v18(v20);
  return (v17 & 1) == 0;
}

void sub_2691C58F8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  OUTLINED_FUNCTION_37(v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  sub_2691E11D4();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_51_0(v13);
  if (v30)
  {
    v6(0);
    OUTLINED_FUNCTION_5_3();
    if (swift_dynamicCast())
    {

      sub_2691E1214();

      if (v29[0] && (v14 = sub_2691E1124(), v16 = v15, , v16))
      {
        v17 = v14 == 0xD000000000000010 && v16 == 0x80000002691E4970;
        if (v17)
        {

          goto LABEL_23;
        }

        v18 = sub_2691E16D4();

        if (v18)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_2691CAE08(v29, &qword_2802F9A70, &qword_2691E3140);
  }

  sub_2691E1134();
  if (!v30)
  {
    v19 = &qword_2802F9A70;
    v20 = &qword_2691E3140;
    v21 = v29;
    goto LABEL_22;
  }

  v4(0);
  OUTLINED_FUNCTION_5_3();
  if (swift_dynamicCast())
  {

    sub_2691E1144();

    if (v29[0])
    {
      sub_2691E1164();
      OUTLINED_FUNCTION_53_0();
      sub_2691E11C4();

      OUTLINED_FUNCTION_6_2(v2);
      if (!v17)
      {
        v22 = OUTLINED_FUNCTION_14_0();
        v23(v22);
        v24 = OUTLINED_FUNCTION_28_0();
        v25(v24);
        OUTLINED_FUNCTION_38_0();
        sub_2691C5184();

        v26 = *(v10 + 8);
        v27 = OUTLINED_FUNCTION_37_0();
        v26(v27);
        v28 = OUTLINED_FUNCTION_29_0();
        v26(v28);
        goto LABEL_23;
      }
    }

    else
    {

      OUTLINED_FUNCTION_15_0(v2);
    }

    v19 = &qword_2802F9A68;
    v20 = &qword_2691E3138;
    v21 = v2;
LABEL_22:
    sub_2691CAE08(v21, v19, v20);
  }

LABEL_23:
  OUTLINED_FUNCTION_24_0();
}

void sub_2691C5C60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  v6 = type metadata accessor for SystemCommandsIntent(0);
  OUTLINED_FUNCTION_27();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_11_0();
  sub_2691E1394();
  OUTLINED_FUNCTION_2();
  v122 = v9;
  v123 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_3();
  v121 = (v10 - v11);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x28223BE20](v13);
  v120 = &v117 - v14;
  OUTLINED_FUNCTION_13();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v117 - v17;
  MEMORY[0x28223BE20](v16);
  v119 = &v117 - v19;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v20);
  v118 = &v117 - v21;
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_46_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v117 - v24;
  v26 = v2;
  sub_2691E1134();
  v27 = MEMORY[0x277D84F70];
  if (!v126)
  {
    sub_2691CAE08(v125, &qword_2802F9A70, &qword_2691E3140);
LABEL_9:
    sub_2691E1134();
    v38 = v123;
    if (v126)
    {
      sub_2691E1174();
      OUTLINED_FUNCTION_5_3();
      if (swift_dynamicCast())
      {

        sub_2691E1214();

        if (v125[0] && (v39 = sub_2691C7D84(0), , v39) && (sub_2691CAB20(14, v39), v41 = v40, , (v41 & 1) != 0))
        {
          if (qword_2802F9378 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_2802F9378);
          }

          OUTLINED_FUNCTION_16_1(v38, qword_2802FBA28);
          v42 = v122;
          v43 = v120;
          (*(v122 + 16))(v120);
          v44 = sub_2691E1384();
          v45 = sub_2691E1524();
          if (OUTLINED_FUNCTION_17_0(v45))
          {
            v46 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_36_0(v46);
            OUTLINED_FUNCTION_10_0(&dword_2691B1000, v47, v48, "SystemCommandsIntent isShutDown | Found shutdown identifier");
            OUTLINED_FUNCTION_18_0();
          }

          else
          {
          }

          (*(v42 + 8))(v43, v38);
        }

        else
        {
          if (qword_2802F9378 != -1)
          {
            OUTLINED_FUNCTION_0(&qword_2802F9378);
          }

          OUTLINED_FUNCTION_16_1(v38, qword_2802FBA28);
          v61 = v122;
          (*(v122 + 16))(v5);
          v62 = sub_2691E1384();
          v63 = sub_2691E1524();
          if (OUTLINED_FUNCTION_17_0(v63))
          {
            v64 = OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_36_0(v64);
            OUTLINED_FUNCTION_10_0(&dword_2691B1000, v65, v66, "SystemCommandsIntent isShutDown | Did not find shutdown identifier");
            OUTLINED_FUNCTION_18_0();
          }

          else
          {
          }

          (*(v61 + 8))(v5, v38);
        }

        goto LABEL_77;
      }
    }

    else
    {
      sub_2691CAE08(v125, &qword_2802F9A70, &qword_2691E3140);
    }

    v49 = v122;
    if (qword_2802F9378 != -1)
    {
LABEL_81:
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    OUTLINED_FUNCTION_16_1(v38, qword_2802FBA28);
    (*(v49 + 16))(v121);
    sub_2691BF1DC(v26, v3);
    v50 = sub_2691E1384();
    sub_2691E1524();
    OUTLINED_FUNCTION_27_0();
    if (!os_log_type_enabled(v50, v51))
    {

      sub_2691BF15C(v3);
      v58 = *(v49 + 8);
      v59 = v121;
      v60 = v38;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_72();
    v52 = OUTLINED_FUNCTION_39_0();
    v125[0] = v52;
    *v27 = 136315138;
    v124 = *(v3 + *(v6 + 20));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AB8, &qword_2691E3178);
    v53 = v38;
    v54 = sub_2691E13E4();
    v56 = v55;
    sub_2691BF15C(v3);
    v57 = sub_2691B98CC(v54, v56, v125);

    *(v27 + 4) = v57;
    _os_log_impl(&dword_2691B1000, v50, v25, "SystemCommandsIntent isShutDown | no flow found for task: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v52);
    OUTLINED_FUNCTION_12_2();
    OUTLINED_FUNCTION_9_2();

    v58 = *(v49 + 8);
    v59 = v121;
LABEL_22:
    v60 = v53;
LABEL_24:
    v58(v59, v60);
    goto LABEL_77;
  }

  sub_2691E11A4();
  OUTLINED_FUNCTION_5_3();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v3 = v124;
  swift_retain_n();
  v27 = v2;
  if (sub_2691C8304())
  {

    v28 = v122;
    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    v29 = v123;
    __swift_project_value_buffer(v123, qword_2802FBA28);
    OUTLINED_FUNCTION_13_1();
    v30(v25);
    v31 = sub_2691E1384();
    v32 = sub_2691E1524();
    if (OUTLINED_FUNCTION_19(v32))
    {
      v33 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_47_0(v33);
      OUTLINED_FUNCTION_49_0();
      _os_log_impl(v34, v35, v36, v37, v2, 2u);
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
    }

    (*(v28 + 8))(v25, v29);
    goto LABEL_77;
  }

  v67 = sub_2691E1204();
  v68 = v122;
  if (v67)
  {
    v69 = v67;

    if (sub_2691C8560(v70) & 1) != 0 || (sub_2691C9254(v69))
    {

LABEL_33:

      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v71 = v123;
      OUTLINED_FUNCTION_16_1(v123, qword_2802FBA28);
      (*(v68 + 16))(v4);

      v72 = sub_2691E1384();
      v73 = sub_2691E1524();

      if (os_log_type_enabled(v72, v73))
      {
        OUTLINED_FUNCTION_72();
        v74 = OUTLINED_FUNCTION_39_0();
        v125[0] = v74;
        *v71 = 136315138;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AC0, &qword_2691E3180);
        v76 = MEMORY[0x26D632E00](v69, v75);
        v78 = v77;

        v79 = sub_2691B98CC(v76, v78, v125);

        *(v71 + 4) = v79;
        OUTLINED_FUNCTION_49_0();
        _os_log_impl(v80, v81, v82, v83, v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v74);
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_9_2();

        (*(v68 + 8))(v4, v123);
      }

      else
      {

        (*(v68 + 8))(v4, v71);
      }

      goto LABEL_77;
    }

    v84 = sub_2691C9F48(v69);

    if (v84)
    {
      goto LABEL_33;
    }
  }

  sub_2691E1214();

  v85 = v123;
  if (v125[0])
  {

    v25 = sub_2691E1204();

    if (v25)
    {
      v38 = sub_2691B8328(v25);
      v86 = 0;
      v49 = v25 & 0xC000000000000001;
      v6 = v25 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v38 == v86)
        {

          v68 = v122;
          v85 = v123;
          goto LABEL_63;
        }

        if (v49)
        {
          v26 = MEMORY[0x26D632F20](v86, v25);
        }

        else
        {
          if (v86 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_80;
          }

          v26 = *(v25 + 8 * v86 + 32);
        }

        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        sub_2691E10C4();
        if (v125[0])
        {
          v87 = sub_2691E10D4();

          if (v87)
          {
            break;
          }
        }

        ++v86;
      }

      v104 = v118;
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      v53 = v123;
      OUTLINED_FUNCTION_16_1(v123, qword_2802FBA28);
      v105 = v122;
      (*(v122 + 16))(v104);

      v106 = sub_2691E1384();
      v107 = sub_2691E1524();

      if (os_log_type_enabled(v106, v107))
      {
        OUTLINED_FUNCTION_72();
        v108 = OUTLINED_FUNCTION_39_0();
        v124 = v26;
        v125[0] = v108;
        *v27 = 136315138;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AC0, &qword_2691E3180);
        v109 = sub_2691E13E4();
        v111 = sub_2691B98CC(v109, v110, v125);

        *(v27 + 4) = v111;
        OUTLINED_FUNCTION_31_0();
        _os_log_impl(v112, v113, v114, v115, v116, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
        OUTLINED_FUNCTION_12_2();
        OUTLINED_FUNCTION_9_2();

        v58 = *(v105 + 8);
        v59 = v118;
      }

      else
      {

        v58 = *(v105 + 8);
        v59 = v104;
      }

      goto LABEL_22;
    }

LABEL_63:
    if (sub_2691CAAAC(v3))
    {
      if (qword_2802F9378 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      OUTLINED_FUNCTION_16_1(v85, qword_2802FBA28);
      v96 = v119;
      (*(v68 + 16))(v119);
      v97 = sub_2691E1384();
      v98 = sub_2691E1524();
      if (OUTLINED_FUNCTION_19(v98))
      {
        v99 = OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_36_0(v99);
        OUTLINED_FUNCTION_49_0();
        _os_log_impl(v100, v101, v102, v103, v25, 2u);
        OUTLINED_FUNCTION_18_0();
      }

      else
      {
      }

      (*(v68 + 8))(v96, v85);
    }

    else
    {
    }
  }

  else
  {

    if (qword_2802F9378 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2802F9378);
    }

    OUTLINED_FUNCTION_16_1(v85, qword_2802FBA28);
    (*(v68 + 16))(v18);
    v88 = sub_2691E1384();
    sub_2691E1524();
    OUTLINED_FUNCTION_27_0();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_47_0(v90);
      OUTLINED_FUNCTION_31_0();
      _os_log_impl(v91, v92, v93, v94, v95, 2u);
      OUTLINED_FUNCTION_9_2();
    }

    else
    {
    }

    (*(v68 + 8))(v18, v85);
  }

LABEL_77:
  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691C68D0()
{
  type metadata accessor for SystemCommandsIntent(0);
  sub_2691E1134();
  if (v4)
  {
    v0 = sub_2691E1244();
    if (OUTLINED_FUNCTION_41_0(v0))
    {
      goto LABEL_7;
    }
  }

  else
  {
    sub_2691CAE08(v3, &qword_2802F9A70, &qword_2691E3140);
  }

  sub_2691E1134();
  if (v4)
  {
    v1 = sub_2691E1234();
    if (OUTLINED_FUNCTION_41_0(v1))
    {
LABEL_7:

      return 1;
    }
  }

  else
  {
    sub_2691CAE08(v3, &qword_2802F9A70, &qword_2691E3140);
  }

  return 0;
}

BOOL sub_2691C699C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A68, &qword_2691E3138);
  OUTLINED_FUNCTION_37(v1);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11_0();
  sub_2691E11D4();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_25_0(v7);
  sub_2691E1134();
  if (!v21[3])
  {
    v9 = &qword_2802F9A70;
    v10 = &qword_2691E3140;
    v11 = v21;
LABEL_10:
    sub_2691CAE08(v11, v9, v10);
    return 0;
  }

  sub_2691E1224();
  if ((OUTLINED_FUNCTION_22_0() & 1) == 0)
  {
    return 0;
  }

  sub_2691E1144();

  if (!v21[0])
  {

    OUTLINED_FUNCTION_15_0(v0);
    goto LABEL_9;
  }

  sub_2691E1164();
  OUTLINED_FUNCTION_53_0();
  sub_2691E11C4();

  OUTLINED_FUNCTION_6_2(v0);
  if (v8)
  {

LABEL_9:
    v9 = &qword_2802F9A68;
    v10 = &qword_2691E3138;
    v11 = v0;
    goto LABEL_10;
  }

  v13 = OUTLINED_FUNCTION_14_0();
  v14(v13);
  v15 = OUTLINED_FUNCTION_28_0();
  v16(v15);
  OUTLINED_FUNCTION_38_0();
  v17 = sub_2691C5184();

  v18 = *(v4 + 8);
  v19 = OUTLINED_FUNCTION_37_0();
  v18(v19);
  v20 = OUTLINED_FUNCTION_29_0();
  v18(v20);
  return (v17 & 1) != 0;
}

uint64_t sub_2691C6BD0()
{
  sub_2691E1394();
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_0();
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  v7 = type metadata accessor for SystemCommandsIntent(0);
  OUTLINED_FUNCTION_25_0(v7);
  sub_2691E1134();
  if (v31[3])
  {
    sub_2691E1174();
    v8 = OUTLINED_FUNCTION_22_0();
    if (v8)
    {

      sub_2691E1214();

      if (v31[0] && (v10 = sub_2691C7D84(1), v9 = , v10) && (sub_2691CAB20(9, v10), v12 = v11, v9 = , (v12 & 1) != 0))
      {
        if (qword_2802F9378 != -1)
        {
          v9 = OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        OUTLINED_FUNCTION_7_1(v9, qword_2802FBA28);
        v13 = OUTLINED_FUNCTION_28_0();
        v14(v13);
        v15 = sub_2691E1384();
        v16 = sub_2691E1524();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = OUTLINED_FUNCTION_51();
          *v17 = 0;
          _os_log_impl(&dword_2691B1000, v15, v16, "SystemCommandsIntent isLock | found lock identifier", v17, 2u);
          OUTLINED_FUNCTION_12_2();
        }

        else
        {
        }

        v22 = 1;
      }

      else
      {
        if (qword_2802F9378 != -1)
        {
          v9 = OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        OUTLINED_FUNCTION_7_1(v9, qword_2802FBA28);
        v23(v0);
        v24 = sub_2691E1384();
        sub_2691E1524();
        OUTLINED_FUNCTION_27_0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = OUTLINED_FUNCTION_51();
          *v26 = 0;
          _os_log_impl(&dword_2691B1000, v24, v6, "SystemCommandsIntent isLock | lock identifier not found", v26, 2u);
          OUTLINED_FUNCTION_12_2();
        }

        else
        {
        }

        v22 = 0;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v8 = sub_2691CAE08(v31, &qword_2802F9A70, &qword_2691E3140);
  }

  if (qword_2802F9378 != -1)
  {
    v8 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  OUTLINED_FUNCTION_7_1(v8, qword_2802FBA28);
  v18(v1);
  v19 = sub_2691E1384();
  sub_2691E1524();
  OUTLINED_FUNCTION_27_0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_51();
    *v21 = 0;
    _os_log_impl(&dword_2691B1000, v19, v6, "SystemCommandsIntent isLock | task is not UsoTask_enable_common_Setting", v21, 2u);
    OUTLINED_FUNCTION_42();
  }

  v22 = 0;
LABEL_22:
  v27 = OUTLINED_FUNCTION_37_0();
  v28(v27);
  return v22;
}

uint64_t sub_2691C6FA0(const char *a1)
{
  sub_2691E1394();
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_47();
  v9 = v8 - v7;
  if (qword_2802F9378 != -1)
  {
    v6 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  OUTLINED_FUNCTION_7_1(v6, qword_2802FBA28);
  v10(v9);
  v11 = sub_2691E1384();
  v12 = sub_2691E1524();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_51();
    *v13 = 0;
    _os_log_impl(&dword_2691B1000, v11, v12, a1, v13, 2u);
    OUTLINED_FUNCTION_12_2();
  }

  (*(v4 + 8))(v9, v1);
  return 0;
}

uint64_t sub_2691C7104(void (*a1)(void))
{
  v2 = type metadata accessor for SystemCommandsIntent(0);
  OUTLINED_FUNCTION_25_0(v2);
  sub_2691E1134();
  if (v5)
  {
    a1(0);
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    sub_2691CAE08(v4, &qword_2802F9A70, &qword_2691E3140);
  }

  return 0;
}

void sub_2691C71A4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  sub_2691E1394();
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44_0();
  v12 = sub_2691E10B4();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_47();
  v18 = v17 - v16;
  v19 = type metadata accessor for SystemCommandsIntent(0);
  OUTLINED_FUNCTION_25_0(v19);
  sub_2691E1134();
  if (v66[3])
  {
    sub_2691E1174();
    if (swift_dynamicCast())
    {

      sub_2691E1214();

      if (!v66[0])
      {
        goto LABEL_25;
      }

      v20 = sub_2691E10F4();

      if (!v20)
      {
        goto LABEL_25;
      }

      v57 = v6;
      v58 = v5;
      v59 = v65;
      v60 = v8;
      v61 = v2;
      v21 = *(v20 + 16);
      v56[1] = v20;
      if (v21)
      {
        v22 = v14 + 16;
        v23 = *(v14 + 16);
        v24 = v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v62 = *(v22 + 56);
        v63 = v23;
        v64 = v22;
        v25 = (v22 - 8);
        v26 = MEMORY[0x277D84F90];
        do
        {
          v63(v18, v24, v12);
          v27 = sub_2691E1094();
          v29 = v28;
          (*v25)(v18, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2691CAE60(0, *(v26 + 2) + 1, 1, v26);
          }

          v31 = *(v26 + 2);
          v30 = *(v26 + 3);
          if (v31 >= v30 >> 1)
          {
            v33 = OUTLINED_FUNCTION_48_0(v30);
            v26 = sub_2691CAE60(v33, v34, v35, v26);
          }

          *(v26 + 2) = v31 + 1;
          v32 = &v26[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          v24 += v62;
          --v21;
        }

        while (v21);
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
      }

      v66[0] = 0x6B636F6C6E75;
      v66[1] = 0xE600000000000000;
      MEMORY[0x28223BE20](v41);
      v56[-2] = v66;
      v42 = sub_2691C4770(sub_2691CB6C4, &v56[-4], v26);

      v8 = v60;
      v2 = v61;
      v5 = v58;
      v43 = v57;
      if (v42)
      {
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        __swift_project_value_buffer(v2, qword_2802FBA28);
        OUTLINED_FUNCTION_13_1();
        v44(v43);
        v45 = sub_2691E1384();
        v46 = sub_2691E1524();
        if (OUTLINED_FUNCTION_17_0(v46))
        {
          v47 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_36_0(v47);
          OUTLINED_FUNCTION_10_0(&dword_2691B1000, v48, v49, "SystemCommandsIntent isUnlock | does not have required userEntity");
          OUTLINED_FUNCTION_18_0();
        }

        else
        {
        }

        (*(v8 + 8))(v43, v2);
      }

      else
      {
LABEL_25:
        if (qword_2802F9378 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_2802F9378);
        }

        __swift_project_value_buffer(v2, qword_2802FBA28);
        OUTLINED_FUNCTION_13_1();
        v50(v5);
        v51 = sub_2691E1384();
        v52 = sub_2691E1524();
        if (OUTLINED_FUNCTION_17_0(v52))
        {
          v53 = OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_36_0(v53);
          OUTLINED_FUNCTION_10_0(&dword_2691B1000, v54, v55, "SystemCommandsIntent isUnlock | unlock identifier not found");
          OUTLINED_FUNCTION_18_0();
        }

        else
        {
        }

        (*(v8 + 8))(v5, v2);
      }

      goto LABEL_31;
    }
  }

  else
  {
    sub_2691CAE08(v66, &qword_2802F9A70, &qword_2691E3140);
  }

  if (qword_2802F9378 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  __swift_project_value_buffer(v2, qword_2802FBA28);
  OUTLINED_FUNCTION_13_1();
  v36 = OUTLINED_FUNCTION_28_0();
  v37(v36);
  v38 = sub_2691E1384();
  v39 = sub_2691E1524();
  if (OUTLINED_FUNCTION_17_0(v39))
  {
    v40 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_47_0(v40);
    _os_log_impl(&dword_2691B1000, v38, v12, "SystemCommandsIntent isUnlock | task is not UsoTask_enable_common_Setting", v4, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v8 + 8))(v3, v2);
LABEL_31:
  OUTLINED_FUNCTION_24_0();
}

void sub_2691C76FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A98, &qword_2691E3158);
  OUTLINED_FUNCTION_37(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v65 - v7;
  sub_2691E1394();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_3();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_0();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = OUTLINED_FUNCTION_43_0();
  v21 = type metadata accessor for SystemCommandsIntent(v20);
  OUTLINED_FUNCTION_25_0(v21);
  sub_2691E1134();
  if (v73[3])
  {
    sub_2691E11B4();
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v72;
      if (qword_2802F9378 != -1)
      {
        v22 = OUTLINED_FUNCTION_0(&qword_2802F9378);
      }

      OUTLINED_FUNCTION_7_1(v22, qword_2802FBA28);
      v68 = v24;
      v69 = v25;
      v70 = v26;
      (v25)(v4);

      v27 = sub_2691E1384();
      v71 = v10;
      v28 = v27;
      v29 = sub_2691E1524();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_72();
        v66 = swift_slowAlloc();
        v67 = v19;
        v72 = v23;
        v73[0] = v66;
        *v30 = 136315138;

        v31 = sub_2691E13E4();
        v33 = v2;
        v34 = v3;
        v35 = v8;
        v36 = v23;
        v37 = sub_2691B98CC(v31, v32, v73);

        *(v30 + 4) = v37;
        v23 = v36;
        v8 = v35;
        v3 = v34;
        v2 = v33;
        _os_log_impl(&dword_2691B1000, v28, v29, "SystemCommandsIntent isQueryFor | parse: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v66);
        v19 = v67;
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_42();
      }

      v38 = *(v71 + 8);
      v38(v4, v2);

      sub_2691E1144();

      v39 = v73[0];
      if (v73[0])
      {
        sub_2691C7D84(0);
        OUTLINED_FUNCTION_53_0();
        v67 = v38;
        sub_2691C46C4(v39, MEMORY[0x277D5E4F0], v8);

        v40 = sub_2691E10B4();
        if (__swift_getEnumTagSinglePayload(v8, 1, v40) == 1)
        {
          sub_2691CAE08(v8, &qword_2802F9A98, &qword_2691E3158);
          v41 = 0;
          v42 = 0;
        }

        else
        {
          v41 = sub_2691E1094();
          v42 = v55;
          (*(*(v40 - 8) + 8))(v8, v40);
        }

        v69(v19, v68, v2);

        v56 = sub_2691E1384();
        v57 = sub_2691E1524();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_72();
          v59 = swift_slowAlloc();
          v72 = v59;
          v73[0] = v41;
          *v58 = 136315138;
          v73[1] = v42;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9AA0, &qword_2691E3160);
          v60 = sub_2691E13E4();
          v70 = v23;
          v62 = v19;
          v63 = sub_2691B98CC(v60, v61, &v72);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_2691B1000, v56, v57, "SystemCommandsIntent isQueryFor | found systemCategory identifier: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v59);
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_42();

          v64 = v62;
        }

        else
        {

          v64 = v19;
        }

        (v67)(v64, v2);
      }

      else
      {
        v69(v3, v68, v2);
        v52 = sub_2691E1384();
        sub_2691E1524();
        OUTLINED_FUNCTION_27_0();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = OUTLINED_FUNCTION_51();
          *v54 = 0;
          _os_log_impl(&dword_2691B1000, v52, v19, "SystemCommandsIntent isQueryFor | systemCategory identifier not found", v54, 2u);
          OUTLINED_FUNCTION_42();
        }

        else
        {
        }

        v38(v3, v2);
      }

      goto LABEL_20;
    }
  }

  else
  {
    v22 = sub_2691CAE08(v73, &qword_2802F9A70, &qword_2691E3140);
  }

  if (qword_2802F9378 != -1)
  {
    v22 = OUTLINED_FUNCTION_0(&qword_2802F9378);
  }

  OUTLINED_FUNCTION_7_1(v22, qword_2802FBA28);
  v43(v14);
  v44 = sub_2691E1384();
  sub_2691E1524();
  OUTLINED_FUNCTION_27_0();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_51();
    OUTLINED_FUNCTION_47_0(v46);
    OUTLINED_FUNCTION_31_0();
    _os_log_impl(v47, v48, v49, v50, v51, 2u);
    OUTLINED_FUNCTION_9_2();
  }

  (*(v10 + 8))(v14, v2);
LABEL_20:
  OUTLINED_FUNCTION_24_0();
}

uint64_t sub_2691C7D84(uint64_t a1)
{
  v30 = a1;
  v1 = sub_2691E10B4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  result = sub_2691E10F4();
  if (result)
  {
    v8 = result;
    v9 = 0;
    v31 = *(result + 16);
    v24 = 0x80000002691E4970;
    v25 = (v2 + 32);
    v28 = (v2 + 8);
    v29 = v2 + 16;
    v27 = MEMORY[0x277D84F90];
    while (v31 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        JUMPOUT(0x2691C820CLL);
      }

      v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v11 = *(v2 + 72);
      v12 = v1;
      (*(v2 + 16))(v6, v8 + v10 + v11 * v9, v1);
      v13 = sub_2691E10A4();
      v15 = 0xE400000000000000;
      v16 = 1684107369;
      switch(v30)
      {
        case 1:
          v16 = 0x74416D6574737973;
          v15 = 0xEF65747562697274;
          if (v14)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        case 2:
          v16 = 0x7250726577736E61;
          v15 = 0xED0000746375646FLL;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 3:
          v15 = 0xE500000000000000;
          v16 = 0x656E6F6870;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 4:
          v15 = 0xE600000000000000;
          v16 = 0x656E6F687069;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 5:
          goto LABEL_33;
        case 6:
          v15 = 0xE600000000000000;
          v16 = 0x656369766564;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 7:
          v15 = 0xE700000000000000;
          v16 = 0x746375646F7270;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 8:
          v15 = 0xE600000000000000;
          v16 = 0x6E6565726373;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 9:
          v16 = 1801678700;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 10:
          v15 = 0xE600000000000000;
          v16 = 0x6B636F6C6E75;
LABEL_33:
          if (v14)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        case 11:
          v16 = 1701667182;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 12:
          v15 = 0xE500000000000000;
          v16 = 0x73656D616ELL;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 13:
          v15 = 0xE500000000000000;
          v16 = 0x7265776F70;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 14:
          v15 = 0xE800000000000000;
          v16 = 0x6E776F6474756873;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        case 15:
          v16 = 0xD000000000000010;
          v15 = v24;
          if (!v14)
          {
            goto LABEL_41;
          }

          goto LABEL_34;
        default:
          v16 = 0x61436D6574737973;
          v15 = 0xEE0079726F676574;
          if (!v14)
          {
LABEL_41:

LABEL_42:
            v1 = v12;
            (*v28)(v6, v12);
            ++v9;
            continue;
          }

LABEL_34:
          if (v13 == v16 && v14 == v15)
          {
          }

          else
          {
            v18 = sub_2691E16D4();

            if ((v18 & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          v23 = *v25;
          v23(v26, v6, v12);
          v19 = v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2691CB398(0, *(v19 + 16) + 1, 1);
            v19 = v32;
          }

          v22 = *(v19 + 16);
          v21 = *(v19 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_2691CB398((v21 > 1), v22 + 1, 1);
            v19 = v32;
          }

          ++v9;
          *(v19 + 16) = v22 + 1;
          v27 = v19;
          v1 = v12;
          v23((v19 + v10 + v22 * v11), v26, v12);
          break;
      }
    }

    return v27;
  }

  return result;
}

uint64_t sub_2691C824C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F9A88, &qword_2691E3150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2691C82BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2691C8304()
{
  v0 = sub_2691E1394();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2691E1204();
  if (v4)
  {
    v5 = v4;
    if (sub_2691B8328(v4))
    {
      sub_2691B832C();
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D632F20](0, v5);
      }

      else
      {
      }

      sub_2691E10C4();

      if (v14[1])
      {
        v6 = sub_2691E10F4();

        if (v6)
        {
          sub_2691CAB20(7, v6);
          v8 = v7;

          return v8 & 1;
        }
      }
    }

    else
    {
    }
  }

  if (qword_2802F9378 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_2802FBA28);
  (*(v1 + 16))(v3, v9, v0);
  v10 = sub_2691E1384();
  v11 = sub_2691E1524();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2691B1000, v10, v11, "SystemCommandsIntent isTurnOffDevice | no identifiers found", v12, 2u);
    MEMORY[0x26D6335B0](v12, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v8 = 0;
  return v8 & 1;
}

uint64_t sub_2691C8560(uint64_t a1)
{
  v2 = sub_2691E1394();
  v114 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v112 = &v107 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v107 - v8;
  v118 = sub_2691E1114();
  v10 = *(v118 - 8);
  v11 = MEMORY[0x28223BE20](v118);
  v117 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v107 - v13;
  v14 = sub_2691E10B4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v110 = v9;
    v111 = v10;
    v108 = v21;
    v109 = v20;
    v122 = &v107 - v19;
    v126 = v18;
    v22 = sub_2691B8328(a1);
    v23 = 0;
    v24 = a1 & 0xC000000000000001;
    v124 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = MEMORY[0x277D84F90];
    v113 = v2;
LABEL_3:
    v125 = v25;
    while (v22 != v23)
    {
      if (v24)
      {
        v26 = MEMORY[0x26D632F20](v23, a1);
      }

      else
      {
        if (v23 >= *(v124 + 16))
        {
          goto LABEL_93;
        }

        v26 = *(a1 + 8 * v23 + 32);
      }

      if (__OFADD__(v23, 1))
      {
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
        goto LABEL_107;
      }

      sub_2691E10C4();
      v5 = v127;
      if (v127)
      {
        v123 = v23 + 1;
        sub_2691E1074();

        v5 = sub_2691E1264();

        if (*(v5 + 2))
        {
          v27 = sub_2691CB56C(0x73656D616ELL, 0xE500000000000000);
          if (v28)
          {
            v115 = v24;
            v29 = *(*(v5 + 7) + 8 * v27);

            v30 = sub_2691B8328(v29);
            v31 = 0;
            v120 = (v29 & 0xC000000000000001);
            v121 = v30;
            v119 = v29 & 0xFFFFFFFFFFFFFF8;
            v2 = MEMORY[0x277D84F90];
            while (v121 != v31)
            {
              if (v120)
              {
                MEMORY[0x26D632F20](v31, v29);
              }

              else
              {
                if (v31 >= *(v119 + 16))
                {
                  goto LABEL_100;
                }
              }

              if (__OFADD__(v31, 1))
              {
                goto LABEL_99;
              }

              v5 = sub_2691E1254();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_2691CB054(0, *(v2 + 16) + 1, 1, v2);
              }

              v33 = *(v2 + 16);
              v32 = *(v2 + 24);
              if (v33 >= v32 >> 1)
              {
                v2 = sub_2691CB054((v32 > 1), v33 + 1, 1, v2);
              }

              *(v2 + 16) = v33 + 1;
              *(v2 + 8 * v33 + 32) = v5;
              ++v31;
            }

            v120 = v26;

            v34 = 0;
            v121 = *(v2 + 16);
            v35 = MEMORY[0x277D84F90];
            v24 = v115;
            while (v121 != v34)
            {
              if (v34 >= *(v2 + 16))
              {
                goto LABEL_101;
              }

              v36 = v2;
              v2 = v22;
              v37 = v15;
              v38 = a1;
              v5 = v36;
              v39 = *&v36[8 * v34 + 32];
              v40 = *(v39 + 16);
              v41 = *(v35 + 2);
              v42 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_102;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v42 > *(v35 + 3) >> 1)
              {
                if (v41 <= v42)
                {
                  v44 = v41 + v40;
                }

                else
                {
                  v44 = v41;
                }

                v35 = sub_2691CAF68(isUniquelyReferenced_nonNull_native, v44, 1, v35);
              }

              a1 = v38;
              v24 = v115;
              v15 = v37;
              if (*(v39 + 16))
              {
                if ((*(v35 + 3) >> 1) - *(v35 + 2) < v40)
                {
                  goto LABEL_105;
                }

                v22 = v2;
                swift_arrayInitWithCopy();

                v2 = v5;
                if (v40)
                {
                  v45 = *(v35 + 2);
                  v46 = __OFADD__(v45, v40);
                  v47 = v45 + v40;
                  if (v46)
                  {
                    goto LABEL_106;
                  }

                  *(v35 + 2) = v47;
                }
              }

              else
              {

                v22 = v2;
                v2 = v5;
                if (v40)
                {
                  goto LABEL_103;
                }
              }

              ++v34;
            }

            v5 = v35;

            v25 = v125;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_2691CB054(0, v25[2] + 1, 1, v25);
            }

            v49 = v25[2];
            v48 = v25[3];
            if (v49 >= v48 >> 1)
            {
              v51 = sub_2691CB054((v48 > 1), v49 + 1, 1, v25);
              v50 = v5;
              v25 = v51;
            }

            else
            {
              v50 = v5;
            }

            v25[2] = v49 + 1;
            v25[v49 + 4] = v50;
            v23 = v123;
            goto LABEL_3;
          }
        }
      }

      ++v23;
      v25 = v125;
    }

    v52 = 0;
    v53 = v25[2];
    v54 = MEMORY[0x277D84F90];
    while (v53 != v52)
    {
      if (v52 >= v25[2])
      {
        goto LABEL_94;
      }

      v55 = v25[v52 + 4];
      v5 = *(v55 + 16);
      v56 = v54[2];
      v57 = &v5[v56];
      if (__OFADD__(v56, v5))
      {
        goto LABEL_95;
      }

      v58 = swift_isUniquelyReferenced_nonNull_native();
      if (!v58 || v57 > v54[3] >> 1)
      {
        if (v56 <= v57)
        {
          v59 = &v5[v56];
        }

        else
        {
          v59 = v56;
        }

        v54 = sub_2691CAF68(v58, v59, 1, v54);
      }

      if (*(v55 + 16))
      {
        if ((v54[3] >> 1) - v54[2] < v5)
        {
          goto LABEL_97;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v60 = v54[2];
          v46 = __OFADD__(v60, v5);
          v61 = &v5[v60];
          if (v46)
          {
            goto LABEL_98;
          }

          v54[2] = v61;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_96;
        }
      }

      ++v52;
    }

    v2 = 0;
    v125 = v54[2];
    LODWORD(v123) = *MEMORY[0x277D5E6B0];
    v120 = (v111 + 8);
    v121 = (v111 + 104);
    v124 = v15 + 8;
    v119 = v15 + 16;
    v62 = v116;
    while (v125 != v2)
    {
      if (v2 >= v54[2])
      {
        goto LABEL_104;
      }

      v63 = v54 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v2;
      v64 = v15;
      v65 = v122;
      v115 = *(v15 + 16);
      v115(v122, v63, v126);
      sub_2691E1084();
      v67 = v117;
      v66 = v118;
      (*v121)(v117, v123, v118);
      v68 = MEMORY[0x26D632A60](v62, v67);
      v69 = *v120;
      (*v120)(v67, v66);
      v69(v62, v66);
      if ((v68 & 1) != 0 || ((sub_2691E10A4(), v70) ? (v5 = v70) : (v5 = 0xE000000000000000), v71 = sub_2691E1654(), , v71 <= 9))
      {

        if (qword_2802F9378 != -1)
        {
          swift_once();
        }

        v77 = v113;
        v78 = __swift_project_value_buffer(v113, qword_2802FBA28);
        v79 = v114;
        v80 = v110;
        (*(v114 + 16))(v110, v78, v77);
        v81 = v109;
        v82 = v126;
        v83 = v115;
        v115(v109, v122, v126);
        v84 = sub_2691E1384();
        v85 = sub_2691E1534();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v125 = v86;
          v87 = v82;
          v88 = swift_slowAlloc();
          v127 = v88;
          *v86 = 136315138;
          v83(v108, v81, v87);
          v89 = sub_2691E13E4();
          v90 = v79;
          v92 = v91;
          v93 = *v124;
          (*v124)(v81, v87);
          v94 = sub_2691B98CC(v89, v92, &v127);

          v95 = v125;
          *(v125 + 4) = v94;
          v96 = v85;
          v97 = v95;
          _os_log_impl(&dword_2691B1000, v84, v96, "SystemCommandsIntent isHomeAutomationParse | Found HA identifier: %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v88);
          MEMORY[0x26D6335B0](v88, -1, -1);
          MEMORY[0x26D6335B0](v97, -1, -1);

          (*(v90 + 8))(v110, v113);
          v93(v122, v87);
        }

        else
        {

          v106 = *v124;
          (*v124)(v81, v82);
          (*(v79 + 8))(v80, v77);
          v106(v122, v82);
        }

        return 1;
      }

      (*v124)(v65, v126);
      ++v2;
      v15 = v64;
    }

    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v98 = v113;
    v99 = __swift_project_value_buffer(v113, qword_2802FBA28);
    v100 = v114;
    v101 = v112;
    (*(v114 + 16))(v112, v99, v98);
    v102 = sub_2691E1384();
    v103 = sub_2691E1534();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_2691B1000, v102, v103, "SystemCommandsIntent isHomeAutomationParse | No HA identifiers found, parse is not HomeAutomation", v104, 2u);
      MEMORY[0x26D6335B0](v104, -1, -1);
    }

    (*(v100 + 8))(v101, v98);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
LABEL_107:
      swift_once();
    }

    v72 = __swift_project_value_buffer(v2, qword_2802FBA28);
    v73 = v114;
    (*(v114 + 16))(v5, v72, v2);
    v74 = sub_2691E1384();
    v75 = sub_2691E1534();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2691B1000, v74, v75, "SystemCommandsIntent isHomeAutomationParse | No UserEntities found", v76, 2u);
      MEMORY[0x26D6335B0](v76, -1, -1);
    }

    (*(v73 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_2691C9254(uint64_t a1)
{
  v2 = sub_2691E1394();
  v114 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v112 = &v107 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v107 - v8;
  v118 = sub_2691E1114();
  v10 = *(v118 - 8);
  v11 = MEMORY[0x28223BE20](v118);
  v117 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v107 - v13;
  v14 = sub_2691E10B4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  if (a1)
  {
    v110 = v9;
    v111 = v10;
    v108 = v21;
    v109 = v20;
    v122 = &v107 - v19;
    v126 = v18;
    v22 = sub_2691B8328(a1);
    v23 = 0;
    v24 = a1 & 0xC000000000000001;
    v124 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = MEMORY[0x277D84F90];
    v113 = v2;
LABEL_3:
    v125 = v25;
    while (v22 != v23)
    {
      if (v24)
      {
        v26 = MEMORY[0x26D632F20](v23, a1);
      }

      else
      {
        if (v23 >= *(v124 + 16))
        {
          goto LABEL_93;
        }

        v26 = *(a1 + 8 * v23 + 32);
      }

      if (__OFADD__(v23, 1))
      {
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
        goto LABEL_107;
      }

      sub_2691E10C4();
      v5 = v127;
      if (v127)
      {
        v123 = v23 + 1;
        sub_2691E1074();

        v5 = sub_2691E1264();

        if (*(v5 + 2))
        {
          v27 = sub_2691CB56C(0x73656D616ELL, 0xE500000000000000);
          if (v28)
          {
            v115 = v24;
            v29 = *(*(v5 + 7) + 8 * v27);

            v30 = sub_2691B8328(v29);
            v31 = 0;
            v120 = (v29 & 0xC000000000000001);
            v121 = v30;
            v119 = v29 & 0xFFFFFFFFFFFFFF8;
            v2 = MEMORY[0x277D84F90];
            while (v121 != v31)
            {
              if (v120)
              {
                MEMORY[0x26D632F20](v31, v29);
              }

              else
              {
                if (v31 >= *(v119 + 16))
                {
                  goto LABEL_100;
                }
              }

              if (__OFADD__(v31, 1))
              {
                goto LABEL_99;
              }

              v5 = sub_2691E1254();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v2 = sub_2691CB054(0, *(v2 + 16) + 1, 1, v2);
              }

              v33 = *(v2 + 16);
              v32 = *(v2 + 24);
              if (v33 >= v32 >> 1)
              {
                v2 = sub_2691CB054((v32 > 1), v33 + 1, 1, v2);
              }

              *(v2 + 16) = v33 + 1;
              *(v2 + 8 * v33 + 32) = v5;
              ++v31;
            }

            v120 = v26;

            v34 = 0;
            v121 = *(v2 + 16);
            v35 = MEMORY[0x277D84F90];
            v24 = v115;
            while (v121 != v34)
            {
              if (v34 >= *(v2 + 16))
              {
                goto LABEL_101;
              }

              v36 = v2;
              v2 = v22;
              v37 = v15;
              v38 = a1;
              v5 = v36;
              v39 = *&v36[8 * v34 + 32];
              v40 = *(v39 + 16);
              v41 = *(v35 + 2);
              v42 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_102;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v42 > *(v35 + 3) >> 1)
              {
                if (v41 <= v42)
                {
                  v44 = v41 + v40;
                }

                else
                {
                  v44 = v41;
                }

                v35 = sub_2691CAF68(isUniquelyReferenced_nonNull_native, v44, 1, v35);
              }

              a1 = v38;
              v24 = v115;
              v15 = v37;
              if (*(v39 + 16))
              {
                if ((*(v35 + 3) >> 1) - *(v35 + 2) < v40)
                {
                  goto LABEL_105;
                }

                v22 = v2;
                swift_arrayInitWithCopy();

                v2 = v5;
                if (v40)
                {
                  v45 = *(v35 + 2);
                  v46 = __OFADD__(v45, v40);
                  v47 = v45 + v40;
                  if (v46)
                  {
                    goto LABEL_106;
                  }

                  *(v35 + 2) = v47;
                }
              }

              else
              {

                v22 = v2;
                v2 = v5;
                if (v40)
                {
                  goto LABEL_103;
                }
              }

              ++v34;
            }

            v5 = v35;

            v25 = v125;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_2691CB054(0, v25[2] + 1, 1, v25);
            }

            v49 = v25[2];
            v48 = v25[3];
            if (v49 >= v48 >> 1)
            {
              v51 = sub_2691CB054((v48 > 1), v49 + 1, 1, v25);
              v50 = v5;
              v25 = v51;
            }

            else
            {
              v50 = v5;
            }

            v25[2] = v49 + 1;
            v25[v49 + 4] = v50;
            v23 = v123;
            goto LABEL_3;
          }
        }
      }

      ++v23;
      v25 = v125;
    }

    v52 = 0;
    v53 = v25[2];
    v54 = MEMORY[0x277D84F90];
    while (v53 != v52)
    {
      if (v52 >= v25[2])
      {
        goto LABEL_94;
      }

      v55 = v25[v52 + 4];
      v5 = *(v55 + 16);
      v56 = v54[2];
      v57 = &v5[v56];
      if (__OFADD__(v56, v5))
      {
        goto LABEL_95;
      }

      v58 = swift_isUniquelyReferenced_nonNull_native();
      if (!v58 || v57 > v54[3] >> 1)
      {
        if (v56 <= v57)
        {
          v59 = &v5[v56];
        }

        else
        {
          v59 = v56;
        }

        v54 = sub_2691CAF68(v58, v59, 1, v54);
      }

      if (*(v55 + 16))
      {
        if ((v54[3] >> 1) - v54[2] < v5)
        {
          goto LABEL_97;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v60 = v54[2];
          v46 = __OFADD__(v60, v5);
          v61 = &v5[v60];
          if (v46)
          {
            goto LABEL_98;
          }

          v54[2] = v61;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_96;
        }
      }

      ++v52;
    }

    v2 = 0;
    v125 = v54[2];
    LODWORD(v123) = *MEMORY[0x277D5E6B0];
    v120 = (v111 + 8);
    v121 = (v111 + 104);
    v124 = v15 + 8;
    v119 = v15 + 16;
    v62 = v116;
    while (v125 != v2)
    {
      if (v2 >= v54[2])
      {
        goto LABEL_104;
      }

      v63 = v54 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v2;
      v64 = v15;
      v65 = v122;
      v115 = *(v15 + 16);
      v115(v122, v63, v126);
      sub_2691E1084();
      v67 = v117;
      v66 = v118;
      (*v121)(v117, v123, v118);
      v68 = MEMORY[0x26D632A60](v62, v67);
      v69 = *v120;
      (*v120)(v67, v66);
      v69(v62, v66);
      if ((v68 & 1) != 0 || ((sub_2691E10A4(), v70) ? (v5 = v70) : (v5 = 0xE000000000000000), v71 = sub_2691E1654(), , v71 <= 7))
      {

        if (qword_2802F9378 != -1)
        {
          swift_once();
        }

        v77 = v113;
        v78 = __swift_project_value_buffer(v113, qword_2802FBA28);
        v79 = v114;
        v80 = v110;
        (*(v114 + 16))(v110, v78, v77);
        v81 = v109;
        v82 = v126;
        v83 = v115;
        v115(v109, v122, v126);
        v84 = sub_2691E1384();
        v85 = sub_2691E1534();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v125 = v86;
          v87 = v82;
          v88 = swift_slowAlloc();
          v127 = v88;
          *v86 = 136315138;
          v83(v108, v81, v87);
          v89 = sub_2691E13E4();
          v90 = v79;
          v92 = v91;
          v93 = *v124;
          (*v124)(v81, v87);
          v94 = sub_2691B98CC(v89, v92, &v127);

          v95 = v125;
          *(v125 + 4) = v94;
          v96 = v85;
          v97 = v95;
          _os_log_impl(&dword_2691B1000, v84, v96, "SystemCommandsIntent isMediaPlayerParse | Found MP identifier: %s", v95, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v88);
          MEMORY[0x26D6335B0](v88, -1, -1);
          MEMORY[0x26D6335B0](v97, -1, -1);

          (*(v90 + 8))(v110, v113);
          v93(v122, v87);
        }

        else
        {

          v106 = *v124;
          (*v124)(v81, v82);
          (*(v79 + 8))(v80, v77);
          v106(v122, v82);
        }

        return 1;
      }

      (*v124)(v65, v126);
      ++v2;
      v15 = v64;
    }

    if (qword_2802F9378 != -1)
    {
      swift_once();
    }

    v98 = v113;
    v99 = __swift_project_value_buffer(v113, qword_2802FBA28);
    v100 = v114;
    v101 = v112;
    (*(v114 + 16))(v112, v99, v98);
    v102 = sub_2691E1384();
    v103 = sub_2691E1534();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_2691B1000, v102, v103, "SystemCommandsIntent isMediaPlayerParse | No MP identifiers found, parse is not MediaPlayer", v104, 2u);
      MEMORY[0x26D6335B0](v104, -1, -1);
    }

    (*(v100 + 8))(v101, v98);
  }

  else
  {
    if (qword_2802F9378 != -1)
    {
LABEL_107:
      swift_once();
    }

    v72 = __swift_project_value_buffer(v2, qword_2802FBA28);
    v73 = v114;
    (*(v114 + 16))(v5, v72, v2);
    v74 = sub_2691E1384();
    v75 = sub_2691E1534();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2691B1000, v74, v75, "SystemCommandsIntent isMediaPlayerParse | No UserEntities found", v76, 2u);
      MEMORY[0x26D6335B0](v76, -1, -1);
    }

    (*(v73 + 8))(v5, v2);
  }

  return 0;
}