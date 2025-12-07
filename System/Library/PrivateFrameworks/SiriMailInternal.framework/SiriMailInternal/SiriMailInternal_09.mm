uint64_t sub_2676B48F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_10();
  v23 = *(v22 + 184);
  v24 = sub_2675E9CDC();
  sub_2676BB4C8(v24, v25);

  if (v23)
  {

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_13();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v35 = *(v22 + 176);
    v36 = *(v22 + 104);
    v37 = *(v22 + 88);
    v38 = *(v22 + 72);
    __swift_project_boxed_opaque_existential_1(*(v22 + 32), *(*(v22 + 32) + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v39 = swift_allocObject();
    *(v22 + 192) = v39;
    *(v39 + 16) = xmmword_2676CD5C0;
    *(v39 + 32) = v35;
    v40 = v35;
    sub_2676C999C();
    v41 = OUTLINED_FUNCTION_24_12();
    v42(v41);
    OUTLINED_FUNCTION_4_33();
    sub_2676C9D2C();
    sub_2676C9D6C();
    sub_26762D4C8(v38);
    sub_2676C9D3C();
    sub_2676C9D7C();
    sub_2676C9DBC();
    sub_2676C9DAC();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_46_6(v43, v44, v45);
    sub_2676C9D9C();
    sub_2676C90EC();
    sub_2676C90DC();
    v46 = OUTLINED_FUNCTION_40_5();
    v47(v46);
    sub_2676C9D5C();
    sub_2676C9DAC();
    v48 = OUTLINED_FUNCTION_56_3();
    v49(v48);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_46_6(v50, v51, v52);
    (*(v37 + 8))(v36, v36);
    v53 = swift_task_alloc();
    *(v22 + 200) = v53;
    *v53 = v22;
    v53[1] = sub_2676B4BB4;
    OUTLINED_FUNCTION_42_7();
    OUTLINED_FUNCTION_20_13();

    return MEMORY[0x2821BB488](v54);
  }
}

uint64_t sub_2676B4BB4()
{
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_45();
  v4(v3);
  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2676B4D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v24 = *(v12 + 56);

  v13 = OUTLINED_FUNCTION_45();
  v14(v13);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_32_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, v24, a10, a11, a12);
}

uint64_t sub_2676B4DE0()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2676B4EA0(uint64_t a1)
{
  sub_2676C9CCC();
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD40, &unk_2676D5520);
  v4 = OUTLINED_FUNCTION_4_1(v3);
  MEMORY[0x28223BE20](v4);
  v6 = var50 - v5;
  sub_2676BC3A4(a1, v7, v8, v9, v10, v11, v12, v13, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  v14 = sub_2676C9D1C();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v14);
  sub_2675ED6C0(v6, &qword_2801CDD40, &unk_2676D5520);
  if (a1 != 1)
  {
    return sub_2676C9A8C();
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v15 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v15, qword_2801CDC90);
  v16 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_37_10();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_17_3();
    *v18 = 0;
    _os_log_impl(&dword_2675D4000, v16, OS_LOG_TYPE_INFO, "UnsetRelationshipFlow.actionForPromptForNameInput: parse contained no person info, returning .ignore", v18, 2u);
    OUTLINED_FUNCTION_2_5();
  }

  return sub_2676C9A9C();
}

uint64_t sub_2676B527C()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2676C9E6C();
  v0[4] = v3;
  OUTLINED_FUNCTION_1_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_2_0();
  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2676B55D8()
{
  OUTLINED_FUNCTION_3_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2676C90FC();
  v1[10] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v1[11] = v5;
  v1[12] = OUTLINED_FUNCTION_2_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v6);
  v1[13] = OUTLINED_FUNCTION_2_0();
  v7 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v7);
  v1[14] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676C99CC();
  v1[15] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v1[16] = v9;
  v1[17] = OUTLINED_FUNCTION_19();
  v1[18] = swift_task_alloc();
  v10 = sub_2676C9DDC();
  v1[19] = v10;
  OUTLINED_FUNCTION_1_0(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_2_0();
  v12 = sub_2676C9B3C();
  v1[22] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v1[23] = v13;
  v1[24] = OUTLINED_FUNCTION_2_0();
  v14 = sub_2676C916C();
  v1[25] = v14;
  OUTLINED_FUNCTION_4_1(v14);
  v1[26] = OUTLINED_FUNCTION_2_0();
  v15 = sub_2676CAECC();
  v1[27] = v15;
  OUTLINED_FUNCTION_1_0(v15);
  v1[28] = v16;
  v1[29] = OUTLINED_FUNCTION_2_0();
  v17 = sub_2676CB3FC();
  v1[30] = v17;
  OUTLINED_FUNCTION_1_0(v17);
  v1[31] = v18;
  v1[32] = OUTLINED_FUNCTION_2_0();
  v19 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2676B5878()
{
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD28, &qword_2676D54D8);
  v1 = sub_2676C9CFC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[31];
    v4 = v0[28];
    v20 = MEMORY[0x277D84F90];
    sub_2676C2B80(0, v2, 0);
    v5 = v20;
    v4 += 16;
    OUTLINED_FUNCTION_2_12();
    v7 = v1 + v6;
    v18 = *(v4 + 56);
    v19 = v8;
    v9 = (v4 - 8);
    do
    {
      v10 = v0[29];
      v11 = v0[27];
      v19(v10, v7, v11);
      v12 = sub_2676CAD6C();
      OUTLINED_FUNCTION_62_4(v12);
      (*v9)(v10, v11);
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2676C2B80((v13 > 1), v14 + 1, 1);
      }

      *(v20 + 16) = v14 + 1;
      OUTLINED_FUNCTION_2_12();
      (*(v3 + 32))(v20 + v15 + *(v3 + 72) * v14);
      v7 += v18;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v0[34] = v5;
  v16 = swift_task_alloc();
  v0[35] = v16;
  *v16 = v0;
  v16[1] = sub_2676B5A9C;

  return sub_2675EC81C(v5);
}

uint64_t sub_2676B5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_9_3();
  v15 = v14;
  OUTLINED_FUNCTION_8_6();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_0_1();
  *v18 = v17;
  v15[36] = v19;
  v15[37] = v12;

  if (v12)
  {
    v33 = v15[13];

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_32_1();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, v33, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_32_1();

    return MEMORY[0x2822009F8](v29, v30, v31);
  }
}

uint64_t sub_2676B60A0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v2 = v1;
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  v6 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2676B61A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_58_5();
  v17 = *(v16 + 208);
  v18 = *(v16 + 184);
  v19 = *(v16 + 192);
  v21 = *(v16 + 168);
  v20 = *(v16 + 176);
  v22 = *(v16 + 152);
  v23 = *(v16 + 160);
  v33 = *(v16 + 144);
  v34 = *(v16 + 136);
  v35 = *(v16 + 112);
  v36 = *(v16 + 104);
  v37 = *(v16 + 96);

  (*(v23 + 8))(v21, v22);
  sub_267692910(v17);
  (*(v18 + 8))(v19, v20);

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_87_2();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, v33, v34, v35, v36, v37, a14, a15, a16);
}

uint64_t sub_2676B62C0()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676CAECC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void *sub_2676B6364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v13 = *(v12 + 16);
  if (v13 >> 62)
  {
    v14 = sub_2676CC4EC();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_2676C2A30(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v16 = 0;
    v17 = *(v12 + 32);
    v18 = v32;
    v19 = *(v12 + 16) + 32;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x26D5FE0E0](v16, *(v12 + 16));
      }

      else
      {
        v20 = *(v19 + 8 * v16);
      }

      sub_2675E9FD8(v20);
      a9 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2676C2A30((v21 > 1), v22 + 1, 1);
      }

      ++v16;
      *(v18 + 16) = v22 + 1;
      OUTLINED_FUNCTION_2_12();
      (*(v17 + 32))(v18 + v23 + *(v17 + 72) * v22);
    }

    while (v14 != v16);
  }

  OUTLINED_FUNCTION_32_1();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

void sub_2676B64DC()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_7();
  v72 = (v7 - v8);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  v80 = &v70 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  v15 = (&v70 - v14);
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v76 = v17;
  v77 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_2();
  v75 = v19 - v18;
  v20 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_2();
  v26 = v25 - v24;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v27 = sub_2676CBE4C();
  v28 = __swift_project_value_buffer(v27, qword_2801CDC90);
  v29 = *(v22 + 16);
  v78 = v2;
  v29(v26, v2, v20);
  v74 = v28;
  v30 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_31_6();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_5_3();
    v73 = v15;
    v33 = v32;
    v70 = OUTLINED_FUNCTION_41_1();
    v71 = v3;
    v81 = v70;
    *v33 = 136315138;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v34, v35, MEMORY[0x277D5C120]);
    v36 = sub_2676CC56C();
    v38 = v37;
    (*(v22 + 8))(v26, v20);
    sub_2676B0B84(v36, v38, &v81);
    OUTLINED_FUNCTION_30_11();

    *(v33 + 4) = v36;
    _os_log_impl(&dword_2675D4000, v30, v0, "UnsetRelationshipFlowStrategy.actionForPromptForContactDisambiguationInput(_: %s)", v33, 0xCu);
    OUTLINED_FUNCTION_39_7();
    v3 = v71;
    OUTLINED_FUNCTION_2_5();
    v15 = v73;
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v22 + 8))(v26, v20);
  }

  v39 = v75;
  v40 = v78;
  sub_2676C9E5C();
  sub_26763862C();
  v42 = v41;
  (*(v76 + 8))(v39, v77);
  v44 = v79;
  v43 = v80;
  if (v42)
  {
    v45 = sub_2676CBE2C();
    v46 = sub_2676CC23C();
    if (os_log_type_enabled(v45, v46))
    {
      *OUTLINED_FUNCTION_17_3() = 0;
      OUTLINED_FUNCTION_4_18(&dword_2675D4000, v47, v48, "UnsetRelationshipFlow.actionForPromptForContactDisambiguationInput: received user cancellation, returning .cancel");
      OUTLINED_FUNCTION_2_5();
    }

    sub_2676C9A7C();
  }

  else
  {
    type metadata accessor for ContactPromptResponseHandler();
    inited = swift_initStackObject();
    *(inited + 16) = sub_2676BA698;
    *(inited + 24) = 0;
    sub_2675EAB34(v40, v15);
    v50 = *(v5 + 16);
    v50(v43, v15, v3);
    v51 = OUTLINED_FUNCTION_47_5();
    v53 = v52(v51);
    if (v53 == *MEMORY[0x277D5BC88])
    {
      v54 = *(v5 + 8);
      v55 = OUTLINED_FUNCTION_47_5();
      v54(v55);
      sub_2676C9A8C();
      (v54)(v15, v3);
    }

    else
    {
      v56 = v5;
      if (v53 == *MEMORY[0x277D5BC80])
      {
        v57 = sub_2676CBE2C();
        v58 = sub_2676CC23C();
        if (os_log_type_enabled(v57, v58))
        {
          *OUTLINED_FUNCTION_17_3() = 0;
          OUTLINED_FUNCTION_4_18(&dword_2675D4000, v59, v60, "UnsetRelationshipFlow.actionForPromptForContactDisambiguationInput: input contained no actionable selection information, returning .ignore");
          OUTLINED_FUNCTION_2_5();
        }

        sub_2676C9A9C();
        (*(v56 + 8))(v15, v3);
      }

      else
      {
        v73 = v15;
        v50(v44, v15, v3);
        v61 = sub_2676CBE2C();
        sub_2676CC24C();
        OUTLINED_FUNCTION_37_10();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = OUTLINED_FUNCTION_5_3();
          v78 = OUTLINED_FUNCTION_41_1();
          v81 = v78;
          *v63 = 136315138;
          v50(v72, v44, v3);
          OUTLINED_FUNCTION_47_5();
          sub_2676CBFBC();
          v64 = OUTLINED_FUNCTION_25_15();
          (v56)(v64);
          v65 = OUTLINED_FUNCTION_8_10();
          v68 = sub_2676B0B84(v65, v66, v67);

          *(v63 + 4) = v68;
          _os_log_impl(&dword_2675D4000, v61, v15, "UnsetRelationshipFlow.actionForPromptForContactDisambiguationInput: Unknown Interpretable case: %s. Returning .ignore", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          v43 = v80;
          OUTLINED_FUNCTION_2_5();
          OUTLINED_FUNCTION_2_5();
        }

        else
        {

          v69 = OUTLINED_FUNCTION_25_15();
          (v56)(v69);
        }

        sub_2676C9A9C();
        (v56)(v73, v44);
        (v56)(v43, v44);
      }
    }
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B6B54()
{
  OUTLINED_FUNCTION_3_0();
  v0[8] = v1;
  v0[9] = v2;
  v0[7] = v3;
  v4 = sub_2676CAECC();
  v0[10] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[11] = v5;
  v0[12] = OUTLINED_FUNCTION_19();
  v0[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC590, &qword_2676CF308);
  OUTLINED_FUNCTION_4_1(v6);
  v0[14] = OUTLINED_FUNCTION_19();
  v0[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC150, &unk_2676D54F0);
  v0[16] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_2_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD28, &qword_2676D54D8);
  v0[19] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[20] = v10;
  v0[21] = OUTLINED_FUNCTION_19();
  v0[22] = swift_task_alloc();
  v11 = sub_2676C9E6C();
  v0[23] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v0[24] = v12;
  v0[25] = OUTLINED_FUNCTION_19();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2676B6D60()
{
  v104 = v0;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v8 = v0[8];
  v7 = v0[9];
  v9 = sub_2676CBE4C();
  __swift_project_value_buffer(v9, qword_2801CDC90);
  v102 = *(v3 + 16);
  v102(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_37_10();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[22];
  if (v13)
  {
    v100 = v0[20];
    v98 = v0[21];
    v99 = v0[19];
    log = v11;
    v15 = swift_slowAlloc();
    v103[0] = swift_slowAlloc();
    *v15 = 136315394;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v16, v17, MEMORY[0x277D5C120]);
    v97 = v4;
    v18 = sub_2676CC56C();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_53_7();
    v22(v21);
    v23 = sub_2676B0B84(v18, v20, v103);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    v10(v98, v14, v99);
    v24 = sub_2676CBFBC();
    v26 = v25;
    (*(v100 + 8))(v14, v99);
    v27 = sub_2676B0B84(v24, v26, v103);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_2675D4000, log, v97, "UnsetRelationshipFlowStrategy.parseContactDisambiguationResult(input: %s, paginatedItems: %s)", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_33_6();
  }

  else
  {
    v29 = v0[19];
    v28 = v0[20];

    (*(v28 + 8))(v14, v29);
    v30 = OUTLINED_FUNCTION_53_7();
    v31(v30);
  }

  v32 = v0[18];
  v33 = v0[8];
  type metadata accessor for ContactPromptResponseHandler();
  inited = swift_initStackObject();
  *(inited + 16) = sub_2676BA698;
  *(inited + 24) = 0;
  sub_2675EAB34(v33, v32);
  v35 = OUTLINED_FUNCTION_55_4();
  if (v36(v35) == *MEMORY[0x277D5BC88])
  {
    v37 = v0[18];
    v38 = v0[14];
    v39 = v0[10];
    (*(v0[17] + 96))(v37, v0[16]);
    LOBYTE(v37) = *(v37 + 16);
    sub_2676C9CFC();
    sub_2676B76B4();
    v40 = OUTLINED_FUNCTION_43_8();
    sub_2676788E4(v40, v41, v37);

    v42 = OUTLINED_FUNCTION_8_10();
    sub_2675ED65C(v42, v43, v44, v45);
    if (__swift_getEnumTagSinglePayload(v38, 1, v39) != 1)
    {
      v78 = v0[15];
      v79 = v0[12];
      v80 = v0[13];
      v82 = v0[10];
      v81 = v0[11];
      v83 = OUTLINED_FUNCTION_55_4();
      v84(v83);
      sub_2676BA524();
      v85 = OUTLINED_FUNCTION_45();
      v86(v85);
      sub_2675E6A64(v79);
      v88 = v87;
      v0[6] = v87;
      sub_2676C9C9C();

      (*(v81 + 8))(v80, v82);
      sub_2675ED6C0(v78, &qword_2801CC590, &qword_2676CF308);

      OUTLINED_FUNCTION_6_13();
      goto LABEL_18;
    }

    sub_2675ED6C0(v0[14], &qword_2801CC590, &qword_2676CF308);
    v46 = OUTLINED_FUNCTION_35_7();
    (v102)(v46);
    v47 = sub_2676CBE2C();
    sub_2676CC24C();
    OUTLINED_FUNCTION_31_6();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v0[26];
    if (v49)
    {
      OUTLINED_FUNCTION_5_3();
      v51 = OUTLINED_FUNCTION_16_17();
      v103[0] = v51;
      *v38 = 136315138;
      OUTLINED_FUNCTION_0_31();
      v54 = sub_2676BA488(v52, v53, MEMORY[0x277D5C120]);
      OUTLINED_FUNCTION_63_5(v54);
      OUTLINED_FUNCTION_54_8();
      v55 = OUTLINED_FUNCTION_8_26();
      v56(v55);
      v57 = OUTLINED_FUNCTION_43_8();
      sub_2676B0B84(v57, v58, v59);
      OUTLINED_FUNCTION_30_11();

      *(v38 + 4) = v50;
      OUTLINED_FUNCTION_8_16(&dword_2675D4000, v60, v61, "UnsetRelationshipFlow.parseContactDisambiguationResult called with input that could not be resolved as a selection. Cancelling flow as a result. Input: %s");
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();
    }

    else
    {

      v93 = OUTLINED_FUNCTION_8_26();
      v94(v93);
    }

    v95 = v0[15];
    sub_2676C9CCC();
    sub_2676BA488(&qword_2801CD480, MEMORY[0x277D5BF90], MEMORY[0x277D5BF98]);
    swift_allocError();
    sub_2676C9CBC();
    swift_willThrow();

    sub_2675ED6C0(v95, &qword_2801CC590, &qword_2676CF308);
  }

  else
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v62 = OUTLINED_FUNCTION_35_7();
    (v102)(v62);
    v63 = sub_2676CBE2C();
    sub_2676CC24C();
    OUTLINED_FUNCTION_31_6();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v0[25];
    if (v65)
    {
      OUTLINED_FUNCTION_5_3();
      v67 = OUTLINED_FUNCTION_16_17();
      v103[0] = v67;
      *inited = 136315138;
      OUTLINED_FUNCTION_0_31();
      v70 = sub_2676BA488(v68, v69, MEMORY[0x277D5C120]);
      OUTLINED_FUNCTION_63_5(v70);
      OUTLINED_FUNCTION_54_8();
      v71 = OUTLINED_FUNCTION_8_26();
      v72(v71);
      v73 = OUTLINED_FUNCTION_43_8();
      sub_2676B0B84(v73, v74, v75);
      OUTLINED_FUNCTION_30_11();

      *(inited + 4) = v66;
      OUTLINED_FUNCTION_8_16(&dword_2675D4000, v76, v77, "UnsetRelationshipFlow.parseContactDisambiguationResult called with un-interpretable input. actionForPrompt function should ensure this never happens. Input: %s");
      __swift_destroy_boxed_opaque_existential_1(v67);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v90 = OUTLINED_FUNCTION_8_26();
      v91(v90);
    }

    sub_2676BA4D0();
    swift_allocError();
    *v92 = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_15_0();
LABEL_18:

  return v89();
}

uint64_t sub_2676B75CC(uint64_t a1)
{
  sub_2676CA56C();
  if (!v3[3])
  {
    sub_2675ED6C0(v3, &qword_2801CC158, &qword_2676CDDA0);
    return 0;
  }

  sub_2676CA63C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_2676CA33C();

  if (!v3[0])
  {

    return 0;
  }

  v1 = sub_2676CA4FC();

  return v1;
}

void sub_2676B76B4()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v89 = v4;
  v90 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_7();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v82 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = v82 - v18;
  if (v2 == 4)
  {
    v46 = v90 - 1;
    if (v90 < 1)
    {
      v47 = *(v6 + 16);
      v46 = v47 + v90;
      if ((v47 + v90) < 0)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v47 = *(v6 + 16);
    }

    if (v46 < v47)
    {
      (*(v11 + 16))(v8, v6 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v46, v9);
LABEL_44:
      OUTLINED_FUNCTION_20_1();

      __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
      return;
    }

LABEL_39:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v69 = sub_2676CBE4C();
    OUTLINED_FUNCTION_24_2(v69, qword_2801CDC90);

    v70 = sub_2676CBE2C();
    v71 = sub_2676CC24C();

    if (os_log_type_enabled(v70, v71))
    {
      swift_slowAlloc();
      v72 = OUTLINED_FUNCTION_16_17();
      v93 = v72;
      *v0 = 134218242;
      *(v0 + 4) = v46;
      *(v0 + 12) = 2080;
      v73 = OUTLINED_FUNCTION_47_5();
      v74 = MEMORY[0x26D5FDDD0](v73);
      v76 = sub_2676B0B84(v74, v75, &v93);

      *(v0 + 14) = v76;
      _os_log_impl(&dword_2675D4000, v70, v71, "#ResolveRecipientsFlow.DisambiguationResponse: .itemIndex(%ld) outside of range of choices %s", v0, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v72);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();
    }

    goto LABEL_44;
  }

  v88 = v6;
  if (v2 == 1)
  {
    v82[1] = v8;
    v26 = 0;
    v27 = *(v6 + 16);
    v86 = v11 + 16;
    v87 = v27;
    v83 = (v11 + 32);
    v84 = v17;
    v85 = MEMORY[0x277D84F90];
    while (v87 != v26)
    {
      v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v29 = *(v11 + 72);
      (*(v11 + 16))(v16, v6 + v28 + v29 * v26, v9);
      v30 = v9;
      v93 = sub_2676CAD6C();
      v94 = v31;
      v91[0] = v90;
      v91[1] = v89;
      sub_2675E69E4();
      v32 = sub_2676CC37C();

      if (v32)
      {
        v33 = *v83;
        (*v83)(v84, v16, v9);
        v34 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2676C2A30(0, *(v34 + 16) + 1, 1);
          v34 = v92;
        }

        v36 = v34;
        v37 = *(v34 + 16);
        v38 = *(v36 + 24);
        v39 = v37 + 1;
        if (v37 >= v38 >> 1)
        {
          v82[0] = v33;
          v85 = v37 + 1;
          sub_2676C2A30((v38 > 1), v37 + 1, 1);
          v39 = v85;
          v33 = v82[0];
          v36 = v92;
        }

        ++v26;
        *(v36 + 16) = v39;
        v85 = v36;
        v40 = v36 + v28 + v37 * v29;
        v9 = v30;
        v33(v40, v84, v30);
        v6 = v88;
      }

      else
      {
        (*(v11 + 8))(v16, v9);
        ++v26;
        v6 = v88;
      }
    }

    v41 = v85;
    if (*(v85 + 16) > 1uLL)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v42 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v42, qword_2801CDC90);
      v43 = sub_2676CBE2C();
      v44 = sub_2676CC24C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_17_3();
        *v45 = 0;
        _os_log_impl(&dword_2675D4000, v43, v44, "#ResolveRecipientsFlow.DisambiguationResponse: display name matched multiple contacts. Using first.", v45, 2u);
        OUTLINED_FUNCTION_2_5();
      }

      v41 = v85;
    }

    sub_267699004(v41);
  }

  else
  {
    if (v2)
    {
      if (qword_2801CBAA0 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_2801CBAA0);
      }

      v48 = sub_2676CBE4C();
      OUTLINED_FUNCTION_24_2(v48, qword_2801CDC90);
      v50 = v89;
      v49 = v90;
      v51 = OUTLINED_FUNCTION_8_10();
      sub_2676788B8(v51, v52, v2);
      v53 = sub_2676CBE2C();
      v54 = sub_2676CC24C();
      v55 = OUTLINED_FUNCTION_8_10();
      sub_2676788E4(v55, v56, v2);
      if (os_log_type_enabled(v53, v54))
      {
        v57 = OUTLINED_FUNCTION_5_3();
        v58 = v9;
        v59 = OUTLINED_FUNCTION_41_1();
        v91[0] = v59;
        *v57 = 136315138;
        v93 = v49;
        v94 = v50;
        v95 = v2;
        v60 = OUTLINED_FUNCTION_8_10();
        sub_2676788B8(v60, v61, v2);
        v62 = sub_2676CBFBC();
        v64 = sub_2676B0B84(v62, v63, v91);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_2675D4000, v53, v54, "#ResolveRecipientsFlow.DisambiguationResponse: Unable to resolve contact from value %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v9 = v58;
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }
    }

    else
    {
      v20 = 0;
      v21 = *(v6 + 16);
      while (v21 != v20)
      {
        OUTLINED_FUNCTION_2_12();
        (*(v11 + 16))(v19, v88 + v22 + *(v11 + 72) * v20, v9);
        if (sub_2676CADFC() == v90 && v23 == v89)
        {

LABEL_48:
          (*(v11 + 32))(v8, v19, v9);
          OUTLINED_FUNCTION_17_2();
          v68 = v9;
          goto LABEL_49;
        }

        v25 = sub_2676CC59C();

        if (v25)
        {
          goto LABEL_48;
        }

        (*(v11 + 8))(v19, v9);
        ++v20;
      }
    }

    OUTLINED_FUNCTION_5_2();
    v68 = v9;
LABEL_49:
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B7DC8()
{
  OUTLINED_FUNCTION_3_0();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2676C90FC();
  v1[6] = v5;
  OUTLINED_FUNCTION_1_0(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_2_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v7);
  v1[9] = OUTLINED_FUNCTION_2_0();
  v8 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v8);
  v1[10] = OUTLINED_FUNCTION_2_0();
  v9 = sub_2676C99CC();
  v1[11] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v1[12] = v10;
  v1[13] = OUTLINED_FUNCTION_19();
  v1[14] = swift_task_alloc();
  v11 = sub_2676C9DDC();
  v1[15] = v11;
  OUTLINED_FUNCTION_1_0(v11);
  v1[16] = v12;
  v1[17] = OUTLINED_FUNCTION_2_0();
  v13 = sub_2676C9B3C();
  v1[18] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v1[19] = v14;
  v1[20] = OUTLINED_FUNCTION_2_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBFD0, &qword_2676CDEA0);
  OUTLINED_FUNCTION_4_1(v15);
  v1[21] = OUTLINED_FUNCTION_19();
  v1[22] = swift_task_alloc();
  v16 = sub_2676CAECC();
  v1[23] = v16;
  OUTLINED_FUNCTION_1_0(v16);
  v1[24] = v17;
  v1[25] = OUTLINED_FUNCTION_2_0();
  v18 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_2676B8030()
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);
  sub_2675E9FD8(*(v0 + 24));
  v4 = sub_2676CAD6C();
  (*(v2 + 8))(v1, v3);
  v5 = sub_2675E9CDC();
  OUTLINED_FUNCTION_62_4(v5);
  v6 = sub_2676CB3FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  OUTLINED_FUNCTION_62_4(v4);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  v13 = swift_task_alloc();
  *(v0 + 208) = v13;
  *v13 = v0;
  v13[1] = sub_2676B8160;
  OUTLINED_FUNCTION_32_1();

  return sub_2675EC3A0();
}

uint64_t sub_2676B8160()
{
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_8_6();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v9 + 216) = v8;
  *(v9 + 224) = v0;

  v10 = OUTLINED_FUNCTION_55_4();
  sub_2675ED6C0(v10, v11, &qword_2676CDEA0);
  sub_2675ED6C0(v5, &qword_2801CBFD0, &qword_2676CDEA0);
  if (v0)
  {
    v12 = sub_2676B87EC;
  }

  else
  {
    v12 = sub_2676B82CC;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2676B82CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_10();
  v23 = *(v22 + 224);
  sub_2676BD6F0(*(v22 + 24), *(v22 + 32));
  if (v23)
  {

    OUTLINED_FUNCTION_49_4();
    v54 = *(v22 + 64);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_20_13();

    return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, v54, a19, a20, a21, a22);
  }

  else
  {
    v33 = *(v22 + 216);
    v34 = *(v22 + 112);
    v35 = *(v22 + 96);
    v36 = *(v22 + 80);
    __swift_project_boxed_opaque_existential_1(*(v22 + 40), *(*(v22 + 40) + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
    v37 = swift_allocObject();
    *(v22 + 232) = v37;
    *(v37 + 16) = xmmword_2676CD5C0;
    *(v37 + 32) = v33;
    v38 = v33;
    sub_2676C999C();
    v39 = OUTLINED_FUNCTION_24_12();
    v40(v39);
    OUTLINED_FUNCTION_4_33();
    sub_2676C9D2C();
    sub_2676C9D6C();
    sub_26762D4C8(v36);
    sub_2676C9D3C();
    sub_2676C9D7C();
    sub_2676C9DBC();
    sub_2676C9DAC();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_46_6(v41, v42, v43);
    sub_2676C9D9C();
    sub_2676C90EC();
    sub_2676C90DC();
    v44 = OUTLINED_FUNCTION_40_5();
    v45(v44);
    sub_2676C9D5C();
    sub_2676C9DAC();
    v46 = OUTLINED_FUNCTION_56_3();
    v47(v46);
    OUTLINED_FUNCTION_17_2();
    OUTLINED_FUNCTION_46_6(v48, v49, v50);
    (*(v35 + 8))(v34, v34);
    v51 = swift_task_alloc();
    *(v22 + 240) = v51;
    *v51 = v22;
    v51[1] = sub_2676B858C;
    OUTLINED_FUNCTION_42_7();
    OUTLINED_FUNCTION_20_13();

    return MEMORY[0x2821BB488](v52);
  }
}

uint64_t sub_2676B858C()
{
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_45();
  v4(v3);
  v5 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2676B86E8()
{
  v1 = OUTLINED_FUNCTION_8_10();
  v2(v1);

  OUTLINED_FUNCTION_6_13();

  return v3();
}

uint64_t sub_2676B87EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();
  v22 = *(v12 + 224);
  OUTLINED_FUNCTION_49_4();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, v22, a10, a11, a12);
}

void sub_2676B88AC()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  v6 = OUTLINED_FUNCTION_4_1(v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v46 = v10;
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_7();
  v44 = (v11 - v12);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  v45 = &v41 - v14;
  v15 = sub_2676C9E6C();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_2();
  v21 = v20 - v19;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v22 = sub_2676CBE4C();
  OUTLINED_FUNCTION_24_2(v22, qword_2801CDC90);
  (*(v17 + 16))(v21, v2, v15);
  v23 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_37_10();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_5_3();
    v42 = OUTLINED_FUNCTION_41_1();
    v43 = v4;
    v48 = v42;
    *v25 = 136315138;
    OUTLINED_FUNCTION_0_31();
    sub_2676BA488(v26, v27, MEMORY[0x277D5C120]);
    v28 = sub_2676CC56C();
    v29 = v8;
    v31 = v30;
    (*(v17 + 8))(v21, v15);
    v32 = sub_2676B0B84(v28, v31, &v48);
    v8 = v29;

    *(v25 + 4) = v32;
    _os_log_impl(&dword_2675D4000, v23, v0, "UnsetRelationshipFlowStrategy.actionForPromptToSaveRelationship(input: %s)", v25, 0xCu);
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  else
  {

    (*(v17 + 8))(v21, v15);
  }

  v33 = v45;
  sub_2676C9E5C();
  sub_26763862C();
  v35 = v34;
  v36 = *(v46 + 8);
  v37 = v33;
  v38 = v47;
  v36(v37, v47);
  if (v35)
  {
    sub_2676C9A7C();
  }

  else
  {
    v39 = v44;
    sub_2676C9E5C();
    sub_267637F04();
    v36(v39, v38);
    v40 = sub_2676C9C5C();
    LODWORD(v39) = __swift_getEnumTagSinglePayload(v8, 1, v40);
    sub_2675ED6C0(v8, &qword_2801CCCD8, &unk_2676D0C70);
    if (v39 == 1)
    {
      sub_2676C9A9C();
    }

    else
    {
      sub_2676C9A8C();
    }
  }

  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676B8C54()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCCD8, &unk_2676D0C70);
  OUTLINED_FUNCTION_4_1(v3);
  v0[4] = OUTLINED_FUNCTION_2_0();
  v4 = sub_2676C9EBC();
  v0[5] = v4;
  OUTLINED_FUNCTION_1_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C9E6C();
  v0[8] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_19();
  v0[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676B8D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_58_5();
  a23 = v26;
  a24 = v27;
  a22 = v24;
  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_2801CBAA0);
  }

  v28 = v24[9];
  v29 = sub_2676CBE4C();
  __swift_project_value_buffer(v29, qword_2801CDC90);
  v30 = v28 + 16;
  v31 = OUTLINED_FUNCTION_35_7();
  v82 = v32;
  (v32)(v31);
  v33 = sub_2676CBE2C();
  sub_2676CC23C();
  OUTLINED_FUNCTION_31_6();
  v35 = os_log_type_enabled(v33, v34);
  v36 = v24[11];
  v37 = &off_2676CD000;
  if (v35)
  {
    OUTLINED_FUNCTION_5_3();
    a9 = OUTLINED_FUNCTION_16_17();
    a10 = v30;
    a13 = a9;
    *v25 = 136315138;
    OUTLINED_FUNCTION_0_31();
    v40 = sub_2676BA488(v38, v39, MEMORY[0x277D5C120]);
    v41 = OUTLINED_FUNCTION_63_5(v40);
    v43 = v42;
    v44 = OUTLINED_FUNCTION_18_13();
    v81 = v45;
    v45(v44);
    v46 = v41;
    v37 = &off_2676CD000;
    sub_2676B0B84(v46, v43, &a13);
    OUTLINED_FUNCTION_30_11();

    *(v25 + 4) = v36;
    OUTLINED_FUNCTION_8_16(&dword_2675D4000, v47, v48, "UnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse(input: %s)");
    OUTLINED_FUNCTION_39_7();
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_33_6();
  }

  else
  {

    v49 = OUTLINED_FUNCTION_18_13();
    v81 = v50;
    v50(v49);
  }

  v51 = v24[4];
  sub_2676C9E5C();
  sub_267637F04();
  v52 = OUTLINED_FUNCTION_55_4();
  v53(v52);
  v54 = sub_2676C9C5C();
  if (__swift_getEnumTagSinglePayload(v51, 1, v54) == 1)
  {
    v55 = v24[10];
    v56 = v24[8];
    v57 = v24[3];
    sub_2675ED6C0(v24[4], &qword_2801CCCD8, &unk_2676D0C70);
    v82(v55, v57, v56);
    v58 = sub_2676CBE2C();
    sub_2676CC23C();
    OUTLINED_FUNCTION_31_6();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v24[10];
    if (v60)
    {
      OUTLINED_FUNCTION_5_3();
      v82 = OUTLINED_FUNCTION_16_17();
      a13 = v82;
      *v57 = *(v37 + 420);
      OUTLINED_FUNCTION_0_31();
      v64 = sub_2676BA488(v62, v63, MEMORY[0x277D5C120]);
      OUTLINED_FUNCTION_63_5(v64);
      OUTLINED_FUNCTION_54_8();
      v65 = OUTLINED_FUNCTION_18_13();
      v81(v65);
      v66 = OUTLINED_FUNCTION_43_8();
      sub_2676B0B84(v66, v67, v68);
      OUTLINED_FUNCTION_30_11();

      *(v57 + 4) = v61;
      _os_log_impl(&dword_2675D4000, v58, v56, "UnsetRelationshipFlowStrategy.parsePromptToSaveRelationshipResponse: input does not contain confirmationResponse: %s", v57, 0xCu);
      OUTLINED_FUNCTION_39_7();
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_33_6();
    }

    else
    {

      v70 = OUTLINED_FUNCTION_18_13();
      v81(v70);
    }

    OUTLINED_FUNCTION_14_2();
    (*(v71 + 104))();
  }

  else
  {
    OUTLINED_FUNCTION_14_2();
    (*(v69 + 32))();
  }

  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_87_2();

  return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, v81, v82, a13, a14, a15, a16);
}

uint64_t sub_2676B914C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_13_5();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2676B9174()
{
  v1 = *(v0 + 16);
  v2 = sub_2676CA03C();
  v3 = MEMORY[0x277D5C1D8];
  v1[3] = v2;
  v1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_2676CA01C();
  OUTLINED_FUNCTION_6_13();

  return v4();
}

uint64_t sub_2676B9244(char a1)
{
  sub_2676CC64C();
  MEMORY[0x26D5FE320](a1 & 1);
  return sub_2676CC67C();
}

uint64_t sub_2676B92C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B527C();
}

uint64_t sub_2676B9360()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B44E0();
}

uint64_t sub_2676B9408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9EB8](a1, a2, a3, a4);
}

uint64_t sub_2676B94CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9EC0](a1, a2, a3, a4);
}

uint64_t sub_2676B9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9EA8](a1, a2, a3, a4);
}

uint64_t sub_2676B9684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2676B9718;

  return sub_2676B62C0();
}

uint64_t sub_2676B9718()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_3();
  v4 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_2676B9808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B6B54();
}

uint64_t sub_2676B98B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B55D8();
}

uint64_t sub_2676B9960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9EC8](a1, a2, a3, a4);
}

uint64_t sub_2676B9A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9ED0](a1, a2, a3, a4);
}

uint64_t sub_2676B9B00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676B8C54();
}

uint64_t sub_2676B9BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return sub_2676B7DC8();
}

uint64_t sub_2676B9C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26761F624;

  return MEMORY[0x2821B9E78](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26761F624;

  return MEMORY[0x2821B9E80](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26761F624;

  return MEMORY[0x2821B9E90](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26761F624;

  return MEMORY[0x2821B9E88](a1, a2, a3, a4, a5);
}

uint64_t sub_2676B9F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9EA0](a1, a2, a3, a4);
}

uint64_t sub_2676BA044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9EB0](a1, a2, a3, a4);
}

uint64_t sub_2676BA108(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26761F624;

  return sub_2676B914C(a1);
}

uint64_t sub_2676BA1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26761F624;

  return MEMORY[0x2821B9E98](a1, a2, a3, a4);
}

uint64_t sub_2676BA264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2676BA2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2676BA308(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2676BA334(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_2676BA374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2676BA3E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_2676BA420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2676BA488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2676BA4D0()
{
  result = qword_2801CDD30;
  if (!qword_2801CDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDD30);
  }

  return result;
}

unint64_t sub_2676BA524()
{
  result = qword_2801CDD38;
  if (!qword_2801CDD38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801CDD38);
  }

  return result;
}

_BYTE *sub_2676BA568(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2676BA644()
{
  result = qword_2801CDD48;
  if (!qword_2801CDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDD48);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_17()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_62_4(uint64_t a1)
{

  return sub_2676CB3DC();
}

uint64_t OUTLINED_FUNCTION_63_5(uint64_t a1)
{

  return sub_2676CC56C();
}

uint64_t sub_2676BA8EC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = sub_2676CA1EC();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v39 = &v36 - v6;
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - v13;
  v15 = sub_2676CA07C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v36 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v36 - v23;
  sub_2676CA78C();
  (*(v9 + 16))(v11, v43, v8);
  sub_2676CB90C();
  sub_2676CA76C();
  sub_2676CA30C();

  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v25 = v16[4];
  v37 = v24;
  v25(v24, v14, v15);
  v26 = v16[2];
  v26(v22, v24, v15);
  v27 = v38;
  sub_2676CA1DC();
  v26(v19, v22, v15);
  sub_2676CA1CC();
  v43 = v16[1];
  v43(v22, v15);
  v29 = v41;
  v28 = v42;
  v30 = *(v41 + 16);
  v31 = v39;
  v30(v39, v27, v42);
  v32 = v44;
  sub_2676CA26C();
  v30(v40, v31, v28);
  sub_2676CA25C();
  v33 = *(v29 + 8);
  v33(v31, v28);
  v33(v27, v28);
  v43(v37, v15);
  v34 = sub_2676CA27C();
  return __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
}

uint64_t sub_2676BAD84@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v77 = a1;
  v78 = a2;
  v2 = sub_2676CA10C();
  v71 = *(v2 - 8);
  v72 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v70 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v69 = &v61 - v6;
  MEMORY[0x28223BE20](v5);
  v68 = &v61 - v7;
  v76 = sub_2676CA19C();
  v67 = *(v76 - 8);
  v8 = MEMORY[0x28223BE20](v76);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v75 = &v61 - v12;
  v74 = sub_2676CA2DC();
  v80 = *(v74 - 8);
  v13 = MEMORY[0x28223BE20](v74);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v73 = &v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v61 - v24;
  v26 = sub_2676CA07C();
  v79 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v61 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v61 - v33;
  sub_2676CA78C();
  (*(v20 + 16))(v22, v77, v19);
  sub_2676CB90C();
  sub_2676CA76C();
  sub_2676CA30C();

  __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  v35 = v79;
  v36 = *(v79 + 32);
  v63 = v34;
  v36(v34, v25, v26);
  v37 = *(v35 + 16);
  v62 = v26;
  v37(v32, v34, v26);
  v38 = v73;
  sub_2676CA2CC();
  v37(v29, v32, v26);
  sub_2676CA2BC();
  v39 = *(v35 + 8);
  v79 = v35 + 8;
  v77 = v39;
  v39(v32, v26);
  v40 = v80;
  v41 = *(v80 + 16);
  v42 = v38;
  v43 = v74;
  v41(v17, v42, v74);
  v44 = v75;
  sub_2676CA18C();
  v41(v64, v17, v43);
  sub_2676CA17C();
  v45 = *(v40 + 8);
  v80 = v40 + 8;
  v64 = v45;
  (v45)(v17, v43);
  v46 = v67;
  v47 = *(v67 + 16);
  v48 = v65;
  v49 = v44;
  v50 = v76;
  v47(v65, v49, v76);
  v51 = v68;
  sub_2676CA0FC();
  v47(v66, v48, v50);
  sub_2676CA0EC();
  v52 = *(v46 + 8);
  v52(v48, v50);
  v54 = v71;
  v53 = v72;
  v55 = *(v71 + 16);
  v56 = v69;
  v55(v69, v51, v72);
  v57 = v78;
  sub_2676CA26C();
  v55(v70, v56, v53);
  sub_2676CA24C();
  v58 = *(v54 + 8);
  v58(v56, v53);
  v58(v51, v53);
  v52(v75, v76);
  (v64)(v73, v74);
  v77(v63, v62);
  v59 = sub_2676CA27C();
  return __swift_storeEnumTagSinglePayload(v57, 0, 1, v59);
}

void sub_2676BB4C8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_13();
  v258 = v2;
  v275 = v4;
  v276 = v5;
  v257 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD50, &qword_2676D55E0);
  OUTLINED_FUNCTION_4_1(v7);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_1();
  v277 = v9;
  OUTLINED_FUNCTION_7_3();
  v278 = sub_2676CA27C();
  OUTLINED_FUNCTION_3();
  v256 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v13);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_9_1();
  v294 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v16);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9_1();
  v291 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v19);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v22);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v25);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v28);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_22_9(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v31);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v34 = OUTLINED_FUNCTION_4_1(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_4();
  v288 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v295 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v38);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_1();
  v293 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  v42 = OUTLINED_FUNCTION_4_1(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  v289 = v43;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_24_1();
  v290 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  v47 = OUTLINED_FUNCTION_4_1(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_4();
  v287 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_20_14();
  v268 = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v51 = OUTLINED_FUNCTION_4_1(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4();
  v286 = v52;
  OUTLINED_FUNCTION_12_0();
  v54 = MEMORY[0x28223BE20](v53);
  v260 = &v254 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v267 = &v254 - v57;
  MEMORY[0x28223BE20](v56);
  v269 = &v254 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  v60 = OUTLINED_FUNCTION_4_1(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_1_7();
  v261 = v61 - v62;
  MEMORY[0x28223BE20](v63);
  v270 = &v254 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  v66 = OUTLINED_FUNCTION_4_1(v65);
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_1_7();
  v69 = v67 - v68;
  MEMORY[0x28223BE20](v70);
  v272 = &v254 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v73 = OUTLINED_FUNCTION_4_1(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_4();
  v285 = v74;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_10_4();
  v292 = v76;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_11_5(v78);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  OUTLINED_FUNCTION_3();
  v273 = v79;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_11_5(v81);
  v82 = sub_2676CB87C();
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v82);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
  v87 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v90);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v94);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v90);
  OUTLINED_FUNCTION_14_2();
  v102 = *(v101 + 104);
  v262 = v69;
  v102(v69);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v82);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v86);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v90);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v94);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v115, v116, v117, v90);
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v121);
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  v263 = v126;
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v126);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v133);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v134, v135, v136, v126);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v140);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v148);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v157);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  v161 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v164);
  OUTLINED_FUNCTION_19_10();
  sub_2676CA7FC();
  OUTLINED_FUNCTION_17_2();
  v259 = v157;
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v157);
  v168 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v157);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v171, v172, v173, v284);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v174, v175, v176, v283);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v282);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v281);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v280);
  OUTLINED_FUNCTION_5_2();
  v186 = v264;
  __swift_storeEnumTagSinglePayload(v187, v188, v189, v264);
  v190 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v190, v191, v192, v279);

  sub_2676CA7CC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v193, v194, v195, v186);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v196, v197, v198, v266);
  OUTLINED_FUNCTION_5_2();
  v199 = v263;
  __swift_storeEnumTagSinglePayload(v200, v201, v202, v263);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v265);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v206, v207, v208, v199);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v209, v210, v211, v284);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v212, v213, v214, v283);
  v215 = OUTLINED_FUNCTION_3_28();
  v216 = v277;
  __swift_storeEnumTagSinglePayload(v215, v217, v218, v282);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v219, v220, v221, v281);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v222, v223, v224, v280);
  OUTLINED_FUNCTION_5_2();
  v225 = v259;
  __swift_storeEnumTagSinglePayload(v226, v227, v228, v259);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v229, v230, v231, v279);
  v232 = v271;
  OUTLINED_FUNCTION_19_10();
  sub_2676CA7FC();
  OUTLINED_FUNCTION_17_2();
  v233 = v225;
  v234 = v278;
  __swift_storeEnumTagSinglePayload(v235, v236, v237, v233);
  sub_2676CA39C();
  v238 = v232;
  sub_2676BA8EC(v232, v216);
  OUTLINED_FUNCTION_21_3(v216, 1, v234);
  if (v239)
  {
    v240 = v273;
    v241 = v274;
    sub_2675ED6C0(v216, &qword_2801CDD50, &qword_2676D55E0);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v242 = sub_2676CBE4C();
    __swift_project_value_buffer(v242, qword_2801CDC90);
    v243 = sub_2676CBE2C();
    v244 = sub_2676CC24C();
    if (os_log_type_enabled(v243, v244))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_11(&dword_2675D4000, v245, v246, "Error generating NLUSystemPrompted SDA");
      OUTLINED_FUNCTION_30_6();
    }

    sub_2676BA4D0();
    v247 = swift_allocError();
    OUTLINED_FUNCTION_26_11(v247, v248);
    (*(v240 + 8))(v232, v241);
  }

  else
  {
    v249 = v256;
    v250 = v255;
    (*(v256 + 32))(v255, v216, v234);
    sub_2676C9B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
    v251 = OUTLINED_FUNCTION_16_18();
    v252 = OUTLINED_FUNCTION_17_20(v251, xmmword_2676CDE20);
    v253(v252);
    sub_2676C9B1C();
    (*(v249 + 8))(v250, v234);
    (*(v273 + 8))(v238, v274);
  }

  OUTLINED_FUNCTION_28_10();
}

void sub_2676BC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_13();
  a19 = v22;
  a20 = v23;
  v126 = v24;
  v127 = v20;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD40, &unk_2676D5520);
  OUTLINED_FUNCTION_4_1(v25);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v116 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD60, &qword_2676D5620);
  OUTLINED_FUNCTION_4_1(v28);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_22_9(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v31);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_9_1();
  v122 = v33;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v118 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4();
  v117 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_4();
  v119 = v38;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_24_1();
  v120 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC640, &unk_2676CF550);
  OUTLINED_FUNCTION_4_1(v41);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  v44 = &v115 - v43;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC648, &qword_2676CF990);
  OUTLINED_FUNCTION_3();
  v125 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_7();
  v49 = v47 - v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_24_1();
  v124 = v51;
  OUTLINED_FUNCTION_7_3();
  v52 = sub_2676C9EBC();
  OUTLINED_FUNCTION_3();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_1_7();
  v58 = v56 - v57;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_20_14();
  sub_2676C9E5C();
  sub_26763862C();
  v61 = v60;
  v62 = *(v54 + 8);
  v62(v21, v52);
  if ((v61 & 1) == 0)
  {
    sub_2676C9E5C();
    sub_2676371E0();
    if (v63)
    {
      v64 = sub_2676CA77C();

      sub_267698EA0(v64);

      v62(v58, v52);
      v65 = v128;
      OUTLINED_FUNCTION_21_3(v44, 1, v128);
      if (!v89)
      {
        v67 = v124;
        v66 = v125;
        v68 = OUTLINED_FUNCTION_25_16();
        v69(v68);
        (*(v66 + 16))(v49, v67, v65);
        sub_2676CB90C();
        sub_2676BE554(&qword_2801CCA88, MEMORY[0x277D5C770], MEMORY[0x277D5C760]);
        v70 = v121;
        sub_2676CA3FC();
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
        OUTLINED_FUNCTION_21_3(v70, 1, v71);
        if (v89)
        {
          (*(v66 + 8))(v67, v65);
          sub_2675ED6C0(v70, &qword_2801CDD60, &qword_2676D5620);
          v86 = v122;
          v72 = OUTLINED_FUNCTION_3_28();
          __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
        }

        else
        {
          swift_getKeyPath();
          OUTLINED_FUNCTION_11_31();
          sub_2676BE554(v83, v84, MEMORY[0x277D5C6D8]);
          v85 = v122;
          sub_2676CA3EC();
          v86 = v85;

          OUTLINED_FUNCTION_14_2();
          (*(v87 + 8))(v70, v71);
          v88 = v123;
          OUTLINED_FUNCTION_21_3(v85, 1, v123);
          if (!v89)
          {
            v94 = v118;
            v95 = v120;
            (*(v118 + 32))(v120, v86, v88);
            v96 = *(v94 + 16);
            v97 = v119;
            v96(v119, v95, v88);
            v98 = v116;
            sub_2675E9880(v97);
            v99 = sub_2676C9D1C();
            OUTLINED_FUNCTION_21_3(v98, 1, v99);
            if (!v100)
            {
              (*(v94 + 8))(v95, v88);
              (*(v125 + 8))(v124, v65);
              OUTLINED_FUNCTION_14_2();
              (*(v113 + 32))(v126, v98, v99);
              OUTLINED_FUNCTION_17_2();
              v93 = v99;
              goto LABEL_15;
            }

            sub_2675ED6C0(v98, &qword_2801CDD40, &unk_2676D5520);
            if (qword_2801CBAA0 != -1)
            {
              OUTLINED_FUNCTION_0(&qword_2801CBAA0);
            }

            v101 = sub_2676CBE4C();
            __swift_project_value_buffer(v101, qword_2801CDC90);
            v96(v117, v95, v88);
            v102 = sub_2676CBE2C();
            v103 = v95;
            v104 = sub_2676CC24C();
            if (os_log_type_enabled(v102, v104))
            {
              v105 = swift_slowAlloc();
              v121 = v105;
              v122 = swift_slowAlloc();
              a10 = v122;
              *v105 = 136315138;
              v106 = v117;
              v96(v119, v117, v88);
              v107 = sub_2676CBFBC();
              v109 = v108;
              v110 = *(v94 + 8);
              v110(v106, v88);
              v111 = sub_2676B0B84(v107, v109, &a10);

              v112 = v121;
              *(v121 + 1) = v111;
              _os_log_impl(&dword_2675D4000, v102, v104, "UnsetRelationshipFlow: Person entity found in parse, but no usable fields found: %s", v112, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v122);
              OUTLINED_FUNCTION_30_6();
              MEMORY[0x26D5FEA80](v112, -1, -1);

              v110(v120, v88);
              (*(v125 + 8))(v124, v128);
            }

            else
            {

              v114 = *(v94 + 8);
              v114(v117, v88);
              v114(v103, v88);
              (*(v125 + 8))(v124, v65);
            }

LABEL_14:
            sub_2676C9D1C();
            OUTLINED_FUNCTION_5_2();
LABEL_15:
            __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
            goto LABEL_16;
          }

          (*(v66 + 8))(v67, v65);
        }

        sub_2675ED6C0(v86, &qword_2801CC038, &qword_2676D5A40);
        goto LABEL_14;
      }
    }

    else
    {
      v62(v58, v52);
      OUTLINED_FUNCTION_5_2();
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v128);
    }

    sub_2675ED6C0(v44, &qword_2801CC640, &unk_2676CF550);
    sub_2676C9D1C();
    OUTLINED_FUNCTION_5_2();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    goto LABEL_16;
  }

  sub_2676C9CCC();
  sub_2676BE554(&qword_2801CD480, MEMORY[0x277D5BF90], MEMORY[0x277D5BF98]);
  swift_allocError();
  sub_2676C9CBC();
  swift_willThrow();
LABEL_16:
  OUTLINED_FUNCTION_28_10();
}

void sub_2676BCCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_13();
  v21 = v20;
  v23 = v22;
  v129 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3F0, &qword_2676CEC18);
  v26 = OUTLINED_FUNCTION_4_1(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4();
  v154 = v27;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v28);
  v30 = &v121 - v29;
  v153 = sub_2676CA22C();
  OUTLINED_FUNCTION_3();
  v160 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v152 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_4();
  v151 = v35;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_1();
  v150 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_4_1(v38);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_22_9(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  OUTLINED_FUNCTION_4_1(v41);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  v156 = v43;
  OUTLINED_FUNCTION_7_3();
  v147 = sub_2676CA07C();
  OUTLINED_FUNCTION_3();
  v158 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_4();
  v132 = v46;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_4();
  v131 = v48;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v49);
  v51 = &v121 - v50;
  v52 = sub_2676CAECC();
  OUTLINED_FUNCTION_3();
  v54 = v53;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_4();
  v155 = v56;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_24_1();
  v162 = v58;
  OUTLINED_FUNCTION_7_3();
  v149 = sub_2676CA19C();
  OUTLINED_FUNCTION_3();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_5();
  v148 = v62;
  OUTLINED_FUNCTION_7_3();
  v126 = sub_2676CA2AC();
  OUTLINED_FUNCTION_3();
  v124 = v63;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_4();
  v123 = v65;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v66);
  v68 = &v121 - v67;
  v128 = sub_2676CA27C();
  OUTLINED_FUNCTION_3();
  v127 = v69;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v71);
  v72 = *(v23 + 16);
  if (v72)
  {
    v122 = v68;
    v161 = v51;
    v163 = MEMORY[0x277D84F90];
    v159 = v72;
    sub_2676C2B28(0, v72, 0);
    v73 = v163;
    v74 = v23 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
    v75 = sub_2676CA78C();
    v77 = *(v54 + 16);
    v76 = v54 + 16;
    v145 = v77;
    v146 = v75;
    v140 = (v158 + 16);
    v130 = v158 + 32;
    v138 = v160 + 32;
    v137 = v160 + 16;
    v136 = v160 + 8;
    v144 = (v76 - 8);
    v135 = v60 + 32;
    v134 = *(v76 + 56);
    v143 = v30;
    v142 = v52;
    v141 = v76;
    v139 = v60;
    v133 = (v158 + 8);
    while (1)
    {
      v160 = v73;
      v78 = v162;
      v158 = v74;
      v79 = v74;
      v80 = v52;
      v81 = v21;
      v82 = v52;
      v83 = v145;
      v145(v162, v79, v80);
      v84 = v155;
      v83(v155, v78, v82);
      sub_2675E748C(v84);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
      sub_2676CA39C();
      sub_2676CB90C();
      sub_2676CA76C();
      v89 = v161;
      sub_2676CA30C();
      if (v81)
      {
        break;
      }

      v90 = *v140;
      v91 = v147;
      (*v140)(v30, v89, v147);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
      v95 = v151;
      sub_2676CA21C();
      v96 = v154;
      sub_2675ED65C(v30, v154, &qword_2801CC3F0, &qword_2676CEC18);
      OUTLINED_FUNCTION_21_3(v96, 1, v91);
      v157 = 0;
      if (v97)
      {
        v98 = OUTLINED_FUNCTION_25_16();
        sub_2675ED6C0(v98, v99, &qword_2676CEC18);
        sub_2675ED6C0(v96, &qword_2801CC3F0, &qword_2676CEC18);
        v104 = v133;
      }

      else
      {
        OUTLINED_FUNCTION_23_12();
        v100 = v131;
        v101(v131, v96, v91);
        v90(v132, v100, v91);
        sub_2676CA20C();
        v102 = OUTLINED_FUNCTION_25_16();
        sub_2675ED6C0(v102, v103, &qword_2676CEC18);
        v104 = v133;
        (*v133)(v100, v91);
      }

      OUTLINED_FUNCTION_23_12();
      v105 = v150;
      v106 = v153;
      v107(v150, v95, v153);
      v108 = v148;
      sub_2676CA18C();
      OUTLINED_FUNCTION_23_12();
      v109(v152, v105, v106);
      sub_2676CA16C();
      OUTLINED_FUNCTION_23_12();
      v110(v105, v106);
      (*v104)(v161, v91);
      v52 = v142;
      (*v144)(v162, v142);
      v73 = v160;
      v164 = v160;
      v112 = *(v160 + 16);
      v111 = *(v160 + 24);
      v113 = v158;
      if (v112 >= v111 >> 1)
      {
        sub_2676C2B28((v111 > 1), v112 + 1, 1);
        v73 = v164;
      }

      *(v73 + 16) = v112 + 1;
      (*(v139 + 32))(v73 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v112, v108, v149);
      v74 = v113 + v134;
      v97 = v159-- == 1;
      v21 = v157;
      v30 = v143;
      if (v97)
      {
        v68 = v122;
        goto LABEL_14;
      }
    }

    (*v144)(v162, v82);
  }

  else
  {
LABEL_14:
    sub_2676CA29C();
    sub_2676CA28C();
    v114 = v68;
    v115 = v125;
    sub_2676CA26C();
    v116 = v124;
    v117 = v126;
    (*(v124 + 16))(v123, v114, v126);
    sub_2676CA23C();
    (*(v116 + 8))(v114, v117);
    sub_2676C9B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
    v118 = v127;
    v119 = OUTLINED_FUNCTION_16_18();
    *(v119 + 16) = xmmword_2676CDE20;
    v120 = v128;
    (*(v118 + 16))(v119 + v115, v115, v128);
    sub_2676C9B1C();
    (*(v118 + 8))(v115, v120);
  }

  OUTLINED_FUNCTION_28_10();
}

void sub_2676BD6F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_13();
  v207 = v2;
  v228 = v4;
  v6 = v5;
  v206 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD50, &qword_2676D55E0);
  OUTLINED_FUNCTION_4_1(v8);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v231 = v10;
  OUTLINED_FUNCTION_7_3();
  v230 = sub_2676CA27C();
  OUTLINED_FUNCTION_3();
  v205 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_11_5(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD58, &qword_2676D55E8);
  OUTLINED_FUNCTION_3();
  v232 = v15;
  v233 = v14;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_1();
  v229 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC030, &qword_2676CDAA0);
  OUTLINED_FUNCTION_4_1(v18);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC040, &qword_2676CDAA8);
  OUTLINED_FUNCTION_4_1(v20);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v227 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC048, &qword_2676CDAB0);
  OUTLINED_FUNCTION_4_1(v23);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v242 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC050, &unk_2676D0C20);
  OUTLINED_FUNCTION_4_1(v26);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  v226 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC058, &unk_2676D0C50);
  OUTLINED_FUNCTION_4_1(v29);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_1();
  v240 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC060, &qword_2676CDAB8);
  OUTLINED_FUNCTION_4_1(v32);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_1();
  v239 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_4_1(v35);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_9_1();
  v238 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v39 = OUTLINED_FUNCTION_4_1(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4();
  v237 = v40;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_24_1();
  v235 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC070, &qword_2676CDAC0);
  OUTLINED_FUNCTION_4_1(v43);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v44);
  v214 = &v204 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC080, &unk_2676D3580);
  OUTLINED_FUNCTION_4_1(v46);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v47);
  v217 = &v204 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC088, &qword_2676CDAC8);
  v50 = OUTLINED_FUNCTION_4_1(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_7();
  v216 = v51 - v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_20_14();
  v218 = v3;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC090, &qword_2676CDAD0);
  OUTLINED_FUNCTION_4_1(v54);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v55);
  v219 = &v204 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC098, &qword_2676CDAD8);
  OUTLINED_FUNCTION_4_1(v57);
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v58);
  v60 = &v204 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v62 = OUTLINED_FUNCTION_4_1(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_4();
  v234 = v63;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_22_9(v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  v67 = OUTLINED_FUNCTION_4_1(v66);
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_1_7();
  v215 = v68 - v69;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_24_1();
  v224 = v71;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v241 = v72;
  OUTLINED_FUNCTION_7_2();
  MEMORY[0x28223BE20](v73);
  v223 = &v204 - v74;
  sub_2675E82AC(v6);
  KeyPath = swift_getKeyPath();
  v75 = *MEMORY[0x277D5C6E0];
  v76 = sub_2676CB87C();
  OUTLINED_FUNCTION_14_2();
  v78 = *(v77 + 104);
  v221 = v60;
  v78(v60, v75, v76);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B0, &qword_2676CDAE8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0B8, &qword_2676CDAF0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C0, &qword_2676CDAF8);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v86);
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  v97 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D0, &qword_2676CDB08);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v105);
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E0, &qword_2676CDB10);
  v116 = OUTLINED_FUNCTION_3_28();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v119);
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0E8, &qword_2676CDB18);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v123);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F0, &qword_2676CDB20);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v124, v125, v126, v127);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0F8, &unk_2676D2AA0);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC100, &qword_2676CDB28);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v135);
  OUTLINED_FUNCTION_5_2();
  v136 = v222;
  __swift_storeEnumTagSinglePayload(v137, v138, v139, v222);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC110, &qword_2676CDB30);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
  OUTLINED_FUNCTION_19_10();
  sub_2676CA7FC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v144, v145, v146, v136);
  v147 = sub_2675E9CDC();
  v237 = v148;
  v238 = v147;
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v149, v150, v151, v136);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v152, v153, v154, v213);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v155, v156, v157, v212);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v158, v159, v160, v211);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v161, v162, v163, v210);
  OUTLINED_FUNCTION_5_2();
  __swift_storeEnumTagSinglePayload(v164, v165, v166, v209);
  OUTLINED_FUNCTION_5_2();
  v167 = v220;
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v220);
  OUTLINED_FUNCTION_5_2();
  v171 = v223;
  __swift_storeEnumTagSinglePayload(v172, v173, v174, v208);
  v175 = v236;
  v176 = v229;
  sub_2676CA7CC();
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v177, v178, v179, v167);
  OUTLINED_FUNCTION_11_31();
  sub_2676BE554(v180, v181, MEMORY[0x277D5C6D8]);
  sub_2676BE554(&qword_2801CC310, MEMORY[0x277D5C6A0], MEMORY[0x277D5C688]);
  v182 = v231;
  sub_2676CA88C();
  (*(v241 + 16))(v175, v171, v136);
  OUTLINED_FUNCTION_17_2();
  __swift_storeEnumTagSinglePayload(v183, v184, v185, v136);
  sub_2676CA39C();
  sub_2676BAD84(v176, v182);
  v186 = v230;
  OUTLINED_FUNCTION_21_3(v182, 1, v230);
  if (v187)
  {
    v189 = v232;
    v188 = v233;
    sub_2675ED6C0(v182, &qword_2801CDD50, &qword_2676D55E0);
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v190 = sub_2676CBE4C();
    __swift_project_value_buffer(v190, qword_2801CDC90);
    v191 = sub_2676CBE2C();
    v192 = sub_2676CC24C();
    if (os_log_type_enabled(v191, v192))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_27_11(&dword_2675D4000, v193, v194, "Error generating NLUSystemOffered SDA");
      OUTLINED_FUNCTION_30_6();
    }

    sub_2676BA4D0();
    v195 = swift_allocError();
    OUTLINED_FUNCTION_26_11(v195, v196);
    (*(v189 + 8))(v176, v188);
    (*(v241 + 8))(v171, v136);
  }

  else
  {
    v197 = v205;
    v198 = v204;
    (*(v205 + 32))(v204, v182, v186);
    sub_2676C9B2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CCAD8, &qword_2676D0380);
    v199 = OUTLINED_FUNCTION_16_18();
    v200 = OUTLINED_FUNCTION_17_20(v199, xmmword_2676CDE20);
    v201(v200);
    sub_2676C9B1C();
    (*(v197 + 8))(v198, v186);
    (*(v232 + 8))(v176, v233);
    v202 = OUTLINED_FUNCTION_25_16();
    v203(v202);
  }

  OUTLINED_FUNCTION_28_10();
}

uint64_t sub_2676BE4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC318, &qword_2676CEA38);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2675ED65C(a1, &v5 - v3, &qword_2801CC318, &qword_2676CEA38);
  return sub_2676CB8FC();
}

uint64_t sub_2676BE554(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_16_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_26_11(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_27_11(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_2676BE6B4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_15(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  v0[9] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[10] = v10;
  v11 = OUTLINED_FUNCTION_19();
  v12 = OUTLINED_FUNCTION_70_4(v11);
  OUTLINED_FUNCTION_55_5(v12);
  v13 = sub_2676C8BFC();
  v0[13] = v13;
  OUTLINED_FUNCTION_1_0(v13);
  v0[14] = v14;
  v0[15] = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_13_5();
  return OUTLINED_FUNCTION_22_5(v15, v16, v17);
}

uint64_t sub_2676BEA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v13;
  *(v8 + 153) = a7;
  *(v8 + 152) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_2676C8BFC();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676BE7A4, 0, 0);
}

uint64_t sub_2676BEBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v13;
  *(v8 + 153) = a7;
  *(v8 + 152) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC3D8, &unk_2676CEC00);
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  v10 = sub_2676C8BFC();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2676BED2C, 0, 0);
}

uint64_t sub_2676BF014()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2676BF158()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2676BF2B8()
{
  OUTLINED_FUNCTION_3_0();
  v0[5] = v1;
  v2 = sub_2676C90FC();
  v0[6] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v0[9] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v5);
  v0[10] = OUTLINED_FUNCTION_2_0();
  v6 = sub_2676C99CC();
  v0[11] = v6;
  OUTLINED_FUNCTION_1_0(v6);
  v0[12] = v7;
  v0[13] = OUTLINED_FUNCTION_19();
  v0[14] = swift_task_alloc();
  v8 = sub_2676C9DDC();
  v0[15] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[16] = v9;
  v0[17] = OUTLINED_FUNCTION_2_0();
  v10 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v10);
  v0[18] = OUTLINED_FUNCTION_2_0();
  v11 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2676BF46C()
{
  OUTLINED_FUNCTION_3_0();
  v1 = type metadata accessor for MailCommonCATsSimple(0);
  OUTLINED_FUNCTION_74_2(v1);
  *(v0 + 152) = OUTLINED_FUNCTION_51_7();
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_58_6(v2);

  return sub_26760D2B0();
}

uint64_t sub_2676BF50C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_7();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  v3[21] = v0;

  if (v0)
  {
    v8 = sub_2676BFA30;
  }

  else
  {

    v8 = sub_2676BF618;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2676BF618()
{
  OUTLINED_FUNCTION_59_5();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v19 = v0[6];
  v20 = v0[14];
  sub_2676C997C();
  v6 = OUTLINED_FUNCTION_9_30();
  v7(v6);
  OUTLINED_FUNCTION_6_23();
  sub_2676C9D6C();
  sub_26762D4C8(v3);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  OUTLINED_FUNCTION_23_13(v8, v9, v10, v8);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  (*(v5 + 8))(v4, v19);
  OUTLINED_FUNCTION_18_13();
  sub_2676C9D5C();
  (*(v2 + 8))(v20, v1);
  if (qword_2801CBA70 != -1)
  {
    swift_once();
  }

  v11 = v0[3];
  v0[22] = v11;
  v12 = *(qword_2801D3CD0 + 160);
  v13 = *(qword_2801D3CD0 + 168);
  v0[23] = v13;
  sub_2676C9B9C();
  swift_allocObject();

  v0[24] = sub_2676C9B8C();
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v0[25] = v14;
  *v14 = v15;
  v14[1] = sub_2676BF854;
  v16 = v0[17];
  v17 = v0[5];

  return sub_2676916BC(v17, v11, v16, 0xD000000000000014, 0x80000002676D6080, v12, v13);
}

uint64_t sub_2676BF854()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676BF970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();

  v13 = OUTLINED_FUNCTION_67_3();
  v14(v13);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2676BFA30()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2676BFAF0()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v5 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v5);
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v7 = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_76_1(v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[10] = v9;
  v10 = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_70_4(v10);
  OUTLINED_FUNCTION_55_5(v11);
  v12 = sub_2676C9DDC();
  v0[13] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[14] = v13;
  v14 = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_78_5(v14);
  OUTLINED_FUNCTION_4_1(v15);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2676BFC7C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 24);
  v2 = type metadata accessor for MailCommonCATsSimple(0);
  OUTLINED_FUNCTION_74_2(v2);
  v3 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v3);
  v4 = *v1;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_45_7(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_58_6(v6);

  return sub_26760CF90(v4);
}

uint64_t sub_2676BFD28()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 152) = v0;

  if (!v0)
  {

    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676BFE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_63_6();
  OUTLINED_FUNCTION_59_5();
  v18 = v17[9];
  v19 = v17[10];
  v20 = v17[8];
  v42 = v17[7];
  v43 = v17[12];
  sub_2676C99AC();
  v21 = OUTLINED_FUNCTION_9_30();
  v22(v21);
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_75_3(43, v16 | 0x8000000000000000);
  sub_26762D4C8(v20);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v23 = sub_2676C9B3C();
  OUTLINED_FUNCTION_23_13(v23, v24, v25, v23);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v26 = OUTLINED_FUNCTION_13_22();
  v27(v26);
  OUTLINED_FUNCTION_18_13();
  sub_2676C9D5C();
  (*(v19 + 8))(v43, v18);
  OUTLINED_FUNCTION_9_27(&unk_2676D57E0);
  v44 = v28;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v17[21] = v29;
  *v29 = v30;
  v29[1] = sub_2676BFFD0;
  OUTLINED_FUNCTION_24_13();
  OUTLINED_FUNCTION_48_3();

  return v39(v31, v32, v33, v34, v35, v36, v37, v38, v42, v43, v44, a12, a13, a14, a15, a16);
}

uint64_t sub_2676BFFD0()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676C00B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676BFAF0();
}

uint64_t sub_2676C014C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v5 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v5);
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v7 = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_76_1(v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[10] = v9;
  v10 = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_70_4(v10);
  OUTLINED_FUNCTION_55_5(v11);
  v12 = sub_2676C9DDC();
  v0[13] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[14] = v13;
  v14 = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_78_5(v14);
  OUTLINED_FUNCTION_4_1(v15);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2676C02D8()
{
  OUTLINED_FUNCTION_3_0();
  v0 = type metadata accessor for MailCommonCATsSimple(0);
  OUTLINED_FUNCTION_74_2(v0);
  v1 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_45_7(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_6(v3);

  return sub_26760CEEC();
}

uint64_t sub_2676C0370()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 152) = v0;

  if (!v0)
  {

    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676C05C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C014C();
}

uint64_t sub_2676C065C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v5 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v5);
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v7 = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_76_1(v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[10] = v9;
  v10 = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_70_4(v10);
  OUTLINED_FUNCTION_55_5(v11);
  v12 = sub_2676C9DDC();
  v0[13] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[14] = v13;
  v14 = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_78_5(v14);
  OUTLINED_FUNCTION_4_1(v15);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2676C07E8()
{
  OUTLINED_FUNCTION_3_0();
  v0 = type metadata accessor for MailCommonCATsSimple(0);
  OUTLINED_FUNCTION_74_2(v0);
  v1 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_45_7(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_6(v3);

  return sub_26760D20C();
}

uint64_t sub_2676C0880()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 152) = v0;

  if (!v0)
  {

    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676C0AD4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C065C();
}

uint64_t sub_2676C0B6C()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v5 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v5);
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v7 = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_76_1(v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[10] = v9;
  v10 = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_70_4(v10);
  OUTLINED_FUNCTION_55_5(v11);
  v12 = sub_2676C9DDC();
  v0[13] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[14] = v13;
  v14 = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_78_5(v14);
  OUTLINED_FUNCTION_4_1(v15);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v16 = sub_2676C9C4C();
  OUTLINED_FUNCTION_4_1(v16);
  v0[17] = OUTLINED_FUNCTION_2_0();
  v17 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2676C0D18()
{
  OUTLINED_FUNCTION_44();
  sub_2676CAF5C();
  if (sub_2676CAF3C())
  {
    sub_2676CAF2C();
  }

  sub_2676CB45C();
  sub_2676C9C3C();
  v1 = sub_2676CB44C();
  v0[18] = v1;
  type metadata accessor for MailCommonCATsSimple(0);
  sub_2676CB47C();
  v0[19] = sub_2676CB42C();

  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_58_6(v2);

  return sub_26760CA74(v1);
}

uint64_t sub_2676C0E60()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 168) = v0;

  if (!v0)
  {

    *(v4 + 176) = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676C10CC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676C11B0()
{
  OUTLINED_FUNCTION_59_5();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  OUTLINED_FUNCTION_15_0();

  return v4();
}

uint64_t sub_2676C12A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_2676C136C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C0B6C();
}

uint64_t sub_2676C1404()
{
  OUTLINED_FUNCTION_3_0();
  v2 = OUTLINED_FUNCTION_77_2(v1);
  v0[4] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[5] = v3;
  v0[6] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v5 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v5);
  v6 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v6);
  v7 = OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_76_1(v7);
  v0[9] = v8;
  OUTLINED_FUNCTION_1_0(v8);
  v0[10] = v9;
  v10 = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_70_4(v10);
  OUTLINED_FUNCTION_55_5(v11);
  v12 = sub_2676C9DDC();
  v0[13] = v12;
  OUTLINED_FUNCTION_1_0(v12);
  v0[14] = v13;
  v14 = OUTLINED_FUNCTION_2_0();
  v15 = OUTLINED_FUNCTION_78_5(v14);
  OUTLINED_FUNCTION_4_1(v15);
  v0[16] = OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2676C1590()
{
  OUTLINED_FUNCTION_3_0();
  MailCATsSimple = type metadata accessor for ReadMailCATsSimple(0);
  OUTLINED_FUNCTION_74_2(MailCATsSimple);
  v1 = OUTLINED_FUNCTION_51_7();
  OUTLINED_FUNCTION_79_4(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_45_7(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_58_6(v3);

  return sub_267654710();
}

uint64_t sub_2676C1628()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 152) = v0;

  if (!v0)
  {

    *(v4 + 160) = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676C187C()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676C1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();

  v13 = OUTLINED_FUNCTION_67_3();
  v14(v13);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2676C1A20()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

uint64_t sub_2676C1AE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26761F624;

  return sub_2676C1404();
}

uint64_t sub_2676C1B78()
{
  OUTLINED_FUNCTION_3_0();
  v0[2] = v1;
  v2 = sub_2676C90FC();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_0(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_2_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801CCB20, &qword_2676CDA80);
  OUTLINED_FUNCTION_4_1(v4);
  v0[6] = OUTLINED_FUNCTION_2_0();
  v5 = sub_2676CAF8C();
  OUTLINED_FUNCTION_4_1(v5);
  v6 = OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_64_5(v6);
  v7 = sub_2676C99CC();
  v0[8] = v7;
  OUTLINED_FUNCTION_1_0(v7);
  v0[9] = v8;
  v0[10] = OUTLINED_FUNCTION_19();
  v0[11] = swift_task_alloc();
  v9 = sub_2676C9DDC();
  v0[12] = v9;
  OUTLINED_FUNCTION_1_0(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_2_0();
  v11 = sub_2676CB48C();
  OUTLINED_FUNCTION_4_1(v11);
  v0[15] = OUTLINED_FUNCTION_2_0();
  v12 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2676C1D28()
{
  OUTLINED_FUNCTION_3_0();
  v1 = type metadata accessor for MailCommonCATsSimple(0);
  OUTLINED_FUNCTION_74_2(v1);
  *(v0 + 128) = OUTLINED_FUNCTION_51_7();
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_58_6(v2);

  return sub_26760CD50();
}

uint64_t sub_2676C1DC8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_3_5();
  v4 = v3;
  OUTLINED_FUNCTION_2_7();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_0_1();
  *v7 = v6;
  *(v4 + 144) = v0;

  if (!v0)
  {

    *(v4 + 152) = v1;
  }

  OUTLINED_FUNCTION_31_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2676C1ED4(uint64_t a1)
{
  v3 = v2[8];
  v4 = v2[9];
  v5 = v2[7];
  v26 = v2[6];
  v27 = v2[11];
  v29 = v2[19];
  sub_2676C99AC();
  v6 = OUTLINED_FUNCTION_9_30();
  v7(v6);
  OUTLINED_FUNCTION_6_23();
  OUTLINED_FUNCTION_75_3(23, v1 | 0x8000000000000000);
  sub_26762D4C8(v5);
  sub_2676C9D3C();
  sub_2676C9D7C();
  sub_2676C9DBC();
  sub_2676C9DAC();
  v8 = sub_2676C9B3C();
  OUTLINED_FUNCTION_22_10(v8, v9, v10, v11, v12, v13, v14, v15, v25, v26);
  sub_2676C9D9C();
  sub_2676C90EC();
  sub_2676C90DC();
  v16 = OUTLINED_FUNCTION_13_22();
  v17(v16);
  OUTLINED_FUNCTION_18_13();
  sub_2676C9D5C();
  (*(v4 + 8))(v27, v3);
  sub_2676C9B9C();
  swift_allocObject();
  v2[20] = sub_2676C9B8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC5A0, &qword_2676CD620);
  v18 = swift_allocObject();
  v2[21] = v18;
  *(v18 + 16) = xmmword_2676CD5C0;
  *(v18 + 32) = v29;
  v28 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v19 = v29;
  swift_task_alloc();
  OUTLINED_FUNCTION_15_3();
  v2[22] = v20;
  *v20 = v21;
  v20[1] = sub_2676C20DC;
  v22 = v2[14];
  v23 = v2[2];

  return v28(v23, v18, v22);
}

uint64_t sub_2676C20DC()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_9_3();
  v1 = *v0;
  OUTLINED_FUNCTION_0_1();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_13_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2676C21F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_44();

  v13 = OUTLINED_FUNCTION_67_3();
  v14(v13);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_32_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2676C22B8()
{

  OUTLINED_FUNCTION_15_0();

  return v0();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2676C23D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267605CFC;

  return sub_2676C1B78();
}

char *sub_2676C24CC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_19(a3, result);
  }

  return result;
}

char *sub_2676C2504(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_19(a3, result);
  }

  return result;
}

char *sub_2676C2544(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_12_19(a3, result);
  }

  return result;
}

uint64_t sub_2676C25EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_80_2();
  if (v10 && (result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), v6 + *(*(result - 8) + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_34_11();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_34_11();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

uint64_t sub_2676C26BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_80_2();
  if (v8 && (result = a4(0), v5 + *(*(result - 8) + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_34_11();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_34_11();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void *sub_2676C2778(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC508, &qword_2676CF260, MEMORY[0x277CBA2E0], MEMORY[0x277CBA2E0]);
  *v3 = result;
  return result;
}

void *sub_2676C27D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC500, &qword_2676D57A0, MEMORY[0x277D5CA58], MEMORY[0x277D5CA58]);
  *v3 = result;
  return result;
}

void *sub_2676C2828(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2D70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2676C2848(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC580, &qword_2676CF270, MEMORY[0x277D56040], MEMORY[0x277D56040]);
  *v3 = result;
  return result;
}

void *sub_2676C28A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CDD80, &qword_2676D57D0, MEMORY[0x277D55FF8], MEMORY[0x277D55FF8]);
  *v3 = result;
  return result;
}

void *sub_2676C28F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC548, &qword_2676CF2B0, MEMORY[0x277D5FEB0], MEMORY[0x277D5FEB0]);
  *v3 = result;
  return result;
}

void *sub_2676C2950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60_4();
  result = sub_2676C2BD8(v4, v5, v6, v7, v8, v9, v10, MEMORY[0x277CBA208]);
  *v3 = result;
  return result;
}

void *sub_2676C2998(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2EDC(a1, a2, a3, *v3, &qword_2801CC528, &qword_2676CF290, &qword_2801CC3D8, &unk_2676CEC00);
  *v3 = result;
  return result;
}

void *sub_2676C29D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CDD88, &unk_2676D5800, MEMORY[0x277D5C908], MEMORY[0x277D5C908]);
  *v3 = result;
  return result;
}

void *sub_2676C2A30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC518, &qword_2676CF278, MEMORY[0x277D56178], MEMORY[0x277D56178]);
  *v3 = result;
  return result;
}

void *sub_2676C2A88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2EDC(a1, a2, a3, *v3, &qword_2801CDD68, &unk_2676D57A8, &qword_2801CC168, &unk_2676CF510);
  *v3 = result;
  return result;
}

char *sub_2676C2AC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C3078(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2676C2AE8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C3180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2676C2B08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C3288(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2676C2B28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CC578, &qword_2676CF2E8, MEMORY[0x277D5DB80], MEMORY[0x277D5DB80]);
  *v3 = result;
  return result;
}

void *sub_2676C2B80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2676C2BD8(a1, a2, a3, *v3, &qword_2801CDD90, &qword_2676D5950, MEMORY[0x277D55C48], MEMORY[0x277D55C48]);
  *v3 = result;
  return result;
}

void *sub_2676C2BD8(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  if (v14 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_1_0(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_68_3();
  result = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v8) == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v8) / v19);
LABEL_19:
  v22 = *(a7(0) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_2676C26BC(a4 + v23, v15, v20 + v23, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_81_4();
  }

  return v20;
}

void *sub_2676C2D70(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD70, &qword_2676D57B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD78, &unk_2676D57C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2676C2EDC(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v12 = result;
  if (a3)
  {
    v13 = *(a4 + 24);
    v14 = v13 >> 1;
    if ((v13 >> 1) < a2)
    {
      if (v14 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v14 = a2;
      }
    }
  }

  else
  {
    v14 = a2;
  }

  v15 = *(a4 + 16);
  if (v14 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v14;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  OUTLINED_FUNCTION_1_0(v17);
  v19 = *(v18 + 72);
  v20 = OUTLINED_FUNCTION_68_3();
  result = _swift_stdlib_malloc_size(v20);
  if (!v19)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v8) == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_24;
  }

  v20[2] = v15;
  v20[3] = 2 * ((result - v8) / v19);
LABEL_19:
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v12)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_2676C25EC(a4 + v23, v15, v20 + v23, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_81_4();
  }

  return v20;
}

char *sub_2676C3078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC510, &qword_2676CF268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2676C3180(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBB78, &qword_2676CD280);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2676C3288(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CD188, &unk_2676D19D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC9B0, &unk_2676CFE50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2676C33C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2676C3404(uint64_t result, int a2, int a3)
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

uint64_t sub_2676C3458(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2676C3498(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_5_23()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_6_23()
{

  return sub_2676C9D2C();
}

void *OUTLINED_FUNCTION_7_26()
{

  return sub_2676C2950(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_18_14(uint64_t a1)
{
  *(v2 + 24) = *(v1 + 96);

  return sub_2676C997C();
}

void *OUTLINED_FUNCTION_19_11@<X0>(unint64_t a1@<X8>)
{

  return sub_2676C2950(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_20_15()
{
  v3 = *(v0 + 96);

  return sub_26761D218(v1, v3);
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_storeEnumTagSinglePayload(a10, 1, 1, a1);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_23_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);

  return sub_2676C9D8C();
}

uint64_t OUTLINED_FUNCTION_41_7(uint64_t a1)
{
  *(a1 + 8) = v1;
  result = *(v2 + 16);
  *(v3 + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_51_7()
{

  return sub_2676CB42C();
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_26763DE18(v1, v0);
}

uint64_t OUTLINED_FUNCTION_70_4(uint64_t a1)
{
  *(v1 + 88) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_74_2(uint64_t a1)
{

  return sub_2676CB47C();
}

uint64_t OUTLINED_FUNCTION_75_3(uint64_t a1, uint64_t a2)
{

  return sub_2676C9D6C();
}

uint64_t OUTLINED_FUNCTION_76_1(uint64_t a1)
{
  *(v1 + 64) = a1;

  return sub_2676C99CC();
}

uint64_t OUTLINED_FUNCTION_77_2(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;

  return sub_2676C90FC();
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1)
{
  *(v1 + 120) = a1;

  return sub_2676CB48C();
}

uint64_t OUTLINED_FUNCTION_81_4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_2676C39FC()
{
  sub_2676CA56C();
  if (!v18[3])
  {
    sub_2675E35CC(v18, &qword_2801CC158, &qword_2676CDDA0);
    goto LABEL_7;
  }

  sub_2676CA5DC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v2 = sub_2676CBE4C();
    __swift_project_value_buffer(v2, qword_2801CDC90);

    v3 = sub_2676CBE2C();
    v4 = sub_2676CC24C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18[0] = v6;
      *v5 = 136315138;
      sub_2676CA91C();

      v7 = sub_2676CBFBC();
      v9 = sub_2676B0B84(v7, v8, v18);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_2675D4000, v3, v4, "Could not extract the usoNoEntity from the usoTask=%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    goto LABEL_16;
  }

  sub_2676CA33C();

  if (!v18[0] || (v0 = sub_2676CA4BC(), , !v0))
  {
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_2801CBAA0);
    }

    v10 = sub_2676CBE4C();
    __swift_project_value_buffer(v10, qword_2801CDC90);

    v3 = sub_2676CBE2C();
    v11 = sub_2676CC24C();

    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;

      v14 = sub_2676CBFBC();
      v16 = sub_2676B0B84(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2675D4000, v3, v11, "Could not extract the listPosition from the usoNoEntity=%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();

      return 0;
    }

LABEL_16:

    return 0;
  }

  v1 = sub_2676C3D3C();

  return v1;
}

uint64_t sub_2676C3D3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDD98, &unk_2676D59D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_2676CA68C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  sub_2676CA67C();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2675E35CC(v2, &qword_2801CDD98, &unk_2676D59D0);
    return 0;
  }

  v11 = *(v4 + 32);
  v11(v9, v2, v3);
  v11(v7, v9, v3);
  v12 = (*(v4 + 88))(v7, v3);
  if (v12 == *MEMORY[0x277D5EC30])
  {
    return 4;
  }

  if (v12 == *MEMORY[0x277D5EC40])
  {
    return 2;
  }

  if (v12 == *MEMORY[0x277D5EB60])
  {
    return 1;
  }

  if (v12 == *MEMORY[0x277D5EBD0])
  {
    return 24;
  }

  if (v12 == *MEMORY[0x277D5EBA0])
  {
    return 17;
  }

  if (v12 == *MEMORY[0x277D5EC28])
  {
    return 8;
  }

  if (v12 == *MEMORY[0x277D5EBA8])
  {
    return -3;
  }

  if (v12 == *MEMORY[0x277D5EC10])
  {
    return 6;
  }

  if (v12 == *MEMORY[0x277D5EB90])
  {
    return 19;
  }

  if (v12 == *MEMORY[0x277D5EBB0])
  {
    return 25;
  }

  if (v12 == *MEMORY[0x277D5EC08])
  {
    return 9;
  }

  if (v12 == *MEMORY[0x277D5EC60])
  {
    return 11;
  }

  if (v12 == *MEMORY[0x277D5EBE0])
  {
    return -1;
  }

  if (v12 == *MEMORY[0x277D5EB88])
  {
    return 14;
  }

  if (v12 == *MEMORY[0x277D5EBC8])
  {
    return -2;
  }

  if (v12 == *MEMORY[0x277D5EBB8])
  {
    return 21;
  }

  if (v12 == *MEMORY[0x277D5EB98])
  {
    return 13;
  }

  if (v12 == *MEMORY[0x277D5EBE8])
  {
    return -1;
  }

  if (v12 == *MEMORY[0x277D5EBD8])
  {
    return 22;
  }

  if (v12 == *MEMORY[0x277D5EB68])
  {
    return 15;
  }

  if (v12 == *MEMORY[0x277D5EB78])
  {
    return 20;
  }

  if (v12 == *MEMORY[0x277D5EBF8])
  {
    return 5;
  }

  if (v12 == *MEMORY[0x277D5EB70])
  {
    return 16;
  }

  if (v12 == *MEMORY[0x277D5EC00])
  {
    return 1;
  }

  if (v12 == *MEMORY[0x277D5EC50])
  {
    return 7;
  }

  if (v12 == *MEMORY[0x277D5EB80])
  {
    return 18;
  }

  if (v12 == *MEMORY[0x277D5EBC0])
  {
    return 23;
  }

  if (v12 == *MEMORY[0x277D5EC58])
  {
    return 12;
  }

  if (v12 == *MEMORY[0x277D5EC20])
  {
    return 3;
  }

  if (v12 != *MEMORY[0x277D5EC18])
  {
    (*(v4 + 8))(v7, v3);
    return 0;
  }

  return 10;
}

void static DynamicTask.== infix(_:_:)()
{
  OUTLINED_FUNCTION_21_1();
  v2 = v1;
  v47 = v4;
  v48 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC628, &unk_2676CF530);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v46 = v9 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_4();
  v13 = v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_4();
  v49 = v15;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_53_9();
  v45[1] = v2;
  v17 = sub_2676CA40C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = OUTLINED_FUNCTION_4_1(TupleTypeMetadata2);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v45 - v21;
  v23 = *(v20 + 56);
  v24 = *(v17 - 8);
  v25 = *(v24 + 16);
  v25(v45 - v21, v48, v17);
  v48 = v23;
  v25(&v22[v23], v47, v17);
  OUTLINED_FUNCTION_87_0();
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v26 = *(v7 + 32);
      v26(v13, v0, v5);
      v26(v46, v49, v5);
      sub_2676C467C();
      v27 = *(v7 + 8);
      v28 = OUTLINED_FUNCTION_6_2();
      v27(v28);
      v29 = OUTLINED_FUNCTION_30_12();
      v27(v29);
      v30 = *(v24 + 8);
      v30(&v22[v48], v17);
      v30(v22, v17);
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_20_1();
      return;
    }

    (*(v7 + 8))(v0, v5);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v31 = sub_2676CBE4C();
  __swift_project_value_buffer(v31, qword_2801CDC90);
  v32 = sub_2676CBE2C();
  v33 = sub_2676CC25C();
  if (OUTLINED_FUNCTION_46_1(v33))
  {
    OUTLINED_FUNCTION_5_3();
    v50[0] = OUTLINED_FUNCTION_12_2();
    *v24 = 136315138;
    v34 = sub_2676CC6EC();
    v36 = sub_2676B0B84(v34, v35, v50);

    *(v24 + 4) = v36;
    OUTLINED_FUNCTION_33_8(&dword_2675D4000, v37, v38, "== not defined for DynamicTask<%s>");
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_25_18();
  sub_2676CC3FC();

  v50[0] = 0xD00000000000001FLL;
  v50[1] = 0x80000002676D8190;
  v39 = sub_2676CC6EC();
  MEMORY[0x26D5FDD00](v39);

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_68_4();
  v40 = OUTLINED_FUNCTION_15_20();
  static Logger.logAndCrash(_:file:line:)(v40, v41, v42, v43, v44, 20);
  __break(1u);
}

void static Entity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_21_1();
  v4 = v3;
  v39 = v5;
  v40 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  v41 = v8 - v9;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_53_9();
  v38 = v4;
  v13 = sub_2676CA8FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = OUTLINED_FUNCTION_4_1(TupleTypeMetadata2);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  v19 = *(v16 + 56);
  v20 = *(v13 - 8);
  v21 = *(v20 + 16);
  v21(&v38 - v17, v39, v13);
  v21(&v18[v19], v40, v13);
  OUTLINED_FUNCTION_87_0();
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_2675F66D4(v2, v0);
      v22 = v41;
      sub_2675F66D4(v1, v41);
      sub_2676C4C40();
      sub_2675ED6C0(v22, &qword_2801CC168, &unk_2676CF510);
      sub_2675ED6C0(v0, &qword_2801CC168, &unk_2676CF510);
      v23 = *(v20 + 8);
      v23(&v18[v19], v13);
      v23(v18, v13);
      OUTLINED_FUNCTION_45_8();
      OUTLINED_FUNCTION_20_1();
      return;
    }

    sub_2675ED6C0(v2, &qword_2801CC168, &unk_2676CF510);
  }

  if (qword_2801CBAA0 != -1)
  {
    OUTLINED_FUNCTION_1_8();
    swift_once();
  }

  v24 = sub_2676CBE4C();
  __swift_project_value_buffer(v24, qword_2801CDC90);
  v25 = sub_2676CBE2C();
  v26 = sub_2676CC25C();
  if (OUTLINED_FUNCTION_46_1(v26))
  {
    OUTLINED_FUNCTION_5_3();
    v42[0] = OUTLINED_FUNCTION_12_2();
    *v0 = 136315138;
    v27 = sub_2676CC6EC();
    v29 = sub_2676B0B84(v27, v28, v42);

    *(v0 + 4) = v29;
    OUTLINED_FUNCTION_33_8(&dword_2675D4000, v30, v31, "== not defined for Entity<%s>");
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_2_5();
  }

  OUTLINED_FUNCTION_25_18();
  sub_2676CC3FC();

  v42[0] = 0xD00000000000001ALL;
  v42[1] = 0x80000002676D8220;
  v32 = sub_2676CC6EC();
  MEMORY[0x26D5FDD00](v32);

  OUTLINED_FUNCTION_69_4();
  OUTLINED_FUNCTION_68_4();
  v33 = OUTLINED_FUNCTION_15_20();
  static Logger.logAndCrash(_:file:line:)(v33, v34, v35, v36, v37, 32);
  __break(1u);
}

void sub_2676C4C40()
{
  OUTLINED_FUNCTION_21_1();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  v132 = v9 - v10;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_4();
  v131 = v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_4();
  v133 = v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_1();
  v135 = v16;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_3();
  v139 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_7();
  v130 = v19 - v20;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_24_1();
  v138 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v24 = OUTLINED_FUNCTION_4_1(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_7();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_24_1();
  v140 = v29;
  v30 = OUTLINED_FUNCTION_54_10();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
  v33 = OUTLINED_FUNCTION_4_1(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_7();
  v35 = MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10_21(v35, v36, v37, v38, v39, v40, v41, v42, v129);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v129 - v45;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_23_14();
  sub_2675ED65C(v6, v0, &qword_2801CC168, &unk_2676CF510);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  v49 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v49, v50, v48);
  if (v60)
  {
    sub_2675ED6C0(v0, &qword_2801CC168, &unk_2676CF510);
    v134 = 0;
    v2 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_30();
    sub_2676C81C8(v51, v52, MEMORY[0x277D5C6A8]);
    OUTLINED_FUNCTION_54_10();
    v134 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_14_2();
    (*(v53 + 8))(v0, v48);
  }

  sub_2675ED65C(v4, v1, &qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_21_3(v1, 1, v48);
  if (v60)
  {
    sub_2675ED6C0(v1, &qword_2801CC168, &unk_2676CF510);
    if (!v2)
    {
      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_34;
  }

  v129 = v46;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_30();
  sub_2676C81C8(v54, v55, MEMORY[0x277D5C6A8]);
  v56 = sub_2676CA89C();
  v58 = v57;

  OUTLINED_FUNCTION_14_2();
  (*(v59 + 8))(v1, v48);
  if (!v2)
  {
    v46 = v129;
    if (!v58)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v46 = v129;
  if (!v58)
  {
    goto LABEL_18;
  }

  v60 = v134 == v56 && v2 == v58;
  if (v60)
  {
  }

  else
  {
    OUTLINED_FUNCTION_31_8(v134);
    OUTLINED_FUNCTION_47_6();

    if ((v56 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_20:
  sub_2675ED65C(v6, v46, &qword_2801CC168, &unk_2676CF510);
  OUTLINED_FUNCTION_21_3(v46, 1, v48);
  if (v60)
  {
    sub_2675ED6C0(v46, &qword_2801CC168, &unk_2676CF510);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_50_7(v140, v62, v63, v61);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_30();
    sub_2676C81C8(v64, v65, MEMORY[0x277D5C6A8]);
    OUTLINED_FUNCTION_8_27();
    sub_2676C81C8(v66, v67, MEMORY[0x277D5C618]);
    OUTLINED_FUNCTION_54_10();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2();
    v68 = OUTLINED_FUNCTION_87_0();
    v69(v68);
  }

  v70 = v137;
  v71 = OUTLINED_FUNCTION_88_0();
  sub_2675ED65C(v71, v72, v73, v74);
  v75 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v75, v76, v48);
  v77 = v138;
  if (v60)
  {
    sub_2675ED6C0(v70, &qword_2801CC168, &unk_2676CF510);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
    OUTLINED_FUNCTION_50_7(v27, v79, v80, v78);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_30();
    sub_2676C81C8(v81, v82, MEMORY[0x277D5C6A8]);
    OUTLINED_FUNCTION_8_27();
    sub_2676C81C8(v83, v84, MEMORY[0x277D5C618]);
    OUTLINED_FUNCTION_54_10();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2();
    (*(v85 + 8))(v70, v48);
  }

  v86 = v139;
  sub_2676C5F90();
  v88 = v87;
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v89, v90, v91);
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v92, v93, v94);
  if (v88)
  {
    v95 = OUTLINED_FUNCTION_120();
    sub_2675ED65C(v95, v96, v97, v98);
    sub_2676CB91C();
    sub_2676CB86C();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v99, v100, MEMORY[0x277D5C6D8]);
    v101 = v135;
    OUTLINED_FUNCTION_30_4();
    sub_2676CA8EC();
    v102 = v136;
    OUTLINED_FUNCTION_21_3(v101, 1, v136);
    if (v60)
    {
      v108 = v101;
    }

    else
    {
      v103 = v86[4];
      v103(v77, v101, v102);
      v104 = OUTLINED_FUNCTION_43_8();
      sub_2675ED65C(v104, v105, v106, v107);
      v108 = v133;
      sub_2676CA8EC();
      OUTLINED_FUNCTION_39_6(v108);
      if (!v109)
      {
        v112 = v130;
        v113 = OUTLINED_FUNCTION_30_12();
        (v103)(v113);
        v114 = v86[2];
        v114(v131, v77, v102);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v115, v116, v117, v102);
        v114(v132, v112, v102);
        OUTLINED_FUNCTION_17_2();
        __swift_storeEnumTagSinglePayload(v118, v119, v120, v102);
        sub_2676C67CC();
        OUTLINED_FUNCTION_30_4();
        sub_2675ED6C0(v121, v122, v123);
        OUTLINED_FUNCTION_30_4();
        sub_2675ED6C0(v124, v125, v126);
        v127 = v86[1];
        v127(v112, v102);
        v128 = OUTLINED_FUNCTION_14_3();
        (v127)(v128);
        goto LABEL_34;
      }

      v110 = OUTLINED_FUNCTION_14_3();
      v111(v110);
    }

    sub_2675ED6C0(v108, &qword_2801CC038, &qword_2676D5A40);
  }

LABEL_34:
  OUTLINED_FUNCTION_20_1();
}

void sub_2676C5560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_21_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC428, &unk_2676CEDD0);
  v25 = OUTLINED_FUNCTION_4_1(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_7();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF60, &unk_2676CEDE0);
  OUTLINED_FUNCTION_3();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v36);
  v37 = OUTLINED_FUNCTION_16_3();
  sub_2675ED65C(v37, v38, &qword_2801CC428, &unk_2676CEDD0);
  OUTLINED_FUNCTION_21_3(v31, 1, v32);
  if (v43)
  {
    sub_2675ED6C0(v31, &qword_2801CC428, &unk_2676CEDD0);
    OUTLINED_FUNCTION_21_3(v23, 1, v32);
    goto LABEL_31;
  }

  v39 = *(v34 + 32);
  v40 = OUTLINED_FUNCTION_37_7();
  v39(v40);
  sub_2675ED65C(v23, v28, &qword_2801CC428, &unk_2676CEDD0);
  v41 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v41, v42, v32);
  if (v43)
  {
    v44 = OUTLINED_FUNCTION_58_1();
    v45(v44);
    sub_2675ED6C0(v28, &qword_2801CC428, &unk_2676CEDD0);
    goto LABEL_31;
  }

  v46 = OUTLINED_FUNCTION_6_2();
  v39(v46);
  swift_getKeyPath();
  OUTLINED_FUNCTION_22_11();
  sub_2676C81C8(v47, v48, MEMORY[0x277D5C780]);
  OUTLINED_FUNCTION_2_30();
  sub_2676C81C8(v49, v50, MEMORY[0x277D5C6A8]);
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v52 = v51;

  if ((v52 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v56 = v55;

  if ((v56 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_72_2();
  swift_getKeyPath();
  OUTLINED_FUNCTION_9_31();
  sub_2676CA8CC();
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_30_12();
  sub_2676C5BC4();
  v58 = v57;

  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v59 = sub_2676CA89C();
  v61 = v60;

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v62 = sub_2676CA89C();
  v64 = v63;

  if (v61)
  {
    if (!v64)
    {
      goto LABEL_29;
    }

    if (v59 == v62 && v61 == v64)
    {
    }

    else
    {
      v66 = OUTLINED_FUNCTION_16_3();
      v68 = OUTLINED_FUNCTION_37_11(v66, v67, v62);

      if ((v68 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v64)
  {
    goto LABEL_29;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v69 = sub_2676CA89C();
  v71 = v70;

  swift_getKeyPath();
  OUTLINED_FUNCTION_21_12();
  v72 = sub_2676CA89C();
  v74 = v73;

  if (v71)
  {
    if (v74)
    {
      if (v69 != v72 || v71 != v74)
      {
        v76 = OUTLINED_FUNCTION_16_3();
        OUTLINED_FUNCTION_37_11(v76, v77, v72);
      }

      v84 = *(v34 + 8);
      v85 = OUTLINED_FUNCTION_53_1();
      v84(v85);
      v86 = OUTLINED_FUNCTION_58_1();
      v84(v86);
      goto LABEL_31;
    }

LABEL_29:

LABEL_30:
    v78 = *(v34 + 8);
    v79 = OUTLINED_FUNCTION_53_1();
    v78(v79);
    v80 = OUTLINED_FUNCTION_58_1();
    v78(v80);
    goto LABEL_31;
  }

  v81 = *(v34 + 8);
  v82 = OUTLINED_FUNCTION_53_1();
  v81(v82);
  v83 = OUTLINED_FUNCTION_58_1();
  v81(v83);
  if (v74)
  {
  }

LABEL_31:
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676C5B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC748, &unk_2676CF7E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2675ED65C(a1, &v5 - v3, &qword_2801CC748, &unk_2676CF7E0);
  return sub_2676CBA5C();
}

void sub_2676C5BC4()
{
  OUTLINED_FUNCTION_21_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC168, &unk_2676CF510);
  v5 = OUTLINED_FUNCTION_4_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_7();
  v56 = v6 - v7;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24_1();
  v55 = v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CBF78, &qword_2676CDF00);
  OUTLINED_FUNCTION_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v54 = v48 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDB8, &qword_2676D5E90);
  OUTLINED_FUNCTION_14_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_7();
  v52 = v15 - v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_4();
  v51 = v18;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24_1();
  v50 = v20;
  v57 = v3;
  v58 = v1;
  v21 = *(v1 + 16);
  v59 = *(v3 + 16);
  if (v59 == v21)
  {
    v22 = 0;
    v48[1] = v11 + 32;
    v48[2] = v11 + 16;
    v48[0] = v11 + 8;
    v63 = v11;
    do
    {
      v60 = v59 == v22;
      if (v59 == v22)
      {
        break;
      }

      v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v24 = *(v11 + 72) * v22;
      v25 = *(v11 + 16);
      v26 = v54;
      v27 = v49;
      v25(v54, v57 + v23 + v24, v49);
      v62 = v22 + 1;
      v28 = v58 + v23;
      v29 = v53;
      v30 = *(v53 + 48);
      v31 = v50;
      v32 = v26;
      v33 = *(v63 + 32);
      v33(v50, v32, v27);
      v25((v31 + v30), v28 + v24, v27);
      v34 = v51;
      sub_2675ED65C(v31, v51, &qword_2801CDDB8, &qword_2676D5E90);
      v61 = *(v29 + 48);
      v35 = v55;
      v33(v55, v34, v27);
      v36 = v33;
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v27);
      v40 = v52;
      sub_2675ED65C(v31, v52, &qword_2801CDDB8, &qword_2676D5E90);
      v41 = *(v29 + 48);
      v11 = v63;
      v42 = v56;
      v36(v56, v40 + v41, v27);
      OUTLINED_FUNCTION_17_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v27);
      sub_2676C4C40();
      LOBYTE(v36) = v46;
      sub_2675ED6C0(v42, &qword_2801CC168, &unk_2676CF510);
      sub_2675ED6C0(v35, &qword_2801CC168, &unk_2676CF510);
      sub_2675ED6C0(v31, &qword_2801CDDB8, &qword_2676D5E90);
      v47 = *(v11 + 8);
      v47(v40, v27);
      v47(v34 + v61, v27);
      v22 = v62;
    }

    while ((v36 & 1) != 0);
  }

  else
  {
    v60 = 0;
  }

  OUTLINED_FUNCTION_20_1();
}

void sub_2676C5F90()
{
  OUTLINED_FUNCTION_21_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v102 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_55_3();
  v18 = MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_21(v18, v19, v20, v21, v22, v23, v24, v25, v102);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_43_9();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_4();
  v105 = v28;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v102 - v30;
  v32 = v5;
  v34 = v33;
  sub_2675ED65C(v32, v13, &qword_2801CC068, &unk_2676D4E00);
  OUTLINED_FUNCTION_21_3(v13, 1, v34);
  if (v38)
  {
    sub_2675ED6C0(v13, &qword_2801CC068, &unk_2676D4E00);
    OUTLINED_FUNCTION_21_3(v3, 1, v34);
LABEL_29:
    OUTLINED_FUNCTION_20_1();
    return;
  }

  v35 = *(v15 + 32);
  v35(v31, v13, v34);
  sub_2675ED65C(v3, v10, &qword_2801CC068, &unk_2676D4E00);
  v36 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v36, v37, v34);
  v39 = v31;
  if (v38)
  {
    v40 = OUTLINED_FUNCTION_43_8();
    v41(v40);
    sub_2675ED6C0(v10, &qword_2801CC068, &unk_2676D4E00);
    goto LABEL_29;
  }

  v42 = v105;
  v35(v105, v10, v34);
  if (sub_2676C7074(v39))
  {
    v103 = v39;
    v105 = v15;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v70 = sub_2676CBE4C();
    __swift_project_value_buffer(v70, qword_2801CDC90);
    v102 = *(v105 + 16);
    v102(v0, v103, v34);
    v71 = sub_2676CBE2C();
    v72 = sub_2676CC25C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = OUTLINED_FUNCTION_5_3();
      v74 = swift_slowAlloc();
      v106[0] = v74;
      *v73 = 136315138;
      v75 = OUTLINED_FUNCTION_14_3();
      (v102)(v75);
      v76 = sub_2676CBFBC();
      v78 = v77;
      v79 = OUTLINED_FUNCTION_55_6();
      v80(v79);
      v81 = sub_2676B0B84(v76, v78, v106);

      *(v73 + 4) = v81;
      _os_log_impl(&dword_2675D4000, v71, v72, "== not defined for given ContactAddress subclass: <%s>", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      v92 = OUTLINED_FUNCTION_55_6();
      v93(v92);
    }

    OUTLINED_FUNCTION_25_18();
    sub_2676CC3FC();
    OUTLINED_FUNCTION_66_5();
    v102(v104, v103, v34);
    v94 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v94);

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_68_4();
    v95 = OUTLINED_FUNCTION_15_20();
    v100 = 93;
  }

  else
  {
    if (!sub_2676C7074(v42))
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_8_27();
      sub_2676C81C8(v43, v44, MEMORY[0x277D5C618]);
      OUTLINED_FUNCTION_65_5();
      v45 = sub_2676CA89C();
      v47 = v46;

      swift_getKeyPath();
      OUTLINED_FUNCTION_65_5();
      v48 = sub_2676CA89C();
      v50 = v49;

      if (v47)
      {
        if (v50)
        {
          if (v45 == v48 && v47 == v50)
          {
          }

          else
          {
            v52 = OUTLINED_FUNCTION_120();
            v54 = OUTLINED_FUNCTION_37_11(v52, v53, v48);

            if ((v54 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          goto LABEL_20;
        }
      }

      else if (!v50)
      {
LABEL_20:
        swift_getKeyPath();
        OUTLINED_FUNCTION_65_5();
        v55 = sub_2676CA89C();
        v57 = v56;

        swift_getKeyPath();
        OUTLINED_FUNCTION_65_5();
        v58 = sub_2676CA89C();
        v60 = v59;

        if (!v57)
        {
          v66 = *(v15 + 8);
          v66(v42, v34);
          v67 = OUTLINED_FUNCTION_43_8();
          (v66)(v67);
          if (v60)
          {
          }

          goto LABEL_29;
        }

        if (v60)
        {
          if (v55 != v58 || v57 != v60)
          {
            v62 = OUTLINED_FUNCTION_120();
            OUTLINED_FUNCTION_37_11(v62, v63, v58);
          }

          v68 = *(v15 + 8);
          v68(v42, v34);
          v69 = OUTLINED_FUNCTION_43_8();
          (v68)(v69);
          goto LABEL_29;
        }
      }

LABEL_28:
      v64 = *(v15 + 8);
      v64(v42, v34);
      v65 = OUTLINED_FUNCTION_43_8();
      (v64)(v65);
      goto LABEL_29;
    }

    v103 = v34;
    if (qword_2801CBAA0 != -1)
    {
      OUTLINED_FUNCTION_1_8();
      swift_once();
    }

    v82 = sub_2676CBE4C();
    __swift_project_value_buffer(v82, qword_2801CDC90);
    v102 = *(v15 + 16);
    v102(v1, v105, v103);
    v83 = sub_2676CBE2C();
    v84 = sub_2676CC25C();
    if (OUTLINED_FUNCTION_46_1(v84))
    {
      OUTLINED_FUNCTION_5_3();
      v106[0] = OUTLINED_FUNCTION_12_2();
      *v15 = 136315138;
      v85 = v103;
      v102(v104, v1, v103);
      v86 = sub_2676CBFBC();
      v88 = v87;
      (*(v15 + 8))(v1, v85);
      v89 = sub_2676B0B84(v86, v88, v106);

      *(v15 + 4) = v89;
      OUTLINED_FUNCTION_33_8(&dword_2675D4000, v90, v91, "== not defined for given ContactAddress subclass: <%s>");
      OUTLINED_FUNCTION_41_8();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {

      (*(v15 + 8))(v1, v103);
    }

    OUTLINED_FUNCTION_25_18();
    sub_2676CC3FC();
    OUTLINED_FUNCTION_66_5();
    v102(v104, v105, v103);
    v101 = sub_2676CBFBC();
    MEMORY[0x26D5FDD00](v101);

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_68_4();
    v95 = OUTLINED_FUNCTION_15_20();
    v100 = 97;
  }

  static Logger.logAndCrash(_:file:line:)(v95, v96, v97, v98, v99, v100);
  __break(1u);
}

void sub_2676C67CC()
{
  OUTLINED_FUNCTION_21_1();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v8 = OUTLINED_FUNCTION_4_1(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  KeyPath = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v111 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC078, &unk_2676D3680);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_7();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_24_1();
  v118 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC038, &qword_2676D5A40);
  v23 = OUTLINED_FUNCTION_4_1(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_43_9();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_10_4();
  v113 = v25;
  OUTLINED_FUNCTION_12_0();
  v27 = MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_10_21(v27, v28, v29, v30, v31, v32, v33, v34, v111);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_4();
  v114 = v36;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_79_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_23_14();
  v117 = v6;
  v39 = OUTLINED_FUNCTION_88_0();
  sub_2675ED65C(v39, v40, &qword_2801CC038, &qword_2676D5A40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC108, &qword_2676D3590);
  OUTLINED_FUNCTION_39_6(v0);
  v116 = v19;
  if (v55)
  {
    sub_2675ED6C0(v0, &qword_2801CC038, &qword_2676D5A40);
    v44 = 0;
    v46 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v42, v43, MEMORY[0x277D5C6D8]);
    OUTLINED_FUNCTION_14_3();
    v44 = sub_2676CA89C();
    v46 = v45;

    OUTLINED_FUNCTION_14_2();
    (*(v47 + 8))(v0, v41);
  }

  sub_2675ED65C(v4, v1, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_39_6(v1);
  if (v55)
  {
    sub_2675ED6C0(v1, &qword_2801CC038, &qword_2676D5A40);
    if (v46)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v112 = v44;
    v2 = v4;
    v4 = v14;
    v14 = KeyPath;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v48, v49, MEMORY[0x277D5C6D8]);
    v50 = sub_2676CA89C();
    v52 = v51;

    OUTLINED_FUNCTION_14_2();
    v53 = OUTLINED_FUNCTION_43_2();
    v54(v53);
    if (v46)
    {
      if (v52)
      {
        OUTLINED_FUNCTION_52_3();
        v55 = v112 == v50 && v46 == v52;
        if (v55)
        {
        }

        else
        {
          v56 = OUTLINED_FUNCTION_37_11(v112, v46, v50);

          if ((v56 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_20;
      }

LABEL_18:

      goto LABEL_35;
    }

    OUTLINED_FUNCTION_52_3();
    if (v52)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  v57 = v117;
  v58 = v114;
  sub_2675ED65C(v117, v114, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_39_6(v58);
  if (v55)
  {
    sub_2675ED6C0(v58, &qword_2801CC038, &qword_2676D5A40);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_50_7(v118, v60, v61, v59);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v62, v63, MEMORY[0x277D5C6D8]);
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v64, v65, MEMORY[0x277D5C688]);
    OUTLINED_FUNCTION_43_2();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2();
    v66 = OUTLINED_FUNCTION_37_7();
    v67(v66);
  }

  v68 = v115;
  v69 = v116;
  sub_2675ED65C(v4, v115, &qword_2801CC038, &qword_2676D5A40);
  OUTLINED_FUNCTION_39_6(v68);
  v111 = v4;
  if (v55)
  {
    sub_2675ED6C0(v68, &qword_2801CC038, &qword_2676D5A40);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
    OUTLINED_FUNCTION_50_7(v69, v71, v72, v70);
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_1_32();
    sub_2676C81C8(v73, v74, MEMORY[0x277D5C6D8]);
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v75, v76, MEMORY[0x277D5C688]);
    OUTLINED_FUNCTION_37_7();
    sub_2676CA87C();

    OUTLINED_FUNCTION_14_2();
    v77 = OUTLINED_FUNCTION_43_2();
    v78(v77);
  }

  v79 = sub_2676C724C(v118, v69);
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v80, v81, v82);
  OUTLINED_FUNCTION_30_4();
  sub_2675ED6C0(v83, v84, v85);
  if (v79)
  {
    v86 = v113;
    sub_2675ED65C(v57, v113, &qword_2801CC038, &qword_2676D5A40);
    OUTLINED_FUNCTION_39_6(v86);
    if (v55)
    {
      sub_2675ED6C0(v86, &qword_2801CC038, &qword_2676D5A40);
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
      OUTLINED_FUNCTION_50_7(v14, v88, v89, v87);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_1_32();
      sub_2676C81C8(v90, v91, MEMORY[0x277D5C6D8]);
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v92, v93, MEMORY[0x277D5C440]);
      sub_2676CA87C();

      OUTLINED_FUNCTION_14_2();
      v94 = OUTLINED_FUNCTION_37_7();
      v95(v94);
    }

    sub_2675ED65C(v111, v2, &qword_2801CC038, &qword_2676D5A40);
    OUTLINED_FUNCTION_39_6(v2);
    if (v55)
    {
      sub_2675ED6C0(v2, &qword_2801CC038, &qword_2676D5A40);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
      OUTLINED_FUNCTION_50_7(KeyPath, v97, v98, v96);
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_1_32();
      sub_2676C81C8(v99, v100, MEMORY[0x277D5C6D8]);
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v101, v102, MEMORY[0x277D5C440]);
      sub_2676CA87C();

      OUTLINED_FUNCTION_14_2();
      v103 = OUTLINED_FUNCTION_16_3();
      v104(v103);
    }

    sub_2676C7508();
    OUTLINED_FUNCTION_30_4();
    sub_2675ED6C0(v105, v106, v107);
    OUTLINED_FUNCTION_30_4();
    sub_2675ED6C0(v108, v109, v110);
  }

LABEL_35:
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_20_1();
}

BOOL sub_2676C7074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC068, &unk_2676D4E00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDA0, &qword_2676D5CF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0D8, &qword_2676D1490);
  (*(*(v8 - 8) + 16))(v4, a1, v8);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v8);
  sub_2676CB6BC();
  sub_2676CB78C();
  sub_2676C81C8(&qword_2801CDDA8, MEMORY[0x277D5C568], MEMORY[0x277D5C560]);
  sub_2676CA8EC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDB0, &unk_2676D5D00);
  v10 = __swift_getEnumTagSinglePayload(v7, 1, v9) != 1;
  sub_2675ED6C0(v7, &qword_2801CDDA0, &qword_2676D5CF8);
  return v10;
}

uint64_t sub_2676C724C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_23_14();
  v12 = OUTLINED_FUNCTION_88_0();
  sub_2675ED65C(v12, v13, &qword_2801CC078, &unk_2676D3680);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0C8, &qword_2676CDB00);
  v15 = OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_21_3(v15, v16, v14);
  if (v29)
  {
    sub_2675ED6C0(v2, &qword_2801CC078, &unk_2676D3680);
    v19 = 0;
    v21 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v17, v18, MEMORY[0x277D5C688]);
    v19 = sub_2676CA89C();
    v21 = v20;

    OUTLINED_FUNCTION_14_2();
    (*(v22 + 8))(v2, v14);
  }

  sub_2675ED65C(a2, v10, &qword_2801CC078, &unk_2676D3680);
  OUTLINED_FUNCTION_21_3(v10, 1, v14);
  if (v29)
  {
    sub_2675ED6C0(v10, &qword_2801CC078, &unk_2676D3680);
    if (v21)
    {
LABEL_15:
      v30 = 0;
LABEL_20:

      return v30 & 1;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_4_35();
    sub_2676C81C8(v23, v24, MEMORY[0x277D5C688]);
    v25 = sub_2676CA89C();
    v27 = v26;

    OUTLINED_FUNCTION_14_2();
    (*(v28 + 8))(v10, v14);
    if (v21)
    {
      if (v27)
      {
        v29 = v19 == v25 && v21 == v27;
        if (v29)
        {

          v30 = 1;
        }

        else
        {
          v30 = OUTLINED_FUNCTION_37_11(v19, v21, v25);
        }

        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (v27)
    {
      v30 = 0;
      goto LABEL_20;
    }
  }

  v30 = 1;
  return v30 & 1;
}

void sub_2676C7508()
{
  OUTLINED_FUNCTION_21_1();
  v5 = v4;
  v7 = v6;
  v8 = &qword_2801CC0A0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A0, &qword_2676CDAE0);
  v10 = OUTLINED_FUNCTION_4_1(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_7();
  v130 = v11 - v12;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_10_4();
  v131 = v14;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_4();
  v133 = v16;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10_4();
  v132 = v18;
  OUTLINED_FUNCTION_12_0();
  v20 = MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_21(v20, v21, v22, v23, v24, v25, v26, v27, v129);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_4();
  v135 = v29;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_10_4();
  v137 = v31;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_4();
  v136 = v33;
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_38_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_43_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_55_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_23_14();
  sub_2675ED65C(v7, v0, &qword_2801CC0A0, &qword_2676CDAE0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CC0A8, &qword_2676D5AB0);
  OUTLINED_FUNCTION_18_5(v0);
  if (v52)
  {
    sub_2675ED6C0(v0, &qword_2801CC0A0, &qword_2676CDAE0);
    v41 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v39, v40, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_26_13();
    v41 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    v42 = OUTLINED_FUNCTION_29_14();
    v43(v42);
  }

  v44 = OUTLINED_FUNCTION_43_2();
  sub_2675ED65C(v44, v45, v46, v47);
  OUTLINED_FUNCTION_18_5(v2);
  if (v52)
  {
    sub_2675ED6C0(v2, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v48, v49, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_18_15();
    v50 = sub_2676CA89C();
    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_25_3();
    (*(v51 + 8))(v2, v38);
    if (v8)
    {
      if (!v2)
      {
        goto LABEL_105;
      }

      v52 = v41 == v50 && v8 == v2;
      if (v52)
      {
      }

      else
      {
        OUTLINED_FUNCTION_31_8(v41);
        OUTLINED_FUNCTION_47_6();

        if ((v50 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v2)
    {
      goto LABEL_105;
    }
  }

  v53 = OUTLINED_FUNCTION_87_0();
  sub_2675ED65C(v53, v54, v55, v56);
  OUTLINED_FUNCTION_18_5(v3);
  if (v52)
  {
    sub_2675ED6C0(v3, &qword_2801CC0A0, &qword_2676CDAE0);
    v59 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v57, v58, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_26_13();
    v59 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    (*(v60 + 8))(v3, v38);
  }

  sub_2675ED65C(v5, v1, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v1);
  if (v52)
  {
    sub_2675ED6C0(v1, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v61, v62, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_40_6();
    v63 = sub_2676CA89C();
    v65 = v64;

    OUTLINED_FUNCTION_25_3();
    v66 = OUTLINED_FUNCTION_29_14();
    v67(v66);
    if (v8)
    {
      if (!v65)
      {
        goto LABEL_105;
      }

      if (v59 == v63 && v8 == v65)
      {
      }

      else
      {
        sub_2676CC59C();
        OUTLINED_FUNCTION_47_6();

        if ((v63 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v65)
    {
      goto LABEL_105;
    }
  }

  sub_2675ED65C(v7, v136, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v136);
  if (v52)
  {
    sub_2675ED6C0(v136, &qword_2801CC0A0, &qword_2676CDAE0);
    v71 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v69, v70, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_26_13();
    v71 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    v72 = OUTLINED_FUNCTION_29_14();
    v73(v72);
  }

  v74 = OUTLINED_FUNCTION_6_2();
  sub_2675ED65C(v74, v75, v76, v77);
  OUTLINED_FUNCTION_18_5(v137);
  if (v52)
  {
    sub_2675ED6C0(v137, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v78, v79, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_18_15();
    v80 = sub_2676CA89C();
    v82 = v81;

    OUTLINED_FUNCTION_25_3();
    v83 = OUTLINED_FUNCTION_29_14();
    v84(v83);
    if (v8)
    {
      if (!v82)
      {
        goto LABEL_105;
      }

      if (v71 == v80 && v8 == v82)
      {
      }

      else
      {
        sub_2676CC59C();
        OUTLINED_FUNCTION_47_6();

        if ((v80 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v82)
    {
      goto LABEL_105;
    }
  }

  sub_2675ED65C(v7, v135, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v135);
  if (v52)
  {
    sub_2675ED6C0(v135, &qword_2801CC0A0, &qword_2676CDAE0);
    v88 = 0;
    v8 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v86, v87, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_26_13();
    v88 = sub_2676CA89C();
    OUTLINED_FUNCTION_51_8();
    OUTLINED_FUNCTION_25_3();
    v89 = OUTLINED_FUNCTION_29_14();
    v90(v89);
  }

  v91 = OUTLINED_FUNCTION_53_1();
  sub_2675ED65C(v91, v92, v93, v94);
  OUTLINED_FUNCTION_18_5(v134);
  if (v52)
  {
    sub_2675ED6C0(v134, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v8)
    {
      goto LABEL_105;
    }
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v95, v96, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_18_15();
    v97 = sub_2676CA89C();
    OUTLINED_FUNCTION_70_5();
    OUTLINED_FUNCTION_25_3();
    (*(v98 + 8))(v134, v38);
    if (v8)
    {
      if (!v134)
      {
        goto LABEL_105;
      }

      if (v88 == v97 && v8 == v134)
      {
      }

      else
      {
        OUTLINED_FUNCTION_31_8(v88);
        OUTLINED_FUNCTION_47_6();

        if ((v97 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v134)
    {
      goto LABEL_105;
    }
  }

  sub_2675ED65C(v7, v132, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v132);
  if (v52)
  {
    sub_2675ED6C0(v132, &qword_2801CC0A0, &qword_2676CDAE0);
    v102 = 0;
    v104 = 0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_0_32();
    sub_2676C81C8(v100, v101, MEMORY[0x277D5C440]);
    OUTLINED_FUNCTION_40_6();
    v102 = sub_2676CA89C();
    v104 = v103;

    OUTLINED_FUNCTION_25_3();
    v105 = OUTLINED_FUNCTION_29_14();
    v106(v105);
  }

  sub_2675ED65C(v5, v133, &qword_2801CC0A0, &qword_2676CDAE0);
  OUTLINED_FUNCTION_18_5(v133);
  if (v52)
  {
    sub_2675ED6C0(v133, &qword_2801CC0A0, &qword_2676CDAE0);
    if (v104)
    {
      goto LABEL_105;
    }

LABEL_91:
    sub_2675ED65C(v7, v131, &qword_2801CC0A0, &qword_2676CDAE0);
    OUTLINED_FUNCTION_18_5(v131);
    if (v52)
    {
      sub_2675ED6C0(v131, &qword_2801CC0A0, &qword_2676CDAE0);
      v114 = 0;
      v116 = 0;
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v112, v113, MEMORY[0x277D5C440]);
      OUTLINED_FUNCTION_40_6();
      v114 = sub_2676CA89C();
      v116 = v115;

      OUTLINED_FUNCTION_25_3();
      v117 = OUTLINED_FUNCTION_29_14();
      v118(v117);
    }

    v119 = OUTLINED_FUNCTION_43_2();
    sub_2675ED65C(v119, v120, v121, v122);
    OUTLINED_FUNCTION_18_5(v130);
    if (v52)
    {
      sub_2675ED6C0(v130, &qword_2801CC0A0, &qword_2676CDAE0);
      if (!v116)
      {
        goto LABEL_106;
      }
    }

    else
    {
      swift_getKeyPath();
      OUTLINED_FUNCTION_0_32();
      sub_2676C81C8(v123, v124, MEMORY[0x277D5C440]);
      OUTLINED_FUNCTION_18_15();
      v125 = sub_2676CA89C();
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_25_3();
      v126 = OUTLINED_FUNCTION_120();
      v127(v126);
      if (v116)
      {
        if (v130)
        {
          if (v114 == v125 && v116 == v130)
          {
          }

          else
          {
            OUTLINED_FUNCTION_37_11(v114, v116, v125);
            OUTLINED_FUNCTION_47_6();
          }
        }
      }

      else if (!v130)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_105;
  }

  swift_getKeyPath();
  OUTLINED_FUNCTION_0_32();
  sub_2676C81C8(v107, v108, MEMORY[0x277D5C440]);
  OUTLINED_FUNCTION_18_15();
  v109 = sub_2676CA89C();
  OUTLINED_FUNCTION_70_5();
  OUTLINED_FUNCTION_25_3();
  (*(v110 + 8))(v133, v38);
  if (!v104)
  {
    if (v133)
    {
      goto LABEL_105;
    }

    goto LABEL_91;
  }

  if (v133)
  {
    if (v102 == v109 && v104 == v133)
    {
    }

    else
    {
      OUTLINED_FUNCTION_37_11(v102, v104, v109);
      OUTLINED_FUNCTION_47_6();

      if ((v102 & 1) == 0)
      {
        goto LABEL_106;
      }
    }

    goto LABEL_91;
  }

LABEL_105:

LABEL_106:
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_20_1();
}

uint64_t sub_2676C81C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_31_8(uint64_t a1)
{

  return sub_2676CC59C();
}

void OUTLINED_FUNCTION_33_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_11(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2676CC59C();
}

void OUTLINED_FUNCTION_41_8()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x26D5FEA80);
}

uint64_t OUTLINED_FUNCTION_47_6()
{
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_51_8()
{
}

void OUTLINED_FUNCTION_66_5()
{

  JUMPOUT(0x26D5FDD00);
}

uint64_t OUTLINED_FUNCTION_68_4()
{
}

void OUTLINED_FUNCTION_69_4()
{

  JUMPOUT(0x26D5FDD00);
}

uint64_t OUTLINED_FUNCTION_70_5()
{
}

uint64_t OUTLINED_FUNCTION_71_2()
{
}

uint64_t OUTLINED_FUNCTION_72_2()
{
}

uint64_t sub_2676C854C()
{
  v0 = sub_2676CA05C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDC0, &qword_2676D5E98);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDC8, &unk_2676D5EA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_2676C9FEC();
  (*(v1 + 104))(v14, *MEMORY[0x277D5DA70], v0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v0);
  v17 = *(v5 + 56);
  sub_2676C88BC(v16, v7);
  sub_2676C88BC(v14, &v7[v17]);
  OUTLINED_FUNCTION_9_15(v7);
  if (!v19)
  {
    sub_2676C88BC(v7, v11);
    OUTLINED_FUNCTION_9_15(&v7[v17]);
    if (!v19)
    {
      (*(v1 + 32))(v3, &v7[v17], v0);
      sub_2676C892C();
      v18 = sub_2676CBF1C();
      v20 = *(v1 + 8);
      v20(v3, v0);
      sub_2675E35CC(v14, &qword_2801CDDC8, &unk_2676D5EA0);
      sub_2675E35CC(v16, &qword_2801CDDC8, &unk_2676D5EA0);
      v20(v11, v0);
      sub_2675E35CC(v7, &qword_2801CDDC8, &unk_2676D5EA0);
      return v18 & 1;
    }

    OUTLINED_FUNCTION_0_33(v14);
    OUTLINED_FUNCTION_0_33(v16);
    (*(v1 + 8))(v11, v0);
LABEL_9:
    sub_2675E35CC(v7, &qword_2801CDDC0, &qword_2676D5E98);
    v18 = 0;
    return v18 & 1;
  }

  OUTLINED_FUNCTION_0_33(v14);
  OUTLINED_FUNCTION_0_33(v16);
  OUTLINED_FUNCTION_9_15(&v7[v17]);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_2675E35CC(v7, &qword_2801CDDC8, &unk_2676D5EA0);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2676C88BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801CDDC8, &unk_2676D5EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2676C892C()
{
  result = qword_2801CDDD0;
  if (!qword_2801CDDD0)
  {
    sub_2676CA05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801CDDD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{

  return sub_2675E35CC(a1, v1, v2);
}