uint64_t sub_1D4DA5D54()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 2056);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_170();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA5DD4()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 2032);
  v18 = *(v0 + 2016);
  v20 = *(v0 + 1016);
  v2 = swift_task_alloc();
  *(v0 + 2080) = v2;
  *(v2 + 16) = *(v0 + 1000);
  *(v2 + 32) = v18;
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v18, *(&v18 + 1), v20);
  v19 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 2088) = v11;
  *v11 = v12;
  v11[1] = sub_1D4DA5F30;
  v13 = *(v0 + 1632);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1048);
  v16 = *(v0 + 1016);

  return v19(v13, &unk_1D4E0E548, v2, v15, v14, v16);
}

uint64_t sub_1D4DA5F30()
{
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 2096) = v0;

  v4 = OUTLINED_FUNCTION_292();
  v5(v4);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4DA60DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = v12;
  v174 = v12 + 89;
  v14 = v12[255];
  v15 = v12[251];
  v16 = v12[124];
  OUTLINED_FUNCTION_62();
  v17();
  OUTLINED_FUNCTION_93(v16 + v15, (v12 + 65));
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  v18 = OUTLINED_FUNCTION_146_0();
  v14(v18);
  v176 = v12[262];
  v178 = v12;
  while (1)
  {
    v19 = sub_1D4E0CCB0();
    v20 = v13[115];
    if (v20 == v19)
    {
      break;
    }

    OUTLINED_FUNCTION_136();
    v21 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_145_0();
    sub_1D4E0CC60();
    if ((v21 & 1) == 0)
    {
      sub_1D4E0CF80();
      __break(1u);
LABEL_48:
      v161 = v13[182];
      v155 = sub_1D4E0CF80();
      if (v161 == 8)
      {
        v162 = v155;
        v163 = v13[184];
        v164 = v13[181];
        v165 = v13[177];
        v13[105] = v162;
        (*(v164 + 16))(v163, v13 + 105, v165);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      __break(1u);
LABEL_53:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v155, v156, v157);
    }

    v22 = v178[205];
    v23 = v178[130];
    v24 = (v178[246] + 24 * v20);
    v25 = v24[4];
    v178[252] = v25;
    v178[253] = v24[5];
    v178[254] = v24[6];
    sub_1D4E0CA10();
    sub_1D4E0CA10();
    sub_1D4E0CCF0();
    v178[113] = v25;
    sub_1D4E0CA10();
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_5_0();
    swift_getWitnessTable();
    sub_1D4E0C9D0();

    OUTLINED_FUNCTION_118_0(v22, 1, v23);
    if (v26)
    {
      v54 = v178[205];
      v55 = v178[201];
      v56 = v178[131];
      v57 = *(v55 + 8);
      v178[255] = v57;
      v178[256] = (v55 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57(v54, v56);
      sub_1D4E0CD60();
      if (v176)
      {
        v58 = v178[124];

        goto LABEL_31;
      }

      v94 = v178[126];
      v178[257] = *(v94 + 56);
      v178[258] = (v94 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;
      v95 = sub_1D4E0C870();
      v178[259] = OUTLINED_FUNCTION_111(v95);
      v96 = sub_1D4D8E454();
      OUTLINED_FUNCTION_110(v96);
      OUTLINED_FUNCTION_152_0();
LABEL_40:
      OUTLINED_FUNCTION_156();

      return MEMORY[0x1EEE6DFA0](v155, v156, v157);
    }

    v27 = v178[251];
    v28 = v178[130];
    v29 = v178[124];

    OUTLINED_FUNCTION_237();
    OUTLINED_FUNCTION_267();
    v30();
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_162_0();
    v31();
    v32 = OUTLINED_FUNCTION_93_0();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
    OUTLINED_FUNCTION_93(v29 + v27, (v178 + 17));
    OUTLINED_FUNCTION_141_0();
    sub_1D4E0CD00();
    v13 = v178;
    sub_1D4E0CCD0();
    swift_endAccess();
    v35 = OUTLINED_FUNCTION_180();
    v36(v35);
  }

  v37 = v13[144];
  v38 = v13[124];
  *(v38 + *(*v38 + 216)) = 1;
  v13[108] = sub_1D4E0CC80();
  v39 = *(*v38 + 160);
  v13[263] = v39;
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v13[264] = *(v38 + v39);
  sub_1D4DB94C8(255);
  OUTLINED_FUNCTION_261();
  v13[265] = swift_getFunctionTypeMetadata1();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_211();
  v13[266] = OUTLINED_FUNCTION_221(v40);
  v13[107] = sub_1D4E0CC20();
  if (v13[107] != sub_1D4E0CCB0())
  {
    OUTLINED_FUNCTION_91();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_277();
    if ((v37 & 1) == 0)
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_19_0();
    v41();
LABEL_9:
    (*(v13[181] + 32))(v13[188], v13[184], v13[177]);
    OUTLINED_FUNCTION_113_0();
    sub_1D4E0CCF0();
  }

  v42 = v13[177];
  OUTLINED_FUNCTION_172();
  v46 = OUTLINED_FUNCTION_82_0(v43, v44, v45, v42);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, v47, v42);
  v49 = v13[194];
  if (EnumTagSinglePayload == 1)
  {
    v50 = OUTLINED_FUNCTION_104_0();
    v53 = 1;
  }

  else
  {
    v59 = v13[188];
    v60 = v13[180];
    v61 = v13[177];
    v62 = v13[149];
    v63 = v13[144];
    v64 = *(v61 + 48);
    v65 = *(v61 + 64);
    v66 = v59[1].n128_u8[0];
    v177 = *(v174 + 18);
    *v60 = *v59;
    v60[1].n128_u8[0] = v66;
    v67 = *(v61 + 48);
    v68 = *(v62 + 32);
    v68(v60 + v67, v59 + v64, v63);
    OUTLINED_FUNCTION_115_0();
    v69 = swift_allocObject();
    v70 = *(v59 + v65);
    *(v69 + 16) = v177;
    *(v69 + 32) = v70;
    OUTLINED_FUNCTION_193();
    v72 = (v49 + v71);
    v74 = OUTLINED_FUNCTION_95_0(v73, *v60);
    v68(v74, v60 + v67, v63);
    v13 = v178;
    *v72 = sub_1D4DBE048;
    v72[1] = v69;
    v50 = OUTLINED_FUNCTION_66_0();
  }

  __swift_storeEnumTagSinglePayload(v50, v51, v53, v52);
  v75 = v13[195];
  v76 = v13[194];
  v77 = v13[189];
  v78 = v13[185];
  v79 = *(v77 + 32);
  v13[267] = v79;
  v13[268] = (v77 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v79(v75, v76, v78);
  OUTLINED_FUNCTION_30_0();
  if (v26)
  {
    v80 = v13[124];

    v81 = *(*v80 + 168);
    v13[271] = v81;
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    v13[272] = *(v80 + v81);
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_47();
    v13[273] = OUTLINED_FUNCTION_221(v82);
    v13[98] = sub_1D4E0CC20();
    if (v13[98] == sub_1D4E0CCB0())
    {
      v83 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_78();
      v97 = sub_1D4E0CCA0();
      OUTLINED_FUNCTION_157_0();
      sub_1D4E0CC60();
      if (v97)
      {
        OUTLINED_FUNCTION_19_0();
        v98();
      }

      else
      {
        v166 = v13[161];
        v155 = sub_1D4E0CF80();
        if (v166 != 8)
        {
          goto LABEL_53;
        }

        v167 = v155;
        v168 = v13[163];
        v169 = v13[160];
        v170 = v13[156];
        v13[96] = v167;
        (*(v169 + 16))(v168, v13 + 96, v170);
        swift_unknownObjectRelease();
      }

      (*(v13[160] + 32))(v13[167], v13[163], v13[156]);
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CCF0();
      v83 = 0;
    }

    v99 = v13[156];
    v100 = OUTLINED_FUNCTION_82_0(v13[167], v83, 1, v99);
    OUTLINED_FUNCTION_118_0(v100, v101, v99);
    if (!v26)
    {
      v102 = v13[173];
      v103 = v13[167];
      v104 = v13[159];
      v105 = v13[156];
      v106 = v13[149];
      v107 = v13[144];
      v108 = v13[133];
      v109 = *(v105 + 48);
      v171 = v107;
      v172 = *(v105 + 64);
      v173 = *(v108 + 32);
      v175 = *(v174 + 18);
      v110 = OUTLINED_FUNCTION_78();
      v111(v110);
      v112 = *(v105 + 48);
      v113 = *(v106 + 32);
      v113(v104 + v112, v103 + v109, v107);
      OUTLINED_FUNCTION_115_0();
      v114 = swift_allocObject();
      v115 = *(v103 + v172);
      *(v114 + 16) = v175;
      *(v114 + 32) = v115;
      v116 = *(v105 + 48);
      v117 = (v102 + *(v105 + 64));
      v118 = OUTLINED_FUNCTION_52();
      v173(v118);
      v13 = v178;
      v113(v102 + v116, v104 + v112, v171);
      OUTLINED_FUNCTION_50_0();
      *v117 = v119;
      v117[1] = v114;
    }

    v120 = v13[168];
    v121 = v13[156];
    OUTLINED_FUNCTION_172();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v121);
    v13[274] = *(v120 + 32);
    v13[275] = (v120 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v125 = OUTLINED_FUNCTION_30();
    v126(v125);
    v127 = OUTLINED_FUNCTION_100_0();
    OUTLINED_FUNCTION_118_0(v127, v128, v121);
    if (v26)
    {
      v129 = v13[130];

      OUTLINED_FUNCTION_200();
      v13[278] = *(v130 + 136);
      OUTLINED_FUNCTION_106_0();
      swift_beginAccess();
      v13[279] = v13[108];
      sub_1D4E0CA10();
      OUTLINED_FUNCTION_113_0();
      sub_1D4E0CC70();
      OUTLINED_FUNCTION_59();

      v13[94] = v129;
      OUTLINED_FUNCTION_10_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_168();
      v13[280] = sub_1D4E0CFA0();
      sub_1D4E0CD60();
      if (!v176)
      {
        v154 = v13[126];
        v13[281] = *(*v13[124] + 96);
        v13[282] = *(v154 + 56);
        v13[283] = (v154 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;
        v13[284] = sub_1D4E0C870();
        v13[285] = sub_1D4E0C860();
        v13[286] = sub_1D4D8E454();
        sub_1D4E0CD30();
        OUTLINED_FUNCTION_23_0();
        goto LABEL_40;
      }

      v58 = v13[124];

LABEL_31:

      goto LABEL_32;
    }

    v141 = v13[174];
    v142 = v13[158];
    v143 = v13[156];
    v144 = v13[149];
    v145 = v13[144];
    v146 = *(v143 + 48);
    v147 = *(v143 + 64);
    v180 = *(v141 + v147);
    v148 = OUTLINED_FUNCTION_91();
    v149(v148);
    (*(v144 + 32))(v142 + v146, v141 + v146, v145);
    *(v142 + v147) = v180;
    sub_1D4E0CD60();
    if (v176)
    {
      v150 = v13[124];
      (*(v13[157] + 8))(v13[158], v13[156]);

      v131 = v150;
      goto LABEL_33;
    }

    v159 = swift_task_alloc();
    v13[276] = v159;
    *v159 = v13;
    OUTLINED_FUNCTION_25_0(v159);
  }

  else
  {
    v84 = v13[195];
    v85 = v13[179];
    v86 = v13[177];
    v87 = v13[149];
    v88 = v13[144];
    v89 = *(v84 + 16);
    v90 = *(v86 + 48);
    v91 = *(v86 + 64);
    v179 = *(v84 + v91);
    *v85 = *v84;
    *(v85 + 16) = v89;
    (*(v87 + 32))(v85 + v90, v84 + v90, v88);
    *(v85 + v91) = v179;
    sub_1D4E0CD60();
    if (v176)
    {
      v58 = v13[124];

      v92 = OUTLINED_FUNCTION_105();
      v93(v92);
LABEL_32:
      v131 = v58;
LABEL_33:
      sub_1D4DAFEE8(v131);
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_227();
      OUTLINED_FUNCTION_129_0();

      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_156();

      return v133(v132, v133, v134, v135, v136, v137, v138, v139, a9, a10, a11, a12);
    }

    v151 = v13[179];
    v152 = *(v151 + 16);
    *v174 = *v151;
    *(v174 + 16) = v152;
    v153 = swift_task_alloc();
    v13[269] = v153;
    *v153 = v13;
    OUTLINED_FUNCTION_47_0(v153);
  }

  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA6FE8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DA70F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 1424);
  *(v12 + 872) = *(v12 + 976);
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  sub_1D4E0CCC0();
  v14 = v13 + 8;
  v15 = OUTLINED_FUNCTION_30();
  v16(v15);
  v132 = *(v12 + 2160);
  if (*(v12 + 856) == sub_1D4E0CCB0())
  {
    v17 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_130_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_202();
    sub_1D4E0CC60();
    if (v14)
    {
      OUTLINED_FUNCTION_19_0();
      v18();
    }

    else
    {
      v116 = *(v12 + 1456);
      v109 = sub_1D4E0CF80();
      if (v116 != 8)
      {
        __break(1u);
        goto LABEL_43;
      }

      v117 = v109;
      OUTLINED_FUNCTION_148_0();
      *(v12 + 840) = v117;
      (*(v118 + 16))();
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_148_0();
    (*(v19 + 32))();
    OUTLINED_FUNCTION_113_0();
    sub_1D4E0CCF0();
    v17 = 0;
  }

  v20 = (v12 + 712);
  v21 = *(v12 + 1416);
  v22 = OUTLINED_FUNCTION_82_0(*(v12 + 1504), v17, 1, v21);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, v23, v21);
  v25 = *(v12 + 1552);
  if (EnumTagSinglePayload == 1)
  {
    v26 = OUTLINED_FUNCTION_100_0();
    v29 = 1;
  }

  else
  {
    v30 = *(v12 + 1504);
    v31 = *(v12 + 1440);
    v32 = *(v12 + 1416);
    v33 = *(v12 + 1192);
    v34 = *(v12 + 1152);
    v35 = *(v32 + 48);
    *&v129 = *(v32 + 64);
    v36 = *(v30 + 16);
    v127 = *(v12 + 1000);
    *v31 = *v30;
    *(v31 + 16) = v36;
    v37 = *(v32 + 48);
    v20 = *(v33 + 32);
    v20(v31 + v37, v30 + v35, v34);
    OUTLINED_FUNCTION_115_0();
    v38 = swift_allocObject();
    v39 = *(v30 + v129);
    *(v38 + 16) = v127;
    *(v38 + 32) = v39;
    v40 = *(v31 + 16);
    v41 = *(v32 + 48);
    v42 = (v25 + *(v32 + 64));
    *v25 = *v31;
    *(v25 + 16) = v40;
    v20(v25 + v41, v31 + v37, v34);
    *v42 = sub_1D4DBE048;
    v42[1] = v38;
    v26 = OUTLINED_FUNCTION_93_0();
    v28 = v32;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, v29, v28);
  v43 = *(v12 + 1560);
  v44 = *(v12 + 1416);
  OUTLINED_FUNCTION_257(*(v12 + 1512));
  v45(v43);
  v46 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v46, v47, v44);
  if (v48)
  {
    v49 = *(v12 + 992);

    OUTLINED_FUNCTION_79();
    v51 = *(v50 + 168);
    *(v12 + 2168) = v51;
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    v52 = *(v49 + v51);
    *(v12 + 2176) = v52;
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_202();
    *(v12 + 2184) = OUTLINED_FUNCTION_221(v53);
    *(v12 + 784) = sub_1D4E0CC20();
    if (*(v12 + 784) == sub_1D4E0CCB0())
    {
      v54 = 1;
LABEL_18:
      v63 = *(v12 + 1248);
      v64 = 1;
      __swift_storeEnumTagSinglePayload(*(v12 + 1336), v54, 1, v63);
      v65 = OUTLINED_FUNCTION_310();
      OUTLINED_FUNCTION_118_0(v65, v66, v63);
      if (!v48)
      {
        v67 = *(v12 + 1384);
        v68 = *(v12 + 1336);
        v69 = *(v12 + 1272);
        v70 = *(v12 + 1248);
        v71 = *(v12 + 1192);
        v72 = *(v12 + 1152);
        v124 = *(v70 + 48);
        v125 = v72;
        v126 = *(v70 + 64);
        v128 = *(*(v12 + 1064) + 32);
        v130 = *(v12 + 1000);
        v73 = OUTLINED_FUNCTION_136();
        v74(v73);
        v75 = *(v70 + 48);
        v76 = *(v71 + 32);
        v76(v69 + v75, v68 + v124, v72);
        OUTLINED_FUNCTION_115_0();
        v77 = swift_allocObject();
        v78 = *(v68 + v126);
        *(v77 + 16) = v130;
        *(v77 + 32) = v78;
        v79 = *(v70 + 48);
        v52 = v67 + *(v70 + 64);
        v80 = OUTLINED_FUNCTION_192();
        v128(v80);
        v76(v67 + v79, v69 + v75, v125);
        v64 = 0;
        *v52 = sub_1D4DBE048;
        *(v52 + 8) = v77;
      }

      v81 = *(v12 + 1392);
      v82 = OUTLINED_FUNCTION_60_0();
      __swift_storeEnumTagSinglePayload(v82, v64, 1, v52);
      OUTLINED_FUNCTION_260();
      OUTLINED_FUNCTION_62();
      v83();
      OUTLINED_FUNCTION_57_0(v81);
      if (!v48)
      {
        OUTLINED_FUNCTION_243();
        OUTLINED_FUNCTION_61_0();
        v131 = OUTLINED_FUNCTION_242(v87);
        v88 = OUTLINED_FUNCTION_91();
        v89(v88);
        v90 = OUTLINED_FUNCTION_302();
        v91(v90);
        *(v64 + v52) = v131;
        sub_1D4E0CD60();
        if (v132)
        {
          v92 = OUTLINED_FUNCTION_91_0();
          v93(v92);

          v86 = v64;
          goto LABEL_27;
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_24();
        *(v12 + 2208) = v113;
        *v113 = v114;
        OUTLINED_FUNCTION_25_0(v113);
        OUTLINED_FUNCTION_240();
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_219();
      OUTLINED_FUNCTION_200();
      *(v12 + 2224) = *(v84 + 136);
      OUTLINED_FUNCTION_106_0();
      swift_beginAccess();
      OUTLINED_FUNCTION_327();
      OUTLINED_FUNCTION_113_0();
      v85 = sub_1D4E0CC70();

      *(v12 + 752) = v85;
      OUTLINED_FUNCTION_10_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_168();
      *(v12 + 2240) = sub_1D4E0CFA0();
      sub_1D4E0CD60();
      if (v132)
      {
        v58 = *(v12 + 992);

        goto LABEL_24;
      }

      OUTLINED_FUNCTION_177();
      v107 = OUTLINED_FUNCTION_149_0(v106);
      *(v12 + 2280) = OUTLINED_FUNCTION_284(v107);
      v108 = sub_1D4D8E454();
      OUTLINED_FUNCTION_283(v108);
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_156();

      return MEMORY[0x1EEE6DFA0](v109, v110, v111);
    }

    OUTLINED_FUNCTION_136();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_175();
    OUTLINED_FUNCTION_145_0();
    sub_1D4E0CC60();
    if (v52)
    {
      OUTLINED_FUNCTION_19_0();
      v61();
LABEL_17:
      OUTLINED_FUNCTION_65();
      v62();
      sub_1D4E0CCF0();
      v54 = 0;
      goto LABEL_18;
    }

    v119 = *(v12 + 1288);
    v109 = sub_1D4E0CF80();
    if (v119 == 8)
    {
      v120 = v109;
      v121 = *(v12 + 1304);
      v122 = *(v12 + 1280);
      v123 = *(v12 + 1248);
      *(v12 + 768) = v120;
      (*(v122 + 16))(v121, v12 + 768, v123);
      swift_unknownObjectRelease();
      goto LABEL_17;
    }

LABEL_43:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v109, v110, v111);
  }

  v55 = OUTLINED_FUNCTION_123_0();
  v56(v55);
  *(v20 + v43) = v129;
  sub_1D4E0CD60();
  v57 = *(v12 + 1432);
  if (v132)
  {
    v58 = *(v12 + 992);

    v59 = OUTLINED_FUNCTION_91();
    v60(v59);
LABEL_24:
    v86 = v58;
LABEL_27:
    sub_1D4DAFEE8(v86);
    OUTLINED_FUNCTION_289();
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_129_0();

    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_156();

    return v95(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12);
  }

  v103 = *(v57 + 16);
  *(v12 + 712) = *v57;
  *(v12 + 728) = v103;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v12 + 2152) = v104;
  *v104 = v105;
  OUTLINED_FUNCTION_47_0(v104);
LABEL_35:
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA7B3C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2216) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DA7C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_30_0();
  if (v17)
  {
    (*(*(v12 + 1256) + 8))(*(v12 + 1264), *(v12 + 1248));
    v25 = OUTLINED_FUNCTION_105();
  }

  else
  {
    v18 = *(v12 + 1736);
    v13 = *(v12 + 1400);
    v14 = *(v12 + 1264);
    v19 = *(v12 + 1256);
    OUTLINED_FUNCTION_148();
    v20();
    OUTLINED_FUNCTION_258();
    v21 = OUTLINED_FUNCTION_58();
    v22(v21);
    sub_1D4E0CCD0();
    v15 = v18 + 8;
    v23 = OUTLINED_FUNCTION_130_0();
    v24(v23);
    v16 = v19 + 8;
    v25 = OUTLINED_FUNCTION_191();
  }

  v26(v25);
  v27 = *(v12 + 2216);
  v28 = sub_1D4E0CCB0();
  if (*(v12 + 784) == v28)
  {
    v29 = 1;
  }

  else
  {
    v30 = *(v12 + 2184);
    OUTLINED_FUNCTION_130_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_202();
    sub_1D4E0CC60();
    if (v13)
    {
      OUTLINED_FUNCTION_19_0();
      v31();
    }

    else
    {
      v72 = OUTLINED_FUNCTION_326();
      if (v30 != 8)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v72, v73, v74);
      }

      v79 = OUTLINED_FUNCTION_212(v72);
      v80(v79);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_65();
    v32();
    OUTLINED_FUNCTION_113_0();
    v28 = sub_1D4E0CCF0();
    v29 = 0;
  }

  OUTLINED_FUNCTION_16_0(v28, v29);
  if (!v17)
  {
    v33 = *(v12 + 1336);
    OUTLINED_FUNCTION_89_0();
    v82 = *(v16 + 64);
    v83 = *(v13 + 32);
    v34 = OUTLINED_FUNCTION_102_0((v12 + 1000));
    v35(v34);
    v14 = *(v16 + 48);
    v36 = *(v15 + 32);
    v37 = OUTLINED_FUNCTION_101_0();
    v36(v37);
    OUTLINED_FUNCTION_115_0();
    v38 = swift_allocObject();
    v39 = OUTLINED_FUNCTION_97_0(v38, *(v33 + v82), v81);
    v83(v39);
    v40 = OUTLINED_FUNCTION_230();
    v36(v40);
    OUTLINED_FUNCTION_50_0();
    *v16 = v41;
    *(v16 + 8) = v38;
  }

  v42 = *(v12 + 1392);
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_172();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v14);
  OUTLINED_FUNCTION_260();
  v46 = OUTLINED_FUNCTION_87_0();
  v47(v46);
  OUTLINED_FUNCTION_57_0(v42);
  if (v17)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_200();
    *(v12 + 2224) = *(v48 + 136);
    OUTLINED_FUNCTION_106_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_327();
    OUTLINED_FUNCTION_113_0();
    v49 = sub_1D4E0CC70();

    *(v12 + 752) = v49;
    OUTLINED_FUNCTION_10_0();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_168();
    *(v12 + 2240) = sub_1D4E0CFA0();
    sub_1D4E0CD60();
    if (v27)
    {
      v50 = *(v12 + 992);

      v51 = v50;
LABEL_17:
      sub_1D4DAFEE8(v51);
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_165_0();
      OUTLINED_FUNCTION_329(v59);

      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_156();

      return v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_177();
    v70 = OUTLINED_FUNCTION_149_0(v69);
    *(v12 + 2280) = OUTLINED_FUNCTION_284(v70);
    v71 = sub_1D4D8E454();
    OUTLINED_FUNCTION_283(v71);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE6DFA0](v72, v73, v74);
  }

  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_61_0();
  v84 = OUTLINED_FUNCTION_242(v52);
  v53 = OUTLINED_FUNCTION_91();
  v54(v53);
  v55 = OUTLINED_FUNCTION_302();
  v56(v55);
  *(v42 + v14) = v84;
  sub_1D4E0CD60();
  if (v27)
  {
    v57 = OUTLINED_FUNCTION_91_0();
    v58(v57);

    v51 = v42;
    goto LABEL_17;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v12 + 2208) = v76;
  *v76 = v77;
  OUTLINED_FUNCTION_25_0(v76);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_270();
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DA830C()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 2256);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_170();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA838C()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 2240);
  v20 = *(v0 + 1016);
  v2 = swift_task_alloc();
  *(v0 + 2296) = v2;
  *(v2 + 16) = *(v0 + 1000);
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_62_0(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v20);
  v19 = (v10 + *v10);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 2304) = v11;
  *v11 = v12;
  v11[1] = sub_1D4DA84D8;
  v13 = *(v0 + 1960);
  v14 = *(v0 + 1568);
  v15 = *(v0 + 1016);

  return v19(v0 + 984, &unk_1D4E0E558, v2, v13, v14, v15);
}

uint64_t sub_1D4DA84D8()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *v3 = *v1;
  v2[289] = v0;

  v4 = OUTLINED_FUNCTION_294();
  if (v0)
  {
    v6(v4);
  }

  else
  {
    v2[290] = v6;
    v2[291] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v4);
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_335();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1D4DA8668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 2312);
  v14 = *(v12 + 1944);
  v15 = *(v12 + 992);
  *(swift_task_alloc() + 16) = *(v12 + 1000);
  OUTLINED_FUNCTION_93(v15 + v14, v12 + 664);
  sub_1D4E0CA10();
  sub_1D4E0CA20();
  swift_endAccess();
  if (v13)
  {
    OUTLINED_FUNCTION_156();
  }

  else
  {
    v16 = *(v12 + 1832);
    v54 = *(v12 + 1744);
    v17 = *(v12 + 992);

    sub_1D4E0CA10();
    v18 = sub_1D4E0CC20();
    v59 = v18;
    v58 = v17;
    v57 = *(*v17 + 144);
    v56 = (v16 + 32);
    v55 = (v16 + 8);
    while (1)
    {
      if (v18 == sub_1D4E0CCB0())
      {

        sub_1D4E0CD60();
        *(v12 + 2336) = sub_1D4E0C860();
        OUTLINED_FUNCTION_78();
        sub_1D4E0CD30();
        OUTLINED_FUNCTION_99();
        OUTLINED_FUNCTION_26();
        OUTLINED_FUNCTION_156();

        goto _swift_task_switch;
      }

      OUTLINED_FUNCTION_30();
      v19 = sub_1D4E0CCA0();
      OUTLINED_FUNCTION_41_0();
      sub_1D4E0CC60();
      if (v19)
      {
        OUTLINED_FUNCTION_189();
        (*(v20 + 16))();
      }

      else
      {
        OUTLINED_FUNCTION_105();
        v35 = sub_1D4E0CF80();
        if (v54 != 8)
        {
          __break(1u);
_swift_task_switch:
          MEMORY[0x1EEE6DFA0](v35, v36, v37);
          return;
        }

        v38 = v35;
        OUTLINED_FUNCTION_189();
        *(v12 + 760) = v38;
        (*(v39 + 16))();
        swift_unknownObjectRelease();
      }

      v21 = *(v12 + 1944);
      v22 = *(v12 + 1720);
      v23 = *(v12 + 1688);
      v24 = *(v12 + 992);
      sub_1D4E0CCF0();
      v25 = OUTLINED_FUNCTION_170();
      v26(v25);
      OUTLINED_FUNCTION_235(v24 + v21, v12 + 496);
      OUTLINED_FUNCTION_311();
      OUTLINED_FUNCTION_108_0();
      sub_1D4E0CA70();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v23);
      v28 = *(v12 + 1792);
      v29 = *(v12 + 1736);
      if (EnumTagSinglePayload == 1)
      {
        break;
      }

      v30 = *(v12 + 1864);
      v31 = *(v12 + 1688);
      (*v56)(v30, *(v12 + 1720), v31);
      swift_endAccess();
      OUTLINED_FUNCTION_267();
      v32();
      OUTLINED_FUNCTION_93(v58 + v57, v12 + 640);
      OUTLINED_FUNCTION_269();
      sub_1D4E0CD00();
      sub_1D4E0CCD0();
      swift_endAccess();
      (*v55)(v30, v31);
      v33 = OUTLINED_FUNCTION_210();
      v34(v33);
      v18 = v59;
    }

    v40 = *(v12 + 1040);
    v41 = *(v12 + 992);
    (*(*(v12 + 1704) + 8))(*(v12 + 1720), *(v12 + 1696));
    swift_endAccess();

    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    *(v12 + 132) = 2;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_210();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    v42 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v42, v43, v44);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_142_0();
    swift_allocError();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();
    (*(v29 + 8))(v28, v40);
    sub_1D4DAFEE8(v41);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_143_0();

    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_156();

    v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }
}

uint64_t sub_1D4DA8DBC()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 2256);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_170();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DA8E3C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_117_0();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 2344) = v2;
  *v2 = v0;
  v2[1] = sub_1D4DA8F84;

  return v4();
}

uint64_t sub_1D4DA8F84()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5();
  *v4 = v3;
  *v4 = *v1;
  v3[294] = v0;

  (v2[290])(v3[198], v3[196]);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4DA90DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = v12[294];
  sub_1D4E0CD60();
  v12[295] = v13;
  if (v13)
  {
    v14 = v12[124];

    sub_1D4DAFEE8(v14);
    OUTLINED_FUNCTION_239();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_143_0();

    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_156();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = v12[281];
    v25 = v12[153];
    v26 = v12[152];
    v27 = v12[125];
    v28 = v12[124];
    v29 = OUTLINED_FUNCTION_153();
    v12[296] = type metadata accessor for FacetBuildingPlan(v29, v30, v31, v32);
    v33 = *(v26 + 16);
    v12[297] = v33;
    v12[298] = (v26 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v33(v25, v28 + v24, v27);
    v12[299] = sub_1D4E0C860();
    OUTLINED_FUNCTION_78();
    sub_1D4E0CD30();
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE6DFA0](v34, v35, v36);
  }
}

uint64_t sub_1D4DA9444()
{
  OUTLINED_FUNCTION_1();

  *(v0 + 2400) = FacetBuildingPlan.__allocating_init(system:)();
  v1 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D4DA94B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 1496);
  v14 = *(v12 + 1416);
  *(v12 + 792) = *(*(v12 + 992) + *(v12 + 2104));
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_11_0();
  swift_getWitnessTable();
  sub_1D4E0CEA0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v16 = *(v12 + 1536);
  if (EnumTagSinglePayload == 1)
  {
    v17 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    v21 = *(v12 + 1496);
    v22 = *(v12 + 1440);
    v23 = *(v12 + 1416);
    v24 = *(v12 + 1192);
    v244 = *(v23 + 64);
    v25 = OUTLINED_FUNCTION_53_0((v12 + 1000));
    v26 = *(v23 + 48);
    v27 = *(v24 + 32);
    v27(v22 + v26, v21 + v28, v25);
    OUTLINED_FUNCTION_115_0();
    v29 = swift_allocObject();
    v30 = *(v21 + v244);
    *(v29 + 16) = v240;
    *(v29 + 32) = v30;
    v31 = (v16 + *(v23 + 64));
    v32 = OUTLINED_FUNCTION_95_0(v22[1].n128_u8[0], *v22);
    (v27)(v32, v22 + v26);
    *v31 = sub_1D4DBE048;
    v31[1] = v29;
    OUTLINED_FUNCTION_121_0();
    v20 = v23;
  }

  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v33 = *(v12 + 1416);
  (*(v12 + 2136))(*(v12 + 1544), *(v12 + 1536), *(v12 + 1480));

  v34 = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_118_0(v34, v35, v33);
  if (v36)
  {
    v37 = *(v12 + 2168);
    v75 = *(v12 + 1248);
    v38 = *(v12 + 1152);
    v39 = *(v12 + 992);
    (*(*(v12 + 1512) + 8))(*(v12 + 1544), *(v12 + 1480));
    v40 = 1;
    v41 = OUTLINED_FUNCTION_100_0();
    __swift_storeEnumTagSinglePayload(v41, v42, 1, v38);
    *(v12 + 800) = *(v39 + v37);
    OUTLINED_FUNCTION_147_0();
    v76 = sub_1D4E0CD00();
    sub_1D4E0CA10();
    OUTLINED_FUNCTION_11_0();
    swift_getWitnessTable();
    sub_1D4E0CEA0();
    v43 = OUTLINED_FUNCTION_310();
    OUTLINED_FUNCTION_118_0(v43, v44, v75);
    if (!v36)
    {
      v45 = *(v12 + 1368);
      v46 = *(v12 + 1328);
      v47 = *(v12 + 1272);
      v48 = *(v12 + 1248);
      v49 = *(v12 + 1192);
      v50 = *(v12 + 1152);
      v234 = v50;
      v75 = *(v12 + 1064);
      v246 = *(v12 + 1056);
      v231 = *(v48 + 48);
      v241 = *(v48 + 64);
      v51 = *(v75 + 32);
      LOBYTE(v75) = v75 + 32;
      v232 = *(v12 + 1000);
      v52 = OUTLINED_FUNCTION_170();
      v53(v52);
      v237 = *(v48 + 48);
      v76 = *(v49 + 32);
      (v76)(v47 + v237, v46 + v231, v50);
      OUTLINED_FUNCTION_115_0();
      v54 = swift_allocObject();
      v55 = *(v46 + v241);
      *(v54 + 16) = v232;
      *(v54 + 32) = v55;
      v56 = *(v48 + 48);
      v57 = (v45 + *(v48 + 64));
      v51(v45, v47, v246);
      (v76)(v45 + v56, v47 + v237, v234);
      v40 = 0;
      *v57 = sub_1D4DBE048;
      v57[1] = v54;
    }

    v74 = *(v12 + 2200);
    v58 = *(v12 + 2192);
    v59 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v59, v40, 1, v76);
    OUTLINED_FUNCTION_62();
    v58();

    v60 = OUTLINED_FUNCTION_104_0();
    v62 = __swift_getEnumTagSinglePayload(v60, v61, v76);
    v63 = *(v12 + 1376);
    v64 = *(v12 + 1184);
    v65 = *(v12 + 1152);
    if (v62 == 1)
    {
      (*(*(v12 + 1344) + 8))(*(v12 + 1376), *(v12 + 1312));
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v65);
    }

    else
    {
      v75 = *(v12 + 1192);
      v85 = *(v12 + 1064);
      v86 = *(v12 + 1056);
      v74 = *(*(v12 + 1248) + 48);

      v87 = *(v75 + 32);
      LOBYTE(v75) = v75 + 32;
      v87(v64, v63 + v74, v65);
      OUTLINED_FUNCTION_121_0();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v65);
      v91 = *(v85 + 8);
      v76 = (v85 + 8);
      v91(v63, v86);
    }

    v92 = *(v12 + 1176);
    v93 = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_118_0(v93, v94, v95);
    if (!v36)
    {
      (*(*(v12 + 1168) + 8))(v92, *(v12 + 1160));
    }
  }

  else
  {
    v66 = *(v12 + 1544);
    v75 = *(v12 + 1416);
    v67 = *(v12 + 1192);
    v68 = *(v12 + 1176);
    v69 = *(v12 + 1152);
    OUTLINED_FUNCTION_3_0();
    sub_1D4DBA9FC(v70, v71, v72, v73);
    v74 = *(v75 + 48);

    v77 = *(v67 + 32);
    v76 = (v67 + 32);
    LOBYTE(v75) = v77;
    v77(v68, v66 + v74, v69);
    v78 = OUTLINED_FUNCTION_93_0();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v69);
    v81 = OUTLINED_FUNCTION_105();
    (v77)(v81);
    OUTLINED_FUNCTION_121_0();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v69);
  }

  v96 = *(v12 + 1152);
  v97 = OUTLINED_FUNCTION_104_0();
  v99 = __swift_getEnumTagSinglePayload(v97, v98, v96);
  v100 = *(v12 + 2232);
  if (v99 == 1)
  {
    v101 = *(v12 + 1168);

    v102 = v101 + 8;
    v103 = OUTLINED_FUNCTION_105();
    v104(v103);
    goto LABEL_26;
  }

  v102 = *(v12 + 1400);
  OUTLINED_FUNCTION_148();
  v105();
  *(v12 + 944) = v100;
  OUTLINED_FUNCTION_11_0();
  swift_getWitnessTable();
  if (sub_1D4E0CEB0())
  {
    v106 = OUTLINED_FUNCTION_308();
    v107(v106);

LABEL_26:
    v137 = *(v12 + 992);
    *(v12 + 2408) = *(v137 + *(v12 + 2104));
    sub_1D4E0CA10();
    *(v12 + 808) = sub_1D4E0CC20();
    OUTLINED_FUNCTION_88();
    *(v12 + 2416) = *(v138 + 208);
    v247 = *(v12 + 2360);
    v139 = sub_1D4E0CCB0();
    v140 = *(v12 + 808);
    if (v140 == v139)
    {
      v141 = 1;
    }

    else
    {
      v137 = *(v12 + 2408);
      v102 = *(v12 + 2128);
      OUTLINED_FUNCTION_87_0();
      sub_1D4E0CCA0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_140_0();
      v142 = sub_1D4E0CC60();
      if (v75)
      {
        OUTLINED_FUNCTION_90_0();
        OUTLINED_FUNCTION_8_0();
        v143();
      }

      else
      {
        result = OUTLINED_FUNCTION_279(v142, *(v12 + 2408));
        if (v137 != 8)
        {
          goto LABEL_69;
        }

        v216 = OUTLINED_FUNCTION_73_0(result);
        v217(v216);
        swift_unknownObjectRelease();
      }

      v144 = OUTLINED_FUNCTION_71_0();
      v145(v144);
      OUTLINED_FUNCTION_148();
      v139 = sub_1D4E0CCF0();
      v141 = 0;
    }

    OUTLINED_FUNCTION_76_0(v139, v141);
    if (v36)
    {
      v153 = OUTLINED_FUNCTION_69_0();
    }

    else
    {
      OUTLINED_FUNCTION_241();
      v146 = *(v12 + 1192);
      v102 = *(v12 + 1152);
      OUTLINED_FUNCTION_193();
      v148 = OUTLINED_FUNCTION_53_0(v147);
      v149 = *(v137 + 48);
      v100 = *(v146 + 32);
      (v100)(v74 + v149, &v76[v150], v102, v148);
      OUTLINED_FUNCTION_115_0();
      v151 = swift_allocObject();
      v152 = OUTLINED_FUNCTION_42_0(v151);
      (v100)(v152, v74 + v149, v102);
      v153 = OUTLINED_FUNCTION_37_0();
    }

    __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
    v157 = OUTLINED_FUNCTION_75_0();
    v158(v157);
    OUTLINED_FUNCTION_30_0();
    if (v36)
    {
      OUTLINED_FUNCTION_218();
      *(v12 + 2520) = *&v100[v137];
      sub_1D4E0CA10();
      v159 = sub_1D4E0CC20();
      OUTLINED_FUNCTION_280(v159);
      OUTLINED_FUNCTION_259();
      if (v36)
      {
        v161 = 1;
      }

      else
      {
        v168 = *(v12 + 2520);
        v102 = *(v12 + 2184);
        OUTLINED_FUNCTION_87_0();
        sub_1D4E0CCA0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_140_0();
        v169 = sub_1D4E0CC60();
        if (v75)
        {
          OUTLINED_FUNCTION_55_0();
          OUTLINED_FUNCTION_8_0();
          v170();
        }

        else
        {
          result = OUTLINED_FUNCTION_197(v169, *(v12 + 2520));
          if (v168 != 8)
          {
            goto LABEL_70;
          }

          v218 = OUTLINED_FUNCTION_27_0(result);
          v219(v218);
          swift_unknownObjectRelease();
        }

        v171 = OUTLINED_FUNCTION_26_0();
        v172(v171);
        OUTLINED_FUNCTION_148();
        v160 = sub_1D4E0CCF0();
        v161 = 0;
      }

      v173 = *(v12 + 1320);
      OUTLINED_FUNCTION_16_0(v160, v161);
      if (!v36)
      {
        OUTLINED_FUNCTION_127_0();
        v174 = *(v12 + 1248);
        v175 = *(v12 + 1192);
        v176 = *(v12 + 1064);
        OUTLINED_FUNCTION_250();
        v239 = v177;
        v243 = *(v176 + 32);
        v179 = OUTLINED_FUNCTION_102_0(v178);
        v180(v179);
        v181 = *(v175 + 32);
        v182 = OUTLINED_FUNCTION_101_0();
        v181(v182);
        OUTLINED_FUNCTION_115_0();
        v74 = swift_allocObject();
        v183 = OUTLINED_FUNCTION_64_0(v74, v239);
        v243(v183);
        v184 = OUTLINED_FUNCTION_230();
        v181(v184);
        OUTLINED_FUNCTION_15_0();
        *v174 = v185;
        v174[1] = v74;
      }

      v186 = OUTLINED_FUNCTION_18_0();
      (v74)(v186);
      OUTLINED_FUNCTION_57_0(v173);
      if (v36)
      {

        sub_1D4E0CD60();
        if (!v247)
        {
          v209 = swift_task_alloc();
          v210 = OUTLINED_FUNCTION_272(v209);
          *v210 = v211;
          OUTLINED_FUNCTION_14_0(v210);
          OUTLINED_FUNCTION_156();

          return FacetBuildingPlan.optimize()();
        }

        OUTLINED_FUNCTION_254();
        v167 = v140;
LABEL_54:
        sub_1D4DAFEE8(v167);
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_9_0();
        OUTLINED_FUNCTION_316();
        OUTLINED_FUNCTION_143_0();

        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_156();

        return v202(v201, v202, v203, v204, v205, v206, v207, v208, a9, a10, a11, a12);
      }

      v187 = OUTLINED_FUNCTION_17_0();
      v188(v187);
      v189 = OUTLINED_FUNCTION_176();
      v190(v189);
      sub_1D4E0CD60();
      if (v247)
      {
        v191 = OUTLINED_FUNCTION_51_0();
        v192(v191);

        v167 = v102;
        goto LABEL_54;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2544) = v213;
      *v213 = v214;
      OUTLINED_FUNCTION_13_0(v213);
    }

    else
    {
      v162 = OUTLINED_FUNCTION_31_0();
      v163(v162);
      sub_1D4E0CD60();
      if (v247)
      {
        OUTLINED_FUNCTION_217();
        OUTLINED_FUNCTION_3_0();
        v164 = OUTLINED_FUNCTION_105();
        sub_1D4DBA9FC(v164, v165, v102, v166);

        v167 = v74;
        goto LABEL_54;
      }

      *(v12 + 688) = v140;
      *(v12 + 696) = v137;
      *(v12 + 704) = v102;
      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2456) = v193;
      *v193 = v194;
      OUTLINED_FUNCTION_39_0(v193);
    }

    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_156();

    return sub_1D4DB1870();
  }

  v222 = *(v12 + 2400);
  v76 = *(v12 + 1192);
  v100 = *(v12 + 1080);
  v102 = *(v12 + 1040);
  v74 = *(v12 + 992);
  sub_1D4E0CA10();
  LOBYTE(v75) = sub_1D4E0CCB0();
  v108 = *(*v74 + 208);
  OUTLINED_FUNCTION_93(v74 + v108, v12 + 352);
  OUTLINED_FUNCTION_153();
  v221 = v74;
  sub_1D4E0CA60();
  v109 = v74 + v108;
  sub_1D4E0C9E0();
  swift_endAccess();
  sub_1D4E0CA10();
  sub_1D4E0CC20();
  OUTLINED_FUNCTION_109();

  v248 = v74 + v108;
  v220 = (v76 + 16);
  while (1)
  {
    v110 = sub_1D4E0CCB0();
    v111 = *(v12 + 2232);
    if (v109 == v110)
    {
      v135 = OUTLINED_FUNCTION_308();
      v136(v135);
      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_30();
    v112 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_41_0();
    v113 = sub_1D4E0CC60();
    if (v112)
    {
      OUTLINED_FUNCTION_189();
      v238 = *(v114 + 16);
      v238();
      goto LABEL_21;
    }

    result = OUTLINED_FUNCTION_281(v113, *(v12 + 2232));
    if (v111 != 8)
    {
      break;
    }

    v133 = result;
    OUTLINED_FUNCTION_189();
    *(v12 + 960) = v133;
    v238 = *(v134 + 16);
    v238();
    swift_unknownObjectRelease();
LABEL_21:
    v115 = *(v12 + 1944);
    v116 = *(v12 + 1688);
    v117 = *(v12 + 992);
    sub_1D4E0CCF0();
    v118 = OUTLINED_FUNCTION_78();
    v119(v118);
    OUTLINED_FUNCTION_235(v117 + v115, v12 + 328);
    OUTLINED_FUNCTION_151_0();
    sub_1D4E0CA70();
    v120 = OUTLINED_FUNCTION_310();
    v122 = __swift_getEnumTagSinglePayload(v120, v121, v116);
    v245 = *(v12 + 1208);
    v242 = *(v12 + 1152);
    if (v122 == 1)
    {
      v195 = *(v12 + 1192);
      v236 = *(v12 + 992);
      (*(*(v12 + 1704) + 8))(*(v12 + 1712), *(v12 + 1696));
      swift_endAccess();
      swift_bridgeObjectRelease_n();
      sub_1D4DBA0E8();
      OUTLINED_FUNCTION_226();
      sub_1D4E0C8D0();
      OUTLINED_FUNCTION_132_0();
      sub_1D4E0C8C0();
      *(v12 + 129) = 2;
      sub_1D4E0C880();
      sub_1D4E0C8C0();
      sub_1D4E0C890();
      sub_1D4E0C8C0();
      v196 = OUTLINED_FUNCTION_4_0();
      sub_1D4DBA13C(v196, v197, v198);
      sub_1D4DBA1A0();
      OUTLINED_FUNCTION_142_0();
      swift_allocError();
      OUTLINED_FUNCTION_138_0();
      sub_1D4E0C8E0();
      swift_willThrow();

      v199 = OUTLINED_FUNCTION_315();
      v200(v199);
      (*(v195 + 8))(v245, v242);
      v167 = v236;
      goto LABEL_54;
    }

    v229 = *(v12 + 2376);
    v228 = *(v12 + 2248);
    v100 = *(v12 + 1848);
    v123 = *(v12 + 1824);
    v75 = *(v12 + 1776);
    v233 = v75;
    v235 = *(v12 + 1736);
    v102 = *(v12 + 1688);
    v224 = *(v12 + 1856);
    v225 = *(v12 + 1224);
    v74 = *(v12 + 1200);
    v230 = *(v12 + 1080);
    v124 = *(v12 + 1040);
    v226 = *(v12 + 1144);
    v227 = *(v12 + 1008);
    v125 = *(v12 + 1000);
    v223 = *(v12 + 992);
    (*(*(v12 + 1832) + 32))(v100, *(v12 + 1712), v102);
    swift_endAccess();
    (v238)(v123, v75, v124);
    OUTLINED_FUNCTION_258();
    v126(v224, v100, v102);
    (*v220)(v74, v245, v242);
    v229(v225, v223 + v228, v125);
    FacetCollection.init(contentRegistration:environment:system:plan:)(v224, v74, v225, v222, v125, v227, v226);
    v76 = v226;
    OUTLINED_FUNCTION_121_0();
    __swift_storeEnumTagSinglePayload(v127, v128, v129, v230);
    LOBYTE(v75) = v108;
    OUTLINED_FUNCTION_93(v221 + v108, v12 + 256);

    sub_1D4E0CA80();
    swift_endAccess();
    v130 = OUTLINED_FUNCTION_58();
    v131(v130);
    (*(v235 + 8))(v233, v124);
    v109 = v248;
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_1D4DAA694()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2464) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DAA794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v20 = v13[130];
  v13[309] = v13[112];
  sub_1D4E0CA10();
  sub_1D4E0CC20();
  OUTLINED_FUNCTION_109();

  v13[111] = v20;
  v129 = v13[308];
  while (1)
  {
    v21 = sub_1D4E0CCB0();
    v22 = v13[111];
    v23 = v13[309];
    if (v22 == v21)
    {
      break;
    }

    v14 = v13[130];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    v24 = sub_1D4E0CC60();
    if (v15)
    {
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_8_0();
      v25();
    }

    else
    {
      result = OUTLINED_FUNCTION_281(v24, v13[309]);
      if (v23 != 8)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      v22 = result;
      v38 = OUTLINED_FUNCTION_174();
      v13[114] = v22;
      (*(v39 + 16))(v38, v13 + 114);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_173();
    v18 += 32;
    v26 = OUTLINED_FUNCTION_130_0();
    v27(v26);
    OUTLINED_FUNCTION_235(v19 + v12, (v13 + 53));
    OUTLINED_FUNCTION_311();
    OUTLINED_FUNCTION_108_0();
    sub_1D4E0CA70();
    OUTLINED_FUNCTION_57_0(v15);
    if (v28)
    {
      OUTLINED_FUNCTION_125_0();

      v45 = OUTLINED_FUNCTION_204();
      v46(v45);
      swift_endAccess();
      sub_1D4DBA0E8();
      OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_206();
      sub_1D4E0C8D0();
      OUTLINED_FUNCTION_94_0();
      sub_1D4E0C8C0();
      OUTLINED_FUNCTION_319();
      OUTLINED_FUNCTION_150_0();
      OUTLINED_FUNCTION_182();
      sub_1D4E0C890();
      OUTLINED_FUNCTION_186();
      v47 = OUTLINED_FUNCTION_4_0();
      sub_1D4DBA13C(v47, v48, v49);
      sub_1D4DBA1A0();
      OUTLINED_FUNCTION_142_0();
      swift_allocError();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_205();
      sub_1D4E0C8E0();
      swift_willThrow();

      OUTLINED_FUNCTION_3_0();
      sub_1D4DBA9FC(v124, v125, v126, v50);

      (*(v19 + 8))(v23, v17);
      goto LABEL_16;
    }

    v29 = OUTLINED_FUNCTION_188();
    v30(v29);
    swift_endAccess();
    v31 = (v12)(v23);
    v13[310] = v31;
    v33 = *(v31 + 16);
    v13[311] = v33;
    v13[312] = 0;
    if (v33)
    {
      if (*(v31 + 16))
      {
        sub_1D4DBDE40(v31 + 32, (v13 + 2));
        sub_1D4E0CD60();
        v13[313] = v129;
        if (v129)
        {
          OUTLINED_FUNCTION_126_0();

          OUTLINED_FUNCTION_3_0();
          v51 = OUTLINED_FUNCTION_136();
          sub_1D4DBA9FC(v51, v52, v129, v53);

          (*(v18 + 8))();
          (*(v19 + 8))();
          __swift_destroy_boxed_opaque_existential_1Tm(v13 + 2);
LABEL_16:
          v54 = (v13 + 88);
LABEL_17:
          sub_1D4DAFEE8(v54);
LABEL_18:
          OUTLINED_FUNCTION_290();
          OUTLINED_FUNCTION_7_0();
          OUTLINED_FUNCTION_2_0();
          OUTLINED_FUNCTION_9_0();
          OUTLINED_FUNCTION_316();
          OUTLINED_FUNCTION_165_0();
          OUTLINED_FUNCTION_143_0();

          OUTLINED_FUNCTION_58_0();
          OUTLINED_FUNCTION_156();

          return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
        }

        OUTLINED_FUNCTION_334(v13 + 2);
        v84 = swift_task_alloc();
        v13[314] = v84;
        *v84 = v13;
        OUTLINED_FUNCTION_54_0(v84);
        OUTLINED_FUNCTION_156();

        return FacetBuildingPlan.addFacet<A>(_:)();
      }

      __break(1u);
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_252(v31);
    v16 += 8;
    v34 = OUTLINED_FUNCTION_87_0();
    v35(v34);
    v36 = *(v12 + 8);
    v12 += 8;
    v36(v22, v15);
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_3_0();
  v40 = OUTLINED_FUNCTION_136();
  sub_1D4DBA9FC(v40, v41, v22, v42);

  v43 = sub_1D4E0CCB0();
  v22 = v13[101];
  if (v22 == v43)
  {
    v44 = 1;
    goto LABEL_24;
  }

  v23 = v13[301];
  v14 = v13[266];
  OUTLINED_FUNCTION_87_0();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_140_0();
  v31 = sub_1D4E0CC60();
  v32 = v13[301];
  if (v15)
  {
    OUTLINED_FUNCTION_90_0();
    OUTLINED_FUNCTION_8_0();
    v63();
    goto LABEL_23;
  }

LABEL_57:
  result = OUTLINED_FUNCTION_279(v31, v32);
  if (v23 != 8)
  {
    goto LABEL_62;
  }

  v120 = OUTLINED_FUNCTION_73_0(result);
  v121(v120);
  swift_unknownObjectRelease();
LABEL_23:
  v64 = OUTLINED_FUNCTION_71_0();
  v65(v64);
  OUTLINED_FUNCTION_148();
  v43 = sub_1D4E0CCF0();
  v44 = 0;
LABEL_24:
  OUTLINED_FUNCTION_76_0(v43, v44);
  if (v28)
  {
    v70 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    OUTLINED_FUNCTION_241();
    v14 = v13[144];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_53_0(v66);
    v67 = OUTLINED_FUNCTION_275();
    (v12)(v67);
    OUTLINED_FUNCTION_115_0();
    v68 = swift_allocObject();
    v69 = OUTLINED_FUNCTION_42_0(v68);
    (v12)(v69, v17 + v18, v14);
    v70 = OUTLINED_FUNCTION_37_0();
  }

  __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
  v74 = OUTLINED_FUNCTION_75_0();
  v75(v74);
  OUTLINED_FUNCTION_30_0();
  if (!v28)
  {
    v79 = OUTLINED_FUNCTION_31_0();
    v80(v79);
    sub_1D4E0CD60();
    if (v129)
    {
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_3_0();
      v81 = OUTLINED_FUNCTION_105();
      sub_1D4DBA9FC(v81, v82, v14, v83);

      v54 = v17;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_293();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v13[307] = v111;
    *v111 = v112;
    OUTLINED_FUNCTION_39_0(v111);
LABEL_53:
    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_156();

    return sub_1D4DB1870();
  }

  OUTLINED_FUNCTION_218();
  v13[315] = *(v12 + v23);
  sub_1D4E0CA10();
  v76 = sub_1D4E0CC20();
  OUTLINED_FUNCTION_280(v76);
  OUTLINED_FUNCTION_259();
  if (v28)
  {
    v78 = 1;
  }

  else
  {
    v86 = v13[315];
    v14 = v13[273];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    v87 = sub_1D4E0CC60();
    if (v15)
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_8_0();
      v88();
    }

    else
    {
      result = OUTLINED_FUNCTION_197(v87, v13[315]);
      if (v86 != 8)
      {
        goto LABEL_63;
      }

      v122 = OUTLINED_FUNCTION_27_0(result);
      v123(v122);
      swift_unknownObjectRelease();
    }

    v89 = OUTLINED_FUNCTION_26_0();
    v90(v89);
    OUTLINED_FUNCTION_148();
    v77 = sub_1D4E0CCF0();
    v78 = 0;
  }

  v91 = v13[165];
  OUTLINED_FUNCTION_16_0(v77, v78);
  if (!v28)
  {
    OUTLINED_FUNCTION_127_0();
    v92 = v13[156];
    v93 = v13[149];
    v94 = v13[133];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_250();
    v127 = v95;
    v128 = *(v94 + 32);
    v97 = OUTLINED_FUNCTION_102_0(v96);
    v98(v97);
    v99 = *(v93 + 32);
    v100 = OUTLINED_FUNCTION_101_0();
    v99(v100);
    OUTLINED_FUNCTION_115_0();
    v17 = swift_allocObject();
    v101 = OUTLINED_FUNCTION_64_0(v17, v127);
    v128(v101);
    v102 = OUTLINED_FUNCTION_230();
    v99(v102);
    OUTLINED_FUNCTION_15_0();
    *v92 = v103;
    v92[1] = v17;
  }

  v104 = OUTLINED_FUNCTION_18_0();
  v17(v104);
  OUTLINED_FUNCTION_57_0(v91);
  if (!v28)
  {
    v105 = OUTLINED_FUNCTION_17_0();
    v106(v105);
    v107 = OUTLINED_FUNCTION_176();
    v108(v107);
    sub_1D4E0CD60();
    if (v129)
    {
      v109 = OUTLINED_FUNCTION_51_0();
      v110(v109);

      v54 = v14;
      goto LABEL_17;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v13[318] = v117;
    *v117 = v118;
    OUTLINED_FUNCTION_13_0(v117);
    goto LABEL_53;
  }

  sub_1D4E0CD60();
  if (v129)
  {
    OUTLINED_FUNCTION_254();
    sub_1D4DAFEE8(v22);
    goto LABEL_18;
  }

  v113 = swift_task_alloc();
  v114 = OUTLINED_FUNCTION_272(v113);
  *v114 = v115;
  OUTLINED_FUNCTION_14_0(v114);
  OUTLINED_FUNCTION_156();

  return FacetBuildingPlan.optimize()();
}

uint64_t sub_1D4DAB1E8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DAB2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  __swift_destroy_boxed_opaque_existential_1Tm(v15 + 2);
  v130 = v15[313];
  v23 = v15[312] + 1;
  for (i = v15[311]; ; v15[311] = i)
  {
    v15[312] = v23;
    v25 = v15[310];
    if (v23 != i)
    {
      if (v23 < *(v25 + 16))
      {
        sub_1D4DBDE40(v25 + 40 * v23 + 32, (v15 + 2));
        sub_1D4E0CD60();
        v15[313] = v130;
        if (v130)
        {
          OUTLINED_FUNCTION_126_0();

          OUTLINED_FUNCTION_3_0();
          v41 = OUTLINED_FUNCTION_136();
          sub_1D4DBA9FC(v41, v42, v130, v43);

          (*(v20 + 8))();
          (*(v21 + 8))();
          __swift_destroy_boxed_opaque_existential_1Tm(v15 + 2);
          goto LABEL_16;
        }

        OUTLINED_FUNCTION_334(v15 + 2);
        v85 = swift_task_alloc();
        v15[314] = v85;
        *v85 = v15;
        OUTLINED_FUNCTION_54_0(v85);
        OUTLINED_FUNCTION_156();

        return FacetBuildingPlan.addFacet<A>(_:)();
      }

      __break(1u);
LABEL_57:
      result = OUTLINED_FUNCTION_279(v25, v22);
      if (v12 != 8)
      {
        goto LABEL_62;
      }

      v121 = OUTLINED_FUNCTION_73_0(result);
      v122(v121);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_252(v25);
    v18 += 8;
    v26 = OUTLINED_FUNCTION_87_0();
    v27(v26);
    v28 = *(v14 + 8);
    v14 += 8;
    v28(v13, v17);
    v29 = sub_1D4E0CCB0();
    v13 = v15[111];
    v12 = v15[309];
    if (v13 == v29)
    {
      break;
    }

    v16 = v15[130];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    v30 = sub_1D4E0CC60();
    if (v17)
    {
      OUTLINED_FUNCTION_174();
      OUTLINED_FUNCTION_8_0();
      v31();
    }

    else
    {
      result = OUTLINED_FUNCTION_281(v30, v15[309]);
      if (v12 != 8)
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      v13 = result;
      v39 = OUTLINED_FUNCTION_174();
      v15[114] = v13;
      (*(v40 + 16))(v39, v15 + 114);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_173();
    v20 += 32;
    v32 = OUTLINED_FUNCTION_130_0();
    v33(v32);
    OUTLINED_FUNCTION_235(v21 + v14, (v15 + 53));
    OUTLINED_FUNCTION_311();
    OUTLINED_FUNCTION_108_0();
    sub_1D4E0CA70();
    OUTLINED_FUNCTION_57_0(v17);
    if (v34)
    {
      OUTLINED_FUNCTION_125_0();

      v49 = OUTLINED_FUNCTION_204();
      v50(v49);
      swift_endAccess();
      sub_1D4DBA0E8();
      OUTLINED_FUNCTION_238();
      OUTLINED_FUNCTION_206();
      sub_1D4E0C8D0();
      OUTLINED_FUNCTION_94_0();
      sub_1D4E0C8C0();
      OUTLINED_FUNCTION_319();
      OUTLINED_FUNCTION_150_0();
      OUTLINED_FUNCTION_182();
      sub_1D4E0C890();
      OUTLINED_FUNCTION_186();
      v51 = OUTLINED_FUNCTION_4_0();
      sub_1D4DBA13C(v51, v52, v53);
      sub_1D4DBA1A0();
      OUTLINED_FUNCTION_142_0();
      swift_allocError();
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_205();
      sub_1D4E0C8E0();
      swift_willThrow();

      OUTLINED_FUNCTION_3_0();
      sub_1D4DBA9FC(v125, v126, v127, v54);

      (*(v21 + 8))(v12, v19);
LABEL_16:
      v55 = (v15 + 88);
LABEL_17:
      sub_1D4DAFEE8(v55);
LABEL_18:
      OUTLINED_FUNCTION_290();
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_316();
      OUTLINED_FUNCTION_165_0();
      OUTLINED_FUNCTION_143_0();

      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_156();

      return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12);
    }

    v35 = OUTLINED_FUNCTION_188();
    v36(v35);
    swift_endAccess();
    v37 = (v14)(v12);
    v23 = 0;
    v15[310] = v37;
    i = *(v37 + 16);
  }

  OUTLINED_FUNCTION_321();
  OUTLINED_FUNCTION_3_0();
  v44 = OUTLINED_FUNCTION_136();
  sub_1D4DBA9FC(v44, v45, v13, v46);

  v47 = sub_1D4E0CCB0();
  v13 = v15[101];
  if (v13 == v47)
  {
    v48 = 1;
    goto LABEL_24;
  }

  v12 = v15[301];
  v16 = v15[266];
  OUTLINED_FUNCTION_87_0();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_140_0();
  v25 = sub_1D4E0CC60();
  v22 = v15[301];
  if ((v17 & 1) == 0)
  {
    goto LABEL_57;
  }

  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_8_0();
  v64();
LABEL_23:
  v65 = OUTLINED_FUNCTION_71_0();
  v66(v65);
  OUTLINED_FUNCTION_148();
  v47 = sub_1D4E0CCF0();
  v48 = 0;
LABEL_24:
  OUTLINED_FUNCTION_76_0(v47, v48);
  if (v34)
  {
    v71 = OUTLINED_FUNCTION_69_0();
  }

  else
  {
    OUTLINED_FUNCTION_241();
    v16 = v15[144];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_193();
    OUTLINED_FUNCTION_53_0(v67);
    v68 = OUTLINED_FUNCTION_275();
    (v14)(v68);
    OUTLINED_FUNCTION_115_0();
    v69 = swift_allocObject();
    v70 = OUTLINED_FUNCTION_42_0(v69);
    (v14)(v70, v19 + v20, v16);
    v71 = OUTLINED_FUNCTION_37_0();
  }

  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  v75 = OUTLINED_FUNCTION_75_0();
  v76(v75);
  OUTLINED_FUNCTION_30_0();
  if (!v34)
  {
    v80 = OUTLINED_FUNCTION_31_0();
    v81(v80);
    sub_1D4E0CD60();
    if (v130)
    {
      OUTLINED_FUNCTION_217();
      OUTLINED_FUNCTION_3_0();
      v82 = OUTLINED_FUNCTION_105();
      sub_1D4DBA9FC(v82, v83, v16, v84);

      v55 = v19;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_293();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v15[307] = v112;
    *v112 = v113;
    OUTLINED_FUNCTION_39_0(v112);
LABEL_53:
    OUTLINED_FUNCTION_270();
    OUTLINED_FUNCTION_156();

    return sub_1D4DB1870();
  }

  OUTLINED_FUNCTION_218();
  v15[315] = *(v14 + v12);
  sub_1D4E0CA10();
  v77 = sub_1D4E0CC20();
  OUTLINED_FUNCTION_280(v77);
  OUTLINED_FUNCTION_259();
  if (v34)
  {
    v79 = 1;
  }

  else
  {
    v87 = v15[315];
    v16 = v15[273];
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_140_0();
    v88 = sub_1D4E0CC60();
    if (v17)
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_8_0();
      v89();
    }

    else
    {
      result = OUTLINED_FUNCTION_197(v88, v15[315]);
      if (v87 != 8)
      {
        goto LABEL_63;
      }

      v123 = OUTLINED_FUNCTION_27_0(result);
      v124(v123);
      swift_unknownObjectRelease();
    }

    v90 = OUTLINED_FUNCTION_26_0();
    v91(v90);
    OUTLINED_FUNCTION_148();
    v78 = sub_1D4E0CCF0();
    v79 = 0;
  }

  v92 = v15[165];
  OUTLINED_FUNCTION_16_0(v78, v79);
  if (!v34)
  {
    OUTLINED_FUNCTION_127_0();
    v93 = v15[156];
    v94 = v15[149];
    v95 = v15[133];
    OUTLINED_FUNCTION_318();
    OUTLINED_FUNCTION_250();
    v128 = v96;
    v129 = *(v95 + 32);
    v98 = OUTLINED_FUNCTION_102_0(v97);
    v99(v98);
    v100 = *(v94 + 32);
    v101 = OUTLINED_FUNCTION_101_0();
    v100(v101);
    OUTLINED_FUNCTION_115_0();
    v19 = swift_allocObject();
    v102 = OUTLINED_FUNCTION_64_0(v19, v128);
    v129(v102);
    v103 = OUTLINED_FUNCTION_230();
    v100(v103);
    OUTLINED_FUNCTION_15_0();
    *v93 = v104;
    v93[1] = v19;
  }

  v105 = OUTLINED_FUNCTION_18_0();
  v19(v105);
  OUTLINED_FUNCTION_57_0(v92);
  if (!v34)
  {
    v106 = OUTLINED_FUNCTION_17_0();
    v107(v106);
    v108 = OUTLINED_FUNCTION_176();
    v109(v108);
    sub_1D4E0CD60();
    if (v130)
    {
      v110 = OUTLINED_FUNCTION_51_0();
      v111(v110);

      v55 = v16;
      goto LABEL_17;
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v15[318] = v118;
    *v118 = v119;
    OUTLINED_FUNCTION_13_0(v118);
    goto LABEL_53;
  }

  sub_1D4E0CD60();
  if (v130)
  {
    OUTLINED_FUNCTION_254();
    sub_1D4DAFEE8(v13);
    goto LABEL_18;
  }

  v114 = swift_task_alloc();
  v115 = OUTLINED_FUNCTION_272(v114);
  *v115 = v116;
  OUTLINED_FUNCTION_14_0(v115);
  OUTLINED_FUNCTION_156();

  return FacetBuildingPlan.optimize()();
}

uint64_t sub_1D4DABD30()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 2552) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DABE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v16 = *(v12 + 1616);
  OUTLINED_FUNCTION_30_0();
  if (v17)
  {
    v18 = *(v12 + 1608);
    v19 = *(v12 + 1048);
    (*(*(v12 + 1064) + 8))(*(v12 + 1072), *(v12 + 1056));

    v24 = v18 + 8;
    v20 = OUTLINED_FUNCTION_52();
    v21(v20);
    v94 = *(v12 + 2552);
    goto LABEL_4;
  }

  v14 = *(v12 + 2416);
  v24 = *(v12 + 1752);
  v13 = *(v12 + 1128);
  v25 = *(v12 + 1080);
  v26 = *(v12 + 992);
  OUTLINED_FUNCTION_148();
  v27();
  OUTLINED_FUNCTION_235(v14 + v26, v12 + 544);
  OUTLINED_FUNCTION_311();
  sub_1D4E0CA70();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v25);
  v29 = *(v12 + 2536);
  if (EnumTagSinglePayload == 1)
  {
    v89 = *(v12 + 1752);
    v30 = *(v12 + 1736);
    v31 = *(v12 + 1064);
    OUTLINED_FUNCTION_271();

    v32 = OUTLINED_FUNCTION_58();
    v33(v32);
    swift_endAccess();
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_238();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    *(v12 + 131) = 3;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_150_0();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_186();
    v34 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v34, v35, v36);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_142_0();
    swift_allocError();
    OUTLINED_FUNCTION_138_0();
    sub_1D4E0C8E0();
    swift_willThrow();

    (*(v30 + 8))(v89, v15);
    (*(v31 + 8))();
LABEL_24:
    v57 = v93;
    goto LABEL_25;
  }

  v58 = *(v12 + 2528);
  v59 = *(v12 + 1096);
  (*(*(v12 + 1088) + 32))(v59, *(v12 + 1128), *(v12 + 1080));
  swift_endAccess();
  result = (v58)(v59);
  v16 = result;
  *(v12 + 2560) = result;
  v61 = *(result + 16);
  *(v12 + 2568) = v61;
  v94 = *(v12 + 2552);
  *(v12 + 2576) = 0;
  if (!v61)
  {
    OUTLINED_FUNCTION_184();

    v15 += 8;
    v82 = OUTLINED_FUNCTION_146_0();
    v83(v82);
    v84 = *(v58 + 8);
    v19 = (v58 + 8);
    v84(v29, v26);
    (*(v25 + 8))(v93, v14);
LABEL_4:
    sub_1D4E0CCB0();
    OUTLINED_FUNCTION_259();
    if (v17)
    {
      v23 = 1;
    }

    else
    {
      v37 = *(v12 + 2520);
      v24 = *(v12 + 2184);
      OUTLINED_FUNCTION_87_0();
      sub_1D4E0CCA0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_140_0();
      v38 = sub_1D4E0CC60();
      if (v13)
      {
        OUTLINED_FUNCTION_55_0();
        OUTLINED_FUNCTION_8_0();
        v39();
      }

      else
      {
        result = OUTLINED_FUNCTION_197(v38, *(v12 + 2520));
        if (v37 != 8)
        {
LABEL_42:
          __break(1u);
          return result;
        }

        v87 = OUTLINED_FUNCTION_27_0(result);
        v88(v87);
        swift_unknownObjectRelease();
      }

      v40 = OUTLINED_FUNCTION_26_0();
      v41(v40);
      OUTLINED_FUNCTION_148();
      v22 = sub_1D4E0CCF0();
      v23 = 0;
    }

    v42 = *(v12 + 1320);
    OUTLINED_FUNCTION_16_0(v22, v23);
    if (!v17)
    {
      v16 = *(v12 + 1352);
      v42 = *(v12 + 1320);
      OUTLINED_FUNCTION_89_0();
      v92 = *(v15 + 64);
      v43 = *(v13 + 32);
      v90 = *(v12 + 1000);
      v44 = OUTLINED_FUNCTION_130_0();
      v45(v44);
      v46 = OUTLINED_FUNCTION_223();
      v19(v46);
      OUTLINED_FUNCTION_115_0();
      v14 = swift_allocObject();
      v47 = OUTLINED_FUNCTION_97_0(v14, *(v42 + v92), v90);
      v43(v47);
      v48 = OUTLINED_FUNCTION_230();
      v19(v48);
      OUTLINED_FUNCTION_15_0();
      *v15 = v49;
      *(v15 + 8) = v14;
    }

    v50 = OUTLINED_FUNCTION_18_0();
    (v14)(v50);
    OUTLINED_FUNCTION_57_0(v42);
    if (v17)
    {

      sub_1D4E0CD60();
      if (v94)
      {
        OUTLINED_FUNCTION_254();
        sub_1D4DAFEE8(v16);
LABEL_26:
        OUTLINED_FUNCTION_290();
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_32_0(v66);
        OUTLINED_FUNCTION_49_0();

        OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_156();

        return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12);
      }

      v75 = swift_task_alloc();
      v76 = OUTLINED_FUNCTION_272(v75);
      *v76 = v77;
      OUTLINED_FUNCTION_14_0(v76);
      OUTLINED_FUNCTION_156();

      return FacetBuildingPlan.optimize()();
    }

    else
    {
      v51 = OUTLINED_FUNCTION_17_0();
      v52(v51);
      v53 = OUTLINED_FUNCTION_176();
      v54(v53);
      sub_1D4E0CD60();
      if (v94)
      {
        v55 = OUTLINED_FUNCTION_51_0();
        v56(v55);

        v57 = v24;
LABEL_25:
        sub_1D4DAFEE8(v57);
        goto LABEL_26;
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2544) = v79;
      *v79 = v80;
      OUTLINED_FUNCTION_13_0(v79);
      OUTLINED_FUNCTION_156();

      return sub_1D4DB1870();
    }
  }

  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_42;
  }

  sub_1D4DBDE40(result + 32, v12 + 56);
  sub_1D4E0CD60();
  *(v12 + 2584) = v94;
  if (v94)
  {
    v62 = *(v12 + 1736);
    v63 = *(v12 + 1064);
    OUTLINED_FUNCTION_271();

    v64 = OUTLINED_FUNCTION_180();
    v65(v64);
    (*(v62 + 8))(v91, v15);
    (*(v63 + 8))();
    __swift_destroy_boxed_opaque_existential_1Tm((v12 + 56));
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_334((v12 + 56));
  v85 = swift_task_alloc();
  *(v12 + 2592) = v85;
  *v85 = v12;
  OUTLINED_FUNCTION_54_0(v85);
  OUTLINED_FUNCTION_156();

  return FacetBuildingPlan.addFacet<A>(_:)();
}

uint64_t sub_1D4DAC760()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DAC844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v19 = __swift_destroy_boxed_opaque_existential_1Tm((v13 + 56));
  v21 = *(v13 + 2584);
  v22 = *(v13 + 2576) + 1;
  *(v13 + 2576) = v22;
  v23 = *(v13 + 2560);
  if (v22 != *(v13 + 2568))
  {
    if (v22 < *(v23 + 16))
    {
      sub_1D4DBDE40(v23 + 40 * v22 + 32, v13 + 56);
      sub_1D4E0CD60();
      *(v13 + 2584) = v21;
      if (!v21)
      {
        OUTLINED_FUNCTION_334((v13 + 56));
        v62 = swift_task_alloc();
        *(v13 + 2592) = v62;
        *v62 = v13;
        OUTLINED_FUNCTION_54_0(v62);
        OUTLINED_FUNCTION_156();

        return FacetBuildingPlan.addFacet<A>(_:)();
      }

      v30 = *(v13 + 1736);
      v79 = *(v13 + 1072);
      v31 = *(v13 + 1064);
      v75 = *(v13 + 1752);
      v77 = *(v13 + 1056);
      v74 = *(v13 + 1040);
      v23 = *(v13 + 992);

      v32 = OUTLINED_FUNCTION_191();
      v33(v32);
      (*(v30 + 8))(v75, v74);
      (*(v31 + 8))(v79, v77);
      __swift_destroy_boxed_opaque_existential_1Tm((v13 + 56));
LABEL_19:
      sub_1D4DAFEE8(v23);
      OUTLINED_FUNCTION_88_0();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_32_0(v52);
      OUTLINED_FUNCTION_49_0();

      OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_156();

      return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12);
    }

    __break(1u);
LABEL_32:
    result = OUTLINED_FUNCTION_197(v19, v20);
    if (v12 != 8)
    {
      __break(1u);
      return result;
    }

    v71 = OUTLINED_FUNCTION_27_0(result);
    v72(v71);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v80 = v21;
  OUTLINED_FUNCTION_184();

  v18 += 8;
  v24 = OUTLINED_FUNCTION_146_0();
  v25(v24);
  v26 = *(v21 + 8);
  v21 += 8;
  v26(v12, v17);
  (*(v15 + 8))(v78, v16);
  sub_1D4E0CCB0();
  OUTLINED_FUNCTION_259();
  if (v28)
  {
    v29 = 1;
    goto LABEL_11;
  }

  v12 = *(v13 + 2520);
  OUTLINED_FUNCTION_87_0();
  sub_1D4E0CCA0();
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_140_0();
  v19 = sub_1D4E0CC60();
  v20 = *(v13 + 2520);
  if ((v14 & 1) == 0)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_8_0();
  v34();
LABEL_10:
  v35 = OUTLINED_FUNCTION_26_0();
  v36(v35);
  OUTLINED_FUNCTION_148();
  v27 = sub_1D4E0CCF0();
  v29 = 0;
LABEL_11:
  v37 = *(v13 + 1320);
  OUTLINED_FUNCTION_16_0(v27, v29);
  if (!v28)
  {
    v23 = *(v13 + 1352);
    v37 = *(v13 + 1320);
    OUTLINED_FUNCTION_89_0();
    v76 = *(v18 + 64);
    v38 = *(v14 + 32);
    v14 += 32;
    v73 = *(v13 + 1000);
    v39 = OUTLINED_FUNCTION_130_0();
    v40(v39);
    v41 = OUTLINED_FUNCTION_223();
    (v21)(v41);
    OUTLINED_FUNCTION_115_0();
    v16 = swift_allocObject();
    v42 = OUTLINED_FUNCTION_97_0(v16, *(v37 + v76), v73);
    v38(v42);
    v43 = OUTLINED_FUNCTION_230();
    (v21)(v43);
    OUTLINED_FUNCTION_15_0();
    *v18 = v44;
    *(v18 + 8) = v16;
  }

  v45 = OUTLINED_FUNCTION_18_0();
  (v16)(v45);
  OUTLINED_FUNCTION_57_0(v37);
  if (v28)
  {

    sub_1D4E0CD60();
    if (!v80)
    {
      v64 = swift_task_alloc();
      v65 = OUTLINED_FUNCTION_272(v64);
      *v65 = v66;
      OUTLINED_FUNCTION_14_0(v65);
      OUTLINED_FUNCTION_156();

      return FacetBuildingPlan.optimize()();
    }

    OUTLINED_FUNCTION_254();
    goto LABEL_19;
  }

  v46 = *(v13 + 1360);
  v47 = *(v13 + 1192);
  v48 = *(v13 + 1152);
  OUTLINED_FUNCTION_61_0();
  v50 = (v46 + *(v49 + 64));
  *(v13 + 2528) = *v50;
  *(v13 + 2536) = v50[1];
  (*(v51 + 32))();
  (*(v47 + 8))(v46 + v14, v48);
  sub_1D4E0CD60();
  if (v80)
  {
    v23 = *(v13 + 992);
    (*(*(v13 + 1064) + 8))(*(v13 + 1072), *(v13 + 1056));

    goto LABEL_19;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v13 + 2544) = v68;
  *v68 = v69;
  OUTLINED_FUNCTION_13_0(v68);
  OUTLINED_FUNCTION_156();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DACF74()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 2608) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DAD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v14 = *(v13 + 2608);
  sub_1D4E0CD60();
  if (v14)
  {
    OUTLINED_FUNCTION_254();
    sub_1D4DAFEE8(v12);
    OUTLINED_FUNCTION_290();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_143_0();

    OUTLINED_FUNCTION_58_0();
    OUTLINED_FUNCTION_156();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
  }

  else
  {
    v24 = swift_task_alloc();
    *(v13 + 2616) = v24;
    *v24 = v13;
    v24[1] = sub_1D4DAD394;
    OUTLINED_FUNCTION_156();

    return FacetBuildingPlan.execute()();
  }
}

uint64_t sub_1D4DAD394()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 2624) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DAD48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = v12[124];
  OUTLINED_FUNCTION_79();
  v15 = *(v14 + 176);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v16 = *(v13 + v15);
  v12[329] = v16;
  v17 = v16[2];
  v12[330] = v17;
  OUTLINED_FUNCTION_79();
  v12[331] = *(v18 + 184);
  v19 = v12[328];
  v12[332] = 0;
  v20 = sub_1D4E0CA10();
  if (!v17)
  {
    OUTLINED_FUNCTION_296();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_1_1(v12[169]);
    v31 = v12[124];

    sub_1D4DAFEE8(v31);

    OUTLINED_FUNCTION_8();
    goto LABEL_6;
  }

  if (!v16[2])
  {
    __break(1u);
    return MEMORY[0x1EEE41870](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = v16[4];
  v28 = v16[5];
  v12[333] = v28;

  sub_1D4E0CD60();
  v12[334] = v19;
  if (!v19)
  {
    v41 = swift_task_alloc();
    v12[335] = v41;
    *(v41 + 16) = v29;
    *(v41 + 24) = v28;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v12[336] = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_159_0(v42);
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_156();

    return MEMORY[0x1EEE41870](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v30 = v12[124];

  sub_1D4DAFEE8(v30);
  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_143_0();

  OUTLINED_FUNCTION_58_0();
LABEL_6:
  OUTLINED_FUNCTION_156();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1D4DADC2C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DADD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 2648);
  v14 = *(v12 + 992);
  OUTLINED_FUNCTION_93(v14 + v13, v12 + 568);
  v15 = *(v14 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + v13) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = *(v12 + 2648);
    v50 = *(v12 + 992);
    v15 = sub_1D4D9CAB8(0, v15[2] + 1, 1, v15);
    *(v50 + v49) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D4D9CAB8((v17 > 1), v18 + 1, 1, v15);
  }

  v19 = *(v12 + 2648);
  v20 = *(v12 + 992);
  v15[2] = v18 + 1;
  v21 = &v15[5 * v18];
  v22 = *(v12 + 96);
  v23 = *(v12 + 112);
  *(v21 + 64) = *(v12 + 128);
  *(v21 + 2) = v22;
  *(v21 + 3) = v23;
  *(v20 + v19) = v15;
  swift_endAccess();

  v32 = *(v12 + 2672);
  v33 = *(v12 + 2656) + 1;
  *(v12 + 2656) = v33;
  v34 = *(v12 + 2632);
  if (v33 != *(v12 + 2640))
  {
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
    }

    else
    {
      v51 = *(v34 + 16 * v33 + 32);
      *(v12 + 2664) = *(&v51 + 1);

      sub_1D4E0CD60();
      *(v12 + 2672) = v32;
      if (v32)
      {
        v36 = *(v12 + 992);

        sub_1D4DAFEE8(v36);
        OUTLINED_FUNCTION_239();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_32_0(*(v12 + 1328));
        OUTLINED_FUNCTION_129_0();

        OUTLINED_FUNCTION_58_0();
        goto LABEL_10;
      }

      v46 = swift_task_alloc();
      *(v12 + 2680) = v46;
      *(v46 + 16) = v51;
      swift_task_alloc();
      OUTLINED_FUNCTION_24();
      *(v12 + 2688) = v47;
      *v47 = v48;
      OUTLINED_FUNCTION_159_0(v47);
      OUTLINED_FUNCTION_135_0();
      OUTLINED_FUNCTION_156();
    }

    return MEMORY[0x1EEE41870](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_6_0();
  v35 = *(v12 + 992);

  sub_1D4DAFEE8(v35);

  OUTLINED_FUNCTION_8();
LABEL_10:
  OUTLINED_FUNCTION_156();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

void sub_1D4DAE4D8()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 992);

  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v2);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAE76C()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4DAFEE8(*(v0 + 992));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAE9F4()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = v0[124];
  (*(v0[178] + 8))(v0[179], v0[177]);
  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v2);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAEC9C()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = v0[124];
  (*(v0[157] + 8))(v0[158], v0[156]);
  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v2);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAEF44()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4DAFEE8(*(v0 + 992));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF1CC()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  sub_1D4DAFEE8(*(v0 + 992));
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF454()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 133);
  v2 = *(v0 + 992);

  OUTLINED_FUNCTION_3_0();
  v3 = OUTLINED_FUNCTION_78();
  sub_1D4DBA9FC(v3, v4, v1, v5);
  sub_1D4DAFEE8(v2);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v6);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF710()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v1 = *(v0 + 992);

  v2 = OUTLINED_FUNCTION_30();
  v3(v2);
  sub_1D4DAFEE8(v1);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v4);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAF9D0()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_254();
  sub_1D4DAFEE8(v0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

void sub_1D4DAFC5C()
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_254();
  sub_1D4DAFEE8(v0);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(v1);

  OUTLINED_FUNCTION_29_0();
  OUTLINED_FUNCTION_156();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D4DAFEE8(uint64_t a1)
{
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v4 = sub_1D4E0CD00();
  type metadata accessor for ContentManagementPlan.Link(255, v2, v4, v3);
  swift_getAssociatedTypeWitness();
  sub_1D4DB94C8(255);
  type metadata accessor for FacetCollection(255, v2, v3, v5);
  swift_getFunctionTypeMetadata1();
  swift_getTupleTypeMetadata3();
  v6 = sub_1D4E0CC80();
  v7 = *(*a1 + 160);
  swift_beginAccess();
  *(a1 + v7) = v6;

  v8 = sub_1D4E0CEE0();
  type metadata accessor for ContentManagementPlan.Link(255, v2, v8, v3);
  swift_getTupleTypeMetadata3();
  v9 = sub_1D4E0CC80();
  v10 = *(*a1 + 168);
  swift_beginAccess();
  *(a1 + v10) = v9;

  v11 = *(*a1 + 176);
  swift_beginAccess();
  *(a1 + v11) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D4DB01E8@<X0>(uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CE50();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  swift_getWitnessTable();
  result = sub_1D4E0CE20();
  *a4 = result;
  return result;
}

uint64_t sub_1D4DB03FC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = *v1;
  v2[13] = *(*v1 + 88);
  v2[14] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[15] = AssociatedTypeWitness;
  v2[16] = *(AssociatedTypeWitness - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB0500, 0, 0);
}

uint64_t sub_1D4DB0500()
{
  v29 = v0[12];
  v1 = v0[11];
  v2 = v0[13];
  v3 = v0[14];
  v0[18] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_291();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_262();
  v0[19] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_162_0();
  v0[20] = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_147_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_156_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_262();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_168();
  swift_getAssociatedConformanceWitness();
  v0[5] = sub_1D4E0C990();
  v27 = v0 + 5;
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_112_0();
  v0[6] = sub_1D4E0CC80();
  v0[7] = v1;
  v4 = swift_task_alloc();
  *v4 = v3;
  v4[1] = v2;
  KeyPath = swift_getKeyPath();

  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = KeyPath;
  OUTLINED_FUNCTION_141_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_153();
  v0[21] = sub_1D4E0CD00();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  v6 = sub_1D4E0C960();
  v8 = v7;
  v10 = v9;

  v0[2] = v6;
  v0[3] = v8;
  v0[4] = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v3;
  *(v11 + 24) = v2;
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_140_0();
  sub_1D4E0C970();
  sub_1D4E0C950();

  v12 = v0[3];
  v0[22] = v0[2];
  v0[23] = v12;
  v0[24] = v0[4];
  v0[25] = *(*v29 + 96);

  if (sub_1D4E0CFC0())
  {
    OUTLINED_FUNCTION_147_0();
    sub_1D4E0D000();
    v13 = v0[8];
    v0[26] = 1;
    v14 = v0[14];
    v30 = v0[13];
    v15 = OUTLINED_FUNCTION_324(v13);
    v15[2] = v14;
    v15[3] = v30;
    v15[4] = v27;
    OUTLINED_FUNCTION_10_0();
    swift_getWitnessTable();
    v0[27] = OUTLINED_FUNCTION_161_0();

    v16 = swift_task_alloc();
    v0[28] = v16;
    v16[2] = v14;
    v16[3] = v30;
    v16[4] = v0 + 6;
    v16[5] = v27;
    OUTLINED_FUNCTION_117_0();
    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    OUTLINED_FUNCTION_86_0(v17);
    OUTLINED_FUNCTION_253();

    __asm { BRAA            X5, X16 }
  }

  v20 = OUTLINED_FUNCTION_323();
  v0[33] = OUTLINED_FUNCTION_111(v20);
  v21 = sub_1D4D8E454();
  OUTLINED_FUNCTION_110(v21);
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1D4DB09F0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4DB0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[26];
  if (v15 == sub_1D4E0CFC0())
  {

    v16 = OUTLINED_FUNCTION_323();
    v14[33] = OUTLINED_FUNCTION_111(v16);
    v17 = sub_1D4D8E454();
    OUTLINED_FUNCTION_110(v17);
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32();

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }

  OUTLINED_FUNCTION_105();
  v18 = sub_1D4E0D000();
  v22 = v14[8];
  v14[26] = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }

  v23 = v14[14];
  v38 = v14[13];
  v24 = OUTLINED_FUNCTION_324(v22);
  v24[2] = v23;
  v24[3] = v38;
  v24[4] = v14 + 5;
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  v14[27] = OUTLINED_FUNCTION_161_0();

  v25 = swift_task_alloc();
  v14[28] = v25;
  v25[2] = v23;
  v25[3] = v38;
  v25[4] = v14 + 6;
  v25[5] = v14 + 5;
  v39 = v38 + 72;
  OUTLINED_FUNCTION_117_0();
  v37 = v26 + *v26;
  v27 = swift_task_alloc();
  v14[29] = v27;
  *v27 = v14;
  OUTLINED_FUNCTION_86_0(v27);
  OUTLINED_FUNCTION_32();

  return v33(v28, v29, v30, v31, v32, v33, v34, v35, v37, v39, a11, a12, a13, a14);
}

uint64_t sub_1D4DB0D2C()
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 248);

  OUTLINED_FUNCTION_297();
  v2 = OUTLINED_FUNCTION_58();
  v1(v2);
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_196();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4DB0DB0()
{
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  v1[1] = vextq_s8(*(v0 + 104), *(v0 + 104), 8uLL);
  v1[2].i64[0] = v0 + 48;
  OUTLINED_FUNCTION_117_0();
  v12 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  OUTLINED_FUNCTION_47();
  type metadata accessor for ContentRegistration(v4, v5, v6, v7);
  OUTLINED_FUNCTION_112_0();
  v8 = sub_1D4E0CD00();
  *v3 = v0;
  v3[1] = sub_1D4DB0F48;
  v9 = *(v0 + 144);
  v10 = *(v0 + 120);

  return v12(v0 + 80, 0xD000000000000012, 0x80000001D4E32A90, &unk_1D4E0E5B8, v1, v8, v10, v9);
}

uint64_t sub_1D4DB0F48()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  (*(v2[16] + 8))(v2[17], v2[15]);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4DB10BC()
{
  OUTLINED_FUNCTION_31();

  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D4DB115C()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DB11F4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DB1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v13 - v10;
  (*(*(AssociatedTypeWitness - 8) + 16))(v13 - v10, a1, AssociatedTypeWitness);
  (*(*(v7 - 8) + 16))(&v11[*(TupleTypeMetadata2 + 48)], v13[0], v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  LOBYTE(v7) = sub_1D4E0CE30();
  (*(v9 + 8))(v11, TupleTypeMetadata2);
  return v7 & 1;
}

uint64_t sub_1D4DB157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4DB15A8, 0, 0);
}

uint64_t sub_1D4DB15A8()
{
  OUTLINED_FUNCTION_123();
  sub_1D4E0CD60();
  OUTLINED_FUNCTION_148();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_226();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_226();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = *(AssociatedConformanceWitness + 16);
  OUTLINED_FUNCTION_153();
  v3 = swift_checkMetadataState();
  v11 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[9] = v4;
  *v4 = v5;
  v4[1] = sub_1D4DB1790;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return v11(v9, v8, v6, v7, v3, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB1790()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_1D4DB1870()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v5 = *(v2 + 24);
  sub_1D4DA1130(255, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  OUTLINED_FUNCTION_147_0();
  v6 = sub_1D4E0D210();
  v1[5] = v6;
  OUTLINED_FUNCTION_45(v6);
  v1[6] = v7;
  v1[7] = OUTLINED_FUNCTION_288();
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for ContentManagementPlan.Link.Mode(0, *(v3 + 16), v5, *(v3 + 32));
  v1[9] = v8;
  OUTLINED_FUNCTION_45(v8);
  v1[10] = v9;
  v1[11] = OUTLINED_FUNCTION_117();
  v10 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D4DB19AC()
{
  OUTLINED_FUNCTION_123();
  (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
  OUTLINED_FUNCTION_105();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[11];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[5];
    v4 = v0[3];
    (*(v0[6] + 32))(v0[8], v2, v3);
    v5 = OUTLINED_FUNCTION_91();
    v6(v5);
    sub_1D4DB4FB0(v3, (v0 + 2), v4);
    (*(v0[6] + 8))(v0[8], v0[5]);

    OUTLINED_FUNCTION_8();

    return v12();
  }

  else
  {
    v0[12] = *(v2 + 8);
    OUTLINED_FUNCTION_109_0();
    v13 = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v0[13] = v8;
    *v8 = v9;
    v8[1] = sub_1D4DB1BA0;
    v10 = v0[3];

    return v13(v10);
  }
}

uint64_t sub_1D4DB1BA0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB1C98()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DB1D0C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_37();

  return v0();
}

BOOL sub_1D4DB1D8C(uint64_t a1, uint64_t *a2)
{
  v12 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for ContentRegistration(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  v6 = sub_1D4E0CEE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA70();
  swift_endAccess();
  v10 = __swift_getEnumTagSinglePayload(v9, 1, v5) == 1;
  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_1D4DB202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 48);
  v9 = swift_checkMetadataState();
  v12 = (v8 + *v8);
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1D4DB2200;

  return v12(a3, 1, v9, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB2200()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3;
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D4DB2330()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_8();
  return v1();
}

uint64_t sub_1D4DB235C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for ContentRegistration(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  return (*(*(v8 - 8) + 16))(a3, a1, v8);
}

uint64_t sub_1D4DB24B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v4 = *a3;
  v5 = *(*a3 + 88);
  v3[17] = v5;
  v6 = *(v4 + 80);
  v3[18] = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3[19] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[20] = AssociatedTypeWitness;
  v3[21] = *(AssociatedTypeWitness - 8);
  v3[22] = swift_task_alloc();
  v8 = type metadata accessor for ContentManagementPlan.Link(0, v6, AssociatedTypeWitness, v5);
  v3[23] = v8;
  v3[24] = *(v8 - 8);
  v3[25] = swift_task_alloc();
  v9 = sub_1D4E0CD00();
  v3[26] = type metadata accessor for ContentManagementPlan.Link(255, v6, v9, v5);
  v3[27] = swift_getTupleTypeMetadata3();
  v10 = sub_1D4E0CEE0();
  v3[28] = v10;
  v3[29] = *(v10 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB27D4, 0, 0);
}

uint64_t sub_1D4DB27D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  v11 = v10[16];
  OUTLINED_FUNCTION_88();
  v13 = *(v12 + 152);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v10[32] = *(v11 + v13);
  sub_1D4E0CA10();
  v10[12] = sub_1D4E0CC20();
  if (v10[12] == sub_1D4E0CCB0())
  {
    v14 = OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_58();
    v18 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_211();
    sub_1D4E0CC60();
    if (v18)
    {
      OUTLINED_FUNCTION_36();
      (*(v19 + 16))();
    }

    else
    {
      v38 = v10[27];
      result = sub_1D4E0CF80();
      if (*(*(v38 - 8) + 64) != 8)
      {
        __break(1u);
        return result;
      }

      v39 = OUTLINED_FUNCTION_231(result);
      v40(v39);
      swift_unknownObjectRelease();
    }

    v20 = v10[27];
    sub_1D4E0CCF0();
    v14 = OUTLINED_FUNCTION_93_0();
    v17 = v20;
  }

  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v21 = OUTLINED_FUNCTION_274();
  v22(v21);
  OUTLINED_FUNCTION_30_0();
  if (v23)
  {
    OUTLINED_FUNCTION_273();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_196();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_107_0();
    v25(v24);
    sub_1D4E0CD60();
    OUTLINED_FUNCTION_299();
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v10[39] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_133_0(v35);
    OUTLINED_FUNCTION_196();

    return sub_1D4DB1870();
  }
}

uint64_t sub_1D4DB2AC4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[40] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_48_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v3[41] = v3[14];
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v3[42] = v10;
    *v10 = v11;
    v10[1] = sub_1D4DB2C3C;

    return sub_1D4DB1870();
  }
}

uint64_t sub_1D4DB2C3C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {

    v7 = OUTLINED_FUNCTION_48_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v3[2] = v3[35];
    v10 = v3 + 2;
    v10[1] = v10[34];
    *(v10 + 1) = *(v10 + 35);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = *(AssociatedConformanceWitness + 56);
    OUTLINED_FUNCTION_147_0();
    v13 = swift_checkMetadataState();
    v18 = (v12 + *v12);
    v14 = swift_task_alloc();
    v10[42] = v14;
    *v14 = v5;
    v14[1] = sub_1D4DB2EA4;
    v15 = v10[20];
    v16 = v10[39];

    return (v18)(v16, v15, v10, v13, AssociatedConformanceWitness);
  }
}

uint64_t sub_1D4DB2EA4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[45] = v0;

  (*(v3[21] + 8))(v3[22], v3[20]);
  if (!v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB3010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v14, v15, v16, v17);
  v18 = OUTLINED_FUNCTION_105();
  v19(v18);
  v20 = v10[45];
  v21 = sub_1D4E0CCB0();
  v22 = v10[12];
  if (v22 == v21)
  {
    v23 = OUTLINED_FUNCTION_317();
  }

  else
  {
    OUTLINED_FUNCTION_146_0();
    sub_1D4E0CCA0();
    OUTLINED_FUNCTION_175();
    sub_1D4E0CC60();
    if (v12)
    {
      OUTLINED_FUNCTION_36();
      (*(v27 + 16))();
    }

    else
    {
      v48 = v10[27];
      result = sub_1D4E0CF80();
      if (*(*(v48 - 8) + 64) != 8)
      {
        __break(1u);
        return result;
      }

      v49 = OUTLINED_FUNCTION_231(result);
      v50(v49);
      swift_unknownObjectRelease();
    }

    v22 = v10[30];
    v11 = v10[27];
    sub_1D4E0CCF0();
    v23 = OUTLINED_FUNCTION_93_0();
    v26 = v11;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v28 = OUTLINED_FUNCTION_274();
  v29(v28);
  OUTLINED_FUNCTION_30_0();
  if (v30)
  {
    OUTLINED_FUNCTION_273();

    OUTLINED_FUNCTION_8();
LABEL_11:
    OUTLINED_FUNCTION_196();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
  }

  v31 = OUTLINED_FUNCTION_107_0();
  v32(v31);
  sub_1D4E0CD60();
  if (v20)
  {
    v33 = OUTLINED_FUNCTION_251();
    v34(v33);

    OUTLINED_FUNCTION_3_0();
    sub_1D4DBA9FC(v13, v22, v11, v35);

    OUTLINED_FUNCTION_37();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_299();
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v10[39] = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_133_0(v45);
  OUTLINED_FUNCTION_196();

  return sub_1D4DB1870();
}

uint64_t sub_1D4DB32E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 89);
  v2 = OUTLINED_FUNCTION_251();
  v3(v2);
  OUTLINED_FUNCTION_3_0();
  v4 = OUTLINED_FUNCTION_78();
  sub_1D4DBA9FC(v4, v5, v1, v6);
  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_37();

  return v7();
}

uint64_t sub_1D4DB3390()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_105();
  v5(v4);
  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_37();

  return v6();
}

uint64_t sub_1D4DB343C()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v0, v1, v2, v3);
  v4 = OUTLINED_FUNCTION_58();
  v5(v4);

  OUTLINED_FUNCTION_273();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_335();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D4DB3500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4DB3524, 0, 0);
}

uint64_t sub_1D4DB3524()
{
  OUTLINED_FUNCTION_31();
  sub_1D4E0CD60();
  OUTLINED_FUNCTION_109_0();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_1D4DB362C;
  v4 = *(v0 + 16);

  return v6(v4);
}

uint64_t sub_1D4DB362C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_37();

  return v3();
}

void sub_1D4DB370C(uint64_t a1)
{
  OUTLINED_FUNCTION_199();
  v22 = v2;
  v23 = v3;
  v21 = v4;
  v24 = v5;
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  OUTLINED_FUNCTION_136_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_265();
  v20 = v6;
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_228();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  v19[1] = sub_1D4E0CEE0();
  v8 = OUTLINED_FUNCTION_214();
  type metadata accessor for ContentManagementPlan.Link.Mode(v8, v9, v10, v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v19 - v12);
  OUTLINED_FUNCTION_295();
  v15 = *(v14 + 120);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CD00();
  sub_1D4DBD70C();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_147_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_59();
  v16 = sub_1D4E0CCB0();

  v25[3] = v21;
  v25[4] = v22;
  v25[5] = v23;
  OUTLINED_FUNCTION_93(v1 + v15, v25);
  OUTLINED_FUNCTION_147_0();
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_305();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v16;
  *v13 = &unk_1D4E0E500;
  v13[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = swift_checkMetadataState();
  sub_1D4DB3CE0(v13, v20, v18, v7);

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB39DC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v3[9] = v4;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB3AB8, 0, 0);
}

uint64_t sub_1D4DB3AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_244();
  if (v14)
  {
    OUTLINED_FUNCTION_195(v12 + *(v13 + 128));
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_72_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_167_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_108_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_63_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_153_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_112_0();
    sub_1D4E0CEE0();
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CD20();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287(64, v15);
    v16 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v16, v17, v18);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_255();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D4DB3CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ContentManagementPlan.Link.Mode(0, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  v4 = OUTLINED_FUNCTION_105();

  return v5(v4);
}

void sub_1D4DB3D40(uint64_t a1)
{
  OUTLINED_FUNCTION_199();
  v2 = v1;
  v28 = v3;
  v29 = v4;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  OUTLINED_FUNCTION_136_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_136_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_264();
  v27[1] = type metadata accessor for ContentRegistration(v10, v11, AssociatedConformanceWitness, v12);
  v13 = OUTLINED_FUNCTION_214();
  v27[0] = type metadata accessor for ContentManagementPlan.Link.Mode(v13, v14, v15, v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_171();
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v19 = v18;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  v23 = *(v5 + 136);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  sub_1D4E0CA10();
  v24 = sub_1D4E0CCB0();

  (*(v19 + 16))(v22, v28, v17);
  OUTLINED_FUNCTION_93(v2 + v23, &v30);
  OUTLINED_FUNCTION_215();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_305();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 24) = v24;
  *AssociatedTypeWitness = &unk_1D4E0E4F0;
  AssociatedTypeWitness[1] = v25;
  swift_storeEnumTagMultiPayload();
  v26 = swift_checkMetadataState();
  sub_1D4DB3CE0(AssociatedTypeWitness, v6, v26, v7);

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB4010(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v3[9] = v4;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB40EC, 0, 0);
}

uint64_t sub_1D4DB40EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_244();
  if (v14)
  {
    OUTLINED_FUNCTION_195(v12 + *(v13 + 144));
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_306();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_99_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_108_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_153_0();
    swift_getAssociatedConformanceWitness();
    v15 = OUTLINED_FUNCTION_233();
    type metadata accessor for ContentRegistration(v15, v16, v17, v18);
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CD20();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287(60, v19);
    v20 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v20, v21, v22);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_156();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1D4DB42F4(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_295();
  v5 = *(v4 + 104);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_295();
  v13 = *(v6 + 88);
  OUTLINED_FUNCTION_295();
  v12 = *(v7 + 80);
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_206();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_190();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_190();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_205();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_215();
  sub_1D4E0CE50();
  sub_1D4E0CA10();
  v8 = sub_1D4E0CCB0();

  v14[0] = a1;
  OUTLINED_FUNCTION_215();
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_154_0();
  v16 = sub_1D4E0CE60();
  OUTLINED_FUNCTION_93(v2 + v5, v14);
  OUTLINED_FUNCTION_214();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_305();
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v8;
  v14[0] = &unk_1D4E0E4E0;
  v14[1] = v9;
  v15 = 0;
  OUTLINED_FUNCTION_155_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  v10 = sub_1D4E0CD00();
  sub_1D4DB3CE0(v14, v12, v10, v13);
}

uint64_t sub_1D4DB45B8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v3[9] = v4;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB4694, 0, 0);
}

uint64_t sub_1D4DB4694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_244();
  if (v14)
  {
    OUTLINED_FUNCTION_195(v12 + *(v13 + 112));
    OUTLINED_FUNCTION_79_0();
    OUTLINED_FUNCTION_72_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_99_0();
    OUTLINED_FUNCTION_167_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_108_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_63_0();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_153_0();
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_332();
    OUTLINED_FUNCTION_112_0();
    sub_1D4E0CD00();
    OUTLINED_FUNCTION_87_0();
    sub_1D4E0CD20();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287(64, v15);
    v16 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v16, v17, v18);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  OUTLINED_FUNCTION_255();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

void sub_1D4DB48BC(uint64_t a1)
{
  OUTLINED_FUNCTION_199();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v3;
  v11 = *(*v3 + 80);
  v12 = *(*v3 + 88);
  v13 = OUTLINED_FUNCTION_153();
  type metadata accessor for ContentManagementPlan.Link.Mode(v13, v14, v15, v12);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_247();
  v17 = *(v10 + 176);
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v23 = *(*(v3 + v17) + 16);
  OUTLINED_FUNCTION_301();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v5;
  v18[4] = v12;
  v18[5] = v9;
  v18[6] = v7;
  OUTLINED_FUNCTION_93(v3 + v17, &v24);

  sub_1D4D9C410();
  v19 = *(*(v3 + v17) + 16);
  sub_1D4D9C4CC(v19);
  v20 = *(v3 + v17);
  *(v20 + 16) = v19 + 1;
  v21 = v20 + 16 * v19;
  *(v21 + 32) = &unk_1D4E0E510;
  *(v21 + 40) = v18;
  *(v3 + v17) = v20;
  swift_endAccess();
  OUTLINED_FUNCTION_300();
  v22 = swift_allocObject();
  v22[2] = v5;
  v22[3] = v3;
  v22[4] = v23;
  *v2 = &unk_1D4E0E520;
  v2[1] = v22;
  OUTLINED_FUNCTION_314();
  swift_storeEnumTagMultiPayload();
  sub_1D4DB3CE0(v2, v11, v5, v12);

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB4A74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = *(a5 - 8);
  v7 = swift_task_alloc();
  v5[5] = v7;
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[6] = v8;
  *v8 = v5;
  v8[1] = sub_1D4DB4BC8;

  return v10(v7);
}

uint64_t sub_1D4DB4BC8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_37();
  }

  else
  {
    v9 = v3[4];
    v8 = v3[5];
    v10 = v3[2];
    v11 = v3[3];
    v10[3] = v11;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
    (*(v9 + 32))(boxed_opaque_existential_1Tm, v8, v11);

    OUTLINED_FUNCTION_8();
  }

  return v7();
}

uint64_t sub_1D4DB4CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v4[19] = v5;
  v4[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB4DA0, 0, 0);
}

uint64_t sub_1D4DB4DA0()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 128);
  if (*(v2 + *(*v2 + 216)) != 1)
  {
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_303();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    *(v0 + 49) = v1;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287(61, v8);
    v9 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v9, v10, v11);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = *(v0 + 136);
  v4 = *(*v2 + 184);
  OUTLINED_FUNCTION_106_0();
  result = swift_beginAccess();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = *(v2 + v4);
  v7 = *(v0 + 136);
  if (*(v6 + 16) <= v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1D4DBDB00(v6 + 40 * v7 + 32, v0 + 16);
  if ((*(v0 + 48) & 1) == 0)
  {
    sub_1D4D9EA28((v0 + 16), (v0 + 56));
    swift_dynamicCast();

    OUTLINED_FUNCTION_8();
    goto LABEL_9;
  }

  *(v0 + 112) = *(v0 + 16);
  sub_1D4DA1130(0, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  swift_willThrowTypedImpl();
LABEL_7:

  OUTLINED_FUNCTION_27();
LABEL_9:
  OUTLINED_FUNCTION_335();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1D4DB4FB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t sub_1D4DB5080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 40);
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB524C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v22 = a4;
  v23 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v21[0] = swift_getAssociatedTypeWitness();
  v21[1] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4E0CD00();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = *a2;
  v17 = *(*(AssociatedTypeWitness - 8) + 16);
  v17(v21 - v14, a1, AssociatedTypeWitness);
  *&v15[*(TupleTypeMetadata2 + 48)] = v16;
  v18 = *v22;
  v17(v13, v23, AssociatedTypeWitness);
  *&v13[*(TupleTypeMetadata2 + 48)] = v18;
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  LOBYTE(v17) = sub_1D4E0CAA0();
  v19 = *(v10 + 8);
  v19(v13, TupleTypeMetadata2);
  v19(v15, TupleTypeMetadata2);
  return v17 & 1;
}

BOOL sub_1D4DB55D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  v4 = sub_1D4E0CE30();

  return (v4 & 1) == 0;
}

uint64_t sub_1D4DB57A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v19 = a4;
  v20 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_1D4E0CE50();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1D4DBFCA0(sub_1D4DBE010, v18, v8, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);
  sub_1D4E0CD00();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  v21 = a1;
  v16 = a4;
  v17 = a5;
  v11 = swift_getAssociatedTypeWitness();
  v21 = sub_1D4DBFCA0(sub_1D4DBE030, v15, v8, v11, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CE50();
  sub_1D4E0CD00();
  swift_getWitnessTable();
  return sub_1D4E0CE40();
}

uint64_t sub_1D4DB5AAC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a3, a1, AssociatedTypeWitness);
}

uint64_t sub_1D4DB5C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5[11] = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[12] = AssociatedConformanceWitness;
  v5[13] = type metadata accessor for ContentRegistration.SourceInfo(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for ContentRegistration(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v5[20] = v11;
  v12 = sub_1D4E0CEE0();
  v5[21] = v12;
  v5[22] = *(v12 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4DB5F20, 0, 0);
}

uint64_t sub_1D4DB5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[7];
  v14[2] = sub_1D4E0CC80();
  v14[28] = *v15;
  OUTLINED_FUNCTION_148();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  v14[29] = sub_1D4E0CD00();
  sub_1D4E0CA10();
  v14[3] = sub_1D4E0CC20();
  v16 = sub_1D4E0CCB0();
  v17 = v14[3];
  if (v17 == v16)
  {
    OUTLINED_FUNCTION_52_0();

    OUTLINED_FUNCTION_285();

    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_32();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_170();
    v27 = sub_1D4E0CCA0();
    OUTLINED_FUNCTION_226();
    sub_1D4E0CC60();
    if (v27)
    {
      v28 = *(v14[28] + 8 * v17 + 32);
      sub_1D4E0CA10();
    }

    else
    {
      v28 = sub_1D4E0CF80();
    }

    v14[30] = v28;
    v29 = v14[29];
    v30 = v14[9];
    v31 = v14[8];
    OUTLINED_FUNCTION_182();
    sub_1D4E0CCF0();
    v14[4] = v28;
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    *(v32 + 24) = v30;
    OUTLINED_FUNCTION_233();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_11_0();
    swift_getWitnessTable();
    v34 = OUTLINED_FUNCTION_44_0();
    v40 = sub_1D4DBFCA0(v34, v35, v29, AssociatedTypeWitness, v36, v37, v38, v39);
    OUTLINED_FUNCTION_282(v40);
    OUTLINED_FUNCTION_146_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14[32] = AssociatedConformanceWitness;
    v42 = *(AssociatedConformanceWitness + 16);
    OUTLINED_FUNCTION_185();
    v14[33] = swift_checkMetadataState();
    v54 = v42 + *v42;
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v14[34] = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_34_0(v43);
    OUTLINED_FUNCTION_32();

    return v51(v45, v46, v47, v48, v49, v50, v51, v52, v54, AssociatedConformanceWitness + 16, a11, a12, a13, a14);
  }
}

uint64_t sub_1D4DB6224()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB665C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB6768()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB6E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_325();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_1D4DB6F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  (*(v10[16] + 8))(v10[18], v10[15]);
  v11 = OUTLINED_FUNCTION_105();
  v12(v11);
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_325();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D4DB6FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  (*(v10[16] + 8))(v10[19], v10[15]);
  v11 = OUTLINED_FUNCTION_105();
  v12(v11);
  OUTLINED_FUNCTION_52_0();

  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_325();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D4DB70B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_190();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_182();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_151_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(AssociatedConformanceWitness + 32);
  OUTLINED_FUNCTION_269();
  v5 = swift_checkMetadataState();
  return v4(v5, AssociatedConformanceWitness);
}

uint64_t sub_1D4DB7210()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_36();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_79();

  return v0;
}

uint64_t sub_1D4DB73C4()
{
  sub_1D4DB7210();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D4DB741C@<X0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  v31[0] = a1;
  v3 = a2[3];
  sub_1D4DA1130(255, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  OUTLINED_FUNCTION_215();
  v4 = sub_1D4E0D210();
  OUTLINED_FUNCTION_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_248();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v14, v15, v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v17);
  v18 = type metadata accessor for ContentManagementPlan.Link.Mode(0, a2[2], v3, a2[4]);
  OUTLINED_FUNCTION_10();
  v20 = v19;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v31 - v22;
  (*(v20 + 16))(v31 - v22, v31[2], v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = OUTLINED_FUNCTION_237();
    v25(v24, v23, v4);
    OUTLINED_FUNCTION_258();
    v26(v10, v13, v4);
    sub_1D4DB4FB0(v4, &v33, v31[0]);
    return (*(v6 + 8))(v13, v4);
  }

  else
  {
    (*(v20 + 8))(v23, v18);
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_263();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    v32 = 4;
    sub_1D4E0C880();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    v28 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v28, v29, v30);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    sub_1D4E0C8E0();
    return swift_willThrow();
  }
}

void ContentManagementPlan.after<A, each B>(_:operation:)(uint64_t a1)
{
  OUTLINED_FUNCTION_199();
  v6 = v5;
  v7 = v3;
  v8 = v2;
  v52 = v4;
  v53 = v3;
  v49 = v10;
  v50 = v9;
  v47 = v11;
  v48 = v12;
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for ContentManagementPlan.Link(0, *(v3 + 16), *(v4 & 0xFFFFFFFFFFFFFFFELL), *(v3 + 24));
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = 0;
    v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
    while (v6 != v16)
    {
      *&v15[8 * v16] = type metadata accessor for ContentManagementPlan.Link(255, *(v7 + 16), *(v18 + 8 * v16), *(v7 + 24));
      ++v16;
    }

    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_224();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v51 = TupleTypeMetadata;
  OUTLINED_FUNCTION_10();
  v45 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v44 = v21;
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v1;
  if (v6)
  {
    v23 = v52 & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v53 + 24);
    v25 = (v51 + 32);
    v26 = v6;
    do
    {
      if (v6 == 1)
      {
        v27 = 0;
      }

      else
      {
        v27 = *v25;
      }

      v23 += 8;
      v28 = *v8++;
      v29 = OUTLINED_FUNCTION_147_0();
      type metadata accessor for ContentManagementPlan.Link(v29, v30, v31, v24);
      OUTLINED_FUNCTION_12();
      (*(v32 + 16))(&v22[v27], v28);
      v25 += 4;
      --v26;
    }

    while (v26);
  }

  v33 = v45;
  v34 = (*(v45 + 80) + 56) & ~*(v45 + 80);
  v35 = (v44 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v53;
  v38 = *(v53 + 16);
  *(v36 + 2) = v6;
  *(v36 + 3) = v38;
  MetadataPack = swift_allocateMetadataPack();
  v41 = v50;
  v40 = v51;
  *(v36 + 4) = MetadataPack;
  *(v36 + 5) = v41;
  *(v36 + 6) = *(v37 + 24);
  (*(v33 + 32))(&v36[v34], v22, v40);
  v42 = &v36[v35];
  v43 = v48;
  *v42 = v47;
  *(v42 + 1) = v43;
  *&v36[(v35 + 23) & 0xFFFFFFFFFFFFFFF8] = v46;
  swift_retain_n();

  sub_1D4DB48BC(&unk_1D4E0E248);

  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB79FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v23;
  v8[10] = v24;
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  if (a6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for ContentManagementPlan.Link(0, a7, *(a8 & 0xFFFFFFFFFFFFFFFELL), v24);
  }

  else
  {
    v14 = swift_task_alloc();
    v15 = 0;
    v16 = a8 & 0xFFFFFFFFFFFFFFFELL;
    while (a6 != v15)
    {
      *(v14 + 8 * v15) = type metadata accessor for ContentManagementPlan.Link(255, a7, *(v16 + 8 * v15), v24);
      ++v15;
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v8[11] = TupleTypeMetadata;
  v8[12] = *(TupleTypeMetadata - 8);
  v8[13] = swift_task_alloc();
  v17 = swift_task_alloc();
  v8[14] = v17;
  if (a6)
  {
    v18 = (TupleTypeMetadata + 32);
    v19 = a6;
    do
    {
      if (a6 == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
      }

      *v17++ = a2 + v20;
      v18 += 4;
      --v19;
    }

    while (v19);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D4DB7BD0, 0, 0);
}

uint64_t sub_1D4DB7BD0()
{
  OUTLINED_FUNCTION_123();
  if (v0[6])
  {
    v1 = 0;
    v2 = v0[8] & 0xFFFFFFFFFFFFFFFELL;
    v3 = 32;
    do
    {
      v4 = v0[6];
      if (v4 == 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = *(v0[11] + v3);
      }

      v6 = v0[13];
      v7 = *(v0[14] + 8 * v1);
      type metadata accessor for ContentManagementPlan.Link(0, v0[7], *(v2 + 8 * v1), v0[10]);
      OUTLINED_FUNCTION_12();
      (*(v8 + 16))(v6 + v5, v7);
      ++v1;
      v3 += 16;
    }

    while (v1 != v4);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[15] = v9;
  *v9 = v10;
  v9[1] = sub_1D4DB7D14;
  OUTLINED_FUNCTION_196();

  return sub_1D4DB80C4(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1D4DB7D14()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DB7E0C()
{
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_232();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_1D4DB7E84()
{
  OUTLINED_FUNCTION_1();
  v0 = OUTLINED_FUNCTION_232();
  v1(v0);

  OUTLINED_FUNCTION_37();

  return v2();
}

uint64_t sub_1D4DB7F00()
{
  OUTLINED_FUNCTION_66();
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  if (v2 == 1)
  {
    v4 = OUTLINED_FUNCTION_185();
    type metadata accessor for ContentManagementPlan.Link(v4, v5, v6, v3);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_117();
    for (i = 0; v2 != i; ++i)
    {
      v9 = OUTLINED_FUNCTION_110_0();
      *(v7 + 8 * i) = type metadata accessor for ContentManagementPlan.Link(v9, v10, v11, v3);
    }

    OUTLINED_FUNCTION_153();
    OUTLINED_FUNCTION_224();
    swift_getTupleTypeMetadata();
  }

  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_228();
  OUTLINED_FUNCTION_32();

  return sub_1D4DB79FC(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1D4DB80C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v30;
  v8[11] = v31;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[3] = a1;
  if (a6 == 1)
  {
    v13 = a8 & 0xFFFFFFFFFFFFFFFELL;
    TupleTypeMetadata = *(a8 & 0xFFFFFFFFFFFFFFFELL);
    v15 = 16;
  }

  else
  {
    v15 = (8 * a6 + 15) & 0xFFFFFFFFFFFFFFF0;
    v16 = swift_task_alloc();
    v17 = 0;
    v13 = a8 & 0xFFFFFFFFFFFFFFFELL;
    while (a6 != v17)
    {
      *(v16 + 8 * v17) = *(v13 + 8 * v17);
      ++v17;
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v28[12] = v15;
  v28[13] = TupleTypeMetadata;
  v28[14] = *(TupleTypeMetadata - 8);
  v28[15] = swift_task_alloc();
  v28[16] = swift_task_alloc();
  v28[17] = swift_task_alloc();
  v18 = swift_task_alloc();
  v28[18] = v18;
  if (a6)
  {
    v19 = v18;
    v20 = 0;
    do
    {
      if (a6 == 1)
      {
        v21 = 0;
      }

      else
      {
        v22 = a2;
        v23 = v15;
        v24 = swift_task_alloc();
        for (i = 0; a6 != i; ++i)
        {
          *(v24 + 8 * i) = type metadata accessor for ContentManagementPlan.Link(255, a7, *(v13 + 8 * i), v31);
        }

        v26 = swift_getTupleTypeMetadata();

        v21 = *(v26 + 16 * v20 + 32);
        v15 = v23;
        a2 = v22;
      }

      *(v19 + 8 * v20++) = a2 + v21;
    }

    while (v20 != a6);
  }

  return MEMORY[0x1EEE6DFA0](sub_1D4DB830C, 0, 0);
}

void sub_1D4DB830C()
{
  v1 = 0;
  v2 = 32;
  while (v1 != v0[7])
  {
    v26 = v2;
    v3 = *((v0[9] & 0xFFFFFFFFFFFFFFFELL) + 8 * v1);
    v4 = v0[11];
    v27 = *(v0[18] + 8 * v1);
    OUTLINED_FUNCTION_62();
    v8 = type metadata accessor for ContentManagementPlan.Link(v5, v6, v7, v4);
    OUTLINED_FUNCTION_10();
    v10 = v9;
    v11 = OUTLINED_FUNCTION_117();
    (*(v10 + 16))(v11, v27, v8);
    OUTLINED_FUNCTION_105();
    OUTLINED_FUNCTION_226();
    sub_1D4DB895C(v12, v3, v4, v13);
    (*(v10 + 8))(v11, v8);
    ++v1;

    v2 = v26 + 16;
  }

  v0[2] = v0[6];
  v14 = swift_task_alloc();
  v0[19] = v14;
  v15 = OUTLINED_FUNCTION_78();
  v16(v15);
  if (v1)
  {
    v17 = 0;
    v18 = 32;
    do
    {
      v19 = v0[7];
      v20 = v0[16];
      if (v19 == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(v0[13] + v18);
        v20 += v21;
      }

      (*(*(*((v0[9] & 0xFFFFFFFFFFFFFFFELL) + 8 * v17) - 8) + 16))(v20, v0[15] + v21);
      *(v14 + 8 * v17++) = v20;
      v18 += 16;
    }

    while (v17 != v19);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[20] = v22;
  *v22 = v23;
  v22[1] = sub_1D4DB86B4;
  OUTLINED_FUNCTION_253();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1D4DB86B4()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[21] = v0;

  if (!v0)
  {
    v7 = v3[16];
    v8 = v3[13];
    v9 = v3[14];
    v10 = *(v9 + 8);
    v3[22] = v10;
    v3[23] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v11 = OUTLINED_FUNCTION_52();
    (v10)(v11);
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_335();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D4DB87EC()
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  (*(v0 + 176))(*(v0 + 136), *(v0 + 104));

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_335();

  return v2(v1, v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D4DB8888()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0[14] + 8);
  (v1)(v0[16], v0[13]);
  v2 = OUTLINED_FUNCTION_58();
  v1(v2);
  v3 = OUTLINED_FUNCTION_87_0();
  v1(v3);

  OUTLINED_FUNCTION_37();

  return v4();
}

uint64_t ContentManagementPlan.after<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_allocObject();
  v11 = *(a3 + 24);
  v10[2] = *(a3 + 16);
  v10[3] = a4;
  v10[4] = v11;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = v9;

  sub_1D4DB48BC(&unk_1D4E0E258);
}

uint64_t sub_1D4DB8A68(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1D4DB8B70;

  return v8(a1, v4 + 16);
}

uint64_t sub_1D4DB8B70()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_37();

    return v10();
  }
}

uint64_t sub_1D4DB8CA8(uint64_t a1)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_249();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_67_0(v2);
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_196();

  return sub_1D4DB8A68(v4, v5, v6, v7);
}

uint64_t ContentManagementPlan.after(operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  OUTLINED_FUNCTION_301();
  v8 = swift_allocObject();
  *(v8 + 16) = *(a3 + 16);
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;
  *(v8 + 48) = v7;

  sub_1D4DB48BC(&unk_1D4E0E268);

  return sub_1D4DBA9FC(v10, v11, v12, sub_1D4DB90CC);
}

uint64_t sub_1D4DB8E18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1D4DB8F10;

  return v7(v4 + 16);
}

uint64_t sub_1D4DB8F10()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_69();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_37();

    return v10();
  }
}

uint64_t sub_1D4DB9024()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_249();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_67_0(v3);
  OUTLINED_FUNCTION_162_0();

  return sub_1D4DB8E18(v5, v6, v7, v1);
}

void sub_1D4DB90CC(id a1, char a2)
{
  if (a2)
  {
  }
}

void ContentManagementPlan.prepare(content:in:facets:)(uint64_t a1)
{
  OUTLINED_FUNCTION_199();
  v38 = v2;
  v39 = v3;
  v37 = v4;
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  v36 = v6;
  OUTLINED_FUNCTION_103();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_306();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CEE0();
  v8 = OUTLINED_FUNCTION_307();
  type metadata accessor for ContentManagementPlan.Link(v8, v9, v10, v6);
  OUTLINED_FUNCTION_163_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4D9F944();
  v12 = OUTLINED_FUNCTION_164_0();
  v13 = OUTLINED_FUNCTION_221(v12);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_248();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  v21 = *v1;
  v22 = *(v14 + 56);
  v23 = OUTLINED_FUNCTION_170();
  v24(v23);
  v25 = *(AssociatedTypeWitness - 8);
  (*(v25 + 16))(v17 + v22, v37, AssociatedTypeWitness);
  OUTLINED_FUNCTION_62();
  v26();
  (*(v25 + 32))(&v20[*(v14 + 56)], v17 + v22, AssociatedTypeWitness);
  v27 = &v20[*(v14 + 72)];
  OUTLINED_FUNCTION_115_0();
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 2) = v7;
  *(v28 + 3) = v29;
  v30 = v39;
  *(v28 + 4) = v38;
  *(v28 + 5) = v30;
  *v27 = sub_1D4DB9498;
  v27[1] = v28;
  OUTLINED_FUNCTION_93(v21 + *(*v21 + 168), &v40);
  sub_1D4DB94C8(255);
  v31 = OUTLINED_FUNCTION_307();
  type metadata accessor for FacetCollection(v31, v32, v29, v33);
  OUTLINED_FUNCTION_261();
  swift_getFunctionTypeMetadata1();
  OUTLINED_FUNCTION_59();

  v34 = OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_221(v34);
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v40 = v2;
  v41 = v3;
  v39 = v4;
  v6 = v5;
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_157_0();
  swift_getAssociatedTypeWitness();
  v36 = v9;
  v37 = v8;
  OUTLINED_FUNCTION_263();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_168();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CD00();
  v10 = OUTLINED_FUNCTION_39();
  v38 = type metadata accessor for ContentManagementPlan.Link(v10, v11, v12, v9);
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_82();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D4D9F944();
  v14 = OUTLINED_FUNCTION_171();
  v15 = OUTLINED_FUNCTION_221(v14);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_248();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  v23 = *(v6 + 8);
  v35 = *v6;
  LOBYTE(v6) = *(v6 + 16);
  v24 = *v1;
  v25 = *(v16 + 56);
  *v19 = v35;
  *(v19 + 8) = v23;
  *(v19 + 16) = v6;
  v26 = *(AssociatedTypeWitness - 8);
  (*(v26 + 16))(v19 + v25, v39, AssociatedTypeWitness);
  v27 = *(v19 + 16);
  *v22 = *v19;
  v22[16] = v27;
  (*(v26 + 32))(&v22[*(v16 + 56)], v19 + v25, AssociatedTypeWitness);
  v28 = &v22[*(v16 + 72)];
  OUTLINED_FUNCTION_115_0();
  v29 = swift_allocObject();
  v30 = v36;
  *(v29 + 2) = v37;
  *(v29 + 3) = v30;
  v31 = v41;
  *(v29 + 4) = v40;
  *(v29 + 5) = v31;
  *v28 = sub_1D4DBE04C;
  v28[1] = v29;
  OUTLINED_FUNCTION_93(v24 + *(*v24 + 160), &v42);
  sub_1D4DB9858(v35, v23, v6);
  sub_1D4DB94C8(255);
  v32 = OUTLINED_FUNCTION_163_0();
  type metadata accessor for FacetCollection(v32, v33, v30, v34);
  OUTLINED_FUNCTION_261();
  swift_getFunctionTypeMetadata1();

  OUTLINED_FUNCTION_221(255);
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

uint64_t sub_1D4DB9498@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

void sub_1D4DB94C8(uint64_t a1)
{
  if (!qword_1EC7E3A78)
  {
    sub_1D4DA1130(255, &qword_1EC7E3A80, &protocol descriptor for Facet);
    v1 = sub_1D4E0CD00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7E3A78);
    }
  }
}

uint64_t sub_1D4DB9858(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1D4DB986C(a1, a2 & 1);
  }

  else
  {
  }
}

uint64_t sub_1D4DB986C(uint64_t a1, char a2)
{
  if (a2)
  {
    JUMPOUT(0x1DA6E1430);
  }

  return sub_1D4E0CA10();
}

void ContentManagementPlan.relate(content:to:as:)(uint64_t a1)
{
  OUTLINED_FUNCTION_199();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v9 = *(v8 + 24);
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_228();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_306();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_332();
  v10 = OUTLINED_FUNCTION_92_0();
  v13 = type metadata accessor for ContentManagementPlan.Link(v10, v11, v12, v9);
  OUTLINED_FUNCTION_209();
  sub_1D4E0CD00();
  v14 = OUTLINED_FUNCTION_99_0();
  type metadata accessor for ContentManagementPlan.Link(v14, v15, v16, v9);
  OUTLINED_FUNCTION_269();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  v21 = *v6;
  v22 = v6[1];
  LOBYTE(v6) = *(v6 + 16);
  v23 = *v4;
  v35 = v4[1];
  v24 = v4[3];
  v36 = v4[2];
  v37 = v23;
  v25 = *v2;
  v26 = &v34 + *(v18 + 48) - v19;
  v27 = (&v34 + *(v18 + 64) - v19);
  OUTLINED_FUNCTION_36();
  (*(v28 + 16))(v20, v38, v13);
  *v26 = v21;
  *(v26 + 1) = v22;
  v26[16] = v6;
  v29 = v36;
  v30 = v35;
  *v27 = v37;
  v27[1] = v30;
  v27[2] = v29;
  v27[3] = v24;
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_93(v25 + *(v31 + 152), &v39);
  v32 = OUTLINED_FUNCTION_315();
  sub_1D4DB9858(v32, v33, v6);
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_130_0();
  sub_1D4E0CCD0();
  swift_endAccess();
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v34 = v2;
  v4 = v3;
  v33 = v5;
  v31 = v6;
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  OUTLINED_FUNCTION_163_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_312();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_156_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_206();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62();
  type metadata accessor for ContentManagementPlan.Link.Mode(v9, v10, v11, v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  OUTLINED_FUNCTION_62();
  v32 = type metadata accessor for ContentManagementPlan.Link(v15, v16, v17, v7);
  OUTLINED_FUNCTION_10();
  v19 = v18;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_247();
  v30 = *v4;
  v21 = *(v4 + 2);
  v28 = *(v4 + 3);
  v29 = v21;
  v40[2] = v8;
  v40[3] = v7;
  v40[4] = v31;
  v39[8] = v8;
  v39[9] = v7;
  v39[10] = sub_1D4DBE058;
  v39[11] = v40;
  sub_1D4DA1130(0, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  sub_1D4DBA848(sub_1D4DBADA0, v14);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_62();
  sub_1D4DB3CE0(v22, v23, v24, v7);
  v39[2] = v8;
  v39[3] = v7;
  v39[4] = v33;
  v35 = v8;
  v36 = v7;
  v37 = sub_1D4DBADD0;
  v38 = v39;
  OUTLINED_FUNCTION_164_0();
  v25 = sub_1D4E0CD00();
  sub_1D4DBA848(sub_1D4DBE07C, &v44);
  *&v41 = v44;
  *(&v41 + 1) = v45;
  LOBYTE(v42) = 1;
  sub_1D4DB3CE0(&v41, v8, v25, v7);
  v26 = v47;
  LOBYTE(v7) = v48;
  LOBYTE(v8) = v49;
  v44 = v47;
  v45 = v48;
  v46 = v49;
  v41 = v30;
  v42 = v29;
  v43 = v28;
  ContentManagementPlan.relate(content:to:as:)(v1);
  OUTLINED_FUNCTION_3_0();
  sub_1D4DBA9FC(v26, v7, v8, v27);
  (*(v19 + 8))(v1, v32);
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v2 = v1;
  v4 = v3;
  v34 = v5;
  v35 = v6;
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_263();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_202();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_207();
  type metadata accessor for ContentManagementPlan.Link.Mode(v9, v10, v11, v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  OUTLINED_FUNCTION_207();
  v33 = type metadata accessor for ContentManagementPlan.Link(v15, v16, v17, v7);
  OUTLINED_FUNCTION_10();
  v19 = v18;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v23 = *v4;
  v32 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  v31 = *v2;
  v24 = *(v2 + 2);
  v25 = *(v2 + 3);
  v30 = v24;
  v40[2] = v8;
  v40[3] = v7;
  v40[4] = v34;
  v36 = v8;
  v37 = v7;
  v38 = sub_1D4DBB418;
  v39 = v40;
  sub_1D4DA1130(0, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  sub_1D4DBA848(sub_1D4DBE064, v14);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_207();
  sub_1D4DB3CE0(v26, v27, v28, v7);
  v44 = v23;
  v45 = v32;
  v46 = v4;
  v41 = v31;
  v42 = v30;
  v43 = v25;
  ContentManagementPlan.relate(content:to:as:)(v22);
  (*(v19 + 8))(v22, v33);
  OUTLINED_FUNCTION_198();
}

{
  OUTLINED_FUNCTION_199();
  v48 = v1;
  v3 = v2;
  v47 = v4;
  v6 = v5;
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_202();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_312();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_206();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_192();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_209();
  sub_1D4E0CEE0();
  v10 = OUTLINED_FUNCTION_153();
  v13 = type metadata accessor for ContentManagementPlan.Link(v10, v11, v12, v7);
  OUTLINED_FUNCTION_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v41 - v17;
  v19 = OUTLINED_FUNCTION_153();
  v41[1] = type metadata accessor for ContentManagementPlan.Link.Mode(v19, v20, AssociatedTypeWitness, v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v41 - v22);
  v24 = OUTLINED_FUNCTION_153();
  type metadata accessor for ContentManagementPlan.Link(v24, v25, AssociatedTypeWitness, v7);
  OUTLINED_FUNCTION_10();
  v45 = v27;
  v46 = v26;
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v28);
  v41[0] = v41 - v29;
  v44 = *v3;
  v30 = *(v3 + 2);
  v42 = *(v3 + 3);
  v43 = v30;
  (*(v15 + 16))(v18, v6, v13);
  v31 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v8;
  *(v32 + 24) = v7;
  (*(v15 + 32))(v32 + v31, v18, v13);
  *v23 = &unk_1D4E0E290;
  v23[1] = v32;
  swift_storeEnumTagMultiPayload();
  v33 = v41[0];
  v34 = OUTLINED_FUNCTION_87_0();
  sub_1D4DB3CE0(v34, v35, AssociatedTypeWitness, v7);
  OUTLINED_FUNCTION_300();
  v36 = swift_allocObject();
  v36[2] = v8;
  v36[3] = v7;
  v36[4] = v47;
  *&v49 = &unk_1D4E0E2A0;
  *(&v49 + 1) = v36;
  LOBYTE(v50) = 0;
  OUTLINED_FUNCTION_141_0();
  v37 = sub_1D4E0CD00();
  sub_1D4DB3CE0(&v49, v8, v37, v7);
  LOBYTE(v7) = v57;
  v52 = v55;
  v53 = v56;
  v54 = v57;
  v49 = v44;
  v50 = v43;
  v51 = v42;
  sub_1D4E0CA10();
  ContentManagementPlan.relate(content:to:as:)(v33);
  OUTLINED_FUNCTION_3_0();
  v38 = OUTLINED_FUNCTION_30();
  sub_1D4DBA9FC(v38, v39, v7, v40);
  (*(v45 + 8))(v33, v46);
  OUTLINED_FUNCTION_198();
}

uint64_t ContentManagementPlan.find(firstMatching:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a1;
  v6[7] = a2;
  v7 = *v5;
  v6[8] = a5;
  v6[9] = v7;
  v8 = OUTLINED_FUNCTION_48_0();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4DB9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_66();
  v15 = v14[7];
  v25 = v14[6];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_106_0();
  swift_beginAccess();
  v14[5] = v15;
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_141_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_141_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_164_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_315();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1D4E0CA10();
  sub_1D4E0CA10();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_190();
  sub_1D4E0C9D0();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_32();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, v15, v25, a12, a13, a14);
}

uint64_t ContentManagementPlan.facets(for:)()
{
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v5;
  v6 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v6, v7, v8);
  v1[7] = v9;
  OUTLINED_FUNCTION_101(v9);
  v1[8] = OUTLINED_FUNCTION_117();
  v10 = *(v3 + 16);
  v1[9] = v10;
  v11 = *(v3 + 24);
  v1[10] = v11;
  v1[11] = type metadata accessor for FacetCollection(255, v10, v11, v12);
  v13 = sub_1D4E0CEE0();
  v1[12] = v13;
  OUTLINED_FUNCTION_45(v13);
  v1[13] = v14;
  v15 = OUTLINED_FUNCTION_117();
  v16 = *v0;
  v1[14] = v15;
  v1[15] = v16;
  v17 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1D4DB9E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  v13 = *(v12 + 120);
  v14 = *(v12 + 88);
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_195(v13 + *(v15 + 208));
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_144_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_168();
  sub_1D4E0CA70();
  v16 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v16, v17, v14);
  if (v18)
  {
    v19 = OUTLINED_FUNCTION_222();
    v20(v19);
    swift_endAccess();
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_206();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_320();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_314();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    v21 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v21, v22, v23);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_205();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    (*(v24 + 32))();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_255();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

unint64_t sub_1D4DBA0E8()
{
  result = qword_1EC7E3A90;
  if (!qword_1EC7E3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3A90);
  }

  return result;
}

void sub_1D4DBA13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D4DBA0E8();
    v7 = a3(a1, &type metadata for ContentPlanningError, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D4DBA1A0()
{
  result = qword_1EC7E3AA0;
  if (!qword_1EC7E3AA0)
  {
    sub_1D4DBA13C(255, &qword_1EC7E3A98, MEMORY[0x1E69D38D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3AA0);
  }

  return result;
}

uint64_t ContentManagementPlan.find(contentID:)()
{
  OUTLINED_FUNCTION_51();
  v1[5] = v2;
  v1[6] = v3;
  v4 = OUTLINED_FUNCTION_22_1();
  sub_1D4DBA13C(v4, v5, v6);
  v1[7] = v7;
  OUTLINED_FUNCTION_101(v7);
  v1[8] = OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_47();
  v1[9] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_47();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_78();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_110_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_226();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62();
  v1[10] = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_99_0();
  v1[11] = type metadata accessor for ContentRegistration(v8, v9, v10, v11);
  v12 = sub_1D4E0CEE0();
  v1[12] = v12;
  OUTLINED_FUNCTION_45(v12);
  v1[13] = v13;
  v14 = OUTLINED_FUNCTION_117();
  v15 = *v0;
  v1[14] = v14;
  v1[15] = v15;
  v16 = OUTLINED_FUNCTION_48_0();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1D4DBA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_256();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_195(*(v12 + 120) + *(**(v12 + 120) + 200));
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_146_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_157_0();
  sub_1D4E0CA70();
  OUTLINED_FUNCTION_30_0();
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_222();
    v15(v14);
    swift_endAccess();
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_145_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_94_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_320();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_314();
    sub_1D4E0C890();
    OUTLINED_FUNCTION_187();
    sub_1D4E0C8C0();
    v16 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v16, v17, v18);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_142_0();
    swift_allocError();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_168();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_37();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    (*(v19 + 32))();
    swift_endAccess();

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_255();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t ContentManagementPlan.prepare(content:in:facets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(a5 + 24);
  OUTLINED_FUNCTION_155_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_153_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_315();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_209();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4DA1130(0, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  sub_1D4DBA848(sub_1D4DBA808, &v17);
  v14 = v17;
  v15 = v18;
  v16 = 1;
  OUTLINED_FUNCTION_205();
  sub_1D4DB3CE0(v5, v6, v7, v13);
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v14 = v19;
  v15 = v20;
  v16 = v21;
  ContentManagementPlan.prepare(content:in:facets:)(&v14);
  OUTLINED_FUNCTION_3_0();
  return sub_1D4DBA9FC(v8, v9, v10, v11);
}

uint64_t sub_1D4DBA808@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

uint64_t sub_1D4DBA848@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D4E0D210();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_1D4DBA9FC(uint64_t a1, char a2, char a3, uint64_t (*a4)(uint64_t, void))
{
  if (a3)
  {
    return a4(a1, a2 & 1);
  }

  else
  {
  }
}

void sub_1D4DBAA14(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t ContentManagementPlan.relate(content:to:as:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  OUTLINED_FUNCTION_136_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_265();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  sub_1D4DA1130(0, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  sub_1D4DBA848(sub_1D4DBE07C, v14);
  OUTLINED_FUNCTION_145_0();
  sub_1D4DB3CE0(v5, v6, v7, v8);
  v9 = v18;
  v14[0] = v16;
  v14[1] = v17;
  v15 = v18;
  ContentManagementPlan.relate(content:to:as:)(a1);
  OUTLINED_FUNCTION_3_0();
  v10 = OUTLINED_FUNCTION_312();
  return sub_1D4DBA9FC(v10, v11, v9, v12);
}

uint64_t sub_1D4DBB2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_208();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_103();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_168();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_82();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_105();

  return v4(v3);
}

uint64_t ContentManagementPlan.link(contentID:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_291();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_145_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_203();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CEE0();
  OUTLINED_FUNCTION_147_0();
  OUTLINED_FUNCTION_262();
  type metadata accessor for ContentManagementPlan.Link.Mode(v5, v6, v7, v8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_147();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17[-v10];
  v23 = v4;
  v24 = v3;
  v25 = a1;
  v18 = v4;
  v19 = v3;
  v20 = sub_1D4DBB7AC;
  v21 = &v22;
  OUTLINED_FUNCTION_164_0();
  swift_checkMetadataState();
  sub_1D4DA1130(0, &qword_1EE08A670, MEMORY[0x1E69E7280]);
  sub_1D4DBA848(sub_1D4DBE064, v11);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_263();
  return sub_1D4DB3CE0(v12, v13, v14, v15);
}

uint64_t sub_1D4DBB630@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v5 = sub_1D4E0CEE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1D4DBBB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v4[3] = v7;
  v4[4] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4[5] = swift_getAssociatedTypeWitness();
  v8 = sub_1D4E0CEE0();
  v4[6] = v8;
  v4[7] = *(v8 - 8);
  v4[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[9] = v9;
  type metadata accessor for ContentManagementPlan.Link(0, a3, v8, a4);
  *v9 = v4;
  v9[1] = sub_1D4DBBDF0;

  return sub_1D4DB1870();
}

uint64_t sub_1D4DBBDF0()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DBBEE8()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_232();
    v6(v5);
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287(47, v7);
    v8 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v8, v9, v10);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_113_0();
    v11();

    OUTLINED_FUNCTION_8();
  }

  return v12();
}

uint64_t sub_1D4DBC050()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DBC0B8(uint64_t a1)
{
  OUTLINED_FUNCTION_330();
  OUTLINED_FUNCTION_123();
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_47();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_151_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_72_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_99_0();
  OUTLINED_FUNCTION_167_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_108_0();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_229();
  sub_1D4E0CEE0();
  v4 = OUTLINED_FUNCTION_185();
  v7 = type metadata accessor for ContentManagementPlan.Link(v4, v5, v6, v3);
  OUTLINED_FUNCTION_101(v7);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_325();

  return sub_1D4DBBB6C(v9, v10, v11, v12);
}

uint64_t sub_1D4DBC26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D4DBC290, 0, 0);
}

uint64_t sub_1D4DBC290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_80_0();
  OUTLINED_FUNCTION_125();
  v14 = v12[5];
  v13 = v12[6];
  v12[2] = v12[4];
  v15 = swift_task_alloc();
  v12[7] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = swift_task_alloc();
  v12[8] = v16;
  OUTLINED_FUNCTION_62();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_63_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_228();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_178();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_306();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_154_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_332();
  OUTLINED_FUNCTION_155_0();
  sub_1D4E0CEE0();
  v17 = OUTLINED_FUNCTION_99_0();
  type metadata accessor for ContentManagementPlan.Link(v17, v18, v19, v13);
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CD00();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  *v16 = v12;
  v16[1] = sub_1D4DBC468;
  OUTLINED_FUNCTION_156();

  return MEMORY[0x1EEE41820](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1D4DBC468()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_25();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5();
  *v8 = v7;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4DBC57C()
{
  **(v0 + 24) = *(v0 + 80);
  OUTLINED_FUNCTION_8();
  return v1();
}

uint64_t sub_1D4DBC5A8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DBC604()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_211();

  return sub_1D4DBC26C(v3, v4, v5, v6);
}

unint64_t sub_1D4DBC6A4()
{
  result = qword_1EC7E3AA8;
  if (!qword_1EC7E3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7E3AA8);
  }

  return result;
}

unint64_t sub_1D4DBC6FC()
{
  result = qword_1EC7E3AB0[0];
  if (!qword_1EC7E3AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7E3AB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentPlanningError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContentPlanningError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D4DBC8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D4DBC9B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1D4DBC9F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D4DBCA2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1D4DBCB04(uint64_t *a1)
{
  result = type metadata accessor for ContentManagementPlan.Link.Mode(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D4DBCB78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 16;
  if (v3 + 1 > 0x10)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_24;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_24:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D4DBCCAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 16;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

unint64_t sub_1D4DBCE80(uint64_t a1)
{
  result = sub_1D4D9F944();
  if (v2 <= 0x3F)
  {
    sub_1D4DA1130(255, &qword_1EE08A670, MEMORY[0x1E69E7280]);
    result = sub_1D4E0D210();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4DBCF20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 16;
  if (v3 + 1 > 0x10)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_24;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_24:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D4DBD054(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x10)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 16;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFF)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 254) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFE)
  {
    v10 = a2 - 255;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1D4DBD228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  sub_1D4DBA13C(0, &qword_1EC7E3A88, MEMORY[0x1E69D38D0]);
  v4[3] = v7;
  v4[4] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4[5] = swift_getAssociatedTypeWitness();
  v8 = sub_1D4E0CEE0();
  v4[6] = v8;
  v4[7] = *(v8 - 8);
  v4[8] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[9] = v9;
  type metadata accessor for ContentManagementPlan.Link(0, a3, v8, a4);
  *v9 = v4;
  v9[1] = sub_1D4DBD4AC;

  return sub_1D4DB1870();
}

uint64_t sub_1D4DBD4AC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4DBD5A4()
{
  OUTLINED_FUNCTION_51();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_118_0(v2, v3, v1);
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_232();
    v6(v5);
    sub_1D4DBA0E8();
    OUTLINED_FUNCTION_157_0();
    sub_1D4E0C8D0();
    OUTLINED_FUNCTION_132_0();
    sub_1D4E0C8C0();
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_187();
    OUTLINED_FUNCTION_287(40, v7);
    v8 = OUTLINED_FUNCTION_4_0();
    sub_1D4DBA13C(v8, v9, v10);
    sub_1D4DBA1A0();
    OUTLINED_FUNCTION_33_0();
    swift_allocError();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_47();
    sub_1D4E0C8E0();
    swift_willThrow();

    OUTLINED_FUNCTION_27();
  }

  else
  {
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_113_0();
    v11();

    OUTLINED_FUNCTION_8();
  }

  return v12();
}

void sub_1D4DBD70C()
{
  if (!qword_1EC7E3CB8)
  {
    v0 = sub_1D4E0CEE0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7E3CB8);
    }
  }
}

uint64_t sub_1D4DBD75C()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_68_0(v4);

  return sub_1D4DBD228(v6, v7, v2, v1);
}

uint64_t sub_1D4DBD7F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB45B8(v3, v4, v5);
}

uint64_t sub_1D4DBD888()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB4010(v3, v4, v5);
}

uint64_t sub_1D4DBD918()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB39DC(v3, v4, v5);
}

uint64_t sub_1D4DBD9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_249();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_17(v10);
  *v11 = v12;
  v11[1] = sub_1D4DA1B3C;
  OUTLINED_FUNCTION_196();

  return v19(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D4DBDA60()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_67_0(v5);

  return sub_1D4DB4CEC(v7, v2, v3, v1);
}

uint64_t sub_1D4DBDB00(uint64_t a1, uint64_t a2)
{
  sub_1D4DA10B4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4DBDBA4(uint64_t a1)
{
  OUTLINED_FUNCTION_220();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_236();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_68_0(v2);
  OUTLINED_FUNCTION_144_0();
  OUTLINED_FUNCTION_196();

  return sub_1D4DB157C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D4DBDC68(uint64_t a1)
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_236();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_68_0(v2);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_335();

  return sub_1D4DB202C(v4, v5, v6, v7, v8);
}

uint64_t sub_1D4DBDD1C()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_68_0(v2);

  return sub_1D4DB24B0(v4, v5, v0);
}

uint64_t sub_1D4DBDDB0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_309();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_67_0(v1);
  OUTLINED_FUNCTION_268();

  return sub_1D4DB3500(v3, v4, v5);
}

uint64_t sub_1D4DBDE40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D4DBDF58(uint64_t a1)
{
  OUTLINED_FUNCTION_336();
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_236();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_17(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_68_0(v2);
  OUTLINED_FUNCTION_291();
  OUTLINED_FUNCTION_335();

  return sub_1D4DB5C20(v4, v5, v6, v7, v8);
}

void OUTLINED_FUNCTION_9_0()
{
  v2 = v0[163];
  *(v1 - 256) = v0[165];
  *(v1 - 248) = v2;
  v3 = v0[159];
  *(v1 - 240) = v0[162];
  *(v1 - 232) = v3;
  v4 = v0[155];
  *(v1 - 224) = v0[158];
  *(v1 - 216) = v4;
  v5 = v0[151];
  *(v1 - 208) = v0[153];
  *(v1 - 200) = v5;
  v6 = v0[148];
  *(v1 - 192) = v0[150];
  *(v1 - 184) = v6;
  v7 = v0[143];
  *(v1 - 176) = v0[147];
  *(v1 - 168) = v7;
}

uint64_t OUTLINED_FUNCTION_16_0(uint64_t a1, uint64_t a2)
{
  v4 = *(v3 + 1248);
  __swift_storeEnumTagSinglePayload(v2, a2, 1, v4);
  return __swift_getEnumTagSinglePayload(v2, 1, v4);
}

uint64_t OUTLINED_FUNCTION_17_0()
{
  result = v0[134];
  v2 = (v0[170] + *(v0[156] + 64));
  v0[316] = *v2;
  v0[317] = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  v2 = v1[170];
  __swift_storeEnumTagSinglePayload(v1[169], v0, 1, v1[156]);
  return v2;
}

uint64_t OUTLINED_FUNCTION_27_0(uint64_t a1)
{
  result = *(v1 + 1296);
  *(v1 + 832) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_0()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1416);
  *(v0 + 2424) = *v1;
  *(v0 + 2432) = *(v1 + 8);
  *(v0 + 133) = *(v1 + 16);
  v3 = *(v2 + 48);
  v4 = (v1 + *(v2 + 64));
  *(v0 + 2440) = *v4;
  *(v0 + 2448) = v4[1];
  return v1 + v3;
}

void OUTLINED_FUNCTION_32_0(uint64_t a1@<X8>)
{
  *(v3 - 256) = v1;
  *(v3 - 248) = a1;
  v4 = v2[163];
  *(v3 - 240) = v2[165];
  *(v3 - 232) = v4;
  v5 = v2[159];
  *(v3 - 224) = v2[162];
  *(v3 - 216) = v5;
  v6 = v2[155];
  *(v3 - 208) = v2[158];
  *(v3 - 200) = v6;
  v7 = v2[151];
  *(v3 - 192) = v2[153];
  *(v3 - 184) = v7;
  v8 = v2[148];
  *(v3 - 176) = v2[150];
  *(v3 - 168) = v8;
  v9 = v2[143];
  *(v3 - 160) = v2[147];
  *(v3 - 152) = v9;
}

uint64_t OUTLINED_FUNCTION_37_0()
{
  *v2 = sub_1D4DBE048;
  v2[1] = v1;
  return v0;
}

uint64_t OUTLINED_FUNCTION_42_0(uint64_t a1)
{
  v6 = *(v3 + *(v5 - 112));
  *(a1 + 16) = *(v5 - 128);
  *(a1 + 32) = v6;
  v7 = *(v4 + 16);
  v8 = *(v1 + 48);
  *v2 = *v4;
  *(v2 + 16) = v7;
  return v2 + v8;
}

uint64_t OUTLINED_FUNCTION_49_0()
{
  v3 = v0[138];
  *(v1 - 128) = v0[141];
  *(v1 - 120) = v3;
  v4 = v0[134];
  *(v1 - 112) = v0[137];
  *(v1 - 104) = v4;
}

__n128 OUTLINED_FUNCTION_53_0@<Q0>(_OWORD *a1@<X8>)
{
  v4 = v1[1].n128_u8[0];
  result = *v1;
  *(v3 - 128) = *a1;
  *v2 = result;
  v2[1].n128_u8[0] = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_64_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + a2);
  *(a1 + 16) = *(v4 - 160);
  *(a1 + 32) = v5;
  return v3;
}

uint64_t OUTLINED_FUNCTION_73_0(uint64_t a1)
{
  result = *(v1 + 1464);
  *(v1 + 816) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_76_0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 1488);
  v4 = *(v2 + 1416);
  __swift_storeEnumTagSinglePayload(v3, a2, 1, v4);
  return __swift_getEnumTagSinglePayload(v3, 1, v4);
}

uint64_t OUTLINED_FUNCTION_79_0()
{

  return swift_getAssociatedTypeWitness();
}

char *OUTLINED_FUNCTION_95_0@<X0>(unsigned __int8 a1@<W8>, __n128 a2@<Q0>)
{
  *v3 = a2;
  v3[1].n128_u8[0] = a1;
  return v3 + v2;
}

uint64_t OUTLINED_FUNCTION_97_0(__n128 *a1, __n128 a2, __n128 a3)
{
  a1[1] = a3;
  a1[2] = a2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_107_0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);
  result = *(v0 + 200);
  v4 = v1 + *(v2 + 48);
  *(v0 + 264) = *v4;
  *(v0 + 272) = *(v4 + 8);
  *(v0 + 89) = *(v4 + 16);
  v5 = (v1 + *(v2 + 64));
  *(v0 + 280) = *v5;
  *(v0 + 288) = v5[1];
  *(v0 + 296) = v5[2];
  *(v0 + 304) = v5[3];
  return result;
}

uint64_t OUTLINED_FUNCTION_123_0()
{
  v2 = v0[195];
  v3 = v0[179];
  v4 = v0[177];
  v5 = *(v2 + 16);
  v6 = *(v4 + 48);
  v7 = *v2;
  *(v1 - 128) = *(v2 + *(v4 + 64));
  *v3 = v7;
  *(v3 + 16) = v5;
  return v3 + v6;
}

uint64_t OUTLINED_FUNCTION_125_0()
{
  v3 = *(v0 + 2448);
  *(v1 - 128) = *(v0 + 133);
  *(v1 - 136) = *(v0 + 2432);
  v4 = *(v0 + 2424);
  *(v1 - 168) = v3;
  *(v1 - 160) = v4;
  v5 = *(v0 + 992);
  *(v1 - 112) = *(v0 + 2400);
  *(v1 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_126_0()
{
  *(v2 - 96) = v0;
  v4 = v1[220];
  v5 = v1[138];
  *(v2 - 160) = v1[135];
  v6 = v1[130];
  *(v2 - 136) = v5;
  *(v2 - 128) = v6;
  v7 = v1[124];
  *(v2 - 112) = v4;
  *(v2 - 104) = v7;
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v3 = *(v0 + 1072);
  *(v1 - 112) = *(v0 + 1096);
  *(v1 - 104) = v3;
}

uint64_t OUTLINED_FUNCTION_149_0@<X0>(uint64_t a1@<X8>)
{
  v2[281] = v1;
  v2[282] = *(a1 + 56);
  v2[283] = (a1 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;

  return sub_1D4E0C870();
}

uint64_t OUTLINED_FUNCTION_150_0()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_1D4E0CFA0();
}

uint64_t OUTLINED_FUNCTION_173()
{

  return sub_1D4E0CCF0();
}

uint64_t OUTLINED_FUNCTION_184()
{
  *(v1 - 104) = *(v0 + 1072);
}

uint64_t OUTLINED_FUNCTION_186()
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_195(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_197(uint64_t a1, uint64_t a2)
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_212(uint64_t a1)
{
  result = *(v1 + 1304);
  *(v1 + 768) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_217()
{
}

uint64_t OUTLINED_FUNCTION_218()
{
}

uint64_t OUTLINED_FUNCTION_219()
{
}

uint64_t OUTLINED_FUNCTION_221(uint64_t a1)
{

  return swift_getTupleTypeMetadata3();
}

uint64_t OUTLINED_FUNCTION_231(uint64_t a1)
{
  result = *(v1 + 240);
  *(v1 + 104) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_235(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_252(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_254()
{
}

void OUTLINED_FUNCTION_271()
{
  v4 = *(v2 + 1056);
  *(v3 - 128) = v0;
  *(v3 - 120) = v4;
  v5 = *(v2 + 992);
  *(v3 - 112) = v1;
  *(v3 - 104) = v5;
}

uint64_t OUTLINED_FUNCTION_276()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_277()
{

  return sub_1D4E0CC60();
}

uint64_t OUTLINED_FUNCTION_278()
{
}

uint64_t OUTLINED_FUNCTION_279(uint64_t a1, uint64_t a2)
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_280(uint64_t a1)
{
  *(v1 + 824) = a1;

  return sub_1D4E0CCB0();
}

uint64_t OUTLINED_FUNCTION_281(uint64_t a1, uint64_t a2)
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_282(uint64_t a1)
{
  *(v1 + 248) = a1;
}

uint64_t OUTLINED_FUNCTION_283(uint64_t a1)
{
  *(v1 + 2288) = a1;

  return sub_1D4E0CD30();
}

uint64_t OUTLINED_FUNCTION_284(uint64_t a1)
{
  *(v1 + 2272) = a1;

  return sub_1D4E0C860();
}

uint64_t OUTLINED_FUNCTION_285()
{
  *v1 = *(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_286()
{
  *(v0 + 88) = v1;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_287(uint64_t a1, uint64_t a2)
{

  return sub_1D4E0C8C0();
}

uint64_t OUTLINED_FUNCTION_288()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_293()
{
  *(v2 + 688) = v1;
  *(v2 + 696) = v0;
  **(v4 - 104) = v3;
}

void OUTLINED_FUNCTION_299()
{
  *(v1 + 72) = v3;
  *(v1 + 80) = v0;
  *(v1 + 88) = v2;
}

uint64_t OUTLINED_FUNCTION_319()
{
  *(v0 + 130) = 3;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_320()
{
  *(v0 + 128) = 5;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_321()
{
}

uint64_t OUTLINED_FUNCTION_322()
{

  return sub_1D4E0CA10();
}

uint64_t OUTLINED_FUNCTION_323()
{
  *(v1 + 248) = *(v0 + 56);
  *(v1 + 256) = (v0 + 56) & 0xFFFFFFFFFFFFLL | 0xBCF2000000000000;

  return sub_1D4E0C870();
}

uint64_t OUTLINED_FUNCTION_324@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 72) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_326()
{

  return sub_1D4E0CF80();
}

uint64_t OUTLINED_FUNCTION_327()
{
  *(v0 + 2232) = *(v0 + 864);

  return sub_1D4E0CA10();
}

uint64_t OUTLINED_FUNCTION_328()
{
  *(v0 + 88) = 6;

  return sub_1D4E0C880();
}

uint64_t OUTLINED_FUNCTION_329@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 144) = v1;
  *(v3 - 136) = a1;
  v5 = *(v2 + 1072);
  *(v3 - 128) = *(v2 + 1096);
  *(v3 - 120) = v5;
}

uint64_t OUTLINED_FUNCTION_332()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1D4DBFCA0(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_48();
  v46 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v48 = v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_48();
  v42 = v19 - v18;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1D4E0CE80();
  if (!v24)
  {
    return sub_1D4E0CC80();
  }

  v47 = v24;
  v51 = sub_1D4E0CFE0();
  v38 = sub_1D4E0CFF0();
  sub_1D4E0CFB0();
  result = sub_1D4E0CE70();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v10;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1D4E0CEC0();
      (*v39)(v17);
      v27(v50, 0);
      v28 = v49;
      v44(v17, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_34_1();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_34_1();
      v30(v29);
      sub_1D4E0CFD0();
      result = sub_1D4E0CE90();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ContentRegistration.rawIdentifiers.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for ContentRegistration.SourceInfo(0, v6, v7, a4);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v23 - v10);
  (*(v12 + 16))(v23 - v10, v4 + *(a1 + 36), v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_10_1();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_112_0();
      v14 = sub_1D4E0CC80();
      OUTLINED_FUNCTION_10_1();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_12();
      (*(v15 + 8))(v11, v16);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_41_1();
      sub_1D4DBD70C();
      swift_getTupleTypeMetadata2();

      OUTLINED_FUNCTION_10_1();
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_112_0();
      v14 = sub_1D4E0CC80();
      (*(*(v21 - 8) + 8))(v11, v21);
    }
  }

  else
  {
    v23[1] = *v11;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v23[-2] = v6;
    v23[-1] = v7;
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_112_0();
    v17 = sub_1D4E0CD00();
    OUTLINED_FUNCTION_10_1();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = OUTLINED_FUNCTION_15_1();
    v14 = sub_1D4DBFCA0(sub_1D4DC3FB0, &v23[-4], v17, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  }

  return v14;
}

uint64_t ContentRegistration.init(id:sourceInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_36_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12();
  (*(v8 + 32))(a4, a1);
  v9 = OUTLINED_FUNCTION_147_0();
  v12 = *(type metadata accessor for ContentRegistration(v9, v10, a3, v11) + 36);
  v13 = OUTLINED_FUNCTION_147_0();
  type metadata accessor for ContentRegistration.SourceInfo(v13, v14, a3, v15);
  OUTLINED_FUNCTION_12();
  v17 = *(v16 + 32);

  return v17(a4 + v12, a2);
}

uint64_t ContentManagerBehavior.withPlan<A>(buildPlan:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[9] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_45(AssociatedTypeWitness);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_117();
  v9 = sub_1D4E0C870();
  v0[12] = OUTLINED_FUNCTION_111(v9);
  v10 = sub_1D4D8E454();
  OUTLINED_FUNCTION_110(v10);
  OUTLINED_FUNCTION_120();
  v0[13] = v11;
  v0[14] = v12;
  v13 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_51();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10();
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_117();
  v1[11] = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_10_1();
  v12 = type metadata accessor for ContentManagementPlan.Link(v8, v9, v10, v11);
  v1[12] = v12;
  OUTLINED_FUNCTION_45(v12);
  v1[13] = v13;
  v1[14] = OUTLINED_FUNCTION_117();
  v14 = sub_1D4E0C870();
  v1[15] = OUTLINED_FUNCTION_111(v14);
  v15 = sub_1D4D8E454();
  OUTLINED_FUNCTION_110(v15);
  OUTLINED_FUNCTION_120();
  v1[16] = v16;
  v1[17] = v17;
  v18 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1D4DC04D0()
{
  OUTLINED_FUNCTION_31();
  (*(v0[7] + 40))(v0[5], v0[7]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  swift_getAssociatedConformanceWitness();
  *v1 = v0;
  v1[1] = sub_1D4DC05C8;

  return static ContentManagementPlan.withPlan<A>(in:buildPlan:)();
}

uint64_t sub_1D4DC05C8()
{
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  *v4 = *v1;
  *(v3 + 128) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[14];
  v9 = v2[13];
  if (v0)
  {
    v10 = sub_1D4DC07B4;
  }

  else
  {
    v10 = sub_1D4DC0754;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D4DC0754()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC07B4()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DC098C()
{
  OUTLINED_FUNCTION_1();
  (*(v0[6] + 40))(v0[5]);
  swift_task_alloc();
  OUTLINED_FUNCTION_24();
  v0[18] = v1;
  *v1 = v2;
  v1[1] = sub_1D4DC0A4C;

  return static ContentManagementPlan.withPlan<A>(in:buildPlan:)();
}

uint64_t sub_1D4DC0A4C()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
    v7 = v3[16];
    v8 = v3[17];

    return MEMORY[0x1EEE6DFA0](sub_1D4DC0DCC, v7, v8);
  }

  else
  {
    (*(v3[9] + 8))(v3[10], v3[8]);
    swift_task_alloc();
    OUTLINED_FUNCTION_24();
    v3[20] = v9;
    *v9 = v10;
    v9[1] = sub_1D4DC0BD4;

    return sub_1D4DB1870();
  }
}

uint64_t sub_1D4DC0BD4()
{
  OUTLINED_FUNCTION_51();
  v2 = *v1;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = v2[14];
  v6 = v2[13];
  v7 = v2[12];
  *v4 = *v1;
  *(v3 + 168) = v0;

  (*(v6 + 8))(v5, v7);
  v8 = v2[17];
  v9 = v2[16];
  if (v0)
  {
    v10 = sub_1D4DC0E44;
  }

  else
  {
    v10 = sub_1D4DC0D60;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

uint64_t sub_1D4DC0D60()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC0DCC()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_1D4DC0E44()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t ContentManagerBehavior.firstContentID(matching:in:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  v7 = sub_1D4E0C870();
  v0[9] = OUTLINED_FUNCTION_111(v7);
  v8 = sub_1D4D8E454();
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_120();
  v0[10] = v9;
  v0[11] = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4DC0F38()
{
  v1 = OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_23_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CEE0();
  *v11 = v0;
  OUTLINED_FUNCTION_37_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC10D8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC1234;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC11DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4DC11DC()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC1234()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

void sub_1D4DC129C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  ContentManagementPlan.find(firstMatching:in:)(a2);
}

uint64_t ContentManagerBehavior.import(identifiers:in:)()
{
  OUTLINED_FUNCTION_1();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_1D4E0C870();
  v1[8] = OUTLINED_FUNCTION_111(v7);
  v8 = sub_1D4D8E454();
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_120();
  v1[9] = v9;
  v1[10] = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4DC13E8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 32);
  v5 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v5;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1D4DC14C4;
  OUTLINED_FUNCTION_8_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC14C4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[13] = v0;

  if (v0)
  {
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D4DC1620;
  }

  else
  {

    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1D4DC15C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D4DC15C8()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_1D4DC1620()
{
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_37();

  return v0();
}

void sub_1D4DC1688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ContentManagementPlan(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  ContentManagementPlan.import(identifiers:in:)(a2);

  sub_1D4DC51F0(v10, v11, v12);
}

uint64_t ContentManagerBehavior.import(identifier:in:)()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_1(v1, v2, v3, v4, v5, v6);
  v7 = sub_1D4E0C870();
  v0[9] = OUTLINED_FUNCTION_111(v7);
  v8 = sub_1D4D8E454();
  OUTLINED_FUNCTION_110(v8);
  OUTLINED_FUNCTION_120();
  v0[10] = v9;
  v0[11] = v10;
  v11 = OUTLINED_FUNCTION_121();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4DC17E0()
{
  v1 = OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_23_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10);
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_39();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_39_1();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_14_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_112_0();
  sub_1D4E0CEE0();
  *v11 = v0;
  OUTLINED_FUNCTION_37_1();

  return ContentManagerBehavior.withPlan<A>(buildPlan:)();
}

uint64_t sub_1D4DC1980()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  v3[14] = v0;

  if (v0)
  {
    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC52D0;
  }

  else
  {

    v7 = v3[10];
    v8 = v3[11];
    v9 = sub_1D4DC52D8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

void sub_1D4DC1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  sub_1D4D9BF48(v10, v10);
  v11 = *(v10 - 8);
  swift_allocObject();
  sub_1D4E0CC40();
  (*(v11 + 16))(v12, a2, v10);
  v13 = sub_1D4D8EE30();
  v15 = type metadata accessor for ContentManagementPlan(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  ContentManagementPlan.import(identifiers:in:)(v13);

  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = v19;
  *(v16 + 40) = v20;
  *(v16 + 48) = v21;
  sub_1D4DB9858(v19, v20, v21);
  swift_getAssociatedTypeWitness();
  v17 = sub_1D4E0CEE0();
  ContentManagementPlan.after<A>(operation:)(&unk_1D4E0D970, v16, v15, v17);

  sub_1D4DC51F0(v19, v20, v21);
}

uint64_t sub_1D4DC1DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a1;
  *(v7 + 64) = sub_1D4E0C870();
  v11 = sub_1D4E0C860();
  *(v7 + 16) = a3;
  *(v7 + 72) = v11;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5 & 1;
  v12 = swift_task_alloc();
  *(v7 + 80) = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15 = sub_1D4E0CD00();
  *(v7 + 88) = v15;
  type metadata accessor for ContentManagementPlan.Link(0, AssociatedTypeWitness, v15, AssociatedConformanceWitness);
  *v12 = v7;
  v12[1] = sub_1D4DC2000;

  return sub_1D4DB1870();
}