unint64_t sub_237E2D950()
{
  result = qword_27DEB47B0[0];
  if (!qword_27DEB47B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB47B0);
  }

  return result;
}

void sub_237E2DA14()
{
  OUTLINED_FUNCTION_13_4();
  WitnessTable = v1;
  v243 = v0;
  v3 = v2;
  v213 = v4;
  v216 = sub_237EF7820();
  OUTLINED_FUNCTION_1();
  v215 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v7);
  v221 = sub_237EF7310();
  OUTLINED_FUNCTION_1();
  v223 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v10);
  v225 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v234 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v13);
  v14 = sub_237EF7210();
  v15 = OUTLINED_FUNCTION_18(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v16);
  v17 = sub_237EF6FC0();
  OUTLINED_FUNCTION_1();
  v232 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v20);
  v238 = sub_237EF7260();
  OUTLINED_FUNCTION_1();
  v239 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_22_2(v23);
  v230 = sub_237EF7080();
  OUTLINED_FUNCTION_1();
  v229 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22_2(&v187 - v27);
  v28 = sub_237EF6E60();
  v29 = OUTLINED_FUNCTION_18(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_3();
  v244 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E78, &qword_237F0CCF8);
  OUTLINED_FUNCTION_18(v31);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v32);
  v34 = &v187 - v33;
  v35 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v246 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  v245 = &v187 - v39;
  v40 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v187 - v47;
  sub_237EF7720();
  sub_237EF7620();
  v49 = *(v3 + 16);
  *&v242 = v3;
  v50 = *(v3 + 32);
  v51 = sub_237EF7EF0();
  sub_237E5E9F0(v51, v34);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_237C65484(v34, &qword_27DEB0E78, &qword_237F0CCF8);
    v52 = type metadata accessor for SerializationError(0);
    v53 = sub_237DE8DA4(qword_280C8E658, type metadata accessor for SerializationError, &protocol conformance descriptor for SerializationError);
    OUTLINED_FUNCTION_45_0(v52, v53);
    v55 = v54;
    v249[0] = 0;
    v249[1] = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000017, 0x8000000237EFDDB0);
    v248[0] = sub_237EF7EF0();
    type metadata accessor for MLMultiArrayDataType(0);
    sub_237EF9670();
    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v56 = v249[1];
    *v55 = v249[0];
    v55[1] = v56;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v42 + 8))(v48, v40);
  }

  else
  {
    v201 = v49;
    v202 = v50;
    v204 = v17;
    v219 = v42;
    v220 = v40;
    v240 = "tworkClassifierModel ";
    (*(v246 + 32))(v245, v34, v35);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
    v208 = sub_237EF70E0();
    OUTLINED_FUNCTION_1();
    v59 = *(v58 + 72);
    v207 = v60;
    v61 = *(v60 + 80);
    v62 = (v61 + 32) & ~v61;
    v205 = v59 + v62;
    v63 = swift_allocObject();
    v236 = v35;
    v209 = xmmword_237F03530;
    *(v63 + 16) = xmmword_237F03530;
    v64 = v242;
    v65 = v244;
    v203 = *(v243 + *(v242 + 92));
    sub_237EF6CF0();
    v66 = OUTLINED_FUNCTION_27_9();
    OUTLINED_FUNCTION_36_20(v66, v67, v65);
    v68 = v48;
    sub_237EF76B0();
    v210 = v59;
    v206 = v57;
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_237F08A50;
    v70 = v64[3];
    v71 = v64[7];
    v72 = v64[8];
    v212 = v69 + v62;
    v73 = OUTLINED_FUNCTION_26_25();
    v211 = v74;
    v75 = WitnessTable;
    sub_237DA0968(v73, v76, v70, v70);
    if (v75)
    {
      (*(v246 + 8))(v245, v236);
      OUTLINED_FUNCTION_18_25();
      v77(v68, v220);
      *(v69 + 16) = 0;
    }

    else
    {
      v200 = v68;
      WitnessTable = v69;
      v199 = v61;
      v198 = (v61 + 32) & ~v61;
      v78 = v246;
      v79 = v210;
      v80 = v211;
      sub_237DA0AC0(0x746567726174, 0xE600000000000000, v70, v70);
      v196 = v72;
      v207 = v71;
      v208 = 0;
      v194 = v212 + 2 * v79;
      v81 = *(v78 + 104);
      v82 = v235;
      v192 = *MEMORY[0x277D25100];
      v83 = v236;
      v193 = v78 + 104;
      v191 = v81;
      v81(v235);
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v84 = swift_allocObject();
      OUTLINED_FUNCTION_8_68(v84);
      v85 = v243;
      v86 = (v243 + *(v242 + 88));
      v87 = v86[1];
      v212 = *v86;
      v189 = v87;
      v197 = v70;
      v195 = v88;
      v84[2].n128_u64[0] = sub_237E5E170(v212, v87, v70, v80, v88);
      v89 = v244;
      sub_237EF6CF0();

      v90 = v83;
      v91 = *(v78 + 8);
      v246 = v78 + 8;
      v91(v82, v90);
      v188 = "lassifierModel.evaluation";
      OUTLINED_FUNCTION_36_20(0xD000000000000019, 0x8000000237F002B0, v89);
      sub_237EF7700();
      sub_237EF7600();
      v92 = v240;
      OUTLINED_FUNCTION_26_25();
      sub_237EF7640();
      sub_237EF75E0();
      v93 = *(v203 + 16) >= 2uLL;
      v210 = v91;
      if (v93)
      {
        v94 = v228;
        sub_237EF6FD0();
        v95 = sub_237C6DB78(0xD000000000000010, 0x8000000237F00010, 0xD000000000000011, v92 | 0x8000000000000000);
        (*(v229 + 16))(v227, v94, v230);
        sub_237D0BC38(0, 1, 1, MEMORY[0x277D84F90]);
        v97 = v96;
        v99 = *(v96 + 16);
        v98 = *(v96 + 24);
        v105 = v219;
        v106 = v232;
        if (v99 >= v98 >> 1)
        {
          sub_237D0BC38(v98 > 1, v99 + 1, 1, v96);
          v97 = v186;
        }

        OUTLINED_FUNCTION_30_32();
        *(v97 + 16) = v99 + 1;
        v100 = v229;
        v101 = v230;
        (*(v229 + 32))(v97 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v99, v227, v230);
        sub_237E4868C(v95);
        (*(v100 + 8))(v228, v101);
      }

      else
      {
        v102 = OUTLINED_FUNCTION_27_9();
        sub_237C6DB78(v102, v103, 0xD000000000000011, v104);
        v105 = v219;
        OUTLINED_FUNCTION_30_32();
        v106 = v232;
      }

      sub_237EF8260();
      v107 = v237;
      sub_237EF7250();
      (v106[13])(v231, *MEMORY[0x277D25168], v85);
      sub_237EF7230();
      OUTLINED_FUNCTION_26_25();
      v108 = v107;
      sub_237EF7240();
      v249[0] = v212;
      v109 = sub_237EF8A60();
      OUTLINED_FUNCTION_1_24();
      WitnessTable = swift_getWitnessTable();
      v110 = v211;
      sub_237DA0C74(v109, WitnessTable, v233);
      v111 = v220;
      v112 = v238;
      if (v91)
      {
        OUTLINED_FUNCTION_18_25();
        v113(v108, v112);
        v210(v245, v236);
        (*(v105 + 8))(v200, v111);
      }

      else
      {
        sub_237EF7220();
        v114 = *(v239 + 16);
        v208 = 0;
        v115 = v222;
        v114(v222, v108, v112);
        v116 = *MEMORY[0x277D25398];
        v117 = *(v234 + 104);
        v234 += 104;
        v233 = v117;
        (v117)(v115, v116, v225);
        sub_237EF7660();
        v118 = sub_237EF7300();
        v232 = &v187;
        v119 = v212;
        v249[0] = v212;
        MEMORY[0x28223BE20](v118);
        v120 = v197;
        *(&v187 - 10) = v201;
        *(&v187 - 9) = v120;
        v121 = *(v242 + 40);
        *(&v187 - 8) = v202;
        *(&v187 - 7) = v121;
        v122 = v207;
        *(&v187 - 6) = v110;
        *(&v187 - 5) = v122;
        v123 = v195;
        *(&v187 - 4) = v196;
        *(&v187 - 3) = v123;
        v124 = v123;
        *(&v187 - 2) = v243;
        v125 = sub_237EF7170();
        sub_237EF8260();
        v126 = v125;
        v127 = v208;
        sub_237C9339C(sub_237E2FDF4, (&v187 - 12), v109, v126, MEMORY[0x277D84A98], WitnessTable);
        v243 = v127;

        sub_237EF72F0();
        sub_237EF7720();
        sub_237EF7620();
        v128 = OUTLINED_FUNCTION_7_58();
        OUTLINED_FUNCTION_8_68(v128);
        v129 = v235;
        v130 = v236;
        OUTLINED_FUNCTION_23_34();
        v131();
        v132 = swift_allocObject();
        OUTLINED_FUNCTION_8_68(v132);
        v132[2].n128_u64[0] = sub_237E5E170(v119, v189, v120, v211, v124);
        v133 = v244;
        OUTLINED_FUNCTION_35_16();

        v134 = v210;
        v210(v129, v130);
        OUTLINED_FUNCTION_36_20(0xD000000000000019, v188 | 0x8000000000000000, v133);
        sub_237EF76B0();
        v135 = OUTLINED_FUNCTION_7_58();
        OUTLINED_FUNCTION_8_68(v135);
        OUTLINED_FUNCTION_23_34();
        v136();
        v137 = swift_allocObject();
        v242 = xmmword_237F04760;
        *(v137 + 16) = xmmword_237F04760;
        *(v137 + 32) = 2;
        *(v137 + 40) = sub_237E5E170(v212, v189, v197, v211, v124);
        OUTLINED_FUNCTION_35_16();

        v134(v129, v130);
        v138 = v133;
        v139 = v226;
        OUTLINED_FUNCTION_36_20(0x74757074756FLL, 0xE600000000000000, v138);
        sub_237EF7700();
        v140 = v239;
        v141 = v221;
        (*(v223 + 16))(v222, v139, v221);
        OUTLINED_FUNCTION_19_38();
        v142();
        sub_237EF7660();
        v143 = OUTLINED_FUNCTION_7_58();
        OUTLINED_FUNCTION_8_68(v143);
        v144 = OUTLINED_FUNCTION_26_25();
        v145 = v243;
        sub_237DA0968(v144, v146, v197, v197);
        v208 = v145;
        if (v145)
        {
          v147 = *(v219 + 8);
          v148 = v220;
          v147(v224, v220);
          OUTLINED_FUNCTION_18_25();
          v149(v139, v141);
          (*(v140 + 8))(v237, v238);
          v150 = OUTLINED_FUNCTION_25_30();
          v151(v150);
          v147(v200, v148);
          v143[1].n128_u64[0] = 0;
        }

        else
        {
          v152 = v217;
          sub_237EF7720();
          sub_237EF7620();
          v153 = v200;
          sub_237EF76A0();
          sub_237EF76B0();
          sub_237EF7700();
          OUTLINED_FUNCTION_26_25();
          sub_237EF7640();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD388, &qword_237F188B0);
          v154 = v219;
          v155 = *(v219 + 72);
          v156 = (*(v219 + 80) + 32) & ~*(v219 + 80);
          v157 = swift_allocObject();
          *(v157 + 16) = v242;
          v158 = v157 + v156;
          v159 = *(v154 + 16);
          v160 = v153;
          v161 = v220;
          v159(v158, v160, v220);
          v159(v158 + v155, v224, v161);
          sub_237EF7190();
          OUTLINED_FUNCTION_19_38();
          v162();
          v163 = v152;
          sub_237EF7660();
          v164 = v218;
          v159(v218, v163, v161);
          v165 = v214;
          sub_237EF7810();
          v166 = type metadata accessor for CoreMLPackage(0);
          v167 = v213;
          v168 = v213 + *(v166 + 24);
          *(v168 + 80) = 0;
          *(v168 + 48) = 0u;
          *(v168 + 64) = 0u;
          *(v168 + 16) = 0u;
          *(v168 + 32) = 0u;
          *v168 = 0u;
          v159(v167, v164, v161);
          memcpy(v249, v168, 0x58uLL);
          sub_237C65484(v249, &unk_27DEAD7B0, &unk_237F03CA0);
          *v168 = 0u;
          *(v168 + 16) = 0u;
          *(v168 + 32) = 0u;
          *(v168 + 48) = 0u;
          *(v168 + 64) = 0u;
          *(v168 + 80) = 0;
          v169 = v215;
          v170 = v216;
          (*(v215 + 16))(v167 + *(v166 + 20), v165, v216);
          v243 = "statusDictionary";
          v171 = sub_237E34060();
          v173 = v172;
          v244 = sub_237EF7780();
          v175 = v174;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v247 = *v175;
          sub_237C91098(v171, v173, 0xD00000000000001ALL, v243 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
          *v175 = v247;
          v244(v248, 0);
          (*(v169 + 8))(v165, v170);
          v177 = *(v154 + 8);
          v178 = OUTLINED_FUNCTION_12_14(v248);
          v177(v178);
          v179 = OUTLINED_FUNCTION_12_14(&v247);
          v177(v179);
          v180 = OUTLINED_FUNCTION_12_14(&v249[2]);
          v177(v180);
          OUTLINED_FUNCTION_18_25();
          v181(v226, v221);
          OUTLINED_FUNCTION_18_25();
          v182(v237, v238);
          v183 = OUTLINED_FUNCTION_25_30();
          v184(v183);
          v185 = OUTLINED_FUNCTION_12_14(&v231);
          v177(v185);
        }
      }
    }
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E2F0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = a10;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, &v11);
  sub_237EF82F0();
  if (!v11)
  {
    return sub_237EF7160();
  }

  sub_237DB2E2C(v11, v12);
}

void FullyConnectedNetworkMultiLabelClassifierModel.evaluation<A>(on:confidenceThresholds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v22;
  a20 = v23;
  v139 = v21;
  v150 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v28[3];
  v140 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v152 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  v147 = (&v131 - v39);
  v40 = *(v36 - 1);
  MEMORY[0x28223BE20](v41);
  v43 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v33;
  v44 = sub_237EF8DD0();
  if (v44)
  {
    v45 = sub_237C84150();
    OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v45);
    *v46 = 0xD000000000000039;
    *(v46 + 8) = 0x8000000237F00270;
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    *(v46 + 32) = 2;
    swift_willThrow();
  }

  else
  {
    v134 = v43;
    v135 = v40;
    v132 = v31;
    v133 = v35;
    v151 = &v131;
    MEMORY[0x28223BE20](v44);
    OUTLINED_FUNCTION_9_51();
    v148 = v29[2];
    *(v47 - 80) = v148;
    *(v47 - 72) = v36;
    v48 = v29[4];
    v49 = v29[5];
    *(v47 - 64) = v27;
    *(v47 - 56) = v48;
    v141 = v48;
    v50 = v29[6];
    v51 = v29[7];
    *(v47 - 48) = v49;
    *(v47 - 40) = v50;
    v52 = v29[8];
    v53 = v29[9];
    v136 = v29;
    *(v47 - 32) = v51;
    *(v47 - 24) = v52;
    *(v47 - 16) = v53;
    *(v47 - 8) = v25;
    KeyPath = swift_getKeyPath();
    v138 = &v131;
    MEMORY[0x28223BE20](KeyPath);
    *(&v131 - 8) = v27;
    *(&v131 - 7) = v49;
    v143 = v50;
    v144 = v49;
    *(&v131 - 6) = v50;
    *(&v131 - 5) = v51;
    v142 = v51;
    v55 = v52;
    *(&v131 - 4) = v52;
    *(&v131 - 3) = v25;
    v129 = v56;
    v151 = v36;
    v149 = v53;
    v57 = sub_237EF8CF0();
    v145 = v27;
    v146 = v25;
    v58 = v25;
    v59 = v57;
    v60 = v139;
    sub_237C9339C(sub_237E2FE20, (&v131 - 10), v27, v57, MEMORY[0x277D84A98], v58);
    v62 = v61;
    v63 = v60;

    sub_237EF8260();
    v64 = sub_237EF8920();

    a10 = v64;
    v138 = v152 + 1;
    v139 = v62 + 32;
    while (1)
    {
      v65 = sub_237EF8A00();
      v66 = a10;
      if (a10 == v65)
      {
        break;
      }

      v67 = v55;
      v68 = sub_237EF89D0();
      sub_237EF8960();
      v69 = v148;
      v152 = v63;
      if (v68)
      {
        v70 = *(v139 + 8 * v66);
        sub_237EF8260();
      }

      else
      {
        v70 = sub_237EF93A0();
      }

      v71 = sub_237EF8A40();
      v154 = v70;
      MEMORY[0x28223BE20](v71);
      *(&v131 - 12) = v69;
      v72 = v151;
      v73 = v145;
      *(&v131 - 11) = v151;
      *(&v131 - 10) = v73;
      v74 = v143;
      v75 = v144;
      *(&v131 - 9) = v141;
      *(&v131 - 8) = v75;
      *(&v131 - 7) = v74;
      *(&v131 - 6) = v142;
      *(&v131 - 5) = v67;
      v76 = v146;
      *(&v131 - 4) = v149;
      *(&v131 - 3) = v76;
      v129 = v150;
      swift_getWitnessTable();
      v77 = v147;
      v78 = v152;
      sub_237EF87D0();
      v63 = v78;

      if (__swift_getEnumTagSinglePayload(v77, 1, v72) != 1)
      {

        v122 = v135;
        v123 = v134;
        v124 = v151;
        (*(v135 + 32))(v134, v77, v151);
        v154 = 0;
        v155 = 0xE000000000000000;
        sub_237EF9330();
        MEMORY[0x2383E0710](0x27206C6562614CLL, 0xE700000000000000);
        sub_237EF9CF0();
        MEMORY[0x2383E0710](0xD000000000000024, 0x8000000237EFE4B0);
        v125 = v154;
        v126 = v155;
        v127 = sub_237C84150();
        OUTLINED_FUNCTION_45_0(&type metadata for PipelineDataError, v127);
        *v128 = 0xD000000000000039;
        *(v128 + 8) = 0x8000000237F00270;
        *(v128 + 16) = v125;
        *(v128 + 24) = v126;
        *(v128 + 32) = 5;
        swift_willThrow();
        (*(v122 + 8))(v123, v124);
        goto LABEL_13;
      }

      (*v138)(v77, v140);
      v55 = v67;
    }

    v140 = v59;

    MEMORY[0x28223BE20](v79);
    OUTLINED_FUNCTION_9_51();
    v80 = v151;
    *(v81 - 80) = v148;
    *(v81 - 72) = v80;
    v83 = v144;
    v82 = v145;
    v85 = v141;
    v84 = v142;
    *(v81 - 64) = v145;
    *(v81 - 56) = v85;
    v86 = v143;
    *(v81 - 48) = v83;
    *(v81 - 40) = v86;
    *(v81 - 32) = v84;
    *(v81 - 24) = v55;
    v87 = v146;
    *(v81 - 16) = v149;
    *(v81 - 8) = v87;
    v88 = swift_getKeyPath();
    v147 = &v131;
    MEMORY[0x28223BE20](v88);
    *(&v131 - 8) = v82;
    *(&v131 - 7) = v83;
    *(&v131 - 6) = v86;
    *(&v131 - 5) = v84;
    *(&v131 - 4) = v55;
    *(&v131 - 3) = v87;
    v129 = v89;
    v90 = v148;
    v91 = sub_237EF7E90();
    v139 = v55;
    sub_237C9339C(sub_237E2FB80, (&v131 - 10), v82, v91, MEMORY[0x277D84A98], v87);
    v93 = v92;

    v94 = v151;
    v95 = v90;
    v154 = v93;
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_31_2();
    sub_237EF89A0();
    v96 = sub_237EF8230();
    v97 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    WitnessTable = swift_getWitnessTable();
    v99 = FullyConnectedNetworkMultiLabelClassifierModel.prediction<A>(from:confidenceThresholds:)(&v154, v96, v136, v97, WitnessTable);

    if (!v63)
    {
      v152 = &v131;
      a10 = v99;
      MEMORY[0x28223BE20](v100);
      OUTLINED_FUNCTION_9_51();
      *(v101 - 80) = v95;
      *(v101 - 72) = v94;
      v103 = v144;
      v102 = v145;
      v104 = v141;
      v105 = v142;
      *(v101 - 64) = v145;
      *(v101 - 56) = v104;
      v106 = v143;
      *(v101 - 48) = v103;
      *(v101 - 40) = v106;
      v107 = v139;
      *(v101 - 32) = v105;
      *(v101 - 24) = v107;
      v108 = v146;
      *(v101 - 16) = v109;
      *(v101 - 8) = v108;
      v110 = swift_getKeyPath();
      v152 = &v131;
      MEMORY[0x28223BE20](v110);
      OUTLINED_FUNCTION_9_51();
      *(v111 - 64) = v102;
      *(v111 - 56) = v103;
      *(v111 - 48) = v106;
      *(v111 - 40) = v105;
      *(v111 - 32) = v107;
      *(v111 - 24) = v108;
      *(v111 - 16) = v112;
      sub_237C9339C(sub_237E2FB80, v113, v102, v140, MEMORY[0x277D84A98], v108);
      v115 = v114;

      v153 = v115;
      v154 = v132;
      LOBYTE(v155) = 2;
      v116 = v149;
      type metadata accessor for ClassificationDistribution(255, v94, v149, v117);
      OUTLINED_FUNCTION_31_2();
      v118 = sub_237EF8A60();
      v119 = sub_237EF8A60();
      sub_237EF8260();
      v120 = swift_getWitnessTable();
      v121 = swift_getWitnessTable();
      MultiLabelClassificationMetrics.init<A, B>(classifications:groundTruth:strategy:)(&a10, &v153, &v154, v94, v118, v119, v116, v120, v121, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_12_6();
}

BOOL sub_237E2FAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v15 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, v17);
  return (sub_237E5E370(a1, *(a2 + *(v15 + 88)), *(a2 + *(v15 + 88) + 8), a4, a8, a11) & 1) == 0;
}

void sub_237E2FBAC(void *a1)
{
  type metadata accessor for FullyConnectedNetwork(319);
  if (v2 <= 0x3F)
  {
    sub_237DE8C18(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for LabelEncoder(319, a1[3], a1[6], a1[9]);
      if (v4 <= 0x3F)
      {
        sub_237CFF010();
        if (v5 <= 0x3F)
        {
          sub_237EF82B0();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *sub_237E2FCD4(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_7_58()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_8_68(__n128 *a1)
{
  result = *(v1 - 544);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_35_16()
{

  return sub_237EF6CF0();
}

uint64_t OUTLINED_FUNCTION_36_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237EF7090();
}

uint64_t sub_237E301B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  return (*(v10 + 8))(AssociatedTypeWitness, AssociatedTypeWitness, a4, v9, v10);
}

uint64_t sub_237E302A4()
{
  OUTLINED_FUNCTION_8_69();
  v0 = OUTLINED_FUNCTION_6_60();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_30();
  return OUTLINED_FUNCTION_13_42(v2);
}

uint64_t sub_237E30334()
{
  OUTLINED_FUNCTION_10_54();
  v0 = OUTLINED_FUNCTION_6_60();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_30();
  return OUTLINED_FUNCTION_14_50(v2);
}

uint64_t sub_237E30384()
{
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_21_39(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_20_3();
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(v3, v4);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_0_75();
  return SupervisedEstimator<>.encode(_:to:)(v5, v6, v7, v8, v9);
}

uint64_t sub_237E3041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v10 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v10(a1, AssociatedTypeWitness, a5, v9, v8);
}

uint64_t sub_237E304CC()
{
  OUTLINED_FUNCTION_2_84();
  type metadata accessor for ImputeTransformer(255, *(v1 + 16), *(v1 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_16_43();
  v2 = OUTLINED_FUNCTION_0_75();
  return Estimator<>.encode(_:to:)(v2, v3, v4, v5, v6);
}

uint64_t sub_237E30518()
{
  OUTLINED_FUNCTION_5_75();
  type metadata accessor for ImputeTransformer(255, *(v1 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_17_42();
  v2 = OUTLINED_FUNCTION_4_75();
  return Estimator<>.decode(from:)(v2, v3, v4, v5);
}

void Estimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v11);
  v5(v4, v1);
  v6 = type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C18);
    v8 = OUTLINED_FUNCTION_2_4();
    v9(v8);
    sub_237C66728(v13, &v12);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880, &qword_237F03D78);
    OUTLINED_FUNCTION_8_3(v10);
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_11_3();
}

void Estimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v10);
  v5(v4, v0);
  v6 = type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C00);
    v8 = OUTLINED_FUNCTION_4_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedEstimator.write(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v11);
  v5(v4, v1);
  v6 = type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C18);
    v8 = OUTLINED_FUNCTION_2_4();
    v9(v8);
    sub_237C66728(v13, &v12);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880, &qword_237F03D78);
    OUTLINED_FUNCTION_8_3(v10);
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_11_3();
}

void SupervisedEstimator.read(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v10);
  v5(v4, v0);
  v6 = type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C00);
    v8 = OUTLINED_FUNCTION_4_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedEstimator.writeWithOptimizer(_:to:overwrite:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v11);
  v5(v4, v1);
  v6 = type metadata accessor for EstimatorPackageEncoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_7_1();
  if (!v0)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C18);
    v8 = OUTLINED_FUNCTION_2_4();
    v9(v8);
    sub_237C66728(v13, &v12);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAD880, &qword_237F03D78);
    OUTLINED_FUNCTION_8_3(v10);
    sub_237D8533C();
    sub_237D8508C();

    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  OUTLINED_FUNCTION_11_3();
}

void UpdatableSupervisedEstimator.readWithOptimizer(from:)()
{
  OUTLINED_FUNCTION_12_3();
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_0_4(v3, v10);
  v5(v4, v0);
  v6 = type metadata accessor for EstimatorPackageDecoder(0);
  OUTLINED_FUNCTION_6_3(v6);
  OUTLINED_FUNCTION_10_4();
  if (!v1)
  {
    OUTLINED_FUNCTION_9_2(v7, &off_284AD6C00);
    v8 = OUTLINED_FUNCTION_4_3();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  OUTLINED_FUNCTION_11_3();
}

uint64_t sub_237E30BAC()
{
  OUTLINED_FUNCTION_2_84();
  type metadata accessor for ImputeTransformer(255, *(v1 + 16), *(v1 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_16_43();
  v2 = OUTLINED_FUNCTION_0_75();
  return Estimator<>.encode(_:to:)(v2, v3, v4, v5, v6);
}

uint64_t sub_237E30BFC()
{
  OUTLINED_FUNCTION_5_75();
  type metadata accessor for ImputeTransformer(255, *(v1 + 16), *(v0 + 32), *(v0 + 40));
  OUTLINED_FUNCTION_17_42();
  v2 = OUTLINED_FUNCTION_4_75();
  return Estimator<>.decode(from:)(v2, v3, v4, v5);
}

uint64_t sub_237E30C88()
{
  OUTLINED_FUNCTION_8_69();
  OUTLINED_FUNCTION_21_39(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_20_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_24_30();
  return OUTLINED_FUNCTION_13_42(v5);
}

uint64_t sub_237E30D20()
{
  OUTLINED_FUNCTION_10_54();
  v0 = OUTLINED_FUNCTION_20_3();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_30();
  return OUTLINED_FUNCTION_14_50(v2);
}

uint64_t sub_237E30D7C()
{
  OUTLINED_FUNCTION_2_84();
  v0 = OUTLINED_FUNCTION_6_60();
  type metadata accessor for NormalizationScaler.Transformer(v0, v1);
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_0_75();
  return Estimator<>.encode(_:to:)(v2, v3, v4, v5, v6);
}

uint64_t sub_237E30DE4()
{
  OUTLINED_FUNCTION_5_75();
  v0 = OUTLINED_FUNCTION_6_60();
  type metadata accessor for NormalizationScaler.Transformer(v0, v1);
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_4_75();
  return Estimator<>.decode(from:)(v2, v3, v4, v5);
}

uint64_t sub_237E30E4C()
{
  OUTLINED_FUNCTION_2_84();
  type metadata accessor for FullyConnectedNetworkRegressorModel(255, *(v1 + 16), *(v1 + 24), *(v0 + 32));
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_0_75();
  return SupervisedEstimator<>.encode(_:to:)(v2, v3, v4, v5, v6);
}

uint64_t sub_237E30EB0()
{
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_21_39(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_20_3();
  type metadata accessor for FullyConnectedNetworkClassifierModel(v3, v4);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_0_75();
  return SupervisedEstimator<>.encode(_:to:)(v5, v6, v7, v8, v9);
}

uint64_t sub_237E30F20()
{
  OUTLINED_FUNCTION_2_84();
  OUTLINED_FUNCTION_21_39(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_20_3();
  type metadata accessor for TimeSeriesClassifier.Model(v3, v4);
  swift_getWitnessTable();
  v5 = OUTLINED_FUNCTION_0_75();
  return SupervisedEstimator<>.encode(_:to:)(v5, v6, v7, v8, v9);
}

uint64_t sub_237E30F90()
{
  OUTLINED_FUNCTION_5_75();
  v0 = OUTLINED_FUNCTION_20_3();
  type metadata accessor for TimeSeriesClassifier.Model(v0, v1);
  swift_getWitnessTable();
  v2 = OUTLINED_FUNCTION_4_75();
  return SupervisedEstimator<>.decode(from:)(v2, v3, v4, v5);
}

uint64_t sub_237E31044()
{
  OUTLINED_FUNCTION_8_69();
  v0 = OUTLINED_FUNCTION_6_60();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_30();
  return OUTLINED_FUNCTION_13_42(v2);
}

uint64_t sub_237E310D4()
{
  OUTLINED_FUNCTION_10_54();
  v0 = OUTLINED_FUNCTION_6_60();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_30();
  return OUTLINED_FUNCTION_14_50(v2);
}

uint64_t OUTLINED_FUNCTION_13_42(uint64_t a1)
{

  return Estimator<>.encode(_:to:)(v4, v3, v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_14_50(uint64_t a1)
{

  return Estimator<>.decode(from:)(v3, v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_16_43()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_17_42()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_24_30()
{

  return swift_getWitnessTable();
}

uint64_t sub_237E312A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E312FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  v25 = *(a2 + 16);
  v23 = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v12 = OUTLINED_FUNCTION_0_76(boxed_opaque_existential_1, v5, v6, v7, v8, v9, v10, v11, v23);
  v14 = (*(v13 + 16))(v12);
  OUTLINED_FUNCTION_10_55(v14, v15, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_8_70(v26, v26[3]);
  v18 = sub_237EFA1E0();
  v20 = v19;
  v21 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  v24[0] = v18;
  v24[1] = v20;
  [v3 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v26);
}

uint64_t sub_237E31404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_94(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v28[0], v28[1], v28[2], *&v28[3]);
  v17 = OUTLINED_FUNCTION_0_76(v9, v10, v11, v12, v13, v14, v15, v16, v26);
  v19 = (*(v18 + 16))(v17);
  OUTLINED_FUNCTION_10_55(v19, v20, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_5_76(v29);
  OUTLINED_FUNCTION_12_44();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  OUTLINED_FUNCTION_13_43();
  v23 = sub_237EF9FC0();
  OUTLINED_FUNCTION_6_61(v23, sel___swift_setObject_forKeyedSubscript_);

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v29);
}

uint64_t sub_237E314D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_94(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v28[0], v28[1], v28[2], *&v28[3]);
  v17 = OUTLINED_FUNCTION_0_76(v9, v10, v11, v12, v13, v14, v15, v16, v26);
  v19 = (*(v18 + 16))(v17);
  OUTLINED_FUNCTION_10_55(v19, v20, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_5_76(v29);
  OUTLINED_FUNCTION_12_44();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithChar_];
  OUTLINED_FUNCTION_13_43();
  v23 = sub_237EF9FC0();
  OUTLINED_FUNCTION_6_61(v23, sel___swift_setObject_forKeyedSubscript_);

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v29);
}

uint64_t sub_237E3159C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_94(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v28[0], v28[1], v28[2], *&v28[3]);
  v17 = OUTLINED_FUNCTION_0_76(v9, v10, v11, v12, v13, v14, v15, v16, v26);
  v19 = (*(v18 + 16))(v17);
  OUTLINED_FUNCTION_10_55(v19, v20, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_5_76(v29);
  OUTLINED_FUNCTION_12_44();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  OUTLINED_FUNCTION_13_43();
  v23 = sub_237EF9FC0();
  OUTLINED_FUNCTION_6_61(v23, sel___swift_setObject_forKeyedSubscript_);

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v29);
}

uint64_t sub_237E31668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_94(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v28[0], v28[1], v28[2], *&v28[3]);
  v17 = OUTLINED_FUNCTION_0_76(v9, v10, v11, v12, v13, v14, v15, v16, v26);
  v19 = (*(v18 + 16))(v17);
  OUTLINED_FUNCTION_10_55(v19, v20, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_5_76(v29);
  OUTLINED_FUNCTION_12_44();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedChar_];
  OUTLINED_FUNCTION_13_43();
  v23 = sub_237EF9FC0();
  OUTLINED_FUNCTION_6_61(v23, sel___swift_setObject_forKeyedSubscript_);

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v29);
}

uint64_t sub_237E31734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_1_94(a1, a2, a3, a4, a5, a6, a7, a8, v25, v27, v28[0], v28[1], v28[2], *&v28[3]);
  v17 = OUTLINED_FUNCTION_0_76(v9, v10, v11, v12, v13, v14, v15, v16, v26);
  v19 = (*(v18 + 16))(v17);
  OUTLINED_FUNCTION_10_55(v19, v20, v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_5_76(v29);
  OUTLINED_FUNCTION_12_44();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
  OUTLINED_FUNCTION_13_43();
  v23 = sub_237EF9FC0();
  OUTLINED_FUNCTION_6_61(v23, sel___swift_setObject_forKeyedSubscript_);

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v29);
}

uint64_t sub_237E31800(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_2_85(a1, a2, a3, a4, a5, a6, a7, a8, v30, v32, v33, v34, v35, v36);
  v18 = OUTLINED_FUNCTION_0_76(v10, v11, v12, v13, v14, v15, v16, v17, v31);
  v20 = (*(v19 + 16))(v18);
  OUTLINED_FUNCTION_10_55(v20, v21, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(&v33);
  OUTLINED_FUNCTION_8_70(v37, v37[3]);
  v24 = sub_237EFA1E0();
  v26 = v25;
  v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) *a4];
  v33 = v24;
  v34 = v26;
  v28 = sub_237EF9FC0();
  OUTLINED_FUNCTION_6_61(v28, sel___swift_setObject_forKeyedSubscript_);

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v37);
}

uint64_t sub_237E318F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 8);
  v28 = *(a4 + 16);
  v26 = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  v15 = OUTLINED_FUNCTION_0_76(boxed_opaque_existential_1, v8, v9, v10, v11, v12, v13, v14, v26);
  v17 = (*(v16 + 16))(v15);
  OUTLINED_FUNCTION_10_55(v17, v18, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v27);
  OUTLINED_FUNCTION_8_70(v29, v29[3]);
  v21 = sub_237EFA1E0();
  v23 = v22;
  sub_237C75918(0, &qword_280C8CCF0, 0x277CCACA8);
  sub_237EF8260();
  v24 = sub_237D6B380(a1);
  v27[0] = v21;
  v27[1] = v23;
  [v6 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return OUTLINED_FUNCTION_14_51(v29);
}

uint64_t sub_237E31A28()
{
  OUTLINED_FUNCTION_17_43();
  v5 = v4;
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_52();
  sub_237D86C8C();
  OUTLINED_FUNCTION_19_39();
  v9 = OUTLINED_FUNCTION_16_44();
  ((v2 + 120))(v9);
  OUTLINED_FUNCTION_11_51();
  swift_endAccess();
  v10 = v0[1];
  v19[3] = v7;
  v20 = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  ((v2 + 120))(boxed_opaque_existential_1, v3, v7);
  v12 = OUTLINED_FUNCTION_7_59();
  sub_237C66728(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_8_70(v21, v21[3]);
  v14 = sub_237EFA1E0();
  v16 = v15;
  v17 = sub_237D6B140(v5);
  v19[0] = v14;
  v19[1] = v16;
  [v10 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_237E31D58(v0);
}

uint64_t sub_237E31BC0()
{
  OUTLINED_FUNCTION_17_43();
  v5 = v4;
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_52();
  sub_237D86C8C();
  OUTLINED_FUNCTION_19_39();
  v9 = OUTLINED_FUNCTION_16_44();
  ((v2 + 120))(v9);
  OUTLINED_FUNCTION_11_51();
  swift_endAccess();
  v10 = v0[1];
  v19[3] = v7;
  v20 = v1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  ((v2 + 120))(boxed_opaque_existential_1, v3, v7);
  v12 = OUTLINED_FUNCTION_7_59();
  sub_237C66728(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_8_70(v21, v21[3]);
  v14 = sub_237EFA1E0();
  v16 = v15;
  v17 = sub_237D6B214(v5);
  v19[0] = v14;
  v19[1] = v16;
  [v10 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_237E31D58(v0);
}

uint64_t sub_237E31D58(uint64_t *a1)
{
  swift_beginAccess();

  sub_237D6D14C(v2);
  __swift_destroy_boxed_opaque_existential_1(v2);
  swift_endAccess();
}

uint64_t sub_237E31DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *(a3 + 16);
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *v5;
  swift_beginAccess();
  sub_237D86C8C();
  v17 = *(*(v16 + 120) + 16);
  sub_237D86D60(v17);
  v18 = *(v11 + 16);
  v18(v15, a2, v9);
  v19 = *(a3 + 24);
  sub_237D4FDC0(v17, v15, (v16 + 120), v9, v19);
  swift_endAccess();
  v39 = v6;
  v30 = v6[1];
  v36 = v9;
  v37 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v18(boxed_opaque_existential_1, a2, v9);
  v21 = OUTLINED_FUNCTION_7_59();
  sub_237C66728(v21, v22);
  __swift_destroy_boxed_opaque_existential_1(v35);
  OUTLINED_FUNCTION_8_70(v38, v38[3]);
  v23 = sub_237EFA1E0();
  v25 = v24;
  v36 = a4;
  v37 = a5;
  v26 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a4 - 8) + 16))(v26, a1, a4);
  v27 = sub_237D6B2E8(v35);
  if (v34)
  {

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v35);
    v35[0] = v23;
    v35[1] = v25;
    [v30 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_237E31D58(v39);
}

void sub_237E3202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(a3 + 16);
  OUTLINED_FUNCTION_1_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = v5[1];
  v38 = *v5;
  v17 = *(v16 + 24);
  v42[3] = v8;
  v42[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
  v36 = *(v10 + 16);
  v37 = a2;
  v36(boxed_opaque_existential_1, a2, v8);
  v19 = OUTLINED_FUNCTION_7_59();
  sub_237C66728(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_project_boxed_opaque_existential_1(&v43, v46);
  v21 = sub_237EFA1E0();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v43);
  v42[0] = v21;
  v42[1] = v23;
  sub_237EF8260();
  v24 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v24)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    v43 = v21;
    v44 = v23;
    v31 = v32;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  sub_237EF9230();
  swift_unknownObjectRelease();
  v25 = OUTLINED_FUNCTION_7_59();
  sub_237C91804(v25, v26);
  v27 = OUTLINED_FUNCTION_15_40();
  sub_237CBA478(v27, v28);
  sub_237C75918(0, &qword_27DEB48C0, 0x277CBEB38);
  OUTLINED_FUNCTION_18_34();
  if (swift_dynamicCast())
  {

    v29 = OUTLINED_FUNCTION_15_40();
    sub_237C91804(v29, v30);
    OUTLINED_FUNCTION_18_34();
    swift_dynamicCast();
    v31 = v41;
LABEL_5:
    sub_237D86C8C();
    v33 = *(v6[2] + 16);
    sub_237D86D60(v33);
    v36(v14, v37, v8);
    sub_237D4FDC0(v33, v14, v6 + 2, v8, v17);
    v34 = v6[2];
    v43 = v38;
    v44 = v31;
    v45 = v34;
    _s14KeyedContainerVMa_0(0, a4, a5, v35);

    sub_237EF8260();
    swift_getWitnessTable();
    sub_237EF9A90();
    sub_237E32374();

    return;
  }

  __break(1u);
}

void sub_237E323AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = *v4;
  v15 = v4[1];
  v17 = *(v16 + 24);
  v40[3] = v7;
  v40[4] = v17;
  v37 = v14;
  v38 = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v35 = *(v9 + 16);
  v36 = a1;
  v35(boxed_opaque_existential_1, a1, v7);
  v19 = OUTLINED_FUNCTION_7_59();
  sub_237C66728(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v21 = sub_237EFA1E0();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v41);
  v40[0] = v21;
  v40[1] = v23;
  sub_237EF8260();
  v24 = [v15 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v24)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
    v41[0] = v21;
    v41[1] = v23;
    v31 = v32;
    [v15 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  sub_237EF9230();
  swift_unknownObjectRelease();
  v25 = OUTLINED_FUNCTION_7_59();
  sub_237C91804(v25, v26);
  v27 = OUTLINED_FUNCTION_15_40();
  sub_237CBA478(v27, v28);
  sub_237C75918(0, &qword_27DEB48B8, 0x277CBEB18);
  OUTLINED_FUNCTION_18_34();
  if (swift_dynamicCast())
  {

    v29 = OUTLINED_FUNCTION_15_40();
    sub_237C91804(v29, v30);
    OUTLINED_FUNCTION_18_34();
    swift_dynamicCast();
    v31 = v39;
LABEL_5:
    sub_237D86C8C();
    v33 = *(v4[2] + 16);
    sub_237D86D60(v33);
    v35(v13, v36, v7);
    sub_237D4FDC0(v33, v13, v4 + 2, v7, v38);
    v34 = v4[2];
    a3[3] = &_s16UnkeyedContainerVN;
    a3[4] = sub_237D4D374();
    *a3 = v37;
    a3[1] = v31;
    a3[2] = v34;

    sub_237EF8260();
    sub_237E32374();

    return;
  }

  __break(1u);
}

unint64_t sub_237E326B0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v10[3] = &type metadata for _JSONKey;
  v10[4] = sub_237CBA80C();
  v5 = swift_allocObject();
  v10[0] = v5;
  *(v5 + 16) = 0x7265707573;
  *(v5 + 24) = 0xE500000000000000;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  sub_237C66728(v10, v11);

  __swift_destroy_boxed_opaque_existential_1(v10);
  v6 = _s18ReferencingEncoderCMa();
  v7 = swift_allocObject();
  v8 = sub_237E32E1C(v3, 0x7265707573, 0xE500000000000000, 0, 1, v11, v4, v7);
  __swift_destroy_boxed_opaque_existential_1(v11);
  a1[3] = v6;
  result = sub_237D4D31C();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_237E327B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = _s18ReferencingEncoderCMa();
  v15 = *v3;
  v16 = *(v3 + 8);
  v17 = *(a2 + 24);
  v24[3] = v7;
  v24[4] = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  v19 = *(v9 + 16);
  v19(boxed_opaque_existential_1, a1, v7);
  v20 = OUTLINED_FUNCTION_7_59();
  sub_237C66728(v20, v21);

  __swift_destroy_boxed_opaque_existential_1(v24);
  v19(v13, a1, v7);
  v22 = sub_237D4FE58(v15, v13, v25, v16, v14, v7, v17);
  __swift_destroy_boxed_opaque_existential_1(v25);
  a3[3] = v14;
  result = sub_237D4D31C();
  a3[4] = result;
  *a3 = v22;
  return result;
}

void *sub_237E32E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, uint64_t a8)
{
  *(a8 + 128) = a1;
  __swift_project_boxed_opaque_existential_1(a6, a6[3]);

  v15 = a7;
  v16 = sub_237EFA1E0();
  *(a8 + 136) = v15;
  *(a8 + 144) = v16;
  *(a8 + 152) = v17;
  *(a8 + 160) = 1;
  swift_beginAccess();
  memcpy(__dst, a1 + 3, 0x58uLL);
  v18 = a1[14];
  swift_beginAccess();
  v19 = sub_237D6B330(__dst, v18, a1[15]);
  swift_beginAccess();
  sub_237C9FEDC(__dst, &v22);
  sub_237EF8260();
  sub_237EF8260();

  sub_237D86C8C();
  v20 = *(v19[15] + 16);
  sub_237D86D60(v20);
  sub_237D6D628(v20, a2, a3, a4, a5 & 1, v19 + 15);
  swift_endAccess();

  return v19;
}

uint64_t *OUTLINED_FUNCTION_1_94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  a14 = *(a3 + 16);

  return __swift_allocate_boxed_opaque_existential_1(&a11);
}

uint64_t *OUTLINED_FUNCTION_2_85(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{
  a14 = *(a3 + 16);

  return __swift_allocate_boxed_opaque_existential_1(&a11);
}

uint64_t OUTLINED_FUNCTION_5_76(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_237EFA1E0();
}

id OUTLINED_FUNCTION_6_61(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_9_52()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);

  return sub_237C66728(va, va1);
}

uint64_t OUTLINED_FUNCTION_11_51()
{
  v6 = *(v1 + 24);

  return sub_237D4FDC0(v4, v3, (v2 + 120), v0, v6);
}

uint64_t OUTLINED_FUNCTION_19_39()
{
  v2 = *(*(v0 + 120) + 16);

  return sub_237D86D60(v2);
}

unint64_t ModelCompatibilityError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();
      OUTLINED_FUNCTION_12_45();
      OUTLINED_FUNCTION_5_77();
      OUTLINED_FUNCTION_7_60();
      MEMORY[0x2383E0710]();
      type metadata accessor for MLMultiArrayDataType(0);
      goto LABEL_10;
    case 2:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();
      OUTLINED_FUNCTION_12_45();
      OUTLINED_FUNCTION_7_60();
      v3 = 0xD000000000000020;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();

      OUTLINED_FUNCTION_20_5();
      v29 = 0xD000000000000025;
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();
      OUTLINED_FUNCTION_12_45();
      OUTLINED_FUNCTION_5_77();
      OUTLINED_FUNCTION_7_60();
      MEMORY[0x2383E0710]();
LABEL_7:
      v20 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v20);

      OUTLINED_FUNCTION_6_62();
      v21 = sub_237EF9AB0();
      MEMORY[0x2383E0710](v21);

      goto LABEL_11;
    case 5:
    case 6:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();

      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_5_77();
      OUTLINED_FUNCTION_13_44();
      v22 = 11815;
      v23 = 0xE200000000000000;
      goto LABEL_13;
    case 7:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();

      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_13_44();
      OUTLINED_FUNCTION_7_60();
      goto LABEL_13;
    case 8:
      switch(v2)
      {
        case 1:
        case 2:
          OUTLINED_FUNCTION_25_9();
          OUTLINED_FUNCTION_5_77();
          result = v26 | v25;
          break;
        case 3:
          OUTLINED_FUNCTION_25_9();
          result = 0xD00000000000002FLL;
          break;
        default:
          OUTLINED_FUNCTION_25_9();
          result = 0xD000000000000026;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_0_77();
      sub_237EF9330();
      OUTLINED_FUNCTION_12_45();
      OUTLINED_FUNCTION_5_77();
      OUTLINED_FUNCTION_7_60();
LABEL_5:
      MEMORY[0x2383E0710](v3);
      type metadata accessor for MLFeatureType(0);
      OUTLINED_FUNCTION_8_71(v4, v5, v6, v7, v8, v9, v10, v11, v27, v2);
      sub_237EF9670();
      OUTLINED_FUNCTION_6_62();
      OUTLINED_FUNCTION_8_71(v12, v13, v14, v15, v16, v17, v18, v19, v28, v1);
LABEL_10:
      sub_237EF9670();
LABEL_11:
      v22 = 46;
      v23 = 0xE100000000000000;
LABEL_13:
      MEMORY[0x2383E0710](v22, v23);
      return v29;
  }
}

BOOL static ModelCompatibilityError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1u:
      if (v7 != 1)
      {
        goto LABEL_38;
      }

      v32 = OUTLINED_FUNCTION_31_0();
      v34 = OUTLINED_FUNCTION_3_80(v32, v33, 1u);
      sub_237E33884(v34, v35, 1u);
      return v3 == v6;
    case 2u:
      if (v7 != 2)
      {
        goto LABEL_38;
      }

      v15 = OUTLINED_FUNCTION_31_0();
      v10 = OUTLINED_FUNCTION_3_80(v15, v16, 2u);
      v12 = 2;
      goto LABEL_10;
    case 3u:
      if (v7 != 3)
      {
        goto LABEL_38;
      }

      v17 = OUTLINED_FUNCTION_31_0();
      v10 = OUTLINED_FUNCTION_3_80(v17, v18, 3u);
      v12 = 3;
      goto LABEL_10;
    case 4u:
      if (v7 != 4)
      {
        goto LABEL_38;
      }

      v13 = OUTLINED_FUNCTION_31_0();
      v10 = OUTLINED_FUNCTION_3_80(v13, v14, 4u);
      v12 = 4;
      goto LABEL_10;
    case 5u:
      if (v7 != 5)
      {
        goto LABEL_37;
      }

      v37 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v22 = OUTLINED_FUNCTION_10_56(v37, v2);
        v39 = OUTLINED_FUNCTION_20_10();
        v41 = OUTLINED_FUNCTION_1_95(v39, v40, 5u);
        v43 = OUTLINED_FUNCTION_1_95(v41, v42, 5u);
        v29 = OUTLINED_FUNCTION_3_80(v43, v44, 5u);
        v31 = 5;
        goto LABEL_36;
      }

      v74 = OUTLINED_FUNCTION_1_95(v37, v2, 5u);
      v76 = OUTLINED_FUNCTION_1_95(v74, v75, 5u);
      sub_237E33884(v76, v77, 5u);
      v63 = OUTLINED_FUNCTION_31_0();
      v69 = 5;
      goto LABEL_69;
    case 6u:
      if (v7 != 6)
      {
        goto LABEL_37;
      }

      v45 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v22 = OUTLINED_FUNCTION_10_56(v45, v2);
        v47 = OUTLINED_FUNCTION_20_10();
        v49 = OUTLINED_FUNCTION_1_95(v47, v48, 6u);
        v51 = OUTLINED_FUNCTION_1_95(v49, v50, 6u);
        v29 = OUTLINED_FUNCTION_3_80(v51, v52, 6u);
        v31 = 6;
        goto LABEL_36;
      }

      v78 = OUTLINED_FUNCTION_1_95(v45, v2, 6u);
      v80 = OUTLINED_FUNCTION_1_95(v78, v79, 6u);
      sub_237E33884(v80, v81, 6u);
      v63 = OUTLINED_FUNCTION_31_0();
      v69 = 6;
      goto LABEL_69;
    case 7u:
      if (v7 != 7)
      {
LABEL_37:
        sub_237EF8260();
LABEL_38:
        v54 = OUTLINED_FUNCTION_20_10();
        v56 = OUTLINED_FUNCTION_1_95(v54, v55, v7);
        v58 = OUTLINED_FUNCTION_3_80(v56, v57, v4);
        sub_237E33884(v58, v59, v7);
        return 0;
      }

      v20 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        v64 = OUTLINED_FUNCTION_1_95(v20, v2, 7u);
        v66 = OUTLINED_FUNCTION_1_95(v64, v65, 7u);
        sub_237E33884(v66, v67, 7u);
        v63 = OUTLINED_FUNCTION_31_0();
        v69 = 7;
LABEL_69:
        sub_237E33884(v63, v68, v69);
        return 1;
      }

      v22 = OUTLINED_FUNCTION_10_56(v20, v2);
      v23 = OUTLINED_FUNCTION_20_10();
      v25 = OUTLINED_FUNCTION_1_95(v23, v24, 7u);
      v27 = OUTLINED_FUNCTION_1_95(v25, v26, 7u);
      v29 = OUTLINED_FUNCTION_3_80(v27, v28, 7u);
      v31 = 7;
LABEL_36:
      sub_237E33884(v29, v30, v31);
      return v22 & 1;
    case 8u:
      switch(v3)
      {
        case 1:
          if (v7 != 8 || v6 != 1 || v5 != 0)
          {
            goto LABEL_38;
          }

          v88 = OUTLINED_FUNCTION_31_0();
          sub_237E33884(v88, v89, 8u);
          v36 = 1;
          sub_237E33884(1, 0, 8u);
          return v36;
        case 2:
          if (v7 != 8 || v6 != 2 || v5 != 0)
          {
            goto LABEL_38;
          }

          v72 = OUTLINED_FUNCTION_31_0();
          sub_237E33884(v72, v73, 8u);
          v63 = 2;
          goto LABEL_68;
        case 3:
          if (v7 != 8 || v6 != 3 || v5 != 0)
          {
            goto LABEL_38;
          }

          v84 = OUTLINED_FUNCTION_31_0();
          sub_237E33884(v84, v85, 8u);
          v63 = 3;
          goto LABEL_68;
        default:
          if (v7 != 8 || (v5 | v6) != 0)
          {
            goto LABEL_38;
          }

          v61 = OUTLINED_FUNCTION_31_0();
          sub_237E33884(v61, v62, 8u);
          v63 = 0;
LABEL_68:
          v68 = 0;
          v69 = 8;
          break;
      }

      goto LABEL_69;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_38;
      }

      v8 = OUTLINED_FUNCTION_31_0();
      v10 = OUTLINED_FUNCTION_3_80(v8, v9, 0);
      v12 = 0;
LABEL_10:
      sub_237E33884(v10, v11, v12);
      return v3 == v6 && v2 == v5;
  }
}

uint64_t sub_237E33868(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 5 <= 2)
  {
    return sub_237EF8260();
  }

  return result;
}

uint64_t sub_237E33884(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 5 <= 2)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18CreateMLComponents23ModelCompatibilityErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t sub_237E338CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t sub_237E3390C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_237E33950(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

void OUTLINED_FUNCTION_6_62()
{

  JUMPOUT(0x2383E0710);
}

uint64_t OUTLINED_FUNCTION_10_56(uint64_t a1, uint64_t a2)
{

  return sub_237EF9D40();
}

void OUTLINED_FUNCTION_13_44()
{

  JUMPOUT(0x2383E0710);
}

uint64_t type metadata accessor for CoreMLPackage(uint64_t a1)
{
  result = qword_27DEB48C8;
  if (!qword_27DEB48C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237E33AD4(uint64_t a1)
{
  sub_237EF7730();
  if (v1 <= 0x3F)
  {
    sub_237EF7820();
    if (v2 <= 0x3F)
    {
      sub_237E33B70();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237E33B70()
{
  if (!qword_27DEB48D8)
  {
    v0 = sub_237EF90F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB48D8);
    }
  }
}

uint64_t sub_237E33BC0(uint64_t a1)
{
  v3 = v1;
  sub_237EF5E00();
  OUTLINED_FUNCTION_1();
  v45 = v6;
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v43 = v8 - v7;
  v9 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v42 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  sub_237EF7850();
  OUTLINED_FUNCTION_1();
  v48 = v21;
  v49 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5();
  v53 = v23 - v22;
  if (sub_237EF5E10() == 0x6C65646F6D6C6DLL && v24 == 0xE700000000000000)
  {

    return sub_237E3414C(a1);
  }

  v26 = sub_237EF9D40();

  if (v26)
  {
    return sub_237E3414C(a1);
  }

  v27 = v11;
  v28 = *(v11 + 16);
  v29 = v9;
  v28(v19, a1, v9);
  v30 = v53;
  result = sub_237EF7840();
  if (!v2)
  {
    sub_237EF7750();
    v32 = *(v27 + 8);
    v33 = OUTLINED_FUNCTION_23_12();
    v32(v33);
    v34 = type metadata accessor for CoreMLPackage(0);
    sub_237EF7830();
    memcpy(__dst, (v3 + *(v34 + 24)), 0x58uLL);
    if (__dst[10])
    {
      v35 = __dst[1];
      sub_237CBA540(__dst[0], __dst[1]);
      sub_237EF8260();
      v36 = v47;
      sub_237EF7740();
      v50 = 0x622E746867696577;
      v51 = 0xEA00000000006E69;
      v37 = *MEMORY[0x277CC91D8];
      v38 = v45;
      v39 = *(v45 + 104);
      v42 = v35;
      v40 = v43;
      v39(v43, v37, v46);
      sub_237D05400();
      sub_237EF5EE0();
      (*(v38 + 8))(v40, v46);
      sub_237EF6000();
      sub_237C9BD20(__dst);
      v41 = OUTLINED_FUNCTION_23_12();
      v32(v41);
      (v32)(v36, v29);
      v30 = v53;
    }

    return (*(v48 + 8))(v30, v49);
  }

  return result;
}

uint64_t sub_237E34060()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = OUTLINED_FUNCTION_2_86();
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  v1 = OUTLINED_FUNCTION_2_86();
  MEMORY[0x2383E0710](v1);

  MEMORY[0x2383E0710](46, 0xE100000000000000);
  v2 = OUTLINED_FUNCTION_2_86();
  MEMORY[0x2383E0710](v2);

  return v4;
}

uint64_t sub_237E3414C(uint64_t a1)
{
  v2 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (*(v1 + *(type metadata accessor for CoreMLPackage(0) + 24) + 80))
  {
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    *v9 = 0xD00000000000004ALL;
    v9[1] = 0x8000000237F00580;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    (*(v4 + 16))(v8, v1, v2);
    sub_237EF77B0();
    sub_237EF7680();
    sub_237EF7760();
    sub_237EF75E0();
    sub_237EF77D0();
    sub_237EF76D0();
    sub_237EF77F0();
    sub_237EF75D0();
    sub_237EF7790();
    sub_237EF7710();
    sub_237EF7670();
    v11 = OUTLINED_FUNCTION_23_12();
    return v12(v11);
  }
}

uint64_t OUTLINED_FUNCTION_2_86()
{

  return sub_237EF9AB0();
}

uint64_t TimeSeriesClassifierConfiguration.randomSeed.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void __swiftcall TimeSeriesClassifierConfiguration.init()(CreateMLComponents::TimeSeriesClassifierConfiguration *__return_ptr retstr)
{
  *&retstr->minimumSequenceLength = xmmword_237F18CE0;
  *&retstr->batchSize = xmmword_237F09360;
  retstr->earlyStoppingTolerance = 0.01;
  retstr->earlyStoppingIterationCount = 5;
  retstr->learningRate = 0.005;
  *(&retstr->randomSeed.value + 4) = 0;
  LOBYTE(retstr[1].minimumSequenceLength) = 1;
}

uint64_t static TimeSeriesClassifierConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 32) == *(a2 + 32) && *(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 56) == *(a2 + 56))
      {
        v5 = *(a2 + 64);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_237E3459C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x8000000237EFB220 == a2;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000237EFB240 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000237EFDE80 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000237EFDEA0 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
              {

                return 7;
              }

              else
              {
                v13 = sub_237EF9D40();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237E34830(char a1)
{
  result = 0x7A69536863746162;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x676E696E7261656CLL;
      break;
    case 7:
      result = 0x65536D6F646E6172;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_237E34938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E3459C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E34960(uint64_t a1)
{
  v2 = sub_237E34C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E3499C(uint64_t a1)
{
  v2 = sub_237E34C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TimeSeriesClassifierConfiguration.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB48E0, &qword_237F18CF0);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17[3] = *(v1 + 16);
  v17[4] = v8;
  v17[1] = *(v1 + 40);
  v17[2] = v9;
  v10 = *(v1 + 64);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_237E34C44();
  sub_237EFA1B0();
  v26 = 0;
  v15 = v18;
  sub_237EF9A50();
  if (!v15)
  {
    LODWORD(v18) = v10;
    v25 = 1;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v24 = 2;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v23 = 3;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v22 = 4;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v21 = 5;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v20 = 6;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v19 = 7;
    OUTLINED_FUNCTION_1_63();
    sub_237EF99F0();
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_237E34C44()
{
  result = qword_27DEB48E8;
  if (!qword_27DEB48E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB48E8);
  }

  return result;
}

uint64_t TimeSeriesClassifierConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  MEMORY[0x2383E2210](*v0);
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  sub_237EFA150();
  MEMORY[0x2383E2210](v4);
  sub_237EFA150();
  if (v6 == 1)
  {
    return sub_237EFA140();
  }

  sub_237EFA140();
  return MEMORY[0x2383E2210](v5);
}

uint64_t TimeSeriesClassifierConfiguration.hashValue.getter()
{
  sub_237EFA120();
  TimeSeriesClassifierConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t TimeSeriesClassifierConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB48F0, &qword_237F18CF8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237E34C44();
  sub_237EFA190();
  if (!v2)
  {
    v34 = 0;
    OUTLINED_FUNCTION_0_51();
    v11 = sub_237EF9950();
    v33 = 1;
    OUTLINED_FUNCTION_0_51();
    v12 = sub_237EF9950();
    v32 = 2;
    OUTLINED_FUNCTION_0_51();
    v25 = sub_237EF9950();
    v31 = 3;
    OUTLINED_FUNCTION_0_51();
    v24 = sub_237EF9950();
    v30 = 4;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v14 = v13;
    v29 = 5;
    OUTLINED_FUNCTION_0_51();
    v23 = sub_237EF9950();
    v28 = 6;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v16 = v15;
    v26 = 7;
    OUTLINED_FUNCTION_0_51();
    v18 = sub_237EF98F0();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    v27 = v21 & 1;
    *a2 = v11;
    *(a2 + 8) = v12;
    v22 = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = v22;
    *(a2 + 32) = v14;
    *(a2 + 40) = v23;
    *(a2 + 48) = v16;
    *(a2 + 56) = v18;
    *(a2 + 64) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237E35030(uint64_t a1)
{
  sub_237EFA120();
  TimeSeriesClassifierConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237E35070()
{
  result = qword_27DEB48F8;
  if (!qword_27DEB48F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB48F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimeSeriesClassifierConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237E351E8()
{
  result = qword_27DEB4900;
  if (!qword_27DEB4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4900);
  }

  return result;
}

unint64_t sub_237E35240()
{
  result = qword_27DEB4908;
  if (!qword_27DEB4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4908);
  }

  return result;
}

unint64_t sub_237E35298()
{
  result = qword_27DEB4910;
  if (!qword_27DEB4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB4910);
  }

  return result;
}

uint64_t sub_237E352EC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_3();
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v37 = v5;
    v44 = MEMORY[0x277D84F90];
    v39 = v6;
    sub_237C63284(0, v7, 0);
    v43 = v44;
    result = sub_237E3A9A4(a1);
    v10 = result;
    v12 = v11;
    v13 = 0;
    v42 = a1 + 56;
    v35 = a1 + 64;
    v36 = a1;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v14 = v10 >> 6;
        if ((*(v42 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_28;
        }

        v15 = *a2;
        if (!*(*a2 + 16))
        {
          goto LABEL_29;
        }

        v41 = v9;
        v40 = v13;
        v16 = *(*(a1 + 48) + 16 * v10);
        sub_237EF8260();
        result = sub_237D2FC30(v16);
        if ((v17 & 1) == 0)
        {
          goto LABEL_30;
        }

        v18 = *(v15 + 56);
        v19 = v39;
        v20 = *(v39 + 72);
        (*(v39 + 16))(v37, v18 + v20 * result, v3);

        v21 = v43;
        v22 = v3;
        v24 = *(v43 + 16);
        v23 = *(v43 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_237C63284(v23 > 1, v24 + 1, 1);
          v19 = v39;
          v21 = v43;
        }

        *(v21 + 16) = v24 + 1;
        OUTLINED_FUNCTION_28();
        v43 = v25;
        result = (*(v19 + 32))(v25 + v26 + v24 * v20, v37, v22);
        if (v12)
        {
          goto LABEL_34;
        }

        v3 = v22;
        a1 = v36;
        v27 = 1 << *(v36 + 32);
        if (v10 >= v27)
        {
          goto LABEL_31;
        }

        v28 = *(v42 + 8 * v14);
        if ((v28 & (1 << v10)) == 0)
        {
          goto LABEL_32;
        }

        if (*(v36 + 36) != v41)
        {
          goto LABEL_33;
        }

        v29 = v28 & (-2 << (v10 & 0x3F));
        if (v29)
        {
          v27 = __clz(__rbit64(v29)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v30 = v14 << 6;
          v31 = v14 + 1;
          v32 = (v35 + 8 * v14);
          while (v31 < (v27 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_237CB231C(v10, v41, 0);
              v27 = __clz(__rbit64(v33)) + v30;
              goto LABEL_21;
            }
          }

          result = sub_237CB231C(v10, v41, 0);
        }

LABEL_21:
        v13 = v40 + 1;
        if (v40 + 1 == v7)
        {
          return v43;
        }

        v12 = 0;
        v9 = *(v36 + 36);
        v10 = v27;
        if (v27 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  return result;
}

void sub_237E3564C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v265 = a2;
  v236 = a5;
  sub_237EF74A0();
  OUTLINED_FUNCTION_1();
  v226 = v9;
  v227 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_3();
  v225 = v10;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7520();
  OUTLINED_FUNCTION_1();
  v232 = v12;
  v233 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v231 = v13;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v238 = v14;
  v239 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v230 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v235 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_22_1();
  v234 = v20;
  OUTLINED_FUNCTION_12_1();
  sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v258 = v22;
  v259 = v21;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_2();
  v237 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_8_16();
  v247 = v25;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_16();
  v252 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_1();
  v251 = v29;
  OUTLINED_FUNCTION_12_1();
  v30 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v255 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_2();
  v229 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_16();
  v228 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v243 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_8_16();
  v241 = v39;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_22_1();
  v257 = v41;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4928, &qword_237F18F48);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v42);
  v254 = &v220 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB4930, &unk_237F18F50);
  MEMORY[0x28223BE20](v44 - 8);
  OUTLINED_FUNCTION_2_2();
  v263 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_22_1();
  v262 = v47;
  v264 = a4;
  v48 = *(a4 - 1);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_1_3();
  v261 = v50;
  v51 = *(a3 - 8);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_5();
  v55 = v54 - v53;
  v240 = type metadata accessor for CoreMLPackage(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_2_2();
  v242 = v57;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_16();
  v260 = v59;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_8_16();
  v248 = v61;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v62);
  v64 = &v220 - v63;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_22_1();
  v250 = v66;
  (*(v51 + 16))(v55, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (!swift_dynamicCast())
  {
    memset(v268, 0, 40);
    sub_237C65484(v268, qword_27DEB05B8, &qword_237F0B380);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v71 = v70;
    OUTLINED_FUNCTION_46_17();
    sub_237EF9CF0();
    v72 = v269[1];
    *v71 = v269[0];
    v71[1] = v72;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v249 = v30;
  sub_237C531B8(v268, v269);
  v67 = v269[3];
  v68 = v269[4];
  __swift_project_boxed_opaque_existential_1(v269, v269[3]);
  v69 = v266;
  (*(v68 + 8))(v67, v68);
  if (v69)
  {
    __swift_destroy_boxed_opaque_existential_1(v269);
    return;
  }

  v73 = v250;
  sub_237DDA7EC(v64, v250);
  __swift_destroy_boxed_opaque_existential_1(v269);
  (*(v48 + 16))(v261, v265, v264);
  if (!swift_dynamicCast())
  {
    memset(v268, 0, 40);
    sub_237C65484(v268, qword_27DEB05B8, &qword_237F0B380);
    type metadata accessor for SerializationError(0);
    v77 = sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40(v77);
    OUTLINED_FUNCTION_46_17();
    sub_237EF9CF0();
    OUTLINED_FUNCTION_20_37(v269[0]);
    swift_willThrow();
    sub_237D0F8BC(v73);
    return;
  }

  sub_237C531B8(v268, v269);
  v74 = v269[3];
  v75 = v269[4];
  __swift_project_boxed_opaque_existential_1(v269, v269[3]);
  v76 = v260;
  (*(v75 + 8))(v74, v75);
  v220 = 0;
  sub_237DDA7EC(v76, v248);
  __swift_destroy_boxed_opaque_existential_1(v269);
  v78 = *(sub_237EF75C0() + 16);

  v246 = v78 - 1;
  v79 = sub_237EF75C0();
  v80 = sub_237EF75C0();
  v269[0] = v79;
  sub_237E4845C(v80);
  v272 = MEMORY[0x277D84FA0];
  v224 = (v255 + 16);
  v81 = *(v269[0] + 16);
  v244 = (v255 + 32);
  v266 = (v258 + 16);
  v82 = v258 + 8;
  v253 = (v255 + 8);
  v83 = sub_237EF8260();
  v87 = 0;
  v88 = v249;
  v222 = v78;
  v223 = v83;
  v90 = v256;
  v89 = v257;
  v91 = v262;
  v92 = v263;
  v245 = v81;
  while (1)
  {
    if (v87 == v81)
    {
      v93 = 1;
      v261 = v81;
    }

    else
    {
      if ((v87 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v87 >= v223[2])
      {
        goto LABEL_97;
      }

      v94 = (v87 + 1);
      v95 = v254;
      OUTLINED_FUNCTION_10_2();
      v100 = v97 + v96 + *(v98 + 72) * v99;
      v101 = *(v90 + 12);
      *v95 = v99;
      (*(v98 + 16))(&v95[v101], v100, v88);
      v102 = v95;
      v92 = v263;
      sub_237E3A944(v102, v263, &qword_27DEB4928, &qword_237F18F48);
      v93 = 0;
      v261 = v94;
      v91 = v262;
    }

    __swift_storeEnumTagSinglePayload(v92, v93, 1, v90);
    sub_237E3A944(v92, v91, qword_27DEB4930, &unk_237F18F50);
    if (__swift_getEnumTagSinglePayload(v91, 1, v90) == 1)
    {
      break;
    }

    v103 = *v91;
    (*v244)(v89, v91 + *(v90 + 12), v88);
    v260 = v103;
    if (v103 != v78)
    {
      v104 = *(sub_237EF76A0() + 16);
      if (v104)
      {
        v88 = v259;
        OUTLINED_FUNCTION_10_2();
        v90 = v82;
        v221 = v105;
        OUTLINED_FUNCTION_48_12();
        v78 = v251;
        do
        {
          v106 = OUTLINED_FUNCTION_33_20();
          v107(v106);
          v108 = sub_237EF70A0();
          v89 = v109;
          v110 = OUTLINED_FUNCTION_44_16();
          v111(v110);
          sub_237E4C084(v269, v108, v89, v112, v113, v114, v115, v116, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);

          v82 = (v82 + v265);
          --v104;
        }

        while (v104);

        OUTLINED_FUNCTION_39_17();
      }

      else
      {
      }

      v91 = v262;
      v92 = v263;
    }

    if (v260 != v246)
    {
      v117 = *(sub_237EF76F0() + 16);
      if (v117)
      {
        v88 = v259;
        OUTLINED_FUNCTION_10_2();
        v90 = v82;
        v260 = v118;
        OUTLINED_FUNCTION_48_12();
        v78 = v252;
        do
        {
          v119 = OUTLINED_FUNCTION_33_20();
          v120(v119);
          v89 = sub_237EF70A0();
          v122 = v121;
          v123 = OUTLINED_FUNCTION_44_16();
          v124(v123);
          sub_237E4C084(v269, v89, v122, v125, v126, v127, v128, v129, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241);

          v82 = (v82 + v265);
          --v117;
        }

        while (v117);

        OUTLINED_FUNCTION_39_17();
      }

      else
      {
      }

      v91 = v262;
      v92 = v263;
    }

    (*v253)(v89, v88);
    v81 = v245;
    v87 = v261;
  }

  v130 = v223;

  if (!v78)
  {
    goto LABEL_101;
  }

  v263 = *(v130 + 16);
  v131 = v241;
  if (v78 > v263)
  {
    goto LABEL_102;
  }

  OUTLINED_FUNCTION_10_2();
  v262 = v132;
  v133 = v132 + v130;
  v135 = *(v134 + 72);
  v90 = *(v134 + 16);
  v261 = v135 * v246;
  v136 = v133;
  v92 = v224;
  (v90)(v131, &v133[v135 * v246], v88);
  if (v78 >= v263)
  {
    goto LABEL_103;
  }

  v260 = v135 * v78;
  (v90)(v243, &v136[v135 * v78], v88);
  if (!*(sub_237EF76F0() + 16))
  {
    goto LABEL_104;
  }

  v137 = v90;
  OUTLINED_FUNCTION_10_2();
  v139 = *(v138 + 16);
  v257 = v140;
  v258 = v139;
  (v139)(v247, v141 + v140);

  v142 = sub_237EF70A0();
  v90 = v272;
  v144 = sub_237E478D8(v142, v143, v272);
  v263 = v82;
  v264 = v137;
  v265 = v135;
  if (v144)
  {

    v145 = 0;
LABEL_35:
    v146 = __OFADD__(v145++, 1);
    v92 = v223;
    if (v146)
    {
      goto LABEL_100;
    }

    v269[0] = sub_237EF70A0();
    v269[1] = v147;
    MEMORY[0x2383E0710](95, 0xE100000000000000);
    *v268 = v145;
    v148 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v148);

    v149 = v269[0];
    v150 = v269[1];
    if (!v90[2])
    {
      goto LABEL_46;
    }

    sub_237EFA120();
    sub_237EF8610();
    v151 = sub_237EFA170();
    v152 = ~(-1 << *(v90 + 32));
    while (1)
    {
      v153 = v151 & v152;
      if (((*(v90 + (((v151 & v152) >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> (v151 & v152)) & 1) == 0)
      {
        break;
      }

      v154 = (v90[6] + 16 * v153);
      if (*v154 != v149 || v154[1] != v150)
      {
        v156 = sub_237EF9D40();
        v151 = v153 + 1;
        if ((v156 & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  v92 = v223;
LABEL_46:
  sub_237EF70A0();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v254 = v90;
    if (v222 > v92[2])
    {
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      return;
    }

    v157 = v92;
    v256 = v262 + v92;
    OUTLINED_FUNCTION_35_17();

    v158 = sub_237EF76A0();
    if (!*(v158 + 16))
    {
      goto LABEL_107;
    }

    v159 = v237;
    v160 = v259;
    (v258)(v237, v158 + v257, v259);

    sub_237EF70A0();
    v261 = *v263;
    (v261)(v159, v160);
    v223 = v157;
    if (v222 >= *(v157 + 16))
    {
      goto LABEL_108;
    }

    OUTLINED_FUNCTION_35_17();

    v161 = v250;
    v162 = v242;
    sub_237E3A218(v250, v242);
    v163 = v240;
    v164 = *(v240 + 24);
    if (!*(v161 + v164 + 80))
    {

      v165 = v238;
      goto LABEL_58;
    }

    memcpy(v269, (v248 + v164), sizeof(v269));
    v165 = v238;
    v166 = v223;
    if (!v269[10])
    {
      break;
    }

    memcpy(__dst, (v248 + v164), 0x50uLL);
    __dst[10] = v269[10];
    if (!*(v162 + *(v240 + 24) + 80))
    {
      goto LABEL_111;
    }

    memcpy(v268, (v248 + v164), sizeof(v268));
    sub_237C9FEDC(v268, v267);

    v266 = sub_237E6542C(__dst);
    v167 = *(v166 + 16);
    if (v167 < v222)
    {
      goto LABEL_109;
    }

    v90 = v228;
    v168 = v229;
    if (v222 == v167)
    {
LABEL_66:
      sub_237C65484(v269, &unk_27DEAD7B0, &unk_237F03CA0);
      v165 = v238;
      v169 = v239;
      goto LABEL_67;
    }

    v92 = v249;
    if (v222 >= v167)
    {
      goto LABEL_110;
    }

    v173 = (v255 + 40);
    v174 = v222;
    v175 = v262 + v222 * v265 + v166;
    while (v174 < *(v166 + 16))
    {
      v176 = OUTLINED_FUNCTION_30_33();
      v264(v176);
      sub_237ECF820();
      (*v253)(v168, v92);
      if (v174 >= *(v166 + 16))
      {
        goto LABEL_99;
      }

      ++v174;
      (*v173)(v175, v90, v92);
      v175 += v265;
      if (v167 == v174)
      {
        goto LABEL_66;
      }
    }

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
    sub_237E642A8(v92, v84, v85, v86);
    v92 = v219;
  }

LABEL_58:
  v169 = v239;
  v170 = v248 + *(v163 + 24);
  OUTLINED_FUNCTION_51_13(__src);
  v171 = *(v170 + 80);
  if (v171)
  {
    v172 = (v162 + *(v163 + 24));
    memcpy(v268, v172, sizeof(v268));
    OUTLINED_FUNCTION_51_13(v269);
    v269[10] = v171;
    sub_237C9FEDC(v269, v267);
    sub_237C65484(v268, &unk_27DEAD7B0, &unk_237F03CA0);
    memcpy(v172, __src, 0x50uLL);
    v172[10] = v171;
  }

LABEL_67:
  sub_237EF76F0();
  sub_237EF7700();
  v177 = v234;
  sub_237EF7650();
  v264 = *(v169 + 88);
  v178 = (v264)(v177, v165);
  v179 = *MEMORY[0x277D25368];
  v180 = v165;
  LODWORD(v266) = *MEMORY[0x277D25338];
  v181 = *MEMORY[0x277D25390];
  v182 = *MEMORY[0x277D25328];
  v183 = v169;
  v184 = *MEMORY[0x277D25398];
  v185 = v177;
  v186 = v180;
  v262 = *(v183 + 8);
  (v262)(v185, v180);
  LODWORD(v265) = v179;
  if (v178 == v179 || v178 == v266 || v178 == v181 || v178 == v182 || v178 == v184)
  {
    sub_237EF8260();
    sub_237EF74F0();
    v191 = v235;
    v192 = OUTLINED_FUNCTION_30_33();
    v193(v192);
    (*(v239 + 104))(v191, v265, v186);
    v194 = v242;
    sub_237EF7660();
    sub_237EF75F0();
    sub_237EF7600();
    sub_237EF7630();
    sub_237EF7640();
    sub_237EF75E0();
    v195 = OUTLINED_FUNCTION_28_6();
    v196(v195);
    v197 = v249;
  }

  else
  {
    v198 = v230;
    sub_237EF7650();
    v199 = (v264)(v198, v186);
    v200 = *MEMORY[0x277D25350];
    v201 = *MEMORY[0x277D25330];
    v202 = *MEMORY[0x277D25380];
    v203 = *MEMORY[0x277D25388];
    (v262)(v198, v186);
    v204 = v186;
    sub_237EF8260();
    v207 = v199 == v200 || v199 == v201 || v199 == v202 || v199 == v203;
    v208 = v249;
    if (v207)
    {
      v209 = v225;
      sub_237EF7470();
      v211 = v226;
      v210 = v227;
      v212 = v235;
      (*(v226 + 16))(v235, v209, v227);
      (*(v239 + 104))(v212, v200, v204);
      v194 = v242;
      sub_237EF7660();
      sub_237EF75F0();
      sub_237EF7600();
      sub_237EF75E0();
      (*(v211 + 8))(v209, v210);
    }

    else
    {
      v213 = v235;
      sub_237EF7190();
      (*(v239 + 104))(v213, *MEMORY[0x277D253D0], v186);
      v194 = v242;
      sub_237EF7660();
      sub_237EF75E0();
      sub_237EF75F0();
      sub_237EF7600();
      sub_237EF7630();
      sub_237EF7640();
    }

    v197 = v208;
  }

  sub_237E36B18();
  v214 = v250;
  v215 = sub_237EF7790();
  v216 = v248;
  v217 = sub_237EF7790();
  sub_237E3A140(v217, v215);

  sub_237EF77A0();
  (v261)(v247, v259);
  v218 = *v253;
  (*v253)(v243, v197);
  v218(v241, v197);
  sub_237D0F8BC(v216);
  sub_237D0F8BC(v214);
  sub_237DDA7EC(v194, v236);
}

uint64_t sub_237E36B18()
{
  v21 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_237EF75C0();
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_237C62DB0(0, v7, 0);
    v8 = v22;
    v9 = v1 + 16;
    OUTLINED_FUNCTION_28();
    v11 = v6 + v10;
    v19 = *(v9 + 56);
    v20 = v12;
    v13 = (v9 - 8);
    do
    {
      v14 = v9;
      v20(v5, v11, v21);
      v15 = sub_237EF7610();
      (*v13)(v5, v21);
      v17 = v22[2];
      v16 = v22[3];
      if (v17 >= v16 >> 1)
      {
        sub_237C62DB0(v16 > 1, v17 + 1, 1);
      }

      v22[2] = v17 + 1;
      v22[v17 + 4] = v15;
      v11 += v19;
      --v7;
      v9 = v14;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  sub_237CB85E4(v8);

  return sub_237EF7620();
}

uint64_t sub_237E36CF8@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t)@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v689 = a2;
  v623 = a5;
  v616 = sub_237EF74A0();
  OUTLINED_FUNCTION_1();
  v612 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_3();
  v611 = v10;
  OUTLINED_FUNCTION_12_1();
  sub_237EF7520();
  OUTLINED_FUNCTION_1();
  v621 = v12;
  v622 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_3();
  v620 = v13;
  OUTLINED_FUNCTION_12_1();
  v626 = sub_237EF74B0();
  OUTLINED_FUNCTION_1();
  v686 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_3();
  v633 = v16;
  OUTLINED_FUNCTION_12_1();
  v632 = sub_237EF74E0();
  OUTLINED_FUNCTION_1();
  v684 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v631 = v19;
  OUTLINED_FUNCTION_12_1();
  v618 = sub_237EF72A0();
  OUTLINED_FUNCTION_1();
  v681 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_3();
  v617 = v22;
  OUTLINED_FUNCTION_12_1();
  v625 = sub_237EF72E0();
  OUTLINED_FUNCTION_1();
  v678 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_3();
  v624 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4918, &qword_237F18F38);
  MEMORY[0x28223BE20](v26 - 8);
  OUTLINED_FUNCTION_2_2();
  v610 = v27;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_16();
  v615 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_16();
  v614 = v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v635 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_22_1();
  v634 = v35;
  OUTLINED_FUNCTION_12_1();
  v642 = sub_237EF6DC0();
  OUTLINED_FUNCTION_1();
  v674 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_3();
  v641 = v38;
  OUTLINED_FUNCTION_12_1();
  v679 = sub_237EF7420();
  OUTLINED_FUNCTION_1();
  v669 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_2();
  v664 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22_1();
  v668 = v43;
  OUTLINED_FUNCTION_12_1();
  v649 = sub_237EF7D20();
  OUTLINED_FUNCTION_1();
  v630 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_2();
  v613 = v46;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  v619 = v48;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_16();
  v638 = v50;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_16();
  v683 = v52;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22_1();
  v647 = v54;
  OUTLINED_FUNCTION_12_1();
  v646 = sub_237EF7460();
  OUTLINED_FUNCTION_1();
  v673 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_1_3();
  v680 = v57;
  OUTLINED_FUNCTION_12_1();
  v675 = sub_237EF6E60();
  OUTLINED_FUNCTION_1();
  v661 = v58;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_2();
  v653 = v60;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_8_16();
  v629 = v62;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_8_16();
  v628 = v64;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_16();
  v645 = v66;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8_16();
  v666 = v68;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_8_16();
  v665 = v70;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_8_16();
  v656 = v72;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_22_1();
  v655 = v74;
  OUTLINED_FUNCTION_12_1();
  v691 = sub_237EF70E0();
  OUTLINED_FUNCTION_1();
  v685 = v75;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_2_2();
  v659 = v77;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_8_16();
  v667 = v79;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_8_16();
  v657 = v81;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_8_16();
  v663 = v83;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_8_16();
  v652 = v85;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_8_16();
  v676 = v87;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_8_16();
  v677 = v89;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_22_1();
  v682 = v91;
  OUTLINED_FUNCTION_12_1();
  v654 = sub_237EF7730();
  OUTLINED_FUNCTION_1();
  v648 = v92;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_2_2();
  v639 = v94;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_8_16();
  v644 = v96;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_8_16();
  v637 = v98;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_8_16();
  v658 = v100;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_22_1();
  v687 = v102;
  v690 = a4;
  v688 = *(a4 - 8);
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_5();
  v106 = v105 - v104;
  v107 = *(a3 - 8);
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_5();
  v111 = v110 - v109;
  v627 = type metadata accessor for CoreMLPackage(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v112);
  OUTLINED_FUNCTION_2_2();
  v636 = v113;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v114);
  v116 = &v570 - v115;
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_8_16();
  v640 = v118;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v119);
  v121 = &v570 - v120;
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_22_1();
  v643 = v123;
  v125 = *(v107 + 16);
  v124 = v107 + 16;
  v125(v111, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_42_16();
    sub_237C65484(v694, qword_27DEB05B8, &qword_237F0B380);
    type metadata accessor for SerializationError(0);
    v129 = sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40(v129);
    OUTLINED_FUNCTION_32_24();
    sub_237EF9CF0();
    OUTLINED_FUNCTION_20_37(v695[0]);
    return swift_willThrow();
  }

  OUTLINED_FUNCTION_31_23();
  v126 = v692;
  v127(v124, a1);
  if (v126)
  {
    return __swift_destroy_boxed_opaque_existential_1(v695);
  }

  v130 = v121;
  v131 = v643;
  sub_237DDA7EC(v130, v643);
  __swift_destroy_boxed_opaque_existential_1(v695);
  v132 = v689;
  v133 = v690;
  (*(v688 + 16))(v106, v689, v690);
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_42_16();
    sub_237C65484(v694, qword_27DEB05B8, &qword_237F0B380);
    type metadata accessor for SerializationError(0);
    v135 = sub_237CA2D6C();
    OUTLINED_FUNCTION_21_40(v135);
    OUTLINED_FUNCTION_32_24();
    sub_237EF9CF0();
    OUTLINED_FUNCTION_20_37(v695[0]);
    swift_willThrow();
    return sub_237D0F8BC(v131);
  }

  OUTLINED_FUNCTION_31_23();
  v134(v133, v132);
  v590 = 0;
  sub_237DDA7EC(v116, v640);
  __swift_destroy_boxed_opaque_existential_1(v695);
  v580 = *(sub_237EF75C0() + 16);

  v136 = sub_237EF75C0();
  v137 = sub_237EF75C0();
  v695[0] = v136;
  sub_237E4845C(v137);
  v138 = v695[0];
  v139 = MEMORY[0x277D84FA0];
  v602 = *(v695[0] + 16);
  if (!v602)
  {
    v392 = MEMORY[0x277D84F98];
    v700 = MEMORY[0x277D84F98];
    v601 = MEMORY[0x277D84F98];
    v393 = MEMORY[0x277D84F98];
    v681 = MEMORY[0x277D84F98];
LABEL_143:
    v688 = v392;
    v660 = v393;
    v697 = v139;
    v698 = v139;
    v132 = v138 + 16;
    v136 = MEMORY[0x277D84F98];
    goto LABEL_144;
  }

  v140 = 0;
  v608 = v648 + 16;
  v141 = v685;
  v692 = v685 + 16;
  v689 = (v685 + 8);
  v651 = v661 + 16;
  v650 = (v661 + 8);
  v604 = (v630 + 88);
  v609 = *MEMORY[0x277D25348];
  v598 = (v673 + 4);
  v599 = (v630 + 8);
  v597 = *MEMORY[0x277D250F0];
  v596 = (v674 + 13);
  v595 = v674 + 1;
  v593 = (v673 + 2);
  v591 = v673 + 1;
  v589 = *MEMORY[0x277D25360];
  v585 = *MEMORY[0x277D25320];
  v579 = (v678 + 32);
  v578 = (v681 + 88);
  v577 = *MEMORY[0x277D25200];
  v572 = *MEMORY[0x277D251F8];
  v576 = (v678 + 8);
  v570 = (v681 + 8);
  v573 = v681 + 96;
  v584 = v684 + 32;
  v587 = (v684 + 8);
  v583 = *MEMORY[0x277D25248];
  v575 = *MEMORY[0x277D25240];
  v571 = *MEMORY[0x277D25130];
  v574 = *MEMORY[0x277D25118];
  v594 = xmmword_237F03530;
  v600 = (v630 + 96);
  v674 = v669 + 2;
  v673 = v669 + 1;
  v592 = (v630 + 104);
  v607 = (v648 + 8);
  v588 = (v661 + 32);
  v582 = v686 + 88;
  v601 = MEMORY[0x277D84F98];
  v660 = MEMORY[0x277D84F98];
  v142 = MEMORY[0x277D84F98];
  v688 = MEMORY[0x277D84F98];
  v586 = v686 + 8;
  v581 = (v661 + 104);
  v143 = v691;
  v144 = v683;
  v145 = v687;
  do
  {
    if (v140 >= *(v138 + 16))
    {
      goto LABEL_277;
    }

    v681 = v142;
    OUTLINED_FUNCTION_10_2();
    v686 = v138;
    v670 = v146;
    v606 = *(v147 + 72);
    v672 = v148;
    v149 = *(v147 + 16);
    v671 = v606 * v148;
    v605 = v149;
    v149(v145, v138 + v146 + v606 * v148, v654);
    v150 = *(sub_237EF76A0() + 16);

    v684 = v150;
    if (!v150)
    {
      goto LABEL_45;
    }

    v151 = 0;
    do
    {
      v138 = v145;
      if (v151 >= *(sub_237EF76A0() + 16))
      {
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

      v152 = v685;
      v132 = *(v685 + 16);
      v690 = *(v685 + 72) * v151;
      v153 = v682;
      OUTLINED_FUNCTION_37_21();
      (v132)();

      v154 = sub_237EF70A0();
      v155 = v143;
      v156 = v154;
      v136 = v157;
      v158 = *(v152 + 8);
      v158(v153, v155);
      v138 = v688;
      if (!*(v688 + 16))
      {

LABEL_30:
        v138 = v687;
        if (v151 >= *(sub_237EF76A0() + 16))
        {
          goto LABEL_254;
        }

        v182 = v677;
        v143 = v691;
        OUTLINED_FUNCTION_37_21();
        (v132)();

        v132 = sub_237EF70A0();
        v136 = v183;
        v158(v182, v143);
        v184 = v681;
        if (!*(v681 + 16))
        {

          goto LABEL_43;
        }

        v185 = OUTLINED_FUNCTION_28_6();
        v132 = v184;
        sub_237D2FC30(v185);
        OUTLINED_FUNCTION_24_31();
        if ((v143 & 1) == 0)
        {
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_29_28();
        v186 = v665;
        v187 = OUTLINED_FUNCTION_43_17();
        v184(v187);
        (v184)(v666, v186, v136);
        if ((OUTLINED_FUNCTION_53_11() & 1) == 0)
        {
          sub_237E642A8(v184, v188, v189, v190);
        }

        OUTLINED_FUNCTION_27_25();
        if (v164)
        {
          goto LABEL_265;
        }

        OUTLINED_FUNCTION_28_27();
        v192 = v191 + v671;
        v136 = sub_237EF7690();
        v194 = OUTLINED_FUNCTION_16_45(v136, v193);
        *v186 = v192;
        if ((v194 & 1) == 0)
        {
          sub_237E64290(v192, v195, v196, v197);
          OUTLINED_FUNCTION_19_40(v201);
        }

        v143 = v691;
        if (v151 >= *(v192 + 16))
        {
          goto LABEL_266;
        }

        OUTLINED_FUNCTION_25_31();
        sub_237EF70D0();
        v198 = OUTLINED_FUNCTION_8_72();
        (v136)(v198);
        (*v650)(v665, v675);
        goto LABEL_43;
      }

      sub_237D2FC30(v156);
      OUTLINED_FUNCTION_24_31();
      if ((v156 & 1) == 0)
      {
        goto LABEL_30;
      }

      v159 = (*(v688 + 56) + 16 * v138);
      v160 = *v159;
      v136 = v159[1];
      swift_bridgeObjectRetain_n();
      if ((OUTLINED_FUNCTION_53_11() & 1) == 0)
      {
        sub_237E642A8(v138, v161, v162, v163);
        v138 = v199;
      }

      OUTLINED_FUNCTION_27_25();
      if (v164)
      {
        goto LABEL_259;
      }

      v686 = v138;
      v165 = v138 + v670;
      v138 += v670 + v671;
      v132 = sub_237EF7690();
      v167 = OUTLINED_FUNCTION_16_45(v132, v166);
      *v156 = v138;
      if ((v167 & 1) == 0)
      {
        sub_237E64290(v138, v168, v169, v170);
        OUTLINED_FUNCTION_19_40(v200);
      }

      if (v151 >= *(v138 + 16))
      {
        goto LABEL_260;
      }

      OUTLINED_FUNCTION_25_31();
      sub_237EF70B0();
      v171 = OUTLINED_FUNCTION_8_72();
      (v132)(v171);
      v172 = v681;
      if (!*(v681 + 16))
      {

LABEL_42:
        v143 = v691;
        goto LABEL_43;
      }

      v132 = v681;
      sub_237D2FC30(v160);
      OUTLINED_FUNCTION_24_31();
      if ((v156 & 1) == 0)
      {
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_29_28();
      v173 = v655;
      v174 = OUTLINED_FUNCTION_43_17();
      v172(v174);
      (v172)(v656, v173, v136);
      OUTLINED_FUNCTION_50_14();
      if (v164)
      {
        goto LABEL_272;
      }

      v175 = v165 + v671;
      v136 = sub_237EF7690();
      v177 = OUTLINED_FUNCTION_16_45(v136, v176);
      *v173 = v175;
      if ((v177 & 1) == 0)
      {
        sub_237E64290(v175, v178, v179, v180);
        OUTLINED_FUNCTION_19_40(v202);
      }

      v143 = v691;
      if (v151 >= *(v175 + 16))
      {
        goto LABEL_273;
      }

      OUTLINED_FUNCTION_25_31();
      sub_237EF70D0();
      v181 = OUTLINED_FUNCTION_8_72();
      (v136)(v181);
      (*v650)(v655, v675);
LABEL_43:
      ++v151;
      v144 = v683;
      v145 = v687;
    }

    while (v684 != v151);
    v141 = v685;
LABEL_45:
    v136 = v647;
    sub_237EF7650();
    v603 = *v604;
    v203 = v603(v136, v649);
    if (v203 == v609)
    {
      v204 = OUTLINED_FUNCTION_14_52();
      v205(v204);
      v206 = v680;
      (*v598)(v680, v136, v646);
      v207 = *(sub_237EF7440() + 16);

      v662 = v207;
      v208 = 0;
      if (v207)
      {
        v209 = 0;
        v210 = v688;
        while (1)
        {
          v138 = v206;
          if (v209 >= *(sub_237EF7440() + 16))
          {
            goto LABEL_255;
          }

          v678 = v208;
          v211 = v669;
          OUTLINED_FUNCTION_28();
          v684 = v212;
          v132 = v211[2];
          v690 = v211[9] * v209;
          v213 = v668;
          v214 = OUTLINED_FUNCTION_45_16();
          (v132)(v214);

          sub_237EF73F0();
          v136 = v215;
          v216 = v211[1];
          v216(v213, v206);
          if (v210[2])
          {
            v217 = OUTLINED_FUNCTION_3_47();
            sub_237D2FC30(v217);
            OUTLINED_FUNCTION_24_31();
            v206 = v680;
            if (v210)
            {
              v218 = v660;
              v219 = *(v660 + 16);
              sub_237EF8260();
              if (v219)
              {
                v220 = OUTLINED_FUNCTION_44_16();
                v221 = sub_237D2FC30(v220);
                v222 = v678;
                if (v223)
                {
                  v224 = *(*(v218 + 56) + 8 * v221);
                }

                else
                {
                  v224 = 1;
                }
              }

              else
              {
                v224 = 1;
                v222 = v678;
              }

              v230 = __OFADD__(v222, v224);
              v208 = &v222[v224];
              if (v230)
              {
                goto LABEL_268;
              }

              v678 = v224;
              v136 = sub_237EF7430();
              v237 = OUTLINED_FUNCTION_16_45(v136, v236);
              *v210 = v206;
              if ((v237 & 1) == 0)
              {
                sub_237E64278(v206, v238, v239, v240);
                OUTLINED_FUNCTION_19_40(v249);
              }

              if (v209 >= *(v206 + 16))
              {
                goto LABEL_269;
              }

              OUTLINED_FUNCTION_18_35();
              OUTLINED_FUNCTION_44_16();
              sub_237EF7400();
              v241 = OUTLINED_FUNCTION_8_72();
              (v136)(v241);
              v132 = sub_237EF7430();
              v243 = OUTLINED_FUNCTION_16_45(v132, v242);
              *v210 = v206;
              if ((v243 & 1) == 0)
              {
                sub_237E64278(v206, v244, v245, v246);
                OUTLINED_FUNCTION_19_40(v250);
              }

              v210 = v688;
              if (v209 >= *(v206 + 16))
              {
                goto LABEL_270;
              }

              goto LABEL_76;
            }
          }

          else
          {

            v206 = v680;
          }

          v138 = v206;
          if (v209 >= *(sub_237EF7440() + 16))
          {
            goto LABEL_256;
          }

          v225 = v664;
          v226 = OUTLINED_FUNCTION_45_16();
          (v132)(v226);

          v227 = sub_237EF73F0();
          v216(v225, v206);
          v138 = v660;
          if (*(v660 + 16))
          {
            v132 = sub_237D2FC30(v227);
            v227 = v228;

            v229 = v678;
            if (v227)
            {
              v136 = *(*(v138 + 56) + 8 * v132);
            }

            else
            {
              v136 = 1;
            }

            v206 = v680;
          }

          else
          {

            v136 = 1;
            v206 = v680;
            v229 = v678;
          }

          v230 = __OFADD__(v229, v136);
          v208 = &v229[v136];
          if (v230)
          {
            goto LABEL_257;
          }

          v138 = v206;
          v132 = sub_237EF7430();
          v232 = OUTLINED_FUNCTION_16_45(v132, v231);
          *v227 = v206;
          if ((v232 & 1) == 0)
          {
            sub_237E64278(v206, v233, v234, v235);
            OUTLINED_FUNCTION_19_40(v248);
          }

          v210 = v688;
          if (v209 >= *(v206 + 16))
          {
            goto LABEL_258;
          }

LABEL_76:
          OUTLINED_FUNCTION_18_35();
          sub_237EF7410();
          v247 = OUTLINED_FUNCTION_8_72();
          (v132)(v247);
          if (v662 == ++v209)
          {
            v144 = v683;
            goto LABEL_80;
          }
        }
      }

      v210 = v688;
LABEL_80:
      (*v596)(v641, v597, v642);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v253 = swift_allocObject();
      *(v253 + 16) = v594;
      *(v253 + 32) = v208;
      sub_237EF6CF0();

      v254 = OUTLINED_FUNCTION_28_6();
      v255(v254);
      v256 = OUTLINED_FUNCTION_53_11();
      v145 = v687;
      if ((v256 & 1) == 0)
      {
        sub_237E642A8(v253, v257, v258, v259);
        v253 = v390;
      }

      v141 = v685;
      v688 = v210;
      OUTLINED_FUNCTION_27_25();
      if (v164)
      {
        goto LABEL_278;
      }

      v686 = v253;
      v132 = v253 + v670;
      v260 = v253 + v670 + v671;
      v261 = sub_237EF76E0();
      v263 = OUTLINED_FUNCTION_16_45(v261, v262);
      *v210 = v260;
      if ((v263 & 1) == 0)
      {
        sub_237E64290(v260, v264, v265, v266);
        OUTLINED_FUNCTION_19_40(v391);
      }

      v267 = v691;
      if (!*(v260 + 16))
      {
        goto LABEL_279;
      }

      OUTLINED_FUNCTION_28();
      sub_237EF70D0();
      v268 = OUTLINED_FUNCTION_8_72();
      v261(v268);
      v136 = v646;
      (*v593)(v144, v680, v646);
      (*v592)(v144, v609, v649);
      OUTLINED_FUNCTION_50_14();
      if (v164)
      {
        goto LABEL_280;
      }

      sub_237EF7660();
      v269 = OUTLINED_FUNCTION_23_35();
      v270(v269, v136);
      v143 = v267;
    }

    else
    {
      v251 = OUTLINED_FUNCTION_14_52();
      v252(v251);
    }

    v271 = *(sub_237EF76A0() + 16);

    if (v271 != 1 || (v272 = *(sub_237EF76F0() + 16), , v272 != 1))
    {
      v276 = OUTLINED_FUNCTION_4_76();
      v277(v276);
      goto LABEL_93;
    }

    if (*(sub_237EF76A0() + 16))
    {
      OUTLINED_FUNCTION_28();
      v273 = v634;
      OUTLINED_FUNCTION_37_21();
      v274();
      v275 = 0;
    }

    else
    {
      v275 = 1;
      v273 = v634;
    }

    __swift_storeEnumTagSinglePayload(v273, v275, 1, v143);

    if (__swift_getEnumTagSinglePayload(v273, 1, v143) == 1)
    {
      goto LABEL_291;
    }

    v278 = v273;
    v684 = sub_237EF70A0();
    v690 = v279;
    v280 = *v689;
    (*v689)(v278, v143);
    v281 = sub_237EF76F0();
    v282 = v143;
    if (*(v281 + 16))
    {
      OUTLINED_FUNCTION_28();
      v284 = v635;
      (*(v141 + 16))(v635, v281 + v283, v282);
      v285 = 0;
    }

    else
    {
      v285 = 1;
      v284 = v635;
    }

    __swift_storeEnumTagSinglePayload(v284, v285, 1, v282);

    if (__swift_getEnumTagSinglePayload(v284, 1, v282) == 1)
    {
      goto LABEL_290;
    }

    v286 = sub_237EF70A0();
    v288 = v287;
    v289 = OUTLINED_FUNCTION_30_33();
    v280(v289);
    v290 = v601;
    v291 = *(v601 + 16);
    v671 = v286;
    if (v291)
    {
      v292 = v690;
      v293 = sub_237D2FC30(v684);
      v294 = v688;
      if (v295)
      {
        v296 = *(v290 + 56) + 16 * v293;
        v297 = *(v296 + 8);
        v684 = *v296;
        sub_237EF8260();

        v292 = v297;
      }
    }

    else
    {
      v294 = v688;
      v292 = v690;
    }

    v678 = v288;
    sub_237EF8260();
    swift_isUniquelyReferenced_nonNull_native();
    v695[0] = v294;
    v690 = v292;
    v298 = sub_237D2FC30(v684);
    if (__OFADD__(*(v294 + 16), (v299 & 1) == 0))
    {
      goto LABEL_283;
    }

    v300 = v298;
    v301 = v299;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0, &qword_237F05598);
    if (sub_237EF96B0())
    {
      v302 = sub_237D2FC30(v684);
      if ((v301 & 1) != (v303 & 1))
      {
        goto LABEL_296;
      }

      v300 = v302;
      v304 = v601;
    }

    else
    {
      v304 = v601;
    }

    v688 = v695[0];
    if (v301)
    {
      OUTLINED_FUNCTION_47_14();
      v305 = v671;
      v306 = v678;
      *v307 = v671;
      v307[1] = v306;
    }

    else
    {
      OUTLINED_FUNCTION_7_61(v695[0] + 8 * (v300 >> 6));
      v309 = (*(v308 + 48) + 16 * v300);
      v310 = v690;
      *v309 = v684;
      v309[1] = v310;
      OUTLINED_FUNCTION_47_14();
      v305 = v671;
      v312 = v678;
      *v313 = v671;
      v313[1] = v312;
      v314 = *(v311 + 16);
      v230 = __OFADD__(v314, 1);
      v315 = v314 + 1;
      if (v230)
      {
        goto LABEL_286;
      }

      *(v311 + 16) = v315;
      sub_237EF8260();
    }

    swift_isUniquelyReferenced_nonNull_native();
    v695[0] = v304;
    sub_237D2FC30(v305);
    v317 = v316;
    OUTLINED_FUNCTION_8_67();
    if (__OFADD__(v319, v320))
    {
      goto LABEL_284;
    }

    v132 = v318;
    if (sub_237EF96B0())
    {
      v321 = sub_237D2FC30(v671);
      v145 = v687;
      if ((v317 & 1) != (v322 & 1))
      {
        goto LABEL_296;
      }

      v132 = v321;
      v136 = v638;
    }

    else
    {
      v136 = v638;
      v145 = v687;
    }

    v601 = v695[0];
    if (v317)
    {
      OUTLINED_FUNCTION_47_14();
      v323 = v690;
      *v324 = v684;
      v324[1] = v323;

      v325 = v678;
    }

    else
    {
      OUTLINED_FUNCTION_7_61(v695[0] + 8 * (v132 >> 6));
      v327 = (*(v326 + 48) + 16 * v132);
      v325 = v678;
      *v327 = v671;
      v327[1] = v325;
      OUTLINED_FUNCTION_47_14();
      v329 = v690;
      *v330 = v684;
      v330[1] = v329;
      v331 = *(v328 + 16);
      v230 = __OFADD__(v331, 1);
      v332 = v331 + 1;
      if (v230)
      {
        goto LABEL_287;
      }

      *(v328 + 16) = v332;
      sub_237EF8260();
    }

    sub_237EF7650();
    v333 = v603(v136, v649);
    if (v333 != v589)
    {
      if (v333 != v585)
      {
        v374 = OUTLINED_FUNCTION_4_76();
        v375(v374);

        (*v599)(v638, v649);
        goto LABEL_139;
      }

      v353 = v638;
      (*v600)(v638, v649);
      v132 = v624;
      v354 = v625;
      (*v579)(v624, v353, v625);
      v136 = v617;
      sub_237EF72D0();
      v339 = v618;
      v355 = (*v578)(v136, v618);
      if (v355 == v577)
      {
        v356 = OUTLINED_FUNCTION_14_52();
        v357(v356);
        v690 = *v136;
        sub_237EF8260();
        v358 = v628;
        sub_237EF6E50();
        v359 = OUTLINED_FUNCTION_17_44();
        v360(v359, v358, v675);
        OUTLINED_FUNCTION_52_11();
        v361 = OUTLINED_FUNCTION_6_63();
        v136 = v671;
        sub_237C91458(v361, v671, v325, v362);

        OUTLINED_FUNCTION_40_15();

        swift_isUniquelyReferenced_nonNull_native();
        v363 = OUTLINED_FUNCTION_6_63();
        v143 = v691;
        sub_237C911D0(v363, v136, v325);

        (*v576)(v132, v625);
      }

      else
      {
        if (v355 != v572)
        {

          (*v576)(v624, v354);
          v388 = OUTLINED_FUNCTION_4_76();
          v389(v388);
          v373 = *v570;
          v371 = v136;
          goto LABEL_137;
        }

        v376 = OUTLINED_FUNCTION_14_52();
        v377(v376);
        v136 = *v136;
        sub_237EF8260();
        v378 = v628;
        sub_237EF6E40();
        v379 = OUTLINED_FUNCTION_17_44();
        v380(v379, v378, v675);
        OUTLINED_FUNCTION_52_11();
        v381 = OUTLINED_FUNCTION_6_63();
        v132 = v671;
        sub_237C91458(v381, v671, v325, v382);

        OUTLINED_FUNCTION_40_15();

        swift_isUniquelyReferenced_nonNull_native();
        v383 = OUTLINED_FUNCTION_6_63();
        v143 = v691;
        sub_237C911D0(v383, v132, v325);

        (*v576)(v624, v625);
      }

      v384 = OUTLINED_FUNCTION_4_76();
      v385(v384);
      v660 = v695[0];
LABEL_93:
      v138 = v686;
      goto LABEL_140;
    }

    v334 = OUTLINED_FUNCTION_14_52();
    v335(v334);
    v132 = v631;
    v336 = OUTLINED_FUNCTION_28_6();
    v136 = v632;
    v337(v336);
    sub_237EF74C0();
    v338 = OUTLINED_FUNCTION_23_35();
    v339 = v626;
    v341 = v340(v338, v626);
    if (v341 == v583)
    {
      v342 = OUTLINED_FUNCTION_23_35();
      v343(v342, v339);
      v344 = v628;
      sub_237EF6D00();
      v345 = v675;
      (*v581)(v344, v574, v675);
      v346 = OUTLINED_FUNCTION_17_44();
      v347(v346, v344, v345);
      OUTLINED_FUNCTION_52_11();
      v348 = OUTLINED_FUNCTION_6_63();
      sub_237C91458(v348, v671, v678, v349);

      OUTLINED_FUNCTION_40_15();
      v350 = OUTLINED_FUNCTION_28_6();
      goto LABEL_130;
    }

    if (v341 != v575)
    {

      (*v587)(v631, v632);
      v386 = OUTLINED_FUNCTION_4_76();
      v387(v386);
      v371 = OUTLINED_FUNCTION_23_35();
LABEL_137:
      v372 = v339;
      goto LABEL_138;
    }

    v364 = OUTLINED_FUNCTION_23_35();
    v365(v364, v339);
    v366 = v628;
    sub_237EF6DB0();
    v367 = OUTLINED_FUNCTION_23_35();
    v368 = v675;
    v369(v367, v571, v675);
    v136 = v629;
    (*v588)(v629, v366, v368);
    v370 = OUTLINED_FUNCTION_52_11();
    v695[0] = v368;
    sub_237C91458(v136, v671, v325, v370);

    OUTLINED_FUNCTION_40_15();
    v352 = *v587;
    v350 = v631;
    v351 = v632;
LABEL_130:
    v352(v350, v351);
    v371 = OUTLINED_FUNCTION_4_76();
LABEL_138:
    v373(v371, v372);
LABEL_139:
    v138 = v686;
    v143 = v691;
LABEL_140:
    v140 = v672 + 1;
    v142 = v681;
  }

  while (v672 + 1 != v602);
  v398 = *(v138 + 16);
  v700 = MEMORY[0x277D84F98];
  v675 = v398;
  if (!v398)
  {
    v131 = v643;
    v393 = v660;
    v392 = v688;
    v139 = MEMORY[0x277D84FA0];
    goto LABEL_143;
  }

  v399 = 0;
  v684 = (v141 + 32);
  v678 = (v141 + 40);
  v136 = MEMORY[0x277D84F98];
  do
  {
    if (v399 >= *(v138 + 16))
    {
      goto LABEL_285;
    }

    OUTLINED_FUNCTION_28_27();
    v677 = v399;
    v680 = v606 * v399;
    v605(v658, v400 + v606 * v399, v654);
    v401 = *(sub_237EF76A0() + 16);

    v682 = v401;
    if (v401)
    {
      v402 = 0;
      while (1)
      {
        if (v402 >= *(sub_237EF76A0() + 16))
        {
          __break(1u);
          goto LABEL_263;
        }

        v687 = *(v141 + 72);
        v403 = *(v141 + 16);
        v690 = v136;
        OUTLINED_FUNCTION_37_21();
        v403();

        v404 = v690;
        v405 = sub_237EF70A0();
        v407 = v406;
        if (!*(v404 + 16))
        {
          break;
        }

        v408 = sub_237D2FC30(v405);
        v410 = v409;

        if ((v410 & 1) == 0)
        {
          goto LABEL_166;
        }

        v411 = *(v404 + 56) + v408 * v687;
        v412 = v652;
        (v403)(v652, v411, v691);
        sub_237EF70C0();
        if ((OUTLINED_FUNCTION_53_11() & 1) == 0)
        {
          sub_237E642A8(v412, v413, v414, v415);
          v412 = v445;
        }

        if (v677 >= *(v412 + 16))
        {
          goto LABEL_275;
        }

        OUTLINED_FUNCTION_28_27();
        v417 = v416 + v680;
        v418 = sub_237EF7690();
        v420 = OUTLINED_FUNCTION_16_45(v418, v419);
        *v407 = v417;
        if ((v420 & 1) == 0)
        {
          sub_237E64290(v417, v421, v422, v423);
          OUTLINED_FUNCTION_19_40(v446);
        }

        v143 = v691;
        if (v402 >= *(v417 + 16))
        {
          goto LABEL_276;
        }

        sub_237EF70D0();
        v424 = OUTLINED_FUNCTION_8_72();
        v418(v424);
        v425 = *v689;
        (*v689)(v652, v143);
        (v425)(v676, v143);
        v136 = v690;
LABEL_176:
        v141 = v685;
        if (v682 == ++v402)
        {
          goto LABEL_177;
        }
      }

LABEL_166:
      v426 = v676;
      v427 = sub_237EF70A0();
      v429 = v428;
      (v403)(v663, v426, v691);
      v430 = v700;
      swift_isUniquelyReferenced_nonNull_native();
      v695[0] = v430;
      sub_237D2FC30(v427);
      OUTLINED_FUNCTION_8_67();
      if (__OFADD__(v433, v434))
      {
        goto LABEL_267;
      }

      v435 = v431;
      v436 = v432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4920, &qword_237F18F40);
      if (sub_237EF96B0())
      {
        v437 = sub_237D2FC30(v427);
        v143 = v691;
        if ((v436 & 1) != (v438 & 1))
        {
          goto LABEL_296;
        }

        v435 = v437;
      }

      else
      {
        v143 = v691;
      }

      v439 = v687;
      if (v436)
      {

        v136 = v695[0];
        (*v678)(*(v695[0] + 56) + v435 * v439, v663, v143);
        OUTLINED_FUNCTION_41_12();
        v440(v676, v143);
      }

      else
      {
        v136 = v695[0];
        OUTLINED_FUNCTION_7_61(v695[0] + 8 * (v435 >> 6));
        v441 = (*(v136 + 48) + 16 * v435);
        *v441 = v427;
        v441[1] = v429;
        (*v684)(*(v136 + 56) + v435 * v439, v663, v143);
        OUTLINED_FUNCTION_41_12();
        v442(v676, v143);
        v443 = *(v136 + 16);
        v230 = __OFADD__(v443, 1);
        v444 = v443 + 1;
        if (v230)
        {
          goto LABEL_274;
        }

        *(v136 + 16) = v444;
      }

      v700 = v136;
      goto LABEL_176;
    }

LABEL_177:
    v682 = sub_237EF76F0();
    v138 = v686;
    v680 = *(v682 + 16);
    if (v680)
    {
      v447 = 0;
      OUTLINED_FUNCTION_28();
      v679 = (v682 + v448);
      while (v447 < *(v682 + 16))
      {
        v449 = v685;
        v690 = *(v685 + 72);
        v450 = v657;
        (*(v685 + 16))(v657, v679 + v690 * v447, v143);
        v451 = sub_237EF70A0();
        v453 = v452;
        v687 = *(v449 + 32);
        (v687)(v667, v450, v143);
        v454 = v700;
        swift_isUniquelyReferenced_nonNull_native();
        v695[0] = v454;
        sub_237D2FC30(v451);
        OUTLINED_FUNCTION_8_67();
        if (__OFADD__(v457, v458))
        {
          goto LABEL_264;
        }

        v459 = v455;
        v460 = v456;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4920, &qword_237F18F40);
        if (sub_237EF96B0())
        {
          v461 = sub_237D2FC30(v451);
          v143 = v691;
          if ((v460 & 1) != (v462 & 1))
          {
            goto LABEL_296;
          }

          v459 = v461;
        }

        else
        {
          v143 = v691;
        }

        v138 = v686;
        if (v460)
        {

          v136 = v695[0];
          (*v678)(*(v695[0] + 56) + v459 * v690, v667, v143);
        }

        else
        {
          v136 = v695[0];
          OUTLINED_FUNCTION_7_61(v695[0] + 8 * (v459 >> 6));
          v463 = (*(v136 + 48) + 16 * v459);
          *v463 = v451;
          v463[1] = v453;
          (v687)(*(v136 + 56) + v459 * v690, v667, v143);
          v464 = *(v136 + 16);
          v230 = __OFADD__(v464, 1);
          v465 = v464 + 1;
          if (v230)
          {
            goto LABEL_271;
          }

          *(v136 + 16) = v465;
        }

        ++v447;
        v700 = v136;
        if (v680 == v447)
        {
          goto LABEL_190;
        }
      }

LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
      goto LABEL_281;
    }

LABEL_190:
    v399 = (v677 + 1);

    v466 = *v607;
    (*v607)(v658, v654);
    v141 = v685;
  }

  while (v399 != v675);
  v132 = v138 + 16;
  v467 = *(v138 + 16);
  v697 = MEMORY[0x277D84FA0];
  v698 = MEMORY[0x277D84FA0];
  v679 = v467;
  if (!v467)
  {
LABEL_261:
    v131 = v643;
    goto LABEL_144;
  }

  v676 = v138 + 16;
  v690 = v136;
  v468 = v143;
  v469 = 0;
  v678 = (v138 + v670);
  v470 = v654;
  v471 = v637;
  v677 = v466;
  do
  {
    sub_237C85534();
    v682 = v469;
    v605(v471, &v678[v606 * v469], v470);
    v472 = sub_237EF76A0();
    v473 = *(v472 + 16);
    if (v473)
    {
      OUTLINED_FUNCTION_36_21(MEMORY[0x277D84F90]);
      v474 = v695[0];
      OUTLINED_FUNCTION_10_2();
      v680 = v472;
      v476 = v472 + v475;
      OUTLINED_FUNCTION_49_13();
      v477 = v468;
      do
      {
        (v684)(v659, v476, v477);
        v478 = sub_237EF70A0();
        v480 = v479;
        OUTLINED_FUNCTION_41_12();
        v481 = OUTLINED_FUNCTION_3_47();
        v482(v481);
        v695[0] = v474;
        v484 = *(v474 + 16);
        v483 = *(v474 + 24);
        if (v484 >= v483 >> 1)
        {
          OUTLINED_FUNCTION_34_15(v483);
          v474 = v695[0];
        }

        *(v474 + 16) = v484 + 1;
        v485 = v474 + 16 * v484;
        *(v485 + 32) = v478;
        *(v485 + 40) = v480;
        v476 += v687;
        --v473;
        v477 = v691;
      }

      while (v473);
    }

    else
    {

      v474 = MEMORY[0x277D84F90];
      v477 = v468;
    }

    sub_237E39FBC(v474);
    v486 = sub_237EF76F0();
    v487 = *(v486 + 16);
    if (v487)
    {
      OUTLINED_FUNCTION_36_21(MEMORY[0x277D84F90]);
      v488 = v695[0];
      OUTLINED_FUNCTION_10_2();
      v680 = v486;
      v490 = v486 + v489;
      OUTLINED_FUNCTION_49_13();
      do
      {
        v491 = OUTLINED_FUNCTION_30_33();
        (v684)(v491);
        v492 = sub_237EF70A0();
        v494 = v493;
        OUTLINED_FUNCTION_41_12();
        v495 = OUTLINED_FUNCTION_3_47();
        v496(v495);
        v695[0] = v488;
        v498 = *(v488 + 16);
        v497 = *(v488 + 24);
        if (v498 >= v497 >> 1)
        {
          OUTLINED_FUNCTION_34_15(v497);
          v488 = v695[0];
        }

        *(v488 + 16) = v498 + 1;
        v499 = v488 + 16 * v498;
        *(v499 + 32) = v492;
        *(v499 + 40) = v494;
        v490 += v687;
        --v487;
      }

      while (v487);
      v468 = v691;
    }

    else
    {
      v468 = v477;

      v488 = MEMORY[0x277D84F90];
    }

    v469 = v682 + 1;
    sub_237E39FBC(v488);
    v471 = v637;
    v470 = v654;
    (v677)(v637, v654);
    v138 = v686;
  }

  while (v469 != v679);
  v131 = v643;
  v136 = v690;
  v132 = v676;
LABEL_144:
  v690 = v136;
  v686 = v138;
  sub_237E3A218(v131, v636);
  v394 = *(v627 + 24);
  if (!*(v131 + v394 + 80))
  {
    v500 = v636;
    v395 = v649;
LABEL_211:
    v501 = v640;
    OUTLINED_FUNCTION_51_13(v696);
    v502 = *(v501 + v394 + 80);
    if (v502)
    {
      v503 = (v500 + *(v627 + 24));
      memcpy(v694, v503, sizeof(v694));
      OUTLINED_FUNCTION_51_13(v695);
      v695[10] = v502;
      sub_237C9FEDC(v695, v693);
      sub_237C65484(v694, &unk_27DEAD7B0, &unk_237F03CA0);
      memcpy(v503, v696, 0x50uLL);
      v503[10] = v502;
    }

LABEL_221:
    sub_237EF76F0();
    sub_237EF7700();
    v516 = v697;
    v515 = v698;
    sub_237EF8260();
    v687 = v516;
    v684 = v515;
    v517 = sub_237E3A1C4(v516, v515);
    v518 = v590;
    sub_237E352EC(v517, &v700);
    v590 = v518;

    sub_237EF76B0();
    v519 = v619;
    sub_237EF7650();
    v520 = v630;
    v680 = *(v630 + 88);
    v521 = (v680)(v519, v395);
    v522 = *MEMORY[0x277D25368];
    LODWORD(v692) = *MEMORY[0x277D25338];
    LODWORD(v689) = *MEMORY[0x277D25390];
    v523 = *MEMORY[0x277D25328];
    v524 = v395;
    v525 = *MEMORY[0x277D25398];
    v679 = *(v520 + 8);
    v679(v519, v524);
    LODWORD(v682) = v522;
    if (v521 == v522 || v521 == v692 || v521 == v689 || v521 == v523 || v521 == v525)
    {
      sub_237EF8260();
      sub_237EF74F0();
      v530 = v683;
      v531 = OUTLINED_FUNCTION_3_47();
      v532(v531);
      (*(v520 + 104))(v530, v682, v649);
      sub_237EF7660();
      sub_237EF75F0();
      sub_237EF7600();
      sub_237EF7630();
      sub_237EF7640();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
      v533 = v685;
      v534 = (*(v685 + 80) + 32) & ~*(v685 + 80);
      v692 = *(v685 + 72);
      v535 = swift_allocObject();
      *(v535 + 16) = xmmword_237F04760;
      v536 = sub_237EF75F0();
      v537 = v614;
      v538 = v690;
      sub_237DD73A4(v690, v614, v536);

      v539 = v691;
      if (__swift_getEnumTagSinglePayload(v537, 1, v691) == 1)
      {
        goto LABEL_292;
      }

      v540 = v535 + v534;
      v541 = *(v533 + 32);
      v542 = OUTLINED_FUNCTION_28_6();
      v541(v542);
      v543 = sub_237EF7630();
      v544 = v615;
      sub_237DD73A4(v538, v615, v543);

      if (__swift_getEnumTagSinglePayload(v544, 1, v539) == 1)
      {
LABEL_293:
        __break(1u);
        goto LABEL_294;
      }

      (v541)(v540 + v692, v544, v539);
      v545 = v636;
      sub_237EF7700();
      (*(v621 + 8))(v620, v622);
    }

    else
    {
      v546 = v613;
      sub_237EF7650();
      v547 = v649;
      v548 = (v680)(v546, v649);
      v549 = *MEMORY[0x277D25350];
      v550 = *MEMORY[0x277D25330];
      v551 = *MEMORY[0x277D25380];
      v552 = *MEMORY[0x277D25388];
      v679(v546, v547);
      sub_237EF8260();
      v555 = v548 == v549 || v548 == v550 || v548 == v551 || v548 == v552;
      v556 = v685;
      if (v555)
      {
        v557 = v611;
        sub_237EF7470();
        v558 = v612;
        v559 = v683;
        (*(v612 + 16))(v683, v557, v616);
        (*(v630 + 104))(v559, v549, v649);
        v545 = v636;
        sub_237EF7660();
        sub_237EF75F0();
        sub_237EF7600();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD358, &unk_237F0A670);
        v560 = (*(v556 + 80) + 32) & ~*(v556 + 80);
        v561 = swift_allocObject();
        *(v561 + 16) = xmmword_237F03530;
        v562 = sub_237EF75F0();
        v563 = v556;
        v564 = v610;
        sub_237DD73A4(v690, v610, v562);

        v565 = v691;
        if (__swift_getEnumTagSinglePayload(v564, 1, v691) == 1)
        {
          goto LABEL_295;
        }

        (*(v563 + 32))(v561 + v560, v564, v565);
        sub_237EF7700();
        (*(v558 + 8))(v557, v616);
      }

      else
      {
        v566 = v683;
        sub_237EF7190();
        (*(v630 + 104))(v566, *MEMORY[0x277D253D0], v649);
        v545 = v636;
        sub_237EF7660();
        v567 = v687;
        sub_237EF8260();
        v568 = sub_237E3A1C4(v684, v567);
        v569 = v590;
        sub_237E352EC(v568, &v700);
        v590 = v569;

        sub_237EF7700();
      }
    }

    sub_237E36B18();
    sub_237D0F8BC(v640);
    sub_237D0F8BC(v643);
    sub_237DDA7EC(v545, v623);
  }

  memcpy(v695, (v640 + v394), sizeof(v695));
  v395 = v649;
  if (!v695[10])
  {
    v394 = *(v627 + 24);
    v500 = v636;
    goto LABEL_211;
  }

  memcpy(__dst, (v640 + v394), 0x50uLL);
  __dst[10] = v695[10];
  if (*(v636 + *(v627 + 24) + 80))
  {
    memcpy(v694, (v640 + v394), sizeof(v694));
    sub_237C9FEDC(v694, v693);
    v692 = sub_237E6542C(__dst);
    v396 = *v132;
    v397 = v580;
    if (*v132 < v580)
    {
      goto LABEL_288;
    }

    if (v580 == v396)
    {
      sub_237C65484(v695, &unk_27DEAD7B0, &unk_237F03CA0);
      goto LABEL_221;
    }

    v504 = v686;
    if (v580 < v396)
    {
      v689 = (v648 + 16);
      v687 = v648 + 8;
      v684 = (v648 + 40);
      while (v397 < *(v504 + 16))
      {
        v505 = v396;
        v506 = (*(v648 + 80) + 32) & ~*(v648 + 80);
        v507 = v397;
        v508 = *(v648 + 72) * v397;
        (*(v648 + 16))(v639, v504 + v506 + v508, v654);
        sub_237ECF820();
        v509 = OUTLINED_FUNCTION_30_33();
        v510(v509);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237E642A8(v504, v511, v512, v513);
          v504 = v514;
        }

        if (v397 >= *(v504 + 16))
        {
          goto LABEL_282;
        }

        ++v397;
        (*v684)(v504 + v506 + v508, v644, v654);
        v396 = v505;
        if (v505 == v507 + 1)
        {
          v686 = v504;
          sub_237C65484(v695, &unk_27DEAD7B0, &unk_237F03CA0);
          v395 = v649;
          goto LABEL_221;
        }
      }

LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
    }

    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

LABEL_294:
  __break(1u);
LABEL_295:
  __break(1u);
LABEL_296:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237E39F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_237E3A064(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_237E4C7EC(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_237E3A140(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_237E3A27C(a1, sub_237C9FE58, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_237E3A1C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_237E3A538(a1);
    return a2;
  }

  else
  {

    return sub_237E15FC8(a1, a2);
  }
}

uint64_t sub_237E3A218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreMLPackage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E3A27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_237E39F80(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v42 = v47[5];
  v43 = v47[0];
  v9 = (v47[2] + 64) >> 6;
  sub_237EF8260();

  v40 = v9;
  v41 = v6;
  if (v8)
  {
    while (1)
    {
      v44 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v43 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v43 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v46[0] = v14;
      v46[1] = v15;
      v46[2] = v17;
      v46[3] = v18;
      sub_237EF8260();
      sub_237EF8260();
      v42(v45, v46);

      v19 = v45[0];
      v20 = v45[1];
      v21 = v45[2];
      v22 = v45[3];
      v23 = *v48;
      v25 = sub_237D2FC30(v45[0]);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((v44 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2D0, &qword_237F05598);
          sub_237EF96C0();
        }
      }

      else
      {
        sub_237D2848C(v28, v44 & 1);
        v30 = sub_237D2FC30(v19);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_24;
        }

        v25 = v30;
      }

      v8 &= v8 - 1;
      v32 = *v48;
      if (v29)
      {

        v33 = (v32[7] + 16 * v25);
        *v33 = v21;
        v33[1] = v22;
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v34 = (v32[6] + 16 * v25);
        *v34 = v19;
        v34[1] = v20;
        v35 = (v32[7] + 16 * v25);
        *v35 = v21;
        v35[1] = v22;
        v36 = v32[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_23;
        }

        v32[2] = v38;
      }

      a4 = 1;
      v7 = v10;
      v9 = v40;
      v6 = v41;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_237C9FE9C();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v44 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

uint64_t sub_237E3A538(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_237EF8260();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_237EF8260();
        sub_237E3A664(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_237E3A664(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_237EFA120();
  sub_237EF8610();
  v6 = sub_237EFA170();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_237EF9D40() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237E4E474();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_237E3A78C(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_237E3A78C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_237EF9290();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_237EFA120();
        sub_237EF8260();
        sub_237EF8610();
        v10 = sub_237EFA170();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_237E3A944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_16_45(uint64_t a1, uint64_t *a2)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_37@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_21_40(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_24_31()
{
}

void *OUTLINED_FUNCTION_34_15@<X0>(unint64_t a1@<X8>)
{

  return sub_237C62D90((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_35_17()
{

  return sub_237EF76C0();
}

void *OUTLINED_FUNCTION_36_21@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1160) = a1;

  return sub_237C62D90(0, v2, 0);
}

double OUTLINED_FUNCTION_42_16()
{
  *(v0 + 1104) = 0;
  result = 0.0;
  *(v0 + 1088) = 0u;
  *(v0 + 1072) = 0u;
  return result;
}

void OUTLINED_FUNCTION_48_12()
{
  v2 = *(v0 + 72);
  *(v1 + 352) = *(v0 + 16);
  *(v1 + 360) = v2;
}

void *OUTLINED_FUNCTION_51_13(void *a1)
{

  return memcpy(a1, v1, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_52_11()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_237E3AD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  v33[0] = MEMORY[0x277D84F90];
  sub_237C63844(0, v3, 0);
  result = v33[0];
  if (v3)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    v8 = (a1 + 33);
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        goto LABEL_30;
      }

      v9 = *v8;
      v33[0] = result;
      v11 = *(result + 16);
      v10 = *(result + 24);
      if (v11 >= v10 >> 1)
      {
        sub_237C63844((v10 > 1), v11 + 1, 1);
        result = v33[0];
      }

      ++v6;
      *(result + 16) = v11 + 1;
      *(result + v11 + 32) = v9;
      v8 += 2;
      if (v3 == v6)
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_8:
    v12 = 0;
    v13 = (a1 + 32);
    for (i = 2 * v3 + 33; ; i += 2)
    {
      v15 = *(a1 + 16);
      if (v3 + v12 == v15)
      {
        break;
      }

      if (v3 + v12 >= v15)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v16 = *(a1 + i);
      v33[0] = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_237C63844((v17 > 1), v18 + 1, 1);
        result = v33[0];
      }

      *(result + 16) = v18 + 1;
      *(result + v18 + 32) = v16;
      ++v12;
    }

    sub_237CAE2F4(result);
    v33[0] = v4;
    sub_237C63844(0, v3, 0);
    result = v4;
    if (!v3)
    {
LABEL_21:
      v23 = 2 * v3 + 32;
      if (!v12)
      {
LABEL_26:
        v27 = sub_237CAE4E8();
        result = sub_237CB10EC(a1, v27, v33);
        v28 = v33[1];
        v29 = v34;
        v30 = v36;
        v31 = v35;
        *a2 = v33[0];
        *(a2 + 8) = v28;
        *(a2 + 16) = v29;
        *(a2 + 24) = v31;
        *(a2 + 40) = v30;
        return result;
      }

      while (v3 < *(a1 + 16))
      {
        v24 = *(a1 + v23);
        v33[0] = result;
        v26 = *(result + 16);
        v25 = *(result + 24);
        if (v26 >= v25 >> 1)
        {
          sub_237C63844((v25 > 1), v26 + 1, 1);
          result = v33[0];
        }

        *(result + 16) = v26 + 1;
        *(result + v26 + 32) = v24;
        v23 += 2;
        --v12;
        ++v3;
        if (!v12)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_28;
    }

    v19 = 0;
    while (v3 + v12 != v19)
    {
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_32;
      }

      v20 = *v13;
      v33[0] = result;
      v22 = *(result + 16);
      v21 = *(result + 24);
      if (v22 >= v21 >> 1)
      {
        sub_237C63844((v21 > 1), v22 + 1, 1);
        result = v33[0];
      }

      ++v19;
      *(result + 16) = v22 + 1;
      *(result + v22 + 32) = v20;
      v13 += 2;
      if (v3 == v19)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_237E3B014(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v50 = 0;
    return sub_237CB2328(v50, 0);
  }

  v3 = v1;
  v52 = *(v1 + 16);
  v4 = 0;
  v54 = 0;
  v55 = 0;
  for (i = (sub_237EF8260() + 33); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD3F0, &qword_237F0B080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F04760;
    *(inited + 32) = v7;
    *(inited + 33) = v6;
    v9 = sub_237CAE2F4(inited);
    sub_237E3A064(v9);
    v11 = *v3;
    v10 = v3[1];
    if (sub_237E47AC0(v6, v10))
    {
      if (((v52 ^ 1 | sub_237E47AC0(v7, v10)) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v52)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v11, 1))
    {
      break;
    }

    v53 = v2;
    *v3 = v11 + 1;
    sub_237CB2328(v4, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v3[3];
    v12 = v56;
    v13 = sub_237D30084(v7);
    if (__OFADD__(*(v12 + 16), (v14 & 1) == 0))
    {
      goto LABEL_38;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECF8, &unk_237F19090);
    v17 = sub_237EF96B0();
    v18 = v56;
    if (v17)
    {
      v19 = sub_237D30084(v7);
      if ((v16 & 1) != (v20 & 1))
      {
        goto LABEL_44;
      }

      v15 = v19;
    }

    v3[3] = v18;
    if ((v16 & 1) == 0)
    {
      sub_237CF63F8(&v56);
      sub_237D30D28(v15, v7, v56, v18);
    }

    v21 = *(v18 + 56);
    v22 = *(v21 + 8 * v15);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_39;
    }

    *(v21 + 8 * v15) = v24;
    sub_237CB2328(v55, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v3[4];
    v25 = v56;
    v26 = sub_237D30084(v6);
    v28 = v27;
    if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
    {
      goto LABEL_40;
    }

    v29 = v26;
    v30 = sub_237EF96B0();
    v31 = v56;
    if (v30)
    {
      v32 = sub_237D30084(v6);
      if ((v28 & 1) != (v33 & 1))
      {
        goto LABEL_44;
      }

      v29 = v32;
    }

    v3[4] = v31;
    if ((v28 & 1) == 0)
    {
      sub_237CF63F8(&v56);
      sub_237D30D28(v29, v6, v56, v31);
    }

    v34 = *(v31 + 56);
    v35 = *(v34 + 8 * v29);
    v23 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v23)
    {
      goto LABEL_41;
    }

    *(v34 + 8 * v29) = v36;
    sub_237CB2328(v54, 0);
    swift_isUniquelyReferenced_nonNull_native();
    v37 = v3[5];
    v56 = v37;
    if (v7)
    {
      v38 = 256;
    }

    else
    {
      v38 = 0;
    }

    v39 = sub_237D2FFAC(v38 | v6);
    if (__OFADD__(*(v37 + 16), (v40 & 1) == 0))
    {
      goto LABEL_42;
    }

    v41 = v39;
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED00, &unk_237F07120);
    v43 = sub_237EF96B0();
    v44 = v56;
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED08, &unk_237F190A0);
      v45 = sub_237D2FFAC(v38 | v6);
      if ((v42 & 1) != (v46 & 1))
      {
        goto LABEL_44;
      }

      v41 = v45;
    }

    v3[5] = v44;
    if ((v42 & 1) == 0)
    {
      sub_237CF63F8(&v56);
      sub_237D30D5C(v41, v38 | v6, v56, v44);
    }

    v47 = *(v44 + 56);
    v48 = *(v47 + 8 * v41);
    v23 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v23)
    {
      goto LABEL_43;
    }

    *(v47 + 8 * v41) = v49;
    v54 = sub_237CF63F8;
    v55 = sub_237CF63F8;
    v4 = sub_237CF63F8;
    v2 = v53;
LABEL_33:
    if (!--v2)
    {

      sub_237CB2328(v4, 0);
      sub_237CB2328(v55, 0);
      v50 = v54;
      return sub_237CB2328(v50, 0);
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_237EFA020();
  __break(1u);
  return result;
}

void MultiLabelClassificationMetrics.init<A, B>(classifications:groundTruth:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v86 = v23;
  v25 = v24;
  v91 = v26;
  v92 = v27;
  v29 = v28;
  v31 = v30;
  v99 = v32;
  v76 = v33;
  v85 = a21;
  v95.n128_u64[0] = v34;
  v95.n128_u64[1] = v27;
  v35 = v34;
  v96 = v23;
  v97 = a21;
  v36 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v88 = v38;
  v89 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v90 = v41;
  OUTLINED_FUNCTION_1_1();
  v43 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_28_26();
  v79 = v25;
  type metadata accessor for ClassificationDistribution(255, v29, v25, v45);
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = sub_237EF9640();
  OUTLINED_FUNCTION_1_1();
  v82 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_2();
  v83 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_17(&v76 - v50);
  v81 = *v31;
  HIDWORD(v80) = *(v31 + 8);
  v51 = v92;
  v52 = v35;
  v54 = v85;
  v53 = v86;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v36, WitnessTable);
  (*(v43 + 8))(v21, v36);
  v55 = swift_allocObject();
  v56 = v29;
  v55[2] = v29;
  v55[3] = v52;
  v57 = v51;
  v58 = v79;
  v55[4] = v51;
  v55[5] = v58;
  v55[6] = v53;
  v55[7] = v54;
  v59 = v54;
  OUTLINED_FUNCTION_70();
  v60 = swift_allocObject();
  v60[2] = v56;
  v60[3] = v52;
  v61 = v56;
  v87 = v52;
  v62 = v78;
  v60[4] = v57;
  v60[5] = v58;
  v63 = v58;
  v60[6] = v53;
  v60[7] = v59;
  v60[8] = sub_237E3C768;
  v60[9] = v55;
  v64 = v88;
  swift_getWitnessTable();
  v65 = v77;
  v66 = v90;
  sub_237EF9860();
  v67 = v82;

  (*(v89 + 8))(v66, v64);
  v68 = v83;
  (*(v67 + 16))(v83, v65, v62);
  v93 = v81;
  v94 = BYTE4(v80);
  OUTLINED_FUNCTION_1_5();
  v69 = swift_getWitnessTable();
  v70 = sub_237CA5A14(v65, v61, v62, v63, v69);
  MultiLabelClassificationMetrics.init<A>(_:strategy:labels:)(v68, &v93, v70, v61, v62, v63, v69, v71, v76, v77, v78, v79, v80, v81, v82, v83, TupleTypeMetadata2, v85, v86, v87);
  OUTLINED_FUNCTION_8_9();
  (*(v72 + 8))();
  OUTLINED_FUNCTION_8_9();
  (*(v73 + 8))(v99);
  v74 = OUTLINED_FUNCTION_22_13();
  v75(v74);
  if (!v22)
  {
    OUTLINED_FUNCTION_18_36(v96, v95, v98);
  }

  OUTLINED_FUNCTION_12_6();
}

float MultiLabelClassificationMetrics.meanAveragePrecision.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  v18 = v1[1];
  v19[0] = v2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = OUTLINED_FUNCTION_10_57();
  type metadata accessor for ClassificationDistribution(v6, v7, v8, v9);
  OUTLINED_FUNCTION_31_2();
  v10 = sub_237EF8A60();
  OUTLINED_FUNCTION_10_57();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_31_2();
  v11 = sub_237EF8A60();
  sub_237EF8260();
  sub_237EF8260();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  static MultiLabelClassificationMetrics.meanAveragePrecisionScore<A, B>(classifications:groundTruth:labels:)(v19, &v18, v3, v5, v10, v11, v4, WitnessTable, v13, v17, v18, v2, v19[1], v19[2], v19[3], v19[4], v19[5], v19[6], v19[7], v19[8], v19[9], v19[10], v19[11]);
  v15 = v14;

  return v15;
}

void MultiLabelClassificationMetrics.init<A, B>(classifications:groundTruth:strategy:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_13_4();
  v64 = v24;
  v26 = v25;
  v28 = v27;
  v63 = v29;
  v31 = v30;
  v71 = v32;
  v56 = v33;
  v67.n128_u64[0] = v34;
  v67.n128_u64[1] = v24;
  v35 = v34;
  v68 = a21;
  v69 = a22;
  v36 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v39);
  OUTLINED_FUNCTION_1_1();
  v41 = v40;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_28_26();
  type metadata accessor for ClassificationDistribution(255, v28, v26, v43);
  sub_237EF8CF0();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v62 = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v45);
  v60 = *v31;
  HIDWORD(v59) = *(v31 + 8);
  sub_237EFA000();
  MEMORY[0x2383E08A0](v36, WitnessTable);
  (*(v41 + 8))(v22, v36);
  v46 = swift_allocObject();
  v46[2] = v28;
  v46[3] = v35;
  v47 = v35;
  v46[4] = v64;
  v46[5] = v26;
  v46[6] = a21;
  v46[7] = a22;
  OUTLINED_FUNCTION_70();
  v48 = swift_allocObject();
  v48[2] = v28;
  v48[3] = v47;
  v48[4] = v64;
  v48[5] = v26;
  v48[6] = a21;
  v48[7] = a22;
  v48[8] = sub_237E3C768;
  v48[9] = v46;
  swift_getWitnessTable();
  sub_237EF9860();

  v49 = OUTLINED_FUNCTION_22_13();
  v50(v49);
  v65 = v60;
  v66 = BYTE4(v59);
  OUTLINED_FUNCTION_1_5();
  v51 = swift_getWitnessTable();
  MultiLabelClassificationMetrics.init<A>(_:strategy:labels:)(v58, &v65, v63, v28, v62, v26, v51, v52, v55, v56, v28, v26, v57, v58, v59, v60, TupleTypeMetadata2, v62, a21, a22);
  OUTLINED_FUNCTION_8_9();
  (*(v53 + 8))();
  OUTLINED_FUNCTION_22_3();
  (*(v54 + 8))(v71, v47);
  if (!v23)
  {
    OUTLINED_FUNCTION_18_36(v68, v67, v70);
  }

  OUTLINED_FUNCTION_12_6();
}

void MultiLabelClassificationMetrics.init<A>(_:strategy:labels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v114 = v31;
  v33 = v32;
  v35 = v34;
  v106 = v36;
  v105 = sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v104 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v39);
  OUTLINED_FUNCTION_1_1();
  v116 = v40;
  MEMORY[0x28223BE20](v41);
  v100 = v42;
  OUTLINED_FUNCTION_17(v97 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = *(v33 + 8);
  v111 = *v33;
  *&v120 = v111;
  LODWORD(v110) = v43;
  BYTE8(v120) = v43;
  v119[6] = v30;
  v119[7] = v28;
  v119[8] = v26;
  v119[9] = v24;
  KeyPath = swift_getKeyPath();
  v119[2] = v28;
  v119[3] = v24;
  v119[4] = KeyPath;
  v46 = type metadata accessor for ClassificationDistribution(0, v30, v26, v45);
  v48 = sub_237C8FFEC(sub_237E3DE90, v119, v28, v46, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v47);

  v109 = v48;
  a10 = v48;
  v118[6] = v30;
  v118[7] = v28;
  v118[8] = v26;
  v118[9] = v24;
  v49 = swift_getKeyPath();
  v118[2] = v28;
  v118[3] = v24;
  v118[4] = v49;
  v50 = sub_237EF8CF0();
  v115 = v28;
  v103 = v24;
  v117 = v35;
  v52 = sub_237C8FFEC(sub_237E3C784, v118, v28, v50, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v51);
  v108 = v20;

  v122[0] = v52;
  v112 = v30;
  v113 = v26;
  v54 = type metadata accessor for MultiLabelClassificationMetrics.ThresholdSelectionStrategy(0, v30, v26, v53);
  v107 = v46;
  v55 = sub_237EF8A60();
  v56 = v50;
  v57 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v60 = v114;
  v61 = v108;
  sub_237D616B8(&a10, v122, v114, v54, v55, v57, WitnessTable, v59);
  if (v61)
  {

    v63 = OUTLINED_FUNCTION_20_38();
    v64(v63, v115);

    OUTLINED_FUNCTION_32_25();
  }

  else
  {
    v65 = v62;

    OUTLINED_FUNCTION_32_25();
    a10 = v60;
    OUTLINED_FUNCTION_7_62();
    v98 = swift_getWitnessTable();
    MEMORY[0x2383E08A0](v122, v50, v98);
    *&v110 = v122[0];
    v119[11] = v122[0];
    v66 = v116;
    v67 = v101;
    v68 = v115;
    (*(v116 + 16))(v101, v117, v115);
    v69 = v66;
    v70 = (*(v66 + 80) + 48) & ~*(v66 + 80);
    v71 = (v100 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
    v72 = swift_allocObject();
    *(v72 + 2) = v112;
    *(v72 + 3) = v68;
    v109 = 0;
    v73 = v103;
    *(v72 + 4) = v113;
    *(v72 + 5) = v73;
    (*(v69 + 32))(&v72[v70], v67, v68);
    *&v72[v71] = v65;
    OUTLINED_FUNCTION_43_0();
    v99 = v56;
    sub_237EF9340();
    sub_237EF8260();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEAF8, &qword_237F18FA0);
    v74 = v112;
    swift_getTupleTypeMetadata2();
    v111 = v65;
    OUTLINED_FUNCTION_0_6();
    swift_getWitnessTable();
    sub_237EF9860();

    v110 = v120;
    v108 = v121;
    OUTLINED_FUNCTION_43_0();
    sub_237EF9640();
    sub_237EF8260();

    OUTLINED_FUNCTION_1_5();
    swift_getWitnessTable();
    v75 = v113;
    v101 = sub_237EF8240();
    v76 = v102;
    v77 = v115;
    MEMORY[0x2383E08A0](v115, v73);
    OUTLINED_FUNCTION_28_28();
    MEMORY[0x28223BE20](v78);
    OUTLINED_FUNCTION_27();
    *(v79 - 32) = v74;
    *(v79 - 24) = v77;
    *(v79 - 16) = v75;
    *(v79 - 8) = v73;
    v80 = swift_getKeyPath();
    v97[1] = v97;
    MEMORY[0x28223BE20](v80);
    v97[-4] = v77;
    v97[-3] = v73;
    v97[-2] = v81;
    OUTLINED_FUNCTION_6_64();
    v82 = v105;
    v100 = swift_getWitnessTable();
    v83 = v109;
    v85 = sub_237C8FFEC(sub_237E3C784, &v97[-6], v82, v107, MEMORY[0x277D84A98], v100, MEMORY[0x277D84AC0], v84);
    v98 = v83;

    v109 = *(v104 + 8);
    v109(v76, v82);
    sub_237EF8260();
    MEMORY[0x2383E08A0](v77, v73);
    OUTLINED_FUNCTION_28_28();
    MEMORY[0x28223BE20](v86);
    OUTLINED_FUNCTION_27();
    *(v87 - 32) = v112;
    *(v87 - 24) = v77;
    *(v87 - 16) = v113;
    *(v87 - 8) = v73;
    v88 = swift_getKeyPath();
    MEMORY[0x28223BE20](v88);
    v97[-4] = v77;
    v97[-3] = v73;
    v97[-2] = v89;
    v91 = sub_237C8FFEC(sub_237E3DE90, &v97[-6], v82, v99, MEMORY[0x277D84A98], v100, MEMORY[0x277D84AC0], v90);

    v109(v76, v82);
    v92 = sub_237EF8A00();

    v93 = OUTLINED_FUNCTION_20_38();
    v94(v93, v77);
    v95 = v106;
    *v106 = v85;
    v95[1] = v91;
    v95[2] = v101;
    v95[3] = v92;
    v96 = v111;
    v95[4] = v114;
    v95[5] = v96;
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E3C7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  v11 = sub_237E3C8D0(a2, a3, a1, a4, a6, a7, a8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEAF8, &qword_237F18FA0);
  v12 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a4 - 8) + 16))(a5, a1, a4);
  return sub_237E3AD4C(v11, a5 + v12);
}

uint64_t sub_237E3C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = v17;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  sub_237EF82F0();
  if (BYTE4(v37))
  {
    v21 = 0.0;
  }

  else
  {
    v21 = *&v37;
  }

  (*(v12 + 16))(v15, v35, a5);
  sub_237EF86F0();
  swift_getAssociatedConformanceWitness();
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_237EF91A0();
    if (!v37)
    {
      break;
    }

    v24 = type metadata accessor for ClassificationDistribution(0, a4, a6, v23);
    v27 = ClassificationDistribution.subscript.getter(a3, v24, v25, v26);

    if ((v27 & 0x100000000) != 0)
    {
    }

    else
    {
      v28 = sub_237EF8CD0();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v35) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237D0CB18();
        v22 = v32;
      }

      v30 = *(v22 + 16);
      if (v30 >= *(v22 + 24) >> 1)
      {
        sub_237D0CB18();
        v22 = v33;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + 2 * v30;
      *(v31 + 32) = v21 <= *&v27;
      *(v31 + 33) = v35 & 1;
    }
  }

  (*(v36 + 8))(v20, AssociatedTypeWitness);
  return v22;
}

uint64_t sub_237E3CBD4()
{
  OUTLINED_FUNCTION_19_41();
  sub_237EF8260();
  swift_getAtKeyPath();
}

uint64_t MultiLabelClassificationMetrics.init(confidenceThresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = 0;
  type metadata accessor for ClassificationDistribution(0, a2, a3, a4);
  OUTLINED_FUNCTION_31_2();
  *a5 = sub_237EF89A0();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_31_2();
  a5[1] = sub_237EF89A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAEAF8, &qword_237F18FA0);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_31_2();
  sub_237EF89A0();
  OUTLINED_FUNCTION_13_45();
  a5[2] = sub_237EF8230();
  OUTLINED_FUNCTION_13_45();
  sub_237EF8260();
  OUTLINED_FUNCTION_13_45();
  sub_237EF8250();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_45();
  result = sub_237EF8D00();
  a5[4] = result;
  a5[5] = a1;
  return result;
}

uint64_t MultiLabelClassificationMetrics.add<A, B>(classifications:groundTruth:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a7;
  v41 = a6;
  v38[2] = a2;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v50 = a7;
  v11 = sub_237EF9380();
  OUTLINED_FUNCTION_20_8();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  v38[0] = WitnessTable;
  v43 = sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v45 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v46 = v15;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_28_26();
  v44 = a3;
  v20 = *(a3 + 16);
  v19 = *(a3 + 24);
  v21 = OUTLINED_FUNCTION_10_57();
  type metadata accessor for ClassificationDistribution(v21, v22, v23, v24);
  OUTLINED_FUNCTION_10_57();
  sub_237EF8CF0();
  v38[1] = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_43_0();
  v39 = sub_237EF9640();
  OUTLINED_FUNCTION_1_1();
  v42 = v25;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  v28 = v38 - v27;
  v30 = v40;
  v29 = v41;
  sub_237EFA000();
  MEMORY[0x2383E08A0](v11, v38[0]);
  (*(v17 + 8))(v7, v11);
  v31 = swift_allocObject();
  v31[2] = v20;
  v31[3] = a4;
  v31[4] = a5;
  v31[5] = v19;
  v31[6] = v29;
  v31[7] = v30;
  OUTLINED_FUNCTION_70();
  v32 = swift_allocObject();
  v32[2] = v20;
  v32[3] = a4;
  v32[4] = a5;
  v32[5] = v19;
  v32[6] = v29;
  v32[7] = v30;
  v32[8] = sub_237E3C768;
  v32[9] = v31;
  v33 = v43;
  swift_getWitnessTable();
  v34 = v46;
  sub_237EF9860();

  (*(v45 + 8))(v34, v33);
  OUTLINED_FUNCTION_1_5();
  v35 = v39;
  v36 = swift_getWitnessTable();
  MultiLabelClassificationMetrics.add<A>(_:)(v28, v44, v35, v36);
  return (*(v42 + 8))(v28, v35);
}

void *MultiLabelClassificationMetrics.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a1;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v79 = sub_237EF8CF0();
  v8 = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v10);
  v11 = v6;
  v81 = v6;
  v78[11] = type metadata accessor for ClassificationDistribution(255, v7, v6, v12);
  v78[6] = sub_237EF9640();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v14);
  OUTLINED_FUNCTION_1_1();
  v82 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_2();
  v87 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17(v78 - v19);
  sub_237EF90F0();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v21);
  v22 = sub_237EF9340();
  OUTLINED_FUNCTION_1_1();
  v83 = v23;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v24);
  v26 = v78 - v25;
  OUTLINED_FUNCTION_1_5();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_7_62();
  v93 = swift_getWitnessTable();
  v78[8] = v8;
  v78[4] = WitnessTable;
  sub_237EF95F0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_0();
  v89 = sub_237EF9340();
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  v30 = v78 - v29;
  OUTLINED_FUNCTION_23_36();
  v95[4] = v7;
  v95[5] = a3;
  v31 = a3;
  v92 = a3;
  v95[6] = v11;
  v95[7] = a4;
  v32 = a4;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_22_34();
  v34 = swift_allocObject();
  v34[2] = v31;
  v34[3] = a4;
  v34[4] = KeyPath;
  OUTLINED_FUNCTION_0_6();
  v35 = v22;
  v36 = swift_getWitnessTable();
  v86 = v30;
  v37 = v79;
  OUTLINED_FUNCTION_30_34(sub_237E3DEA8, v34, v35, v79);

  v38 = *(v83 + 8);
  v83 += 8;
  v38(v26, v35);
  OUTLINED_FUNCTION_6_64();
  v88 = swift_getWitnessTable();
  sub_237EF8CE0();
  v39 = v92;
  MEMORY[0x2383E08A0](v92, v32);
  v95[0] = v7;
  v95[1] = v39;
  v95[2] = v81;
  v95[3] = v32;
  v40 = swift_getKeyPath();
  OUTLINED_FUNCTION_22_34();
  v41 = swift_allocObject();
  v41[2] = v39;
  v41[3] = v32;
  v90 = v32;
  v41[4] = v40;
  v78[10] = v36;
  OUTLINED_FUNCTION_30_34(sub_237E3DE10, v41, v35, v37);

  v78[2] = v26;
  v78[5] = v35;
  v78[9] = v38;
  v38(v26, v35);
  v42 = v80;
  sub_237EF8CE0();
  v43 = v42[4];
  if ((v43 & 0xC000000000000001) != 0)
  {
    sub_237EF8260();
    sub_237EF92A0();
    v44 = v81;
    result = sub_237EF8CC0();
    v43 = v104;
    v46 = v105;
    v47 = v106;
    v88 = v107;
    v48 = v108;
  }

  else
  {
    v49 = -1 << *(v43 + 32);
    v46 = v43 + 56;
    v47 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v48 = v51 & *(v43 + 56);
    result = sub_237EF8260();
    v88 = 0;
    v44 = v81;
  }

  v78[1] = v47;
  v93 = v82 + 16;
  v86 = (v82 + 32);
  v85 = v82 + 8;
  v52 = v84;
  v53 = v91;
  v89 = v43;
  if (v43 < 0)
  {
    goto LABEL_10;
  }

  while (v48)
  {
    v54 = v88;
LABEL_17:
    v56 = __clz(__rbit64(v48));
    v48 &= v48 - 1;
    (*(v82 + 16))(v53, *(v43 + 48) + *(v82 + 72) * (v56 | (v54 << 6)), v7);
    while (1)
    {
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v7);
      OUTLINED_FUNCTION_19_1();
      v57 = OUTLINED_FUNCTION_22_13();
      v58(v57);
      v59 = v44;
      v60 = sub_237E3C8D0(v94, v42[5], v52, v7, v92, v44, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEAF8, &qword_237F18FA0);
      sub_237EF82F0();
      if (v96)
      {
        v100[0] = v95[9];
        v100[1] = v96;
        v101 = v97 & 1;
        v102 = v98;
        v103 = v99;
        sub_237E3B014(v60);

        OUTLINED_FUNCTION_19_1();
        v61(v87, v52, v7);
        OUTLINED_FUNCTION_9_53();
      }

      else
      {
        OUTLINED_FUNCTION_19_1();
        v62(v87, v84, v7);
        sub_237E3AD4C(v60, v100);
        OUTLINED_FUNCTION_9_53();
        v52 = v84;
      }

      sub_237EF8300();
      OUTLINED_FUNCTION_19_1();
      result = v63(v52, v7);
      v44 = v59;
      v53 = v91;
      v43 = v89;
      if ((v89 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!sub_237EF92B0())
      {
        goto LABEL_23;
      }

      sub_237EF9D10();
      swift_unknownObjectRelease();
    }
  }

  v55 = v88;
  while (1)
  {
    v54 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v54 >= ((v47 + 64) >> 6))
    {
LABEL_23:
      __swift_storeEnumTagSinglePayload(v53, 1, 1, v7);
      sub_237C9FE9C();
      v64 = v92;
      v65 = v90;
      OUTLINED_FUNCTION_23_36();
      OUTLINED_FUNCTION_28_28();
      MEMORY[0x28223BE20](v66);
      OUTLINED_FUNCTION_27();
      *(v67 - 32) = v7;
      *(v67 - 24) = v64;
      *(v67 - 16) = v44;
      *(v67 - 8) = v65;
      v68 = swift_getKeyPath();
      OUTLINED_FUNCTION_22_34();
      v69 = swift_allocObject();
      v69[2] = v64;
      v69[3] = v65;
      v69[4] = v68;
      OUTLINED_FUNCTION_24_32(sub_237E3DE30);

      v70 = OUTLINED_FUNCTION_16_46();
      v71(v70);
      OUTLINED_FUNCTION_43_0();
      sub_237EF8A60();
      OUTLINED_FUNCTION_1_5();
      swift_getWitnessTable();
      sub_237EF8A10();
      OUTLINED_FUNCTION_23_36();
      OUTLINED_FUNCTION_28_28();
      MEMORY[0x28223BE20](v72);
      OUTLINED_FUNCTION_27();
      *(v73 - 32) = v7;
      *(v73 - 24) = v64;
      *(v73 - 16) = v81;
      *(v73 - 8) = v65;
      v74 = swift_getKeyPath();
      OUTLINED_FUNCTION_22_34();
      v75 = swift_allocObject();
      v75[2] = v64;
      v75[3] = v65;
      v75[4] = v74;
      OUTLINED_FUNCTION_24_32(sub_237E3DEA8);

      v76 = OUTLINED_FUNCTION_16_46();
      v77(v76);
      OUTLINED_FUNCTION_43_0();
      sub_237EF8A60();
      sub_237EF8A10();
      result = sub_237EF8A00();
      v42[3] = result;
      return result;
    }

    v48 = *(v46 + 8 * v54);
    ++v55;
    if (v48)
    {
      v88 = v54;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237E3DCE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for ClassificationDistribution(0, *(a1 + a2 - 32), *(a1 + a2 - 16), a3);
  result = sub_237D65E6C(v5);
  *a4 = result;
  return result;
}

uint64_t sub_237E3DD38(void *a1, uint64_t a2)
{
  sub_237EF8260();
  sub_237EF8260();
  swift_getAtKeyPath();
}

uint64_t sub_237E3DE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_9_53()
{
  v2 = *(v0 - 176);
  v3 = *(v0 - 168);
  v4 = *(v0 - 144);
  *(v0 - 232) = *(v0 - 184);
  *(v0 - 224) = v2;
  *(v0 - 216) = v3;
  *(v0 - 208) = *(v0 - 160);
  *(v0 - 192) = v4;

  return sub_237EF82B0();
}

void OUTLINED_FUNCTION_18_36(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v4 = a2;
  v4[1].n128_u64[0] = a1;
  v4[1].n128_u64[1] = v3;
  v4[2] = a3;
}

uint64_t OUTLINED_FUNCTION_19_41()
{

  return sub_237EF8260();
}

void OUTLINED_FUNCTION_23_36()
{

  JUMPOUT(0x2383E08A0);
}

uint64_t OUTLINED_FUNCTION_24_32(uint64_t a1)
{

  return sub_237EF9860();
}

uint64_t OUTLINED_FUNCTION_30_34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237EF9870();
}

uint64_t OUTLINED_FUNCTION_32_25()
{
  v2 = *(v0 - 360);
  v3 = *(v0 - 384);

  return sub_237D62A40(v2, v3);
}

uint64_t NumericImputer.strategy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  type metadata accessor for NumericImputer.Strategy(0, v7);
  OUTLINED_FUNCTION_4();
  return (*(v5 + 16))(a2, v2);
}

uint64_t NumericImputer.strategy.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v7[0] = *(a2 + 16);
  v7[1] = v4;
  type metadata accessor for NumericImputer.Strategy(0, v7);
  OUTLINED_FUNCTION_4();
  return (*(v5 + 40))(v2, a1);
}

uint64_t NumericImputer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  type metadata accessor for NumericImputer.Strategy(0, v10);
  OUTLINED_FUNCTION_4();
  return (*(v8 + 32))(a6, a1);
}

uint64_t NumericImputer.init(constant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 2, a2);
}

uint64_t NumericImputer.fitted<A>(to:eventHandler:)@<X0>(char *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v51 = a5;
  v46 = a3;
  v47 = a4;
  v45 = a1;
  v48 = *(a2 + 16);
  v6 = *(&v48 + 1);
  v43 = *(*(&v48 + 1) + 16);
  v7 = v48;
  v42 = *(*(*(v43 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - v9;
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v38 = v11;
  v39 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v44 = &v38 - v13;
  v49 = *(a2 + 32);
  v52[1] = v49;
  v52[0] = v48;
  v14 = type metadata accessor for NumericImputer.Strategy(0, v52);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v21);
  *&v48 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v38 - v24;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  if ((sub_237D0510C() & 1) == 0)
  {
    sub_237D05198(0x49636972656D754ELL, 0xEE0072657475706DLL);
  }

  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v27 = v49;
  v28 = v51;
  ImputeTransformer.init(value:)(v25, v7, v51, v49, *(&v49 + 1));
  (*(v16 + 16))(v19, v50, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 2, v7);
  if (!EnumTagSinglePayload)
  {
    return (*(v20 + 40))(v28, v19, v7);
  }

  if (EnumTagSinglePayload == 1)
  {
    MEMORY[0x28223BE20](EnumTagSinglePayload);
    v30 = v46;
    v31 = v47;
    *(&v38 - 6) = v7;
    *(&v38 - 5) = v30;
    *(&v38 - 4) = v6;
    *(&v38 - 3) = v27;
    *(&v38 - 1) = v31;
    *&v52[0] = sub_237EF8760();
    sub_237EF8A60();
    swift_getWitnessTable();
    v32 = v44;
    sub_237D10984();

    if (__swift_getEnumTagSinglePayload(v32, 1, v7) == 1)
    {
      swift_getAssociatedConformanceWitness();
      sub_237EF9FB0();
      v33 = v48;
      sub_237EF9D20();
      v34 = __swift_getEnumTagSinglePayload(v32, 1, v7);
      v35 = v51;
      if (v34 != 1)
      {
        (*(v38 + 8))(v32, v39);
      }
    }

    else
    {
      v33 = v48;
      (*(v20 + 32))(v48, v32, v7);
      v35 = v51;
    }

    return (*(v20 + 40))(v35, v33, v7);
  }

  else
  {
    v37 = type metadata accessor for ImputeTransformer(0, v7, v27, *(&v27 + 1));
    return sub_237D13244(v45, v37, v46, v6, v47);
  }
}

uint64_t sub_237E3E820(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  NumericImputer.fitted<A>(to:eventHandler:)(a2, a7, a5, a6, a1);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t NumericImputer.makeTransformer()@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  return ImputeTransformer.init(value:)(v6, v4, a2, a1[4], a1[5]);
}

uint64_t NumericImputer.update<A>(_:with:eventHandler:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a2;
  v48 = a1;
  sub_237EF9340();
  OUTLINED_FUNCTION_1();
  v44 = v12;
  v45 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - v14;
  v15 = *(a5 + 16);
  sub_237EF90F0();
  sub_237EF9640();
  OUTLINED_FUNCTION_1_5();
  swift_getWitnessTable();
  sub_237EF97E0();
  swift_getWitnessTable();
  sub_237EF9640();
  OUTLINED_FUNCTION_1();
  v41 = v17;
  v42 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = *(a5 + 24);
  *&v22 = v15;
  *(&v22 + 1) = v21;
  v47 = *(a5 + 32);
  v49[0] = v22;
  v49[1] = v47;
  v23 = type metadata accessor for NumericImputer.Strategy(0, v49);
  OUTLINED_FUNCTION_1();
  v25 = v24;
  OUTLINED_FUNCTION_9();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v41 - v28;
  (*(v25 + 16))(&v41 - v28, v7, v23, v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 2, v15);
  if (!EnumTagSinglePayload)
  {
    return (*(v25 + 8))(v29, v23);
  }

  if (EnumTagSinglePayload == 1)
  {
    sub_237C84150();
    swift_allocError();
    *v31 = xmmword_237F190B0;
    *(v31 + 16) = 0xD000000000000055;
    *(v31 + 24) = 0x8000000237F00610;
    *(v31 + 32) = 5;
    return swift_willThrow();
  }

  else
  {
    v33 = v47;
    v34 = type metadata accessor for ImputeTransformer(0, v15, v47, *(&v47 + 1));
    v35 = v48 + *(v34 + 44);
    if ((*(v35 + 8) & 1) != 0 || !*v35)
    {
      return sub_237D13244(v46, v34, a6, v21, a7);
    }

    else
    {
      v36 = v43;
      *&v47 = v34;
      MEMORY[0x2383E08A0](a6, a7);
      v37 = swift_allocObject();
      *(v37 + 16) = v15;
      *(v37 + 24) = a6;
      *(v37 + 32) = v21;
      *(v37 + 40) = v33;
      *(v37 + 56) = a7;
      v38 = v45;
      swift_getWitnessTable();
      sub_237EF9850();

      (*(v44 + 8))(v36, v38);
      OUTLINED_FUNCTION_1_5();
      v39 = v42;
      WitnessTable = swift_getWitnessTable();
      sub_237D13838(v20, v47, v39, v21, WitnessTable);
      return (*(v41 + 8))(v20, v39);
    }
  }
}

uint64_t sub_237E3EDFC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_237EF90F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t NumericImputer.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v7 = *(v6 + 8);
  v8 = type metadata accessor for ImputeTransformer(0, a3[2], a3[4], a3[5]);
  WitnessTable = swift_getWitnessTable();
  return v7(a1, v8, WitnessTable, v5, v6);
}

uint64_t NumericImputer.decodeWithOptimizer(from:)(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ImputeTransformer(0, a2[2], a2[4], a2[5]);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v5 + 8);
  WitnessTable = swift_getWitnessTable();
  return v6(v3, v3, WitnessTable, v4, v5);
}

uint64_t sub_237E3EFFC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  NumericImputer.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
  v8 = *(v7 + 8);

  return v8();
}

uint64_t sub_237E3F0B4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237E3F0F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for NumericImputer.Strategy(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237E3F180(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_237E3F1DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 2;
  v7 = *(*(v4 - 8) + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_31;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v6)
      {
LABEL_31:
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
        if (EnumTagSinglePayload >= 3)
        {
          return EnumTagSinglePayload - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_30;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v15) + 1;
}

void sub_237E3F3A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = v7 - 2;
  v9 = *(*(v6 - 8) + 64);
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v11 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v11 > 0xFFFE)
      {
        v10 = 4;
      }

      else
      {
        v12 = 1;
        if (v11 >= 0xFF)
        {
          v12 = 2;
        }

        if (v11)
        {
          v10 = v12;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    v9 += v10;
  }

  v13 = 8 * v9;
  v14 = a3 >= v8;
  v15 = a3 - v8;
  if (v15 != 0 && v14)
  {
    if (v9 <= 3)
    {
      v19 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v8 >= a2)
  {
    switch(v16)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          v22 = a2 + 2;

          __swift_storeEnumTagSinglePayload(a1, v22, v7, v6);
        }

        break;
    }
  }

  else
  {
    v17 = ~v8 + a2;
    if (v9 < 4)
    {
      v18 = (v17 >> v13) + 1;
      if (v9)
      {
        v21 = v17 & ~(-1 << v13);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v9 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v9] = v18;
        break;
      case 2:
        *&a1[v9] = v18;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *&a1[v9] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237E3F624()
{
  v0 = sub_237EF7DB0();
  __swift_allocate_value_buffer(v0, qword_27DEE2440);
  __swift_project_value_buffer(v0, qword_27DEE2440);
  return sub_237EF7DA0();
}

uint64_t VideoReader.applied(to:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_237EF5EF0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E3F750()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_21_41(v1);

  return sub_237CED9E4();
}

uint64_t sub_237E3F7EC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t static VideoReader.read(contentsOf:)()
{
  OUTLINED_FUNCTION_2_0();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_237EF5EF0();
  v0[4] = v3;
  OUTLINED_FUNCTION_6_1(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_237E3F9B4()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[7] = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_21_41(v1);

  return sub_237CED9E4();
}

uint64_t sub_237E3FA50()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237E3FB70()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t static VideoReader.read<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for VideoReader.AsyncFrames(0);
  OUTLINED_FUNCTION_6_1(v4);
  v3[5] = v5;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = sub_237EF5EF0();
  v3[8] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v3[9] = v7;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAED68, &unk_237F07320);
  v3[12] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v3[13] = v8;
  v3[14] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[15] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v3[16] = v10;
  v3[17] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237E3FDD4()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  OUTLINED_FUNCTION_56_0();
  v6 = sub_237EF8710();
  sub_237D0CBDC(0, v6 & ~(v6 >> 63), 0, MEMORY[0x277D84F90]);
  (*(v2 + 16))(v1, v5, v4);
  OUTLINED_FUNCTION_56_0();
  sub_237EF86F0();
  OUTLINED_FUNCTION_14_53();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    v7 = OUTLINED_FUNCTION_11_52();
    v8(v7);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_106_1();

    __asm { BRAA            X2, X16 }
  }

  v11 = OUTLINED_FUNCTION_12_46();
  v12(v11);
  v13 = OUTLINED_FUNCTION_2_87();
  v14(v13);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_3_81(v15);
  OUTLINED_FUNCTION_106_1();

  return sub_237CED9E4();
}

uint64_t sub_237E3FF98()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E40094()
{
  v1 = v0[18];
  sub_237E40F88(v0[7], v0[6]);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = v0[18];
  if (v3 >= v2 >> 1)
  {
    sub_237D0CBDC(v2 > 1, v3 + 1, 1, v0[18]);
    v4 = v22;
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[5];
  sub_237CEFFB0(v0[7]);
  (*(v7 + 8))(v5, v6);
  *(v4 + 16) = v3 + 1;
  sub_237E40FEC(v8, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v3);
  OUTLINED_FUNCTION_14_53();
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    v10 = OUTLINED_FUNCTION_11_52();
    v11(v10);

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_106_1();

    __asm { BRAA            X2, X16 }
  }

  v14 = OUTLINED_FUNCTION_12_46();
  v15(v14);
  v16 = OUTLINED_FUNCTION_2_87();
  v17(v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[19] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_3_81(v18);
  OUTLINED_FUNCTION_106_1();

  return sub_237CED9E4();
}

uint64_t sub_237E40288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v15 = v14[17];
  v16 = v14[15];
  v17 = v14[16];
  v18 = v14[11];
  v19 = v14[9];
  v20 = v14[8];
  v30 = v14[7];
  v31 = v14[6];

  (*(v19 + 8))(v18, v20);
  (*(v17 + 8))(v15, v16);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, a12, a13, a14);
}

uint64_t static VideoReader.read<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  OUTLINED_FUNCTION_1_1();
  v4[7] = v6;
  v4[8] = OUTLINED_FUNCTION_27_0();
  v7 = type metadata accessor for VideoReader.AsyncFrames(255);
  v4[9] = v7;
  v4[10] = type metadata accessor for AnnotatedFeature(0, v7, a3, v8);
  v4[11] = OUTLINED_FUNCTION_27_0();
  v9 = sub_237EF5EF0();
  v4[12] = v9;
  OUTLINED_FUNCTION_1_1();
  v4[13] = v10;
  v4[14] = OUTLINED_FUNCTION_27_0();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = type metadata accessor for AnnotatedFeature(0, v9, a3, v11);
  OUTLINED_FUNCTION_1_1();
  v4[18] = v12;
  v4[19] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v4[20] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v4[21] = v13;
  v4[22] = OUTLINED_FUNCTION_27_0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[23] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_6_1(AssociatedTypeWitness);
  v4[24] = v15;
  v4[25] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_237E40628()
{
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[3];
  v3 = v0[4];
  v0[2] = sub_237EF8110();
  OUTLINED_FUNCTION_56_0();
  sub_237EF8710();
  v0[26] = sub_237EF8A60();
  sub_237EF8970();
  (*(v2 + 16))(v1, v4, v3);
  OUTLINED_FUNCTION_56_0();
  sub_237EF86F0();
  v5 = v0[20];
  v6 = v0[17];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    v7 = OUTLINED_FUNCTION_8_73();
    v8(v7);
    v17 = v0[2];

    OUTLINED_FUNCTION_29_10();

    return v9(v17);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_17_45();
    v12(v11);
    v13 = OUTLINED_FUNCTION_2_87();
    v14(v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v0[27] = v15;
    *v15 = v16;
    OUTLINED_FUNCTION_4_77(v15);

    return sub_237CED9E4();
  }
}

uint64_t sub_237E40854()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237E40958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v15 = v14[18];
  v16 = v14[19];
  v17 = v14[16];
  v18 = v14[17];
  v19 = v14[15];
  v20 = v14[11];
  v21 = v14[8];
  v44 = v14[9];
  v22 = v14[7];
  v23 = v14[5];
  sub_237E40F88(v17, v19);
  (*(v22 + 16))(v21, v16 + *(v18 + 36), v23);
  AnnotatedFeature.init(feature:annotation:)(v19, v21, v44, v23, v20);
  sub_237EF8A20();
  sub_237CEFFB0(v17);
  (*(v15 + 8))(v16, v18);
  v24 = v14[20];
  v25 = v14[17];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    v26 = OUTLINED_FUNCTION_8_73();
    v27(v26);
    v45 = v14[2];

    OUTLINED_FUNCTION_29_10();
    OUTLINED_FUNCTION_18_3();

    return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, v44, v45, a12, a13, a14);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_17_45();
    v38(v37);
    v39 = OUTLINED_FUNCTION_2_87();
    v40(v39);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v14[27] = v41;
    *v41 = v42;
    OUTLINED_FUNCTION_4_77(v41);
    OUTLINED_FUNCTION_18_3();

    return sub_237CED9E4();
  }
}

uint64_t sub_237E40B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_3();
  v16 = v14[24];
  v15 = v14[25];
  v17 = v14[23];
  v27 = v14[11];
  v28 = v14[8];
  (*(v14[18] + 8))(v14[19], v14[17]);
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_18_3();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t static VideoReader.readCamera(configuration:)()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = v1;
  *(v0 + 48) = *v2;
  *(v0 + 49) = *(v2 + 1);
  *(v0 + 50) = *(v2 + 2);
  *(v0 + 24) = *(v2 + 8);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_237E40D1C;

  return sub_237DB5568();
}

uint64_t sub_237E40D1C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_237E40E34()
{
  v11 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 50);
  v4 = *(v0 + 49);
  v9[0] = *(v0 + 48);
  v9[1] = v4;
  v9[2] = v3;
  v10 = v2;
  v5 = objc_allocWithZone(_s8ObserverCMa_0(0));
  v6 = sub_237DA2B08(v9);
  if (!v1)
  {
    **(v0 + 16) = v6;
  }

  OUTLINED_FUNCTION_3_0();

  return v7();
}

uint64_t sub_237E40EE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237C6A904;

  return VideoReader.applied(to:eventHandler:)();
}

uint64_t sub_237E40F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoReader.AsyncFrames(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237E40FEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoReader.AsyncFrames(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for VideoReader(_BYTE *result, int a2, int a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Transformer.prediction<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = (*(a5 + 24) + **(a5 + 24));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_237C5FFA4;

  return v12(a1, a2, 0, 0, a3, a5);
}

uint64_t Transformer.prediction<A, B>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_237CD5F7C;

  return Transformer.applied<A>(to:eventHandler:)(a1, 0, 0, a2, a3, a5, a6);
}

uint64_t TemporalTransformer.prediction<A, B>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = (*(a6 + 40) + **(a6 + 40));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_237C606BC;

  return v16(a1, a2, 0, 0, a4, a7, a3, a6);
}

uint64_t sub_237E415E4(void *a1, uint64_t a2, void *a3)
{
  [a1 lock];
  sub_237E41F34(a2, a3, &v8);
  [a1 unlock];
  if (v3)
  {
  }

  else
  {

    a2 = v8;
  }

  return a2;
}

id AudioConvertingTransformer.init(targetFormat:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AudioConverterPool();
  v4 = swift_allocObject();
  sub_237E42264();
  result = [a1 commonFormat];
  if (result)
  {
    *a2 = a1;
    a2[1] = v4;
  }

  else
  {
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000041, 0x8000000237F006B0, "CreateMLComponents/AudioConvertingTransformer.swift", 51, 2, 21);
    __break(1u);
  }

  return result;
}

id AudioConvertingTransformer.applied(to:eventHandler:)(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = [a1 format];
  sub_237C75918(0, &qword_280C8E1F8, 0x277D82BB8);
  if (sub_237EF9050())
  {
    v5 = a1;

    return v5;
  }

  v7 = sub_237E41C18(v4);
  if (!v7)
  {
    sub_237C75918(0, &qword_27DEB4AB8, 0x277CB8380);
    v8 = v4;
    v9 = v3;
    v7 = sub_237E41C80(v8, v9);
    if (!v7)
    {
      sub_237E05850();
      swift_allocError();
      *v23 = v8;
      v23[1] = v9;
      swift_willThrow();
      v24 = v9;
      return v3;
    }
  }

  v10 = v7;
  v11 = [a1 frameLength];
  [v3 sampleRate];
  v13 = v12 * v11;
  [v4 sampleRate];
  v15 = ceil(v13 / v14);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v15 <= -1.0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (v15 >= 4294967300.0)
  {
    goto LABEL_20;
  }

  result = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v3 frameCapacity:v15];
  if (result)
  {
    v3 = result;
    v16 = swift_allocObject();
    v16[2] = a1;
    aBlock[4] = sub_237E422A4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_237E41AFC;
    aBlock[3] = &block_descriptor_4;
    v17 = _Block_copy(aBlock);
    v18 = a1;

    aBlock[0] = 0;
    v19 = [v10 convertToBuffer:v3 error:aBlock withInputFromBlock:v17];
    _Block_release(v17);
    v20 = aBlock[0];
    if (v19 != 3 || aBlock[0] == 0)
    {
      v22 = aBlock[0];
      [v10 reset];
      sub_237E41B68(v10, v4);
    }

    else
    {
      swift_willThrow();
      v20;
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_237E41AA8(int a1, uint64_t *a2, id a3)
{
  v3 = a3;
  if ([a3 frameLength])
  {
    v5 = v3;
    v6 = 0;
  }

  else
  {
    v3 = 0;
    v6 = 2;
  }

  *a2 = v6;
  return v3;
}

id sub_237E41AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

uint64_t sub_237E41B68(void *a1, void *a2)
{
  v5 = *(v2 + 24);

  v6 = a2;
  v7 = a1;
  v8 = v5;
  [v8 lock];
  sub_237E4208C(v2, v6, v7);
  [v8 unlock];
}

uint64_t sub_237E41C18(void *a1)
{
  v3 = *(v1 + 24);

  v4 = a1;
  v5 = v3;
  v6 = sub_237E415E4(v5, v1, v4);

  return v6;
}

id sub_237E41C80(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromFormat:a1 toFormat:a2];

  return v4;
}

uint64_t sub_237E41CDC(id *a1, void **a2)
{
  *a1 = AudioConvertingTransformer.applied(to:eventHandler:)(*a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t AudioConvertingTransformer.debugDescription.getter()
{
  v1 = *v0;
  *&v8[8] = 0;
  sub_237EF9330();
  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710]();
  *v8 = [v1 commonFormat] >> 32;
  type metadata accessor for AVAudioCommonFormat(0);
  sub_237EF9670();
  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710](0xD000000000000014);
  [v1 sampleRate];
  sub_237EF8C10();
  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710]();
  [v1 channelCount];
  v2 = sub_237EF9AB0();
  MEMORY[0x2383E0710](v2);

  OUTLINED_FUNCTION_7_60();
  MEMORY[0x2383E0710]();
  v3 = [v1 isInterleaved];
  v4 = v3 == 0;
  if (v3)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x2383E0710](v5, v6);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return *&v8[4];
}

uint64_t sub_237E41F34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v7 = sub_237D2FC80(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AC0, &qword_237F192D8);
  if (sub_237EF96B0())
  {
    v11 = sub_237D2FC80(a2);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_9:
    sub_237C75918(0, &qword_27DEAD7F8, 0x277CB83A8);
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v6;
  if ((v10 & 1) == 0)
  {
    sub_237D30AF0(v9, a2, MEMORY[0x277D84F90], v6);
    v13 = a2;
  }

  *a3 = sub_237D6B08C();
  return swift_endAccess();
}

uint64_t sub_237E4208C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a1 + 16);
  *(a1 + 16) = 0x8000000000000000;
  v7 = sub_237D2FC80(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AC0, &qword_237F192D8);
  if (sub_237EF96B0())
  {
    v11 = sub_237D2FC80(a2);
    if ((v10 & 1) == (v12 & 1))
    {
      v9 = v11;
      goto LABEL_5;
    }

LABEL_9:
    sub_237C75918(0, &qword_27DEAD7F8, 0x277CB83A8);
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v6;
  if ((v10 & 1) == 0)
  {
    sub_237D30AF0(v9, a2, MEMORY[0x277D84F90], v6);
    v13 = a2;
  }

  v14 = a3;
  MEMORY[0x2383E09D0]();
  sub_237D86EEC();
  sub_237EF89F0();
  return swift_endAccess();
}

uint64_t sub_237E42208()
{

  return v0;
}

uint64_t sub_237E42230()
{
  sub_237E42208();

  return swift_deallocClassInstance();
}

uint64_t sub_237E42264()
{
  *(v0 + 16) = MEMORY[0x277D84F98];
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  return v0;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237E422D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_237E42320(char a1)
{
  if (!a1)
  {
    return 0x74616F6C66;
  }

  if (a1 == 1)
  {
    return 0x656C62756F64;
  }

  return 0x3233746E69;
}

uint64_t sub_237E4236C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73656469727473 && a2 == 0xE700000000000000;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237E424C0(char a1)
{
  result = 0x7865646E69;
  switch(a1)
  {
    case 1:
      result = 0x6570616873;
      break;
    case 2:
      result = 0x73656469727473;
      break;
    case 3:
      result = 0x72616C616373;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237E42534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v32 = v21;
  v31 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AC8, &qword_237F19438);
  OUTLINED_FUNCTION_1();
  v27 = v26;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v31 - v29;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_237E4322C();
  sub_237EFA1B0();
  sub_237EF9A50();
  if (!v20)
  {
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    OUTLINED_FUNCTION_2_88(&qword_280C8CD30, MEMORY[0x277D83B90]);
    OUTLINED_FUNCTION_4_78();
    v33 = 2;
    OUTLINED_FUNCTION_4_78();
    v33 = 3;
    sub_237E43280();
    sub_237EF9A70();
  }

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E4270C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB4AD0, &qword_237F19440);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_237E4322C();
  sub_237EFA190();
  if (!v20)
  {
    OUTLINED_FUNCTION_11_53();
    sub_237EF9950();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    OUTLINED_FUNCTION_3_82(&qword_280C8CD28, MEMORY[0x277D83BB8]);
    OUTLINED_FUNCTION_8_74();
    OUTLINED_FUNCTION_11_53();
    sub_237EF9970();
    OUTLINED_FUNCTION_8_74();
    OUTLINED_FUNCTION_11_53();
    sub_237EF9970();
    sub_237E432D4();
    OUTLINED_FUNCTION_11_53();
    sub_237EF9970();
    v24 = OUTLINED_FUNCTION_7_63();
    v25(v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237E42960(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372616C616373 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237E42A24(char a1)
{
  if (a1)
  {
    return 0x7372616C616373;
  }

  else
  {
    return 0x6570616873;
  }
}

void sub_237E42A58()
{
  OUTLINED_FUNCTION_13_4();
  v20 = v1;
  v21 = v0;
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v7 = v6;
  v23[0] = v3;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v1;
  type metadata accessor for InlineShapedArray.CodingKeys(255, v23);
  OUTLINED_FUNCTION_1_96();
  swift_getWitnessTable();
  v10 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - v14;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_237EFA1B0();
  v23[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
  OUTLINED_FUNCTION_2_88(&qword_280C8CD30, MEMORY[0x277D83B90]);
  OUTLINED_FUNCTION_5_78();
  v16 = v21;
  sub_237EF9A70();
  if (!v16)
  {
    v23[0] = v18;
    sub_237EF8A60();
    v22 = v20;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_5_78();
    sub_237EF9A70();
  }

  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_12_6();
}

void sub_237E42C18()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v10[0] = v3;
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  type metadata accessor for InlineShapedArray.CodingKeys(255, v10);
  OUTLINED_FUNCTION_1_96();
  swift_getWitnessTable();
  sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_237EFA190();
  if (!v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD350, &unk_237F07040);
    OUTLINED_FUNCTION_3_82(&qword_280C8CD28, MEMORY[0x277D83BB8]);
    OUTLINED_FUNCTION_9_54();
    OUTLINED_FUNCTION_13_46();
    sub_237EF8A60();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_9_54();
    OUTLINED_FUNCTION_13_46();
    v8 = OUTLINED_FUNCTION_6_65();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_12_6();
}

unint64_t sub_237E42E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237E422D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237E42E84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237E42320(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237E42EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237E42FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E4236C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E42FF4(uint64_t a1)
{
  v2 = sub_237E4322C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237E43030(uint64_t a1)
{
  v2 = sub_237E4322C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237E430D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237E42960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237E4310C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237E43160(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}