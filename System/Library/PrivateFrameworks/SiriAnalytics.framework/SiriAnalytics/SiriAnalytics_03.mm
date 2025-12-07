uint64_t sub_1D98A80FC()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v4 = *(v1 + 1056);
  v5 = *v0;
  *v3 = *v0;

  v6 = swift_task_alloc();
  *(v2 + 1072) = v6;
  *v6 = v5;
  v6[1] = sub_1D98A8248;

  return sub_1D987C088(v4);
}

uint64_t sub_1D98A8248()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D98A8340()
{
  v3 = *(v0 + 992);
  v4 = *(v0 + 984);
  v5 = *(v0 + 960);
  sub_1D98D4378(*(v0 + 1056));

  v6 = *(v0 + 1056);
  OUTLINED_FUNCTION_102();

  v7 = OUTLINED_FUNCTION_92();
  v1(v7);
  v8 = OUTLINED_FUNCTION_49();
  v1(v8);

  v9 = *(v0 + 944);
  v10 = *(v0 + 936);
  OUTLINED_FUNCTION_20();
  if (v10)
  {
    v11 = *(v0 + 912);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_110();
    v2();
    v14 = *(*(v11 + 56) + 8 * v1);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    v15 = OUTLINED_FUNCTION_59();
    v16(v15, v10, v3);
    v17 = OUTLINED_FUNCTION_23_4();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v6);

    v20 = v14;
    v21 = v55;
LABEL_7:
    *(v0 + 944) = v9;
    *(v0 + 936) = v21;
    v22 = OUTLINED_FUNCTION_50();
    sub_1D98AB298(v22, v23);

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
    OUTLINED_FUNCTION_28_2(v24);
    if (v25)
    {
      OUTLINED_FUNCTION_7_7();

      sub_1D992BAC4();
      v26 = OUTLINED_FUNCTION_164();
      OUTLINED_FUNCTION_29_3(v26, &dword_1D9863000, v27, "Process queue");

      v28 = OUTLINED_FUNCTION_49();
      (v6)(v28);

      sub_1D98A8BC4(v54);

      OUTLINED_FUNCTION_5_10();
      v29 = OUTLINED_FUNCTION_26_3();
      v30(v29);

      OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_58();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_107();
    v33 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_17_2(v33);
    OUTLINED_FUNCTION_95();
    v34();
    OUTLINED_FUNCTION_56();

    OUTLINED_FUNCTION_57(0xD00000000000001FLL);
    OUTLINED_FUNCTION_156();

    OUTLINED_FUNCTION_36_2();
    sub_1D986A454(v35, v36, v37, v38, v39, v40);

    v41 = [objc_allocWithZone(MEMORY[0x1E69CED38]) init];
    OUTLINED_FUNCTION_155(v41, sel_setPreProcessorInfo_);

    if ([v10 preProcessorInfo])
    {
      [v41 setPreProcessorTriggerReason_];
    }

    sub_1D992AE04();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_159();
    sub_1D992ADC4();
    v43 = OUTLINED_FUNCTION_24_2();
    v45 = v44(v43);
    OUTLINED_FUNCTION_154(v45, sel_setMessageCreationTimeSince1970_);

    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_125(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_6_10(v47);
    OUTLINED_FUNCTION_58();

    sub_1D98E2FA8();
  }

  else
  {
    while (!__OFADD__(v9, 1))
    {
      OUTLINED_FUNCTION_131();
      if (v12 == v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48908, &qword_1D9931E98);
        v50 = OUTLINED_FUNCTION_18_2();
        __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
        v21 = 0;
        goto LABEL_7;
      }

      OUTLINED_FUNCTION_132();
    }

    __break(1u);
  }
}

uint64_t sub_1D98A87A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_143();
  v17 = *(v16 + 440);

  sub_1D98A8BC4(v17);

  OUTLINED_FUNCTION_25_1();
  v18 = OUTLINED_FUNCTION_62();
  v19(v18);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_24();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D98A88B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_143();
  v17 = *(v16 + 440);

  sub_1D98A8BC4(v17);

  OUTLINED_FUNCTION_25_1();
  v18 = OUTLINED_FUNCTION_62();
  v19(v18);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_24();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1D98A89C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D98A89E4, a2, 0);
}

uint64_t sub_1D98A89E4()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 48) = 0;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D98A8A84;
  v2 = OUTLINED_FUNCTION_93(*(v0 + 16));

  return sub_1D990575C(v2, (v0 + 48));
}

uint64_t sub_1D98A8A84()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D98A8BA0, v7, 0);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v8();
  }
}

void *sub_1D98A8BC4(uint64_t a1)
{
  v2 = type metadata accessor for PreprocessorTelemetry(0);
  result = MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8BF440 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED8BFBD1 == 1)
  {
    swift_beginAccess();
    sub_1D98AB648(a1, v5, type metadata accessor for PreprocessorTelemetry);
    sub_1D98A0F54(v5);
    return sub_1D98AB6A4();
  }

  return result;
}

void sub_1D98A8CC8(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + *(type metadata accessor for StagedMessage(0) + 24)) anyEventType] == 8)
  {
    v2 = sub_1D98FCA0C();
    if (v2)
    {
      v3 = v2;
      swift_beginAccess();
      sub_1D9903AC0();
      swift_endAccess();
    }
  }
}

void sub_1D98A8D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PreprocessorCounterKey(0);
  MEMORY[0x1EEE9AC00](*(*(v5 - 8) + 64));
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PreprocessorTelemetry(0);
  swift_projectBox();
  v9 = type metadata accessor for StagedMessage(0);
  v10 = *(a1 + *(v9 + 20));
  if (v10)
  {
    v11 = *(a1 + *(v9 + 24));
    v32 = v10;
    v12 = [v11 unwrap];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1D992AE84();
      v31 = a3;
      v15 = v14;
      v30 = &v28;
      v16 = *(v14 - 8);
      v28 = v8;
      v17 = v16;
      v18 = v16[8];
      MEMORY[0x1EEE9AC00](v16);
      v29 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
      v19 = &v28 - v29;
      sub_1D992B134();
      v20 = [v11 anyEventType];
      v21 = sub_1D992BB44();
      if (v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = v21;
      }

      swift_beginAccess();
      (v17[2])(v7, v19, v15);
      v24 = &v7[*(v5 + 20)];
      *v24 = v20;
      *(v24 + 1) = v23;
      sub_1D9887FAC();
      sub_1D98AB6A4();
      swift_endAccess();
      v25 = v17[1];
      v25(v19, v15);
      MEMORY[0x1EEE9AC00](v30);
      v26 = &v28 - v29;
      sub_1D992B134();
      sub_1D992B154();
      sub_1D98EA244();

      v25(v26, v15);
    }

    else
    {
      v27 = v32;
    }
  }
}

uint64_t sub_1D98A9050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v12;
  v8[12] = a5;
  v8[13] = a7;
  v8[11] = a4;
  type metadata accessor for StagedMessage(0);
  v8[16] = swift_task_alloc();
  type metadata accessor for PreprocessorTelemetry(0);
  v8[17] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1D98A910C, a4, 0);
}

uint64_t sub_1D98A910C()
{
  OUTLINED_FUNCTION_26_2();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  sub_1D992B4E4();
  OUTLINED_FUNCTION_97(v1, (v0 + 2));
  OUTLINED_FUNCTION_97(v3 + 16, (v0 + 5));
  OUTLINED_FUNCTION_97(v2 + 16, (v0 + 8));
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_1D98A9204;
  OUTLINED_FUNCTION_93(v0[16]);

  return sub_1D98A9320();
}

uint64_t sub_1D98A9204()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v2 = v1;
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_17();
  *v5 = v4;

  swift_endAccess();
  swift_endAccess();
  swift_endAccess();
  OUTLINED_FUNCTION_52();
  sub_1D98AB6A4();

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1D98A9320()
{
  OUTLINED_FUNCTION_18();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[16] = v5;
  v1[17] = v6;
  v7 = type metadata accessor for PreprocessorResultCounterKey(0);
  v1[22] = v7;
  OUTLINED_FUNCTION_9(v7);
  v1[23] = OUTLINED_FUNCTION_20();
  v8 = sub_1D992B1E4();
  v1[24] = v8;
  OUTLINED_FUNCTION_23(v8);
  v1[25] = v9;
  v1[26] = OUTLINED_FUNCTION_20();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D98A93F0()
{
  v1 = v0[16];
  v2 = type metadata accessor for StagedMessage(0);
  v3 = v2;
  v4 = *(v1 + *(v2 + 20));
  v0[27] = v4;
  if (v4)
  {
    v5 = *(v1 + *(v2 + 24));
    v0[28] = v5;
    v6 = v4;
    v7 = [v5 unwrap];
    if (!v7 || (v8 = v7, v9 = sub_1D992BB44(), v11 = v10, v8, (v11 & 1) != 0))
    {
      v9 = 0;
    }

    v0[29] = v9;
    v12 = swift_task_alloc();
    v0[30] = v12;
    *v12 = v0;
    v12[1] = sub_1D98A9644;

    return sub_1D98E4E88(v6, v5);
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
      v1 = v0[16];
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001FLL, 0x80000001D9939230);
    [*(v1 + *(v3 + 24)) anyEventType];
    v14 = sub_1D992BAE4();
    MEMORY[0x1DA739C30](v14);

    MEMORY[0x1DA739C30](0xD000000000000029, 0x80000001D9939250);
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    OUTLINED_FUNCTION_162();

    OUTLINED_FUNCTION_25();

    return v15();
  }
}

uint64_t sub_1D98A9644()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_16();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_16();
  *v5 = v4;
  *(v8 + 248) = v6;
  *(v8 + 256) = v7;
  *(v8 + 320) = v9;
  *(v8 + 264) = v0;

  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D98A9770()
{
  v4 = OUTLINED_FUNCTION_35_2();
  sub_1D98AB058(v4, v5, v6);
  v7 = OUTLINED_FUNCTION_35_2();
  v10 = sub_1D98E53EC(v7, v8, v9);
  v11 = OUTLINED_FUNCTION_35_2();
  sub_1D98AB0A8(v11, v12, v13);
  if (v10)
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = *(v0 + 200);
    v170 = *(v0 + 232);
    v171 = *(v0 + 192);
    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_160(v22);
    v23 = [v14 anyEventType];
    sub_1D992B1C4();
    (*(v21 + 16))(v18, v1, v19);
    v24 = v18 + v17[5];
    *v24 = v23;
    *(v24 + 8) = v170;
    (*(v16 + 16))(v18 + v17[6], v15, v171);
    *(v18 + v17[7]) = 0;
    type metadata accessor for PreprocessorTelemetry(0);
    sub_1D98880F0();
    OUTLINED_FUNCTION_2_17();
    sub_1D98AB6A4();
    (*(v16 + 8))(v15, v171);
    (*(v21 + 8))(v1, v19);

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    v25 = *(v0 + 320);
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    v178 = v180;
    v179 = v182;
    MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
    v26 = OUTLINED_FUNCTION_94();
    v28 = sub_1D98E5594(v26, v27, v25);
    if (v29)
    {
      v30 = v29;
    }

    else
    {
      [*(v0 + 224) anyEventType];
      v181 = sub_1D992BAE4();
      v183 = v84;
      MEMORY[0x1DA739C30](0x776F6E6B6E753C2ELL, 0xEA00000000003E6ELL);
      v28 = v181;
      v30 = v183;
    }

    v85 = *(v0 + 216);
    v86 = *(v0 + 320);
    MEMORY[0x1DA739C30](v28, v30);

    MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D9939370);
    v87 = OUTLINED_FUNCTION_94();
    sub_1D98E5708(v87, v88, v86);
    *(v0 + 120) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
    v90 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v90);

    sub_1D986A454(v178, v179, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    v81 = OUTLINED_FUNCTION_94();
    v83 = v86;
    goto LABEL_24;
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 256);
  v34 = *(v0 + 200);
  v33 = *(v0 + 208);
  v35 = *(v0 + 320);
  sub_1D992B1D4();
  v36 = sub_1D98E5A14(v33, v31, v32, v35);
  v38 = v37;
  v40 = v39;
  *(v0 + 272) = v36;
  *(v0 + 280) = v37;
  v43 = *(v34 + 8);
  v42 = v34 + 8;
  v41 = v43;
  *(v0 + 288) = v43;
  *(v0 + 296) = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v44 = OUTLINED_FUNCTION_33();
  v43(v44);
  if (!v36)
  {
LABEL_11:
    OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_146();
    v58 = OUTLINED_FUNCTION_120();
    (v2)(v58);
    if (v42)
    {
      v177 = v36;
      if ((v41 & 1) == 0)
      {
        v120 = *(v0 + 216);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
        OUTLINED_FUNCTION_9(v121);
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_13_0();
        v122 = sub_1D992AE84();
        v123 = *(v122 - 8);
        v124 = OUTLINED_FUNCTION_27();
        v125(v124);
        OUTLINED_FUNCTION_76();
        __swift_storeEnumTagSinglePayload(v126, v127, v128, v122);
        v129 = objc_allocWithZone(sub_1D992B104());
        v130 = v42;
        v131 = v120;
        v132 = v130;
        OUTLINED_FUNCTION_113();
        v175 = v133;
        v134 = sub_1D992B0A4();

        v135 = sub_1D992B0C4();
        if (v135)
        {
          v136 = v135;
          v137 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_160(v137);
          sub_1D98E97BC(v38);
          v138 = OUTLINED_FUNCTION_108();
          v139(v138);

          OUTLINED_FUNCTION_153();
          sub_1D992B0F4();
        }

        OUTLINED_FUNCTION_33_2();
        v140 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_152(v140);
        [v131 anyEventType];
        sub_1D992B1B4();
        v141 = OUTLINED_FUNCTION_136();
        v143 = v142(v141);
        v151 = OUTLINED_FUNCTION_46(v143, v144, v145, v146, v147, v148, v149, v150, v154, v155);
        v152(v151);
        OUTLINED_FUNCTION_150();
        OUTLINED_FUNCTION_148();
        sub_1D98AB0A8(v162, v164, SBYTE4(v159));

        OUTLINED_FUNCTION_2_17();
        sub_1D98AB6A4();
        v153 = OUTLINED_FUNCTION_33();
        v165(v153);
        (*(v38 + 8))(v134, v160);

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_20();

      v167 = v42;
      sub_1D992B134();
      [v162 anyEventType];
      sub_1D992B1B4();
      v59 = OUTLINED_FUNCTION_114();
      v61 = v60(v59);
      v69 = OUTLINED_FUNCTION_54(v61, v62, v63, v64, v65, v66, v67, v68, v154, v155, v156, v157, v158, v159, v160, v162, v164);
      v70(v69);
      *(v41 + *(p_info + 7)) = 0;
      type metadata accessor for PreprocessorTelemetry(0);
      OUTLINED_FUNCTION_149();
      OUTLINED_FUNCTION_2_17();
      sub_1D98AB6A4();
      v169(v33, v42);
      v71 = OUTLINED_FUNCTION_72();
      v72(v71);

      if (qword_1ED8BD6F0 != -1)
      {
        OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
      }

      v73 = *(v0 + 248);
      v173 = *(v0 + 256);
      v74 = *(v0 + 216);
      v75 = *(v0 + 320);
      OUTLINED_FUNCTION_68();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
      v76 = [v167 qualifiedMessageName];
      v77 = sub_1D992B624();
      v79 = v78;

      MEMORY[0x1DA739C30](v77, v79);

      MEMORY[0x1DA739C30](0xD000000000000017, 0x80000001D9939330);
      *(v0 + 104) = v177;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
      v80 = sub_1D992B6A4();
      MEMORY[0x1DA739C30](v80);

      sub_1D986A454(v180, v182, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

      v81 = v73;
      v82 = v173;
      v83 = v75;
    }

    else
    {

      v81 = OUTLINED_FUNCTION_35_2();
    }

LABEL_24:
    sub_1D98AB0A8(v81, v82, v83);
LABEL_25:
    OUTLINED_FUNCTION_162();

    OUTLINED_FUNCTION_25();

    return v119();
  }

  v176 = v41;
  if (v40)
  {
    v160 = *(v0 + 216);
    v162 = *(v0 + 224);
    v164 = *(v0 + 208);
    v165 = *(v0 + 232);
    v45 = *(v0 + 200);
    v46 = *(v0 + 176);
    v2 = *(v0 + 184);
    v166 = *(v0 + 192);
    v47 = sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    v49 = v48;
    v50 = OUTLINED_FUNCTION_20();
    v172 = v38;

    v169 = v36;
    sub_1D992B134();
    v51 = [v162 anyEventType];
    sub_1D992B1D4();
    (*(v49 + 16))(v2, v50, v47);
    v52 = &v2[v46[5]];
    *v52 = v51;
    *(v52 + 1) = v165;
    (*(v45 + 16))(&v2[v46[6]], v164, v166);
    v2[v46[7]] = 0;
    type metadata accessor for PreprocessorTelemetry(0);
    sub_1D98880F0();
    OUTLINED_FUNCTION_2_17();
    sub_1D98AB6A4();
    v176(v164, v166);
    (*(v49 + 8))(v50, v47);
    p_info = SiriAnalyticsUnifiedBiomeStream.info;

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    v33 = qword_1ECB49658;
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    v41 = 0xD00000000000001CLL;
    MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
    v38 = v169;
    v53 = [v169 qualifiedMessageName];
    v54 = sub_1D992B624();
    v56 = v55;

    MEMORY[0x1DA739C30](v54, v56);

    MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D9939350);
    *(v0 + 112) = v172;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
    v57 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v57);

    v36 = v33;
    sub_1D986A454(v180, v182, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    goto LABEL_11;
  }

  v91 = *(v0 + 216);
  v92 = *(v0 + 160);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v93);
  OUTLINED_FUNCTION_20();
  v94 = sub_1D992AE84();
  v95 = *(v94 - 8);
  v96 = OUTLINED_FUNCTION_94();
  v168 = v97;
  v97(v96);
  OUTLINED_FUNCTION_76();
  v174 = v94;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v94);
  objc_allocWithZone(sub_1D992B104());
  v101 = v91;
  v102 = v36;
  v103 = sub_1D992B0A4();
  *(v0 + 304) = v103;

  if (*v92)
  {
    v104 = *(v0 + 160);
    v105 = *(v104 + 40);
    v106 = *(v104 + 8);
    v107 = *(v104 + 24);
    *(v0 + 16) = *v92;
    *(v0 + 24) = v106;
    *(v0 + 40) = v107;
    *(v0 + 56) = v105;
    sub_1D9903C78();
  }

  v108 = *(v0 + 224);
  v109 = *(v0 + 208);
  v110 = *(v0 + 200);
  v161 = *(v0 + 232);
  v163 = *(v0 + 192);
  v111 = *(v0 + 176);
  v112 = *(v0 + 184);
  v113 = swift_task_alloc();
  OUTLINED_FUNCTION_160(v113);
  v114 = [v108 anyEventType];
  sub_1D992B1D4();
  v115 = OUTLINED_FUNCTION_72();
  v168(v115);
  v116 = v112 + v111[5];
  *v116 = v114;
  *(v116 + 8) = v161;
  (*(v110 + 16))(v112 + v111[6], v109, v163);
  *(v112 + v111[7]) = 1;
  type metadata accessor for PreprocessorTelemetry(0);
  sub_1D98880F0();
  OUTLINED_FUNCTION_2_17();
  sub_1D98AB6A4();
  v176(v109, v163);
  (*(v95 + 8))(v95, v174);

  v117 = swift_task_alloc();
  *(v0 + 312) = v117;
  *v117 = v0;
  OUTLINED_FUNCTION_5_8(v117);

  return sub_1D98BF3EC(v103);
}

uint64_t sub_1D98AA52C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98AA624()
{
  v6 = *(v0 + 272);
  v7 = *(v0 + 280);

  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_146();
  v8 = OUTLINED_FUNCTION_120();
  v3(v8);
  if (!v5)
  {

    v31 = OUTLINED_FUNCTION_35_2();
LABEL_7:
    sub_1D98AB0A8(v31, v32, v33);
    goto LABEL_11;
  }

  v84 = v7;
  if (v6)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_20();

    v80 = v5;
    sub_1D992B134();
    [v77 anyEventType];
    sub_1D992B1B4();
    v9 = OUTLINED_FUNCTION_114();
    v11 = v10(v9);
    v19 = OUTLINED_FUNCTION_54(v11, v12, v13, v14, v15, v16, v17, v18, v70, v71, v72, v73, v74, v75, v76, v77, v78);
    v20(v19);
    *(v6 + *(v4 + 28)) = 0;
    type metadata accessor for PreprocessorTelemetry(0);
    OUTLINED_FUNCTION_149();
    OUTLINED_FUNCTION_2_17();
    sub_1D98AB6A4();
    v81(v1, v5);
    v21 = OUTLINED_FUNCTION_72();
    v22(v21);

    if (qword_1ED8BD6F0 != -1)
    {
      OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
    }

    v23 = *(v0 + 248);
    v82 = *(v0 + 256);
    v24 = *(v0 + 216);
    v25 = *(v0 + 320);
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD00000000000001CLL, 0x80000001D9939310);
    v26 = [v80 qualifiedMessageName];
    v27 = sub_1D992B624();
    v29 = v28;

    MEMORY[0x1DA739C30](v27, v29);

    MEMORY[0x1DA739C30](0xD000000000000017, 0x80000001D9939330);
    *(v0 + 104) = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB488F8, &qword_1D9931E78);
    v30 = sub_1D992B6A4();
    MEMORY[0x1DA739C30](v30);

    sub_1D986A454(v85, v86, 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

    v31 = v23;
    v32 = v82;
    v33 = v25;
    goto LABEL_7;
  }

  v34 = *(v0 + 216);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v35);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_13_0();
  v36 = sub_1D992AE84();
  v37 = *(v36 - 8);
  v38 = OUTLINED_FUNCTION_27();
  v39(v38);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v36);
  v43 = objc_allocWithZone(sub_1D992B104());
  v44 = v5;
  v45 = v34;
  v46 = v44;
  OUTLINED_FUNCTION_113();
  v83 = v47;
  v48 = sub_1D992B0A4();

  v49 = sub_1D992B0C4();
  if (v49)
  {
    v50 = v49;
    v51 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_160(v51);
    sub_1D98E97BC(v2);
    v52 = OUTLINED_FUNCTION_108();
    v53(v52);

    OUTLINED_FUNCTION_153();
    sub_1D992B0F4();
  }

  OUTLINED_FUNCTION_33_2();
  v54 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_152(v54);
  [v45 anyEventType];
  sub_1D992B1B4();
  v55 = OUTLINED_FUNCTION_136();
  v57 = v56(v55);
  v65 = OUTLINED_FUNCTION_46(v57, v58, v59, v60, v61, v62, v63, v64, v70, v71);
  v66(v65);
  OUTLINED_FUNCTION_150();
  OUTLINED_FUNCTION_148();
  sub_1D98AB0A8(v77, v78, SBYTE4(v75));

  OUTLINED_FUNCTION_2_17();
  sub_1D98AB6A4();
  v67 = OUTLINED_FUNCTION_33();
  v79(v67);
  (*(v2 + 8))(v48);

LABEL_11:
  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_25();

  return v68();
}

uint64_t sub_1D98AAB3C()
{
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  v1 = v0[33];
  v3 = v0[27];
  v2 = v0[28];
  sub_1D992BD64();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1DA739C30](0xD000000000000022, 0x80000001D99392E0);
  [v2 anyEventType];
  v4 = sub_1D992BAE4();
  MEMORY[0x1DA739C30](v4);

  MEMORY[0x1DA739C30](0x206F742065756420, 0xE800000000000000);
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(v0[8], v0[9], 0xD000000000000062, 0x80000001D9939190, 0xD000000000000058, 0x80000001D9939280);

  OUTLINED_FUNCTION_162();

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D98AACF4()
{
  OUTLINED_FUNCTION_18();
  v0[6] = v1;
  v0[7] = v2;
  v3 = type metadata accessor for StagedMessage(0);
  OUTLINED_FUNCTION_9(v3);
  v0[8] = OUTLINED_FUNCTION_20();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D0, &qword_1D992FB18);
  OUTLINED_FUNCTION_9(v4);
  v0[9] = OUTLINED_FUNCTION_20();
  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D98AAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_134();
  if (qword_1ED8BD6F0 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_1ED8BD6F0);
  }

  v14 = v12[6];
  v13 = v12[7];
  sub_1D98DCECC(0xD00000000000001BLL, 0x80000001D9939170, 0xD000000000000062, 0x80000001D9939190, 0xD00000000000002DLL, 0x80000001D9939200);
  _s28MessageStagingStreamIteratorCMa();
  inited = swift_initStackObject();
  *(inited + 16) = v13;
  *(inited + 24) = 0;

  while (1)
  {
    v16 = v12[9];
    sub_1D987A5E0(v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483D8, &qword_1D992FB20);
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
    {
      break;
    }

    sub_1D98AB308(v12[9] + *(v17 + 48), v12[8], type metadata accessor for StagedMessage);
    v18 = *(v14 + 16);
    if (v18)
    {
      v19 = v14 + 40;
      do
      {
        v20 = v12[8];
        v21 = *(v19 - 8);

        v22 = objc_autoreleasePoolPush();
        v21(v20);

        objc_autoreleasePoolPop(v22);
        v19 += 16;
        --v18;
      }

      while (v18);
    }

    OUTLINED_FUNCTION_52();
    sub_1D98AB6A4();
  }

  swift_setDeallocating();
  sub_1D987A7F4();
  OUTLINED_FUNCTION_0_0();
  swift_deallocClassInstance();

  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_106();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

id *sub_1D98AAF7C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98AB008()
{
  sub_1D98AAF7C();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1D98AB058(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1D98AB0A8(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 0x80) == 0)
  {

    v3 = vars8;
  }
}

unint64_t sub_1D98AB0E4(unint64_t *a1, void *a2, unint64_t *a3, unint64_t *a4)
{
  result = sub_1D9903E98(*a3, a3[1], *a4, a4[1]);
  *a1 = result;
  a1[1] = v7;
  *a2 = v8;
  a2[1] = v9;
  return result;
}

uint64_t sub_1D98AB11C()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5_8(v1);
  v2 = OUTLINED_FUNCTION_27();

  return sub_1D98A89C8(v2, v3);
}

unint64_t sub_1D98AB1B0()
{
  result = qword_1ECB47BF0[0];
  if (!qword_1ECB47BF0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB49160, &qword_1D9934540);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECB47BF0);
  }

  return result;
}

void sub_1D98AB214(uint64_t a1, void *a2)
{
  sub_1D986E35C(0, &qword_1ECB47918, 0x1E69CF400);
  v3 = sub_1D992B7A4();

  [a2 setAnyEventTypeStatistics_];
}

uint64_t sub_1D98AB298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48900, &qword_1D9931E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98AB308(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

unint64_t sub_1D98AB364()
{
  result = qword_1ECB47FA0;
  if (!qword_1ECB47FA0)
  {
    type metadata accessor for Preprocessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47FA0);
  }

  return result;
}

uint64_t sub_1D98AB3B8()
{
  OUTLINED_FUNCTION_134();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F0, &qword_1D992FB38);
  OUTLINED_FUNCTION_23(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1D989EB64;
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_106();

  return sub_1D98A9050(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D98AB518(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D98AB584()
{
  result = qword_1ED8BD8E8;
  if (!qword_1ED8BD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8E8);
  }

  return result;
}

unint64_t sub_1D98AB5CC()
{
  result = qword_1ED8BD688;
  if (!qword_1ED8BD688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB48830, &qword_1D9931B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD688);
  }

  return result;
}

uint64_t sub_1D98AB648(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_1D98AB6A4()
{
  v1 = OUTLINED_FUNCTION_13_0();
  v2(v1);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D98AB6F8()
{
  OUTLINED_FUNCTION_26_2();
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v1 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D98692C4;
  OUTLINED_FUNCTION_129();

  return sub_1D98A350C(v5, v6, v7, v8, v2);
}

_BYTE *storeEnumTagSinglePayload for Preprocessor.Steps(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98AB884()
{
  result = qword_1ECB48910;
  if (!qword_1ECB48910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48910);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1D992B2A4();
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v21 + *(v19 + 20)) = a19;
  *(v21 + *(v19 + 24)) = 0;

  return sub_1D98AB308(v21, v20, type metadata accessor for MonotonicTimestamp);
}

void OUTLINED_FUNCTION_43_0()
{
  v2 = *(v1 + 48);
  *(v0 + 912) = v2;
  *(v0 + 1091) = *(v2 + 32);
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v12 + *(v11 + 20);
  *v13 = v10;
  *(v13 + 8) = a10;
  return v12 + *(v11 + 24);
}

uint64_t OUTLINED_FUNCTION_47()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = sub_1D98AB510;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = v17 + *(v19 + 20);
  *v20 = v18;
  *(v20 + 8) = a17;
  return v17 + *(v19 + 24);
}

uint64_t OUTLINED_FUNCTION_56()
{
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;

  return sub_1D992BD64();
}

uint64_t OUTLINED_FUNCTION_57@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 184) = a1;
  *(v1 + 192) = v2;

  return sub_1D992BF34();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_61()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_73()
{

  return sub_1D992AE84();
}

uint64_t OUTLINED_FUNCTION_74(uint64_t a1)
{
  *(v1 + 800) = a1;
  *(v1 + 1090) = 1;
  *(v1 + 808) = 0u;

  return sub_1D992B4C4();
}

char *OUTLINED_FUNCTION_77(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  a1[2] = a19;
  a1[3] = v20;
  a1[4] = a19;
  return a1 + v19;
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  result = a11;
  *(v16 + v18) = a12;
  *(v16 + v19) = a14;
  *(v16 + v20) = a16;
  *(v16 + v17) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_85(void *a1)
{
  *(v4 + 624) = a1;
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v2;
  a1[6] = v6;
  a1[7] = 0;
  *(v4 + 632) = *(v7 + 120);

  return type metadata accessor for MetadataExtractor();
}

uint64_t OUTLINED_FUNCTION_86()
{
}

uint64_t OUTLINED_FUNCTION_88()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_89()
{
}

uint64_t OUTLINED_FUNCTION_90()
{

  return sub_1D986B804(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_1D986B804(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_97(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_98()
{
  v1[7] = 0;
  v1[8] = 0;
  v1[9] = v0;
  v1[10] = v2;
}

id OUTLINED_FUNCTION_99(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_100()
{

  return sub_1D992B1B4();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_1D98AB518(v1, v0, v5, v4, v3, v2);
}

void OUTLINED_FUNCTION_102()
{
  v2 = *(v0 + 1008);
}

uint64_t OUTLINED_FUNCTION_103()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_104()
{
  v6 = v2[6];
  v5 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  v9 = v2[3];
  v1[2] = v3;
  v1[3] = v9;
  v1[4] = v8;
  v1[5] = v7;
  v1[6] = v6;
  v1[7] = v5;

  return v0;
}

uint64_t OUTLINED_FUNCTION_105()
{
}

uint64_t OUTLINED_FUNCTION_121()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_122(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{

  return swift_retain_n();
}

id OUTLINED_FUNCTION_123(uint64_t a1)
{
  *(v2 + 776) = a1;
  *(v2 + 784) = *(v1 + 128);

  return v3;
}

void OUTLINED_FUNCTION_124()
{

  JUMPOUT(0x1DA739C30);
}

__n128 OUTLINED_FUNCTION_140()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 16) = result;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_144()
{
}

uint64_t OUTLINED_FUNCTION_145()
{

  return sub_1D992B5B4();
}

void *OUTLINED_FUNCTION_146()
{

  return sub_1D98E5A14(v2, v0, v1, v3);
}

uint64_t OUTLINED_FUNCTION_147(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_148()
{

  return sub_1D98880F0();
}

uint64_t OUTLINED_FUNCTION_149()
{

  return sub_1D98880F0();
}

uint64_t OUTLINED_FUNCTION_150()
{
  *(v1 + *(v0 + 28)) = 1;

  return type metadata accessor for PreprocessorTelemetry(0);
}

uint64_t OUTLINED_FUNCTION_151()
{
}

uint64_t OUTLINED_FUNCTION_152(uint64_t a1)
{

  return sub_1D992B134();
}

uint64_t OUTLINED_FUNCTION_153()
{
  *(v1 + 96) = v0;

  return sub_1D992B014();
}

id OUTLINED_FUNCTION_154(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_156()
{

  JUMPOUT(0x1DA739C30);
}

void OUTLINED_FUNCTION_157()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t OUTLINED_FUNCTION_158()
{
  v2 = *(v0 + 272);

  return sub_1D990EA18(v2);
}

uint64_t OUTLINED_FUNCTION_159()
{

  return sub_1D992ADF4();
}

uint64_t OUTLINED_FUNCTION_160(uint64_t a1)
{

  return sub_1D992B134();
}

uint64_t OUTLINED_FUNCTION_161(unint64_t *a1)
{
  v2 = MEMORY[0x1EEE78928];

  return sub_1D9882D14(a1, v2);
}

uint64_t OUTLINED_FUNCTION_162()
{
}

uint64_t OUTLINED_FUNCTION_163()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_164()
{

  return sub_1D992B2B4();
}

id MonotonicTimestamp.write(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MonotonicTimestamp(0);
  [a1 writeUint64:*(v2 + *(v4 + 20)) forTag:1];
  sub_1D992B9F4();
  return [a1 writeUint32:*(v2 + *(v4 + 24)) forTag:3];
}

uint64_t static MonotonicTimestamp.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = type metadata accessor for MonotonicTimestamp(0);
  MEMORY[0x1EEE9AC00](*(*(v4 - 8) + 64));
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v7 + 15));
  v9 = &v27 - v8;
  v10 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(&v27 - v8, 1, 1, v10);
  v45 = 0;
  v46 = 1;
  v48 = 2;
  v41 = &v27 - v8;
  v42 = a1;
  v43 = &v45;
  v44 = &v48;
  sub_1D98ACC4C();
  sub_1D992B964();
  if (!v2)
  {
    v37 = v4;
    v38 = v6;
    v39 = &v27;
    v11 = *(v10 - 8);
    v12 = v11;
    v13 = v11[8];
    MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](&v27);
    v14 = &v27 - v8;
    sub_1D9879FF8(v9, v14);
    OUTLINED_FUNCTION_0_26(v14);
    if (v15)
    {
      sub_1D987625C(v14);
LABEL_9:
      v16 = sub_1D992B484();
      sub_1D98ACFA8(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x1E6999BA8], v16);
      swift_willThrow();
      return sub_1D987625C(v9);
    }

    v35 = v12[4];
    v36 = v12 + 4;
    v35(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v10);
    if (v46 == 1)
    {
      (v12[1])(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      goto LABEL_9;
    }

    v33 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v12;
    if (v48 == 2)
    {
      (v34[1])(v33, v10);
      goto LABEL_9;
    }

    v47 = v48;
    v32 = &v27;
    v31 = v45;
    MEMORY[0x1EEE9AC00](v45);
    v19 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v20 = v33;
    v28 = v34[2];
    v28(&v27 - v19, v33, v10);
    __swift_storeEnumTagSinglePayload(&v27 - v19, 0, 1, v10);
    v30 = &v27;
    MEMORY[0x1EEE9AC00](&v27);
    v21 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = &v27;
    MEMORY[0x1EEE9AC00](&v27);
    v22 = &v27 - v19;
    sub_1D9879FF8(&v27 - v19, &v27 - v19);
    OUTLINED_FUNCTION_0_26(&v27 - v19);
    if (v15)
    {
      v27 = &v27 - v19;
      v24 = v40;
      v25 = v37;
      v26 = v38;
      if (qword_1ECB47FB0 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v10, qword_1ECB496F0);
      v28(v21, v23, v10);
      sub_1D987625C(v27);
      (v34[1])(v33, v10);
      OUTLINED_FUNCTION_0_26(v22);
      if (!v15)
      {
        sub_1D987625C(v22);
      }
    }

    else
    {
      sub_1D987625C(&v27 - v19);
      (v34[1])(v20, v10);
      v35(v21, &v27 - v19, v10);
      v24 = v40;
      v25 = v37;
      v26 = v38;
    }

    v35(v26, v21, v10);
    *(v26 + *(v25 + 20)) = v31;
    *(v26 + *(v25 + 24)) = v47 & 1;
    sub_1D98ACCA0(v26, v24);
  }

  return sub_1D987625C(v9);
}

id sub_1D98ACB2C(_BYTE *a1, uint64_t a2, id a3, uint64_t a4, _BYTE *a5)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v8 = &v12 - v7;
      sub_1D992B9B4();
      return sub_1D98901A0(v8, a2);
    }

    else
    {
      result = [a3 readUint32];
      if (result <= 1u)
      {
        *a5 = result;
      }
    }
  }

  else
  {
    result = [a3 readUint64];
    *a4 = result;
    *(a4 + 8) = 0;
  }

  return result;
}

unint64_t sub_1D98ACC4C()
{
  result = qword_1ECB47D90;
  if (!qword_1ECB47D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D90);
  }

  return result;
}

uint64_t sub_1D98ACCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonotonicTimestamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *_s9ProtoTagsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98ACF54()
{
  result = qword_1ECB48920;
  if (!qword_1ECB48920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48920);
  }

  return result;
}

uint64_t sub_1D98ACFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D98AD038(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    sub_1D98AD290(319, &qword_1ECB47A08, MEMORY[0x1E69CE6A8]);
    if (v2 <= 0x3F)
    {
      sub_1D992B1A4();
      if (v3 <= 0x3F)
      {
        sub_1D9894860(319, &qword_1ECB47890, &qword_1ECB48748, &qword_1D9931430);
        if (v4 <= 0x3F)
        {
          sub_1D992AE04();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D98AD180(uint64_t a1)
{
  sub_1D98AD290(319, &qword_1ED8BF690, MEMORY[0x1EEE788B8]);
  if (v1 <= 0x3F)
  {
    sub_1D9894860(319, &qword_1ECB479B0, &qword_1ECB48740, &qword_1D99313F0);
    if (v2 <= 0x3F)
    {
      sub_1D9894860(319, &qword_1ED8BD8E0, &qword_1ECB48700, &qword_1D9931330);
      if (v3 <= 0x3F)
      {
        sub_1D98AD290(319, &qword_1ECB47A08, MEMORY[0x1E69CE6A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D98AD290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D992BC04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D98AD2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  sub_1D9889410(0x64695F6B636F6C63, 0xE800000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_11();
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = v13 == 4 && (v12 | v11) == 0;
  if (v14)
  {
    goto LABEL_12;
  }

  if (v13 == 3)
  {
    sub_1D987BA38(v11, v12);
  }

  else
  {
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  v201 = v11;
  v202 = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
  if ((OUTLINED_FUNCTION_17_3(v15, v16, v15, MEMORY[0x1E6969088]) & 1) == 0 || (v17 = v204, v204 >> 60 == 15))
  {
LABEL_12:

LABEL_13:
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v4);
  }

  v20 = v203;
  v21 = sub_1D992AE84();
  v200 = v180;
  OUTLINED_FUNCTION_6();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_4();
  v27 = (v25 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v199 = v180;
  OUTLINED_FUNCTION_9(v28);
  OUTLINED_FUNCTION_20_0();
  v197 = v29;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_19_0();
  sub_1D992AD64();
  v31 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v31, v32, v21);
  if (v14)
  {
    sub_1D9866358(v20, v17);

    sub_1D986B804(v11, &qword_1ECB481D0, &qword_1D992F9F0);
LABEL_18:
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v4);
  }

  v195 = v17;
  v196 = v20;
  v198 = v23;
  v35 = *(v23 + 32);
  v34 = (v23 + 32);
  v33 = v35;
  v35(v27, v11, v21);
  if (!*(a1 + 16) || (OUTLINED_FUNCTION_31_4(), OUTLINED_FUNCTION_30_2(), sub_1D9889410(v36, v37), (v38 & 1) == 0))
  {
    sub_1D9866358(v196, v195);

    v57 = OUTLINED_FUNCTION_4_9();
    v58(v57);
    goto LABEL_13;
  }

  v194 = v33;
  v199 = v34;
  OUTLINED_FUNCTION_3_11();
  v39 = OUTLINED_FUNCTION_1_19();
  sub_1D986C8B8(v39, v40, v41);
  v42 = OUTLINED_FUNCTION_1_19();
  v45 = sub_1D98927C4(v42, v43, v44);
  v46 = OUTLINED_FUNCTION_1_19();
  sub_1D986C908(v46, v47, v48);
  v49 = v196;
  v193 = v45;
  if ((v45 & 0x100000000) != 0)
  {
    v59 = OUTLINED_FUNCTION_4_9();
    v60(v59);
    OUTLINED_FUNCTION_18_3();
    goto LABEL_13;
  }

  if (!*(a1 + 16) || (v50 = OUTLINED_FUNCTION_31_4(), sub_1D9889410(v50, v51), (v52 & 1) == 0))
  {
    OUTLINED_FUNCTION_18_3();
    v61 = OUTLINED_FUNCTION_4_9();
    v62(v61);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_3_11();
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  if (v56 == 4 && !(v55 | v54))
  {
    goto LABEL_38;
  }

  if (v56 == 3)
  {
    sub_1D987BA38(v54, v55);
  }

  else
  {
    v54 = 0;
    v55 = 0xF000000000000000;
  }

  v201 = v54;
  v202 = v55;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
  if ((OUTLINED_FUNCTION_17_3(v63, v64, v63, MEMORY[0x1E6969088]) & 1) == 0)
  {
LABEL_38:
    v65 = v198;
    goto LABEL_39;
  }

  v65 = v198;
  if (v204 >> 60 == 15)
  {
LABEL_39:
    (*(v65 + 8))(v27, v21);
    OUTLINED_FUNCTION_18_3();
    goto LABEL_13;
  }

  v192 = v180;
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v180 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_33_3();
  v189 = v69;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_0_27();
  v190 = v70;
  v191 = v71;
  sub_1D992AD64();
  v72 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v72, v73, v21);
  if (v14)
  {
    v74 = OUTLINED_FUNCTION_4_9();
    v75(v74);
    OUTLINED_FUNCTION_8_7(v49, v195);
    sub_1D986B804(v54, &qword_1ECB481D0, &qword_1D992F9F0);
    v18 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v18, 1, v4);
  }

  v186 = v68;
  v187 = v27;
  v188 = v21;
  v194(v68, v54, v21);
  v76 = sub_1D992AE04();
  v185 = v180;
  v189 = v76;
  OUTLINED_FUNCTION_6();
  v184 = v77;
  MEMORY[0x1EEE9AC00](*(v78 + 64));
  OUTLINED_FUNCTION_13();
  v183 = v80 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  OUTLINED_FUNCTION_9(v81);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v82);
  v84 = v180 - v83;
  if (!*(a1 + 16) || (OUTLINED_FUNCTION_16_4(0x61657263u), (v85 & 1) == 0))
  {
    OUTLINED_FUNCTION_8_7(v196, v195);
    v99 = OUTLINED_FUNCTION_14_4();
    (v54)(v99);
    (v54)(v187, a1);
    __swift_storeEnumTagSinglePayload(v84, 1, 1, v189);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_3_11();
  v87 = *v86;
  v88 = OUTLINED_FUNCTION_1_19();
  sub_1D986C8B8(v88, v89, v90);
  v91 = OUTLINED_FUNCTION_1_19();
  sub_1D9892670(v91, v92, v93, v94);
  v95 = OUTLINED_FUNCTION_1_19();
  sub_1D986C908(v95, v96, v97);
  OUTLINED_FUNCTION_19_1(v84, 1, v189);
  if (v14)
  {
    OUTLINED_FUNCTION_8_7(v196, v195);
    v98 = OUTLINED_FUNCTION_14_4();
    v87(v98);
    (v87)(v187, a1);
LABEL_46:
    sub_1D986B804(v84, &qword_1ECB48710, &qword_1D9931340);
    goto LABEL_18;
  }

  v100 = v184;
  v101 = v183;
  v102 = v189;
  (*(v184 + 32))(v183, v84, v189);
  v104 = v198 + 16;
  v103 = *(v198 + 16);
  v105 = v188;
  v103(v8, v187, v188);
  (*(v100 + 16))(v8 + v4[8], v101, v102);
  OUTLINED_FUNCTION_13_3();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_0_27();
  v182 = v104;
  v181 = v103;
  v103(v102, v186, v105);
  v107 = sub_1D992B1A4();
  v108 = objc_allocWithZone(v107);
  *(v8 + v4[6]) = sub_1D992B184();
  if (*(a1 + 16))
  {
    sub_1D9889410(0xD000000000000018, 0x80000001D99368D0);
    if (v109)
    {
      OUTLINED_FUNCTION_3_11();
      v110 = OUTLINED_FUNCTION_1_19();
      sub_1D986C8B8(v110, v111, v112);
      v113 = OUTLINED_FUNCTION_1_19();
      v116 = sub_1D98927C4(v113, v114, v115);
      v117 = OUTLINED_FUNCTION_1_19();
      sub_1D986C908(v117, v118, v119);
      if ((v116 & 0x100000000) == 0)
      {
        if (*(a1 + 16))
        {
          sub_1D9889410(0xD000000000000011, 0x80000001D99368F0);
          if (v120)
          {
            OUTLINED_FUNCTION_3_11();
            v122 = *v121;
            v123 = *(v121 + 8);
            v124 = *(v121 + 16);
            if (v124 != 4 || v123 | v122)
            {
              if (v124 == 3)
              {
                sub_1D987BA38(v122, v123);
              }

              else
              {
                v122 = 0;
                v123 = 0xF000000000000000;
              }

              v201 = v122;
              v202 = v123;
              v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48930, &unk_1D9932130);
              if (OUTLINED_FUNCTION_17_3(v125, v126, v125, MEMORY[0x1E6969088]))
              {
                v127 = v204;
                if (v204 >> 60 != 15)
                {
                  v193 = v180;
                  OUTLINED_FUNCTION_13_3();
                  MEMORY[0x1EEE9AC00](v128);
                  v130 = (v129 + 15) & 0xFFFFFFFFFFFFFFF0;
                  v131 = v180 - v130;
                  OUTLINED_FUNCTION_33_3();
                  v180[1] = v132;
                  MEMORY[0x1EEE9AC00](v132);
                  OUTLINED_FUNCTION_0_27();
                  v197 = v133;
                  sub_1D992AD64();
                  v134 = OUTLINED_FUNCTION_10();
                  OUTLINED_FUNCTION_19_1(v134, v135, v188);
                  if (!v14)
                  {
                    v194(v180 - v130, v122, v188);
                    OUTLINED_FUNCTION_33_3();
                    v199 = v174;
                    MEMORY[0x1EEE9AC00](v174);
                    v175 = v180 - v130;
                    v176 = v180 - v130;
                    v177 = v188;
                    v181(v175, v176, v188);
                    v178 = objc_allocWithZone(v107);
                    v179 = sub_1D992B184();
                    sub_1D9866358(v197, v127);
                    (*(v198 + 8))(v131, v177);
                    *(v8 + v4[5]) = v179;
                    goto LABEL_63;
                  }

                  sub_1D9866358(v197, v127);
                  sub_1D986B804(v122, &qword_1ECB481D0, &qword_1D992F9F0);
                }
              }
            }
          }
        }
      }
    }
  }

  *(v8 + v4[5]) = 0;
LABEL_63:
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_16_4(0x72617473u);
    if (v136)
    {
      OUTLINED_FUNCTION_3_11();
      v137 = OUTLINED_FUNCTION_1_19();
      sub_1D986C8B8(v137, v138, v139);
      v140 = OUTLINED_FUNCTION_1_19();
      v143 = sub_1D9892528(v140, v141, v142);
      v145 = v144;
      v146 = OUTLINED_FUNCTION_1_19();
      sub_1D986C908(v146, v147, v148);
      if (v145)
      {
        v149 = 0;
      }

      else
      {
        v149 = v143;
      }

      v199 = v149;
    }

    else
    {
      v199 = 0;
      v145 = 1;
    }

    if (*(a1 + 16))
    {
      sub_1D9889410(0x6E6F5F6465646E65, 0xE800000000000000);
      if (v150)
      {
        OUTLINED_FUNCTION_3_11();
        v151 = OUTLINED_FUNCTION_11_5();
        sub_1D986C8B8(v151, v152, v153);

        v154 = OUTLINED_FUNCTION_11_5();
        v157 = sub_1D9892528(v154, v155, v156);
        v159 = v158;
        sub_1D9866358(v196, v195);
        sub_1D9866358(v190, v191);
        v160 = OUTLINED_FUNCTION_11_5();
        sub_1D986C908(v160, v161, v162);
        v163 = OUTLINED_FUNCTION_9_6();
        v164(v163);
        v165 = *(v198 + 8);
        v166 = v188;
        v165(v186, v188);
        v165(v187, v166);
        if (v159)
        {
          v167 = 0;
        }

        else
        {
          v167 = v157;
        }

        goto LABEL_77;
      }
    }
  }

  else
  {
    v199 = 0;
    v145 = 1;
  }

  OUTLINED_FUNCTION_8_7(v196, v195);
  v168 = OUTLINED_FUNCTION_9_6();
  v169(v168);
  v170 = *(v198 + 8);
  v171 = v188;
  v170(v186, v188);
  v170(v187, v171);
  v167 = 0;
  v159 = 1;
LABEL_77:
  if (v145 & 1) != 0 && (v159)
  {
    v172 = v8 + v4[7];
    *v172 = 0;
    *(v172 + 8) = 0;
    *(v172 + 16) = 0;
    *(v172 + 24) = 256;
  }

  else
  {
    v173 = v8 + v4[7];
    *v173 = v199;
    *(v173 + 8) = v145 & 1;
    *(v173 + 16) = v167;
    *(v173 + 24) = v159 & 1;
    *(v173 + 25) = 0;
  }

  sub_1D98AEF4C(v8, a2);
  v18 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v18, 1, v4);
}

uint64_t sub_1D98ADF28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48738, &qword_1D9932140);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9931BF0;
  *(v2 + 32) = 0x64695F6B636F6C63;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 4;
  v3 = sub_1D992AE34();
  *(v2 + 56) = xmmword_1D9931230;
  *(v2 + 72) = v3;
  *(v2 + 80) = v4;
  *(v2 + 88) = 3;
  strcpy((v2 + 96), "component_name");
  *(v2 + 111) = -18;
  *(v2 + 112) = 2;
  v5 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v6 = sub_1D992B174();
  *(v2 + 120) = xmmword_1D9932060;
  *(v2 + 136) = v6;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  strcpy((v2 + 160), "component_id");
  *(v2 + 173) = 0;
  *(v2 + 174) = -5120;
  *(v2 + 176) = 4;
  v7 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v10);
  v51 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v51 - v51;
  sub_1D992B194();
  v13 = sub_1D992AE34();
  v15 = v14;
  v52 = *(v9 + 8);
  v52(v12, v7);
  *(v2 + 184) = xmmword_1D9932070;
  *(v2 + 200) = v13;
  *(v2 + 208) = v15;
  *(v2 + 216) = 3;
  *(v2 + 224) = 0x5F64657461657263;
  *(v2 + 232) = 0xEA00000000006E6FLL;
  *(v2 + 240) = 3;
  v16 = v5[8];
  v17 = sub_1D992AE04();
  OUTLINED_FUNCTION_6();
  v19 = v18;
  MEMORY[0x1EEE9AC00](*(v20 + 64));
  OUTLINED_FUNCTION_13();
  (*(v19 + 16))(v22 - v21, v1 + v16, v17);
  sub_1D992ADC4();
  v24 = v23;
  v25 = OUTLINED_FUNCTION_28_1();
  v26(v25);
  *(v2 + 248) = xmmword_1D9931240;
  *(v2 + 264) = v24;
  *(v2 + 272) = 0;
  *(v2 + 280) = 2;
  v27 = *(v1 + v5[5]);
  if (v27)
  {
    v28 = v27;
    v29 = sub_1D992B174();
    sub_1D98BD920();
    v2 = v30;
    *(v30 + 16) = 5;
    *(v30 + 288) = 0xD000000000000018;
    *(v30 + 296) = 0x80000001D99368D0;
    *(v30 + 304) = 258;
    *(v30 + 312) = 0xD000000000000018;
    *(v30 + 320) = 0x80000001D99368D0;
    *(v30 + 328) = v29;
    *(v30 + 336) = 0;
    *(v30 + 344) = 1;
    MEMORY[0x1EEE9AC00](1);
    v31 = &v51 - v51;
    sub_1D992B194();
    v32 = sub_1D992AE34();
    v34 = v33;
    v52(v31, v7);
    v35 = *(v2 + 16);
    if (v35 >= *(v2 + 24) >> 1)
    {
      sub_1D98BD920();
      v2 = v48;
    }

    *(v2 + 16) = v35 + 1;
    v36 = v2 + (v35 << 6);
    *(v36 + 32) = 0xD000000000000011;
    *(v36 + 40) = 0x80000001D99368F0;
    *(v36 + 48) = 260;
    *(v36 + 56) = 0xD000000000000011;
    *(v36 + 64) = 0x80000001D99368F0;
    *(v36 + 72) = v32;
    *(v36 + 80) = v34;
    *(v36 + 88) = 3;
  }

  v37 = (v1 + v5[7]);
  if ((*(v37 + 25) & 1) == 0)
  {
    v38 = v37[2];
    v39 = *(v37 + 24);
    if ((v37[1] & 1) == 0)
    {
      v40 = *v37;
      v41 = *(v2 + 16);
      if (v41 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v2 = v49;
      }

      *(v2 + 16) = v41 + 1;
      v42 = v2 + (v41 << 6);
      *(v42 + 32) = 0x5F64657472617473;
      *(v42 + 40) = 0xEA00000000006E6FLL;
      *(v42 + 48) = 258;
      v43 = v54;
      *(v42 + 50) = v53;
      *(v42 + 54) = v43;
      *(v42 + 56) = xmmword_1D9931260;
      *(v42 + 72) = v40;
      *(v42 + 80) = 0;
      *(v42 + 88) = 1;
    }

    if ((v39 & 1) == 0)
    {
      v44 = *(v2 + 16);
      if (v44 >= *(v2 + 24) >> 1)
      {
        OUTLINED_FUNCTION_12_3();
        v2 = v50;
      }

      *(v2 + 16) = v44 + 1;
      v45 = v2 + (v44 << 6);
      *(v45 + 32) = 0x6E6F5F6465646E65;
      *(v45 + 40) = 0xE800000000000000;
      *(v45 + 48) = 258;
      v46 = v56;
      *(v45 + 50) = v55;
      *(v45 + 54) = v46;
      *(v45 + 56) = xmmword_1D9931270;
      *(v45 + 72) = v38;
      *(v45 + 80) = 0;
      *(v45 + 88) = 1;
    }
  }

  return v2;
}

uint64_t sub_1D98AE44C()
{
  v2 = v0;
  OUTLINED_FUNCTION_22_3();
  v109 = v3;
  v110 = 0;
  v111 = v3;
  v4 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_4();
  v10 = v8 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866DE0(v0, v0, &qword_1ECB481D0, &qword_1D992F9F0);
  v13 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v13, v14, v4);
  v107 = v4;
  if (v55)
  {
    sub_1D986B804(v0, &qword_1ECB481D0, &qword_1D992F9F0);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_21_3();
    v16(v15);
    v17 = sub_1D992AE34();
    v19 = v18;
    v0 = &v109;
    sub_1D986F118(v1, 0xE800000000000000, 61, 0xE100000000000000, v17, v18, 3);
    sub_1D987106C(v17, v19);
    (*(v6 + 8))(v10, v4);
  }

  v20 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v21 = *(v2 + *(v20 + 20));
  v103 = v6;
  v104 = v20;
  if (v21)
  {
    v22 = *(v21 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v22)
    {
      v102 = v2;
      v108 = MEMORY[0x1E69E7CC0];
      sub_1D98B9860(0, v22, 0);
      v23 = v108;
      v1 = v6 + 16;
      v24 = *(v6 + 16);
      v25 = v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v105 = *(v6 + 72);
      v106 = v24;
      v26 = (v6 + 8);
      do
      {
        OUTLINED_FUNCTION_13_3();
        MEMORY[0x1EEE9AC00](v27);
        OUTLINED_FUNCTION_0_27();
        v106(&v108, v25, v107);
        v28 = sub_1D992AE34();
        v30 = v29;
        (*v26)(&v108, v107);
        v108 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D98B9860(v31 > 1, v32 + 1, 1);
          v23 = v108;
        }

        *(v23 + 16) = v32 + 1;
        v33 = v23 + 24 * v32;
        *(v33 + 32) = v28;
        *(v33 + 40) = v30;
        *(v33 + 48) = 3;
        v25 += v105;
        --v22;
      }

      while (v22);
      v2 = v102;
      v20 = v104;
      OUTLINED_FUNCTION_22_3();
    }

    v0 = &v109;
    sub_1D987B5CC(v1, 0xE800000000000000, 0, v23);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v106 = v100;
  OUTLINED_FUNCTION_5();
  v36 = *(v35 + 64);
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]((v36 + 15));
  v38 = *(v20 + 24);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48708, &qword_1D9931338);
  OUTLINED_FUNCTION_9(v39);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_19_0();
  sub_1D9866DE0(v2 + v38, v0, &qword_1ECB48708, &qword_1D9931338);
  v41 = OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_19_1(v41, v42, v34);
  if (v55)
  {
    sub_1D986B804(v0, &qword_1ECB48708, &qword_1D9931338);
    v44 = v103;
    v43 = v104;
  }

  else
  {
    v102 = v2;
    sub_1D98AEFB0(v0, v100 - v37);
    v45 = sub_1D992AE04();
    v101 = v100;
    OUTLINED_FUNCTION_6();
    v100[0] = v46;
    v48 = v47[8];
    MEMORY[0x1EEE9AC00](v47);
    v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
    v50 = v100 - v49;
    v100[1] = v36;
    MEMORY[0x1EEE9AC00](v100);
    v51 = v100 - v37;
    v105 = v100 - v37;
    sub_1D9866DE0(v100 - v37, v100 - v37, &qword_1ECB48700, &qword_1D9931330);
    v52 = *(v34 + 48);
    v53 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_19_1(v53, v54, v45);
    v56 = v34;
    if (v55)
    {
      sub_1D986B804(&v51[v52], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(v51, &qword_1ECB48710, &qword_1D9931340);
      v68 = v100[0];
    }

    else
    {
      v57 = v100[0];
      v58 = OUTLINED_FUNCTION_21_3();
      v59(v58);
      sub_1D986B804(&v51[v52], &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v60);
      v51 = v100 - v49;
      v61 = OUTLINED_FUNCTION_20_2();
      v62(v61);
      sub_1D992ADC4();
      v63 = *(v57 + 8);
      v64 = OUTLINED_FUNCTION_28_1();
      v63(v64);
      v65 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v65, v66, 15678, 0xE200000000000000, v67, 0, 2);
      (v63)(v50, v45);
      v68 = v57;
    }

    OUTLINED_FUNCTION_33_3();
    v101 = v69;
    MEMORY[0x1EEE9AC00](v69);
    v70 = (v48 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x1EEE9AC00](v100);
    OUTLINED_FUNCTION_0_27();
    v71 = v105;
    sub_1D9866DE0(v105, v51, &qword_1ECB48700, &qword_1D9931330);
    v72 = *(v56 + 48);
    OUTLINED_FUNCTION_19_1(&v51[v72], 1, v45);
    if (v55)
    {
      sub_1D986B804(v71, &qword_1ECB48700, &qword_1D9931330);
      sub_1D986B804(&v51[v72], &qword_1ECB48710, &qword_1D9931340);
      sub_1D986B804(v51, &qword_1ECB48710, &qword_1D9931340);
    }

    else
    {
      (*(v68 + 32))(v100 - v70, &v51[v72], v45);
      sub_1D986B804(v51, &qword_1ECB48710, &qword_1D9931340);
      MEMORY[0x1EEE9AC00](v73);
      v74 = OUTLINED_FUNCTION_20_2();
      v75(v74);
      sub_1D992ADC4();
      v76 = *(v68 + 8);
      v77 = OUTLINED_FUNCTION_28_1();
      v76(v77);
      v78 = OUTLINED_FUNCTION_7_8();
      sub_1D986F118(v78, v79, 15676, 0xE200000000000000, v80, 0, 2);
      (v76)(v100 - v70, v45);
      sub_1D986B804(v71, &qword_1ECB48700, &qword_1D9931330);
    }

    v2 = v102;
    v44 = v103;
    v43 = v104;
  }

  if (*(v2 + *(v43 + 28)))
  {
    OUTLINED_FUNCTION_13_3();
    MEMORY[0x1EEE9AC00](v81);
    v83 = v100 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    v85 = v84;
    sub_1D992B194();
    v86 = sub_1D992AE34();
    v88 = v87;
    (*(v44 + 8))(v83, v107);
    v89 = OUTLINED_FUNCTION_32_4();
    sub_1D986F118(v89, v90, v91, v92, v86, v88, 3);
    sub_1D987106C(v86, v88);
    sub_1D992B174();
    OUTLINED_FUNCTION_30_2();
    v93 = OUTLINED_FUNCTION_32_4();
    sub_1D986F118(v93, v94, v95, v96, v97, 0, 1);
  }

  v98 = sub_1D986FC08(v109, v110, v111);

  return v98;
}

uint64_t sub_1D98AED20@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for SQLDelete;
  a1[4] = &off_1F5516CC0;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  v2[7] = v3;
  v2[8] = &off_1F5516E40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 4);
  v5 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v5);
  v6 = boxed_opaque_existential_1 + v3[6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  v8 = *(v7 + 48);
  v9 = sub_1D992AE04();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  MEMORY[0x1EEE9AC00](*(*(v9 - 8) + 64));
  OUTLINED_FUNCTION_13();
  sub_1D992ADF4();
  sub_1D992AD94();
  v10 = OUTLINED_FUNCTION_28_1();
  v11(v10);
  __swift_storeEnumTagSinglePayload(v6 + v8, 0, 1, v9);
  result = __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  *(boxed_opaque_existential_1 + v3[5]) = 0;
  *(boxed_opaque_existential_1 + v3[7]) = 0;
  v2[2] = 0xD000000000000015;
  v2[3] = 0x80000001D9937450;
  return result;
}

uint64_t sub_1D98AEF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98AEFB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98AF0C0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t sub_1D98AF0DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = &v7 - v1;
  v3 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  OUTLINED_FUNCTION_3();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1D98D1E08();

  return sub_1D988C380(v2);
}

uint64_t sub_1D98AF1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D98AF1FC, 0, 0);
}

uint64_t sub_1D98AF1FC()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for FirstUnlockObserver();
    sub_1D98AFDB0();
    v3 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D98AF2E0, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D98AF2E0()
{
  OUTLINED_FUNCTION_18();
  sub_1D98AF364();

  return MEMORY[0x1EEE6DFA0](sub_1D98AF34C, 0, 0);
}

void *sub_1D98AF364()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8);
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v14 - v5;
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    if (qword_1ECB47AB8 != -1)
    {
      swift_once();
    }

    sub_1D986A454(0xD000000000000016, 0x80000001D9939610, 0xD000000000000063, 0x80000001D9939630, 0x5574737269466E6FLL, 0xEF29286B636F6C6ELL);
    if (*(v0 + 32))
    {

      sub_1D9900810();
    }

    *(v0 + 32) = 0;

    if (*(v0 + 40))
    {

      sub_1D9900810();
    }

    *(v0 + 40) = 0;

    v7 = *(v0 + 24);
    v8 = *(v7 + 16);
    if (v8)
    {
      v15 = v0;
      v11 = *(v3 + 16);
      v9 = v3 + 16;
      v10 = v11;
      v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
      v13 = *(v9 + 56);

      do
      {
        v10(v6, v12, v2);
        sub_1D992B834();
        (*(v9 - 8))(v6, v2);
        v12 += v13;
        --v8;
      }

      while (v8);

      v1 = v15;
    }

    *(v1 + 24) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1D98AF5CC()
{
  if (!v0[4])
  {
    v1 = v0;
    if (!v0[5])
    {
      v2 = v0[2];
      OUTLINED_FUNCTION_3();
      v3 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for DarwinNotificationObserver();
      swift_allocObject();
      v4 = v2;
      v1[4] = sub_1D99004B4(0xD000000000000025, 0x80000001D99395E0, v4, sub_1D98AFE0C, v3);

      OUTLINED_FUNCTION_3();
      v5 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for DeviceLockStateNotificationObserver();
      swift_allocObject();
      v1[5] = sub_1D98FCCA4(v4, sub_1D98AFE18, v5);
    }
  }
}

uint64_t sub_1D98AF72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ECB47B30 != -1)
  {
    swift_once();
  }

  v3 = *(*qword_1ECB49688 + 136);

  LOBYTE(v3) = *v3(v4);

  if ((v3 & 1) == 0)
  {
    result = MKBDeviceUnlockedSinceBoot();
    if (result != 1)
    {
      return result;
    }

    v6 = *(*qword_1ECB49688 + 136);

    *v6(v7) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D98AF0DC();
  }

  return result;
}

uint64_t sub_1D98AF854(void *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  result = (*(v3 + 8))(v2, v3);
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D98AF0DC();
    }
  }

  return result;
}

uint64_t sub_1D98AF8E4()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  type metadata accessor for FirstUnlockObserver();
  v1[3] = sub_1D98AFDB0();
  v3 = sub_1D992B814();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D98AF968, v3, v2);
}

uint64_t sub_1D98AF968()
{
  if (qword_1ECB47B30 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_1ECB49688 + 136);

  LOBYTE(v1) = *v1(v2);

  if (v1)
  {
    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = *(*qword_1ECB49688 + 136);

    *v3(v4) = 1;

LABEL_6:
    v5 = *(v0 + 8);

    return v5();
  }

  sub_1D98AF5CC();
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1D98AFB48;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1D98AFB48()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](j__OUTLINED_FUNCTION_0_28, v3, v2);
}

uint64_t sub_1D98AFC68(uint64_t a1, uint64_t a2)
{
  sub_1D987B978();
  v4 = *(*(a2 + 24) + 16);
  sub_1D987BA08(v4);
  v5 = *(a2 + 24);
  *(v5 + 16) = v4 + 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48938, &unk_1D99321F8);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1D98AFD1C()
{

  return v0;
}

uint64_t sub_1D98AFD54()
{
  sub_1D98AFD1C();

  return swift_deallocClassInstance();
}

unint64_t sub_1D98AFDB0()
{
  result = qword_1ECB47D50;
  if (!qword_1ECB47D50)
  {
    type metadata accessor for FirstUnlockObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47D50);
  }

  return result;
}

uint64_t sub_1D98AFE20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D98AFED4;

  return sub_1D98AF1DC(a1, v4, v5, v6);
}

uint64_t sub_1D98AFED4()
{
  OUTLINED_FUNCTION_18();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata accessor for RootLogicalClock(uint64_t a1)
{
  result = qword_1ECB47E08;
  if (!qword_1ECB47E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D98B0038(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    sub_1D98B00E0();
    if (v2 <= 0x3F)
    {
      sub_1D98B0130(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D98B00E0()
{
  if (!qword_1ECB47E18[0])
  {
    v0 = sub_1D992BC04();
    if (!v1)
    {
      atomic_store(v0, qword_1ECB47E18);
    }
  }
}

void sub_1D98B0130(uint64_t a1)
{
  if (!qword_1ECB47978)
  {
    sub_1D992AE84();
    sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
    v1 = sub_1D992B944();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB47978);
    }
  }
}

uint64_t sub_1D98B01E0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for RootLogicalClock(0);
  if ((sub_1D992AE54() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v5 = v4[8];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = a2 + v5;
  if (v7)
  {
    if (!*(v8 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(v8 + 16))
    {
      return 0;
    }

    if (*v6 != *v8 || v6[1] != *(v8 + 8))
    {
      return 0;
    }
  }

  v10 = v4[9];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1D98B02CC(v11, v12);
}

uint64_t sub_1D98B02CC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v31 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = sub_1D992AE84();
  v36 = &v29;
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v30 = (v5 + 63) >> 6;
  v43 = v9 + 16;
  v44 = v11;
  v41 = a2 + 56;
  v42 = (v9 + 8);
  v34 = v9;
  v35 = v3;
  v32 = v9 + 32;
  v33 = v12;
  if (v7)
  {
    while (2)
    {
      v14 = __clz(__rbit64(v7));
      v37 = (v7 - 1) & v7;
LABEL_13:
      v17 = *(v9 + 72);
      v18 = *(v3 + 48) + v17 * (v14 | (v13 << 6));
      v39 = *(v9 + 16);
      v40 = v17;
      v39(v12, v18, v8);
      v38 = &v29;
      MEMORY[0x1EEE9AC00](&v29);
      v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 32))(v20, v12, v8);
      sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
      v21 = sub_1D992B5C4();
      v22 = ~(-1 << *(a2 + 32));
      do
      {
        v23 = v21 & v22;
        v24 = (*(v41 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22));
        if ((v24 & 1) == 0)
        {
          (*v42)(v20, v8);
          return 0;
        }

        MEMORY[0x1EEE9AC00](v24);
        v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        v39(v26, *(a2 + 48) + v23 * v40, v8);
        sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
        v27 = sub_1D992B5F4();
        v28 = *v42;
        (*v42)(v26, v8);
        v21 = v23 + 1;
      }

      while ((v27 & 1) == 0);
      result = (v28)(v20, v8);
      v7 = v37;
      v9 = v34;
      v3 = v35;
      v12 = v33;
      if (v37)
      {
        continue;
      }

      break;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v13 >= v30)
    {
      return 1;
    }

    v16 = *(v31 + 8 * v13);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v37 = (v16 - 1) & v16;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id MessageStoreShim.init(prefs:)(void *a1)
{
  type metadata accessor for MessageStoreConcrete();
  v3 = a1;
  *&v1[OBJC_IVAR___SiriAnalyticsMessageStore_underlying] = sub_1D98B0728(v3);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for MessageStoreShim();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

uint64_t sub_1D98B0728(void *a1)
{
  v2 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v2 - 8) + 64));
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersistentStorage();
  v5 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D98F97F8();
  v11 = type metadata accessor for DataVault(0);
  v12 = objc_allocWithZone(v11);
  (*(v7 + 16))(v12 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, &v17 - v10, v5);
  v17.receiver = v12;
  v17.super_class = v11;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  (*(v7 + 8))(&v17 - v10, v5);
  sub_1D98CB418(v4);

  MEMORY[0x1EEE9AC00](v14);
  sub_1D98C601C(&v17 - v10);
  sub_1D98876F0(v4);
  type metadata accessor for MessageStoreConcrete();
  v15 = swift_allocObject();
  sub_1D98B0AD0(&v17 - v10, a1);
  return v15;
}

id MessageStoreShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageStoreShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageStoreShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98B0AD0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v8 = v7;
  MEMORY[0x1EEE9AC00](*(v9 + 64));
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v6);
  v12 = objc_allocWithZone(SiriAnalyticsUnifiedBiomeStream);
  v13 = sub_1D98B0D80(v11, a2);
  (*(v8 + 8))(a1, v6);
  *(v3 + 16) = v13;
  return v3;
}

void sub_1D98B0BDC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v4 = sub_1D98682F0();
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA73A2C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    sub_1D98B0E18();
    sub_1D992BA14();
    MEMORY[0x1DA739CE0]();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D992B7D4();
    }

    sub_1D992B7F4();
  }

  sub_1D98B0E18();
  v7 = sub_1D992B7A4();

  [v3 sendEvents_];
}

uint64_t sub_1D98B0D48()
{

  return swift_deallocClassInstance();
}

id sub_1D98B0D80(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992ACD4();
  v7 = [v3 initWithReadWriteStorageURL:v6 prefs:a2];

  v8 = sub_1D992AD44();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

unint64_t sub_1D98B0E18()
{
  result = qword_1ED8BD660;
  if (!qword_1ED8BD660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BD660);
  }

  return result;
}

double sub_1D98B0E5C@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D98896FC(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_1D986A8BC(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1D98B0EC0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889568();
  if (v3)
  {
    return OUTLINED_FUNCTION_11_6(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98B0F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1D9889738(a1, a2);
  if (v4)
  {
    return OUTLINED_FUNCTION_11_6(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D98B0F68(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889568();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_6(v2);
}

void *sub_1D98B0FB4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D98898F4();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 24 * v3);

  v6 = v5;
  return v5;
}

void *sub_1D98B1028(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D9889568();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1D98B1070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D988B5F0(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    sub_1D98B3900(v7 + *(*(v8 - 8) + 72) * v6, a2);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

void *sub_1D98B113C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D992BE74();

    if (v4)
    {
      v5 = sub_1D992B1A4();
      OUTLINED_FUNCTION_17_4(v5, v6, v7, v5, v8, v9, v10, v11, v4, v16);
      return v17;
    }
  }

  else if (*(a2 + 16) && (v12 = sub_1D9889858(), (v13 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v12);
    v14 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_1D98B11E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1D992BE74();

    if (v3)
    {
      v4 = type metadata accessor for ComponentClusterMetadata();
      OUTLINED_FUNCTION_17_4(v4, v5, v6, v4, v7, v8, v9, v10, v3, v14);
      return v15;
    }
  }

  else if (*(a2 + 16))
  {
    v12 = sub_1D9889858();
    if (v13)
    {
      OUTLINED_FUNCTION_11_6(v12);
    }
  }

  return 0;
}

uint64_t sub_1D98B127C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D9889568();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_6(v2);
}

uint64_t sub_1D98B12C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  if (__swift_getEnumTagSinglePayload(a1, 1, v6) == 1)
  {
    sub_1D986B804(a1, &qword_1ECB48950, &unk_1D9932320);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48950, &unk_1D9932320);
    MEMORY[0x1EEE9AC00](((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = &v18 - v8;
    v10 = sub_1D988B5F0();
    if (v11)
    {
      v12 = v10;
      swift_isUniquelyReferenced_nonNull_native();
      v19 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48850, &qword_1D9931B78);
      sub_1D992BE34();
      v13 = v19;
      sub_1D989E778(*(v19 + 56) + *(*(v6 - 8) + 72) * v12, v9);
      type metadata accessor for SISchemaDeviceSensitivityState(0);
      sub_1D98B3794(&qword_1ECB47908, type metadata accessor for SISchemaDeviceSensitivityState, &unk_1D992F484);
      sub_1D992BE44();
      v14 = 0;
      *v3 = v13;
    }

    else
    {
      v14 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v14, 1, v6);
    return sub_1D986B804(v9, &qword_1ECB48950, &unk_1D9932320);
  }

  else
  {
    MEMORY[0x1EEE9AC00](*(*(v6 - 8) + 64));
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D989E778(a1, v16);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    result = sub_1D989E1B0(v16, a2);
    *v3 = v19;
  }

  return result;
}

uint64_t sub_1D98B152C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48958, &unk_1D9932360);
  OUTLINED_FUNCTION_9(v6);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
  OUTLINED_FUNCTION_6();
  v12 = v11;
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    sub_1D986B804(a1, &qword_1ECB48958, &unk_1D9932360);
    sub_1D98B2DE0(v9);
    sub_1D992AE84();
    OUTLINED_FUNCTION_5();
    (*(v16 + 8))(a2);
    v17 = OUTLINED_FUNCTION_34_0();
    return sub_1D986B804(v17, v18, &unk_1D9932360);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v10);
    swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_1D989E558(v15, a2);
    *v3 = v22;
    sub_1D992AE84();
    OUTLINED_FUNCTION_5();
    return (*(v20 + 8))(a2);
  }
}

BOOL sub_1D98B1728(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

id SensitiveConditionsLedger.init(clockIdentifier:metastore:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_starts] = MEMORY[0x1E69E7CC8];
  v5 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_clockIdentifier;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SensitiveConditionsLedger(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t type metadata accessor for SensitiveConditionsLedger(uint64_t a1)
{
  result = qword_1ED8BD728;
  if (!qword_1ED8BD728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D98B1998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (sub_1D992BB64())
  {
    if (qword_1ED8BD6E0 != -1)
    {
      OUTLINED_FUNCTION_0_29(&qword_1ED8BD6E0);
    }

    OUTLINED_FUNCTION_5_11();
    sub_1D992BD64();
    v6 = sub_1D992BB54();
    v7 = v5;
    v9 = v8;

    v101 = v6;
    v102 = v9;
    MEMORY[0x1DA739C30](0xD000000000000017, 0x80000001D9939830);
    sub_1D986A454(v6, v9, 0xD000000000000075, 0x80000001D9939710, 0xD00000000000001DLL, 0x80000001D9939790);

    v10 = OUTLINED_FUNCTION_34_0();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    OUTLINED_FUNCTION_9(v12);
    MEMORY[0x1EEE9AC00](*(v13 + 64));
    v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v14);
    v17 = &v88 - v16;
    v18 = sub_1D992AE84();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
    v103 = &type metadata for SensitiveConditionTag;
    v104 = &protocol witness table for SensitiveConditionTag;
    LODWORD(v101) = v7;
    v102 = 0xA000000000000000;
    sub_1D98907D8(0xA000000000000000);
    sub_1D98FD694();
    sub_1D9890810(0xA000000000000000);
    sub_1D986B804(v17, &qword_1ECB481D0, &qword_1D992F9F0);
    sub_1D986B804(v15, &qword_1ECB481D0, &qword_1D992F9F0);
    return __swift_destroy_boxed_opaque_existential_1(&v101);
  }

  else
  {
    v20 = sub_1D9908208(a2);
    if (qword_1ED8BD6E0 != -1)
    {
      OUTLINED_FUNCTION_0_29(&qword_1ED8BD6E0);
    }

    v21 = qword_1ECB49640;
    OUTLINED_FUNCTION_5_11();
    sub_1D992BD64();
    v22 = sub_1D992BB54();
    v24 = v23;

    v101 = v22;
    v102 = v24;
    MEMORY[0x1DA739C30](0x6465747261747320, 0xEC000000203A7441);
    v105[0] = v20;
    v25 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v25);

    v96 = "ics20MessageStoreConcrete";
    v98 = v21;
    v99 = "onditionsLedger.swift";
    OUTLINED_FUNCTION_4_10();
    sub_1D986A454(v26, v27, v28, v29, v30, v31);

    v32 = sub_1D992AE84();
    v92 = &v88;
    OUTLINED_FUNCTION_6();
    v34 = v33;
    MEMORY[0x1EEE9AC00](v35);
    v93 = v36;
    v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_starts;
    swift_beginAccess();
    v95 = v38;
    v39 = *(v3 + v38);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48950, &unk_1D9932320);
    OUTLINED_FUNCTION_9(v40);
    OUTLINED_FUNCTION_20_0();
    v94 = v41;
    MEMORY[0x1EEE9AC00](v42);
    OUTLINED_FUNCTION_14_5();
    sub_1D98B1070(v39, v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v44);
    v97 = v34;
    v91 = v44;
    if (EnumTagSinglePayload == 1)
    {
      v46 = v20;
      sub_1D986B804(v38, &qword_1ECB48950, &unk_1D9932320);
    }

    else
    {
      v47 = *(v38 + *(v44 + 48));
      v48 = *(v34 + 32);
      v90 = v32;
      v48(v37, v38, v32);
      OUTLINED_FUNCTION_5_11();
      sub_1D992BD64();

      v101 = 0xD000000000000015;
      v102 = 0x80000001D99397E0;
      v49 = sub_1D992BB54();
      MEMORY[0x1DA739C30](v49);

      MEMORY[0x1DA739C30](0x203A747261747320, 0xE800000000000000);
      v100 = v47;
      OUTLINED_FUNCTION_34_0();
      v50 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v50);

      MEMORY[0x1DA739C30](0x203A646E6520, 0xE600000000000000);
      v100 = v20;
      OUTLINED_FUNCTION_34_0();
      v51 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v51);

      OUTLINED_FUNCTION_4_10();
      sub_1D986A454(v52, v53, v54, v55, v56, v57);

      v58 = swift_allocObject();
      v89 = v47;
      *(v58 + 16) = v47;
      *(v58 + 24) = v20;
      v46 = v20;
      *(v58 + 32) = 0;
      v59 = *(v3 + OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore);
      sub_1D98907D8(v58);
      LOBYTE(v59) = sub_1D98B2F58(v37, v5, v58, v59);
      sub_1D9890810(v58);
      if ((v59 & 1) == 0)
      {
        OUTLINED_FUNCTION_5_11();
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000024, 0x80000001D9939800);
        v61 = sub_1D992BB54();
        MEMORY[0x1DA739C30](v61);

        OUTLINED_FUNCTION_7_9();
        v100 = v89;
        v62 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v62);

        OUTLINED_FUNCTION_6_11();
        OUTLINED_FUNCTION_4_10();
        sub_1D98DCEB4(v63, v64, v65, v66, v67, v68);
      }

      MEMORY[0x1EEE9AC00](v60);
      OUTLINED_FUNCTION_8();
      v71 = v69 - v70;
      OUTLINED_FUNCTION_13_4();
      sub_1D98B2A88(v71);
      sub_1D986B804(v71, &qword_1ECB48950, &unk_1D9932320);
      swift_endAccess();
      sub_1D9890810(v58);
      v32 = v90;
      (*(v97 + 8))(v37, v90);
    }

    v72 = swift_allocObject();
    v92 = &v88;
    v90 = v46;
    *(v72 + 16) = v46;
    *(v72 + 24) = 0;
    *(v72 + 32) = 1;
    MEMORY[0x1EEE9AC00](1);
    OUTLINED_FUNCTION_8();
    v75 = v73 - v74;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    v93 = &v88;
    OUTLINED_FUNCTION_9(v76);
    MEMORY[0x1EEE9AC00](*(v77 + 64));
    v79 = &v88 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v78);
    v81 = &v88 - v80;
    __swift_storeEnumTagSinglePayload(&v88 - v80, 1, 1, v32);
    v103 = &type metadata for SensitiveConditionTag;
    v104 = &protocol witness table for SensitiveConditionTag;
    LODWORD(v101) = v5;
    v102 = v72;
    LODWORD(v89) = v5;
    sub_1D98907D8(v72);
    sub_1D98FD694();
    sub_1D986B804(v81, &qword_1ECB481D0, &qword_1D992F9F0);
    __swift_destroy_boxed_opaque_existential_1(&v101);
    if (__swift_getEnumTagSinglePayload(v79, 1, v32) == 1)
    {
      sub_1D986B804(v79, &qword_1ECB481D0, &qword_1D992F9F0);
      sub_1D98DCEB4(0xD000000000000024, 0x80000001D99397B0, 0xD000000000000075, v96 | 0x8000000000000000, 0xD00000000000001DLL, v99 | 0x8000000000000000);
      return sub_1D9890810(v72);
    }

    else
    {
      v82 = v97;
      (*(v97 + 32))(v75, v79, v32);
      MEMORY[0x1EEE9AC00](v93);
      OUTLINED_FUNCTION_8();
      v85 = v83 - v84;
      v86 = v91;
      v87 = *(v91 + 48);
      (*(v82 + 16))(v83 - v84, v75, v32);
      *(v85 + v87) = v90;
      __swift_storeEnumTagSinglePayload(v85, 0, 1, v86);
      OUTLINED_FUNCTION_13_4();
      sub_1D98B12C8(v85, v89);
      swift_endAccess();
      sub_1D9890810(v72);
      return (*(v82 + 8))(v75, v32);
    }
  }
}

unint64_t sub_1D98B23F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  result = sub_1D992BB64();
  if ((result & 1) == 0)
  {
    v7 = sub_1D9908208(a2);
    if (qword_1ED8BD6E0 != -1)
    {
      OUTLINED_FUNCTION_0_29(&qword_1ED8BD6E0);
    }

    v8 = qword_1ECB49640;
    v36 = sub_1D992BB54();
    v37 = v9;
    MEMORY[0x1DA739C30](0x74416465646E6520, 0xEA0000000000203ALL);
    v34 = v7;
    v10 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v10);

    v30[1] = v8;
    sub_1D986A454(v36, v37, 0xD000000000000075, 0x80000001D9939710, 0xD00000000000001BLL, 0x80000001D9939850);

    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    v31 = v12;
    v32 = v11;
    MEMORY[0x1EEE9AC00](*(v13 + 64));
    v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_starts;
    swift_beginAccess();
    v17 = *(v3 + v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48950, &unk_1D9932320);
    OUTLINED_FUNCTION_9(v18);
    OUTLINED_FUNCTION_20_0();
    MEMORY[0x1EEE9AC00](v19);
    OUTLINED_FUNCTION_14_5();
    sub_1D98B1070(v17, v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
    {
      sub_1D986B804(v16, &qword_1ECB48950, &unk_1D9932320);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1D992BD64();

      v34 = 0xD00000000000001DLL;
      v35 = 0x80000001D9939870;
      v22 = sub_1D992BB54();
      MEMORY[0x1DA739C30](v22);

      OUTLINED_FUNCTION_9_7(v34, v23, 0xD000000000000075);
    }

    else
    {
      v30[0] = v30;
      v24 = *(v16 + *(v21 + 48));
      (*(v31 + 32))(v15, v16, v32);
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v7;
      *(v25 + 32) = 0;
      v26 = *(v3 + OBJC_IVAR___SiriAnalyticsSensitiveConditionsLedger_metastore);
      sub_1D98907D8(v25);
      LOBYTE(v26) = sub_1D98B2F58(v15, v5, v25, v26);
      sub_1D9890810(v25);
      if (v26)
      {
        (*(v31 + 8))(v15, v32);
        return sub_1D9890810(v25);
      }

      else
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000024, 0x80000001D9939800);
        v27 = sub_1D992BB54();
        MEMORY[0x1DA739C30](v27);

        OUTLINED_FUNCTION_7_9();
        v33 = v7;
        v28 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v28);

        OUTLINED_FUNCTION_6_11();
        OUTLINED_FUNCTION_9_7(v34, v29, 0xD000000000000075);

        sub_1D9890810(v25);
        return (*(v31 + 8))(v15, v32);
      }
    }
  }

  return result;
}

id SensitiveConditionsLedger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SensitiveConditionsLedger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SensitiveConditionsLedger(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98B29B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1D9889738(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48820, &qword_1D9931B48);
  OUTLINED_FUNCTION_16_5(v7);
  sub_1D987106C(*(*(v10 + 48) + 16 * v6), *(*(v10 + 48) + 16 * v6 + 8));
  v8 = *(*(v10 + 56) + 8 * v6);
  sub_1D98AB584();
  OUTLINED_FUNCTION_34_0();
  sub_1D992BE44();
  *v3 = v10;
  return v8;
}

uint64_t sub_1D98B2A88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D988B5F0();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48850, &qword_1D9931B78);
    sub_1D992BE34();
    v6 = *(v12 + 56);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    sub_1D989E778(v6 + *(*(v7 - 8) + 72) * v5, a1);
    type metadata accessor for SISchemaDeviceSensitivityState(0);
    sub_1D98B3794(&qword_1ECB47908, type metadata accessor for SISchemaDeviceSensitivityState, &unk_1D992F484);
    sub_1D992BE44();
    *v1 = v12;
    v8 = a1;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
    v8 = a1;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_1D98B2BFC(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v16 = sub_1D9889858();
    if (v17)
    {
      v18 = v16;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48960, &unk_1D9932370);
      sub_1D992BE34();
      v8 = v21;

      v13 = *(*(v21 + 56) + 8 * v18);
      sub_1D992B1A4();
      OUTLINED_FUNCTION_2_18();
      sub_1D98B3794(v19, v20, MEMORY[0x1E69E81B8]);
      sub_1D992BE44();
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
  v6 = sub_1D992BE74();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1D992BC94();
  v8 = sub_1D98D86D8(v4, v7);

  v9 = sub_1D9889858();
  v11 = v10;

  if (v11)
  {

    v13 = *(*(v8 + 56) + 8 * v9);
    sub_1D992B1A4();
    OUTLINED_FUNCTION_2_18();
    sub_1D98B3794(v14, v15, MEMORY[0x1E69E81B8]);
    sub_1D992BE44();

LABEL_10:
    *v2 = v8;
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B2DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D9889568();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *v1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E0, &qword_1D9931B08);
    OUTLINED_FUNCTION_16_5(v6);
    v7 = *(v17 + 48);
    v8 = sub_1D992AE84();
    OUTLINED_FUNCTION_5();
    (*(v9 + 8))(v7 + *(v9 + 72) * v5, v8);
    v10 = *(v17 + 56);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    OUTLINED_FUNCTION_5();
    (*(v12 + 32))(a1, v10 + *(v12 + 72) * v5, v11);
    sub_1D98B3748();
    sub_1D992BE44();
    *v1 = v17;
    v13 = a1;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB487E8, &qword_1D9931B10);
    v13 = a1;
    v14 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v15);
}

id sub_1D98B2F58(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48968, &qword_1D9932380);
  MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = &v31[-v9];
  v11 = type metadata accessor for TagsTable.Predicate(0);
  MEMORY[0x1EEE9AC00](*(*(v11 - 1) + 64));
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = &type metadata for SensitiveConditionTag;
  v38 = &protocol witness table for SensitiveConditionTag;
  LODWORD(v36[0]) = a2;
  v36[1] = a3;
  sub_1D98907D8(a3);
  if ((sub_1D986AC54(0) & 1) == 0 || !*(a4 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    goto LABEL_12;
  }

  sub_1D98B37DC(v36, v34);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
  if (!swift_dynamicCast())
  {

    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_1D986B804(v32, &unk_1ECB491C0, &unk_1D99305E0);
    goto LABEL_12;
  }

  sub_1D986D53C(v32, v35);
  __swift_project_boxed_opaque_existential_1(v36, v37);
  swift_getDynamicType();
  (v38[1])(v34);
  result = [objc_allocWithZone(MEMORY[0x1E69C65C0]) init];
  if (result)
  {
    v15 = result;
    __swift_project_boxed_opaque_existential_1(v35, v35[3]);
    sub_1D992B3F4();
    result = sub_1D99108B4(v15);
    if (v16 >> 60 != 15)
    {
      v17 = result;
      v18 = v16;

      if (!sub_1D98B1728(v17, v18))
      {
        v20 = sub_1D992AE84();
        __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
        v21 = v11[6];
        (*(*(v20 - 8) + 16))(&v13[v21], a1, v20);
        __swift_storeEnumTagSinglePayload(&v13[v21], 0, 1, v20);
        v22 = v11[10];
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
        __swift_storeEnumTagSinglePayload(&v13[v22], 1, 1, v23);
        __swift_storeEnumTagSinglePayload(&v13[v11[11]], 1, 1, v20);
        *&v13[v11[5]] = 0;
        *&v13[v11[7]] = 0;
        v24 = &v13[v11[8]];
        *v24 = 0;
        v24[4] = 1;
        *&v13[v11[9]] = 0;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48970, &qword_1D99323A0);
        MEMORY[0x1EEE9AC00](((*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
        v27 = &v31[-v26];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48978, &qword_1D99323A8);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
        __swift_project_boxed_opaque_existential_1(v36, v37);
        swift_getDynamicType();
        (v38[1])(v34);
        v29 = LOBYTE(v34[0]);
        sub_1D987BA38(v17, v18);
        LOBYTE(v32[0]) = 0;
        v30 = sub_1D98F7848(v27, v29, v17, v18);
        sub_1D98B3840(v13, v10);
        __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
        sub_1D98EC4A0(v30, v10, v34);

        sub_1D986B804(v10, &qword_1ECB48968, &qword_1D9932380);
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        v19 = sub_1D986D1D0();

        sub_1D9866358(v17, v18);
        sub_1D98B38A4(v13);
        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        goto LABEL_13;
      }

      if (qword_1ED8BD6D0 != -1)
      {
        swift_once();
      }

      sub_1D98DCEB4(0xD00000000000001DLL, 0x80000001D99399B0, 0xD00000000000005ELL, 0x80000001D9939930, 0xD000000000000015, 0x80000001D9939990);

      sub_1D9866358(v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v35);
LABEL_12:
      v19 = 0;
LABEL_13:
      __swift_destroy_boxed_opaque_existential_1(v36);
      return (v19 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B3608(uint64_t a1)
{
  result = sub_1D992AE84();
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

unint64_t sub_1D98B3748()
{
  result = qword_1ED8BF060;
  if (!qword_1ED8BF060)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BF060);
  }

  return result;
}

uint64_t sub_1D98B3794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D98B37DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D98B3840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagsTable.Predicate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98B38A4(uint64_t a1)
{
  v2 = type metadata accessor for TagsTable.Predicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98B3900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48858, &qword_1D9931B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_4()
{

  return swift_beginAccess();
}

void sub_1D98B399C()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
  OUTLINED_FUNCTION_31_5();
  v16 = v3;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v2 - 8);
    v6 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v6;
    v7 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v9 = *(v5 + 64);
    v8 = *(v5 + 72);
    v12[1] = v1;
    v13 = v8;
    v10 = (v5 + 8);
    do
    {
      MEMORY[0x1EEE9AC00](v8);
      MEMORY[0x1EEE9AC00](v12);
      v15(v12 - v11, v7, v2);
      sub_1D98B6650();
      (*v10)(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
      v8 = v13;
      v7 += v13;
      --v4;
    }

    while (v4);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98B3B0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D98BA9C8();
  result = MEMORY[0x1DA739E70](v2, &type metadata for DbTableColumn, v3);
  v5 = 0;
  v13 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 49); ; i += 24)
  {
    if (v6 == v5)
    {

      return v13;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v8 = *(i - 1);
    v9 = *(i - 9);
    v10 = *(i - 17);
    if (*i)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    sub_1D98B6944(&v12, v10, v9, v11 | v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B3BF4(uint64_t a1)
{
  result = MEMORY[0x1DA739E70](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1D98B6B28(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98B3CB4(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SISchemaDeviceSensitivityState(0);
  v4 = v3;
  v5 = sub_1D98BAA44(&qword_1ECB47908, 255, type metadata accessor for SISchemaDeviceSensitivityState, &unk_1D992F484);
  v6 = MEMORY[0x1DA739E70](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1D98B6E74(v11, *(a1 + v8), &unk_1ECB489E0, &unk_1D9932518, type metadata accessor for SISchemaDeviceSensitivityState);
      v8 += 4;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_1D98B3DBC(uint64_t a1)
{
  sub_1D9866E40();
  sub_1D992B1A4();
  sub_1D98BAA44(&qword_1ECB47A00, 255, MEMORY[0x1E69CE6A8], MEMORY[0x1E69E81B8]);
  OUTLINED_FUNCTION_31_5();
  v6[1] = v2;
  v3 = sub_1D98682F0();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA73A2C0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1D98B6C74(v6, v5);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1D98B3ED0(uint64_t a1)
{
  type metadata accessor for SISchemaAnyEventType(0);
  sub_1D98BAA44(&qword_1ECB47960, 255, type metadata accessor for SISchemaAnyEventType, &unk_1D992F530);
  OUTLINED_FUNCTION_31_5();
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1D98B6E74(v7, *(a1 + v4), &qword_1ECB48A18, &qword_1D9932570, type metadata accessor for SISchemaAnyEventType);
      v4 += 4;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

id sub_1D98B403C(char a1, char a2)
{
  v2[OBJC_IVAR___SiriAnalyticsLargeMessageUploadProcessingResult_determinationMade] = a1;
  v2[OBJC_IVAR___SiriAnalyticsLargeMessageUploadProcessingResult_suppressed] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LargeMessageUploadProcessingResult();
  return objc_msgSendSuper2(&v4, sel_init);
}

id LargeMessageUploadProcessingResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LargeMessageUploadProcessingResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LargeMessageUploadProcessingResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id LargeMessageUploadProcessor.init(queue:metastore:logicalClocks:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider];
  type metadata accessor for LargeMessageUploadProcessor();
  swift_allocObject();

  v7 = sub_1D98B42C8(a1, a2, v6);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

id sub_1D98B42C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for LargeMessageUploadProcessor();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D98B4304(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for LargeMessageUploadProcessor();
  sub_1D98BAA44(&qword_1ECB48990, v4, type metadata accessor for LargeMessageUploadProcessor, &protocol conformance descriptor for LargeMessageUploadProcessor);
  v6 = sub_1D992B814();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D98B43BC, v6, v5);
}

uint64_t sub_1D98B43BC()
{
  v1 = v0;
  v2 = v0[7];
  v3 = sub_1D992AE84();
  v1[11] = v3;
  OUTLINED_FUNCTION_6();
  v5 = v4;
  v1[12] = v4;
  v1[13] = *(v6 + 64);
  v7 = swift_task_alloc();
  v1[14] = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  v8 = OUTLINED_FUNCTION_20();
  sub_1D9866DE0(v2, v8, &qword_1ECB481D0, &qword_1D992F9F0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    sub_1D986B804(v8, &qword_1ECB481D0, &qword_1D992F9F0);

    v9 = sub_1D992BB34();
  }

  else
  {
    (*(v5 + 32))(v7, v8, v3);

    swift_task_alloc();
    (*(v5 + 16))();
    v10 = objc_allocWithZone(sub_1D992B1A4());
    OUTLINED_FUNCTION_25_3();
    v9 = sub_1D992B184();
    (*(v5 + 8))(v7, v3);
  }

  v1[15] = v9;
  v11 = v9;
  if (v9)
  {
    v86 = v5;
    v87 = v3;
    if (qword_1ECB480C8 != -1)
    {
      OUTLINED_FUNCTION_11_7(&qword_1ECB480C8);
    }

    v85 = v1[8];
    v12 = v1[6];
    v1[16] = qword_1ECB49720;
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v13 = [v9 description];
    sub_1D992B624();
    v15 = v14;

    v16 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v16, v15);

    MEMORY[0x1DA739C30](0xD000000000000012, 0x80000001D9939B20);
    v17 = [v12 description];
    sub_1D992B624();
    v19 = v18;

    v20 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v20, v19);

    OUTLINED_FUNCTION_1_20();
    sub_1D986A454(v21, v22, v23, v24, v25, v26);

    v1[17] = *(v85 + 24);
    sub_1D98D4BA4();
    v28 = v27;
    if (*(v27 + 16))
    {
      v29 = v1[6];
      OUTLINED_FUNCTION_68();
      sub_1D992BD64();

      OUTLINED_FUNCTION_38();
      v30 = MEMORY[0x1DA739D10](v28, v3);
      MEMORY[0x1DA739C30](v30);

      MEMORY[0x1DA739C30](0xD000000000000012, 0x80000001D9939B20);
      v31 = [v29 description];
      sub_1D992B624();
      v33 = v32;

      v34 = OUTLINED_FUNCTION_27_3();
      MEMORY[0x1DA739C30](v34, v33);

      OUTLINED_FUNCTION_1_20();
      sub_1D986A454(v35, v36, v37, v38, v39, v40);

      v41 = *(v28 + 16);
      v42 = MEMORY[0x1E69E7CC0];
      if (v41)
      {
        v89 = MEMORY[0x1E69E7CC0];
        sub_1D98B9964(0, v41, 0);
        v43 = 0;
        v42 = v89;
        v84 = v28 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
        do
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0) - 8;
          v88 = *v44;
          v45 = OUTLINED_FUNCTION_20();
          v46 = swift_task_alloc();
          v47 = *(v86 + 16);
          v47(v46, v84 + *(v86 + 72) * v43, v87);
          v48 = *(v44 + 56);
          v47(v45, v46, v87);
          sub_1D98FE2D0();
          v50 = v49;
          (*(v86 + 8))(v46, v87);
          *(v45 + v48) = v50;

          v52 = *(v89 + 16);
          v51 = *(v89 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1D98B9964((v51 > 1), v52 + 1, 1);
          }

          ++v43;
          *(v89 + 16) = v52 + 1;
          sub_1D98B9984(v45, v89 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v52);
        }

        while (v41 != v43);
      }

      v1[18] = v42;
      sub_1D98B399C();
      v69 = v68;
      v1[19] = v68;
      v70 = swift_task_alloc();
      v1[20] = v70;
      *v70 = v1;
      v70[1] = sub_1D98B4C34;

      return sub_1D98E0810(v69);
    }

    OUTLINED_FUNCTION_68();
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000020, 0x80000001D9939C20);
    v72 = [v9 description];
    sub_1D992B624();
    v74 = v73;

    v75 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v75, v74);

    MEMORY[0x1DA739C30](0xD000000000000019, 0x80000001D9939C50);
    OUTLINED_FUNCTION_1_20();
    sub_1D98DCECC(v76, v77, v78, v79, v80, v81);

    v82 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
    v67 = sub_1D98B403C(0, 0);
  }

  else
  {
    if (qword_1ECB480C8 != -1)
    {
      OUTLINED_FUNCTION_11_7(&qword_1ECB480C8);
    }

    v53 = v1[6];
    OUTLINED_FUNCTION_68();
    sub_1D992BD64();

    OUTLINED_FUNCTION_38();
    v54 = [v53 description];
    sub_1D992B624();
    v55 = v1;
    v57 = v56;

    v58 = OUTLINED_FUNCTION_27_3();
    MEMORY[0x1DA739C30](v58, v57);
    v1 = v55;

    MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9939A30);
    OUTLINED_FUNCTION_10_7();
    sub_1D98DCECC(v59, v60, v61, v62, v63, v64);

    v65 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
    v66 = OUTLINED_FUNCTION_25_3();
    v67 = sub_1D98B403C(v66, 0);
  }

  v83 = v1[1];

  return v83(v67);
}

uint64_t sub_1D98B4C34(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 168) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D98B4D80, v4, v3);
}

id sub_1D98B4D80()
{
  OUTLINED_FUNCTION_45_0();
  v1 = *(v0 + 136);
  *(v0 + 16) = v1;
  v2 = *(v0 + 144);
  v3 = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = *(v0 + 168);
  *(v0 + 32) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0);
  OUTLINED_FUNCTION_6();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_20();
  v120 = *(v2 + 16);
  if (v120)
  {
    v112 = v0 + 40;
    v113 = v0 + 16;
    v119 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v0 + 96);
    v122 = (v8 + 32);
    v111 = (v8 + 16);
    v118 = *(v4 + 48);
    v121 = (v8 + 8);
    OUTLINED_FUNCTION_38();
    result = v1;
    v10 = 0;
    v114 = v0;
    v116 = v6;
    v117 = v2;
    v109 = v7;
    while (1)
    {
      if (v10 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v0 + 88);
      sub_1D9866DE0(v119 + *(v6 + 72) * v10, v7, &qword_1ECB48998, &qword_1D99323E0);
      v12 = swift_task_alloc();
      v13 = *(v7 + v118);
      v14 = *v122;
      (*v122)(v12, v7, v11);
      if (!v13)
      {
        break;
      }

      v15 = *(v0 + 88);
      v16 = OUTLINED_FUNCTION_20();
      __swift_storeEnumTagSinglePayload(v16, 1, 1, v15);
      sub_1D98B6044();
      v18 = v17;

      *(v0 + 40) = MEMORY[0x1E69E7CC0];
      v19 = swift_task_alloc();
      v19[2] = v16;
      v19[3] = v12;
      v19[4] = v113;
      v19[5] = v112;
      sub_1D98B6408(sub_1D98B99F4, v19, v18);

      v20 = *(v0 + 40);
      v21 = *(v20 + 16);

      if (!v21)
      {
        v32 = v12;

        sub_1D986B804(v16, &qword_1ECB481D0, &qword_1D992F9F0);

        goto LABEL_11;
      }

      v22 = *(v0 + 88);
      v23 = *(v0 + 48);
      sub_1D986B804(v16, &qword_1ECB481D0, &qword_1D992F9F0);

      v24 = swift_task_alloc();
      v25 = *v111;
      v115 = v12;
      (*v111)(v24, v12, v22);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v22);
      OUTLINED_FUNCTION_4_11();
      sub_1D98B5A20(0, 1, v24, v23, v20, v26, sub_1D98F9B78);

      sub_1D986B804(v24, &qword_1ECB481D0, &qword_1D992F9F0);

      v27 = [v23 content];
      if (!v27)
      {
        v80 = *(v0 + 120);
        v81 = *(v0 + 88);

        OUTLINED_FUNCTION_2_19();
        sub_1D992BD64();

        OUTLINED_FUNCTION_38();
        v82 = [v80 description];
        v83 = sub_1D992B624();
        v85 = v84;

        MEMORY[0x1DA739C30](v83, v85);

        OUTLINED_FUNCTION_30_3();
        sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
        v86 = sub_1D992BF34();
        MEMORY[0x1DA739C30](v86);

        OUTLINED_FUNCTION_10_7();
        sub_1D98DCECC(v87, v88, v89, v90, v91, v92);

        v93 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
        v94 = OUTLINED_FUNCTION_25_3();
        v79 = sub_1D98B403C(v94, 1);

        (*v121)(v115, v81);

LABEL_26:

        goto LABEL_27;
      }

      v28 = *(v0 + 88);
      v29 = *(v0 + 56);

      v30 = swift_task_alloc();
      v31 = swift_task_alloc();
      sub_1D9866DE0(v29, v31, &qword_1ECB481D0, &qword_1D992F9F0);
      if (__swift_getEnumTagSinglePayload(v31, 1, v28) == 1)
      {

        sub_1D986B804(v31, &qword_1ECB481D0, &qword_1D992F9F0);

        v7 = v109;
        OUTLINED_FUNCTION_45_0();
      }

      else
      {
        v39 = *(v0 + 48);
        v14(v30, v31, *(v0 + 88));

        v40 = [v39 speechAudioRecord];
        v110 = [v40 interactionId];

        v41 = [v39 speechAudioRecord];
        if (v41)
        {
          v42 = v41;
          v43 = *(v0 + 88);
          v29 = sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
          v44 = swift_task_alloc();
          v25(v44, v30, v43);
          v0 = v114;
          v45 = sub_1D98B5B94(v44);

          [v42 setInteractionId_];
        }

        v46 = *(v0 + 88);
        v47 = *(v0 + 48);
        v48 = OUTLINED_FUNCTION_20();
        v25(v48, v115, v46);
        __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
        OUTLINED_FUNCTION_4_11();
        sub_1D98B5A20(0, 1, v48, v47, v20, v49, sub_1D98F9B78);

        sub_1D986B804(v48, &qword_1ECB481D0, &qword_1D992F9F0);

        v50 = [v47 content];
        if (!v50)
        {
          v95 = *(v0 + 120);
          v96 = *(v0 + 88);

          OUTLINED_FUNCTION_2_19();
          sub_1D992BD64();
          MEMORY[0x1DA739C30](0xD00000000000002FLL, 0x80000001D9939BF0);
          sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
          v97 = sub_1D992BF34();
          MEMORY[0x1DA739C30](v97);

          OUTLINED_FUNCTION_30_3();
          v98 = sub_1D992BF34();
          MEMORY[0x1DA739C30](v98);

          OUTLINED_FUNCTION_10_7();
          sub_1D98DCECC(v99, v100, v101, v102, v103, v104);

          v105 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
          v106 = OUTLINED_FUNCTION_25_3();
          v79 = sub_1D98B403C(v106, 1);

          v107 = *v121;
          (*v121)(v30, v96);
          v107(v115, v96);

          v0 = v114;
          goto LABEL_26;
        }

        v51 = *(v0 + 48);

        v52 = [v51 speechAudioRecord];
        v7 = v109;
        OUTLINED_FUNCTION_45_0();
        if (v53)
        {
          v54 = v53;
          v55 = [v53 interactionId];

          if (v55)
          {
            v56 = *(v0 + 48);

            v57 = [v56 speechAudioRecord];
            [v57 setInteractionId_];
          }
        }

        v58 = *(v0 + 88);

        (*v121)(v30, v58);
      }

      v59 = *(v0 + 120);

      OUTLINED_FUNCTION_2_19();
      sub_1D992BD64();
      MEMORY[0x1DA739C30](v29 + 8, 0x80000001D9939BC0);
      v60 = [v59 description];
      v61 = sub_1D992B624();
      v63 = v62;

      MEMORY[0x1DA739C30](v61, v63);

      OUTLINED_FUNCTION_30_3();
      sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
      v32 = v115;
      v64 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v64);

      OUTLINED_FUNCTION_10_7();
LABEL_20:
      sub_1D98DCECC(v34, v35, v36, v37, v38, 0x80000001D9939AD0);
      ++v10;
      v65 = *(v0 + 88);

      (*v121)(v32, v65);

      v6 = v116;
      v2 = v117;
      if (v120 == v10)
      {

        goto LABEL_23;
      }
    }

    v32 = v12;
LABEL_11:
    v0 = v114;
    OUTLINED_FUNCTION_2_19();
    sub_1D992BD64();

    OUTLINED_FUNCTION_45_0();
    sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
    v33 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v33);

    OUTLINED_FUNCTION_10_7();
    goto LABEL_20;
  }

  v66 = v1;

LABEL_23:
  v67 = *(v0 + 120);

  OUTLINED_FUNCTION_2_19();
  sub_1D992BD64();

  OUTLINED_FUNCTION_38();
  v68 = [v67 description];
  v69 = sub_1D992B624();
  v71 = v70;

  MEMORY[0x1DA739C30](v69, v71);

  OUTLINED_FUNCTION_10_7();
  sub_1D98DCECC(v72, v73, v74, v75, v76, 0x80000001D9939AD0);

  v77 = objc_allocWithZone(type metadata accessor for LargeMessageUploadProcessingResult());
  v78 = OUTLINED_FUNCTION_25_3();
  v79 = sub_1D98B403C(v78, 0);

LABEL_27:
  v108 = *(v0 + 8);

  return v108(v79);
}

uint64_t sub_1D98B5A20(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, void *, uint64_t))
{
  v20[2] = a1;
  v21 = a2 & 1;
  v22 = a3;
  v23 = a4;

  v11 = a7(a6, v20, a5);
  v12 = *(v11 + 16);
  if (v12)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D98B98F8(0, v12, 0);
    v13 = v25;
    v14 = v11 + 32;
    do
    {
      sub_1D98BA058(v14, v24);
      v15 = v24[0];
      sub_1D98BA0B4(v24);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D98B98F8((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 4 * v17 + 32) = v15;
      v14 += 48;
      --v12;
    }

    while (v12);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  if (*(v13 + 16))
  {
    v18 = sub_1D98B649C(a4, v13);
  }

  else
  {

    return 0;
  }

  return v18;
}

id sub_1D98B5B94(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D992AE44();
  v4 = [v2 initWithNSUUID_];

  sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_1D98B5CC4(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v7 = swift_task_alloc();
  v4[5] = v7;
  if (a2)
  {
    sub_1D992AE64();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  v10 = a1;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1D98B5E04;

  return sub_1D98B4304(v10, v7);
}

uint64_t sub_1D98B5E04(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_17();
  *v7 = v6;

  sub_1D986B804(v3, &qword_1ECB481D0, &qword_1D992F9F0);

  (v4)[2](v4, a1);
  _Block_release(v4);

  v8 = *(v6 + 8);

  return v8();
}

uint64_t LargeMessageUploadProcessor.__deallocating_deinit()
{
  LargeMessageUploadProcessor.deinit();

  return swift_deallocClassInstance();
}

void sub_1D98B6044()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  type metadata accessor for IdentifiableTag(0);
  OUTLINED_FUNCTION_39_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_3();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);
    OUTLINED_FUNCTION_37_2();
    v7 = MEMORY[0x1E69E7CC0];
    v8 = &unk_1ECB491B0;
    v10 = *(v9 + 72);
    v18 = v6;
    do
    {
      sub_1D98BA908(v2, v0);
      sub_1D98B37DC(v0 + v6, &v19);
      sub_1D98BA96C(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v8, &qword_1D9932388);
      if (swift_dynamicCast())
      {
        v11 = *(&v20 + 1);
        if ((~*(&v20 + 1) & 0xF000000000000007) != 0)
        {
          v12 = v8;
          v13 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_3();
            sub_1D98BE018();
            v7 = v16;
          }

          v14 = *(v7 + 16);
          if (v14 >= *(v7 + 24) >> 1)
          {
            sub_1D98BE018();
            v7 = v17;
          }

          *(v7 + 16) = v14 + 1;
          v15 = v7 + 16 * v14;
          *(v15 + 32) = v13;
          *(v15 + 40) = v11;
          v8 = v12;
          v6 = v18;
          goto LABEL_12;
        }
      }

      else
      {
        v20 = xmmword_1D99323B0;
        v11 = 0xF000000000000007;
      }

      sub_1D98BAA8C(v20, v11);
LABEL_12:
      v2 += v10;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_7();
}

void sub_1D98B6224()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  type metadata accessor for IdentifiableTag(0);
  OUTLINED_FUNCTION_39_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_24_3();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = *(v4 + 24);
    OUTLINED_FUNCTION_37_2();
    v8 = *(v7 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D98BA908(v2, v0);
      sub_1D98B37DC(v0 + v6, &v19);
      sub_1D98BA96C(v0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491B0, &qword_1D9932388);
      if (swift_dynamicCast())
      {
        if (*(&v17 + 1))
        {
          v19 = v16;
          v20 = v17;
          v21 = v18;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_3();
            sub_1D98BE4A8();
            v9 = v14;
          }

          v10 = *(v9 + 16);
          if (v10 >= *(v9 + 24) >> 1)
          {
            sub_1D98BE4A8();
            v9 = v15;
          }

          *(v9 + 16) = v10 + 1;
          v11 = (v9 + 48 * v10);
          v12 = v19;
          v13 = v21;
          v11[3] = v20;
          v11[4] = v13;
          v11[2] = v12;
          goto LABEL_12;
        }
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
      }

      sub_1D986B804(&v16, &qword_1ECB489F8, &qword_1D9932550);
LABEL_12:
      v2 += v8;
      --v5;
    }

    while (v5);
  }

  OUTLINED_FUNCTION_7();
}

void (*sub_1D98B6408(void (*result)(int *), uint64_t a2, uint64_t a3))(int *)
{
  v4 = result;
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = v5 + 2;
    v8 = *v5;
    v9 = *(v5 - 2);
    v10 = v8;
    sub_1D98907D8(v8);
    v4(&v9);
    result = sub_1D9890810(v10);
    v5 = v7;
  }

  while (!v3);
  return result;
}

uint64_t sub_1D98B649C(void *a1, uint64_t a2)
{
  v2 = a2;
  v13[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C8, &qword_1D9932500);
  sub_1D98BA108();
  if (sub_1D992B754())
  {
  }

  else
  {
    v12 = a1;
    sub_1D986E35C(0, &qword_1ED8BD940, 0x1E69CF600);
    a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489D0, &qword_1D9932508);
    if (swift_dynamicCast())
    {
      sub_1D986D53C(v10, v13);
      v4 = sub_1D98E5A98();
      v5 = v4;
      if (v4)
      {
      }

      sub_1D98B3CB4(v6);
      __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
      v7 = sub_1D992B234();

      if (v5)
      {
        v8 = sub_1D98E5A98();
        if (v8)
        {
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v13);
      if (v7)
      {
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1D986B804(v10, &qword_1ECB489D8, &qword_1D9932510);
      return 0;
    }
  }

  return v2;
}

void sub_1D98B6650()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v26 = v3;
  v4 = sub_1D992AE84();
  v25 = v0;
  v5 = *v0;
  sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
  v31 = v2;
  sub_1D992B5C4();
  OUTLINED_FUNCTION_26_5();
  v29 = ~v7;
  v30 = v8;
  v27 = v5;
  v28 = v4 - 8;
  while (1)
  {
    v9 = v6 & v29;
    if (((1 << (v6 & v29)) & *(v30 + (((v6 & v29) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      v18 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v4 - 8);
      MEMORY[0x1EEE9AC00](((*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v22 = &v24 - v21;
      v23 = v31;
      (*(v20 + 16))(&v24 - v21, v31, v4);
      v33 = *v18;
      sub_1D98B8EC0(v22, v9, isUniquelyReferenced_nonNull_native);
      *v18 = v33;
      (*(v20 + 32))(v26, v23, v4);
      goto LABEL_7;
    }

    v32 = &v24;
    v10 = *(v4 - 8);
    MEMORY[0x1EEE9AC00](v10);
    v12 = &v24 - v11;
    v14 = *(v13 + 72) * v9;
    v15 = v10[2];
    v15(&v24 - v11, *(v27 + 48) + v14, v4);
    sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
    v16 = sub_1D992B5F4();
    v17 = v10[1];
    v17(v12, v4);
    if (v16)
    {
      break;
    }

    v6 = v9 + 1;
  }

  v17(v31, v4);
  v15(v26, *(v27 + 48) + v14, v4);
LABEL_7:
  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98B6944(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v26 = a4 & 0x100;
  v7 = *v4;
  sub_1D992C074();
  sub_1D992B6D4();
  sub_1D992C0C4();
  OUTLINED_FUNCTION_26_5();
  v10 = v9 & ~v8;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v23;

    sub_1D98B9138(a2, a3, a4 & 0x1FF, v10, isUniquelyReferenced_nonNull_native);
    *v23 = v27;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 17) = BYTE1(v26);
    return 1;
  }

  v11 = ~v8;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = v12 + 24 * v10;
    v14 = *(v13 + 16);
    v15 = *(v13 + 17);
    if (*v13 == a2 && *(v13 + 8) == a3)
    {
      break;
    }

    if ((sub_1D992BF64() & 1) != 0 && v14 == a4 && (((v26 != 0) ^ v15) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v14 != a4 || (((v26 != 0) ^ v15) & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_15:

  v19 = *(v7 + 48) + 24 * v10;
  v21 = *v19;
  v20 = *(v19 + 8);
  v22 = *(v19 + 16);
  LOBYTE(v19) = *(v19 + 17);
  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22;
  *(a1 + 17) = v19;

  return 0;
}

BOOL sub_1D98B6B28(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1D992C074();
  sub_1D992B6D4();
  v8 = sub_1D992C0C4();
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
    if (v13 || (sub_1D992BF64() & 1) != 0)
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

  sub_1D98B9324(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_1D98B6C74(uint64_t *a1, void *a2)
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

    v9 = sub_1D992BCA4();

    if (v9)
    {

      sub_1D992B1A4();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = sub_1D992BC94();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_1D98B8C80(v7, result + 1);
        v18 = *(v17 + 16);
        if (*(v17 + 24) <= v18)
        {
          sub_1D98B88E0(v18 + 1);
        }

        v19 = v8;
        sub_1D98B8E3C(v19, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v19;
        return 1;
      }
    }
  }

  else
  {
    sub_1D992B1A4();
    sub_1D992BBC4();
    OUTLINED_FUNCTION_26_5();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v6 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v19 = a2;
        sub_1D98B948C(v19, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_1D992BBD4();

      if (v16)
      {
        break;
      }

      v11 = v14 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v14);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

void sub_1D98B6E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_47_0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *v5;
  sub_1D992C074();
  sub_1D992C0A4();
  v17 = sub_1D992C0C4();
  v18 = ~(-1 << *(v16 + 32));
  while (1)
  {
    v19 = v17 & v18;
    if (((1 << (v17 & v18)) & *(v16 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v16 + 48) + 4 * v19) == v13)
    {
      goto LABEL_6;
    }

    v17 = v19 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v5;
  sub_1D98B95D4(v13, v19, isUniquelyReferenced_nonNull_native, v11, v9, v7);
  *v5 = v21;
LABEL_6:
  *v15 = v13;
  OUTLINED_FUNCTION_46_0();
}

void *sub_1D98B6F6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C0, &qword_1D99324E8);
  v2 = *v0;
  v3 = sub_1D992BD04();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    v9 = *(v2 + 16);
    v26 = v4;
    *(v4 + 16) = v9;
    v10 = 1 << *(v2 + 32);
    v11 = *(v2 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v8 << 6);
        v19 = sub_1D992AE84();
        v20 = *(v19 - 8);
        MEMORY[0x1EEE9AC00](v20);
        v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
        v24 = *(v23 + 72) * v18;
        (*(v20 + 16))(v22, *(v2 + 48) + v24, v19);
        result = (*(v20 + 32))(*(v26 + 48) + v24, v22, v19);
      }

      while (v13);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v14)
      {

        v1 = v25;
        v4 = v26;
        goto LABEL_21;
      }

      v17 = *(v2 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_1D98B71B0()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A00, &qword_1D9932558);
  v7 = OUTLINED_FUNCTION_29_4();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_0_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_3_12();
    while (v5)
    {
      OUTLINED_FUNCTION_3_2();
LABEL_15:
      v17 = 3 * (v13 | (v3 << 6));
      v18 = *(v1 + 48) + 8 * v17;
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      LOBYTE(v18) = *(v18 + 17);
      v22 = *(v7 + 48) + 8 * v17;
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 17) = v18;
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_9_1();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

void *sub_1D98B72A8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489A8, &unk_1D99324C0);
  v2 = *v0;
  v3 = sub_1D992BD04();
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

void sub_1D98B7400()
{
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
  v7 = OUTLINED_FUNCTION_29_4();
  if (*(v1 + 16))
  {
    v8 = OUTLINED_FUNCTION_0_30();
    if (v11)
    {
      v12 = v8 >= v10;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      memmove(v8, v2, 8 * v9);
    }

    OUTLINED_FUNCTION_3_12();
    for (; v5; v19 = v18)
    {
      OUTLINED_FUNCTION_3_2();
LABEL_15:
      v17 = v13 | (v3 << 6);
      v18 = *(*(v1 + 48) + 8 * v17);
      *(*(v7 + 48) + 8 * v17) = v18;
    }

    v14 = v3;
    while (1)
    {
      v3 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        goto LABEL_17;
      }

      ++v14;
      if (*(v2 + v3))
      {
        OUTLINED_FUNCTION_9_1();
        v5 = v16 & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v6 = v7;
  }
}

void *sub_1D98B74DC(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = OUTLINED_FUNCTION_29_4();
  if (*(v3 + 16))
  {
    result = OUTLINED_FUNCTION_0_30();
    if (v10)
    {
      v11 = result >= v9;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      result = memmove(result, v4, 8 * v8);
    }

    v12 = 0;
    *(v6 + 16) = *(v3 + 16);
    v13 = 1 << *(v3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v3 + 56);
    for (i = (v13 + 63) >> 6; v15; *(*(v6 + 48) + 4 * v18) = *(*(v3 + 48) + 4 * v18))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v18 = v17 | (v12 << 6);
LABEL_17:
      ;
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= i)
      {
        goto LABEL_19;
      }

      v20 = *(v4 + v12);
      ++v19;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v18 = __clz(__rbit64(v20)) | (v12 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v6;
  }

  return result;
}

uint64_t sub_1D98B75E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C0, &qword_1D99324E8);
  result = sub_1D992BD14();
  v5 = result;
  if (*(v3 + 16))
  {
    v34 = v1;
    v35 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v36 = result;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v38 = (v10 - 1) & v10;
LABEL_12:
        v16 = v13 | (v6 << 6);
        v17 = sub_1D992AE84();
        v37 = &v33;
        v18 = *(v17 - 8);
        MEMORY[0x1EEE9AC00](v18);
        v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = v21;
        v23 = *(v3 + 48);
        v24 = *(v22 + 72);
        (*(v18 + 16))(v20, v23 + v24 * v16, v17);
        v5 = v36;
        sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
        result = sub_1D992B5C4();
        v25 = -1 << *(v5 + 32);
        v26 = result & ~v25;
        v27 = v26 >> 6;
        if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
        {
          break;
        }

        v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        result = (*(v18 + 32))(*(v5 + 48) + v28 * v24, v20, v17);
        ++*(v5 + 16);
        v10 = v38;
        v3 = v35;
        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v34;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v38 = (v15 - 1) & v15;
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

uint64_t sub_1D98B78EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A00, &qword_1D9932558);
  result = sub_1D992BD14();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v30 = *(v16 + 17);
        sub_1D992C074();

        sub_1D992B6D4();
        result = sub_1D992C0C4();
        v20 = -1 << *(v5 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = *(v5 + 48) + 24 * v23;
        *v28 = v17;
        *(v28 + 8) = v18;
        *(v28 + 16) = v19;
        *(v28 + 17) = v30;
        ++*(v5 + 16);
        v3 = v29;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
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

uint64_t sub_1D98B7B44(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489A8, &unk_1D99324C0);
  result = sub_1D992BD14();
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
        sub_1D992C074();

        sub_1D992B6D4();
        result = sub_1D992C0C4();
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

uint64_t sub_1D98B7D78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
  result = sub_1D992BD14();
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
        result = sub_1D992BBC4();
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

void sub_1D98B7F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_17_5(v10, v11, v12);
  v13 = sub_1D992BD14();
  if (*(v7 + 16))
  {
    v28 = v6;
    v14 = 0;
    OUTLINED_FUNCTION_5_12();
    if (v6)
    {
      while (1)
      {
        OUTLINED_FUNCTION_44_0();
LABEL_9:
        v19 = *(*(v7 + 48) + 4 * (v15 | (v14 << 6)));
        sub_1D992C074();
        sub_1D992C0A4();
        sub_1D992C0C4();
        OUTLINED_FUNCTION_14_6();
        if (v20)
        {
          break;
        }

        OUTLINED_FUNCTION_42_0();
LABEL_18:
        OUTLINED_FUNCTION_13_5(v21);
        *(v27 + 4 * v26) = v19;
        ++*(v13 + 16);
        if (!v6)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_41();
      while (++v22 != v24 || (v23 & 1) == 0)
      {
        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        if (*(v8 + 8 * v22) != -1)
        {
          OUTLINED_FUNCTION_40_1();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v16 = v14;
      while (1)
      {
        v14 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v14 >= v9)
        {

          v6 = v28;
          goto LABEL_22;
        }

        ++v16;
        if (*(v7 + 56 + 8 * v14))
        {
          OUTLINED_FUNCTION_9_1();
          v6 = (v18 & v17);
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    *v6 = v13;
    OUTLINED_FUNCTION_46_0();
  }
}

uint64_t sub_1D98B80D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489C0, &qword_1D99324E8);
  result = sub_1D992BD14();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v32 = v1;
  v33 = v3;
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
  v34 = result;
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
        v37 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      sub_1D98B9718(0, (v31 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v37 = (v10 - 1) & v10;
LABEL_12:
    v16 = v13 | (v6 << 6);
    v17 = sub_1D992AE84();
    v36 = &v32;
    v18 = *(v17 - 8);
    MEMORY[0x1EEE9AC00](*(v18 + 64));
    v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *(v18 + 72);
    v22 = *(v3 + 48) + v21 * v16;
    v35 = *(v18 + 32);
    v35(v20, v22, v17);
    v5 = v34;
    sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
    result = sub_1D992B5C4();
    v23 = -1 << *(v5 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    result = (v35)(*(v5 + 48) + v26 * v21, v20, v17);
    ++*(v5 + 16);
    v10 = v37;
    v3 = v33;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v12 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D98B8404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A00, &qword_1D9932558);
  result = sub_1D992BD14();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v30 = v3;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      sub_1D98B9718(0, (v29 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v29;
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
    v16 = *(v3 + 48) + 24 * (v13 | (v6 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v31 = *(v16 + 17);
    sub_1D992C074();
    sub_1D992B6D4();
    result = sub_1D992C0C4();
    v20 = -1 << *(v5 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = *(v5 + 48) + 24 * v23;
    *v28 = v17;
    *(v28 + 8) = v18;
    *(v28 + 16) = v19;
    *(v28 + 17) = v31;
    ++*(v5 + 16);
    v3 = v30;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v12 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D98B8684(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489A8, &unk_1D99324C0);
  result = sub_1D992BD14();
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
      sub_1D98B9718(0, (v28 + 63) >> 6, v3 + 56);
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
    sub_1D992C074();
    sub_1D992B6D4();
    result = sub_1D992C0C4();
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

uint64_t sub_1D98B88E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
  result = sub_1D992BD14();
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
      sub_1D98B9718(0, (v25 + 63) >> 6, v3 + 56);
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
    result = sub_1D992BBC4();
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

void sub_1D98B8B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_17_5(v10, v11, v12);
  v13 = sub_1D992BD14();
  if (!*(v7 + 16))
  {
LABEL_24:

    *v6 = v13;
    OUTLINED_FUNCTION_46_0();
    return;
  }

  v31 = v6;
  v14 = 0;
  v15 = (v7 + 56);
  OUTLINED_FUNCTION_5_12();
  if (!v6)
  {
LABEL_4:
    v17 = v14;
    while (1)
    {
      v14 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v14 >= v9)
      {
        break;
      }

      ++v17;
      if (v15[v14])
      {
        OUTLINED_FUNCTION_9_1();
        v6 = (v19 & v18);
        goto LABEL_9;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      sub_1D98B9718(0, (v29 + 63) >> 6, v7 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_26_5();
      *v15 = v30;
    }

    v6 = v31;
    *(v7 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_0();
LABEL_9:
    v20 = *(*(v7 + 48) + 4 * (v16 | (v14 << 6)));
    sub_1D992C074();
    sub_1D992C0A4();
    sub_1D992C0C4();
    OUTLINED_FUNCTION_14_6();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_42_0();
LABEL_18:
    OUTLINED_FUNCTION_13_5(v22);
    *(v28 + 4 * v27) = v20;
    ++*(v13 + 16);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_41();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v8 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_40_1();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_1D98B8C80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489B8, &qword_1D99324E0);
    v2 = sub_1D992BD24();
    v15 = v2;
    sub_1D992BC84();
    while (1)
    {
      if (!sub_1D992BCB4())
      {

        return v2;
      }

      sub_1D992B1A4();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1D98B88E0(v3 + 1);
      }

      v2 = v15;
      result = sub_1D992BBC4();
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1D98B8E3C(uint64_t a1, uint64_t a2)
{
  sub_1D992BBC4();
  result = sub_1D992BC74();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D98B8EC0(uint64_t a1, unint64_t a2, char a3)
{
  v24 = a1;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D98B80D8(v5 + 1);
      goto LABEL_8;
    }

    if (v6 <= v5)
    {
      sub_1D98B75E0(v5 + 1);
LABEL_8:
      v23 = v3;
      v7 = *v3;
      v8 = sub_1D992AE84();
      sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
      v9 = sub_1D992B5C4();
      v10 = ~(-1 << *(v7 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v11 = *(v8 - 8);
        MEMORY[0x1EEE9AC00](v11);
        v13 = &v23 - v12;
        (*(v11 + 16))(&v23 - v12, *(v7 + 48) + *(v14 + 72) * a2, v8);
        sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
        v15 = sub_1D992B5F4();
        (*(v11 + 8))(v13, v8);
        if (v15)
        {
          goto LABEL_16;
        }

        v9 = a2 + 1;
      }

      v3 = v23;
      goto LABEL_13;
    }

    sub_1D98B6F6C();
  }

LABEL_13:
  v16 = *v3;
  *(v16 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v17 = *(v16 + 48);
  v18 = sub_1D992AE84();
  result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * a2, v24, v18);
  v20 = *(v16 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_16:
    result = sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v22;
  }

  return result;
}

void sub_1D98B9138(uint64_t a1, uint64_t a2, __int16 a3, unint64_t a4, char a5)
{
  v9 = a3 & 0x100;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    v29 = a3;
    if (a5)
    {
      sub_1D98B8404(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1D98B71B0();
LABEL_22:
        LOBYTE(a3) = v29;
        goto LABEL_23;
      }

      sub_1D98B78EC(v10 + 1);
    }

    v12 = *v5;
    sub_1D992C074();
    sub_1D992B6D4();
    v13 = sub_1D992C0C4();
    v14 = v12 + 56;
    v15 = -1 << *(v12 + 32);
    a4 = v13 & ~v15;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v16 = ~v15;
      v17 = *(v12 + 48);
      LOBYTE(a3) = v29;
      while (1)
      {
        v18 = v17 + 24 * a4;
        v19 = *(v18 + 16);
        v20 = *(v18 + 17);
        if (*v18 == a1 && *(v18 + 8) == a2)
        {
          if (v19 == a3 && (((v9 != 0) ^ v20) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v22 = sub_1D992BF64();
          LOBYTE(a3) = v29;
          if ((v22 & 1) != 0 && v19 == v29 && (((v9 != 0) ^ v20) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        a4 = (a4 + 1) & v16;
        if (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v23 = *v28;
  *(*v28 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v24 = *(v23 + 48) + 24 * a4;
  *v24 = a1;
  *(v24 + 8) = a2;
  *(v24 + 16) = a3;
  *(v24 + 17) = BYTE1(v9);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_26:
    sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }
}

unint64_t sub_1D98B9324(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D98B8684(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1D98B7B44(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_1D992C074();
      sub_1D992B6D4();
      result = sub_1D992C0C4();
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
        if (v18 || (sub_1D992BF64() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1D98B72A8();
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
    result = sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void sub_1D98B948C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D98B88E0(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1D98B7D78(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = sub_1D992BBC4();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1D992B1A4();
        v15 = *(*(v12 + 48) + 8 * a2);
        v16 = sub_1D992BBD4();

        if (v16)
        {
          goto LABEL_15;
        }

        v13 = a2 + 1;
      }
    }

    sub_1D98B7400();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = a1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

void sub_1D98B95D4(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v9 = a1;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v12 = OUTLINED_FUNCTION_36_3(v10);
      sub_1D98B8B04(v12, v13, v14, v15, v16, v17);
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      v22 = OUTLINED_FUNCTION_36_3(v10);
      sub_1D98B7F88(v22, v23, v24, v25, v26, v27);
LABEL_10:
      v28 = *v6;
      sub_1D992C074();
      sub_1D992C0A4();
      sub_1D992C0C4();
      OUTLINED_FUNCTION_26_5();
      v31 = ~v30;
      while (1)
      {
        a2 = v29 & v31;
        if (((*(v28 + 56 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
        {
          goto LABEL_7;
        }

        a6(0);
        if (*(*(v28 + 48) + 4 * a2) == v9)
        {
          goto LABEL_15;
        }

        v29 = a2 + 1;
      }
    }

    sub_1D98B74DC(a4, a5);
  }

LABEL_7:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 4 * a2) = v9;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_15:
    sub_1D992BFB4();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

uint64_t sub_1D98B9718(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D99323C0;
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

char *sub_1D98B98F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D98BA1BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D98B9964(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D98BA374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D98B9984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LargeMessageUploadProcessor.process(uploadEvent:requestIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x78);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D98B9BB0;

  return v9(a1, a2);
}

uint64_t sub_1D98B9BB0(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_17();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(a1);
}

void sub_1D98B9CA4()
{
  OUTLINED_FUNCTION_15_4();
  sub_1D98BA774();
  *v0 = v1;
}

void *sub_1D98B9CEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D98BA57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D98B9D0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D98BA67C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D98B9DD0()
{
  OUTLINED_FUNCTION_7_10();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_19_4();
    if (v3)
    {
      OUTLINED_FUNCTION_48(v7, v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_23_5(v14 - 32);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_4();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_6();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D98B9E90()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D98B9F50;

  return sub_1D98B5CC4(v2, v3, v5, v4);
}

uint64_t sub_1D98B9F50()
{
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_1D98BA108()
{
  result = qword_1ECB47990;
  if (!qword_1ECB47990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB489C8, &qword_1D9932500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47990);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void *sub_1D98BA1BC(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489E8, &unk_1D9932520);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_1D98BEAA0(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D98BA2B4()
{
  OUTLINED_FUNCTION_7_10();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_0(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_19_4();
    if (v3)
    {
      OUTLINED_FUNCTION_48(v7, v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      OUTLINED_FUNCTION_23_5(v14 - 32);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_4();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_16_6();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_35_3();
  if (!v5)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1D98BA374(void *result, int64_t a2, char a3, uint64_t a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A20, &qword_1D9932578);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48998, &qword_1D99323E0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1D98BEB00(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D98BA57C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D98BEA80((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1D98BA67C(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A08, &qword_1D9932560);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1D98BEA80(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1D98BA774()
{
  OUTLINED_FUNCTION_6_2();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_6_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_35_3();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_48(v0, v1, v2, v3, v4, v5);
  v17 = *(v9(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_23_5(v21 - v19);
LABEL_18:
  v23 = *(v9(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v7(v10 + v24, v15, &v20[v24]);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98BA908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentifiableTag(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98BA96C(uint64_t a1)
{
  v2 = type metadata accessor for IdentifiableTag(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D98BA9C8()
{
  result = qword_1ED8BD838[0];
  if (!qword_1ED8BD838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8BD838);
  }

  return result;
}

uint64_t sub_1D98BAA44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1D98BAA8C(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1D9890810(a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return sub_1D992BD04();
}

void OUTLINED_FUNCTION_30_3()
{

  JUMPOUT(0x1DA739C30);
}

uint64_t sub_1D98BABEC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A28, &qword_1D9935500);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ECB49688 = result;
  return result;
}

void sub_1D98BAC2C()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    deviceSupportsGenerativeModelSystems = MobileGestalt_get_deviceSupportsGenerativeModelSystems();
  }

  else
  {
    deviceSupportsGenerativeModelSystems = 0;
  }

  byte_1ECB49690 = deviceSupportsGenerativeModelSystems;
}

void sub_1D98BAC78()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    byte_1ED8BFBD1 = internalBuild;
  }

  else
  {
    __break(1u);
  }
}

id sub_1D98BACC0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1D98BB2A0(0xD000000000000022, 0x80000001D9939E60);
  if (result)
  {
    qword_1ECB496B8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D98BAD18()
{
  result = sub_1D98BAD3C();
  byte_1ECB496B0 = result & 1;
  return result;
}

uint64_t sub_1D98BAD3C()
{
  if (qword_1ECB47D48 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECB496B8;
  v1 = sub_1D992B614();
  LODWORD(v0) = [v0 BOOLForKey_];

  if (v0)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    v2 = sub_1D98DCE30();
    sub_1D98DD144(0xD000000000000064, 0x80000001D9939EB0, 0xD000000000000014, 0x80000001D9939F20, v2);
    goto LABEL_7;
  }

  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  if ((byte_1ED8BFBD1 & 1) == 0)
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    if (*(sub_1D98DCE30() + 24) == 1)
    {
      v4 = sub_1D98BAF44();
      sub_1D986A454(v4, v5, 0xD000000000000064, 0x80000001D9939EB0, 0xD000000000000014, 0x80000001D9939F20);

      return 0;
    }

LABEL_7:

    return 0;
  }

  return 1;
}

uint64_t sub_1D98BAF44()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000034, 0x80000001D9939F40);
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  if (byte_1ED8BFBD1)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (byte_1ED8BFBD1)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x1DA739C30](v0, v1);

  MEMORY[0x1DA739C30](0x6975426465657320, 0xEC000000203A646CLL);
  MEMORY[0x1DA739C30](0x65736C6166, 0xE500000000000000);
  MEMORY[0x1DA739C30](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D98BB068()
{
  result = sub_1D992B054();
  if (result)
  {
    v1 = result;
    v2 = [result isProvisional];

    if (!v2)
    {
      return 1;
    }

    if (qword_1ECB47D40 != -1)
    {
      OUTLINED_FUNCTION_0_31(&qword_1ECB47D40);
    }

    return byte_1ECB496B0 == 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static RuntimeConfigurationShim.canCollectProvisional.getter()
{
  if (qword_1ECB47D40 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_1ECB47D40);
  }

  return byte_1ECB496B0;
}

BOOL static RuntimeConfigurationShim.canCollect(anyEvent:)(void *a1)
{
  if ([a1 anyEventType] != 7)
  {
    return 1;
  }

  if (qword_1ECB47D40 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_1ECB47D40);
  }

  return byte_1ECB496B0 == 1;
}

id RuntimeConfigurationShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RuntimeConfigurationShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeConfigurationShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RuntimeConfigurationShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuntimeConfigurationShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D98BB2A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D992B614();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t static LogicalClockSummary.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECB48A30 = a1;
  return result;
}

uint64_t sub_1D98BB444@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB48A30;
  return result;
}

uint64_t sub_1D98BB490(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB48A30 = v1;
  return result;
}

uint64_t LogicalClockSummary.clockIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier;
  sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id LogicalClockSummary.__allocating_init(clockIdentifier:derivativeClockIdentifiers:active:startedOn:endedOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = a3;
  v13 = objc_allocWithZone(v6);
  return LogicalClockSummary.init(clockIdentifier:derivativeClockIdentifiers:active:startedOn:endedOn:)(a1, a2, v10, a4, a5, a6 & 1);
}

id LogicalClockSummary.init(clockIdentifier:derivativeClockIdentifiers:active:startedOn:endedOn:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier;
  v14 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v16 = v15;
  (*(v17 + 16))(&v6[v13], a1, v14);
  *&v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers] = a2;
  v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_active] = a3;
  *&v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_startedOn] = a4;
  v18 = &v6[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn];
  *v18 = a5;
  v18[8] = a6 & 1;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for LogicalClockSummary(0);
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v16 + 8))(a1, v14);
  return v19;
}

uint64_t type metadata accessor for LogicalClockSummary(uint64_t a1)
{
  result = qword_1ED8BF678;
  if (!qword_1ED8BF678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void LogicalClockSummary.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  sub_1D986E35C(0, &qword_1ED8BD640, 0x1E696AFB0);
  v12 = sub_1D992BB94();
  if (!v12 || (v13 = v12, v39 = v9, v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0), MEMORY[0x1EEE9AC00](((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0)), v16 = &v38 - v15, __swift_storeEnumTagSinglePayload(&v38 - v15, 1, 1, v4), sub_1D98BBC34(), sub_1D992BEF4(), v13, __swift_getEnumTagSinglePayload(v16, 1, v4) == 1))
  {

    type metadata accessor for LogicalClockSummary(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v17 = *(v6 + 32);
  v18 = v16;
  v19 = v6;
  v17(v11, v18, v4);
  v20 = v39;
  v17(v39, v11, v4);
  (*(v19 + 16))(&v1[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier], v20, v4);
  v21 = sub_1D992BBA4();
  if (v21)
  {
    v41 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48A40, &unk_1D99325C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48740, &qword_1D99313F0);
    v22 = swift_dynamicCast();
    v23 = v40;
    if (!v22)
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  *&v1[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers] = v23;
  v24 = OUTLINED_FUNCTION_35_4();
  v25 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_active] = v25;
  v26 = OUTLINED_FUNCTION_22_5();
  v27 = [a1 decodeInt64ForKey_];

  if ((v27 & 0x8000000000000000) == 0)
  {
    *&v2[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_startedOn] = v27;
    v28 = sub_1D992B614();
    v29 = [a1 containsValueForKey_];

    if (v29)
    {
      v30 = sub_1D992B614();
      v31 = [a1 decodeInt64ForKey_];

      v32 = OUTLINED_FUNCTION_9_2();
      v33(v32);
      if ((v31 & 0x8000000000000000) == 0)
      {
LABEL_14:
        v36 = &v2[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn];
        *v36 = v31;
        v36[8] = v29 ^ 1;
        v37 = type metadata accessor for LogicalClockSummary(0);
        v42.receiver = v2;
        v42.super_class = v37;
        objc_msgSendSuper2(&v42, sel_init);

        return;
      }

      __break(1u);
    }

    v34 = OUTLINED_FUNCTION_9_2();
    v35(v34);
    v31 = 0;
    goto LABEL_14;
  }

  __break(1u);
}

unint64_t sub_1D98BBC34()
{
  result = qword_1ED8BD8D8;
  if (!qword_1ED8BD8D8)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8D8);
  }

  return result;
}

void sub_1D98BBCA8(void *a1)
{
  v2 = v1;
  v4 = sub_1D992AE44();
  v5 = sub_1D992B614();
  OUTLINED_FUNCTION_26_6(v5, sel_encodeObject_forKey_);

  if (*(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers))
  {
    sub_1D992AE84();
    sub_1D992B7A4();
  }

  v6 = sub_1D992B614();
  OUTLINED_FUNCTION_26_6(v6, sel_encodeObject_forKey_);
  swift_unknownObjectRelease();

  v7 = *(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_active);
  v8 = OUTLINED_FUNCTION_35_4();
  [a1 encodeBool:v7 forKey:v8];

  if ((*(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_startedOn) & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = OUTLINED_FUNCTION_22_5();
  OUTLINED_FUNCTION_26_6(v9, sel_encodeInt64_forKey_);

  v10 = (v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn);
  if (*(v2 + OBJC_IVAR___SiriAnalyticsLogicalClockSummary_endedOn + 8))
  {
    return;
  }

  v11 = *v10;
  if (*v10 < 0)
  {
    goto LABEL_10;
  }

  v12 = sub_1D992B614();
  [a1 encodeInt64:v11 forKey:v12];
}

id LogicalClockSummary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL Sequence<>.containsClockIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6();
  v20 = v8;
  MEMORY[0x1EEE9AC00](((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v7, v3, a2);
  OUTLINED_FUNCTION_33();
  sub_1D992B744();
  swift_getAssociatedConformanceWitness();
  v10 = &unk_1ED8BF000;
  while (1)
  {
    sub_1D992BC14();
    v11 = v21;
    if (!v21)
    {
LABEL_11:
      v15 = OUTLINED_FUNCTION_33_4();
      v16(v15);
      return v11 != 0;
    }

    if (sub_1D992AE54())
    {
      break;
    }

    v12 = *&v11[v10[386]];
    if (v12)
    {
      v13 = *(v12 + 16);

      v14 = 0;
      while (v13 != v14)
      {
        sub_1D992AE84();
        ++v14;
        if (sub_1D992AE54())
        {

          goto LABEL_11;
        }
      }

      v10 = &unk_1ED8BF000;
    }
  }

  v18 = OUTLINED_FUNCTION_33_4();
  v19(v18);

  return v11 != 0;
}

char *Sequence<>.indexedByClockIdentifier()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6();
  v5 = v4;
  MEMORY[0x1EEE9AC00](*(v6 + 64));
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6();
  v67 = v10;
  MEMORY[0x1EEE9AC00](((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = &v66 - v12;
  (*(v5 + 16))(v8, v2, a1);
  sub_1D992B744();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = MEMORY[0x1E69E7CC8];
  v68 = v13;
  v69 = AssociatedTypeWitness;
  while (1)
  {
LABEL_2:
    sub_1D992BC14();
    v15 = v82;
    if (!v82)
    {
      (*(v67 + 8))(v13, AssociatedTypeWitness);
      return v14;
    }

    v16 = OBJC_IVAR___SiriAnalyticsLogicalClockSummary_clockIdentifier;
    sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](v17);
    v76 = v18;
    v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78 = v20;
    v79 = v21;
    v80 = *(v21 + 16);
    v81 = v21 + 16;
    v80(v19, &v15[v16]);
    v77 = v15;
    swift_isUniquelyReferenced_nonNull_native();
    v82 = v14;
    v22 = sub_1D9889568();
    if (__OFADD__(*(v14 + 2), (v23 & 1) == 0))
    {
      break;
    }

    v24 = v22;
    v25 = v23;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A50, &unk_1D99325D8);
    if (sub_1D992BE34())
    {
      v26 = sub_1D9889568();
      v28 = v77;
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_33;
      }

      v24 = v26;
      v29 = v78;
    }

    else
    {
      v28 = v77;
      v29 = v78;
    }

    v14 = v82;
    if (v25)
    {
      v30 = *(v82 + 7);
      v31 = *(v30 + 8 * v24);
      *(v30 + 8 * v24) = v28;

      v32 = OUTLINED_FUNCTION_31_6(v79);
      v33(v32);
    }

    else
    {
      OUTLINED_FUNCTION_30_4(&v82[8 * (v24 >> 6)]);
      v34 = v79;
      (v80)(v35 + *(v79 + 72) * v24, v19, v29);
      *(*(v14 + 7) + 8 * v24) = v28;
      v36 = OUTLINED_FUNCTION_31_6(v34);
      v37(v36);
      v38 = *(v14 + 2);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_32;
      }

      *(v14 + 2) = v40;
    }

    v41 = *&v28[OBJC_IVAR___SiriAnalyticsLogicalClockSummary_derivativeClockIdentifiers];
    if (v41)
    {
      v74 = *(v41 + 16);
      if (v74)
      {
        OUTLINED_FUNCTION_28_4();
        v73 = (v41 + v42);
        v72 = v43 + 8;

        v44 = 0;
        v71 = v41;
        while (v44 < *(v41 + 16))
        {
          v45 = *(v79 + 72);
          MEMORY[0x1EEE9AC00](v73);
          v47 = &v66 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
          (v80)(v47);
          v48 = v28;
          swift_isUniquelyReferenced_nonNull_native();
          v82 = v14;
          v49 = sub_1D9889568();
          v51 = v50;
          if (__OFADD__(*(v14 + 2), (v50 & 1) == 0))
          {
            goto LABEL_29;
          }

          v52 = v49;
          if (sub_1D992BE34())
          {
            v53 = sub_1D9889568();
            if ((v51 & 1) != (v54 & 1))
            {
              goto LABEL_33;
            }

            v52 = v53;
          }

          v55 = v78;
          v14 = v82;
          if (v51)
          {
            v56 = *(v82 + 7);
            v57 = *(v56 + 8 * v52);
            *(v56 + 8 * v52) = v48;

            v58 = OUTLINED_FUNCTION_32_5();
            v59(v58);
          }

          else
          {
            OUTLINED_FUNCTION_30_4(&v82[8 * (v52 >> 6)]);
            (v80)(v60 + v52 * v45, v47, v55);
            *(*(v14 + 7) + 8 * v52) = v48;
            v61 = OUTLINED_FUNCTION_32_5();
            v62(v61);
            v63 = *(v14 + 2);
            v39 = __OFADD__(v63, 1);
            v64 = v63 + 1;
            if (v39)
            {
              goto LABEL_30;
            }

            *(v14 + 2) = v64;
          }

          ++v44;
          v28 = v77;
          v41 = v71;
          if (v74 == v44)
          {

            v13 = v68;
            AssociatedTypeWitness = v69;
            goto LABEL_2;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

id sub_1D98BC820()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_1D986E35C(0, &qword_1ED8BDB90, off_1E8586448);
    v4 = sub_1D992B624();
    v6 = sub_1D988045C(v4, v5);
    v7 = *(v0 + 16);
    *(v3 + 16) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t LogicalClocksService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t LogicalClocksService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98BC8E8()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_1D98BC820();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D98BCA0C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A58, &unk_1D99325E8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D98BCCBC;
  v0[13] = &block_descriptor_7;
  v0[14] = v2;
  [v1 fetchLogicalClocksWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98BCA0C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_1D98BCB84;
  }

  else
  {
    v5 = sub_1D98BCB10;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}