uint64_t sub_2167AB1C8()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 736) = v0;

  OUTLINED_FUNCTION_119_0();

  OUTLINED_FUNCTION_119_0();
  v6 = *(v5 + 576);
  v7 = *(v2 + 568);
  if (v0)
  {
    v8 = sub_2167ABCC8;
  }

  else
  {
    v8 = sub_2167AB308;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2167AB308()
{
  v34 = v0;
  v2 = *(v0 + 712);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);
  v5 = *(v0 + 328);

  v2(v3, v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);

  v8 = *(v0 + 746);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_12_5();
  if ((v9() & 1) != 0 && (v8 & 1) == 0)
  {
    if (qword_27CAB5890 != -1)
    {
      OUTLINED_FUNCTION_3_24(&qword_27CAB5890);
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_27CAB7060);
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_8();
    sub_2167ADCEC();
    v11 = sub_217007C84();
    v12 = sub_21700EDA4();
    v13 = OUTLINED_FUNCTION_63_1(v12);
    v14 = *(v0 + 496);
    if (v13)
    {
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_64_1();
      OUTLINED_FUNCTION_102_3();
      OUTLINED_FUNCTION_99_3(4.8751e-34);
      OUTLINED_FUNCTION_2_20();
      v17 = sub_2167ADF00(v15, v16, MEMORY[0x277D2A490]);
      OUTLINED_FUNCTION_98_2(v17);
      v5 = v18;
      OUTLINED_FUNCTION_0_21();
      v19 = OUTLINED_FUNCTION_54_3();
      sub_2166A85FC(v19, v20, v21);
      OUTLINED_FUNCTION_97_3();
      *(v4 + 4) = v14;
      OUTLINED_FUNCTION_37_2(&dword_216679000, v22, v23, "Pushing Now Playing for %{public}s");
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_56_1();
    }

    else
    {

      OUTLINED_FUNCTION_0_21();
    }

    OUTLINED_FUNCTION_69_3();
    v24 = OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_34();
    (*(v25 + 16))(v4, v5, v24);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v24);
    v26 = sub_216816C34(v4, &v33);
    OUTLINED_FUNCTION_61_0(v26, v33, *(v5 + *(v1 + 32)), v27, v28, &unk_282913EB8);
  }

  else
  {
    OUTLINED_FUNCTION_69_3();
  }

  v29 = OUTLINED_FUNCTION_8();
  sub_21677A510(v29, v30);
  (*(*(v0 + 448) + 104))(*(v0 + 256), *MEMORY[0x277D21CA8], *(v0 + 440));
  OUTLINED_FUNCTION_22_15();

  OUTLINED_FUNCTION_3();

  return v31();
}

uint64_t sub_2167AB614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_100_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_74_0();
  if (swift_dynamicCast())
  {
    if ((*(*(v20 + 392) + 88))(*(v20 + 400), *(v20 + 384)) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_122_1();
      v21 = OUTLINED_FUNCTION_116();
      v22(v21);
      v23 = OUTLINED_FUNCTION_113_0();
      v24(v23);
      if (qword_27CAB5890 != -1)
      {
        OUTLINED_FUNCTION_3_24(&qword_27CAB5890);
      }

      v25 = sub_217007CA4();
      *(v20 + 688) = __swift_project_value_buffer(v25, qword_27CAB7060);
      v26 = sub_217007C84();
      v27 = sub_21700EDA4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        OUTLINED_FUNCTION_121(&dword_216679000, v29, v30, "Presenting dialog...");
        MEMORY[0x21CEA1440](v28, -1, -1);
      }

      OUTLINED_FUNCTION_38_0(&unk_217015A68);
      v58 = v31;
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      *(v20 + 696) = v32;
      *v32 = v33;
      OUTLINED_FUNCTION_50_3(v32);
      OUTLINED_FUNCTION_59();

      return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v58, a18, a19, a20);
    }

    OUTLINED_FUNCTION_29_5();
    v45 = *(v20 + 392);
    v46 = *(v20 + 400);
    v47 = *(v20 + 384);

    v48 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v48, v49);

    (*(v45 + 8))(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_29_5();

    v43 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v43, v44);
  }

  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_4_13();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2167AB8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_100_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  OUTLINED_FUNCTION_74_0();
  if (swift_dynamicCast())
  {
    if ((*(*(v20 + 392) + 88))(*(v20 + 400), *(v20 + 384)) == *MEMORY[0x277D2A8C8])
    {
      OUTLINED_FUNCTION_122_1();
      v21 = OUTLINED_FUNCTION_116();
      v22(v21);
      v23 = OUTLINED_FUNCTION_113_0();
      v24(v23);
      if (qword_27CAB5890 != -1)
      {
        OUTLINED_FUNCTION_3_24(&qword_27CAB5890);
      }

      v25 = sub_217007CA4();
      *(v20 + 688) = __swift_project_value_buffer(v25, qword_27CAB7060);
      v26 = sub_217007C84();
      v27 = sub_21700EDA4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        OUTLINED_FUNCTION_121(&dword_216679000, v29, v30, "Presenting dialog...");
        MEMORY[0x21CEA1440](v28, -1, -1);
      }

      OUTLINED_FUNCTION_38_0(&unk_217015A68);
      v58 = v31;
      swift_task_alloc();
      OUTLINED_FUNCTION_52();
      *(v20 + 696) = v32;
      *v32 = v33;
      OUTLINED_FUNCTION_50_3(v32);
      OUTLINED_FUNCTION_59();

      return v37(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, v58, a18, a19, a20);
    }

    OUTLINED_FUNCTION_29_5();
    v45 = *(v20 + 392);
    v46 = *(v20 + 400);
    v47 = *(v20 + 384);

    v48 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v48, v49);

    (*(v45 + 8))(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_29_5();

    v43 = OUTLINED_FUNCTION_74_0();
    sub_21677A510(v43, v44);
  }

  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_4_13();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_2167ABB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_27_4();

  v21 = OUTLINED_FUNCTION_8();
  sub_21677A510(v21, v22);
  v23 = OUTLINED_FUNCTION_108();
  v24(v23);

  v34 = *(v20 + 704);
  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_4_13();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, v34, a18, a19, a20);
}

uint64_t sub_2167ABCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_73_2();
  OUTLINED_FUNCTION_77_2();
  v35 = *(v20 + 712);
  OUTLINED_FUNCTION_27_4();

  v21 = OUTLINED_FUNCTION_8();
  sub_21677A510(v21, v22);
  v23 = OUTLINED_FUNCTION_54_3();
  v35(v23);
  v24 = OUTLINED_FUNCTION_108();
  v25(v24);

  v36 = *(v20 + 736);
  OUTLINED_FUNCTION_20_8();
  OUTLINED_FUNCTION_4_13();

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_59();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, v36, a18, a19, a20);
}

uint64_t sub_2167ABE20()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_2166AB4A4;

  return sub_2167A913C();
}

unint64_t sub_2167ABECC(uint64_t a1)
{
  result = sub_2166E1710();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167ABEF4(uint64_t a1)
{
  result = sub_2167ABF1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167ABF1C()
{
  result = qword_27CAB7078;
  if (!qword_27CAB7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7078);
  }

  return result;
}

uint64_t sub_2167ABFC0()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB7060);
  __swift_project_value_buffer(v0, qword_27CAB7060);
  return sub_217007C94();
}

uint64_t sub_2167AC040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v84 = a3;
  v83 = a2;
  v98 = a1;
  v97 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_0();
  v96 = v14;
  v15 = sub_21700D284();
  v16 = OUTLINED_FUNCTION_36(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_0();
  v95 = v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B0, &qword_217015AA0);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_103_2();
  v92 = v21;
  v93 = v22;
  MEMORY[0x28223BE20](v23);
  v91 = &v73 - v24;
  v90 = _s6ActionVMa(0);
  OUTLINED_FUNCTION_1();
  v89 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_0();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v30 = OUTLINED_FUNCTION_36(v29);
  MEMORY[0x28223BE20](v30);
  v32 = &v73 - v31;
  v33 = type metadata accessor for PresentAlertAction(0);
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_103_2();
  v81 = v37;
  v80 = v38;
  MEMORY[0x28223BE20](v39);
  v82 = &v73 - v40;
  v41 = *(a4 + 16);
  if (v41)
  {
    v74 = v33;
    v75 = v35;
    v76 = v32;
    v77 = a5;
    v78 = a6;
    v79 = a7;
    v105 = MEMORY[0x277D84F90];
    v101 = v41;
    sub_216AB9770(0, v41, 0);
    v42 = v105;
    v43 = *(v19 + 80);
    v44 = a4 + ((v43 + 32) & ~v43);
    v87 = *(v19 + 72);
    v88 = v43;
    v86 = (v43 + 24) & ~v43;
    v85 = (v12 + 8);
    v45 = v28;
    v46 = v91;
    do
    {
      v99 = v42;
      v100 = v44;
      sub_2166A6EA4();
      v47 = *v46;
      v48 = v46[1];
      sub_21700DF14();
      sub_21700D234();
      sub_2166A6EA4();
      *(swift_allocObject() + 16) = v98;
      sub_2167A4788();
      v104[3] = sub_21700D2C4();
      v104[4] = MEMORY[0x277D21CB8];
      __swift_allocate_boxed_opaque_existential_1(v104);
      sub_21700D2B4();
      v49 = v96;
      sub_217006214();
      v50 = sub_2170061F4();
      v52 = v51;
      v53 = *v85;
      v54 = v97;
      (*v85)(v49, v97);
      *&v102 = v50;
      *(&v102 + 1) = v52;
      *&v103 = v47;
      *(&v103 + 1) = v48;
      sub_2167ADC3C(&v102, v45);
      v55 = v90;
      sub_2166A6EA4();
      sub_217006214();
      v56 = sub_2170061F4();
      v58 = v57;
      v53(v49, v54);
      v59 = (v45 + *(v55 + 24));
      *v59 = v56;
      v59[1] = v58;
      sub_2167ADC98(&v102);
      sub_216697664(v46, &qword_27CAB70B0, &qword_217015AA0);
      v105 = v99;
      v61 = *(v99 + 16);
      v60 = *(v99 + 24);
      v62 = v45;
      v63 = v99;
      if (v61 >= v60 >> 1)
      {
        sub_216AB9770(v60 > 1, v61 + 1, 1);
        v63 = v105;
      }

      *(v63 + 16) = v61 + 1;
      v42 = v63;
      sub_2167ADD44();
      v44 = v100 + v87;
      --v101;
      v45 = v62;
    }

    while (v101);
    v64 = v42;
    a7 = v79;
    a6 = v78;
    a5 = v77;
    v32 = v76;
    v35 = v75;
    v33 = v74;
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

  v65 = v84;
  sub_21700DF14();
  sub_21700DF14();
  sub_216933384(v83, v65, v64, a5, a6, &v102);
  v66 = v82;
  sub_21700D234();
  v67 = v66 + *(v33 + 20);
  v68 = v103;
  *v67 = v102;
  *(v67 + 16) = v68;
  *(v67 + 32) = v104[0];
  v69 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v69);
  sub_2167ADCEC();
  v70 = (v80 + ((*(v35 + 80) + 40) & ~*(v35 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v71[2] = 0;
  v71[3] = 0;
  v71[4] = a7;
  sub_2167ADD44();
  *(v71 + v70) = v98;

  sub_21677BBA0();

  return sub_2167ADEA8(v66, type metadata accessor for PresentAlertAction);
}

uint64_t sub_2167AC7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_217006E04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B0, &qword_217015AA0);
  (*(v5 + 16))(v7, a2 + *(v8 + 28), v4);
  (*(v5 + 32))(*(*(a1 + 64) + 40), v7, v4);
  return swift_continuation_throwingResume();
}

uint64_t sub_2167AC8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_21700D2A4();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2167ACA7C, 0, 0);
}

uint64_t sub_2167ACA7C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v0[5] = type metadata accessor for PresentAlertAction(0);
  v4 = sub_2167ADF00(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
  OUTLINED_FUNCTION_101_1(v4);
  sub_2167ADCEC();
  (*(v2 + 104))(v1, *MEMORY[0x277D21E18], v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[19] = v5;
  *v5 = v6;
  v5[1] = sub_2167ACBE0;
  OUTLINED_FUNCTION_91_0();

  return MEMORY[0x28217F468](v7, v8, v9, v10, v11);
}

uint64_t sub_2167ACBE0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[10];
  v9 = *v1;
  OUTLINED_FUNCTION_28();
  *v10 = v9;
  v3[20] = v0;

  (*(v7 + 8))(v6, v8);
  if (!v0)
  {
    (*(v3[14] + 8))(v3[15], v3[13]);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 2);
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2167ACD5C()
{
  OUTLINED_FUNCTION_31();
  v0 = OUTLINED_FUNCTION_92_2();
  v1(v0);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2167ACDDC()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  swift_allocError();
  *v2 = v1;
  swift_continuation_throwingResumeWithError();
  v3 = OUTLINED_FUNCTION_92_2();
  v4(v3);

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_2167ACEA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 129) = a6;
  *(v8 + 56) = a5;
  *(v8 + 64) = a8;
  *(v8 + 128) = a4;
  v9 = sub_21700D2A4();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = type metadata accessor for PushNowPlayingAction(0);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2167ACFA0, 0, 0);
}

uint64_t sub_2167ACFA0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_34_7(v1);
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_8_7();
  v4 = sub_2167ADF00(v2, v3, &unk_2170476B0);
  v5 = OUTLINED_FUNCTION_101_1(v4);
  OUTLINED_FUNCTION_11_10(v5);
  OUTLINED_FUNCTION_38_0(&unk_21706B3F0);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 112) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_4(v6);

  return v9(v8);
}

uint64_t sub_2167AD070()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_68_4();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2167AD180()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_60_2();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2167AD1E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_60_2();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2167AD258(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 129) = a6;
  *(v8 + 56) = a5;
  *(v8 + 64) = a8;
  *(v8 + 128) = a4;
  v9 = sub_21700D2A4();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = type metadata accessor for PushNowPlayingAction(0);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2167AD350, 0, 0);
}

uint64_t sub_2167AD350()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_34_7(v1);
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_8_7();
  v4 = sub_2167ADF00(v2, v3, &unk_2170476B0);
  v5 = OUTLINED_FUNCTION_101_1(v4);
  OUTLINED_FUNCTION_11_10(v5);
  OUTLINED_FUNCTION_38_0(&unk_21706B3E8);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 112) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_4(v6);

  return v9(v8);
}

uint64_t sub_2167AD420()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v7 = OUTLINED_FUNCTION_68_4();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2167AD530(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 129) = a6;
  *(v8 + 56) = a5;
  *(v8 + 64) = a8;
  *(v8 + 128) = a4;
  v9 = sub_21700D2A4();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = type metadata accessor for PushNowPlayingAction(0);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2167AD628, 0, 0);
}

uint64_t sub_2167AD628()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_34_7(v1);
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_8_7();
  v4 = sub_2167ADF00(v2, v3, &unk_2170476B0);
  v5 = OUTLINED_FUNCTION_101_1(v4);
  OUTLINED_FUNCTION_11_10(v5);
  OUTLINED_FUNCTION_38_0(&unk_21706B400);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 112) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_4(v6);

  return v9(v8);
}

uint64_t sub_2167AD6F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 129) = a6;
  *(v8 + 56) = a5;
  *(v8 + 64) = a8;
  *(v8 + 128) = a4;
  v9 = sub_21700D2A4();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = type metadata accessor for PushNowPlayingAction(0);
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2167AD7F0, 0, 0);
}

uint64_t sub_2167AD7F0()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_34_7(v1);
  OUTLINED_FUNCTION_26_8();
  OUTLINED_FUNCTION_8_7();
  v4 = sub_2167ADF00(v2, v3, &unk_2170476B0);
  v5 = OUTLINED_FUNCTION_101_1(v4);
  OUTLINED_FUNCTION_11_10(v5);
  OUTLINED_FUNCTION_38_0(&unk_21706B3F8);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 112) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_18_4(v6);

  return v9(v8);
}

uint64_t sub_2167AD970(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v16 = *a7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2166AB4A0;

  return sub_2167ACEA8(a1, a2, a3, a4, a5, a6 & 1, v16, a8);
}

uint64_t sub_2167ADA58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v16 = *a7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2166AB4A0;

  return sub_2167AD258(a1, a2, a3, a4, a5, a6 & 1, v16, a8);
}

uint64_t sub_2167ADB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_31_10();
  v12 = OUTLINED_FUNCTION_124_0();
  v13 = OUTLINED_FUNCTION_20_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_6_16(v13);
  OUTLINED_FUNCTION_7_3();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2167ADBCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B0, &qword_217015AA0);
  OUTLINED_FUNCTION_36(v1);
  return sub_2167AC7C0(*(v0 + 16), v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80)));
}

uint64_t sub_2167ADCEC()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2167ADD44()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2167ADD9C()
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_82_0();
  v0 = type metadata accessor for PresentAlertAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A4;
  OUTLINED_FUNCTION_91_0();

  return sub_2167AC8E8(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2167ADEA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167ADF00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167ADF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_31_10();
  v12 = OUTLINED_FUNCTION_124_0();
  v13 = OUTLINED_FUNCTION_20_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_6_16(v13);
  OUTLINED_FUNCTION_7_3();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2167ADFD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v16 = *a7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2166AB4A0;

  return sub_2167AD530(a1, a2, a3, a4, a5, a6 & 1, v16, a8);
}

uint64_t sub_2167AE0BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t *a7, uint64_t a8)
{
  v16 = *a7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_2166AB4A0;

  return sub_2167AD6F8(a1, a2, a3, a4, a5, a6 & 1, v16, a8);
}

uint64_t sub_2167AE1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_31_10();
  v12 = OUTLINED_FUNCTION_124_0();
  v13 = OUTLINED_FUNCTION_20_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_6_16(v13);
  OUTLINED_FUNCTION_7_3();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_2167AE230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_31_10();
  v12 = OUTLINED_FUNCTION_124_0();
  v13 = OUTLINED_FUNCTION_20_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_6_16(v13);
  OUTLINED_FUNCTION_7_3();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_79_4@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 248) = a1;
  v2[26] = v7;
  v2[27] = v6;
  v2[28] = v5;
  v2[29] = v4;
  return v1 + 56;
}

uint64_t OUTLINED_FUNCTION_97_3()
{
}

uint64_t OUTLINED_FUNCTION_98_2(uint64_t a1)
{

  return sub_21700F784();
}

uint64_t OUTLINED_FUNCTION_99_3(float a1)
{
  *v1 = a1;

  return sub_2170067A4();
}

id OUTLINED_FUNCTION_100_4()
{
  *(v0 + 240) = v1;

  return v1;
}

uint64_t *OUTLINED_FUNCTION_101_1(uint64_t a1)
{
  *(v1 + 48) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 16));
}

uint64_t OpenFindFriendsPageAction.init(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700D284();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t OpenFindFriendsPageAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2167AE4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

uint64_t sub_2167AE78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0, &qword_217015DB8);
  OUTLINED_FUNCTION_36(v8);
  v7[8] = OUTLINED_FUNCTION_80();
  v9 = type metadata accessor for MusicAppDestination(0);
  v7[9] = v9;
  OUTLINED_FUNCTION_36(v9);
  v7[10] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v7[11] = sub_21700EA24();
  v11 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167AE87C, v11, v10);
}

uint64_t sub_2167AE87C()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = (*(v1 + 104))(v2, v1);
  v5 = v0[9];
  if (v3)
  {
    v6 = v3;
    v7 = v0[8];
    type metadata accessor for FlowAction(0);
    sub_2168EC904(v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v5) == 1)
    {
      sub_2167AF7F4(v0[8]);
LABEL_4:
      sub_2167AEB54(v0[3]);

LABEL_5:
      v8 = v0[2];
      v9 = *MEMORY[0x277D21CA8];
      sub_21700D2A4();
      OUTLINED_FUNCTION_9();
      (*(v10 + 104))(v8, v9);

      OUTLINED_FUNCTION_3();
      goto LABEL_12;
    }

    v15 = v0[10];
    v16 = v0[5];
    sub_2167AF85C(v0[8], v15);
    v17 = (*(*v16 + 80))(v15, 0);
    v18 = v0[10];
    if (v17)
    {
      (*(*v0[5] + 96))(v0[10], v0[3], v6);
      OUTLINED_FUNCTION_0_23();
      sub_2167AF9C4(v18, v19);

      goto LABEL_5;
    }

    v20 = sub_2168ED1E4();
    v22 = v0[10];
    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_23();
      sub_2167AF9C4(v22, v29);
      goto LABEL_4;
    }

    v23 = v0[9];
    v24 = type metadata accessor for DetachedFlowActionImplementation.Error(0, v0[6], v0[7], v21);
    v25 = OUTLINED_FUNCTION_1_8(v24);
    OUTLINED_FUNCTION_3_0(v25);
    v27 = v26;
    sub_2167AF968(v22, v26, type metadata accessor for MusicAppDestination);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v23);
    swift_willThrow();

    sub_2167AF9C4(v22, type metadata accessor for MusicAppDestination);
  }

  else
  {
    v12 = type metadata accessor for DetachedFlowActionImplementation.Error(0, v0[6], v0[7], v4);
    v13 = OUTLINED_FUNCTION_1_8(v12);
    OUTLINED_FUNCTION_3_0(v13);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v5);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_3();
LABEL_12:

  return v11();
}

uint64_t sub_2167AEB54(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FlowAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v7);
  v9 = v40 - v8 + 16;
  v10 = sub_21700D404();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_2167AF90C(v2 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationType, v44);
  if (!v45)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v29 = sub_217007DD4();
    sub_2167AFA78(&qword_280E45BA8, type metadata accessor for FlowAction, &unk_21706E4C8);
    sub_217008644();
    v29(v40, 0);
  }

  sub_21700D414();
  v14 = OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_bindings;
  swift_beginAccess();
  v15 = sub_216934EDC(v13, *(v2 + v14));
  if (!v15)
  {
    swift_endAccess();
    (*(v11 + 8))(v13, v10);
    goto LABEL_9;
  }

  v16 = v15;
  swift_endAccess();
  (*(v11 + 8))(v13, v10);
  v42 = v4;
  v43 = sub_2167AFA78(qword_27CAB70D0, type metadata accessor for FlowAction, &unk_21706E5C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_2167AF968(a1, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  v18 = (*(*v16 + 80))(v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  if (!v18)
  {

LABEL_9:
    sub_2167AF968(a1, v6, type metadata accessor for FlowAction);
    v31 = sub_217007C84();
    v32 = sub_21700ED84();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136446210;
      sub_2167AF968(v6, v9, type metadata accessor for FlowAction);
      v35 = sub_21700E594();
      v37 = v36;
      sub_2167AF9C4(v6, type metadata accessor for FlowAction);
      v38 = sub_2166A85FC(v35, v37, v40);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_216679000, v31, v32, "Failed to push element %{public}s, could not create viewController", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x21CEA1440](v34, -1, -1);
      MEMORY[0x21CEA1440](v33, -1, -1);
    }

    else
    {

      sub_2167AF9C4(v6, type metadata accessor for FlowAction);
    }

    return sub_2167AFA24(v44);
  }

  sub_2167AF968(a1, v9, type metadata accessor for FlowAction);
  v19 = sub_216ED9884();
  v21 = v20;
  sub_2167AF9C4(v9, type metadata accessor for FlowAction);
  v22 = v2 + OBJC_IVAR____TtC7MusicUI19MusicStackAuthority_navigationControllerDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    v40[0] = sub_216ED9748();
    v40[1] = v25;
    v41 = v19;
    v42 = v21;
    v26 = *(v23 + 8);
    sub_21677A3F0(v19, v21);
    v26(v18, v40, ObjectType, v23);
    swift_unknownObjectRelease();

    sub_21677A510(v19, v21);
    v27 = v41;
    v28 = v42;

    sub_21677A510(v27, v28);
  }

  else
  {

    sub_21677A510(v19, v21);
  }

  return sub_2167AFA24(v44);
}

uint64_t sub_2167AF0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v9 = v4[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  v13 = *(a4 + 16);
  v14 = *(a4 + 24);
  *v12 = v5;
  v12[1] = sub_2167AFCA0;

  return sub_2167AE78C(a1, a2, v11, v10, v9, v13, v14);
}

uint64_t sub_2167AF1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_2167AF21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0, &qword_217015DB8);
  OUTLINED_FUNCTION_36(v6);
  v5[6] = OUTLINED_FUNCTION_80();
  v7 = type metadata accessor for MusicAppDestination(0);
  v5[7] = v7;
  OUTLINED_FUNCTION_36(v7);
  v5[8] = OUTLINED_FUNCTION_80();
  sub_21700EA34();
  v5[9] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167AF308, v9, v8);
}

uint64_t sub_2167AF308()
{
  v1 = v0[3];

  if (*(v1 + *(type metadata accessor for FlowAction(0) + 28)))
  {
    v2 = MEMORY[0x277D21CA0];
LABEL_7:
    v5 = v0[2];
    v6 = *v2;
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    (*(v7 + 104))(v5, v6);

    OUTLINED_FUNCTION_3();
    goto LABEL_8;
  }

  v4 = v0[6];
  v3 = v0[7];
  sub_2168EC904(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    sub_2167AF7F4(v0[6]);
LABEL_5:
    sub_2167AEB54(v0[3]);
LABEL_6:
    v2 = MEMORY[0x277D21CA8];
    goto LABEL_7;
  }

  v10 = v0[8];
  v11 = v0[5];
  sub_2167AF85C(v0[6], v10);
  if ((*(*v11 + 80))(v10, 0))
  {
    (*(*v0[5] + 96))(v0[8], v0[3], v0[4]);
    OUTLINED_FUNCTION_0_23();
    sub_2167AF9C4(v12, v13);
    goto LABEL_6;
  }

  v14 = sub_2168ED1E4();
  v15 = v0[8];
  if ((v14 & 1) == 0)
  {
    sub_2167AF9C4(v0[8], type metadata accessor for MusicAppDestination);
    goto LABEL_5;
  }

  type metadata accessor for FlowActionImplementation.Error(0);
  v16 = sub_2167AFA78(&qword_27CAB70C8, type metadata accessor for FlowActionImplementation.Error, &unk_217015E68);
  OUTLINED_FUNCTION_3_0(v16);
  sub_2167AF968(v15, v17, type metadata accessor for MusicAppDestination);
  swift_willThrow();
  v18 = v0[8];
  OUTLINED_FUNCTION_0_23();
  sub_2167AF9C4(v18, v19);

  OUTLINED_FUNCTION_3();
LABEL_8:

  return v8();
}

uint64_t sub_2167AF590(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2167AF644;

  return sub_2167AF21C(a1, a2, v8, v7, v6);
}

uint64_t sub_2167AF644()
{

  OUTLINED_FUNCTION_3();

  return v0();
}

unint64_t sub_2167AF734(uint64_t a1)
{
  result = sub_2167AF75C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167AF75C()
{
  result = qword_280E36960;
  if (!qword_280E36960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E36960);
  }

  return result;
}

uint64_t sub_2167AF7B0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167AF7F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70C0, &qword_217015DB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167AF85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FlowActionImplementation.Error(uint64_t a1)
{
  result = qword_27CAB7158;
  if (!qword_27CAB7158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2167AF968(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167AF9C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2167AFA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167AFAD8(uint64_t a1)
{
  v1 = type metadata accessor for MusicAppDestination(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2167AFB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicAppDestination(0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2167AFBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicAppDestination(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_2167AFBF8(uint64_t a1)
{
  v2 = type metadata accessor for MusicAppDestination(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2167AFCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v55 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v47 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  sub_21700D7A4();
  sub_21700CE04();
  v20 = *(v51 + 16);
  v49 = v4;
  v44 = v20;
  v20(v8, v52, v4);
  v45 = v19;
  v46 = v8;
  sub_21700D734();
  sub_21700CE04();
  v21 = sub_21700CDB4();
  v23 = v22;
  v24 = *(v11 + 8);
  v50 = v9;
  v24(v16, v9);
  v48 = v24;
  if (v23)
  {
    v43 = v21;
    v25 = v47;
    sub_21700CE04();
    v26 = sub_21700CDB4();
    v28 = v27;
    v24(v25, v50);
    if (v28)
    {
      v29 = type metadata accessor for PopoverSelector(0);
      v53 = v43;
      v54 = v23;
      v30 = v55;
      sub_21700F364();
      v31 = (v30 + *(v29 + 28));
      *v31 = v26;
      v31[1] = v28;
      sub_21700CE04();
      v32 = v52;
      v33 = v49;
      v44(v46, v52, v49);
      sub_2167A7528();
      v34 = sub_21700E944();
      (*(v51 + 8))(v32, v33);
      result = v48(a1, v50);
      *(v30 + *(v29 + 24)) = v34;
      return result;
    }

    v36 = 0xEE0044496D657449;
    v37 = 0x64657463656C6573;
  }

  else
  {
    v36 = 0xE200000000000000;
    v37 = 25705;
  }

  v38 = sub_21700E2E4();
  sub_2167B0208(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  v40 = v39;
  v41 = type metadata accessor for PopoverSelector(0);
  *v40 = v37;
  v40[1] = v36;
  v40[2] = v41;
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D22530], v38);
  swift_willThrow();
  (*(v51 + 8))(v52, v49);
  v48(a1, v50);
  return sub_2167B0250(v55);
}

uint64_t sub_2167B0208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167B0250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MusicClickMetricsModifier(uint64_t a1)
{
  result = qword_27CAB7170;
  if (!qword_27CAB7170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167B032C(uint64_t a1)
{
  type metadata accessor for MusicMetrics.ClickFields(319);
  if (v1 <= 0x3F)
  {
    sub_2166B44E8(319, &qword_27CAB7180, &qword_27CAB7188, &unk_217015F90);
    if (v2 <= 0x3F)
    {
      sub_2166B44E8(319, &qword_27CAB7190, &qword_27CAB7198, &qword_217029020);
      if (v3 <= 0x3F)
      {
        sub_2166B44E8(319, &qword_27CAB71A0, &qword_27CAB71A8, &qword_217015FA0);
        if (v4 <= 0x3F)
        {
          sub_217007CA4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2167B045C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28[0] = a2;
  v28[1] = a1;
  v4 = type metadata accessor for MusicClickMetricsModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217008074();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71B0, &qword_217015FF8);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v28 - v18;
  sub_217008064();
  sub_2167B0E28(v3, v7);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  sub_2167B0EDC(v7, v21 + v20);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2167B0DC8;
  *(v22 + 24) = v21;
  sub_21700B184();

  (*(v10 + 8))(v13, v8);
  sub_217008114();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71C0, &qword_217016008);
  OUTLINED_FUNCTION_2_22();
  sub_2166D9530(v23, &qword_27CAB71C0, &qword_217016008, v24);
  OUTLINED_FUNCTION_1_9();
  sub_2166D9530(v25, &qword_27CAB71B0, &qword_217015FF8, v26);
  sub_21700A764();
  return (*(v16 + 8))(v19, v14);
}

void sub_2167B077C(uint64_t a1)
{
  v2 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198, &qword_217029020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  v13 = sub_21700D574();
  v40 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v39 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicClickMetricsModifier(0);
  sub_216C0C3A0(v41);
  v15 = v42;
  if (!v42)
  {
    sub_216697664(v41, &qword_27CAB7188, &unk_217015F90);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_6;
  }

  v37 = v4;
  v16 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v16 + 8))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
LABEL_6:
    v19 = &unk_27CABFB50;
    v20 = &qword_217016010;
    v21 = v12;
LABEL_7:
    sub_216697664(v21, v19, v20);
    sub_216C0C3A0(v41);
    v22 = v42;
    sub_216697664(v41, &qword_27CAB7188, &unk_217015F90);
    v23 = sub_217007C84();
    v24 = sub_21700ED84();
    v25 = os_log_type_enabled(v23, v24);
    if (v22)
    {
      if (v25)
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        v27 = "No Page Metrics Dictionary found in the environment. Did you remember to add the musicPageMetrics modifier to your page view?";
LABEL_12:
        _os_log_impl(&dword_216679000, v23, v24, v27, v26, 2u);
        MEMORY[0x21CEA1440](v26, -1, -1);
      }
    }

    else if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = "No Metrics Pipeline found on the bootstrap, skipping Click metrics. Did you remember to call the Music Metrics Context modifier?";
      goto LABEL_12;
    }

    return;
  }

  v18 = v39;
  v17 = v40;
  (*(v40 + 32))(v39, v12, v13);
  sub_216C0C3B4();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v18, v13);
    v19 = &qword_27CAB7198;
    v20 = &qword_217029020;
    v21 = v7;
    goto LABEL_7;
  }

  v28 = v38;
  sub_2167B0EDC(v7, v38);
  v29 = v37;
  sub_2167B0E28(a1, v37);
  sub_216C0C3D8(v41);
  v30 = v42;
  if (v42)
  {
    v31 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v32 = (*(v31 + 8))(v30, v31);
    v30 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  else
  {
    sub_216697664(v41, &qword_27CAB71A8, &qword_217015FA0);
    v32 = 0;
  }

  v34 = sub_216F0DBDC(v28);
  v35 = v39;
  sub_216C949EC(v29, v34, v39, 0, 0, v32, v30);

  sub_2167B0E84(v29, type metadata accessor for MusicMetrics.ClickFields);
  sub_2167B0E84(v28, type metadata accessor for MusicMetrics.PageFields);
  (*(v40 + 8))(v35, v13);
}

uint64_t sub_2167B0CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2167B0EDC(a1, a2);
  v3 = type metadata accessor for MusicClickMetricsModifier(0);
  v4 = a2 + v3[5];
  *v4 = swift_getKeyPath();
  *(v4 + 40) = 0;
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71B8, &qword_217016000);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[7];
  *v6 = swift_getKeyPath();
  *(v6 + 40) = 0;
  return sub_217007C94();
}

void sub_2167B0DC8()
{
  v1 = *(type metadata accessor for MusicClickMetricsModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2167B077C(v2);
}

uint64_t sub_2167B0E28(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2167B0E84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167B0EDC(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_110();
  v5(v4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t type metadata accessor for PlayAction(uint64_t a1)
{
  result = qword_280E45658;
  if (!qword_280E45658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return sub_216688010(a1, qword_280E4A3B8, &nominal type descriptor for PlayAction);
}

uint64_t sub_2167B0FAC(uint64_t a1)
{
  v1 = sub_21700D284();
  if (v2 <= 0x3F)
  {
    sub_21668A338(319, &qword_280E29FA8, &qword_27CAB71D8, &qword_2170160A8);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_216688154();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_2166D90EC(319);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_21668A338(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_2167B10DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v50 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  v59 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v56 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v51 = v16;
  MEMORY[0x28223BE20](v17);
  v52 = &v45 - v18;
  MEMORY[0x28223BE20](v19);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v49 = v20;
  MEMORY[0x28223BE20](v21);
  v54 = type metadata accessor for PlayAction(0);
  v22 = v54[9];
  v58 = a3;
  *(a3 + v22) = 0;
  sub_21700CE04();
  v57 = v8;
  v53 = *(v8 + 16);
  v53(v13, a2, v6);
  v23 = v55;
  sub_21700D224();
  if (v23)
  {
    (*(v57 + 8))(a2, v6);
    return (*(v56 + 8))(a1, v59);
  }

  else
  {
    v25 = v58;
    (*(v49 + 32))();
    v26 = v52;
    v46 = a1;
    v47 = a2;
    sub_21700CE04();
    v27 = v50;
    v48 = v6;
    v53(v50, a2, v6);
    sub_216AC609C();
    v28 = v54;
    *(v25 + v54[5]) = v29;
    sub_21700CE04();
    v30 = sub_21700CDB4();
    v32 = v31;
    v55 = *(v56 + 8);
    v55(v26, v59);
    v33 = (v25 + v28[6]);
    *v33 = v30;
    v33[1] = v32;
    type metadata accessor for ContentDescriptor(0);
    sub_21700CE04();
    v53(v27, v47, v48);
    v56 = 0;
    sub_2167B17A8(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v34 = v58;
    sub_21700D734();
    sub_21700CE04();
    v35 = sub_21700CDB4();
    v37 = v36;
    v38 = v59;
    v39 = v55;
    v55(v26, v59);
    v40 = v54;
    v41 = (v34 + v54[8]);
    *v41 = v35;
    v41[1] = v37;
    v42 = v51;
    v43 = v46;
    sub_21700CE04();
    LOBYTE(v35) = sub_21700CD44();
    v39(v42, v38);
    *(v58 + v40[10]) = v35 & 1;
    sub_21700CE04();
    v44 = v47;
    sub_21700D2E4();
    (*(v57 + 8))(v44, v48);
    v39(v43, v38);
    return (v39)(v26, v38);
  }
}

uint64_t sub_2167B1698(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  sub_21700DF14();
  return v2;
}

uint64_t sub_2167B1750(uint64_t a1)
{
  result = sub_2167B17A8(qword_280E45678, type metadata accessor for PlayAction, &unk_2170160FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167B17A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SetSuggestionSearchTermAction(uint64_t a1)
{
  result = qword_280E31278;
  if (!qword_280E31278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167B1864(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_216688154();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2167B18F8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v72 = a2;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v73 = v10;
  MEMORY[0x28223BE20](v11);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v67 = &v63 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  MEMORY[0x28223BE20](v18);
  v19 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v68 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_21700CE04();
  v25 = v6;
  v26 = v72;
  (*(v25 + 16))(v9, v72, v4);
  v27 = v70;
  sub_21700D224();
  if (v27)
  {
    (*(v25 + 8))(v26, v4);
    return (*(v73 + 8))(v24, v71);
  }

  v64 = v19;
  v65 = v25;
  v70 = v4;
  (*(v68 + 32))(v69, v23, v19);
  v29 = v24;
  sub_21700CE04();
  v30 = sub_21700CDB4();
  v32 = v31;
  v33 = v73 + 8;
  v34 = *(v73 + 8);
  v35 = v71;
  v34(v17, v71);
  v73 = v33;
  if (v32)
  {
    v63 = v30;
    v36 = v67;
    sub_21700CE04();
    v37 = sub_21700CDB4();
    v39 = v38;
    v34(v36, v35);
    if (v39)
    {
      v40 = type metadata accessor for SetSuggestionSearchTermAction(0);
      v41 = v69;
      v42 = (v69 + v40[5]);
      *v42 = v63;
      v42[1] = v32;
      v43 = (v41 + v40[6]);
      *v43 = v37;
      v43[1] = v39;
      v44 = v66;
      sub_21700CE04();
      v45 = sub_21700CDB4();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_1_10();
      v49(v48);
      v34(v29, v35);
      result = (v34)(v44, v35);
      v50 = (v41 + v40[7]);
      *v50 = v45;
      v50[1] = v47;
      return result;
    }

    v66 = 0xEB000000006D7265;
    v67 = v34;
    v51 = 0x5479616C70736964;
    v52 = v29;
  }

  else
  {
    v66 = 0xEA00000000006D72;
    v67 = v34;
    v51 = 0x6554686372616573;
    v52 = v29;
  }

  v53 = sub_21700E2E4();
  sub_2167B1EA4();
  OUTLINED_FUNCTION_2_23();
  v55 = v54;
  v56 = type metadata accessor for SetSuggestionSearchTermAction(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0, &qword_21702C7F0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_217013DA0;
  *(v57 + 32) = OUTLINED_FUNCTION_2_23();
  v58 = v66;
  *v59 = v51;
  v59[1] = v58;
  v59[2] = v56;
  v60 = *(*(v53 - 8) + 104);
  v60(v59, *MEMORY[0x277D22530], v53);
  *v55 = v56;
  v55[1] = v57;
  v60(v55, *MEMORY[0x277D22538], v53);
  swift_willThrow();
  v61 = OUTLINED_FUNCTION_1_10();
  v62(v61);
  (v67)(v52, v71);
  return (*(v68 + 8))(v69, v64);
}

unint64_t sub_2167B1EA4()
{
  result = qword_280E2A0F8;
  if (!qword_280E2A0F8)
  {
    sub_21700E2E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A0F8);
  }

  return result;
}

uint64_t sub_2167B1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for PresentationItem.Destination(0, a5, a6, a4);
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  sub_21700EA34();
  v6[9] = sub_21700EA24();
  v9 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2167B1FFC, v9, v8);
}

uint64_t sub_2167B1FFC()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v0[3];

  v7 = (v6 + *(type metadata accessor for PresentAlertAction(0) + 20));
  v8 = v7[1];
  v10 = v7[2];
  v9 = v7[3];
  v11 = v7[4];
  *v1 = *v7;
  v1[1] = v8;
  v1[2] = v10;
  v1[3] = v9;
  v1[4] = v11;
  v1[5] = v4;
  swift_storeEnumTagMultiPayload();
  sub_21700DF14();

  sub_21700DF14();
  sub_21700DF14();
  sub_216AF325C();
  (*(v3 + 8))(v1, v2);
  v12 = *MEMORY[0x277D21CA8];
  v13 = sub_21700D2A4();
  (*(*(v13 - 8) + 104))(v5, v12, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_2167B215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = *(a4 + 16);
  v13 = *(a4 + 24);
  *v11 = v5;
  v11[1] = sub_2166DFAC0;

  return sub_2167B1EFC(a1, a2, a3, v10, v12, v13);
}

uint64_t sub_2167B2224(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167B2264()
{
  result = qword_280E3EB18[0];
  if (!qword_280E3EB18[0])
  {
    type metadata accessor for PresentAlertAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3EB18);
  }

  return result;
}

uint64_t sub_2167B22BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

id sub_2167B2328(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC7MusicUI24JSRestrictionsController__isExplicitContentRestricted;
  *&v1[v3] = swift_getKeyPath();
  v4 = OBJC_IVAR____TtC7MusicUI24JSRestrictionsController__areMusicVideosRestricted;
  *&v1[v4] = swift_getKeyPath();
  v5 = OBJC_IVAR____TtC7MusicUI24JSRestrictionsController__isTVRestricted;
  *&v1[v5] = swift_getKeyPath();
  v6 = OBJC_IVAR____TtC7MusicUI24JSRestrictionsController__areMoviesRestricted;
  *&v1[v6] = swift_getKeyPath();
  v7 = OBJC_IVAR____TtC7MusicUI24JSRestrictionsController__isSocialDisabled;
  *&v1[v7] = swift_getKeyPath();
  v8 = OBJC_IVAR____TtC7MusicUI24JSRestrictionsController__isSubscriptionContentRestricted;
  *&v1[v8] = swift_getKeyPath();
  type metadata accessor for RestrictionsController();
  sub_21700D4D4();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI24JSRestrictionsController_restrictionsController] = v12;
  type metadata accessor for SubscriptionContentRestrictionController();
  sub_21700E094();
  *&v1[OBJC_IVAR____TtC7MusicUI24JSRestrictionsController_subscriptionContentRestrictionController] = v12;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_2167B26A0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v5 = sub_216ECD574(v2, KeyPath, v4);

  return v5;
}

id sub_2167B2744()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2167B2894()
{
  v0 = sub_2167B29C8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_216AB9808(0, v1, 0);
    v2 = v15;
    sub_2167B2E14();
    v3 = v0 + 40;
    do
    {
      sub_21700DF14();
      v4 = sub_21700A174();
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_216AB9808(v11 > 1, v12 + 1, 1);
      }

      *(v15 + 16) = v12 + 1;
      v13 = v15 + 32 * v12;
      *(v13 + 32) = v4;
      *(v13 + 40) = v6;
      *(v13 + 48) = v8 & 1;
      *(v13 + 56) = v10;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2167B29C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  v2 = type metadata accessor for PosterLockup(0);
  v3 = (v0 + v2[7]);
  v4 = v3[1];
  *(inited + 32) = *v3;
  *(inited + 40) = v4;
  v5 = (v0 + v2[9]);
  v6 = *v5;
  v7 = v5[1];
  *(inited + 48) = *v5;
  *(inited + 56) = v7;
  v42 = inited;
  v8 = (v0 + v2[6]);
  v10 = *v8;
  v9 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  if (!*(v8 + 83))
  {
    v17 = v8[4];
    if (v7)
    {
      if (v9)
      {
        v18 = v6 == v10 && v7 == v9;
        if (v18 || (sub_21700F7D4() & 1) != 0)
        {
          sub_21700DF14();
          sub_21700DF14();
          sub_21700DF14();
LABEL_30:
          sub_21700DF14();
          sub_21700DF14();
          goto LABEL_31;
        }
      }
    }

    else if (!v9)
    {
      sub_21700DF14();
      goto LABEL_30;
    }

    sub_21700DF14();
    swift_bridgeObjectRetain_n();
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    sub_216937ABC();
    v25[2] = 3;
    v25[8] = v10;
    v25[9] = v9;
    v42 = v25;
LABEL_31:
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_217013D90;
    if (v11)
    {
      v26 = sub_216B80C28(v11);
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v16 + 32) = v26;
    *(v16 + 40) = v27;
    *(v16 + 48) = v12;
    *(v16 + 56) = v17;

    goto LABEL_35;
  }

  if (*(v8 + 83) == 1)
  {
    v13 = v8[6];
    v14 = v8[7];
    v40 = v8[5];
    v41 = v8[8];
    v15 = v8[9];
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_217015240;
    if (v9 == 1)
    {
      v10 = 0;
      v9 = 0;
      v11 = 0;
      v12 = 0;
    }

    else
    {
      sub_21700DF14();
      sub_21700DF14();
    }

    *(v16 + 32) = v10;
    *(v16 + 40) = v9;
    *(v16 + 48) = v11;
    *(v16 + 56) = v12;
    if (v13 == 1)
    {
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 64) = 0u;
      sub_21700DF14();
    }

    else
    {
      *(v16 + 64) = v40;
      *(v16 + 72) = v13;
      sub_21700DF14();
      sub_21700DF14();
      sub_21700DF14();
      if (v14)
      {
        v20 = sub_216B80C28(v14);
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v16 + 80) = v20;
      *(v16 + 88) = v21;
      *(v16 + 96) = v41;
      *(v16 + 104) = v15;
    }

    goto LABEL_28;
  }

  v19 = swift_initStackObject();
  v16 = v19;
  *(v19 + 16) = xmmword_217013D90;
  if (v9 == 1)
  {
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
LABEL_27:
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    sub_21700DF14();
LABEL_28:
    sub_21700DF14();
    goto LABEL_35;
  }

  *(v19 + 32) = v10;
  *(v19 + 40) = v9;
  if (!v11)
  {
    sub_21700DF14();
    goto LABEL_27;
  }

  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  v22 = sub_216B80C28(v11);
  v24 = v23;

  *(v16 + 48) = v22;
  *(v16 + 56) = v24;
LABEL_35:
  sub_216BDD25C(v16);
  v28 = 0;
  v29 = v42[2];
  v30 = MEMORY[0x277D84F90];
LABEL_36:
  v31 = 16 * v28 + 40;
  while (v29 != v28)
  {
    if (v28 >= v42[2])
    {
      __break(1u);
    }

    ++v28;
    v32 = v31 + 16;
    v33 = *(v42 + v31);
    v31 += 16;
    if (v33)
    {
      v34 = *(v42 + v32 - 24);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v30 = v37;
      }

      v35 = *(v30 + 16);
      if (v35 >= *(v30 + 24) >> 1)
      {
        sub_21693776C();
        v30 = v38;
      }

      *(v30 + 16) = v35 + 1;
      v36 = v30 + 16 * v35;
      *(v36 + 32) = v34;
      *(v36 + 40) = v33;
      goto LABEL_36;
    }
  }

  return v30;
}

unint64_t sub_2167B2E14()
{
  result = qword_280E2A0E8;
  if (!qword_280E2A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A0E8);
  }

  return result;
}

uint64_t sub_2167B2EAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_2167B2EFC(a1, a2);
  return v4;
}

uint64_t sub_2167B2EFC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_2167B2F74()
{
  sub_216781DA8(v0 + 16);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2167B3000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_21700DAF4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7238, &qword_217016820);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;

  sub_217007764();
  v17 = &v16[*(v14 + 36)];
  *v17 = a1;
  v18 = _s15PaddingModifierVMa(0);
  v19 = v18[5];
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240, &qword_2170193B0);
  swift_storeEnumTagMultiPayload();
  v20 = &v17[v18[6]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &v17[v18[7]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = &v17[v18[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;

  v23 = sub_2170076F4();
  sub_21700EDC4();

  v24 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
  {
    sub_21669987C(v10, &qword_27CAB6D58, &unk_217014E30);
    v25 = 1;
  }

  else
  {
    (*(*(v24 - 8) + 32))(v13, v10, v24);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v25, 1, v24);
  sub_21700DAE4();
  sub_2167B35EC();
  sub_21700A1C4();
  (*(v4 + 8))(v7, v28);
  sub_21669987C(v13, &qword_27CAB6D58, &unk_217014E30);
  return sub_21669987C(v16, &qword_27CAB7238, &qword_217016820);
}

uint64_t BannerMessageModel.id.getter()
{
  v0 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170076F4();
  v7 = sub_2167B3508(v6);
  if (v8)
  {
    return v7;
  }

  sub_217006214();
  v9 = sub_2170061F4();
  (*(v2 + 8))(v5, v0);
  return v9;
}

void BannerMessageModel.impressionMetrics.getter(uint64_t a1)
{
  v1 = sub_2170076F4();
  sub_21700EDC4();
}

double BannerMessageModel.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2167B3508(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

unint64_t sub_2167B35EC()
{
  result = qword_27CAB7248;
  if (!qword_27CAB7248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7238, &qword_217016820);
    sub_2167B36D8(&qword_27CAB7250, MEMORY[0x277CEE7D8], MEMORY[0x277CEE7D0]);
    sub_2167B36D8(qword_280E41908, _s15PaddingModifierVMa, &unk_21706FC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7248);
  }

  return result;
}

uint64_t sub_2167B36D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167B3760(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  a2(a1);
  sub_217009DE4();
  v4 = sub_217009E34();

  *a3 = v4;
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

uint64_t sub_2167B37F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167B3834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2167B3890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ReportAConcernSearchQueryContext.term.getter()
{
  v1 = *v0;
  sub_21700DF14();
  return v1;
}

uint64_t static ReportAConcernSearchQueryContext.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t ReportAConcernSearchQueryContext.hashValue.getter()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_2167B39CC(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

unint64_t sub_2167B3A18()
{
  result = qword_27CAB7258;
  if (!qword_27CAB7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7258);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2167B3A80(uint64_t a1, int a2)
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

uint64_t sub_2167B3AC0(uint64_t result, int a2, int a3)
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

uint64_t sub_2167B3B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v17 = a1;
  v13 = *(v6 + 16);
  (v13)(v8, v2, v5, v10);
  sub_2167B3CE8();
  sub_21700D5A4();
  v17 = a1;
  v13(v12, v8, v5);
  sub_2167B3D3C();
  sub_21700D5A4();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v17 = a1;
  v13(a2, v12, v5);
  sub_2167B3D90();
  sub_21700D5A4();
  return (v14)(v12, v5);
}

unint64_t sub_2167B3CE8()
{
  result = qword_280E47EE0[0];
  if (!qword_280E47EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E47EE0);
  }

  return result;
}

unint64_t sub_2167B3D3C()
{
  result = qword_280E2DA08;
  if (!qword_280E2DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DA08);
  }

  return result;
}

unint64_t sub_2167B3D90()
{
  result = qword_280E2DA00;
  if (!qword_280E2DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2DA00);
  }

  return result;
}

uint64_t sub_2167B3E00@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v77 = type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_1();
  v85 = v2;
  MEMORY[0x28223BE20](v3);
  v86 = v4;
  v87 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21700C644();
  OUTLINED_FUNCTION_1();
  v76 = v5;
  MEMORY[0x28223BE20](v6);
  v75[0] = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60, &qword_217014E40);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v15 = v75 - v14;
  v16 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v16);
  v18 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v75 - v20;
  v22 = type metadata accessor for LiveRadioGridLockupContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  v25 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72C0, &qword_217016B70);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  v78 = v28;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72C8, &qword_217016B78);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  v80 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72D0, &qword_217016B80);
  OUTLINED_FUNCTION_1();
  v83 = v32;
  v84 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  v82 = v34;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72D8, &qword_217016B88);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v81 = v36;
  v37 = *v1;

  sub_216DE8CB8();
  v75[1] = v15;
  sub_2166A6EA4();
  sub_2167B7AE4(v21, type metadata accessor for LiveRadioGridLockup);
  sub_216DE8CB8();
  sub_2166A6EA4();
  sub_2167B7AE4(v18, type metadata accessor for LiveRadioGridLockup);
  v38 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v38) == 1)
  {
    sub_216697664(v11, &qword_27CAB6A00, &unk_217016B60);
    v39 = 23;
  }

  else
  {
    v39 = *v11;
    sub_2167B7AE4(v11, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v93) = v39;
  v40 = sub_216E41068(&v93, 0);
  v42 = v41;
  v43 = v75[0];
  sub_216CCAC0C();
  (*(v76 + 8))(v43, v90);
  sub_2167B53F0(&v93);
  sub_216788294(v37 + 16, v91);
  v44 = *(v1 + *(v77 + 32));
  if (v44)
  {
    *v25 = swift_getKeyPath();
    v25[8] = 0;
    *(v25 + 8) = v37;
    sub_2167A4788();
    v45 = &v25[v22[9]];
    *v45 = v40;
    v45[1] = v42;
    v25[v22[10]] = 0;
    v46 = &v25[v22[11]];
    v47 = v94;
    *v46 = v93;
    *(v46 + 1) = v47;
    *(v46 + 4) = v95;
    v48 = &v25[v22[12]];
    v49 = v91[1];
    *v48 = v91[0];
    *(v48 + 1) = v49;
    *(v48 + 4) = v92;
    *(v25 + 5) = sub_2167B7AD4;
    *(v25 + 6) = v44;
    v25[56] = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = v44;
    *(v50 + 24) = v37;
    *(v25 + 2) = sub_2167B7ADC;
    *(v25 + 3) = v50;
    v25[32] = 0;
    swift_retain_n();

    *&v93 = sub_2167B486C();
    *(&v93 + 1) = v51;
    sub_2167B6178(&qword_27CAB72E0, type metadata accessor for LiveRadioGridLockupContent, &unk_217016C70);
    sub_2167B2E14();
    sub_21700A6B4();

    OUTLINED_FUNCTION_11_12();
    v52 = v80;
    v53 = (v80 + *(v89 + 36));
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB72E8, &unk_21701F5E0);
    sub_217008C64();
    v55 = *(sub_217008B44() + 20);
    v56 = *MEMORY[0x277CE0118];
    sub_217009294();
    OUTLINED_FUNCTION_34();
    (*(v57 + 104))(&v53[v55], v56);
    __asm { FMOV            V0.2D, #20.0 }

    *v53 = _Q0;
    v53[*(v54 + 36)] = 0;
    v63 = sub_2167A4788();
    MEMORY[0x28223BE20](v63);
    MEMORY[0x28223BE20](v64);
    sub_2167B87D0();
    swift_allocObject();
    sub_2167B7E20();
    type metadata accessor for StationContextMenu(0);
    type metadata accessor for ContextMenuPreview(0);
    sub_2167B7BA8();
    sub_2167B6178(&qword_27CAB7300, type metadata accessor for StationContextMenu, &unk_21702AB54);
    sub_2167B6178(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    v65 = v82;
    sub_21700A394();

    sub_216697664(v52, &qword_27CAB72C8, &qword_217016B78);
    *(&v94 + 1) = v90;
    v95 = MEMORY[0x277CD84E8];
    __swift_allocate_boxed_opaque_existential_1(&v93);
    sub_216CCAC0C();
    v66 = v81;
    v67 = (v81 + *(v79 + 36));
    sub_2167B7D58(&v93, (v67 + 2));
    type metadata accessor for MusicEntityAnnotationWrapper();
    sub_2167B6178(&qword_280E46810, type metadata accessor for MusicEntityAnnotationWrapper, &unk_2170370E0);
    *v67 = sub_217008CF4();
    v67[1] = v68;
    (*(v83 + 32))(v66, v65, v84);
    __swift_destroy_boxed_opaque_existential_1Tm(&v93);
    KeyPath = swift_getKeyPath();
    v70 = v88;
    sub_2166F7CB0();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7308, &unk_217016BF0);
    v72 = v70 + *(result + 36);
    *v72 = KeyPath;
    *(v72 + 8) = 0;
  }

  else
  {
    type metadata accessor for PlaybackPresenter(0);
    OUTLINED_FUNCTION_5_15();
    sub_2167B6178(v73, v74, &unk_217058AC0);
    result = sub_217008CD4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2167B486C()
{
  v0 = sub_21700C644();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE8CB8();
  v8 = *(v6 + 5);
  v7 = *(v6 + 6);
  sub_21700DF14();
  sub_2167B7AE4(v6, type metadata accessor for LiveRadioGridLockup);
  if (!v7)
  {
    sub_216CCAC0C();
    v8 = sub_21700C624();
    (*(v1 + 8))(v3, v0);
  }

  return v8;
}

uint64_t sub_2167B49D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216CCAC0C();
  sub_216DE8CB8();
  sub_2167B4C1C();
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for StationContextMenu(0);
  sub_2168A5FD4();

  sub_2167B7AE4(v4, type metadata accessor for MenuContext);
  sub_2167B7AE4(v7, type metadata accessor for LiveRadioGridLockup);
  v9 = (a1 + v8[6]);
  type metadata accessor for MenuBuilder();
  sub_2167B6178(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
  *v9 = sub_217008CF4();
  v9[1] = v10;
  v11 = (a1 + v8[7]);
  type metadata accessor for PlaybackPresenter(0);
  sub_2167B6178(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
  *v11 = sub_217008CF4();
  v11[1] = v12;
  v13 = v8[8];
  *(a1 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2167B4C1C()
{
  v0 = type metadata accessor for LiveRadioGridLockupView(0);
  MEMORY[0x28223BE20](v0);
  v1 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE8CB8();
  sub_2166A6EA4();
  sub_2167B7AE4(v3, type metadata accessor for LiveRadioGridLockup);
  if (!v17)
  {
    v9 = &qword_27CAB6DB0;
    v10 = &qword_217016C00;
    v11 = &v16;
LABEL_6:
    sub_216697664(v11, v9, v10);
    return MEMORY[0x277D84F90];
  }

  sub_2166A0F18(&v16, v18);
  sub_216C0C534(&v14);
  if (!v15)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v9 = &qword_27CAB7310;
    v10 = &unk_2170170F0;
    v11 = &v14;
    goto LABEL_6;
  }

  sub_2166A0F18(&v14, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E38, &qword_217015320);
  v4 = (type metadata accessor for MenuAction(0) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_217013DA0;
  type metadata accessor for MenuActionType(0);
  swift_storeEnumTagMultiPayload();
  sub_2167B7D58(&v16, &v14);
  sub_2167B7D58(v18, v13);
  sub_2167B87D0();
  v7 = swift_allocObject();
  sub_2166A0F18(&v14, v7 + 16);
  sub_2166A0F18(v13, v7 + 56);
  sub_2167B7E20();
  v8 = (v6 + v5 + v4[7]);
  *v8 = sub_2167B7DBC;
  v8[1] = v7;
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v6;
}

uint64_t sub_2167B4F48@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_21700C644();
  v16 = MEMORY[0x277CD84E8];
  __swift_allocate_boxed_opaque_existential_1(&v14);
  sub_216CCAC0C();
  sub_216DE8CB8();
  sub_2166A6EA4();
  sub_2167B7AE4(v4, type metadata accessor for LiveRadioGridLockup);
  LOBYTE(v4) = v13 != 0;
  sub_216697664(v12, &qword_27CAB6DB0, &qword_217016C00);
  v5 = type metadata accessor for ContextMenuPreview(0);
  v6 = v5[7];
  v7 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[8];
  v9 = sub_21700C444();
  __swift_storeEnumTagSinglePayload(a1 + v8, 1, 1, v9);
  sub_2166A0F18(&v14, a1 + v5[6]);
  *(a1 + v5[5]) = v4;
  v10 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_2167B50D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE8CB8();
  sub_2166A6EA4();
  sub_2167B7AE4(v12, type metadata accessor for LiveRadioGridLockup);
  sub_216CCAC0C();
  (*(v7 + 104))(v9, *MEMORY[0x277D2A430], v6);
  type metadata accessor for LiveRadioGridLockupView(0);
  v13 = sub_216C0C534(v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29, v30, v31, v32, v33);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(&v29, v9, v28, v5, v2, v22, v23, v24, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v29, v30, v31, v32, v33);
  sub_216697664(v2, &qword_27CAB6DE8, "dP\r");
  (*(v3 + 8))(v5, v27);
  sub_216697664(v28, &qword_27CAB7310, &unk_2170170F0);
  (*(v7 + 8))(v9, v6);
  return sub_216697664(&v29, &qword_27CAB6DB0, &qword_217016C00);
}

uint64_t sub_2167B53F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LiveRadioGridLockup(0);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  sub_216DE8CB8();
  sub_2166A6EA4();
  sub_2167B7AE4(v5, type metadata accessor for LiveRadioGridLockup);
  if (v9)
  {
    return sub_2166A0F18(&v8, a1);
  }

  sub_216697664(&v8, &qword_27CAB6DB0, &qword_217016C00);
  sub_216DE8CB8();
  v9 = v2;
  v10 = sub_2167B6178(&qword_27CAB7318, type metadata accessor for LiveRadioGridLockup, &unk_2170707B4);
  __swift_allocate_boxed_opaque_existential_1(&v8);
  sub_2167B7E20();
  __swift_project_boxed_opaque_existential_1(&v8, v9);
  sub_2166A6EA4();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v8);
}

uint64_t sub_2167B55A8()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for TopSearchLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE8ED8();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE8ED8();
  v8 = v1;
  v5 = sub_2167B6178(&qword_280E41CE0, type metadata accessor for TopSearchLockup, &unk_21703FE84);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B56E8()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for FlowcaseLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE9978();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE9978();
  v8 = v1;
  v5 = sub_2167B6178(&qword_27CAB7338, type metadata accessor for FlowcaseLockup, &unk_21702F28C);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B5828()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for RecentSearchLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE9CA8();
  sub_2166A6EA4();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE9CA8();
  v8 = v1;
  v5 = sub_2167B6178(&qword_27CAB7458, type metadata accessor for RecentSearchLockup, &unk_217025CD8);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B596C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for VerticalVideoLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE8FE8();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE8FE8();
  v8 = v1;
  v5 = sub_2167B6178(&qword_27CAB7320, type metadata accessor for VerticalVideoLockup, &unk_21705486C);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B5AAC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for SquareLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE9428();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE9428();
  v8 = v1;
  v5 = sub_2167B6178(&qword_280E445C8, type metadata accessor for SquareLockup, &unk_21704EA44);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B5BEC()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for TrackLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE90F8();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE90F8();
  v8 = v1;
  v5 = sub_2167B6178(&qword_27CAB7328, type metadata accessor for TrackLockup, &unk_21705C600);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B5D2C()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = type metadata accessor for HorizontalLockup(v0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_24();
  sub_216DE9758();
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_11_12();
  if (v8)
  {
    return OUTLINED_FUNCTION_17_12();
  }

  OUTLINED_FUNCTION_6_18();
  sub_216DE9758();
  v8 = v1;
  v5 = sub_2167B6178(&qword_27CAB7330, type metadata accessor for HorizontalLockup, &unk_2170150CC);
  v6 = OUTLINED_FUNCTION_16_12(v5);
  OUTLINED_FUNCTION_14_7(v6, v6);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_3_26();
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167B5E6C(void *a1, uint64_t a2)
{
  v3 = sub_2170075A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for LiveRadioGridLockupView(0);
  sub_216C0C548(v7, v8, v9, v10, v11, v12, v13, v14, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
  sub_217007544();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2167B5F8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for MenuBuilder();
  sub_2167B6178(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
  a2[1] = sub_217008CF4();
  a2[2] = v3;
  v4 = type metadata accessor for LiveRadioGridLockupView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[7];
  *v6 = swift_getKeyPath();
  v6[40] = 0;
  v7 = (a2 + v4[8]);
  type metadata accessor for PlaybackPresenter(0);
  OUTLINED_FUNCTION_5_15();
  sub_2167B6178(v8, v9, &unk_217058AC0);
  result = sub_217008CF4();
  *v7 = result;
  v7[1] = v11;
  return result;
}

uint64_t sub_2167B6100(uint64_t a1)
{
  result = sub_2167B6178(&qword_27CAB72B8, type metadata accessor for LiveRadioGridLockupView, &unk_217016A80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167B6178(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167B61C0(uint64_t a1)
{
  sub_216C6D16C();
  v1 = sub_217006D94();

  return v1;
}

uint64_t sub_2167B61FC(void *a1)
{
  v2 = sub_21700C644();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = a1[5];
  v7 = a1[6];
  v8 = __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  (*(v7 + 112))(v6, v7);
  (*(v9 + 8))(v12, v6);
  sub_216CCAC0C();
  v13 = sub_217006D74();

  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t sub_2167B63EC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LiveRadioGridLockupContent(0);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7390, &qword_217016CC0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v20 - v5);
  sub_2166A6EA4();
  v7 = v4[13];
  v8 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v6 + v7, 1, 1, v8);
  sub_2167B87D0();
  v9 = swift_allocObject();
  sub_2167B7E20();
  v10 = v4[14];
  *(v6 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v11 = v6 + v4[15];
  *v11 = swift_getKeyPath();
  v11[40] = 0;
  v6[5] = sub_2167B8828;
  v6[6] = v9;
  v6[7] = 0;
  v6[8] = 0;
  sub_216E31680();
  sub_216697664(v6, &qword_27CAB7390, &qword_217016CC0);
  v12 = sub_21700B3B4();
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7398, &qword_217016CC8) + 36);
  sub_2167B724C(v15);
  v16 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73A0, &qword_217016CD0) + 36));
  *v16 = v12;
  v16[1] = v14;
  v17 = sub_21700B3F4();
  LOBYTE(v12) = sub_2167B775C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73A8, &qword_217016CD8);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v12 & 1;
  return result;
}

uint64_t sub_2167B66B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_2170067A4();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v95 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_21700D864();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v83 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21700D8E4();
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v85 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_217008B44();
  MEMORY[0x28223BE20](v77);
  v8 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2170090F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ArtworkView(0);
  MEMORY[0x28223BE20](v76);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73C8, &unk_217064E40);
  MEMORY[0x28223BE20](v80);
  v16 = &v70 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73D0, &qword_217016D00);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v70 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73D8, &qword_217016D08);
  MEMORY[0x28223BE20](v84);
  v91 = &v70 - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73E0, &qword_217016D10);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v70 - v19;
  v20 = type metadata accessor for LiveRadioGridLockupContent(0);
  sub_2166A6EA4();
  v75 = v20;
  v21 = (a1 + *(v20 + 36));
  v22 = *v21;
  v23 = v21[1];
  v24 = *a1;
  v99 = a1;
  v78 = *(a1 + 8);
  v74 = v9;
  v73 = v10;
  v86 = v12;
  if (v78 == 1)
  {
    sub_2167B8890(v22, v23);
    v30 = v24;
    v28 = v24;
  }

  else
  {
    sub_2167B8890(v22, v23);
    sub_2167B88A8(v24, 0);
    sub_21700ED94();
    v71 = v16;
    v25 = sub_217009C34();
    v72 = v8;
    v26 = v25;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v24, 0);
    v27 = *(v10 + 8);
    v27(v12, v9);
    v28 = v101;

    sub_21700ED94();
    v29 = sub_217009C34();
    v8 = v72;
    sub_217007BC4();

    v16 = v71;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v24, 0);
    v27(v12, v9);
    v30 = v101;
  }

  v31 = v76;
  v32 = &v14[*(v76 + 20)];
  *v32 = v22;
  v32[1] = v23;
  v33 = &v14[*(v31 + 24)];
  *v33 = v28;
  *(v33 + 1) = v30;
  v34 = *(v77 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_217009294();
  (*(*(v36 - 8) + 104))(v8 + v34, v35, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v8 = _Q0;
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216E2F740();
  sub_2167B7AE4(v8, MEMORY[0x277CDFC08]);
  sub_2167B7AE4(v14, type metadata accessor for ArtworkView);
  v42 = v80;
  v43 = &v16[*(v80 + 36)];
  *v43 = 0;
  *(v43 + 1) = 0x4034000000000000;
  v44 = sub_2167B88B4();
  v45 = v79;
  sub_21700A6E4();
  sub_216697664(v16, &qword_27CAB73C8, &unk_217064E40);
  v46 = v87;
  v47 = v83;
  v48 = v88;
  (*(v87 + 104))(v83, *MEMORY[0x277D22060], v88);
  v101 = 0u;
  v102 = 0u;
  memset(v100, 0, sizeof(v100));
  v49 = v85;
  sub_21700D874();
  sub_216697664(v100, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(&v101, &unk_27CABF7A0, &unk_217014D20);
  (*(v46 + 8))(v47, v48);
  *&v101 = v42;
  *(&v101 + 1) = MEMORY[0x277D84030];
  *&v102 = v44;
  *(&v102 + 1) = MEMORY[0x277D84038];
  swift_getOpaqueTypeConformance2();
  v50 = v91;
  v51 = v82;
  sub_21700A204();
  (*(v89 + 8))(v49, v92);
  (*(v81 + 8))(v45, v51);
  v52 = v86;
  if ((v78 & 1) == 0)
  {

    sub_21700ED94();
    v53 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v24, 0);
    (*(v73 + 8))(v52, v74);
  }

  sub_21700B3B4();
  sub_2170083C4();
  v54 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7448, &qword_217016D50) + 36));
  v55 = v102;
  *v54 = v101;
  v54[1] = v55;
  v54[2] = v103;
  KeyPath = swift_getKeyPath();
  v57 = v50 + *(v84 + 36);
  *v57 = KeyPath;
  *(v57 + 8) = 0;
  v58 = v95;
  sub_216CCAC0C();
  v59 = v96;
  v60 = v97;
  (*(v96 + 104))(v58, *MEMORY[0x277D2A430], v97);
  v61 = v90;
  sub_216E30650();
  (*(v59 + 8))(v58, v60);
  sub_216697664(v50, &qword_27CAB73D8, &qword_217016D08);
  if (sub_2167B775C())
  {
    v62 = 0.9;
  }

  else
  {
    v62 = 1.0;
  }

  sub_21700B564();
  v64 = v63;
  v66 = v65;
  v67 = v98;
  (*(v93 + 32))(v98, v61, v94);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7450, &qword_217016D88);
  v69 = v67 + *(result + 36);
  *v69 = v62;
  *(v69 + 8) = v62;
  *(v69 + 16) = v64;
  *(v69 + 24) = v66;
  return result;
}

uint64_t sub_2167B724C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217008B44();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0, &unk_217016CE0);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8, &unk_21701F5F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = *(v3 + 28);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_217009294();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  if (sub_2167B775C())
  {
    if (qword_27CAB58A0 != -1)
    {
      swift_once();
    }

    v20 = &qword_27CAB7278;
  }

  else
  {
    if (qword_27CAB58A8 != -1)
    {
      swift_once();
    }

    v20 = &qword_27CAB72A0;
  }

  v21 = *v20;

  if (sub_2167B775C())
  {
    if (qword_27CAB58A0 != -1)
    {
      swift_once();
    }

    v22 = &qword_27CAB7270;
  }

  else
  {
    if (qword_27CAB58A8 != -1)
    {
      swift_once();
    }

    v22 = &qword_27CAB7298;
  }

  v23 = *v22;
  if (sub_2167B775C())
  {
    v24 = 0.9;
  }

  else
  {
    v24 = 1.0;
  }

  if (sub_2167B775C())
  {
    if (qword_27CAB58A0 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_27CAB7260;
  }

  else
  {
    if (qword_27CAB58A8 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_27CAB7288;
  }

  v26 = *v25;
  if (sub_2167B775C())
  {
    if (qword_27CAB58A0 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_27CAB7260 + 8;
  }

  else
  {
    if (qword_27CAB58A8 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_27CAB7288 + 8;
  }

  v28 = *v27;
  sub_2167B7E20();
  v29 = &v8[*(v6 + 36)];
  *v29 = v21;
  *(v29 + 1) = v23 * v24;
  *(v29 + 2) = v26;
  *(v29 + 3) = v28;
  if ((sub_2167B775C() & 1) == 0)
  {
    if (qword_27CAB58A8 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  if (qword_27CAB58A0 != -1)
  {
LABEL_40:
    swift_once();
  }

LABEL_36:
  v30 = sub_217009C84();
  sub_217007F24();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_2167A4788();
  v39 = &v11[*(v9 + 36)];
  *v39 = v30;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  if (sub_2167B775C())
  {
    v40 = 0.9;
  }

  else
  {
    v40 = 1.0;
  }

  sub_21700B564();
  v42 = v41;
  v44 = v43;
  sub_2167A4788();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73C0, &unk_217016CF0);
  v46 = a1 + *(result + 36);
  *v46 = v40;
  *(v46 + 8) = v40;
  *(v46 + 16) = v42;
  *(v46 + 24) = v44;
  return result;
}

uint64_t sub_2167B775C()
{
  v12 = sub_217006BC4();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7358, &unk_217016C30);
  sub_2166D9530(&qword_27CAB7360, &qword_27CAB7358, &unk_217016C30, MEMORY[0x277D2AEE8]);
  sub_2170081B4();
  v6 = sub_21700BAE4();

  if (v6)
  {
    sub_217006D44();
    sub_2167B6178(&qword_280E4A420, MEMORY[0x277D2A918], MEMORY[0x277D2A910]);
    sub_2170081B4();
    sub_217006CF4();

    v7 = v12;
    (*(v0 + 104))(v2, *MEMORY[0x277D2A880], v12);
    v8 = sub_217006BB4();
    v9 = *(v0 + 8);
    v9(v2, v7);
    v9(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2167B79AC()
{
  if (qword_280E2C2D0 != -1)
  {
    swift_once();
  }

  xmmword_27CAB7260 = xmmword_280E73AC0;
  qword_27CAB7270 = qword_280E73AD0;
  qword_27CAB7278 = qword_280E73AD8;
  qword_27CAB7280 = qword_280E73AE0;
}

uint64_t sub_2167B7A30()
{
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  xmmword_27CAB7288 = xmmword_280E73AF0;
  qword_27CAB7298 = qword_280E73B00;
  qword_27CAB72A0 = qword_280E73B08;
  qword_27CAB72A8 = qword_280E73B10;
}

uint64_t sub_2167B7AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167B7B4C()
{
  v0 = type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_36(v0);

  return sub_2167B50D4();
}

unint64_t sub_2167B7BA8()
{
  result = qword_27CAB72F0;
  if (!qword_27CAB72F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB72C8, &qword_217016B78);
    sub_2167B7C60();
    sub_2166D9530(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB72F0);
  }

  return result;
}

unint64_t sub_2167B7C60()
{
  result = qword_27CAB72F8;
  if (!qword_27CAB72F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB72C0, &qword_217016B70);
    sub_2167B6178(&qword_27CAB72E0, type metadata accessor for LiveRadioGridLockupContent, &unk_217016C70);
    sub_2167B6178(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB72F8);
  }

  return result;
}

uint64_t sub_2167B7D58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2167B7DBC()
{
  v1 = type metadata accessor for LiveRadioGridLockupView(0);
  OUTLINED_FUNCTION_36(v1);

  return sub_2167B5E6C((v0 + 16), v0 + 56);
}

uint64_t sub_2167B7E20()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

void sub_2167B7EA0(uint64_t a1)
{
  sub_2167B8000();
  if (v1 <= 0x3F)
  {
    sub_2167B8050(319);
    if (v2 <= 0x3F)
    {
      sub_2167B80F4(319);
      if (v3 <= 0x3F)
      {
        sub_2167B8188(319);
        if (v4 <= 0x3F)
        {
          sub_216690C24(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2167B8448(319, &qword_280E2A2A8, &qword_27CAB6D68, &qword_2170153A0, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2167B8000()
{
  if (!qword_280E2B480)
  {
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B480);
    }
  }
}

void sub_2167B8050(uint64_t a1)
{
  if (!qword_27CAB7350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7358, &unk_217016C30);
    sub_2166D9530(&qword_27CAB7360, &qword_27CAB7358, &unk_217016C30, MEMORY[0x277D2AEE8]);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB7350);
    }
  }
}

void sub_2167B80F4(uint64_t a1)
{
  if (!qword_27CAB7368)
  {
    sub_217006D44();
    sub_2167B6178(&qword_280E4A420, MEMORY[0x277D2A918], MEMORY[0x277D2A910]);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CAB7368);
    }
  }
}

void sub_2167B8188(uint64_t a1)
{
  if (!qword_280E45820)
  {
    v4[0] = type metadata accessor for LiveRadioGridLockup(255);
    v4[1] = sub_2167B6178(qword_280E3DB38, type metadata accessor for LiveRadioGridLockup, &unk_217070820);
    v4[2] = &off_28293B2C0;
    v4[3] = sub_2167B6178(&qword_280E3DB20, type metadata accessor for LiveRadioGridLockup, &unk_21702C188);
    v2 = type metadata accessor for MappedItem(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_280E45820);
    }
  }
}

void sub_2167B828C(uint64_t a1)
{
  sub_2167B8188(319);
  if (v1 <= 0x3F)
  {
    sub_2167B83B4(319);
    if (v2 <= 0x3F)
    {
      sub_216690C24(319, &qword_280E2B4C0, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_2167B8448(319, &qword_280E2B4D0, &qword_27CAB7310, &unk_2170170F0, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2167B84AC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2167B83B4(uint64_t a1)
{
  if (!qword_280E2ACC8)
  {
    type metadata accessor for MenuBuilder();
    sub_2167B6178(qword_280E45220, type metadata accessor for MenuBuilder, &unk_21705881C);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACC8);
    }
  }
}

void sub_2167B8448(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2167B84AC(uint64_t a1)
{
  if (!qword_280E2ACC0)
  {
    type metadata accessor for PlaybackPresenter(255);
    sub_2167B6178(&qword_280E3FDB0, type metadata accessor for PlaybackPresenter, &unk_217058AC0);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACC0);
    }
  }
}

unint64_t sub_2167B8540()
{
  result = qword_27CAB7378;
  if (!qword_27CAB7378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7308, &unk_217016BF0);
    sub_2167B85F8();
    sub_2166D9530(&qword_280E2A700, &qword_27CAB7388, &qword_21701B6A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7378);
  }

  return result;
}

unint64_t sub_2167B85F8()
{
  result = qword_27CAB7380;
  if (!qword_27CAB7380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB72D8, &qword_217016B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB72C8, &qword_217016B78);
    type metadata accessor for StationContextMenu(255);
    type metadata accessor for ContextMenuPreview(255);
    sub_2167B7BA8();
    sub_2167B6178(&qword_27CAB7300, type metadata accessor for StationContextMenu, &unk_21702AB54);
    sub_2167B6178(qword_280E3F158, type metadata accessor for ContextMenuPreview, &unk_217017238);
    swift_getOpaqueTypeConformance2();
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7380);
  }

  return result;
}

unint64_t sub_2167B8760()
{
  result = qword_280E466D0[0];
  if (!qword_280E466D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E466D0);
  }

  return result;
}

uint64_t sub_2167B87D0()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2167B8828()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = type metadata accessor for LiveRadioGridLockupContent(v2);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2167B66B8(v5, v0);
}

uint64_t sub_2167B8890(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 9)
  {
    return sub_21700DF14();
  }

  return result;
}

uint64_t sub_2167B88A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_2167B88B4()
{
  result = qword_27CAB73E8;
  if (!qword_27CAB73E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73C8, &unk_217064E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73F0, &qword_217016D18);
    sub_2167B897C();
    swift_getOpaqueTypeConformance2();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB73E8);
  }

  return result;
}

unint64_t sub_2167B897C()
{
  result = qword_27CAB73F8;
  if (!qword_27CAB73F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73F0, &qword_217016D18);
    sub_2167B8A34();
    sub_2166D9530(&qword_280E2A808, &qword_27CAB72E8, &unk_21701F5E0, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB73F8);
  }

  return result;
}

unint64_t sub_2167B8A34()
{
  result = qword_27CAB7400;
  if (!qword_27CAB7400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7408, &qword_217016D20);
    sub_2167B8AEC();
    sub_2166D9530(qword_280E382B8, &qword_27CAB7440, &unk_217016D40, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7400);
  }

  return result;
}

unint64_t sub_2167B8AEC()
{
  result = qword_27CAB7410;
  if (!qword_27CAB7410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7418, &qword_217016D28);
    sub_2167B8B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7410);
  }

  return result;
}

unint64_t sub_2167B8B78()
{
  result = qword_27CAB7420;
  if (!qword_27CAB7420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7428, &unk_217016D30);
    sub_2167B6178(&qword_27CAB7430, type metadata accessor for ArtworkView, "Un\x1Bk");
    sub_2166D9530(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7420);
  }

  return result;
}

unint64_t sub_2167B8C60()
{
  result = qword_280E2E700[0];
  if (!qword_280E2E700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2E700);
  }

  return result;
}

unint64_t sub_2167B8CB4()
{
  result = qword_27CAB7460;
  if (!qword_27CAB7460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB73A8, &qword_217016CD8);
    sub_2167B8D6C();
    sub_2166D9530(&qword_280E2AC40, &qword_27CAB7480, qword_217016D90, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7460);
  }

  return result;
}

unint64_t sub_2167B8D6C()
{
  result = qword_27CAB7468;
  if (!qword_27CAB7468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7398, &qword_217016CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7390, &qword_217016CC0);
    type metadata accessor for ActionButtonStyle(255);
    sub_2166D9530(&qword_27CAB7470, &qword_27CAB7390, &qword_217016CC0, &unk_21702C8E0);
    sub_2167B6178(&qword_280E404C0, type metadata accessor for ActionButtonStyle, &unk_21702C99C);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CAB7478, &qword_27CAB73A0, &qword_217016CD0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7468);
  }

  return result;
}

uint64_t sub_2167B8F4C(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v58 = a1;
  sub_21700D2A4();
  OUTLINED_FUNCTION_1();
  v68 = v3;
  v69 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v66 = v4;
  OUTLINED_FUNCTION_4_1();
  v67 = sub_2170075A4();
  OUTLINED_FUNCTION_1();
  v65 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v63 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v61 = v9;
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v60 = &v54 - v10;
  OUTLINED_FUNCTION_4_1();
  v59 = sub_217006224();
  OUTLINED_FUNCTION_1();
  v57 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v56 = v13;
  v14 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v14);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v17 = v16;
  OUTLINED_FUNCTION_4_1();
  v18 = sub_21700D704();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v54 - v25;
  v55 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v31 = v30;
  v32 = OUTLINED_FUNCTION_4_1();
  v33 = type metadata accessor for FlowAction(v32);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v34);
  v36 = &v54 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21688D828(46, 48))
  {
    sub_21700D234();
  }

  else
  {
    sub_21700D6F4();
    sub_21700D6D4();
    (*(v20 + 16))(v23, v26, v18);
    sub_21700D244();
    (*(v20 + 8))(v26, v18);
  }

  sub_2170073D4();
  OUTLINED_FUNCTION_34();
  (*(v37 + 16))(v17, v58);
  swift_storeEnumTagMultiPayload();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v38 = sub_217005EF4();
  OUTLINED_FUNCTION_3_27(v38);
  v39 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_3_27(v39);
  v40 = type metadata accessor for ReferrerInfo(0);
  OUTLINED_FUNCTION_3_27(v40);
  v41 = &v36[v33[10]];
  *(v41 + 32) = 0;
  *v41 = 0u;
  *(v41 + 16) = 0u;
  v42 = v55;
  (*(v28 + 16))(v36, v31, v55);
  sub_2167B9654(v17, &v36[v33[5]], type metadata accessor for FlowAction.Destination);
  v43 = v56;
  sub_217006214();
  v58 = sub_2170061F4();
  v45 = v44;
  (*(v57 + 8))(v43, v59);
  sub_2167B96B4(v17, type metadata accessor for FlowAction.Destination);
  (*(v28 + 8))(v31, v42);
  v46 = &v36[v33[6]];
  *v46 = v58;
  v46[1] = v45;
  v36[v33[7]] = 0;
  sub_2167A66B4(&v70, v41);
  type metadata accessor for ObjectGraph(0);
  v47 = v60;
  v48 = v62;
  sub_21700E094();
  v49 = v63;
  v50 = v67;
  sub_21700E094();
  *(&v71 + 1) = v33;
  v72 = sub_2167B960C(qword_280E45BB8, type metadata accessor for FlowAction, &unk_21706E4A0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
  sub_2167B9654(v36, boxed_opaque_existential_1, type metadata accessor for FlowAction);
  sub_21700D594();

  __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FF0, &unk_217015640);
  (*(v68 + 104))(v66, *MEMORY[0x277D21CA8], v69);
  v52 = sub_21700E1F4();
  (*(v65 + 8))(v49, v50);
  (*(v61 + 8))(v47, v48);
  sub_2167B96B4(v36, type metadata accessor for FlowAction);
  return v52;
}

uint64_t sub_2167B960C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167B9654(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167B96B4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI13SymbolArtworkO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2167B9724(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167B9778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2167B97E4(char *a1, uint64_t a2)
{
  v34 = a2;
  v3 = sub_21700CDF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = a1;
  sub_21700CE04();
  v11 = sub_21700CDB4();
  v13 = v12;
  v14 = *(v4 + 8);
  v14(v9, v3);
  if (!v13)
  {
    v17 = sub_21700E2E4();
    v19 = sub_2167B1EA4();
    OUTLINED_FUNCTION_3_0(v19);
    *v20 = 0x6C6F626D7973;
    v20[1] = 0xE600000000000000;
    v20[2] = &type metadata for SymbolArtwork;
    OUTLINED_FUNCTION_50();
    (*(v21 + 104))();
    v16 = v10;
    goto LABEL_11;
  }

  v15 = v11 == 0x697966696E67616DLL && v13 == 0xEF7373616C47676ELL;
  v16 = v10;
  if (!v15 && (OUTLINED_FUNCTION_0_25(0x697966696E67616DLL, 0xEF7373616C47676ELL) & 1) == 0)
  {
    v24 = v11 == 0x6465746E65636361 && v13 == 0xEC000000646E6157;
    if (v24 || (OUTLINED_FUNCTION_0_25(0x6465746E65636361, 0xEC000000646E6157) & 1) != 0)
    {

      v17 = 0;
      goto LABEL_9;
    }

    if (v11 == 0x726568746FLL && v13 == 0xE500000000000000)
    {
    }

    else
    {
      v26 = OUTLINED_FUNCTION_0_25(0x726568746FLL, 0xE500000000000000);

      if ((v26 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    sub_21700CE04();
    v17 = sub_21700CDB4();
    v28 = v27;
    v14(v6, v3);
    if (v28)
    {
      goto LABEL_9;
    }

    v17 = sub_21700E2E4();
    v29 = sub_2167B1EA4();
    OUTLINED_FUNCTION_3_0(v29);
    v30 = MEMORY[0x277D84F90];
    *v31 = 1701667182;
    v31[1] = 0xE400000000000000;
    v31[2] = &type metadata for SymbolArtwork;
    v31[3] = v30;
    OUTLINED_FUNCTION_50();
    (*(v32 + 104))();
LABEL_11:
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_50();
    (*(v22 + 8))(v34);
    v14(v16, v3);
    return v17;
  }

LABEL_8:
  v17 = 0;
LABEL_9:
  sub_21700CF34();
  OUTLINED_FUNCTION_50();
  (*(v18 + 8))(v34);
  v14(v10, v3);
  return v17;
}

uint64_t sub_2167B9BB0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2167B97E4(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void sub_2167B9BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v132 = v24;
  v143 = v25;
  v27 = v26;
  v139 = v28;
  v29 = OUTLINED_FUNCTION_110();
  v135 = type metadata accessor for MenuContext(v29);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v123 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8, "dP\r");
  OUTLINED_FUNCTION_36(v32);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  v35 = OUTLINED_FUNCTION_8_0(&v119 - v34);
  v137 = type metadata accessor for GoToAlbumAction(v35);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v37);
  v38 = sub_21700CFB4();
  v39 = OUTLINED_FUNCTION_0(v38, &a10);
  v129 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v41);
  v42 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v122 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_75_2();
  v45 = sub_21700D704();
  v46 = OUTLINED_FUNCTION_0(v45, &v151);
  v125 = v47;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v48);
  v50 = &v119 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  v52 = OUTLINED_FUNCTION_36(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v119 - v57;
  v59 = sub_21700D284();
  v60 = OUTLINED_FUNCTION_0(v59, &a14);
  v133 = v61;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v62);
  v63 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v65 = v64;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_7();
  v69 = v68 - v67;
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v141 = v71;
  v142 = v70;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v72);
  v140 = &v119 - v73;
  sub_216683A80(v27, &v147, &qword_27CAB7310, &unk_2170170F0);
  if (v148)
  {
    sub_2166A0F18(&v147, v150);
    sub_216683A80(v20, &v145, &qword_27CAB6DB0, &qword_217016C00);
    if (v146)
    {
      sub_2166A0F18(&v145, &v147);
      __swift_project_boxed_opaque_existential_1(v150, v151);
      OUTLINED_FUNCTION_91_5();
      sub_217007544();
    }

    else
    {
      sub_216697664(&v145, &qword_27CAB6DB0, &qword_217016C00);
      (*(v65 + 16))(v69, v139, v63);
      v74 = OUTLINED_FUNCTION_54_3();
      if (v75(v74) != *MEMORY[0x277D2A3F8])
      {
        v89 = OUTLINED_FUNCTION_54_3();
        v90(v89);
LABEL_20:
        __swift_destroy_boxed_opaque_existential_1Tm(v150);
        goto LABEL_21;
      }

      v76 = OUTLINED_FUNCTION_54_3();
      v77(v76);
      v78 = *(v141 + 32);
      v139 = v141 + 32;
      v121 = v78;
      v78(v140, v69, v142);
      v79 = sub_21700BFF4();
      v81 = v80;
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v42);
      sub_21700D6F4();
      v85 = MEMORY[0x277D837D0];
      v148 = MEMORY[0x277D837D0];
      *&v147 = 0x657461676976616ELL;
      *(&v147 + 1) = 0xE800000000000000;
      sub_2166EF9C4(&v147, &v145);
      v86 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v144 = v86;
      sub_2166EF9D4();
      v87 = v144;
      sub_216683A80(v58, v55, &qword_27CABA820, &unk_217018CE0);
      OUTLINED_FUNCTION_31_2(v55, 1, v42);
      if (v88)
      {
        sub_216697664(v55, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v120 = v79;
        v91 = v122;
        (*(v122 + 32))(v21, v55, v42);
        v92 = sub_217005DE4();
        v148 = v85;
        *&v147 = v92;
        *(&v147 + 1) = v93;
        sub_2166EF9C4(&v147, &v145);
        swift_isUniquelyReferenced_nonNull_native();
        v144 = v87;
        sub_2166EF9D4();
        v87 = v144;
        (*(v91 + 8))(v21, v42);
        v79 = v120;
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v94 = sub_21700CF84();
      v95 = __swift_project_value_buffer(v94, qword_280E73DB0);
      v96 = v127;
      MEMORY[0x21CE9DD70](v79, v81, 0x6E6F74747562, 0xE600000000000000, v87, v95);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v97 = v129;
      v98 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_217013DA0;
      v100 = v99 + v98;
      v101 = v130;
      (*(v97 + 16))(v100, v96, v130);
      v102 = v125;
      v103 = v126;
      (*(v125 + 16))(v124, v50, v126);
      v104 = v131;
      sub_21700D244();
      (*(v97 + 8))(v96, v101);
      (*(v102 + 8))(v50, v103);
      sub_216697664(v58, &qword_27CABA820, &unk_217018CE0);
      v105 = v128;
      (*(v141 + 16))(v128, v140, v142);
      v106 = v136;
      sub_216683A80(v132, v136, &qword_27CAB6DE8, "dP\r");
      OUTLINED_FUNCTION_31_2(v106, 1, v135);
      if (v88)
      {
        sub_216697664(v106, &qword_27CAB6DE8, "dP\r");
        v109 = 2;
      }

      else
      {
        v107 = v123;
        sub_2167C3F6C(v106, v123);
        OUTLINED_FUNCTION_74_0();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v109 = 1;
        switch(EnumCaseMultiPayload)
        {
          case 1:
            v109 = *v107;
            break;
          case 2:
          case 4:
          case 5:
          case 7:
          case 8:
            goto LABEL_16;
          case 3:
          case 6:
            break;
          default:
            v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0);
            sub_216697664(&v107[*(v117 + 48)], &qword_27CAB74B8, &unk_217017110);
            sub_21700C8E4();
            OUTLINED_FUNCTION_34();
            (*(v118 + 8))(v107);
LABEL_16:
            v109 = 2;
            break;
        }

        sub_2167C3FC4(v106, type metadata accessor for MenuContext);
      }

      v110 = v137;
      v111 = v133;
      v112 = v138;
      v113 = v134;
      (*(v133 + 16))(v138 + *(v137 + 24), v104, v134);
      v114 = v105;
      v115 = v142;
      v121(v112, v114, v142);
      *(v112 + *(v110 + 20)) = v109;
      __swift_project_boxed_opaque_existential_1(v150, v151);
      v148 = v110;
      v149 = sub_2167C403C(&qword_27CAB74A8, type metadata accessor for GoToAlbumAction, &unk_2170615A0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v147);
      sub_2167C3F6C(v112, boxed_opaque_existential_1);
      OUTLINED_FUNCTION_91_5();
      sub_217007544();
      sub_2167C3FC4(v112, type metadata accessor for GoToAlbumAction);
      (*(v111 + 8))(v104, v113);
      (*(v141 + 8))(v140, v115);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v147);
    goto LABEL_20;
  }

  sub_216697664(&v147, &qword_27CAB7310, &unk_2170170F0);
LABEL_21:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167BA710(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_1();
  v6 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v10 = OUTLINED_FUNCTION_75_2();
  v11 = type metadata accessor for ContextMenuPreview(v10);
  v12 = (v2 + *(v11 + 24));
  v12[3] = v6;
  v12[4] = sub_2167C403C(&qword_280E4A480, MEMORY[0x277D2A460], MEMORY[0x277D2A398]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v8 + 16))(boxed_opaque_existential_1, a1, v6);
  if (*(a2 + 24))
  {
    (*(v8 + 8))(a1, v6);
    v14 = 1;
  }

  else
  {
    (*(v8 + 32))(v3, a1, v6);
    v15 = OUTLINED_FUNCTION_52_3();
    v14 = v16(v15) == *MEMORY[0x277D2A3F8];
    v17 = OUTLINED_FUNCTION_52_3();
    v18(v17);
  }

  sub_216697664(a2, &qword_27CAB6DB0, &qword_217016C00);
  *(v2 + *(v11 + 20)) = v14;
  type metadata accessor for ContextMenuPreview.ViewModel(0);
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_21700C4B4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_21700C444();
  OUTLINED_FUNCTION_38_2();
  return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t sub_2167BA918()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = type metadata accessor for ContextMenuPreview(v2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2167C3F6C(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2167C465C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *v0 = sub_2167C46B4;
  v0[1] = v7;
  return result;
}

uint64_t sub_2167BAA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2167BAA78(a2);
  LOBYTE(a1) = *(a1 + *(type metadata accessor for ContextMenuPreview(0) + 20));
  result = type metadata accessor for _ContextMenuPreview(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_2167BAA78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530, &unk_21701A660);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-v5 - 8];
  v7 = sub_21700C444();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21[-v12 - 8];
  sub_216683A80(v1, &v21[-v12 - 8], &qword_27CAB7528, qword_2170171C0);
  v14 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    sub_2167C465C(v13, a1);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
    goto LABEL_12;
  }

  v15 = type metadata accessor for ContextMenuPreview(0);
  sub_216683A80(v2 + *(v15 + 24), v21, &qword_27CAB7540, &qword_217017288);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74C0, &qword_217017120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74C8, &qword_217017128);
    if (swift_dynamicCast())
    {
      v16 = *(&v24 + 1);
      if (*(&v24 + 1))
      {
        v20 = v25;
        __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
        (*(v20 + 8))(v2 + *(v15 + 28), v16);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v14);
        __swift_destroy_boxed_opaque_existential_1Tm(&v23);
        goto LABEL_10;
      }
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }
  }

  else
  {
    sub_216697664(v21, &qword_27CAB7540, &qword_217017288);
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
  }

  sub_216697664(&v23, &qword_27CAB74D0, &qword_217017130);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
LABEL_10:
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    sub_216697664(v13, &qword_27CAB7528, qword_2170171C0);
  }

LABEL_12:
  v17 = type metadata accessor for ContextMenuPreview(0);
  sub_216683A80(v2 + *(v17 + 32), v6, &qword_27CAB7530, &unk_21701A660);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_216697664(v6, &qword_27CAB7530, &unk_21701A660);
  }

  (*(v8 + 32))(v10, v6, v7);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14))
  {
    return (*(v8 + 8))(v10, v7);
  }

  v19 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  return (*(v8 + 40))(a1 + *(v19 + 36), v10, v7);
}

uint64_t sub_2167BAE98@<X0>(uint64_t a1@<X8>)
{
  v4 = v3;
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680, &unk_21701F610);
  MEMORY[0x28223BE20](v42);
  v6 = v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7688, &unk_217017510);
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v39 - v11;
  v13 = sub_217007474();
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7690, &qword_21703B4A0);
  MEMORY[0x28223BE20](v19);
  v21 = v39 - v20;
  v22 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (*(v4 + *(v22 + 32)) == 1)
  {
    v23 = v22;
    v39[0] = v9;
    v39[1] = v7;
    sub_216683A80(v4, v12, &qword_27CABF770, &unk_21701A670);
    sub_217007444();
    sub_2170073E4();
    v24 = v41;
    v25 = *(v40 + 8);
    v25(v15, v41);
    v26 = (v4 + *(v23 + 20));
    v27 = *v26;
    v28 = v26[1];
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    sub_2167B8890(v27, v28);
    sub_2167C505C();
    sub_2170073F4();

    v25(v18, v24);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v30 = qword_280E73AA0;
    v31 = byte_280E73AA8;
    v32 = qword_280E73AB0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76B8, &qword_217062680) + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v34 = &v21[*(v19 + 36)];
    *v34 = v30;
    v34[8] = v31;
    *(v34 + 2) = v32;
    *(v34 + 3) = KeyPath;
    v34[32] = 0;
    sub_216683A80(v21, v39[0], &qword_27CAB7690, &qword_21703B4A0);
    swift_storeEnumTagMultiPayload();
    sub_2167C4E34();
    sub_2167C50B0();

    sub_217009554();
    v35 = v21;
    v36 = &qword_27CAB7690;
    v37 = &qword_21703B4A0;
  }

  else
  {
    sub_2167BB348(v6);
    sub_216683A80(v6, v9, &qword_27CAB7680, &unk_21701F610);
    swift_storeEnumTagMultiPayload();
    sub_2167C4E34();
    sub_2167C50B0();
    sub_217009554();
    v35 = v6;
    v36 = &qword_27CAB7680;
    v37 = &unk_21701F610;
  }

  return sub_216697664(v35, v36, v37);
}

uint64_t sub_2167BB348@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_217007474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8, &qword_217017590);
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_216683A80(v3, v6, &qword_27CABF770, &unk_21701A670);
  sub_217007434();
  v17 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  sub_2170073E4();
  v18 = *(v8 + 8);
  v18(v10, v7);
  v19 = (v3 + *(v17 + 20));
  v20 = *v19;
  v21 = v19[1];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  sub_2167B8890(v20, v21);
  sub_2167C505C();
  sub_2170073F4();

  v18(v13, v7);
  if (qword_280E2C2C8 != -1)
  {
    swift_once();
  }

  sub_216B067F0(qword_280E73AA0, byte_280E73AA8, qword_280E73AB0, v26);
  return (*(v24 + 8))(v16, v25);
}

uint64_t sub_2167BB664(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  sub_2167B7D58(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74C0, &qword_217017120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74C8, &qword_217017128);
  if (swift_dynamicCast())
  {
    sub_2166A0F18(v22, v25);
    v8 = v26;
    v9 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    OUTLINED_FUNCTION_110();
    v10 = sub_21700C4B4();
    OUTLINED_FUNCTION_22_16(v10);
    (*(v9 + 8))(v1, v8, v9);
    sub_216697664(v1, &qword_27CABF770, &unk_21701A670);
    v11 = OUTLINED_FUNCTION_92_0();
    sub_2167C3F6C(v11, v12);
    sub_2167C3FC4(v2, type metadata accessor for ContextMenuPreview.ViewModel);
    type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_216697664(v22, &qword_27CAB74D0, &qword_217017130);
    type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
    OUTLINED_FUNCTION_38_2();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

void sub_2167BB860()
{
  v0 = objc_opt_self();
  v1 = [v0 currentTraitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    v3 = [v0 currentTraitCollection];
    v4 = [v3 preferredContentSizeCategory];
    sub_21700F004();

    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
  }
}

uint64_t sub_2167BB97C(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
  {
    if (a1)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = 600.0;
    }
  }

  else
  {
    v6 = [v2 currentTraitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7)
    {
      *&result = 343.0;
    }

    else
    {
      v8 = [objc_opt_self() mainScreen];
      [v8 bounds];
      v10 = v9;

      *&result = v10 + -48.0;
    }
  }

  return result;
}

uint64_t sub_2167BBA98(char a1)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](a1 & 1);
  return sub_21700F944();
}

uint64_t sub_2167BBAE8(uint64_t a1)
{
  v2 = *v1;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v2);
  return sub_21700F944();
}

uint64_t sub_2167BBB2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2170093B4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7568, &qword_217017300);
  return sub_2167BBB80(v1, a1 + *(v3 + 44));
}

uint64_t sub_2167BBB80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for _ContextMenuPreview.InlinePreview(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7570, &qword_217017308);
  MEMORY[0x28223BE20](v25);
  v7 = &v24 - v6;
  v26 = type metadata accessor for _ContextMenuPreview.StackedPreview(0);
  MEMORY[0x28223BE20](v26);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7578, &qword_217017310);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7528, qword_2170171C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  v14 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216683A80(a1, v13, &qword_27CAB7528, qword_2170171C0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_216697664(v13, &qword_27CAB7528, qword_2170171C0);
    v17 = 1;
    v18 = v29;
  }

  else
  {
    sub_2167C465C(v13, v16);
    if (v16[*(v14 + 32)] == 1)
    {
      sub_2167C3F6C(v16, v9);
      v9[*(v26 + 20)] = 1;
      sub_2167C3F6C(v9, v7);
      swift_storeEnumTagMultiPayload();
      sub_2167C403C(&qword_27CAB7588, type metadata accessor for _ContextMenuPreview.StackedPreview, &unk_2170173D0);
      sub_2167C403C(&qword_27CAB7590, type metadata accessor for _ContextMenuPreview.InlinePreview, &unk_217017380);
      v19 = v27;
      sub_217009554();
      v20 = type metadata accessor for _ContextMenuPreview.StackedPreview;
      v21 = v9;
    }

    else
    {
      sub_2167C3F6C(v16, v5);
      v22 = *(a1 + *(type metadata accessor for _ContextMenuPreview(0) + 20));
      *&v5[v3[7]] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
      swift_storeEnumTagMultiPayload();
      v5[v3[5]] = v22;
      v5[v3[6]] = 0;
      *&v5[v3[8]] = 0x4057000000000000;
      sub_2167C3F6C(v5, v7);
      swift_storeEnumTagMultiPayload();
      sub_2167C403C(&qword_27CAB7588, type metadata accessor for _ContextMenuPreview.StackedPreview, &unk_2170173D0);
      sub_2167C403C(&qword_27CAB7590, type metadata accessor for _ContextMenuPreview.InlinePreview, &unk_217017380);
      v19 = v27;
      sub_217009554();
      v20 = type metadata accessor for _ContextMenuPreview.InlinePreview;
      v21 = v5;
    }

    sub_2167C3FC4(v21, v20);
    sub_2167C3FC4(v16, type metadata accessor for ContextMenuPreview.ViewModel);
    v18 = v29;
    sub_2167C5834(v19, v29, &qword_27CAB7578, &qword_217017310);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v18, v17, 1, v28);
}

double sub_2167BC0E0()
{
  v1 = *(v0 + *(type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0) + 24));
  type metadata accessor for _ContextMenuPreview.StackedPreview(0);
  sub_2167BB860();
  if (v1 < 1.0)
  {
    v2 = v1 * v2;
  }

  return v2 / v1;
}

uint64_t sub_2167BC134@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v43 = sub_2170099D4();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v46);
  v48 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D8, &qword_217017428);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75E0, &qword_217017430);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75E8, &qword_217017438);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v14 = &v40 - v13;
  v15 = *(v2 + *(type metadata accessor for _ContextMenuPreview.StackedPreview(0) + 20));
  sub_2167BB860();
  v17 = v16 + 32.0;
  *v9 = sub_2170093C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75F0, &qword_217017440);
  sub_2167BC744(v2, &v9[*(v18 + 44)]);
  KeyPath = swift_getKeyPath();
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75F8, &qword_217017478) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 2;
  v20[16] = 0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7600, &qword_217017480) + 36)] = 256;
  LOBYTE(KeyPath) = sub_217009C84();
  sub_217007F24();
  v21 = &v9[*(v7 + 44)];
  *v21 = KeyPath;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v26 = sub_2167BB97C(v15);
  LOBYTE(KeyPath) = v27;
  sub_21700B3B4();
  v28 = *&v26;
  if (KeyPath)
  {
    v28 = v17;
  }

  if (v17 > v28)
  {
    sub_21700ED94();
    v29 = sub_217009C34();
    v41 = v14;
    v30 = v10;
    v31 = v29;
    sub_217007BC4();

    v10 = v30;
    v14 = v41;
  }

  sub_217008BB4();
  sub_2167C5834(v9, v12, &qword_27CAB75D8, &qword_217017428);
  memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
  v32 = *MEMORY[0x277CDF998];
  v33 = sub_217008844();
  v34 = v48;
  (*(*(v33 - 8) + 104))(v48, v32, v33);
  sub_2167C403C(&qword_280E2B340, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_21700E494();
  if (result)
  {
    v36 = sub_2167C4A34();
    v37 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    v38 = v46;
    sub_21700A5B4();
    sub_216697664(v34, &qword_27CAB75D0, &qword_217017420);
    sub_216697664(v12, &qword_27CAB75E0, &qword_217017430);
    sub_2170099B4();
    v49 = v10;
    v50 = v38;
    v51 = v36;
    v52 = v37;
    swift_getOpaqueTypeConformance2();
    v39 = v45;
    sub_21700A784();
    (*(v42 + 8))(v4, v43);
    return (*(v44 + 8))(v14, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2167BC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v57[-v4];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7648, &qword_2170174A0);
  MEMORY[0x28223BE20](v62);
  v63 = &v57[-v6];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7650, &qword_2170174A8);
  MEMORY[0x28223BE20](v61);
  v69 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v60 = &v57[-v9];
  MEMORY[0x28223BE20](v10);
  v70 = &v57[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7658, &qword_2170174B0);
  MEMORY[0x28223BE20](v12 - 8);
  v68 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v57[-v15];
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  type metadata accessor for _ContextMenuPreview.StackedPreview(0);
  sub_2167BB860();
  sub_2167BC0E0();
  v67 = v16;
  sub_2167BAE98(v16);
  v17 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v18 = (a1 + *(v17 + 20));
  v19 = v18[1];
  v59 = v17;
  if (v19)
  {
    v20 = *v18;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  sub_21700DF14();
  v22 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v71 = v20;
  v72 = v19;
  v73 = 0;
  v74 = v21;
  v75 = KeyPath;
  v76 = v22;
  sub_217009DE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();
  sub_2167C4DF0(v20, v19, 0, v21);

  v24 = sub_217009814();
  v25 = v63;
  (*(v64 + 32))(v63, v5, v65);
  *&v25[*(v62 + 36)] = v24;
  LOBYTE(v24) = sub_217009C94();
  sub_217007F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v25;
  v35 = v60;
  sub_2167C5834(v34, v60, &qword_27CAB7648, &qword_2170174A0);
  v36 = &v35[*(v61 + 36)];
  *v36 = v24;
  *(v36 + 1) = v27;
  *(v36 + 2) = v29;
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;
  v36[40] = 0;
  sub_2167C5834(v35, v70, &qword_27CAB7650, &qword_2170174A8);
  v37 = v59;
  v38 = (a1 + *(v59 + 24));
  v39 = v38[1];
  if (v39)
  {
    v40 = *v38;
    v41 = MEMORY[0x277D84F90];
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  sub_21700DF14();
  v65 = sub_217009D54();
  v64 = swift_getKeyPath();
  LODWORD(v61) = sub_217009834();
  v42 = (a1 + *(v37 + 28));
  v43 = v42[1];
  if (v43)
  {
    v62 = *v42;
    v63 = MEMORY[0x277D84F90];
  }

  else
  {
    v62 = 0;
    v63 = 0;
  }

  sub_21700DF14();
  v60 = sub_217009E94();
  v59 = swift_getKeyPath();
  v58 = sub_217009834();
  v44 = v68;
  sub_216683A80(v67, v68, &qword_27CAB7658, &qword_2170174B0);
  v45 = v69;
  sub_216683A80(v70, v69, &qword_27CAB7650, &qword_2170174A8);
  v46 = v44;
  v47 = v66;
  sub_216683A80(v46, v66, &qword_27CAB7658, &qword_2170174B0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7678, &unk_217017500);
  sub_216683A80(v45, v47 + v48[12], &qword_27CAB7650, &qword_2170174A8);
  v49 = v47 + v48[16];
  *v49 = v40;
  *(v49 + 8) = v39;
  *(v49 + 16) = 0;
  *(v49 + 24) = v41;
  v50 = v39;
  v51 = v65;
  *(v49 + 32) = v64;
  *(v49 + 40) = v51;
  *(v49 + 48) = v61;
  v52 = v47 + v48[20];
  v54 = v62;
  v53 = v63;
  *v52 = v62;
  *(v52 + 8) = v43;
  *(v52 + 16) = 0;
  *(v52 + 24) = v53;
  v55 = v60;
  *(v52 + 32) = v59;
  *(v52 + 40) = v55;
  *(v52 + 48) = v58;
  sub_2167770D0(v40, v50, 0, v41);

  sub_2167770D0(v54, v43, 0, v53);

  sub_216697664(v70, &qword_27CAB7650, &qword_2170174A8);
  sub_216697664(v67, &qword_27CAB7658, &qword_2170174B0);
  sub_2167C4DF0(v54, v43, 0, v53);

  sub_2167C4DF0(v40, v50, 0, v41);

  sub_216697664(v69, &qword_27CAB7650, &qword_2170174A8);
  return sub_216697664(v68, &qword_27CAB7658, &qword_2170174B0);
}

uint64_t sub_2167BCDE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for _ContextMenuPreview.InlinePreview(0);
  sub_216683A80(v1 + *(v10 + 28), v9, &qword_27CAB7580, &qword_21701F580);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_217008844();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2167BCFEC@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7700, &qword_217017598);
  MEMORY[0x28223BE20](v2 - 8);
  v137 = (&v119 - v3);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7708, &qword_2170175A0);
  MEMORY[0x28223BE20](v135);
  v134 = &v119 - v4;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7710, &qword_2170175A8);
  MEMORY[0x28223BE20](v132);
  v136 = &v119 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7718, &qword_2170175B0);
  MEMORY[0x28223BE20](v133);
  v7 = &v119 - v6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7720, &qword_2170175B8);
  MEMORY[0x28223BE20](v152);
  v139 = &v119 - v8;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7728, &qword_2170175C0);
  v141 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v140 = &v119 - v9;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7730, &qword_2170175C8);
  MEMORY[0x28223BE20](v150);
  v151 = &v119 - v10;
  v11 = sub_2170099D4();
  v147 = *(v11 - 8);
  v148 = v11;
  MEMORY[0x28223BE20](v11);
  v145 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v146);
  v131 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7738, &qword_2170175D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v119 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7740, &qword_2170175D8);
  MEMORY[0x28223BE20](v127);
  v126 = &v119 - v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7748, &qword_2170175E0);
  MEMORY[0x28223BE20](v124);
  v128 = &v119 - v18;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7750, &qword_2170175E8);
  MEMORY[0x28223BE20](v125);
  v129 = &v119 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7758, &qword_2170175F0);
  MEMORY[0x28223BE20](v158);
  v130 = &v119 - v20;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7760, &qword_2170175F8);
  v121 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v120 = &v119 - v21;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7768, &qword_217017600);
  v123 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v122 = &v119 - v22;
  v23 = sub_217008844();
  v24 = *(v23 - 8);
  v160 = v23;
  v161 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v28 = (v1 + v27[5]);
  v29 = v28[1];
  if (v29)
  {
    v171 = *v28;
    v30 = MEMORY[0x277D84F90];
  }

  else
  {
    v171 = 0;
    v30 = 0;
  }

  sub_21700DF14();
  sub_217009D54();
  sub_217009DE4();
  v170 = sub_217009E34();

  KeyPath = swift_getKeyPath();
  v156 = sub_217009814();
  v31 = (v1 + v27[6]);
  v32 = v31[1];
  if (v32)
  {
    v166 = *v31;
    v167 = MEMORY[0x277D84F90];
  }

  else
  {
    v166 = 0;
    v167 = 0;
  }

  v168 = v32;
  sub_21700DF14();
  v164 = sub_217009E94();
  v165 = swift_getKeyPath();
  v155 = sub_217009834();
  v33 = (v1 + v27[7]);
  v34 = v33[1];
  v163 = v29;
  v138 = v7;
  v35 = v1;
  if (v34)
  {
    v173 = *v33;
    v162 = MEMORY[0x277D84F90];
  }

  else
  {
    v173 = 0;
    v162 = 0;
  }

  sub_21700DF14();
  v172 = sub_217009E94();
  v36 = swift_getKeyPath();
  v37 = sub_217009834();
  v157 = *(v1 + *(type metadata accessor for _ContextMenuPreview.InlinePreview(0) + 24));
  sub_2167BB860();
  v39 = v38;
  sub_2167BCDE4(v26);
  v40 = sub_217008834();
  (*(v161 + 8))(v26, v160);
  v142 = v30;
  v143 = v34;
  v159 = v36;
  if (v40)
  {
    v41 = sub_2170093C4();
    v192 = v171;
    v193 = v163;
    v194 = 0;
    v195 = v30;
    v196 = KeyPath;
    v197 = v170;
    v198 = v156;
    v185 = v166;
    v186 = v168;
    v187 = 0;
    v188 = v167;
    v189 = v165;
    v190 = v164;
    v191 = v155;
    v178 = v173;
    v179 = v34;
    v180 = 0;
    v181 = v162;
    v182 = v36;
    v183 = v172;
    v184 = v37;
    *v16 = v41;
    *(v16 + 1) = 0;
    v16[16] = 0;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77C8, &qword_217017610);
    sub_2167BE2E4(&v192, &v185, &v178, &v16[*(v42 + 44)]);
    v43 = swift_getKeyPath();
    v44 = v126;
    sub_2167C5834(v16, v126, &qword_27CAB7738, &qword_2170175D0);
    v45 = v44 + *(v127 + 36);
    *v45 = v43;
    *(v45 + 8) = 2;
    *(v45 + 16) = 0;
    v46 = v44;
    v47 = v128;
    sub_2167C5834(v46, v128, &qword_27CAB7740, &qword_2170175D8);
    *(v47 + *(v124 + 36)) = 256;
    LOBYTE(v43) = sub_217009C84();
    sub_217007F24();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v129;
    sub_2167C5834(v47, v129, &qword_27CAB7748, &qword_2170175E0);
    v57 = v56 + *(v125 + 36);
    *v57 = v43;
    *(v57 + 8) = v49;
    *(v57 + 16) = v51;
    *(v57 + 24) = v53;
    *(v57 + 32) = v55;
    *(v57 + 40) = 0;
    *&v58 = COERCE_DOUBLE(sub_2167BB97C(v157));
    LOBYTE(v47) = v59;
    sub_21700B3B4();
    v60 = *&v58;
    if (v47)
    {
      v60 = v39;
    }

    if (v39 > v60)
    {
      sub_21700ED94();
      v61 = sub_217009C34();
      sub_217007BC4();
    }

    sub_217008BB4();
    v62 = v130;
    sub_2167C5834(v56, v130, &qword_27CAB7750, &qword_2170175E8);
    v63 = v158;
    memcpy((v62 + *(v158 + 36)), __src, 0x70uLL);
    v64 = v131;
    (*(v161 + 104))(v131, *MEMORY[0x277CDF998], v160);
    sub_2167C403C(&qword_280E2B340, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_21700E494();
    if (result)
    {
      v66 = v62;
      v67 = sub_2167C55AC();
      v68 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
      v69 = v120;
      v70 = v146;
      sub_21700A5B4();
      sub_216697664(v64, &qword_27CAB75D0, &qword_217017420);
      sub_216697664(v66, &qword_27CAB7758, &qword_2170175F0);
      v71 = v145;
      sub_2170099B4();
      v174 = v63;
      v175 = v70;
      v176 = v67;
      v177 = v68;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v73 = v122;
      v74 = v144;
      sub_21700A784();
      (*(v147 + 8))(v71, v148);
      (*(v121 + 8))(v69, v74);
      v75 = v123;
      v76 = v149;
      (*(v123 + 16))(v151, v73, v149);
      swift_storeEnumTagMultiPayload();
      v174 = v74;
      v175 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v77 = sub_2167C5324();
      v174 = v152;
      v175 = v77;
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      sub_2167C4DF0(v173, v143, 0, v162);

      sub_2167C4DF0(v166, v168, 0, v167);

      sub_2167C4DF0(v171, v163, 0, v142);

      return (*(v75 + 8))(v73, v76);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v192 = v171;
    v78 = v163;
    v193 = v163;
    v194 = 0;
    v195 = v30;
    v196 = KeyPath;
    v197 = v170;
    v161 = v35;
    v198 = v156;
    v185 = v166;
    v186 = v168;
    v187 = 0;
    v188 = v167;
    v189 = v165;
    v190 = v164;
    v191 = v155;
    v79 = v173;
    v178 = v173;
    v179 = v34;
    v80 = v162;
    v180 = 0;
    v181 = v162;
    v182 = v36;
    v183 = v172;
    v184 = v37;

    v81 = v171;
    sub_2167770D0(v171, v78, 0, v30);
    v82 = v166;
    v83 = v167;
    v84 = v168;
    sub_2167770D0(v166, v168, 0, v167);
    v85 = v79;
    v86 = v80;
    sub_2167770D0(v85, v34, 0, v80);
    v87 = sub_2170091A4();
    v88 = v137;
    *v137 = v87;
    *(v88 + 8) = 0;
    *(v88 + 16) = 0;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7770, &qword_217017608);
    sub_2167BE900(v161, &v192, &v185, &v178, v88 + *(v89 + 44));
    sub_2167C4DF0(v81, v78, 0, v30);

    sub_2167C4DF0(v82, v84, 0, v83);

    sub_2167C4DF0(v173, v34, 0, v86);

    v90 = swift_getKeyPath();
    v91 = v134;
    sub_2167C5834(v88, v134, &qword_27CAB7700, &qword_217017598);
    v92 = v91 + *(v135 + 36);
    *v92 = v90;
    *(v92 + 8) = 2;
    *(v92 + 16) = 0;
    v93 = v91;
    v94 = v136;
    sub_2167C5834(v93, v136, &qword_27CAB7708, &qword_2170175A0);
    *(v94 + *(v132 + 36)) = 256;
    LOBYTE(v90) = sub_217009C84();
    sub_217007F24();
    v96 = v95;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = v138;
    sub_2167C5834(v94, v138, &qword_27CAB7710, &qword_2170175A8);
    v104 = v103 + *(v133 + 36);
    *v104 = v90;
    *(v104 + 8) = v96;
    *(v104 + 16) = v98;
    *(v104 + 24) = v100;
    *(v104 + 32) = v102;
    *(v104 + 40) = 0;
    *&v105 = COERCE_DOUBLE(sub_2167BB97C(v157));
    LOBYTE(v94) = v106;
    sub_21700B3B4();
    v107 = *&v105;
    if (v94)
    {
      v107 = v39;
    }

    if (v39 > v107)
    {
      sub_21700ED94();
      v108 = sub_217009C34();
      sub_217007BC4();
    }

    sub_217008BB4();
    v109 = v139;
    sub_2167C5834(v103, v139, &qword_27CAB7718, &qword_2170175B0);
    v110 = v152;
    memcpy((v109 + *(v152 + 36)), __src, 0x70uLL);
    v111 = v145;
    sub_2170099B4();
    v112 = sub_2167C5324();
    v113 = v140;
    sub_21700A784();
    (*(v147 + 8))(v111, v148);
    sub_216697664(v109, &qword_27CAB7720, &qword_2170175B8);
    v114 = v141;
    v115 = v153;
    (*(v141 + 16))(v151, v113, v153);
    swift_storeEnumTagMultiPayload();
    v116 = sub_2167C55AC();
    v117 = sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    v174 = v158;
    v175 = v146;
    v176 = v116;
    v177 = v117;
    v118 = swift_getOpaqueTypeConformance2();
    v174 = v144;
    v175 = v118;
    swift_getOpaqueTypeConformance2();
    v174 = v110;
    v175 = v112;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    sub_2167C4DF0(v173, v143, 0, v162);

    sub_2167C4DF0(v166, v168, 0, v167);

    sub_2167C4DF0(v171, v163, 0, v142);

    return (*(v114 + 8))(v113, v115);
  }

  return result;
}

uint64_t sub_2167BE2E4@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77D0, &qword_217017618);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v49 - v13;
  *v14 = sub_2170091A4();
  *(v14 + 1) = 0x4030000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77D8, &qword_217017620);
  sub_2167BE608(a2, &v14[*(v15 + 44)]);
  LOBYTE(a2) = sub_217009CA4();
  sub_217007F24();
  v16 = *(v9 + 44);
  v17 = v14;
  v53 = v14;
  v18 = &v14[v16];
  *v18 = a2;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = *a3;
  v24 = a3[1];
  v50 = a3[2];
  v51 = v24;
  v25 = a3[4];
  v59 = a3[3];
  v57 = v23;
  v58 = v25;
  v26 = a3[5];
  v55 = v11;
  v56 = v26;
  v52 = *(a3 + 12);
  v27 = *a4;
  v28 = *(a4 + 8);
  v30 = *(a4 + 16);
  v29 = *(a4 + 24);
  v31 = *(a4 + 40);
  v49[0] = *(a4 + 32);
  v32 = v49[0];
  LODWORD(v14) = *(a4 + 48);
  sub_216683A80(v17, v11, &qword_27CAB77D0, &qword_217017618);
  v33 = v11;
  v34 = v54;
  sub_216683A80(v33, v54, &qword_27CAB77D0, &qword_217017618);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77E0, &qword_217017628);
  v36 = v34 + *(v35 + 48);
  v37 = v34;
  v38 = v57;
  v39 = v58;
  v41 = v50;
  v40 = v51;
  *v36 = v57;
  *(v36 + 8) = v40;
  v42 = v59;
  *(v36 + 16) = v41;
  *(v36 + 24) = v42;
  v43 = v56;
  *(v36 + 32) = v39;
  *(v36 + 40) = v43;
  *(v36 + 48) = v52;
  v44 = v37 + *(v35 + 64);
  *v44 = v27;
  *(v44 + 8) = v28;
  *(v44 + 16) = v30;
  *(v44 + 24) = v29;
  *(v44 + 32) = v32;
  *(v44 + 40) = v31;
  v49[1] = v31;
  *(v44 + 48) = v14;
  v45 = v38;
  v46 = v38;
  v47 = v40;
  LOBYTE(v32) = v41;
  sub_2167770D0(v45, v40, v41, v42);

  sub_2167770D0(v27, v28, v30, v29);

  sub_2167770D0(v46, v47, v32, v59);

  sub_2167770D0(v27, v28, v30, v29);

  sub_216697664(v53, &qword_27CAB77D0, &qword_217017618);
  sub_2167C4DF0(v27, v28, v30, v29);

  sub_2167C4DF0(v57, v47, v32, v59);

  return sub_216697664(v55, &qword_27CAB77D0, &qword_217017618);
}

uint64_t sub_2167BE608@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v4 = sub_217008844();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7658, &qword_2170174B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_2167BCDE4(v7);
  sub_217008834();
  v14 = *(v5 + 8);
  v14(v7, v4);
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  sub_2167BCDE4(v7);
  sub_217008834();
  v14(v7, v4);
  v26 = v13;
  sub_2167BAE98(v13);
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 32);
  v20 = *(a2 + 40);
  LODWORD(a2) = *(a2 + 48);
  v27 = v10;
  sub_216683A80(v13, v10, &qword_27CAB7658, &qword_2170174B0);
  v21 = v10;
  v22 = v28;
  sub_216683A80(v21, v28, &qword_27CAB7658, &qword_2170174B0);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77E8, &qword_217017630) + 48);
  *v23 = v15;
  *(v23 + 8) = v16;
  *(v23 + 16) = v17;
  *(v23 + 24) = v18;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  *(v23 + 48) = a2;
  sub_2167770D0(v15, v16, v17, v18);

  sub_2167770D0(v15, v16, v17, v18);

  sub_216697664(v26, &qword_27CAB7658, &qword_2170174B0);
  sub_2167C4DF0(v15, v16, v17, v18);

  return sub_216697664(v27, &qword_27CAB7658, &qword_2170174B0);
}

uint64_t sub_2167BE900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v78 = a5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77F0, &qword_217017638);
  MEMORY[0x28223BE20](v71);
  v70 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB77F8, &qword_217017640);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v69 - v10;
  v11 = sub_217008844();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7658, &qword_2170174B0);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7800, &qword_217017648);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v76 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - v24;
  sub_2167BCDE4(v14);
  sub_217008834();
  v26 = *(v12 + 8);
  v26(v14, v11);
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  sub_2167BCDE4(v14);
  sub_217008834();
  v26(v14, v11);
  v27 = v80;
  sub_2167BAE98(v80);
  v28 = sub_217009CD4();
  sub_217007F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_2167C5834(v27, v22, &qword_27CAB7658, &qword_2170174B0);
  v37 = &v22[*(v18 + 44)];
  *v37 = v28;
  v38 = v71;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v80 = v25;
  sub_2167C5834(v22, v25, &qword_27CAB7800, &qword_217017648);
  v75 = sub_2170093C4();
  v91 = 0;
  sub_2167BF068(v72, v73, v74, v82);
  memcpy(v92, v82, 0xA4uLL);
  memcpy(v93, v82, 0xA4uLL);
  sub_216683A80(v92, v81, &qword_27CAB7808, &qword_217017650);
  sub_216697664(v93, &qword_27CAB7808, &qword_217017650);
  memcpy(&v90[7], v92, 0xA4uLL);
  LODWORD(v73) = v91;
  LODWORD(v74) = sub_217009CD4();
  sub_217007F24();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = type metadata accessor for _ContextMenuPreview.InlinePreview(0);
  v48 = 1;
  if (*(a1 + *(v47 + 20)) == 1)
  {
    v49 = sub_21700ADB4();
    v50 = sub_217009D54();
    KeyPath = swift_getKeyPath();
    v52 = sub_217009834();
    v53 = v70;
    v54 = &v70[*(v38 + 36)];
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820, &qword_21701A450) + 28);
    v56 = *MEMORY[0x277CE1058];
    v57 = sub_21700ADF4();
    (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
    *v54 = swift_getKeyPath();
    *v53 = v49;
    *(v53 + 8) = KeyPath;
    *(v53 + 16) = v50;
    *(v53 + 24) = v52;
    sub_2167C5834(v53, v79, &qword_27CAB77F0, &qword_217017638);
    v48 = 0;
  }

  v58 = v79;
  __swift_storeEnumTagSinglePayload(v79, v48, 1, v38);
  v59 = v76;
  sub_216683A80(v80, v76, &qword_27CAB7800, &qword_217017648);
  v60 = v77;
  sub_216683A80(v58, v77, &qword_27CAB77F8, &qword_217017640);
  v61 = v78;
  sub_216683A80(v59, v78, &qword_27CAB7800, &qword_217017648);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7810, &qword_217017658);
  v63 = v62[12];
  v64 = v75;
  v81[0] = v75;
  v81[1] = 0;
  v65 = v73;
  LOBYTE(v81[2]) = v73;
  memcpy(&v81[2] + 1, v90, 0xABuLL);
  v66 = v74;
  LOBYTE(v81[24]) = v74;
  *(&v81[24] + 1) = v94[0];
  HIDWORD(v81[24]) = *(v94 + 3);
  v81[25] = v40;
  v81[26] = v42;
  v81[27] = v44;
  v81[28] = v46;
  LOBYTE(v81[29]) = 0;
  memcpy((v61 + v63), v81, 0xE9uLL);
  v67 = v61 + v62[16];
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_216683A80(v60, v61 + v62[20], &qword_27CAB77F8, &qword_217017640);
  sub_216683A80(v81, v82, &qword_27CAB7818, &unk_217017660);
  sub_216697664(v58, &qword_27CAB77F8, &qword_217017640);
  sub_216697664(v80, &qword_27CAB7800, &qword_217017648);
  sub_216697664(v60, &qword_27CAB77F8, &qword_217017640);
  v82[0] = v64;
  v82[1] = 0;
  LOBYTE(v82[2]) = v65;
  memcpy(&v82[2] + 1, v90, 0xABuLL);
  v83 = v66;
  *v84 = v94[0];
  *&v84[3] = *(v94 + 3);
  v85 = v40;
  v86 = v42;
  v87 = v44;
  v88 = v46;
  v89 = 0;
  sub_216697664(v82, &qword_27CAB7818, &unk_217017660);
  return sub_216697664(v59, &qword_27CAB7800, &qword_217017648);
}

uint64_t sub_2167BF068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 32);
  v23 = *(a2 + 24);
  v24 = *(a2 + 40);
  v14 = *(a2 + 48);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *(a3 + 16);
  v22 = *(a3 + 24);
  v19 = *(a3 + 40);
  v18 = *(a3 + 32);
  v20 = *(a3 + 48);
  v28 = *a1;
  *a4 = *a1;
  *(a4 + 8) = v4;
  v26 = v5;
  v27 = v4;
  *(a4 + 16) = v6;
  *(a4 + 24) = v5;
  v25 = v6;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v9;
  *(a4 + 56) = v11;
  *(a4 + 64) = v10;
  *(a4 + 72) = v12;
  *(a4 + 80) = v23;
  *(a4 + 88) = v13;
  *(a4 + 96) = v24;
  *(a4 + 104) = v14;
  *(a4 + 112) = v15;
  *(a4 + 120) = v16;
  *(a4 + 128) = v17;
  *(a4 + 136) = v22;
  *(a4 + 144) = v18;
  *(a4 + 152) = v19;
  *(a4 + 160) = v20;
  sub_2167770D0(v28, v4, v6, v5);

  sub_2167770D0(v11, v10, v12, v23);

  sub_2167770D0(v15, v16, v17, v22);

  sub_2167770D0(v28, v27, v25, v26);

  sub_2167770D0(v11, v10, v12, v23);

  sub_2167770D0(v15, v16, v17, v22);

  sub_2167C4DF0(v15, v16, v17, v22);

  sub_2167C4DF0(v11, v10, v12, v23);

  sub_2167C4DF0(v28, v27, v25, v26);
}

void sub_2167BF2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v231[1] = v24;
  v232 = v20;
  v233 = v25;
  v26 = sub_2170070F4();
  v27 = OUTLINED_FUNCTION_0(v26, &v213);
  v200 = v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v29);
  v30 = sub_217007064();
  v31 = OUTLINED_FUNCTION_0(v30, &v216);
  v203 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v33);
  v34 = sub_217007264();
  v35 = OUTLINED_FUNCTION_0(v34, &v219);
  v206 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v37);
  v38 = sub_217007324();
  v39 = OUTLINED_FUNCTION_0(v38, &v222);
  v209 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v41);
  v42 = sub_2170073D4();
  v43 = OUTLINED_FUNCTION_0(v42, &v225);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v44);
  v45 = sub_21700C644();
  v46 = OUTLINED_FUNCTION_0(v45, &v228);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v47);
  v48 = sub_21700C084();
  v49 = OUTLINED_FUNCTION_0(v48, v231);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v50);
  v51 = sub_217006FE4();
  v52 = OUTLINED_FUNCTION_0(v51, &v233);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v53);
  v54 = sub_21700BEA4();
  v55 = OUTLINED_FUNCTION_0(v54, &a10);
  v212 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v57);
  v58 = sub_21700C994();
  v59 = OUTLINED_FUNCTION_0(v58, &a13);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v60);
  v61 = sub_21700C924();
  v62 = OUTLINED_FUNCTION_0(v61, &a16);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v63);
  v214 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v213 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v66);
  sub_217006B84();
  OUTLINED_FUNCTION_1();
  v216 = v68;
  v217 = v67;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_0();
  v215 = v69;
  OUTLINED_FUNCTION_4_1();
  sub_21700C254();
  OUTLINED_FUNCTION_1();
  v219 = v71;
  v220 = v70;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_0();
  v218 = v72;
  OUTLINED_FUNCTION_4_1();
  sub_217006F54();
  OUTLINED_FUNCTION_1();
  v222 = v74;
  v223 = v73;
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v221 = v75;
  OUTLINED_FUNCTION_4_1();
  sub_21700C554();
  OUTLINED_FUNCTION_1();
  v225 = v77;
  v226 = v76;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_0();
  v224 = v78;
  OUTLINED_FUNCTION_4_1();
  sub_217006E94();
  OUTLINED_FUNCTION_1();
  v228 = v80;
  v229 = v79;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_6_0();
  v227 = v81;
  OUTLINED_FUNCTION_4_1();
  sub_2170072A4();
  OUTLINED_FUNCTION_1();
  v230 = v83;
  v231[0] = v82;
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_22_0();
  v84 = sub_21700C384();
  OUTLINED_FUNCTION_1();
  v86 = v85;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7();
  v90 = v89 - v88;
  v91 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v93 = v92;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_7();
  v97 = v96 - v95;
  v98 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v100 = v99;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_7();
  v104 = v103 - v102;
  (*(v100 + 16))(v103 - v102, v232, v98);
  v105 = OUTLINED_FUNCTION_47_5();
  v107 = v106(v105);
  if (v107 == *MEMORY[0x277D2A400])
  {
    v108 = OUTLINED_FUNCTION_18_7();
    v109(v108);
    (*(v93 + 32))(v97, v104, v91);
    sub_2167C0398();
    v110 = OUTLINED_FUNCTION_90();
    v111(v110);
    goto LABEL_13;
  }

  v112 = v233;
  if (v107 == *MEMORY[0x277D2A418])
  {
    v113 = OUTLINED_FUNCTION_18_7();
    v114(v113);
    (*(v86 + 32))(v90, v104, v84);
    OUTLINED_FUNCTION_61_1();
    sub_2167C0408();
    v115 = OUTLINED_FUNCTION_100_1();
LABEL_12:
    v117(v115, v116);
    goto LABEL_13;
  }

  if (v107 == *MEMORY[0x277D2A438])
  {
    (*(v100 + 96))(v104, v98);
    v86 = v230;
    v98 = v231[0];
    (*(v230 + 32))(v21, v104, v231[0]);
    sub_2167C068C();
LABEL_7:
    v117 = *(v86 + 8);
    v115 = v21;
LABEL_11:
    v116 = v98;
    goto LABEL_12;
  }

  if (v107 == *MEMORY[0x277D2A3C8])
  {
    (*(v100 + 96))(v104, v98);
    v118 = v227;
    v86 = v228;
    v98 = v229;
    (*(v228 + 32))(v227, v104, v229);
    OUTLINED_FUNCTION_61_1();
    sub_2167C0700();
LABEL_10:
    v117 = *(v86 + 8);
    v115 = v118;
    goto LABEL_11;
  }

  v118 = v104;
  if (v107 == *MEMORY[0x277D2A428])
  {
    v119 = OUTLINED_FUNCTION_50_5();
    v120(v119);
    v21 = v224;
    v86 = v225;
    v121 = OUTLINED_FUNCTION_29_7();
    v98 = v226;
    v122(v121);
    v123 = OUTLINED_FUNCTION_61_1();
    sub_2167C08B8(v123, v124);
    goto LABEL_7;
  }

  if (v107 == *MEMORY[0x277D2A388])
  {
    v125 = OUTLINED_FUNCTION_50_5();
    v126(v125);
    v21 = v221;
    v86 = v222;
    v127 = OUTLINED_FUNCTION_29_7();
    v98 = v223;
    v128(v127);
    sub_2167C0DD8();
    goto LABEL_7;
  }

  if (v107 == *MEMORY[0x277D2A408])
  {
    v129 = OUTLINED_FUNCTION_50_5();
    v130(v129);
    v21 = v218;
    v86 = v219;
    v131 = OUTLINED_FUNCTION_29_7();
    v98 = v220;
    v132(v131);
    OUTLINED_FUNCTION_66_4();
LABEL_22:
    v137 = OUTLINED_FUNCTION_44_8();
    sub_2167C0FF4(v137, v138, v139, v140, v141);
    goto LABEL_7;
  }

  if (v107 == *MEMORY[0x277D2A3B0])
  {
    v133 = OUTLINED_FUNCTION_50_5();
    v134(v133);
    v21 = v215;
    v86 = v216;
    v135 = OUTLINED_FUNCTION_29_7();
    v98 = v217;
    v136(v135);
    OUTLINED_FUNCTION_20_10();
    goto LABEL_22;
  }

  if (v107 == *MEMORY[0x277D2A3B8])
  {
    v142 = OUTLINED_FUNCTION_50_5();
    v143(v142);
    OUTLINED_FUNCTION_17_3();
    v144 = OUTLINED_FUNCTION_58_2();
    v98 = v214;
    v145(v144);
    v146 = OUTLINED_FUNCTION_44_8();
    sub_2167C1220(v146, v147, v148, v149, v150, v151, v152, v153, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208, v209);
    goto LABEL_7;
  }

  if (v107 == *MEMORY[0x277D2A440])
  {
    v154 = OUTLINED_FUNCTION_50_5();
    v155(v154);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_64_0();
    v156();
    OUTLINED_FUNCTION_44_8();
    sub_2167C1A20();
    goto LABEL_7;
  }

  if (v107 == *MEMORY[0x277D2A450])
  {
    v157 = OUTLINED_FUNCTION_50_5();
    v158(v157);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_64_0();
    v159();
    OUTLINED_FUNCTION_44_8();
    sub_2167C1BB4();
    goto LABEL_7;
  }

  if (v107 == *MEMORY[0x277D2A3C0])
  {
    v160 = OUTLINED_FUNCTION_50_5();
    v161(v160);
    v162 = OUTLINED_FUNCTION_58_2();
    v163(v162);
    OUTLINED_FUNCTION_44_8();
    sub_2167C1F40();
    (*(v212 + 8))(v21);
    goto LABEL_13;
  }

  if (v107 == *MEMORY[0x277D2A3D0])
  {
    v164 = OUTLINED_FUNCTION_50_5();
    v165(v164);
    OUTLINED_FUNCTION_94_0();
    (*(v166 + 32))(v211, v104);
    sub_2167C21B4();
LABEL_35:
    v170 = OUTLINED_FUNCTION_98();
    v171(v170);
    goto LABEL_13;
  }

  if (v107 == *MEMORY[0x277D2A3F8])
  {
    v167 = OUTLINED_FUNCTION_50_5();
    v168(v167);
    OUTLINED_FUNCTION_94_0();
    (*(v169 + 32))(v210, v104);
    sub_2167C23A4();
    goto LABEL_35;
  }

  if (v107 == *MEMORY[0x277D2A430])
  {
    v172 = OUTLINED_FUNCTION_18_7();
    v173(v172);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_64_0();
    v174();
    OUTLINED_FUNCTION_61_1();
    sub_2167C2A48();
    goto LABEL_10;
  }

  if (v107 == *MEMORY[0x277D2A458])
  {
    v175 = OUTLINED_FUNCTION_18_7();
    v176(v175);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_64_0();
    v177();
    OUTLINED_FUNCTION_61_1();
    sub_2167C2D10();
    goto LABEL_10;
  }

  if (v107 == *MEMORY[0x277D2A448])
  {
    v178 = OUTLINED_FUNCTION_18_7();
    v179(v178);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_64_0();
    v180();
    OUTLINED_FUNCTION_61_1();
    sub_2167C2EB0();
    goto LABEL_10;
  }

  if (v107 == *MEMORY[0x277D2A420])
  {
    v181 = OUTLINED_FUNCTION_18_7();
    v182(v181);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_64_0();
    v183();
    OUTLINED_FUNCTION_61_1();
    sub_2167C3114();
    goto LABEL_10;
  }

  if (v107 == *MEMORY[0x277D2A3D8])
  {
    v184 = OUTLINED_FUNCTION_18_7();
    v185(v184);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_64_0();
    v186();
    sub_2167C341C(v112);
    goto LABEL_10;
  }

  if (v107 == *MEMORY[0x277D2A3E0])
  {
    v187 = OUTLINED_FUNCTION_18_7();
    v188(v187);
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_64_0();
    v189();
    OUTLINED_FUNCTION_61_1();
    sub_2167C3490();
    goto LABEL_10;
  }

  if (v107 == *MEMORY[0x277D2A410])
  {
    v190 = OUTLINED_FUNCTION_47_5();
    v191(v190);
    sub_2167C3630(v112);
  }

  else
  {
    if (qword_27CAB58B0 != -1)
    {
      swift_once();
    }

    v192 = sub_217007CA4();
    __swift_project_value_buffer(v192, qword_27CAB7490);
    v193 = sub_217007C84();
    v194 = sub_21700ED84();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&dword_216679000, v193, v194, "An unsupported MusicKit type was added under GenericMusicItem for ContextMenuPreview", v195, 2u);
      MEMORY[0x21CEA1440](v195, -1, -1);
    }

    sub_2167C3630(v112);
    v196 = OUTLINED_FUNCTION_47_5();
    v197(v196);
  }

LABEL_13:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167C0398()
{
  sub_21700C1C4();
  OUTLINED_FUNCTION_78_4();
  OUTLINED_FUNCTION_16_13(*(v0 + 20), xmmword_217016ED0);
  sub_21700C184();
  OUTLINED_FUNCTION_98_0();
  v2 = sub_21700C0C4();
  v4 = v3;
  OUTLINED_FUNCTION_9_17();
  *v5 = v0;
  v5[1] = v1;
  OUTLINED_FUNCTION_32_7();
  *v6 = v2;
  v6[1] = v4;
  return OUTLINED_FUNCTION_3_28(v7);
}

void sub_2167C0408()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = &qword_27CABF770;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_216683A80(v4, v12, &qword_27CABF770, &unk_21701A670);
  v19 = sub_21700C4B4();
  OUTLINED_FUNCTION_31_2(v12, 1, v19);
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74D8, &qword_217017138);
    swift_allocObject();
    sub_21700B824();
    v7 = 0;
    sub_21700C374();

    OUTLINED_FUNCTION_31_2(v12, 1, v19);
    if (!v20)
    {
      sub_216697664(v12, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v21 = OUTLINED_FUNCTION_54_3();
    v22(v21);
    v23 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  }

  sub_21700C404();
  sub_2167C5834(v1, v18, &qword_27CABF770, &unk_21701A670);
  *(v18 + v14[5]) = xmmword_217016EE0;
  *(v18 + v14[6]) = 0x3FF0000000000000;
  *(v18 + v14[7]) = 0x4014000000000000;
  *(v18 + v14[8]) = 1;
  sub_21700C364();
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_0_26();
  sub_2167C465C(v18, v6);
  v26 = OUTLINED_FUNCTION_9_17();
  *v27 = v2;
  v27[1] = v7;
  OUTLINED_FUNCTION_30_3(*(v26 + 24));
  OUTLINED_FUNCTION_6_19(v28);
  *(v6 + v29) = 0;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167C068C()
{
  OUTLINED_FUNCTION_8_1();
  sub_21700C4B4();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_78_4();
  OUTLINED_FUNCTION_16_13(*(v2 + 20), xmmword_217016ED0);
  sub_217007294();
  OUTLINED_FUNCTION_84_1();
  v7 = OUTLINED_FUNCTION_9_17();
  *v8 = v1;
  v8[1] = v2;
  OUTLINED_FUNCTION_30_3(*(v7 + 24));
  result = OUTLINED_FUNCTION_6_19(v9);
  *(v0 + v11) = 1;
  return result;
}

void sub_2167C0700()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_86_3();
  v5 = OUTLINED_FUNCTION_69();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_40_5();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_34_9();
  sub_21700C4B4();
  OUTLINED_FUNCTION_10_8();
  if (v12)
  {
    sub_217006E84();
    OUTLINED_FUNCTION_10_8();
    if (!v12)
    {
      sub_216697664(v4, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v13 = OUTLINED_FUNCTION_36_3();
    v14(v13);
    OUTLINED_FUNCTION_35_7();
  }

  v15 = sub_217006E74();
  v17 = v16;
  sub_21700C404();
  sub_2167C5834(v3, v2, &qword_27CABF770, &unk_21701A670);
  v18 = (v2 + v10[5]);
  *v18 = v15;
  v18[1] = v17;
  *(v2 + v10[6]) = 0x3FF0000000000000;
  *(v2 + v10[7]) = 0x4024000000000000;
  *(v2 + v10[8]) = 1;
  sub_217006E74();
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_0_26();
  v19 = OUTLINED_FUNCTION_92_0();
  sub_2167C465C(v19, v20);
  v21 = OUTLINED_FUNCTION_9_17();
  *v22 = v1;
  v22[1] = v10;
  OUTLINED_FUNCTION_30_3(*(v21 + 24));
  OUTLINED_FUNCTION_6_19(v23);
  *(v0 + v24) = 0;
  OUTLINED_FUNCTION_26();
}

int *sub_2167C08B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v70 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0, &unk_217017140);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v69 = &v61 - v6;
  OUTLINED_FUNCTION_4_1();
  sub_21700C444();
  OUTLINED_FUNCTION_1();
  v67 = v8;
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_6_0();
  v66 = v9;
  OUTLINED_FUNCTION_4_1();
  sub_21700C514();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_56_2();
  v64 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_0();
  sub_216683A80(v62, v18, &qword_27CABF770, &unk_21701A670);
  v21 = sub_21700C4B4();
  v22 = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_31_2(v22, v23, v21);
  v65 = v2;
  v63 = v3;
  if (v24)
  {
    sub_21700C544();
    v25 = OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_31_2(v25, v26, v21);
    if (!v24)
    {
      sub_216697664(v18, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v27 + 32))(v3, v18, v21);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v21);
  }

  sub_21700C524();
  v31 = *(v11 + 104);
  v32 = OUTLINED_FUNCTION_76_3();
  v31(v32);
  OUTLINED_FUNCTION_71();
  v33 = sub_21700C504();
  v34 = *(v11 + 8);
  v35 = OUTLINED_FUNCTION_114_0();
  v34(v35);
  v36 = OUTLINED_FUNCTION_100_1();
  v34(v36);
  if (v33)
  {
    v37 = 5.0;
  }

  else
  {
    v37 = 10.0;
  }

  sub_21700C524();
  v38 = OUTLINED_FUNCTION_76_3();
  v31(v38);
  OUTLINED_FUNCTION_71();
  v39 = sub_21700C504();
  v40 = OUTLINED_FUNCTION_114_0();
  v34(v40);
  v41 = OUTLINED_FUNCTION_100_1();
  v34(v41);
  sub_21700C524();
  v42 = OUTLINED_FUNCTION_76_3();
  v31(v42);
  OUTLINED_FUNCTION_71();
  v43 = sub_21700C504();
  v44 = OUTLINED_FUNCTION_114_0();
  v34(v44);
  v45 = OUTLINED_FUNCTION_100_1();
  v34(v45);
  if (v43)
  {
    v46 = v66;
    sub_21700C404();
  }

  else
  {
    v46 = v66;
    sub_21700C414();
  }

  v47 = v65;
  sub_2167C5834(v63, v65, &qword_27CABF770, &unk_21701A670);
  v48 = v64;
  v49 = (v47 + *(v64 + 20));
  *v49 = 0;
  v49[1] = 0;
  *(v47 + v48[6]) = 0x3FF0000000000000;
  *(v47 + v48[7]) = v37;
  *(v47 + v48[8]) = v39 & 1;
  (*(v67 + 32))(v47 + v48[9], v46, v68);
  sub_21700C534();
  OUTLINED_FUNCTION_68_0();
  v50 = v69;
  sub_21700C4C4();
  v51 = sub_21700BEF4();
  OUTLINED_FUNCTION_31_2(v50, 1, v51);
  if (v24)
  {
    sub_216697664(v50, &qword_27CAB74E0, &unk_217017140);
    v52 = 0;
    v54 = 0;
  }

  else
  {
    v52 = sub_21700BED4();
    v54 = v53;
    OUTLINED_FUNCTION_50();
    (*(v55 + 8))(v50, v51);
  }

  OUTLINED_FUNCTION_0_26();
  v56 = v70;
  sub_2167C465C(v47, v70);
  result = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v58 = (v56 + result[5]);
  *v58 = v11 + 104;
  v58[1] = v34;
  v59 = (v56 + result[6]);
  *v59 = v52;
  v59[1] = v54;
  v60 = (v56 + result[7]);
  *v60 = 0;
  v60[1] = 0;
  *(v56 + result[8]) = 1;
  return result;
}

uint64_t sub_2167C0DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0, &unk_217017140);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_16();
  sub_217006F44();
  sub_21700C404();
  *(v0 + v6[7]) = xmmword_217016ED0;
  *(v0 + v6[8]) = 0x3FF0000000000000;
  *(v0 + v6[9]) = 0x4024000000000000;
  *(v0 + v6[10]) = 0;
  v7 = sub_217006F34();
  v9 = v8;
  sub_217006EE4();
  v10 = sub_21700BEF4();
  OUTLINED_FUNCTION_15_6(v4);
  if (v11)
  {
    sub_216697664(v4, &qword_27CAB74E0, &unk_217017140);
    v12 = 0;
    v14 = 0;
  }

  else
  {
    v12 = sub_21700BED4();
    v14 = v13;
    OUTLINED_FUNCTION_50();
    (*(v15 + 8))(v4, v10);
  }

  OUTLINED_FUNCTION_0_26();
  v16 = OUTLINED_FUNCTION_74_0();
  sub_2167C465C(v16, v17);
  OUTLINED_FUNCTION_9_17();
  *v18 = v7;
  v18[1] = v9;
  OUTLINED_FUNCTION_32_7();
  *v19 = v12;
  v19[1] = v14;
  return OUTLINED_FUNCTION_3_28(v20);
}

uint64_t sub_2167C0FF4(uint64_t a1, void (*a2)(uint64_t), void (*a3)(uint64_t), __n128 a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_56_2();
  v14 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_216683A80(a1, v7, &qword_27CABF770, &unk_21701A670);
  v19 = sub_21700C4B4();
  v20 = OUTLINED_FUNCTION_31_2(v7, 1, v19);
  if (v21)
  {
    a2(v20);
    OUTLINED_FUNCTION_31_2(v7, 1, v19);
    if (!v21)
    {
      sub_216697664(v7, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v22 + 32))(v6, v7, v19);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  }

  sub_21700C404();
  v26 = sub_2167C5834(v6, v18, &qword_27CABF770, &unk_21701A670);
  *(v18 + v14[5]) = a4;
  *(v18 + v14[6]) = a5;
  *(v18 + v14[7]) = 0x4024000000000000;
  *(v18 + v14[8]) = 0;
  a3(v26);
  OUTLINED_FUNCTION_84_1();
  OUTLINED_FUNCTION_0_26();
  v27 = OUTLINED_FUNCTION_82_1();
  sub_2167C465C(v27, v28);
  v29 = OUTLINED_FUNCTION_9_17();
  *v30 = v5;
  v30[1] = &unk_21701A670;
  OUTLINED_FUNCTION_30_3(*(v29 + 24));
  return OUTLINED_FUNCTION_3_28(v31);
}

void sub_2167C1220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v23;
  a20 = v24;
  v127 = v25;
  v128 = v26;
  v27 = sub_2170060D4();
  v28 = OUTLINED_FUNCTION_0(v27, &a16);
  v115 = v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v30);
  v31 = sub_217006104();
  v32 = OUTLINED_FUNCTION_0(v31, &a18);
  v117 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  v114[3] = v114 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v36);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  v124 = v114 - v38;
  OUTLINED_FUNCTION_4_1();
  sub_217005D84();
  OUTLINED_FUNCTION_1();
  v122 = v40;
  v123 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_0();
  v120 = v41;
  OUTLINED_FUNCTION_4_1();
  v42 = sub_217006274();
  v43 = OUTLINED_FUNCTION_36(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_0();
  v119 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F0, &unk_217017150);
  OUTLINED_FUNCTION_1();
  v121 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v48);
  v50 = v114 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  v52 = OUTLINED_FUNCTION_36(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_77();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  v57 = OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_16();
  sub_216683A80(v127, v55, &qword_27CABF770, &unk_21701A670);
  v59 = sub_21700C4B4();
  v60 = OUTLINED_FUNCTION_88_0();
  OUTLINED_FUNCTION_31_2(v60, v61, v59);
  if (v62)
  {
    sub_21700BA34();
    v63 = OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_31_2(v63, v64, v59);
    if (!v62)
    {
      sub_216697664(v55, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v65 + 32))(v21, v55, v59);
    v66 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v66, v67, v68, v59);
  }

  sub_21700C404();
  sub_2167C5834(v21, v20, &qword_27CABF770, &unk_21701A670);
  *(v20 + v57[5]) = xmmword_217016EF0;
  *(v20 + v57[6]) = 0x3FFC71C71C71C71CLL;
  *(v20 + v57[7]) = 0x4024000000000000;
  *(v20 + v57[8]) = 0;
  v69 = sub_21700BA14();
  v127 = v70;
  v71 = sub_21700B9B4();
  v125 = v72;
  v126 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = sub_21700B9A4();
  *(inited + 40) = v74;
  v75 = sub_21700B964();
  if ((v76 & 1) == 0)
  {
    v129 = v75;
    sub_217006254();
    sub_2167C40C4();
    sub_217005CE4();
    v80 = v120;
    sub_217005D74();
    MEMORY[0x21CE96B10](v80, v45);
    (*(v122 + 8))(v80, v123);
    v81 = *(v121 + 8);
    v81(v22, v45);
    OUTLINED_FUNCTION_53_5(&qword_27CAB7510, &qword_27CAB74F0, &unk_217017150);
    OUTLINED_FUNCTION_89_4();
    sub_21700F1D4();
    v81(v50, v45);
    goto LABEL_10;
  }

  v77 = v124;
  sub_21700B9C4();
  v78 = sub_2170061E4();
  v79 = OUTLINED_FUNCTION_31_2(v77, 1, v78);
  if (!v62)
  {
    v82 = v114[1];
    MEMORY[0x21CE96670](v79);
    OUTLINED_FUNCTION_94_0();
    sub_2170060C4();
    sub_217006084();
    (*(v115 + 8))(v50, v116);
    v83 = *(v117 + 8);
    v83(v82, v118);
    OUTLINED_FUNCTION_48_5();
    sub_2167C403C(v84, v85, MEMORY[0x277CC9420]);
    OUTLINED_FUNCTION_97();
    sub_2170061C4();
    v86 = OUTLINED_FUNCTION_97();
    (v83)(v86);
    OUTLINED_FUNCTION_50();
    v87 = OUTLINED_FUNCTION_47_5();
    v88(v87);
LABEL_10:
    v89 = v131;
    *(inited + 48) = v130;
    *(inited + 56) = v89;
    goto LABEL_11;
  }

  sub_216697664(v77, &qword_27CAB74E8, &qword_217030A40);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
LABEL_11:
  v90 = 0;
  v91 = MEMORY[0x277D84F90];
LABEL_12:
  v92 = (inited + 40 + 16 * v90);
  while (++v90 != 3)
  {
    v93 = v92 + 2;
    v94 = *v92;
    v92 += 2;
    if (v94)
    {
      v95 = *(v93 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v91 = v98;
      }

      v96 = *(v91 + 16);
      if (v96 >= *(v91 + 24) >> 1)
      {
        sub_21693776C();
        v91 = v99;
      }

      *(v91 + 16) = v96 + 1;
      v97 = v91 + 16 * v96;
      *(v97 + 32) = v95;
      *(v97 + 40) = v94;
      goto LABEL_12;
    }
  }

  swift_setDeallocating();
  sub_2169FAC80();
  v130 = v91;
  sub_216983738(293);
  v100 = OUTLINED_FUNCTION_90();
  __swift_instantiateConcreteTypeFromMangledNameV2(v100, v101);
  OUTLINED_FUNCTION_49_7(&qword_280E29E38);
  v102 = sub_21700E454();
  v104 = v103;

  OUTLINED_FUNCTION_0_26();
  v105 = v20;
  v106 = v128;
  sub_2167C465C(v105, v128);
  v107 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v108 = (v106 + v107[5]);
  v110 = v126;
  v109 = v127;
  *v108 = v69;
  v108[1] = v109;
  v111 = (v106 + v107[6]);
  v112 = v125;
  *v111 = v110;
  v111[1] = v112;
  v113 = (v106 + v107[7]);
  *v113 = v102;
  v113[1] = v104;
  *(v106 + v107[8]) = 1;
  OUTLINED_FUNCTION_26();
}

void sub_2167C1A20()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_86_3();
  v4 = OUTLINED_FUNCTION_69();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_40_5();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_34_9();
  sub_21700C4B4();
  OUTLINED_FUNCTION_10_8();
  if (v11)
  {
    sub_21700C8F4();
    OUTLINED_FUNCTION_10_8();
    if (!v11)
    {
      sub_216697664(v3, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v12 = OUTLINED_FUNCTION_36_3();
    v13(v12);
    OUTLINED_FUNCTION_35_7();
  }

  OUTLINED_FUNCTION_99_4();
  sub_21700C414();
  v14 = OUTLINED_FUNCTION_98();
  sub_2167C5834(v14, v15, v16, v17);
  *(v1 + *(v9 + 20)) = xmmword_217016F00;
  OUTLINED_FUNCTION_27_6(*(v9 + 24));
  sub_21700C804();
  OUTLINED_FUNCTION_68_0();
  sub_21700C774();
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_0_26();
  v18 = OUTLINED_FUNCTION_74_0();
  sub_2167C465C(v18, v19);
  OUTLINED_FUNCTION_9_17();
  *v20 = v9;
  v20[1] = v2;
  OUTLINED_FUNCTION_32_7();
  *v21 = v0;
  v21[1] = v3;
  OUTLINED_FUNCTION_3_28(v22);
  OUTLINED_FUNCTION_26();
}

void sub_2167C1BB4()
{
  OUTLINED_FUNCTION_49();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0, &unk_217017140);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_77();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v14 = OUTLINED_FUNCTION_42_9();
  sub_216683A80(v14, v15, v16, &unk_21701A670);
  v17 = sub_21700C4B4();
  OUTLINED_FUNCTION_31_2(v2, 1, v17);
  if (v18)
  {
    sub_21700C974();
    OUTLINED_FUNCTION_31_2(v2, 1, v17);
    if (!v18)
    {
      sub_216697664(v2, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v19 = OUTLINED_FUNCTION_69();
    v20(v19);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  }

  sub_21700C404();
  v24 = OUTLINED_FUNCTION_97();
  sub_2167C5834(v24, v25, v26, v27);
  *(v0 + v12[5]) = xmmword_217016F10;
  *(v0 + v12[6]) = 0x3FF0000000000000;
  *(v0 + v12[7]) = 0x4024000000000000;
  *(v0 + v12[8]) = 0;
  v28 = sub_21700C964();
  v30 = v29;
  sub_21700C934();
  v31 = sub_21700BEF4();
  OUTLINED_FUNCTION_31_2(v1, 1, v31);
  if (v18)
  {
    sub_216697664(v1, &qword_27CAB74E0, &unk_217017140);
    goto LABEL_9;
  }

  v32 = sub_21700BED4();
  v34 = v33;
  OUTLINED_FUNCTION_50();
  (*(v35 + 8))(v1, v31);
  if (!v34)
  {
LABEL_9:
    sub_21700C934();
    OUTLINED_FUNCTION_31_2(v7, 1, v31);
    if (v18)
    {
      sub_216697664(v7, &qword_27CAB74E0, &unk_217017140);
    }

    else
    {
      v32 = sub_21700BEE4();
      v34 = v36;
      OUTLINED_FUNCTION_50();
      (*(v37 + 8))(v7, v31);
      if (v34)
      {

        goto LABEL_15;
      }
    }

    v32 = sub_21700C984();
    v34 = v38;
    swift_bridgeObjectRelease_n();
  }

LABEL_15:
  OUTLINED_FUNCTION_0_26();
  v39 = OUTLINED_FUNCTION_82_1();
  sub_2167C465C(v39, v40);
  OUTLINED_FUNCTION_9_17();
  *v41 = v28;
  v41[1] = v30;
  OUTLINED_FUNCTION_32_7();
  *v42 = v32;
  v42[1] = v34;
  OUTLINED_FUNCTION_3_28(v43);
  OUTLINED_FUNCTION_26();
}

void sub_2167C1F40()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_8_1();
  v7 = sub_217006274();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_16();
  v9 = sub_21700E4C4();
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v11 = OUTLINED_FUNCTION_71();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v18 = OUTLINED_FUNCTION_42_9();
  sub_216683A80(v18, v19, v20, &unk_21701A670);
  v21 = sub_21700C4B4();
  OUTLINED_FUNCTION_15_6(v6);
  if (v22)
  {
    sub_21700BE94();
    OUTLINED_FUNCTION_15_6(v6);
    if (!v22)
    {
      sub_216697664(v6, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v23 = OUTLINED_FUNCTION_72_3();
    v24(v23);
    v25 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v21);
  }

  sub_21700C404();
  sub_2167C5834(v5, v4, &qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_85_1(*(v16 + 20), xmmword_217016F20);
  *(v4 + v28) = 0x4014000000000000;
  *(v4 + *(v16 + 32)) = 1;
  sub_21700BE84();
  OUTLINED_FUNCTION_83_3();
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_55_5();
  sub_21700E584();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_0_26();
  v29 = OUTLINED_FUNCTION_82_1();
  sub_2167C465C(v29, v30);
  OUTLINED_FUNCTION_9_17();
  *v31 = v1;
  v31[1] = v16;
  OUTLINED_FUNCTION_32_7();
  *v32 = v2;
  v32[1] = v3;
  OUTLINED_FUNCTION_6_19(v33);
  *(v0 + v34) = 1;
  OUTLINED_FUNCTION_26();
}

void sub_2167C21B4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_86_3();
  v4 = OUTLINED_FUNCTION_69();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_40_5();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_34_9();
  sub_21700C4B4();
  OUTLINED_FUNCTION_10_8();
  if (v11)
  {
    sub_217006FC4();
    OUTLINED_FUNCTION_10_8();
    if (!v11)
    {
      sub_216697664(v3, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v12 = OUTLINED_FUNCTION_36_3();
    v13(v12);
    OUTLINED_FUNCTION_35_7();
  }

  v14 = sub_217006FA4();
  v16 = v15;
  OUTLINED_FUNCTION_99_4();
  sub_21700C404();
  v17 = OUTLINED_FUNCTION_98();
  sub_2167C5834(v17, v18, v19, v20);
  v21 = (v1 + v9[5]);
  *v21 = v14;
  v21[1] = v16;
  *(v1 + v9[6]) = 0x3FF0000000000000;
  *(v1 + v9[7]) = 0x4014000000000000;
  *(v1 + v9[8]) = 1;
  sub_217006FA4();
  OUTLINED_FUNCTION_68_0();
  v22 = sub_217006FB4();
  v23 = v22;
  if (v24)
  {
    MEMORY[0x21CE9F490](v22);

    v23 = 64;
    v25 = 0xE100000000000000;
  }

  else
  {
    v25 = 0;
  }

  OUTLINED_FUNCTION_0_26();
  v26 = OUTLINED_FUNCTION_74_0();
  sub_2167C465C(v26, v27);
  OUTLINED_FUNCTION_9_17();
  *v28 = v9;
  v28[1] = v2;
  OUTLINED_FUNCTION_32_7();
  *v29 = v23;
  v29[1] = v25;
  OUTLINED_FUNCTION_6_19(v30);
  *(v0 + v31) = 1;
  OUTLINED_FUNCTION_26();
}

void sub_2167C23A4()
{
  OUTLINED_FUNCTION_49();
  v83 = v3;
  v74 = sub_2170060D4();
  OUTLINED_FUNCTION_1();
  v73 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v6);
  sub_217006104();
  OUTLINED_FUNCTION_1();
  v75 = v8;
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  v72 = v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_75_2();
  sub_217005D84();
  OUTLINED_FUNCTION_1();
  v77 = v14;
  v78 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v17 = v16 - v15;
  v18 = sub_217006274();
  v19 = OUTLINED_FUNCTION_36(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F0, &unk_217017150);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v24);
  v26 = v71 - v25;
  v27 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  v28 = (v27 - 8);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_5_16();
  sub_21700C044();
  sub_21700C404();
  *(v0 + v28[7]) = xmmword_217016ED0;
  *(v0 + v28[8]) = 0x3FF0000000000000;
  *(v0 + v28[9]) = 0x4024000000000000;
  *(v0 + v28[10]) = 0;
  v29 = sub_21700C014();
  v81 = v30;
  v82 = v29;
  v31 = sub_21700BF64();
  v79 = v32;
  v80 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228, &unk_217029EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = sub_21700BF54();
  *(inited + 40) = v34;
  v35 = sub_21700BF14();
  if ((v36 & 1) == 0)
  {
    v84 = v35;
    sub_217006254();
    sub_2167C40C4();
    sub_217005CE4();
    sub_217005D74();
    MEMORY[0x21CE96B10](v17, v20);
    (*(v77 + 8))(v17, v78);
    v40 = *(v22 + 8);
    v40(v2, v20);
    OUTLINED_FUNCTION_53_5(&qword_27CAB7510, &qword_27CAB74F0, &unk_217017150);
    OUTLINED_FUNCTION_89_4();
    sub_21700F1D4();
    v40(v26, v20);
    goto LABEL_6;
  }

  sub_21700BF94();
  v37 = sub_2170061E4();
  v38 = OUTLINED_FUNCTION_31_2(v1, 1, v37);
  if (!v39)
  {
    v41 = v71[0];
    MEMORY[0x21CE96670](v38);
    OUTLINED_FUNCTION_94_0();
    sub_2170060C4();
    v42 = v72;
    sub_217006084();
    (*(v73 + 8))(v26, v74);
    v43 = v76;
    v44 = *(v75 + 8);
    v44(v41, v76);
    OUTLINED_FUNCTION_48_5();
    sub_2167C403C(v45, v46, MEMORY[0x277CC9420]);
    sub_2170061C4();
    v44(v42, v43);
    OUTLINED_FUNCTION_50();
    (*(v47 + 8))(v1, v37);
LABEL_6:
    v48 = v86;
    *(inited + 48) = v85;
    *(inited + 56) = v48;
    goto LABEL_7;
  }

  sub_216697664(v1, &qword_27CAB74E8, &qword_217030A40);
  *(inited + 48) = 0;
  *(inited + 56) = 0;
LABEL_7:
  v49 = 0;
  v50 = MEMORY[0x277D84F90];
LABEL_8:
  v51 = (inited + 40 + 16 * v49);
  while (++v49 != 3)
  {
    v52 = v51 + 2;
    v53 = *v51;
    v51 += 2;
    if (v53)
    {
      v54 = *(v52 - 3);
      sub_21700DF14();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21693776C();
        v50 = v57;
      }

      v55 = *(v50 + 16);
      if (v55 >= *(v50 + 24) >> 1)
      {
        sub_21693776C();
        v50 = v58;
      }

      *(v50 + 16) = v55 + 1;
      v56 = v50 + 16 * v55;
      *(v56 + 32) = v54;
      *(v56 + 40) = v53;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_2169FAC80();
  v85 = v50;
  sub_216983738(293);
  OUTLINED_FUNCTION_68_0();
  v59 = OUTLINED_FUNCTION_90();
  __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
  OUTLINED_FUNCTION_49_7(&qword_280E29E38);
  v61 = sub_21700E454();
  v63 = v62;

  OUTLINED_FUNCTION_0_26();
  v64 = v83;
  sub_2167C465C(v0, v83);
  OUTLINED_FUNCTION_9_17();
  v65 = v81;
  *v66 = v82;
  v66[1] = v65;
  OUTLINED_FUNCTION_32_7();
  v67 = v79;
  *v68 = v80;
  v68[1] = v67;
  v70 = (v64 + *(v69 + 28));
  *v70 = v61;
  v70[1] = v63;
  *(v64 + *(v69 + 32)) = 0;
  OUTLINED_FUNCTION_26();
}

void sub_2167C2A48()
{
  OUTLINED_FUNCTION_49();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0, &unk_217017140);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_79_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_56_2();
  v9 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v11 = OUTLINED_FUNCTION_114_0();
  sub_216683A80(v11, v12, &qword_27CABF770, &unk_21701A670);
  v13 = sub_21700C4B4();
  OUTLINED_FUNCTION_15_6(v3);
  if (v14)
  {
    sub_21700C634();
    OUTLINED_FUNCTION_15_6(v3);
    if (!v14)
    {
      sub_216697664(v3, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v15 + 32))(v2, v3, v13);
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v13);
  }

  sub_21700C414();
  v19 = OUTLINED_FUNCTION_52_3();
  sub_2167C5834(v19, v20, v21, v22);
  *(v1 + v9[5]) = xmmword_217016F10;
  *(v1 + v9[6]) = 0x3FF0000000000000;
  *(v1 + v9[7]) = 0x4024000000000000;
  *(v1 + v9[8]) = 0;
  v23 = sub_21700C624();
  v25 = v24;
  v26 = sub_21700C5E4();
  if (v27)
  {
    v28 = v26;
    v29 = v27;
  }

  else
  {
    sub_21700C5D4();
    v30 = sub_21700BEF4();
    OUTLINED_FUNCTION_31_2(v0, 1, v30);
    if (v14)
    {
      sub_216697664(v0, &qword_27CAB74E0, &unk_217017140);
      v28 = 0;
      v29 = 0;
    }

    else
    {
      v28 = sub_21700BEE4();
      v29 = v31;
      OUTLINED_FUNCTION_50();
      (*(v32 + 8))(v0, v30);
    }
  }

  v33 = OUTLINED_FUNCTION_92_0();
  sub_2167C465C(v33, v34);
  OUTLINED_FUNCTION_9_17();
  *v35 = v23;
  v35[1] = v25;
  OUTLINED_FUNCTION_32_7();
  *v36 = v28;
  v36[1] = v29;
  OUTLINED_FUNCTION_3_28(v37);
  OUTLINED_FUNCTION_26();
}

void sub_2167C2D10()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_86_3();
  v4 = OUTLINED_FUNCTION_69();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_40_5();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_34_9();
  sub_21700C4B4();
  OUTLINED_FUNCTION_10_8();
  if (v11)
  {
    sub_2170073A4();
    OUTLINED_FUNCTION_10_8();
    if (!v11)
    {
      sub_216697664(v3, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v12 = OUTLINED_FUNCTION_36_3();
    v13(v12);
    OUTLINED_FUNCTION_35_7();
  }

  OUTLINED_FUNCTION_99_4();
  sub_21700C404();
  v14 = OUTLINED_FUNCTION_98();
  sub_2167C5834(v14, v15, v16, v17);
  *(v1 + *(v9 + 20)) = xmmword_217016EB0;
  OUTLINED_FUNCTION_27_6(*(v9 + 24));
  sub_217007394();
  OUTLINED_FUNCTION_68_0();
  sub_2170073B4();
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_0_26();
  v18 = OUTLINED_FUNCTION_74_0();
  sub_2167C465C(v18, v19);
  OUTLINED_FUNCTION_9_17();
  *v20 = v9;
  v20[1] = v2;
  OUTLINED_FUNCTION_32_7();
  *v21 = v0;
  v21[1] = v3;
  OUTLINED_FUNCTION_3_28(v22);
  OUTLINED_FUNCTION_26();
}

void sub_2167C2EB0()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_8_1();
  v6 = sub_217006274();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_16();
  v8 = sub_21700E4C4();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22_0();
  v10 = OUTLINED_FUNCTION_71();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v17 = OUTLINED_FUNCTION_42_9();
  sub_216683A80(v17, v18, v19, &unk_21701A670);
  v20 = sub_21700C4B4();
  OUTLINED_FUNCTION_15_6(v5);
  if (v21)
  {
    sub_217007304();
    OUTLINED_FUNCTION_15_6(v5);
    if (!v21)
    {
      sub_216697664(v5, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v22 = OUTLINED_FUNCTION_72_3();
    v23(v22);
    v24 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v20);
  }

  sub_21700C404();
  sub_2167C5834(v4, v3, &qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_85_1(*(v15 + 20), xmmword_217016EB0);
  *(v3 + v27) = 0x4024000000000000;
  *(v3 + *(v15 + 32)) = 0;
  sub_217007314();
  OUTLINED_FUNCTION_83_3();
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_55_5();
  sub_21700E584();
  OUTLINED_FUNCTION_98_0();
  OUTLINED_FUNCTION_0_26();
  v28 = OUTLINED_FUNCTION_82_1();
  sub_2167C465C(v28, v29);
  OUTLINED_FUNCTION_9_17();
  *v30 = v0;
  v30[1] = v15;
  OUTLINED_FUNCTION_32_7();
  *v31 = v1;
  v31[1] = v2;
  OUTLINED_FUNCTION_3_28(v32);
  OUTLINED_FUNCTION_26();
}

void sub_2167C3114()
{
  OUTLINED_FUNCTION_49();
  v4 = v3;
  OUTLINED_FUNCTION_8_1();
  v5 = sub_217006274();
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_16();
  v7 = sub_21700E4C4();
  v8 = OUTLINED_FUNCTION_36(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v9 = OUTLINED_FUNCTION_71();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_38_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_0();
  sub_216683A80(v4, v2, &qword_27CABF770, &unk_21701A670);
  v16 = sub_21700C4B4();
  OUTLINED_FUNCTION_15_6(v2);
  if (v17)
  {
    sub_217007244();
    OUTLINED_FUNCTION_15_6(v2);
    if (!v17)
    {
      sub_216697664(v2, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v18 = OUTLINED_FUNCTION_72_3();
    v19(v18);
    v20 = OUTLINED_FUNCTION_33_6();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  }

  sub_21700C404();
  sub_2167C5834(v1, v0, &qword_27CABF770, &unk_21701A670);
  *(v0 + v14[5]) = xmmword_217016EB0;
  *(v0 + v14[6]) = 0x3FF0000000000000;
  *(v0 + v14[7]) = 0x4024000000000000;
  *(v0 + v14[8]) = 0;
  v23 = sub_217007234();
  v25 = v24;
  sub_21700E4B4();
  sub_217006264();
  OUTLINED_FUNCTION_55_5();
  v26 = sub_21700E584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_217013DA0;
  v28 = sub_2170071E4();
  v29 = MEMORY[0x277D83C10];
  *(v27 + 56) = MEMORY[0x277D83B88];
  *(v27 + 64) = v29;
  *(v27 + 32) = v28;
  sub_21700E4E4();
  OUTLINED_FUNCTION_84_1();

  OUTLINED_FUNCTION_0_26();
  v30 = OUTLINED_FUNCTION_92_0();
  sub_2167C465C(v30, v31);
  OUTLINED_FUNCTION_9_17();
  *v32 = v23;
  v32[1] = v25;
  OUTLINED_FUNCTION_32_7();
  *v33 = v4;
  v33[1] = v26;
  OUTLINED_FUNCTION_3_28(v34);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2167C341C@<X0>(uint64_t a1@<X8>)
{
  sub_217007044();
  OUTLINED_FUNCTION_78_4();
  OUTLINED_FUNCTION_16_13(*(v1 + 20), xmmword_217016ED0);
  sub_217007034();
  OUTLINED_FUNCTION_98_0();
  v4 = sub_217006FF4();
  v6 = v5;
  OUTLINED_FUNCTION_9_17();
  *v7 = v1;
  v7[1] = v2;
  OUTLINED_FUNCTION_32_7();
  *v8 = v4;
  v8[1] = v6;
  result = OUTLINED_FUNCTION_6_19(v9);
  *(a1 + v11) = 0;
  return result;
}

void sub_2167C3490()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_86_3();
  v4 = OUTLINED_FUNCTION_69();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_40_5();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_34_9();
  sub_21700C4B4();
  OUTLINED_FUNCTION_10_8();
  if (v11)
  {
    sub_2170070D4();
    OUTLINED_FUNCTION_10_8();
    if (!v11)
    {
      sub_216697664(v3, &qword_27CABF770, &unk_21701A670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50();
    v12 = OUTLINED_FUNCTION_36_3();
    v13(v12);
    OUTLINED_FUNCTION_35_7();
  }

  OUTLINED_FUNCTION_99_4();
  sub_21700C404();
  v14 = OUTLINED_FUNCTION_98();
  sub_2167C5834(v14, v15, v16, v17);
  *(v1 + *(v9 + 20)) = xmmword_217016EB0;
  OUTLINED_FUNCTION_27_6(*(v9 + 24));
  sub_2170070C4();
  OUTLINED_FUNCTION_68_0();
  sub_217007074();
  OUTLINED_FUNCTION_83_3();
  OUTLINED_FUNCTION_0_26();
  v18 = OUTLINED_FUNCTION_74_0();
  sub_2167C465C(v18, v19);
  OUTLINED_FUNCTION_9_17();
  *v20 = v9;
  v20[1] = v2;
  OUTLINED_FUNCTION_32_7();
  *v21 = v0;
  v21[1] = v3;
  OUTLINED_FUNCTION_3_28(v22);
  OUTLINED_FUNCTION_26();
}

int *sub_2167C3630@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  sub_21700C404();
  *(a1 + v3[5]) = xmmword_217016ED0;
  *(a1 + v3[6]) = 0x3FF0000000000000;
  *(a1 + v3[7]) = 0x4024000000000000;
  *(a1 + v3[8]) = 0;
  result = type metadata accessor for ContextMenuPreview.ViewModel(0);
  v5 = (a1 + result[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + result[6]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + result[7]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + result[8]) = 1;
  return result;
}

uint64_t sub_2167C36F4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB7490);
  __swift_project_value_buffer(v0, qword_27CAB7490);
  return sub_217007C94();
}

void sub_2167C3788()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v87 = v4;
  v88 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_6_0();
  v86 = v5;
  OUTLINED_FUNCTION_4_1();
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v84 = v7;
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v83 = v8;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v90 = v10;
  v91 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v89 = v11;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_0();
  v92 = v13;
  OUTLINED_FUNCTION_4_1();
  v14 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v93 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  OUTLINED_FUNCTION_36(v20);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_79_0();
  v22 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700C814();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7();
  v35 = v34 - v33;
  (*(v31 + 16))(v34 - v33, v2, v29);
  v36 = OUTLINED_FUNCTION_52_3();
  v38 = v37(v36);
  if (v38 == *MEMORY[0x277D2B408])
  {
    v39 = OUTLINED_FUNCTION_26_10();
    v40(v39);
    v41 = OUTLINED_FUNCTION_90();
    v42(v41);
    v43 = sub_21700C4B4();
    OUTLINED_FUNCTION_22_16(v43);
    OUTLINED_FUNCTION_20_10();
    sub_2167C0FF4(v1, v44, MEMORY[0x277D2A7A8], v45, 1.77777778);
    sub_216697664(v1, &qword_27CABF770, &unk_21701A670);
    (*(v24 + 8))(v28, v22);
LABEL_14:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v38 == *MEMORY[0x277D2B410])
  {
    v46 = OUTLINED_FUNCTION_26_10();
    v47(v46);
    (*(v93 + 32))(v19, v35, v14);
    v48 = sub_21700C4B4();
    OUTLINED_FUNCTION_19_13(v48);
    sub_2167C1220(v1, v49, v50, v51, v52, v53, v54, v55, v82, v2, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92);
    sub_216697664(v1, &qword_27CABF770, &unk_21701A670);
    v56 = OUTLINED_FUNCTION_97();
    v57(v56);
    goto LABEL_14;
  }

  if (v38 == *MEMORY[0x277D2B428])
  {
    v58 = OUTLINED_FUNCTION_26_10();
    v59(v58);
    v60 = OUTLINED_FUNCTION_28_12();
    v61(v60);
    v62 = sub_21700C4B4();
    OUTLINED_FUNCTION_19_13(v62);
    sub_2167C23A4();
LABEL_13:
    sub_216697664(v1, &qword_27CABF770, &unk_21701A670);
    v79 = OUTLINED_FUNCTION_82_1();
    v80(v79);
    goto LABEL_14;
  }

  if (v38 == *MEMORY[0x277D2B430])
  {
    v63 = OUTLINED_FUNCTION_26_10();
    v64(v63);
    v65 = OUTLINED_FUNCTION_28_12();
    v66(v65);
    v67 = sub_21700C4B4();
    OUTLINED_FUNCTION_19_13(v67);
    sub_2167C2D10();
    goto LABEL_13;
  }

  if (v38 == *MEMORY[0x277D2B418])
  {
    v68 = OUTLINED_FUNCTION_26_10();
    v69(v68);
    v70 = OUTLINED_FUNCTION_28_12();
    v71(v70);
    v72 = sub_21700C4B4();
    OUTLINED_FUNCTION_19_13(v72);
    sub_2167C341C(v73);
    goto LABEL_13;
  }

  if (v38 == *MEMORY[0x277D2B420])
  {
    v74 = OUTLINED_FUNCTION_26_10();
    v75(v74);
    v76 = OUTLINED_FUNCTION_28_12();
    v77(v76);
    v78 = sub_21700C4B4();
    OUTLINED_FUNCTION_19_13(v78);
    sub_2167C3490();
    goto LABEL_13;
  }

  sub_21700F3B4();

  sub_2167C403C(&qword_27CAB7520, MEMORY[0x277D2B440], MEMORY[0x277D2B448]);
  v81 = sub_21700F784();
  MEMORY[0x21CE9F490](v81);

  sub_21700F584();
  __break(1u);
}

uint64_t sub_2167C3F6C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2167C3FC4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2167C403C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2167C40C4()
{
  result = qword_27CAB7508;
  if (!qword_27CAB7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7508);
  }

  return result;
}

void sub_2167C4140(uint64_t a1)
{
  sub_2167C4520(319, &qword_280E2A390, MEMORY[0x277CD8460], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_21700C444();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2167C4240(uint64_t a1)
{
  type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(319);
  if (v1 <= 0x3F)
  {
    sub_216688154();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LayoutStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_2167C43D4(uint64_t a1)
{
  sub_2167C4520(319, qword_280E3F1B8, type metadata accessor for ContextMenuPreview.ViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2167C4584(319);
    if (v2 <= 0x3F)
    {
      sub_2167C4520(319, &qword_280E2A390, MEMORY[0x277CD8460], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2167C4520(319, &unk_280E2A3A0, MEMORY[0x277D2B220], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2167C4520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2167C4584(uint64_t a1)
{
  if (!qword_280E2A428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB74C0, &qword_217017120);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2A428);
    }
  }
}

unint64_t sub_2167C45EC()
{
  result = qword_27CAB7538;
  if (!qword_27CAB7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7538);
  }

  return result;
}

uint64_t sub_2167C465C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_110();
  v4(v3);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return a2;
}

uint64_t sub_2167C46B4()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = type metadata accessor for ContextMenuPreview(v2);
  OUTLINED_FUNCTION_36(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_2167BAA30(v5, v0);
}

void sub_2167C4764(uint64_t a1)
{
  sub_2167C4520(319, qword_280E3F1B8, type metadata accessor for ContextMenuPreview.ViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2167C488C(uint64_t a1)
{
  type metadata accessor for ContextMenuPreview.ViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2167C4520(319, &qword_280E2B450, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2167C4988(uint64_t a1)
{
  result = type metadata accessor for ContextMenuPreview.ViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2167C4A34()
{
  result = qword_27CAB7608;
  if (!qword_27CAB7608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75E0, &qword_217017430);
    sub_2167C4AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7608);
  }

  return result;
}

unint64_t sub_2167C4AC0()
{
  result = qword_27CAB7610;
  if (!qword_27CAB7610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D8, &qword_217017428);
    sub_2167C4B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7610);
  }

  return result;
}

unint64_t sub_2167C4B4C()
{
  result = qword_27CAB7618;
  if (!qword_27CAB7618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7600, &qword_217017480);
    sub_2167C4BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7618);
  }

  return result;
}

unint64_t sub_2167C4BD8()
{
  result = qword_27CAB7620;
  if (!qword_27CAB7620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75F8, &qword_217017478);
    sub_2166D9530(&qword_27CAB7628, &qword_27CAB7630, &qword_217017488, MEMORY[0x277CE1198]);
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7620);
  }

  return result;
}

unint64_t sub_2167C4CBC()
{
  result = qword_280E2B1E0;
  if (!qword_280E2B1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7660, &qword_2170189A0);
    sub_2167C4D74();
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1E0);
  }

  return result;
}

unint64_t sub_2167C4D74()
{
  result = qword_280E2A6C0;
  if (!qword_280E2A6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7668, &unk_2170174F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A6C0);
  }

  return result;
}

uint64_t sub_2167C4DF0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_21678817C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_2167C4E34()
{
  result = qword_27CAB7698;
  if (!qword_27CAB7698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7690, &qword_21703B4A0);
    sub_2167C4EEC();
    sub_2166D9530(&qword_27CAB76C8, &qword_27CAB76D0, &qword_217062740, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7698);
  }

  return result;
}

unint64_t sub_2167C4EEC()
{
  result = qword_27CAB76A0;
  if (!qword_27CAB76A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76A8, &unk_217017520);
    sub_2167C4F78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB76A0);
  }

  return result;
}

unint64_t sub_2167C4F78()
{
  result = qword_27CAB76B0;
  if (!qword_27CAB76B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76B8, &qword_217062680);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB76B0);
  }

  return result;
}

unint64_t sub_2167C505C()
{
  result = qword_280E39698;
  if (!qword_280E39698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E39698);
  }

  return result;
}

unint64_t sub_2167C50B0()
{
  result = qword_280E2AF50;
  if (!qword_280E2AF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7680, &unk_21701F610);
    sub_2167C5168();
    sub_2166D9530(&qword_280E382B0, &qword_27CAB76F0, &qword_21701F630, &unk_21705A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF50);
  }

  return result;
}

unint64_t sub_2167C5168()
{
  result = qword_280E2B068;
  if (!qword_280E2B068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76D8, &unk_217017540);
    sub_2167C51F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B068);
  }

  return result;
}

unint64_t sub_2167C51F4()
{
  result = qword_280E2B330;
  if (!qword_280E2B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76E0, &unk_21701F620);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2B398, &qword_27CAB76E8, &unk_217017550, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B330);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  if ((*(v0 + 24) - 1) >= 9)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2167C5324()
{
  result = qword_27CAB7778;
  if (!qword_27CAB7778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7720, &qword_2170175B8);
    sub_2167C53B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7778);
  }

  return result;
}

unint64_t sub_2167C53B0()
{
  result = qword_27CAB7780;
  if (!qword_27CAB7780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7718, &qword_2170175B0);
    sub_2167C543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7780);
  }

  return result;
}

unint64_t sub_2167C543C()
{
  result = qword_27CAB7788;
  if (!qword_27CAB7788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7710, &qword_2170175A8);
    sub_2167C54C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7788);
  }

  return result;
}

unint64_t sub_2167C54C8()
{
  result = qword_27CAB7790;
  if (!qword_27CAB7790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7708, &qword_2170175A0);
    sub_2166D9530(&qword_27CAB7798, &qword_27CAB7700, &qword_217017598, MEMORY[0x277CE1138]);
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7790);
  }

  return result;
}

unint64_t sub_2167C55AC()
{
  result = qword_27CAB77A0;
  if (!qword_27CAB77A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7758, &qword_2170175F0);
    sub_2167C5638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB77A0);
  }

  return result;
}

unint64_t sub_2167C5638()
{
  result = qword_27CAB77A8;
  if (!qword_27CAB77A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7750, &qword_2170175E8);
    sub_2167C56C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB77A8);
  }

  return result;
}

unint64_t sub_2167C56C4()
{
  result = qword_27CAB77B0;
  if (!qword_27CAB77B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7748, &qword_2170175E0);
    sub_2167C5750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB77B0);
  }

  return result;
}

unint64_t sub_2167C5750()
{
  result = qword_27CAB77B8;
  if (!qword_27CAB77B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7740, &qword_2170175D8);
    sub_2166D9530(&qword_27CAB77C0, &qword_27CAB7738, &qword_2170175D0, MEMORY[0x277CE1198]);
    sub_2166D9530(&qword_280E2A6F8, &qword_27CAB7638, &unk_217017490, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB77B8);
  }

  return result;
}

uint64_t sub_2167C5834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_20(a1, a2, a3, a4);
  OUTLINED_FUNCTION_34();
  v5 = OUTLINED_FUNCTION_8();
  v6(v5);
  return v4;
}

unint64_t sub_2167C5880()
{
  result = qword_27CAB7828;
  if (!qword_27CAB7828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7830, &qword_2170176A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7760, &qword_2170175F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7758, &qword_2170175F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0, &qword_217017420);
    sub_2167C55AC();
    sub_2166D9530(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7720, &qword_2170175B8);
    sub_2167C5324();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7828);
  }

  return result;
}

uint64_t sub_2167C5A50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7838, &qword_2170176C8);
  OUTLINED_FUNCTION_1();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x277D85778], v1);
  return sub_21700EAD4();
}

uint64_t sub_2167C5B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_2167C5D08();
  v10 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v9;
  (*(v3 + 32))(&v12[v11], v5, v2);
  sub_21677BBA0();
}

uint64_t sub_2167C5D08()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7848, &qword_2170176F0);
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    sub_217006224();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
    sub_2166A8A94();
    *(v1 + 112) = sub_21700E384();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_2167C5DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_217006224();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v5[6] = *(v8 + 64);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2167C5EA4, a4, 0);
}

uint64_t sub_2167C5EA4()
{
  OUTLINED_FUNCTION_33();
  sub_216A50934(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_2167C5F0C, 0, 0);
}

uint64_t sub_2167C5F0C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  v5 = v0[2];
  (*(v3 + 16))(v1, v2, v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v3 + 32))(v7 + v6, v1, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
  sub_21700EA84();
  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_2167C6054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_217006224();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_21677BBA0();
}

uint64_t sub_2167C6210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2167C6230, a4, 0);
}

uint64_t sub_2167C6230()
{
  OUTLINED_FUNCTION_33();
  sub_216A50D9C();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2167C6288(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  v4 = OUTLINED_FUNCTION_36(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v1;
  *(v9 + 40) = v7;

  sub_21677BBA0();
}

uint64_t sub_2167C6374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](sub_2167C6398, 0, 0);
}

uint64_t sub_2167C6398()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_2167C5D08();
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_2167C6400, v1, 0);
}

uint64_t sub_2167C6400()
{
  OUTLINED_FUNCTION_33();
  sub_21692B704(*(v0 + 32));

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2167C6464()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2167C64A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7840, qword_217028F40);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2167C6580;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_2167C5DCC(v4, v5, v6, v7, v8);
}

uint64_t sub_2167C6580()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2167C666C(uint64_t a1)
{
  v3 = sub_217006224();
  OUTLINED_FUNCTION_36(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_2167C6054(a1, v5, v6);
}

uint64_t sub_2167C66DC()
{
  v0 = sub_217006224();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_7_11();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2167C6858;
  v4 = OUTLINED_FUNCTION_1_12();

  return sub_2167C6210(v4, v5, v6, v7, v8);
}

uint64_t sub_2167C67AC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v3[1] = sub_2167C6858;
  v5 = OUTLINED_FUNCTION_1_12();

  return sub_2167C6374(v5, v6, v7, v8, v1);
}

id sub_2167C685C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  result = [v0 setAllowedUnits_];
  qword_27CB22828 = v0;
  return result;
}

id sub_2167C68C0(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v8 = sub_2170062F4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006304();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x277D837D0];
  if ((a4 & 1) != 0 || (v17 = *&a3, *&a3 <= 0.0))
  {
    v39 = 0;
    v44 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    if (v44)
    {
      return v39;
    }

    else
    {
      return 0;
    }
  }

  v55[1] = v15;
  v56 = a2;
  v57 = a1;
  sub_2170062D4();
  v18 = v10 + 104;
  a1 = *(v10 + 104);
  (a1)(v13, *MEMORY[0x277CC99A8], v8);
  sub_2170062A4();
  v55[0] = v19;
  v21 = v20;
  v22 = *(v10 + 8);
  v22(v13, v8);
  if ((v21 & 1) == 0)
  {
    (a1)(v13, *MEMORY[0x277CC99A0], v8);
    sub_2170062A4();
    v24 = v23;
    v18 = v25;
    result = (v22)(v13, v8);
    if ((v18 & 1) == 0)
    {
      v27 = v55[0] * v24;
      if ((v55[0] * v24) >> 64 == (v55[0] * v24) >> 63)
      {
        if ((~a3 & 0x7FF0000000000000) != 0)
        {
          if (*&a3 > -9.22337204e18)
          {
            if (*&a3 < 9.22337204e18)
            {
              if (v27)
              {
                v28 = *&a3;
                if (*&a3 == 0x8000000000000000 && v27 == -1)
                {
                  goto LABEL_54;
                }

                v30 = v28 / v27 * v27;
                if ((v28 / v27 * v27) >> 64 == v30 >> 63)
                {
                  v31 = v28 % v27;
                  if (!__OFSUB__(v28, v30))
                  {
                    if (v55[0])
                    {
                      if (v31 == 0x8000000000000000 && v55[0] == -1)
                      {
                        goto LABEL_55;
                      }

                      v33 = v31 / v55[0];
                      v34 = v31 / v55[0] * v55[0];
                      if ((v33 * v55[0]) >> 64 == v34 >> 63)
                      {
                        v35 = __OFADD__(v30, v34);
                        v36 = v30 + v34;
                        if (!v35)
                        {
                          v35 = __OFSUB__(v28, v36);
                          v37 = v28 - v36;
                          if (!v35)
                          {
                            if (v37 < v55[0] / 2)
                            {
                              goto LABEL_27;
                            }

                            v35 = __OFSUB__(v55[0], v37);
                            v38 = v55[0] - v37;
                            if (!v35)
                            {
                              v17 = *&a3 + v38;
                              goto LABEL_27;
                            }

LABEL_56:
                            __break(1u);
                            return result;
                          }

                          goto LABEL_53;
                        }

LABEL_52:
                        __break(1u);
LABEL_53:
                        __break(1u);
LABEL_54:
                        __break(1u);
LABEL_55:
                        __break(1u);
                        goto LABEL_56;
                      }

LABEL_51:
                      __break(1u);
                      goto LABEL_52;
                    }

LABEL_50:
                    __break(1u);
                    goto LABEL_51;
                  }

LABEL_49:
                  __break(1u);
                  goto LABEL_50;
                }

LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_45;
    }
  }

LABEL_27:
  if (qword_27CAB58B8 != -1)
  {
    swift_once();
  }

  v39 = [qword_27CB22828 stringFromTimeInterval_];
  if (!v39)
  {
    v53 = OUTLINED_FUNCTION_0_27();
    v54(v53);
    v44 = 0;
    OUTLINED_FUNCTION_1_13();
    v16 = MEMORY[0x277D837D0];
    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  v40 = sub_21700E514();
  v42 = v41;

  v62 = v40;
  v63 = v42;
  v60 = 44;
  v61 = 0xE100000000000000;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_2167B2E14();
  a1 = MEMORY[0x277D837D0];
  v39 = sub_21700F1B4();
  v44 = v43;
  v16 = a1;

  v45 = OUTLINED_FUNCTION_0_27();
  v46(v45);
  OUTLINED_FUNCTION_1_13();
  if (v40)
  {
    goto LABEL_34;
  }

LABEL_31:
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    v48 = MEMORY[0x277D83C10];
    *(inited + 56) = MEMORY[0x277D83B88];
    *(inited + 64) = v48;
    *(inited + 32) = a1;
    *(inited + 96) = v16;
    *(inited + 104) = sub_2167C6E08();
    *(inited + 72) = v39;
    *(inited + 80) = v44;
    v49 = 31;
    v50 = inited;
    return sub_216983808(v49, v50);
  }

  if (a1 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    v50 = swift_initStackObject();
    v51 = MEMORY[0x277D83B88];
    *(v50 + 16) = xmmword_217013DA0;
    v52 = MEMORY[0x277D83C10];
    *(v50 + 56) = v51;
    *(v50 + 64) = v52;
    *(v50 + 32) = a1;
    v49 = 20;
    return sub_216983808(v49, v50);
  }

  return 0;
}